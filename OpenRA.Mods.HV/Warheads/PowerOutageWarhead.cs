#region Copyright & License Information
/*
 * Copyright 2024 The OpenHV Developers (see CREDITS)
 * This file is part of OpenHV, which is free software. It is made
 * available to you under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version. For more
 * information, see COPYING.
 */
#endregion

using OpenRA.GameRules;
using OpenRA.Mods.Common.Traits;
using OpenRA.Mods.Common.Warheads;
using OpenRA.Traits;

namespace OpenRA.Mods.HV.Warheads
{
	[Desc("Used to trigger a power outage on the enemy.")]
	public class PowerOutageWarhead : Warhead
	{
		[FieldLoader.Require]
		[Desc("How long should it last.")]
		public readonly int Duration = 0;

		public readonly WDist Range = WDist.FromCells(1);

		public override void DoImpact(in Target target, WarheadArgs args)
		{
			var firedBy = args.SourceActor;
			if (target.Type != TargetType.Actor)
			{
				System.Console.WriteLine(target.Type);
				return;
			}

			if (!IsValidAgainst(target.Actor, firedBy))
			{
				System.Console.WriteLine("invlaid");
				return;
			}


			var powerManager = target.Actor.Owner.PlayerActor.Trait<PowerManager>();
			if (powerManager.PowerOutageRemainingTicks > 0)
				return;

			powerManager.TriggerPowerOutage(Duration);
		}
	}
}
