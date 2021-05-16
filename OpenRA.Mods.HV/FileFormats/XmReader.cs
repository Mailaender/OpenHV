#region Copyright & License Information
/*
 * Copyright 2007-2020 The OpenRA Developers (see AUTHORS)
 * This file is part of OpenRA, which is free software. It is made
 * available to you under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version. For more
 * information, see COPYING.
 */
#endregion

using System;
using System.Collections.Generic;
using System.IO;
using OpenRA.Primitives;

namespace OpenRA.Mods.HV.FileFormats
{
	public static class XmReader
	{
		public static bool LoadSound(Stream s, out Func<Stream> result, out short channels, out int sampleBits, out int sampleRate, out int songLength)
		{
			result = null;
			channels = -1;
			sampleBits = -1;
			sampleRate = -1;
			songLength = 0;

			var header = s.ReadASCII(16);
			if (header != "Extended module:")
				return false;

			var module = s.ReadASCII(20);
			Console.WriteLine(module);
			s.Seek(1, SeekOrigin.Current);
			var tracker = s.ReadASCII(20);
			Console.WriteLine(tracker);
			var version = s.ReadUInt16();
			Console.WriteLine(version);
			var headerSize = s.ReadUInt32();
			songLength = s.ReadUInt16();
			return true;
		}
	}
}
