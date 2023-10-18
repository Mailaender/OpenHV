#region Copyright & License Information
/*
 * Copyright (c) The OpenRA Developers and Contributors
 * This file is part of OpenRA, which is free software. It is made
 * available to you under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version. For more
 * information, see COPYING.
 */
#endregion

using System;
using System.Collections.Generic;
using System.Linq;
using OpenRA.Mods.Common.Traits;
using OpenRA.Mods.Common.Traits.BotModules.Squads;
using OpenRA.Primitives;
using OpenRA.Traits;

namespace OpenRA.Mods.HV.Traits
{
	[TraitLocation(SystemActors.Player)]
	[Desc("Manages AI squads.")]
	public class StrategicVictoryBotModuleInfo : ConditionalTraitInfo
	{
		[Desc("Minimum number of units AI must have before attacking.")]
		public readonly int SquadSize = 4;

		[Desc("Delay (in ticks) between giving out orders to units.")]
		public readonly int AssignRolesInterval = 50;

		public override object Create(ActorInitializer init) { return new StrategicVictoryBotModule(init.Self, this); }
	}

	public class StrategicVictoryBotModule : ConditionalTrait<StrategicVictoryBotModuleInfo>
	{


		public StrategicVictoryBotModule(Actor self, StrategicVictoryBotModuleInfo info)
			: base(info)
		{

		}
	}
}
