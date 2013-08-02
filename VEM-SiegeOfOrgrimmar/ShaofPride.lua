local mod	= VEM:NewMod(867, "VEM-SiegeOfOrgrimmar", nil, 369)
local L		= mod:GetLocalizedStrings()
local sndWOP	= mod:NewSound(nil, "SoundWOP", true)

mod:SetRevision(("$Revision: 10091 $"):sub(12, -3))
mod:SetCreatureID(71734)
--mod:SetQuestID(32744)
mod:SetZone()
mod:SetUsedIcons(8, 7, 6, 5, 4, 3, 2, 1)

mod:RegisterCombat("combat")


mod:RegisterEventsInCombat(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
--	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_AURA_REMOVED",
	"UNIT_POWER_FREQUENT boss1"
)

--Sha of Pride
local warnGiftOfTitans			= mod:NewTargetAnnounce(144359, 1)
local warnSwellingPride			= mod:NewSpellAnnounce(144400, 3)
local warnMark					= mod:NewTargetAnnounce(144351, 3, nil, mod:IsHealer())
local warnWoundedPride			= mod:NewTargetAnnounce(144358, 4, nil, mod:IsTank() or mod:IsHealer())
local warnSelfReflection		= mod:NewSpellAnnounce(144800, 3)
local warnCorruptedPrison		= mod:NewTargetAnnounce(144574, 3)
local warnBanishment			= mod:NewTargetAnnounce(145215, 3)--Heroic
local warnWeakenedResolve		= mod:NewTargetAnnounce(147207, 2, nil, false)--Heroic
local warnUnleashed				= mod:NewSpellAnnounce(144832, 3)--Phase 2
--Pride
local warnBurstingPride			= mod:NewTargetAnnounce(144911, 2)--25-49 Energy
local warnProjection			= mod:NewTargetAnnounce(146822, 3)--50-74 Energy
local warnAuraOfPride			= mod:NewTargetAnnounce(146817, 3)--75-99 Energy
local warnOvercome				= mod:NewTargetAnnounce(144843, 3)--100 Energy (pre mind control)
local warnOvercomeMC			= mod:NewTargetAnnounce(144863, 4)--Mind control version (ie applied being hit by swelling pride while you have 144843)
--Manifestation of Pride
local warnManifestation			= mod:NewSpellAnnounce("ej8262", 3)
local warnMockingBlast			= mod:NewSpellAnnounce(144379, 3)

--Sha of Pride
local specWarnGiftOfTitans		= mod:NewSpecialWarningYou(144359)
local specWarnSwellingPride		= mod:NewSpecialWarningSpell(144400, nil, nil, nil, 2)
local specWarnWoundedPride		= mod:NewSpecialWarningSpell(144358, mod:IsTank())
local specWarnSelfReflection	= mod:NewSpecialWarningSpell(144800, nil, nil, nil, 2)
local specWarnCorruptedPrison	= mod:NewSpecialWarningSpell(144574)
local specWarnCorruptedPrisonYou= mod:NewSpecialWarningYou(144574, false)--Since you can't do anything about it, might as well be off by default. but an option cause someone will want it
local yellCorruptedPrison		= mod:NewYell(144574)--Yell useful though, they have to be freed quickly
--Pride
local specWarnBurstingPride		= mod:NewSpecialWarningMove(144911)--25-49 Energy
local yellBurstingPride			= mod:NewYell(144911)
local specWarnProjection		= mod:NewSpecialWarningYou(146822)--50-74 Energy
local specWarnAuraOfPride		= mod:NewSpecialWarningYou(146817)--75-99 Energy
local yellAuraOfPride			= mod:NewYell(146817)
local specWarnOvercome			= mod:NewSpecialWarningYou(144843, nil, nil, nil, 3)--100 EnergyHonestly, i have a feeling your best option if this happens is to find a way to kill yourself!
local specWarnBanishment		= mod:NewSpecialWarningYou(145215, nil, nil, nil, 3)--Heroic
--Manifestation of Pride
local specWarnManifestation		= mod:NewSpecialWarningSwitch("ej8262", not mod:IsHealer())--Spawn warning, need trigger first
local specWarnMockingBlast		= mod:NewSpecialWarningInterrupt(144379)

--Sha of Pride
local timerGiftOfTitansCD		= mod:NewNextTimer(25.5, 144359)--NOT cast or tied or boss, on it's own
--These abilitie timings are all based on boss1 UNIT_POWER. All timers have a 1 second variance (ie 20-21, 43-44, 48-49, etc)
local timerMarkCD				= mod:NewNextTimer(20.5, 144351, nil, mod:IsHealer())
local timerSelfReflectionCD		= mod:NewNextTimer(20.5, 144800)
local timerWoundedPrideCD		= mod:NewNextTimer(26, 144358, nil, mod:IsTank())--A tricky on that is based off unit power but with variable timings, but easily workable with an 11, 26 rule
local timerCorruptedPrisonCD	= mod:NewNextTimer(42, 144574)--Technically 40 for Imprison base cast, but this is timer til debuffs go out.
local timerManifestationCD		= mod:NewNextTimer(48, "ej8262")
local timerSwellingPrideCD		= mod:NewNextTimer(60.5, 144400)--Energy based, like sha of fear breath, is it also 33?
local timerWeakenedResolve		= mod:NewBuffFadesTimer(60, 147207, nil, false)
--Pride
local timerBurstingPride		= mod:NewCastTimer(3, 144911)
local timerProjection			= mod:NewCastTimer(6, 146822)

--local countdownSwellingPride	= mod:NewCountdown(60.5, 144400)
--local countdownReflection		= mod:NewCountdown(20.5, 144800, nil, nil, nil, nil, true)

mod:AddBoolOption("InfoFrame")
mod:AddBoolOption("SetIconOnMark", false)

mod:AddBoolOption("HudMAPBP", true, "sound")
mod:AddBoolOption("HudMAPCP", true, "sound")
mod:AddBoolOption("HudMAPAoP", false, "sound")
local VEMHudMap = VEMHudMap
local free = VEMHudMap.free
local function register(e)	
	VEMHudMap:RegisterEncounterMarker(e)
	return e
end
local BurstingMarkers = {}
local CPMarkers = {}
local AoPMarkers = {}

local tinsert, tconcat, twipe = table.insert, table.concat, table.wipe--Sha of tables....Might as well cache frequent table globals
local UnitPower, UnitPowerMax, UnitIsDeadOrGhost = UnitPower, UnitPowerMax, UnitIsDeadOrGhost--Power is checked VERY frequently
local giftOfTitansTargets = {}
local burstingPrideTargets = {}
local projectionTargets = {}
local auraOfPrideTargets = {}--74-99 Energy
local banishmentTargets = {}--Heroic
local overcomeTargets = {}--100 Energy
local overcomeMCTargets = {}--100 Energy MC
local markOfArroganceTargets = {}
local markOfArroganceIcons = {}
local corruptedPrisonTargets = {}
local prideLevel = EJ_GetSectionInfo(8255)
local playerName = UnitName("player")
local firstWound = false

local function warnGiftOfTitansTargets()
	warnGiftOfTitans:Show(tconcat(giftOfTitansTargets, "<, >"))
	twipe(giftOfTitansTargets)
	timerGiftOfTitansCD:Start()
end

local function warnBurstingPrideTargets()
	warnBurstingPride:Show(tconcat(burstingPrideTargets, "<, >"))
	twipe(burstingPrideTargets)
end

local function warnProjectionTargets()
	warnProjection:Show(tconcat(projectionTargets, "<, >"))
	twipe(projectionTargets)
end

local function warnAuraOfPrideTargets()
	warnAuraOfPride:Show(tconcat(auraOfPrideTargets, "<, >"))
	twipe(auraOfPrideTargets)
end

local function warnOvercomeTargets()
	warnOvercome:Show(tconcat(overcomeTargets, "<, >"))
	twipe(overcomeTargets)
end

local function warnOvercomeMCTargets()
	warnOvercomeMC:Show(tconcat(overcomeMCTargets, "<, >"))
	twipe(overcomeMCTargets)
end

local function warnBanishmentTargets()
	warnBanishment:Show(tconcat(banishmentTargets, "<, >"))
	twipe(banishmentTargets)
end

local function warnMarkTargets()
	warnMark:Show(tconcat(markOfArroganceTargets, "<, >"))
	timerMarkCD:Start()
	twipe(markOfArroganceTargets)
	if mod:IsHealer() then
		if UnitAura("player", GetSpellInfo(144359)) or UnitAura("player", GetSpellInfo(146594)) then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\dispelnow.mp3") --快驅散
		end
	end
end

local function warnCorruptedPrisonTargets()
	warnCorruptedPrison:Show(tconcat(corruptedPrisonTargets, "<, >"))
	specWarnCorruptedPrison:Show()
	twipe(corruptedPrisonTargets)
	sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\helpme.mp3") --救我
end

local function ClearMarkTargets()
	twipe(markOfArroganceIcons)
end

do
	local function sort_by_group(v1, v2)
		return VEM:GetRaidSubgroup(VEM:GetUnitFullName(v1)) < VEM:GetRaidSubgroup(VEM:GetUnitFullName(v2))
	end
	function mod:SetMarkIcons()
		table.sort(markOfArroganceIcons, sort_by_group)
		local markIcon = 1
		for i, v in ipairs(markOfArroganceIcons) do
			self:SetIcon(v, markIcon)
			markIcon = markIcon + 1
		end
		self:Schedule(1.5, ClearMarkTargets)--Table wipe delay so if icons go out too early do to low fps or bad latency, when they get new target on table, resort and reapplying should auto correct teh icon within .2-.4 seconds at most.
	end
end

function mod:OnCombatStart(delay)
	twipe(giftOfTitansTargets)
	twipe(burstingPrideTargets)
	twipe(projectionTargets)
	twipe(banishmentTargets)
	twipe(overcomeTargets)
	twipe(overcomeMCTargets)
	twipe(markOfArroganceTargets)
	twipe(auraOfPrideTargets)
	twipe(corruptedPrisonTargets)
	twipe(markOfArroganceIcons)
	twipe(BurstingMarkers)
	twipe(CPMarkers)
	twipe(AoPMarkers)
	timerGiftOfTitansCD:Start(7.5-delay)
	timerMarkCD:Start(-delay)
	timerWoundedPrideCD:Start(10-delay)
	timerSelfReflectionCD:Start(-delay)
--	countdownReflection:Start(-delay)
	sndWOP:Schedule(17-delay, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\mobsoon.mp3") --準備小怪
	sndWOP:Schedule(18-delay, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
	sndWOP:Schedule(19-delay, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
	sndWOP:Schedule(20-delay, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
	timerCorruptedPrisonCD:Start(-delay)
	timerManifestationCD:Start(-delay)
	timerSwellingPrideCD:Start(-delay)
--	countdownSwellingPride:Start(-delay)
	sndWOP:Schedule(57-delay, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\aesoon.mp3") --準備AOE
	sndWOP:Schedule(58-delay, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
	sndWOP:Schedule(59-delay, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
	sndWOP:Schedule(60-delay, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
	sndWOP:Schedule(35, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\readyrescue.mp3") --準備救人
	sndWOP:Schedule(45, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\bigmobsoon.mp3") --準備大怪
	self:Schedule(50, function()
		specWarnManifestation:Show()
		if mod:IsDps() then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\killbigmob.mp3")--大怪快打
		else
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\bigmob.mp3")--大怪出現
		end
	end)	
	firstWound = false
	if self.Options.InfoFrame then
		VEM.InfoFrame:SetHeader(prideLevel)
		VEM.InfoFrame:Show(5, "playerpower", 5, ALTERNATE_POWER_INDEX)
	end
end

function mod:OnCombatEnd()
	if self.Options.InfoFrame then
		VEM.InfoFrame:Hide()
	end
	
	if self.Options.HudMAPBP or self.Options.HudMAPCP or self.Options.HudMAPAoP then
		VEMHudMap:FreeEncounterMarkers()
	end
	
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 144400 then
		warnSwellingPride:Show()
		specWarnSwellingPride:Show()
	elseif args.spellId == 144379 then
		local source = args.sourceName
		warnMockingBlast:Show()
		if source == UnitName("target") or source == UnitName("focus") then 
			specWarnMockingBlast:Show(source)
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\kickcast.mp3") --快打斷
		end
	elseif args.spellId == 144832 then
		warnUnleashed:Show()
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ptwo.mp3") --P2
		timerGiftOfTitansCD:Cancel()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 144400 then--Swelling Pride Cast END
		firstWound = false
		--Since we register this event anyways for bursting, might as well start cd bars here instead
		timerWoundedPrideCD:Start(11)
		timerSelfReflectionCD:Start()
--		countdownReflection:Start()
		sndWOP:Schedule(17, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\mobsoon.mp3") --準備小怪
		sndWOP:Schedule(18, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
		sndWOP:Schedule(19, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
		sndWOP:Schedule(20, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		timerCorruptedPrisonCD:Start()
		timerManifestationCD:Start()
		timerSwellingPrideCD:Start()
--		countdownSwellingPride:Start()
		sndWOP:Schedule(57, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\aesoon.mp3") --準備AOE
		sndWOP:Schedule(58, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
		sndWOP:Schedule(59, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
		sndWOP:Schedule(60, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		sndWOP:Schedule(35, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\readyrescue.mp3") --準備救人
		sndWOP:Schedule(45, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\bigmobsoon.mp3") --準備大怪
		self:Schedule(50, function()
			specWarnManifestation:Show()
			if mod:IsDps() then
				sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\killbigmob.mp3")--大怪快打
			else
				sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\bigmob.mp3")--大怪出現
			end
		end)
		--This is done here because a lot can change during a cast, and we need to know players energy when cast ends, i.e. this event
		for uId in VEM:GetGroupMembers() do
			local maxPower = UnitPowerMax(uId, ALTERNATE_POWER_INDEX)--PTR work around mainly, div by 0 crap
			if maxPower ~= 0 and not UnitIsDeadOrGhost(uId) then
				local unitsPower = UnitPower(uId, ALTERNATE_POWER_INDEX) / maxPower * 100
				if unitsPower > 24 and unitsPower < 50 then--Valid Bursting target
					local targetName = VEM:GetUnitFullName(uId)
					burstingPrideTargets[#burstingPrideTargets + 1] = targetName
					self:Unschedule(warnBurstingPrideTargets)
					self:Schedule(0.5, warnBurstingPrideTargets)
					if targetName == UnitName("player") then
						specWarnBurstingPride:Show()
						yellBurstingPride:Yell()
						timerBurstingPride:Start()
						if self:AntiSpam(2, 2) then
							sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
						end
					end
										
					local x, y = GetPlayerMapPosition(uId)
					if x == 0 and y == 0 then
						SetMapToCurrentZone()
						x, y = GetPlayerMapPosition(uId)
					end
					local inRange = VEM.RangeCheck:GetDistance("player", x, y)
					if inRange then
						if inRange < 30 and self.Options.HudMAPBP then					
							BurstingMarkers[targetName] = register(VEMHudMap:PlaceStaticMarkerOnPartyMember("timer", targetName, 5, 3, 0, 1, 0, 0.8):Appear():RegisterForAlerts():Rotate(360, 3.2))
						end
						if inRange < 5 and self:AntiSpam(2, 2) then					
							sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runaway.mp3") --快躲開
						end
					end
				end
			end
		end
	elseif args.spellId == 144800 then
		warnSelfReflection:Show()
		specWarnSelfReflection:Show()
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\mobsoon.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
		sndWOP:Cancel("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\watchstep.mp3") --注意腳下
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(144359, 146594) then--Not sure why this has more than one iD, but it does. do I have them all?
		giftOfTitansTargets[#giftOfTitansTargets + 1] = args.destName
		self:Unschedule(warnGiftOfTitansTargets)
		self:Schedule(0.5, warnGiftOfTitansTargets)
		if args:IsPlayer() then
			specWarnGiftOfTitans:Show()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_ttzc.mp3") --泰坦之賜
			sndWOP:Schedule(1, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\gather.mp3") --快集合
		end
	elseif args.spellId == 145215 then
		banishmentTargets[#banishmentTargets + 1] = args.destName
		self:Unschedule(warnBanishmentTargets)
		self:Schedule(0.5, warnBanishmentTargets)
		if args:IsPlayer() then
			specWarnBanishment:Show()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\banishment.mp3") --你被放逐
		end
	elseif args.spellId == 146822 then
		projectionTargets[#projectionTargets + 1] = args.destName
		self:Unschedule(warnProjectionTargets)
		self:Schedule(0.5, warnProjectionTargets)
		if args:IsPlayer() then
			specWarnProjection:Show()
			timerProjection:Start()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_kjty.mp3") --快進投影
			sndWOP:Schedule(3.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countfive.mp3")
			sndWOP:Schedule(4.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countfour.mp3")
			sndWOP:Schedule(5.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countthree.mp3")
			sndWOP:Schedule(6.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\counttwo.mp3")
			sndWOP:Schedule(7.5, "Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\countone.mp3")
		end
	elseif args.spellId == 146817 then
		auraOfPrideTargets[#auraOfPrideTargets + 1] = args.destName
		self:Unschedule(warnAuraOfPrideTargets)
		self:Schedule(0.5, warnAuraOfPrideTargets)
		if args:IsPlayer() then
			specWarnAuraOfPride:Show()
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\runout.mp3") --離開人群
			yellAuraOfPride:Yell()
		end
		if self.Options.HudMAPAoP then
			if args:IsPlayer() then
				AoPMarkers[args.destName] = register(VEMHudMap:PlaceRangeMarkerOnPartyMember("highlight", args.destName, 5, nil, 1, 0 ,0 ,0.4))
			else
				AoPMarkers[args.destName] = register(VEMHudMap:PlaceRangeMarkerOnPartyMember("highlight", args.destName, 5, nil, 1, 0 ,0 ,0.8))
			end
		end
	elseif args.spellId == 144843 then--Same spellid fires for both versions, so we have to do some more advanced filtering
		if bit.band(args.destFlags, COMBATLOG_OBJECT_REACTION_HOSTILE) ~= 0 then--Mind controled version
			overcomeMCTargets[#overcomeMCTargets + 1] = args.destName
			self:Unschedule(warnOvercomeMCTargets)
			self:Schedule(0.5, warnOvercomeMCTargets)
		else--Non mind controlled version
			overcomeTargets[#overcomeTargets + 1] = args.destName
			self:Unschedule(warnOvercomeTargets)
			self:Schedule(0.5, warnOvercomeTargets)
			if args:IsPlayer() then
				specWarnOvercome:Show()
				sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\ex_so_aqym.mp3") --傲氣已滿
			end
		end
	elseif args.spellId == 144351 then
		markOfArroganceTargets[#markOfArroganceTargets + 1] = args.destName
		self:Unschedule(warnMarkTargets)
		self:Schedule(0.5, warnMarkTargets)
		if self.Options.SetIconOnMark and args:IsDestTypePlayer() then--Filter further on icons because we don't want to set icons on grounding totems
			tinsert(markOfArroganceIcons, VEM:GetRaidUnitId(VEM:GetFullPlayerNameByGUID(args.destGUID)))
			self:UnscheduleMethod("SetMarkIcons")
			if (self:IsDifficulty("normal25", "heroic25") and #markOfArroganceIcons >= 8) or (self:IsDifficulty("normal10", "heroic10") and #markOfArroganceIcons >= 3) then
				self:SetMarkIcons()
			else
				if self:LatencyCheck() then--lag can fail the icons so we check it before allowing.
					self:ScheduleMethod(0.5, "SetMarkIcons")
				end
			end
		end
	elseif args.spellId == 144358 then
		warnWoundedPride:Show(args.destName)
		specWarnWoundedPride:Show()
		if mod:IsTank() or mod:IsHealer() then
			sndWOP:Play("Interface\\AddOns\\VEM-Core\\extrasounds\\"..VEM.Options.CountdownVoice.."\\changemt.mp3") --換坦嘲諷
		end	
		if not firstWound then
			firstWound = true
			timerWoundedPrideCD:Start()
		end
	elseif args:IsSpellID(144574, 144636) then--Locational spellids, 2 from 10 man, 25 man will use all 4 where we can get other 2
		corruptedPrisonTargets[#corruptedPrisonTargets + 1] = args.destName
		self:Unschedule(warnCorruptedPrisonTargets)
		self:Schedule(0.5, warnCorruptedPrisonTargets)
		if args:IsPlayer() then
			specWarnCorruptedPrisonYou:Show()
			yellCorruptedPrison:Yell()
		elseif self.Options.HudMAPCP then
			CPMarkers[args.destName] = register(VEMHudMap:AddEdge(1, 0, 0, 1, nil, "player", args.destName))
		end
	elseif args.spellId == 147207 then
		warnWeakenedResolve:Show(args.destName)
		if args:IsPlayer() then
			timerWeakenedResolve:Start()
		end
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED--In case i decide to do something with fact healer debuff stacks if you suck at dispels

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 144351 and self.Options.SetIconOnMark then
		self:SetIcon(args.destName, 0)
	elseif args.spellId == 146817 then
		if AoPMarkers[args.destName] then
			AoPMarkers[args.destName] = free(AoPMarkers[args.destName])
		end
	elseif args:IsSpellID(144574, 144636) then
		if CPMarkers[args.destName] then
			CPMarkers[args.destName] = free(CPMarkers[args.destName])
		end
	elseif args.spellId == 147207 and args:IsPlayer() then
		timerWeakenedResolve:Cancel()
	end
end

function mod:UNIT_POWER_FREQUENT(uId)
	local power = UnitPower(uId)
	if power == 80 and self:AntiSpam(10, 1) then--May not be 100% precise, but very close, it spawns around 80-85 energy
		warnManifestation:Show()
	end
end
