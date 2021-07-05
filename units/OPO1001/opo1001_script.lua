#****************************************************************************
#**
#**  File     :  /units/XEL0209/XEL0209_script.lua
#**
#**  Summary  :  UEF Combat Engineer T2
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local NebulaUnit = import('/mods/Future Battlefield Pack Orbital Props/lua/FBPOPunits.lua').NebulaUnit

opo1001 = Class(NebulaUnit) {
    DestroyNoFallRandomChance = 100,
	
	OnStopBeingBuilt = function(self, builder, layer)
        NebulaUnit.OnStopBeingBuilt(self, builder, layer)
		self.Effect1 = CreateAttachedEmitter(self,'Nebula',self:GetArmy(), '/mods/Future Battlefield Pack Orbital Props/effects/emitters/nebula_effect01.bp')
        self.Trash:Add(self.Effect1)
    end,
}


TypeClass = opo1001