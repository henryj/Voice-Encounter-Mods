local mod	= VEM:NewMod(868, "VEM-SiegeOfOrgrimmar", nil, 369)
local L		= mod:GetLocalizedStrings()
local sndWOP	= mod:NewSound(nil, "SoundWOP", true)
local sndZQ		= mod:NewSound(nil, "SoundZQ", true)
local sndTT		= mod:NewSound(nil, "SoundTT", true)

mod:SetRevision(("$Revision: 10115 $"):sub(12, -3))
mod:SetCreatureID(72311, 72560, 72249)--Boss needs to engage off Varian/Lor'themar, not the boss. I include the boss too so we don't detect a win off losing varian. :)
mod:SetMainBossID(72249)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_AURA_REMOVED",
	"SPELL_PERIODIC_DAMAGE",
	"SPELL_PERIODIC_MISSED",
	"SPELL_DAMAGE",
	"SPELL_MISSED",
	"UNIT_DIED",
	"CHAT_MSG_RAID_BOSS_EMOTE"
)

--Stage 1: Clear the Landing/Bring Her Down!
----TODO, don't want this mod to register events in entire zone so it can warn for prelude trash.
----I'll put duplicate eevnts in trash mod instead since trash mod will be disabled during encounters
local warnWarBanner					= mod:NewSpellAnnounce(147328, 3)
local warnFracture					= mod:NewTargetAnnounce(146899, 3)--TODO: see if target scanning works with one of earlier events
local warnChainHeal					= mod:NewCastAnnounce(146757, 4)
local warnHealingTideTotem			= mod:NewSpellAnnounce(146753, 4)
----Master Cannoneer Dragryn
local warnMuzzleSpray				= mod:NewSpellAnnounce(147824, 3)--Wowhead data: 147825 activates a periodicly trigger (147823) which triggers 147824 as secondary effect
----Lieutenant General Krugruk
local warnArcingSmash				= mod:NewSpellAnnounce(147688, 3)
----High Enforcer Thranok
local warnCrushersCall				= mod:NewCastAnnounce(146769, 3)
local warnSkullCracker				= mod:NewCastAnnounce(146848, 4)
----Korgra the Snake
local warnPoisonTippedBlades		= mod:NewStackAnnounce(146902, 2, nil, mod:IsTank())
local warnCurseVenom				= mod:NewSpellAnnounce(147711, 3)
--Phase 3: Galakras,The Last of His Progeny
local warnFlamesofGalakrondTarget	= mod:NewTargetAnnounce(147068, 4)

--Stage 1: Clear the Landing/Bring Her Down!
local specWarnWarBanner				= mod:NewSpecialWarningSwitch(147328, not mod:IsHealer())
local specWarnFractureYou			= mod:NewSpecialWarningYou(146899)
local yellFracture					= mod:NewYell(146899)
local specWarnFracture				= mod:NewSpecialWarningTarget(146899, mod:IsHealer())
local specWarnChainheal				= mod:NewSpecialWarningInterrupt(146757)
local specWarnFlameArrow			= mod:NewSpecialWarningMove(146764)
local specWarnShadowAttack			= mod:NewSpecialWarningMove(146872)
local specWarnHealingTideTotem		= mod:NewSpecialWarningSwitch(146753, not mod:IsHealer())
----Master Cannoneer Dragryn
local specWarnMuzzleSpray			= mod:NewSpecialWarningSpell(147824, nil, nil, nil, 2)
----Lieutenant General Krugruk
local specWarnArcingSmash			= mod:NewSpecialWarningSpell(147688, nil, nil, nil, 2)
----High Enforcer Thranok
local specWarnCrushersCall			= mod:NewSpecialWarningSpell(146769, false, nil, nil, 2)--optional pre warning for the grip soon. although melee/tank probably don't really care and ranged are 50/50
local specWarnSkullCracker			= mod:NewSpecialWarningRun(146848, nil, nil, nil, 3)--TODO, only warn the ranged who were gripped in by crushers call, instead of all of them
----Korgra the Snake
local specWarnPoisonCloud			= mod:NewSpecialWarningMove(147705)
local specWarnCurseVenom			= mod:NewSpecialWarningSpell(147711)
--Phase 3: Galakras,The Last of His Progeny
local specWarnFlamesofGalakrond		= mod:NewSpecialWarningSpell(147029, nil, nil, nil, 2)
local specWarnFlamesofGalakrondYou	= mod:NewSpecialWarningYou(147068)
local yellFlamesofGalakrond			= mod:NewYell(147068)

--Stage 1: Clear the Landing/Bring Her Down!
----Nothing in EJ so can't drycode this
local timerDemolisherCD				= mod:NewTimer(20, "timerDemolisherCD", 116040)--EJ is just not complete yet, shouldn't need localizing
----Master Cannoneer Dragryn

----Lieutenant General Krugruk

----High Enforcer Thranok

----Korgra the Snake
local timerPoisonTippedBlades		= mod:NewTargetTimer(15, 146902, nil, mod:IsTank() or mod:IsHealer())
--Phase 3: Galakras,The Last of His Progeny
local timerFlamesofGalakrond		= mod:NewTargetTimer(5, 147068)
--local timerFlamesofGalakrondCD		= mod:NewCDTimer(50, 147029)

mod:AddBoolOption("FixateIcon", true)

function mod:ArcingSmashTarget(targetname, uId)
	if not targetname then
		print("VEM DEBUG: ArcingSmashTarget Scan failed")
		return
	else
		print("VEM DEBUG: ArcingSmashTarget scan returned "..targetname)
	end
--[[	if self:IsTanking(uId) then--Never target tanks, so if target is tank, that means scanning failed.
		scanFailed = true
		specWarnFoulStream:Show()
	else
		warnFoulStream:Show(targetname)
		timerFoulStreamCD:Start()
		if targetname == UnitName("player") then
			specWarnFoulStreamYou:Show()
			yellFoulStream:Yell()
		else
			if checkTankDistance(71859) then
				specWarnFoulStream:Show()
			end
		end
	end--]]
end

local function checkTankDistance(guid)
	local _, uId = mod:GetBossTarget(guid)
	if uId then
		local inRange, checkedRange = UnitInRange(uId)
		if checkedRange then
			return inRange
		else
			return true
		end
	end
	return false
end

function mod:OnCombatStart(delay)

end

function mod:OnCombatEnd()

end

function mod:SPELL_CAST_START(args)
	if args.spellId == 147825 and checkTankDistance(args.sourceGUID) then--Might be an applied event instead
		warnMuzzleSpray:Show()
		specWarnMuzzleSpray:Show()
		if self:AntiSpam(10, 4) then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\carefly.mp3")--小心击飞
		end
	elseif args.spellId == 147688 and checkTankDistance(args.sourceGUID) then--Might be an applied event instead
		self:BossTargetScanner(args.sourceGUID, "ArcingSmashTarget", 0.025, 12)--GUID is temp, til have CID instead, although guess doesn't matter
		warnArcingSmash:Show()
		specWarnArcingSmash:Show()
		if self:AntiSpam(10, 4) then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\carefly.mp3")--小心击飞
		end
	elseif args.spellId == 146769 then
		warnCrushersCall:Show()
		specWarnCrushersCall:Show()
	elseif args.spellId == 146848 then
		warnSkullCracker:Show()
		specWarnSkullCracker:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_sfzd.mp3")--旋風斬
	elseif args.spellId == 146757 then
		local source = args.sourceName
		warnChainHeal:Show()
		if source == UnitName("target") or source == UnitName("focus") then 
			specWarnChainheal:Show(source)
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\kickcast.mp3") --快打斷
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 146902 then
		local amount = args.amount or 1
		if amount % 4 == 0 or amount >= 12 then--Guesswork, this is one of those rapid stacking ones
			warnPoisonTippedBlades:Show(args.destName, amount)
		end
		timerPoisonTippedBlades:Start(args.destName)
--[[		if amount >= 12 then
			if args:IsPlayer() then
				specWarnPoisonTippedBlades:Show(args.amount)
			else
				specWarnPoisonTippedBladesOther:Show(args.destName)
			end
		end--]]
	elseif args.spellId == 147068 then
		warnFlamesofGalakrondTarget:Show(args.destName)
		timerFlamesofGalakrond:Start(args.destName)
		--timerFlamesofGalakrondCD:Start()
		if args:IsPlayer() then
			specWarnFlamesofGalakrondYou:Show()
			yellFlamesofGalakrond:Yell()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\justrun.mp3") --快跑
		else
			specWarnFlamesofGalakrond:Show()
		end
		if self.Options.FixateIcon then
			self:SetIcon(args.destName, 8)
		end
	elseif args.spellId == 147328 then
		warnWarBanner:Show()
		specWarnWarBanner:Show()
		sndZQ:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_zqkd.mp3")--战旗快打
	elseif args.spellId == 146899 then
		warnFracture:Show(args.destName)
		if args:IsPlayer() then
			specWarnFractureYou:Show()
			yellFracture:Yell()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\chargemove.mp3")--冲锋快躲
		else
			specWarnFracture:Show(args.destName)
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_sgcf.mp3")--碎骨冲锋
		end
	elseif args.spellId == 147711 then
		warnCurseVenom:Show()
		specWarnCurseVenom:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_dskd.mp3")--毒蛇快打
	elseif args.spellId == 147705 then
		if args:IsPlayer() and self:AntiSpam(2, 1) then
			specWarnPoisonCloud:Show()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
		end
	elseif args.spellId == 146765 then
		if args:IsPlayer() and self:AntiSpam(2, 2) then
			specWarnFlameArrow:Show()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 146902 then
		timerPoisonTippedBlades:Cancel(args.destName)
	elseif args.spellId == 147068 then
		timerFlamesofGalakrond:Cancel(args.destName)
		if self.Options.FixateIcon then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 146753 then
		warnHealingTideTotem:Show()
		specWarnHealingTideTotem:Show()
		sndTT:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_ttkd.mp3") --圖騰快打
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, destName, _, _, spellId)
	if spellId == 147705 and destGUID == UnitGUID("player") and self:AntiSpam(2, 1) then
		specWarnPoisonCloud:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
	elseif spellId == 146765 and destGUID == UnitGUID("player") and self:AntiSpam(2, 2) then
		specWarnFlameArrow:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, destName, _, _, spellId)
	if spellId == 146764 and destGUID == UnitGUID("player") and self:AntiSpam(2, 2) then
	--	specWarnFlameArrow:Show()
	elseif spellId == 146872 and destGUID == UnitGUID("player") and self:AntiSpam(2, 3) then
		specWarnShadowAttack:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 72249 then--Main Boss ID
		VEM:EndCombat(self)
	end
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg, _, _, _, target)
	if msg == L.demolisher or msg:find(L.demolisher) then--Not a mistake, it emotes epiccenter (maybe a bug?)
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_tscd.mp3") --投石车快打
	elseif msg == L.tower or msg:find(L.tower) then
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_ptkf.mp3") --炮塔开放
		timerDemolisherCD:Start()
	end
end
