if GetBuildInfo() ~= "5.4.0" then return end
local mod	= VEM:NewMod(858, "VEM-Pandaria", nil, 322)
local L		= mod:GetLocalizedStrings()
local sndWOP	= mod:NewSound(nil, "SoundWOP", true)

mod:SetRevision(("$Revision: 9881 $"):sub(12, -3))
mod:SetCreatureID(71955)
--mod:SetQuestID(32519)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED"
)

--[[
mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)--]]

local warnJadefireBreath		= mod:NewSpellAnnounce(144530, 2, mod:IsTank())
local warnJadefireBolt			= mod:NewSpellAnnounce(144532, 3)--Target scanning?
local warnJadefireWall			= mod:NewSpellAnnounce(144533, 4)

local specWarnJadefireBreath	= mod:NewSpecialWarningSpell(144530, mod:IsTank())
local specWarnJadefireBlaze		= mod:NewSpecialWarningMove(144538)
local specWarnJadefireWall		= mod:NewSpecialWarningSpell(144533, nil, nil, nil, 2)

--local timerJadefireBreathCD	= mod:NewCDTimer(26, 144530, nil, mod:IsTank())
--local timerJadefireBoltCD		= mod:NewCDTimer(25, 144532)
--local timerJadefireWallCD		= mod:NewCDTimer(25, 144533)

mod:AddBoolOption("RangeFrame", true)--For jadefire bolt/blaze (depending how often it's cast, if it's infrequent i'll kill range finder)

--local yellTriggered = false

function mod:OnCombatStart(delay)
--[[	if yellTriggered then--We know for sure this is an actual pull and not diving into in progress
		timerPiercingRoarCD:Start(20-delay)
		timerFrillBlastCD:Start(40-delay)
	end--]]
	if self.Options.RangeFrame then
		VEM.RangeCheck:Show(11)
	end
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		VEM.RangeCheck:Hide()
	end
--	yellTriggered = false
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 144530 then
		warnJadefireBreath:Show()
		specWarnJadefireBreath:Show()
		if mod:IsTank() or mod:IsHealer() then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\breathsoon.mp3") --準備吐息
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 144532 then
		warnJadefireBolt:Show()
--		timerJadefireBoltCD:Start()
	elseif args.spellId == 144533 then
		warnJadefireWall:Show()
		specWarnJadefireWall:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\firewall.mp3") --火牆
--		timerJadefireWallCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 144537 and args:IsPlayer() then
		specWarnJadefireBlaze:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
	end
end

--[[
function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Pull and not self:IsInCombat() then
		if self:GetCIDFromGUID(UnitGUID("target")) == 71955 or self:GetCIDFromGUID(UnitGUID("targettarget")) == 71955 then
			yellTriggered = true
			VEM:StartCombat(self, 0)
		end
	end
end
--]]
