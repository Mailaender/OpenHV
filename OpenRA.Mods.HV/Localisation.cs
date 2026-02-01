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
using System.Collections.Frozen;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using OpenRA.Traits;

namespace OpenRA.Mods.HV
{
	[YamlNode("Localisation", shared: false)]
	public class LocalisationSettings : SettingsModule
	{
		public static CultureInfo DefaultLocale = CultureInfo.GetCultureInfo("en");

		[Desc("ISO 639-1 identifier to change language in-game.")]
		public CultureInfo Locale = DefaultLocale;
	}

	public sealed class Language
	{
		[Desc("ISO 639-1 identifier")]
		public readonly CultureInfo Locale;

		[FieldLoader.Ignore]
		public readonly ImmutableArray<string> FluentMessages;

		[FieldLoader.Ignore]
		public readonly ImmutableArray<string> Fonts;

		public Language(MiniYaml yaml)
		{
			FieldLoader.Load(this, yaml);

			FluentMessages = YamlList(yaml.ToDictionary(), "FluentMessages");

			static ImmutableArray<string> YamlList(Dictionary<string, MiniYaml> yaml, string key)
			{
				if (!yaml.TryGetValue(key, out var value))
					return [];

				return value.Nodes.Select(n => n.Key).ToImmutableArray();
			}
		}
	}

	public class Localisation : IGlobalModData
	{
		[UnsafeAccessor(UnsafeAccessorKind.Field, Name = "FluentMessages")]
		internal static extern ref ImmutableArray<string> BodgeFluentMessages(Manifest manifest);

		[UnsafeAccessor(UnsafeAccessorKind.Field, Name = "FontList")]
		internal static extern ref FrozenDictionary<string, FontData> BodgeFonts(Fonts fonts);

		[FieldLoader.LoadUsing(nameof(LoadLanguages))]
		public readonly FrozenDictionary<string, Language> Languages = null;

		[FieldLoader.LoadUsing(nameof(LoadFonts))]
		public readonly FrozenDictionary<string, FontData> FontList;

		static FrozenDictionary<string, Language> LoadLanguages(MiniYaml yaml)
		{
			var dictionary = new Dictionary<string, Language>();

			var languageNode = yaml.Nodes.Single(n => n.Key == "Languages");
			foreach (var node in languageNode.Value.Nodes)
				dictionary.Add(node.Key, new Language(node.Value));

			var fontNode = yaml.Nodes.Single(n => n.Key == "FontList");
			foreach (var node in fontNode.Value.Nodes)
				dictionary.Add(node.Key, new Language(node.Value));

			return dictionary.ToFrozenDictionary();
		}

		static object LoadFonts(MiniYaml miniYaml)
		{
			var dictionary = new Dictionary<string, FontData>(miniYaml.Nodes.Length);
			foreach (var node in miniYaml.Nodes)
				dictionary.Add(node.Key, FieldLoader.Load<FontData>(node.Value));

			return dictionary.ToFrozenDictionary();
		}

		public void SwitchLanguage()
		{
			var languageSettings = Game.ModData.GetSettings<LocalisationSettings>();
			Console.WriteLine("Chosen language: " + languageSettings.Locale.EnglishName);

			if (Languages == null)
				return;

			var selectedLanguage = Languages.Values.FirstOrDefault(l => l.Locale == languageSettings.Locale);
			if (selectedLanguage == null)
				return;

			if (selectedLanguage.Locale == LocalisationSettings.DefaultLocale)
				return;

			BodgeFluentMessages(Game.ModData.Manifest) = BodgeFluentMessages(Game.ModData.Manifest).ToArray()
				.Append(selectedLanguage.FluentMessages.ToArray()).ToImmutableArray();

			FluentProvider.Initialize(Game.ModData.Manifest, Game.ModData.DefaultFileSystem);

			if (!selectedLanguage.Fonts.IsEmpty)
			{
				var fonts = Game.ModData.GetOrCreate<Fonts>();
				fonts.FontList = selectedLanguage.Fonts.ToArray();
				BodgeFonts(fonts) = BodgeFonts(fonts).ToArray()
					.Append(selectedLanguage.Fonts.ToArray()).ToImmutableArray();

				Game.Renderer.InitializeFonts(Game.ModData);
			}
		}
	}
}
