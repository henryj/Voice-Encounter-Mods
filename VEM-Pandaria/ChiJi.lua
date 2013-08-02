if GetBuildInfo() ~= "5.4.0" then return end
local mod	= VEM:NewMod(857, "VEM-Pandaria", nil, 322)
local L		= mod:GetLocalizedStrings()
local sndWOP	= mod:NewSound(nil, "SoundWOP", true)

mod:SetRevision(("$Revision: 10093 $"):sub(12, -3))
mod:SetCreatureID(71953)
--mod:SetQuestID(32519)
mod:SetZone()
mod:SetUsedIcons(1)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED"
)

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)

local warnInspiringSong			= mod:NewSpellAnnounce(144468, 3)
local warnBeaconOfHope			= mod:NewTargetAnnounce(144473, 1)
local warnBlazingSong			= mod:NewSpellAnnounce(144471, 4)
local warnCraneRush				= mod:NewSpellAnnounce(144470, 3)--Health based, 66% and 33% (maybe register UNIT_HEALTH and give soon warning?)

local specWarnInspiringSong		= mod:NewSpecialWarningInterrupt(144468)
local specWarnBeaconOfHope		= mod:NewSpecialWarningYou(144473)
local yellBeaconOfHope			= mod:NewYell(144473)
local specWarnBeaconOfHopeOther	= mod:NewSpecialWarningTarget(144473)
local specWarnBlazingSong		= mod:NewSpecialWarningSpell(144471, nil, nil, nil, 3)
local specWarnCraneRush			= mod:NewSpecialWarningSpell(144470, nil, nil, nil, 2)--Add range frame for spreading?

--local timerInspiringSongCD	= mod:NewCDTimer(26, 144468)
--local timerBeaconOfhopeCD		= mod:NewCDTimer(25, 144473)
local timerBlazingSong			= mod:NewCastTimer(5, 144471)--Possibly redundant, if it's always after beacon of hope

mod:AddBoolOption("SetIconOnBeacon", true)
mod:AddBoolOption("BeaconArrow")
mod:AddBoolOption("HudMAP", true, "sound")
local VEMHudMap = VEMHudMap
local free = VEMHudMap.free
local function register(e)	
	VEMHudMap:RegisterEncounterMarker(e)
	return e
end
local HopeMarkers = {}

--local yellTriggered = false

function mod:OnCombatStart(delay)
--[[	if yellTriggered then--We know for sure this is an actual pull and not diving into in progress
		timerInspiringSongCD:Start(15-delay)
		timerBeaconOfhopeCD:Start(20-delay)
		timerBlazingSongCD:Start(40-delay)
	end-]]
	table.wipe(HopeMarkers)
end

function mod:OnCombatEnd()
--	yellTriggered = false
	if self.Options.BeaconArrow then
		VEM.Arrow:Hide()
	end
	if self.Options.HudMAP then
		VEMHudMap:FreeEncounterMarkers()
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 144468 then
		warnInspiringSong:Show()
		specWarnInspiringSong:Show()
--		timerInspiringSongCD:Start()
		if args.sourceGUID == UnitGUID("target") or args.sourceGUID == UnitGUID("focus") then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\kickcast.mp3") --快打斷
		end
	elseif args.spellId == 144471 then
		warnBlazingSong:Show()
		specWarnBlazingSong:Show()
		timerBlazingSong:Start()
		sndWOP:Schedule(2, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
		sndWOP:Schedule(3, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
		sndWOP:Schedule(4, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		if mod:IsHealer() then
			sndWOP:Schedule(5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\healall.mp3") --注意群療
		else
			sndWOP:Schedule(5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\aesoon.mp3") --准备AOE
		end
	elseif args.spellId == 144470 then
		warnCraneRush:Show()
		specWarnCraneRush:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_shbx.mp3") --神鹤奔袭
	elseif args.spellId == 144473 then 
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_xbzb.mp3") --信标准备
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 144473 then
		warnBeaconOfHope:Show(args.destName)
--		timerBeaconOfhopeCD:Start()
		if args:IsPlayer() then
			specWarnBeaconOfHope:Show()
			yellBeaconOfHope:Yell()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_xbdn.mp3") --信标点你
		else
			specWarnBeaconOfHopeOther:Show(args.destName)
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\gather.mp3")--快集合
			if self.Options.BeaconArrow then
				VEM.Arrow:ShowRunTo(args.destName, 3, 3, 5)
			end
			if self.Options.HudMAP then
				HopeMarkers[args.destName] = register(VEMHudMap:PlaceRangeMarkerOnPartyMember("timer", args.destName, 5, 20, 1, 1, 1, 0.8):Appear():RegisterForAlerts():Rotate(360, 20.5):SetAlertColor(0, 0, 1, 0.4))
				HopeMarkers[args.destName.."Edge"] = register(VEMHudMap:AddEdge(0, 0, 1, 1, 5, "player", args.destName))
			end
		end
		if self.Options.SetIconOnBeacon then
			self:SetIcon(args.destName, 1)
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 144473 then
		if self.Options.SetIconOnBeacon then
			self:SetIcon(args.destName, 0)
		end
		if HopeMarkers[args.destName] then
			HopeMarkers[args.destName] = free(HopeMarkers[args.destName])
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if (msg == L.Victory or msg:find(L.Victory)) and self:IsInCombat() then
		VEM:EndCombat(self)
	--[[elseif msg == L.Pull and not self:IsInCombat() then
		if self:GetCIDFromGUID(UnitGUID("target")) == 71953 or self:GetCIDFromGUID(UnitGUID("targettarget")) == 71953 then--Whole zone gets yell, so lets not engage combat off yell unless he is our target (or the target of our target for healers)
			yellTriggered = true
			VEM:StartCombat(self, 0)
		end--]]
	end
end
