local mod	= VEM:NewMod(866, "VEM-SiegeOfOrgrimmar", nil, 369)
local L		= mod:GetLocalizedStrings()
local sndWOP	= mod:NewSound(nil, "SoundWOP", true)

mod:SetRevision(("$Revision: 10106 $"):sub(12, -3))
mod:SetCreatureID(72276)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_DAMAGE",
	"SPELL_MISSED",
	"SPELL_PERIODIC_DAMAGE",
	"SPELL_PERIODIC_MISSED",
	"UNIT_DIED",
	"UNIT_SPELLCAST_SUCCEEDED boss1 boss2 boss3 boss4 boss5"--This boss changes boss ID every time you jump into one of tests, because he gets unregistered as boss1 then registered as boss2 when you leave, etc
)

--Amalgam of Corruption
local warnUnleashedAnger				= mod:NewSpellAnnounce(145216, 2, nil, mod:IsTank())
local warnBlindHatred					= mod:NewSpellAnnounce(145226, 3)
--Test of Serenity (DPS)
local warnTearReality					= mod:NewCastAnnounce(144482, 3)
--Test of Reliance (Healer)
local warnDishearteningLaugh			= mod:NewSpellAnnounce(146707, 3)
local warnLingeringCorruption			= mod:NewTargetAnnounce(144514, 3)
--Test of Confidence (tank)
local warnTitanicSmash					= mod:NewCastAnnounce(144628, 4)
local warnBurstOfCorruption				= mod:NewCastAnnounce(144654, 3)
local warnHurlCorruption				= mod:NewCastAnnounce(144649, 4)
local warnPiercingCorruption			= mod:NewSpellAnnounce(144657, 3)

--Amalgam of Corruption
local specWarnUnleashedAnger			= mod:NewSpecialWarningSpell(145216, mod:IsTank())
local specWarnBlindHatred				= mod:NewSpecialWarningSpell(145226, nil, nil, nil, 2)
local specWarnBHMove					= mod:NewSpecialWarningMove(145226)
local specWarnManifestation				= mod:NewSpecialWarningSwitch("ej8232", not mod:IsHealer())--Unleashed Manifestation of Corruption
--Test of Serenity (DPS)
local specWarnTearReality				= mod:NewSpecialWarningMove(144482)
--Test of Reliance (Healer)
local specWarnDishearteningLaugh		= mod:NewSpecialWarningSpell(146707, false, nil, nil, 2)
local specWarnLingeringCorruption		= mod:NewSpecialWarningDispel(144514)
local specWarnLCMove					= mod:NewSpecialWarningMove(146703)
--Test of Confidence (tank)
local specWarnTitanicSmash				= mod:NewSpecialWarningMove(144628)
local specWarnBurstOfCorruption			= mod:NewSpecialWarningSpell(144654, nil, nil, nil, 2)
local specWarnHurlCorruption			= mod:NewSpecialWarningInterrupt(144649, nil, nil, nil, 3)
local specWarnPiercingCorruption		= mod:NewSpecialWarningSpell(144657)
local specWarnTestIn					= mod:NewSpecialWarning("specWarnTestIn")
local specWarnTestOut					= mod:NewSpecialWarning("specWarnTestOut")

--Amalgam of Corruption
local timerUnleashedAngerCD				= mod:NewCDTimer(11, 145216, nil, mod:IsTank())
local timerBlindHatred					= mod:NewBuffActiveTimer(30, 145226)
local timerBlindHatredCD				= mod:NewNextTimer(30, 145226)
--All Tests
local timerLookWithin					= mod:NewBuffFadesTimer(60, "ej8220")
--Test of Serenity (DPS)
local timerTearRealityCD				= mod:NewCDTimer(8.5, 144482)--8.5-10sec variation
--Test of Reliance (Healer)
local timerDishearteningLaughCD			= mod:NewNextTimer(12, 146707)
local timerLingeringCorruptionCD		= mod:NewNextTimer(15.5, 144514)
--Test of Confidence (tank)
local timerTitanicSmashCD				= mod:NewCDTimer(14.5, 144628)--14-17sec variation
local timerPiercingCorruptionCD			= mod:NewCDTimer(14, 144657)--14-17sec variation
local timerHurlCorruptionCD				= mod:NewNextTimer(20, 144649)

local berserkTimer						= mod:NewBerserkTimer(353)

local countdownLookWithin				= mod:NewCountdownFades(59, "ej8220", false)
--local countdownLingeringCorruption	= mod:NewCountdown(15.5, 144514, mod:IsHealer(), nil, nil, nil, true)
--local countdownHurlCorruption			= mod:NewCountdown(20, 144649, mod:IsTank(), nil, nil, nil, true)

mod:AddBoolOption("InfoFrame", false, "sound")
mod:AddBoolOption("InfoFrame2", true, "sound")
mod:AddEditBoxOption("prevplayer", 150, "", "sound")

local corruptionLevel = EJ_GetSectionInfo(8252)
local testDebuff = GetSpellInfo(144452)
local unleashedAngerCast = 0

function notindoor()
	if (not UnitDebuff("player", GetSpellInfo(144849))) and (not UnitDebuff("player", GetSpellInfo(144850))) and (not UnitDebuff("player", GetSpellInfo(144851))) then
		return true
	end
	return false
end
local function fixdebuffremovebug(checkplayer)
    if UnitDebuff(checkplayer, GetSpellInfo(144849)) or UnitDebuff(checkplayer, GetSpellInfo(144850)) or UnitDebuff(checkplayer, GetSpellInfo(144851)) then
		mod:Schedule(1, function() fixdebuffremovebug(checkplayer) end)
	else
		specWarnTestOut:Show(checkplayer)
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_mbcc.mp3")--隊友出场
	end
end

function mod:OnCombatStart(delay)
	timerBlindHatredCD:Start(25-delay)
	self:Schedule(21, function()
		if notindoor() then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_sxzb.mp3")--射線準備
			sndWOP:Schedule(1, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
			sndWOP:Schedule(2, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
			sndWOP:Schedule(3, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		end
	end)
	if self:IsDifficulty("lfr25") then
		berserkTimer:Start(413-delay)--Still true?
	else
		berserkTimer:Start(-delay)
	end
	if self.Options.InfoFrame and not self.Options.InfoFrame2 then
		VEM.InfoFrame:SetHeader(corruptionLevel)
		VEM.InfoFrame:Show(5, "playerpower", 5, ALTERNATE_POWER_INDEX)
	end
	if self.Options.InfoFrame2 then
		VEM.InfoFrame:SetHeader(testDebuff)
		VEM.InfoFrame:Show(4, "playersomedebuffs", 144849, 144850, 144851)
	end
end

function mod:OnCombatEnd()
	if self.Options.InfoFrame or self.Options.InfoFrame2 then
		VEM.InfoFrame:Hide()
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 145216 then
		unleashedAngerCast = unleashedAngerCast + 1
		warnUnleashedAnger:Show(unleashedAngerCast)
		specWarnUnleashedAnger:Show()
		if unleashedAngerCast < 3 then
			timerUnleashedAngerCD:Start(nil, unleashedAngerCast+1)
		end
	elseif args.spellId == 144482 then
		warnTearReality:Show()
		specWarnTearReality:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_slkd.mp3") --撕裂快躲
		timerTearRealityCD:Start()
	elseif args.spellId == 144654 then
		warnBurstOfCorruption:Show()
		specWarnBurstOfCorruption:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\aesoon.mp3") --準備AOE
	elseif args.spellId == 144628 then
		warnTitanicSmash:Show()
		specWarnTitanicSmash:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_mjkd.mp3") --猛擊快躲
		timerTitanicSmashCD:Start()
	elseif args.spellId == 144649 then
		warnHurlCorruption:Show()
		specWarnHurlCorruption:Show()
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\kickcast.mp3") --快打斷
		timerHurlCorruptionCD:Start()
--		countdownHurlCorruption:Start()
		sndWOP:Schedule(17, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
		sndWOP:Schedule(18, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
		sndWOP:Schedule(19, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
	elseif args.spellId == 144657 then
		warnPiercingCorruption:Show()
		specWarnPiercingCorruption:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_ctdj.mp3") --穿透打擊
		timerPiercingCorruptionCD:Start()
	elseif args.spellId == 146707 then
		warnDishearteningLaugh:Show()
		specWarnDishearteningLaugh:Show()
		timerDishearteningLaughCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 144514 then
		warnLingeringCorruption:Show(args.destName)
		specWarnLingeringCorruption:Show(args.destName)
		if mod:IsHealer() then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\dispelnow.mp3")--快驅散
		end
		timerLingeringCorruptionCD:Start()
--		countdownLingeringCorruption:Start()
	elseif args.spellId == 145226 then
		self:SendSync("BlindHatred")
		specWarnBlindHatred:Show()
	elseif args:IsSpellID(144849, 144850, 144851) then--Look Within
		if args:IsPlayer() then
			timerLookWithin:Start()
			countdownLookWithin:Start()
			sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
			sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
			sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		end
		if args.destName == mod.Options.prevplayer then
			specWarnTestIn:Show(args.destName)
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_mbrc.mp3")--隊友入场			
			fixdebuffremovebug(args.destName)
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(144849, 144850, 144851) and args:IsPlayer() then--Look Within
		timerTearRealityCD:Cancel()
		timerLingeringCorruptionCD:Cancel()
--		countdownLingeringCorruption:Cancel()
		timerDishearteningLaughCD:Cancel()
		timerTitanicSmashCD:Cancel()
		timerHurlCorruptionCD:Cancel()
--		countdownHurlCorruption:Cancel()
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		timerPiercingCorruptionCD:Cancel()
		timerLookWithin:Cancel()
		countdownLookWithin:Cancel()
	elseif args.spellId == 145226 then
		self:SendSync("BlindHatredEnded")
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 71977 then--Manifestation of Corruption (Dps Test)
		timerTearRealityCD:Cancel()
		self:SendSync("ManifestationDied")
	elseif cid == 72001 then--Greater Corruption (Healer Test)
		timerLingeringCorruptionCD:Cancel()
--		countdownLingeringCorruption:Cancel()
		timerDishearteningLaughCD:Cancel()
	elseif cid == 72051 then--Titanic Corruption (Tank Test)
		timerTitanicSmashCD:Cancel()
		timerHurlCorruptionCD:Cancel()
--		countdownHurlCorruption:Cancel()
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		timerPiercingCorruptionCD:Cancel()
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, _, _, spellId)
	if spellId == 146179 then--Frayed
		specWarnManifestation:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ptwo.mp3")--二階段準備
	end
end

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId)
	if spellId == 145227 and destGUID == UnitGUID("player") and self:AntiSpam(2, 1) then --射線
		specWarnBHMove:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, destName, _, _, spellId)
	if spellId == 146703 and destGUID == UnitGUID("player") and self:AntiSpam(2, 2) then
		specWarnLCMove:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

function mod:OnSync(msg)
	if msg == "BlindHatred" then
		warnBlindHatred:Show()
		specWarnBlindHatred:Show()
		timerBlindHatred:Start()
	elseif msg == "BlindHatredEnded" then
		timerBlindHatredCD:Start()
		unleashedAngerCast = 0
		self:Schedule(26, function()
			if notindoor() then
				sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_sxzb.mp3")--射線準備
				sndWOP:Schedule(1, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
				sndWOP:Schedule(2, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
				sndWOP:Schedule(3, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
			end
		end)
	elseif msg == "ManifestationDied" then
		if notindoor() then
			specWarnManifestation:Show()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\bigmobsoon.mp3")--準備大怪
			if mod:IsDps() then
				sndWOP:Schedule(5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\killbigmob.mp3")--大怪快打
			else
				sndWOP:Schedule(5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\bigmob.mp3")--大怪出現
			end
		end
	end
end

