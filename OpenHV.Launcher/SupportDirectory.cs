#region Copyright & License Information
/*
 * Copyright 2026 The OpenHV Developers (see AUTHORS)
 * This file is part of OpenHV, which is free software. It is made
 * available to you under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version. For more
 * information, see COPYING.
 */
#endregion

using System;
using System.IO;
using OpenRA;

namespace OpenHV.Launcher
{
	/// <summary>
	/// Moves the support directory away from the one shared with other OpenRA games
	/// and splits it across the XDG base directories on Linux.
	/// </summary>
	static class SupportDirectory
	{
		const string SupportDirArgument = "Engine.SupportDir";
		const string EngineDirArgument = "Engine.EngineDir";

		static readonly string[] MigratedFiles = ["settings.yaml", "player.oraid"];
		static readonly string[] MigratedModDirectories = ["maps", "Replays", "Saves", "Screenshots", "Editor"];

		static readonly string Home = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile);

		public static string[] Apply(string[] args)
		{
			var arguments = new Arguments(args);

			// Respect explicit overrides and portable installs
			if (!string.IsNullOrEmpty(arguments.GetValue(SupportDirArgument, null)))
				return args;

			if (Directory.Exists(Path.Combine(EngineDirectory(arguments), "Support")))
				return args;

			string supportDir;
			string legacySupportDir;
			var isXdg = false;
			switch (Platform.CurrentPlatform)
			{
				case PlatformType.Windows:
				{
					var appData = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData);
					var documents = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
					supportDir = Path.Combine(appData, "OpenHV");
					legacySupportDir = FirstExisting(Path.Combine(appData, "OpenRA"), Path.Combine(documents, "OpenRA"));
					break;
				}

				case PlatformType.OSX:
				{
					var applicationSupport = Path.Combine(Home, "Library", "Application Support");
					supportDir = Path.Combine(applicationSupport, "OpenHV");
					legacySupportDir = Path.Combine(applicationSupport, "OpenRA");
					break;
				}

				default:
				{
					supportDir = Path.Combine(XdgDirectory("XDG_DATA_HOME", ".local", "share"), "openhv");
					legacySupportDir = FirstExisting(Path.Combine(XdgDirectory("XDG_CONFIG_HOME", ".config"), "openra"), Path.Combine(Home, ".openra"));
					isXdg = true;
					break;
				}
			}

			if (!Directory.Exists(supportDir))
			{
				Directory.CreateDirectory(supportDir);
				Migrate(legacySupportDir, supportDir);
			}

			if (isXdg)
			{
				Link(Path.Combine(supportDir, "settings.yaml"), Path.Combine(XdgDirectory("XDG_CONFIG_HOME", ".config"), "openhv", "settings.yaml"), false);
				Link(Path.Combine(supportDir, "Logs"), Path.Combine(XdgDirectory("XDG_STATE_HOME", ".local", "state"), "openhv", "logs"), true);

				// Matches GameNewsFileName in mod.yaml
				Link(Path.Combine(supportDir, "hv-news.json"), Path.Combine(XdgDirectory("XDG_CACHE_HOME", ".cache"), "openhv", "hv-news.json"), false);
			}

			return [.. args, $"{SupportDirArgument}={supportDir}"];
		}

		static string EngineDirectory(Arguments arguments)
		{
			// Relative paths are interpreted as being relative to the binaries, see Platform.OverrideEngineDir
			var engineDir = arguments.GetValue(EngineDirArgument, null)?.Trim('"');
			if (string.IsNullOrEmpty(engineDir))
				return AppContext.BaseDirectory;

			return Path.Combine(AppContext.BaseDirectory, engineDir);
		}

		static string XdgDirectory(string variable, params string[] fallback)
		{
			// The XDG Base Directory Specification requires relative paths to be ignored
			var path = Environment.GetEnvironmentVariable(variable);
			if (string.IsNullOrEmpty(path) || !Path.IsPathRooted(path))
				return Path.Combine([Home, .. fallback]);

			return path;
		}

		static string FirstExisting(string preferred, string fallback)
		{
			return !Directory.Exists(preferred) && Directory.Exists(fallback) ? fallback : preferred;
		}

		/// <summary>Copies (never moves) OpenHV's data, because the legacy directory is shared with other games.</summary>
		static void Migrate(string legacySupportDir, string supportDir)
		{
			if (!Directory.Exists(legacySupportDir))
				return;

			Console.WriteLine($"Migrating user data from {legacySupportDir} to {supportDir}");

			try
			{
				foreach (var file in MigratedFiles)
				{
					var source = Path.Combine(legacySupportDir, file);
					if (File.Exists(source))
						File.Copy(source, Path.Combine(supportDir, file));
				}

				foreach (var directory in MigratedModDirectories)
				{
					var source = Path.Combine(legacySupportDir, directory, "hv");
					if (Directory.Exists(source))
						CopyDirectory(source, Path.Combine(supportDir, directory, "hv"));
				}
			}
			catch (Exception e) when (e is IOException or UnauthorizedAccessException)
			{
				Console.WriteLine($"Failed to migrate user data: {e.Message}");
			}
		}

		static void CopyDirectory(string source, string destination)
		{
			Directory.CreateDirectory(destination);

			foreach (var file in Directory.GetFiles(source))
				File.Copy(file, Path.Combine(destination, Path.GetFileName(file)));

			foreach (var directory in Directory.GetDirectories(source))
				CopyDirectory(directory, Path.Combine(destination, Path.GetFileName(directory)));
		}

		/// <summary>
		/// Replaces linkPath with a symbolic link to targetPath, moving existing content over.
		/// Existing links are kept so that players can set up their own layout.
		/// </summary>
		static void Link(string linkPath, string targetPath, bool isDirectory)
		{
			try
			{
				FileSystemInfo link = isDirectory ? new DirectoryInfo(linkPath) : new FileInfo(linkPath);
				if (link.LinkTarget != null)
					return;

				Directory.CreateDirectory(Path.GetDirectoryName(targetPath));

				if (link.Exists)
				{
					// Never overwrite data that is already at the target location
					if (isDirectory ? Directory.Exists(targetPath) : File.Exists(targetPath))
						return;

					if (isDirectory)
						Directory.Move(linkPath, targetPath);
					else
						File.Move(linkPath, targetPath);
				}
				else if (isDirectory)
					Directory.CreateDirectory(targetPath);

				if (isDirectory)
					Directory.CreateSymbolicLink(linkPath, targetPath);
				else
					File.CreateSymbolicLink(linkPath, targetPath);
			}
			catch (Exception e) when (e is IOException or UnauthorizedAccessException)
			{
				Console.WriteLine($"Failed to link {linkPath} to {targetPath}: {e.Message}");
			}
		}
	}
}
