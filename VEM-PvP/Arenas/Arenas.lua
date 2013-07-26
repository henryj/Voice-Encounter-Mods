-- Arenas mod v3.0
-- rewrite by Tandanu
--

local mod		= VEM:NewMod("Arenas", "VEM-PvP", 1)
local L			= mod:GetLocalizedStrings()

mod:RemoveOption("HealthFrame")
mod:RemoveOption("SpeedKillTimer")

mod:SetRevision(("$Revision: 9938 $"):sub(12, -3))
mod:SetZone(VEM_DISABLE_ZONE_DETECTION)

mod:RegisterEvents("CHAT_MSG_BG_SYSTEM_NEUTRAL")

local timerShadow	= mod:NewTimer(90, "TimerShadow", 34709)

function mod:CHAT_MSG_BG_SYSTEM_NEUTRAL(args)
	if not IsActiveBattlefieldArena() then return end
	if args == L.Start15 then
		timerShadow:Schedule(16)
	end
end
