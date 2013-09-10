local mod	= VEM:NewMod(861, "VEM-Pandaria", nil, 322)
local L		= mod:GetLocalizedStrings()
local sndWOP	= mod:NewSound(nil, "SoundWOP", true)

mod:SetRevision(("$Revision: 10266 $"):sub(12, -3))
mod:SetCreatureID(72057)
mod:SetZone()
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED"
)

--[[
mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)--]]

local warnAncientFlame			= mod:NewSpellAnnounce(144695, 2)--probably add a move warning with right DAMAGE event
local warnBurningSoul			= mod:NewTargetAnnounce(144689, 3)
local warnEternalAgony			= mod:NewSpellAnnounce(144696, 4)

local specWarnBurningSoul		= mod:NewSpecialWarningYou(144689)
local yellBurningSoul			= mod:NewYell(144689)
local specWarnPoolOfFire		= mod:NewSpecialWarningMove(144693)
local specWarnEternalAgony		= mod:NewSpecialWarningSpell(144696, nil, nil, nil, 2)--Fights over, this is 5 minute berserk spell.

--local timerAncientFlameCD		= mod:NewCDTimer(25, 144695)
local timerBurningSoul			= mod:NewTargetTimer(10, 144689)
--local timerBurningSoulCD		= mod:NewCDTimer(26, 144689)

--local berserkTimer				= mod:NewBerserkTimer(300)

mod:AddBoolOption("SetIconOnBurningSoul", true)
mod:AddBoolOption("RangeFrame", true)
mod:AddBoolOption("HudMAP", true, "sound")

local VEMHudMap = VEMHudMap
local free = VEMHudMap.free
local function register(e)	
	VEMHudMap:RegisterEncounterMarker(e)
	return e
end
local SoulMarkers = {}

--local yellTriggered = false

function mod:OnCombatStart(delay)
--[[	if yellTriggered then--We know for sure this is an actual pull and not diving into in progress
		timerPiercingRoarCD:Start(20-delay)
		timerFrillBlastCD:Start(40-delay)
		berserkTimer:Start(-delay)
	end--]]
	table.wipe(SoulMarkers)
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		VEM.RangeCheck:Hide()
	end
--	yellTriggered = false
	if self.Options.HudMAP then
		VEMHudMap:FreeEncounterMarkers()
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 144696 then
		warnEternalAgony:Show()
		specWarnEternalAgony:Show()
	elseif args.spellId == 144695 then
		warnAncientFlame:Show()
--		timerAncientFlameCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 144689 then
		warnBurningSoul:Show(args.destName)
		timerBurningSoul:Start(args.destName)
--		timerBurningSoulCD:Start()
		if args:IsPlayer() then
			specWarnBurningSoul:Show()
			yellBurningSoul:Yell()
			if self.Options.RangeFrame then
				VEM.RangeCheck:Show(8)
			end
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runout.mp3") --离开人群
			sndWOP:Schedule(4.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runout.mp3")
			sndWOP:Schedule(5.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countfive.mp3")
			sndWOP:Schedule(6.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countfour.mp3")
			sndWOP:Schedule(7.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
			sndWOP:Schedule(8.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
			sndWOP:Schedule(9.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		end
		if self.Options.HudMAP then
			SoulMarkers[args.destName] = register(VEMHudMap:PlaceRangeMarkerOnPartyMember("timer", args.destName, 8, 10, 0, 1, 0, 1):Appear():RegisterForAlerts():Rotate(360, 10))
		end
		if self.Options.SetIconOnBurningSoul then
			self:SetIcon(args.destName, 8)
		end
	elseif args.spellId == 144693 then
		specWarnPoolOfFire()--maybe add DAMAGE event too if it feels like this isn't enough
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 144689 then
		timerBurningSoul:Cancel(args.destName)
		if self.Options.SetIconOnBurningSoul then
			self:SetIcon(args.destName, 0)
		end
		if SoulMarkers[args.destName] then
			SoulMarkers[args.destName] = free(SoulMarkers[args.destName])
		end
		if args:IsPlayer() then
			if self.Options.RangeFrame then
				VEM.RangeCheck:Hide()
			end
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\safenow.mp3")
		end
	end
end

--[[
function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Pull and not self:IsInCombat() then
		if self:GetCIDFromGUID(UnitGUID("target")) == 72057 or self:GetCIDFromGUID(UnitGUID("targettarget")) == 72057 then
			yellTriggered = true
			VEM:StartCombat(self, 0)
		end
	end
end
--]]
