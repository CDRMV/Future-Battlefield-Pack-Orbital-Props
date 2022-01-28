#****************************************************************************
#**
#**  File     :  /units/XEL0209/XEL0209_script.lua
#**
#**  Summary  :  UEF Combat Engineer T2
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local PlanetUnit = import('/mods/Future Battlefield Pack Orbital Props/lua/FBPOPunits.lua').PlanetUnit

opo1002 = Class(PlanetUnit) {
    DestroyNoFallRandomChance = 100,
	
	OnCreate = function(self)
	PlanetUnit.OnCreate(self)
            self.Clouds = import('/lua/sim/Entity.lua').Entity({Owner = self,})
            self.Clouds:AttachBoneTo( -1, self, 'Attachpoint' )
            self.Clouds:SetMesh('/mods/Future Battlefield Pack Orbital Props/effects/entities/Atmosphere/Terran/terran_atmosphere_mesh')
            self.Clouds:SetDrawScale(6.1)
            self.Clouds:SetVizToAllies('Intel')
            self.Clouds:SetVizToNeutrals('Intel')
            self.Clouds:SetVizToEnemies('Intel')
            self.CloudsRotator = CreateRotator(self, 'Attachpoint', 'y', nil, math.random(-5, 0) )
            self.Trash:Add(self.Clouds)
			
			self.ring = import('/lua/sim/Entity.lua').Entity({Owner = self,})
            self.ring:AttachBoneTo( -1, self, 'Planet' )
            self.ring:SetMesh('/mods/Future Battlefield Pack Orbital Props/effects/entities/Planet Ring/Ring_mesh')
            self.ring:SetDrawScale(6.1)
            self.ring:SetVizToAllies('Intel')
            self.ring:SetVizToNeutrals('Intel')
            self.ring:SetVizToEnemies('Intel')
			self.ringRotator = CreateRotator(self, 'Planet', 'y', nil, math.random(1, 0) )
            self.Trash:Add(self.ring)
	end
}


TypeClass = opo1002