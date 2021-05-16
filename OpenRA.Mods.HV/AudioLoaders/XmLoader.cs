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
using System.IO;
using OpenRA.Mods.HV.FileFormats;

namespace OpenRA.Mods.HV.AudioLoaders
{
	public class XmLoader : ISoundLoader
	{
		static bool IsExtendedModule(Stream s)
		{
			var start = s.Position;
			var header = s.ReadASCII(16);
			s.Position = start;
			return header == "Extended module:";
		}

		bool ISoundLoader.TryParseSound(Stream stream, out ISoundFormat sound)
		{
			//try
			{
				if (IsExtendedModule(stream))
				{
					sound = new XmFormat(stream);
					return true;
				}
			}
			//catch
			{
				// unsupported
			}

			sound = null;
			return false;
		}
	}

	public sealed class XmFormat : ISoundFormat
	{
		public int Channels => channels;
		public int SampleBits => sampleBits;
		public int SampleRate => sampleRate;
		public float LengthInSeconds => songLength;
		public Stream GetPCMInputStream() { return xmStreamFactory(); }
		public void Dispose() { sourceStream.Dispose(); }

		readonly Stream sourceStream;
		readonly Func<Stream> xmStreamFactory;
		readonly short channels;
		readonly int sampleBits;
		readonly int sampleRate;
		readonly int songLength;

		public XmFormat(Stream stream)
		{
			sourceStream = stream;

			if (!XmReader.LoadSound(stream, out xmStreamFactory, out channels, out sampleBits, out sampleRate, out songLength))
				throw new InvalidDataException();
		}
	}
}
