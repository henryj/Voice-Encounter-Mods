local mod		= VEM:NewMod("z727", "VEM-PvP", 2)
local L			= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 3 $"):sub(12, -3))
mod:SetZone(VEM_DISABLE_ZONE_DETECTION)

mod:RegisterEvents(
	"ZONE_CHANGED_NEW_AREA"
)

local cartTimer		= mod:NewTimer(9.5, "TimerCart", "Interface\\Icons\\INV_Misc_PocketWatch_01")

local bgzone = false

mod:RemoveOption("HealthFrame")
mod:RemoveOption("SpeedKillTimer")

function mod:OnInitialize()
	if VEM:GetCurrentArea() == 727 then
		bgzone = true
		self:RegisterShortTermEvents(
			"CHAT_MSG_MONSTER_YELL",
			"CHAT_MSG_BG_SYSTEM_HORDE",
			"CHAT_MSG_BG_SYSTEM_ALLIANCE",
			"CHAT_MSG_BG_SYSTEM_NEUTRAL",
			"CHAT_MSG_RAID_BOSS_EMOTE",
			"UPDATE_WORLD_STATES"
		)
	elseif bgzone then
		bgzone = false
		self:UnregisterShortTermEvents()
	end
end

function mod:ZONE_CHANGED_NEW_AREA()
	self:ScheduleMethod(1, "OnInitialize")
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if not bgzone then return end
	if msg:find(L.Capture) then	
		cartTimer:Start()
	end
end

mod.CHAT_MSG_BG_SYSTEM_ALLIANCE = mod.CHAT_MSG_RAID_BOSS_EMOTE
mod.CHAT_MSG_BG_SYSTEM_HORDE = mod.CHAT_MSG_RAID_BOSS_EMOTE
mod.CHAT_MSG_BG_SYSTEM_NEUTRAL = mod.CHAT_MSG_RAID_BOSS_EMOTE
