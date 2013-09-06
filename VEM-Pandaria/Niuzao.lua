if GetBuildInfo() ~= "5.4.0" then return end
local mod	= VEM:NewMod(859, "VEM-Pandaria", nil, 322)
local L		= mod:GetLocalizedStrings()
local sndWOP	= mod:NewSound(nil, "SoundWOP", true)

mod:SetRevision(("$Revision: 10106 $"):sub(12, -3))
mod:SetCreatureID(71954)
--mod:SetQuestID(32519)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE"
)

--[[
mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)
--]]

local warnHeadbutt				= mod:NewSpellAnnounce(144610, 3, nil, mod:IsTank())
local warnOxenFortitude			= mod:NewStackAnnounce(144606, 2)--144607 player version, but better to just track boss and announce stacks
local warnMassiveQuake			= mod:NewSpellAnnounce(144611, 3)
local warnCharge				= mod:NewSpellAnnounce(144609, 4)

local specWarnHeadbutt			= mod:NewSpecialWarningSpell(144610, mod:IsTank())
local specWarnMassiveQuake		= mod:NewSpecialWarningCast(144611, mod:IsHealer())
local specWarnCharge			= mod:NewSpecialWarningSpell(144609, nil, nil, nil, 2)

--local timerHeadbuttCD			= mod:NewCDTimer(60, 144610, nil, mod:IsTank())
--local timerMassiveQuakeCD		= mod:NewCDTimer(60, 137511)

--local yellTriggered = false

function mod:OnCombatStart(delay)
--[[	if yellTriggered then
		timerHeadbuttCD:Start(15-delay)
		timerMassiveQuakeCD:Start(20-delay)
	end--]]
end

function mod:OnCombatEnd()
--	yellTriggered = false
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 144610 then
		warnHeadbutt:Show()
		specWarnHeadbutt:Show()
		if mod:IsTank() or mod:IsHealer() then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\changemt.mp3") --換坦嘲諷
		end
--		timerHeadbuttCD:Start()
	elseif args.spellId == 144611 then
		warnMassiveQuake:Show()
		specWarnMassiveQuake:Show()
		if mod:IsHealer() then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\healall.mp3") --注意群療
		else
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\aesoon.mp3") --准备AOE
		end
--		timerMassiveQuakeCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 144609 then
		warnCharge:Show()
		specWarnCharge:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\chargemove.mp3") --衝鋒快躲
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 144606 then
		warnOxenFortitude:Show(args.destName, args.amount or 1)
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

--[[
function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Pull and not self:IsInCombat() then
		if self:GetCIDFromGUID(UnitGUID("target")) == 71954 or self:GetCIDFromGUID(UnitGUID("targettarget")) == 71954 then
			yellTriggered = true
			VEM:StartCombat(self, 0)
		end
	end
end
--]]
