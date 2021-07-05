#****************************************************************************
#**
#**  File     :  /units/XEL0209/XEL0209_script.lua
#**
#**  Summary  :  UEF Combat Engineer T2
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local CometUnit = import('/mods/Future Battlefield Pack Orbital Props/lua/FBPOPunits.lua').CometUnit

opo1000 = Class(CometUnit) {
    DestroyNoFallRandomChance = 100,
	
	OnStopBeingBuilt = function(self, builder, layer)
        CometUnit.OnStopBeingBuilt(self, builder, layer)
        self.Trash:Add(CreateRotator(self, 'Comet', 'x', nil, 0, 15, 80 + Random(0, 20)))
        self.Trash:Add(CreateRotator(self, 'Comet', 'y', nil, 0, 15, 80 + Random(0, 20)))
        self.Trash:Add(CreateRotator(self, 'Comet', 'z', nil, 0, 15, 80 + Random(0, 20)))
		self.Effect1 = CreateAttachedEmitter(self,'Comet',self:GetArmy(), '/mods/Future Battlefield Pack Orbital Props/effects/emitters/comet_effect01.bp')
        self.Trash:Add(self.Effect1)
    end,
}


TypeClass = opo1000