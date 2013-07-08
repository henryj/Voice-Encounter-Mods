local L

-----------------------
-- <<<Temple of the Jade Serpent>>> --
-----------------------
-----------------------
-- Wise Mari --
-----------------------
L= VEM:GetModLocalization(672)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills",
	SetIconOnAdds	= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format("ej5616")
})

-----------------------
-- Lorewalker Stonestep --
-----------------------
L= VEM:GetModLocalization(664)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills",
	SpecWarnIntensity	= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.stack:format(6, 113315)
})

L:SetWarningLocalization({
	SpecWarnIntensity	= "%s on %s (%d)"
})

-----------------------
-- Liu Flameheart --
-----------------------
L= VEM:GetModLocalization(658)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Sha of Doubt --
-----------------------
L= VEM:GetModLocalization(335)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- <<<Stormstout Brewery>>> --
-----------------------
-----------------------
-- Ook-Ook --
-----------------------
L= VEM:GetModLocalization(668)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Hoptallus --
-----------------------
L= VEM:GetModLocalization(669)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

L:SetMiscLocalization({
	Tuzi				= "Hoptallus lets out a loud screech! The virmen are coming!"
})

-----------------------
-- Yan Zhu the Uncasked --
-----------------------
L= VEM:GetModLocalization(670)

L:SetOptionLocalization({
	SoundWOP 				= "voice warning: important skills",
	SpecWarnFizzyBubbles	= "Show special warning when you are missing $spell:114459 debuff",
	RangeFrame				= "Show range frame (10) for $spell:106546",
})

L:SetWarningLocalization({
	SpecWarnFizzyBubbles	= "Get Fizzy Bubble and fly"
})

-----------------------
-- <<<Shado-Pan Monastery>>> --
-----------------------
-----------------------
-- Gu Cloudstrike --
-----------------------
L= VEM:GetModLocalization(673)

L:SetWarningLocalization({
	warnStaticField	= "%s"
})

L:SetOptionLocalization({
	warnStaticField	= VEM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(106923),
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Snowdrift --
-----------------------
L= VEM:GetModLocalization(657)

L:SetWarningLocalization({
	warnRemainingNovice	= "Novices remaining: %d"
})

L:SetOptionLocalization({
	warnRemainingNovice	= "Announce how many Novices remain",
	SoundWOP 		= "voice warning: important skills"
})

L:SetMiscLocalization({
	NovicesPulled	= "You!  You have allowed the Sha to reawaken after all these years!",
	NovicesDefeated = "You have bested our most junior of students.  Now you will face two of my most senior.",
--	Defeat			= "I am bested.  Give me a moment and we will venture forth together to face the Sha."
})

-----------------------
-- Sha of Violence --
-----------------------
L= VEM:GetModLocalization(685)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

L:SetMiscLocalization({
	Kill		= "So long has violence lurks in your heart...I will return...",
})

-----------------------
-- Taran Zhu --
-----------------------
L= VEM:GetModLocalization(686)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills",
	InfoFrame			= "Show info frame for $journal:5827"
})

-----------------------
-- <<<The Gate of the Setting Sun>>> --
-----------------------
---------------------
-- Kiptilak --
---------------------
L= VEM:GetModLocalization(655)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills",
	IconOnSabotage	= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(107268)
})

-------------
-- Gadok --
-------------
L= VEM:GetModLocalization(675)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

L:SetMiscLocalization({
	StaffingRun		= "Striker Ga'dok prepares to make a strafing run!"
})

-----------------------
-- Rimok --
-----------------------
L= VEM:GetModLocalization(676)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------------
-- Raigonn --
-----------------------------
L= VEM:GetModLocalization(649)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

L:SetMiscLocalization({
	Kkxka		= "messenger",
	Kkxkb		= "protecter",
	Kkxkc		= "Devourer"
})

-----------------------
-- <<<Mogu'Shan Palace>>> --
-----------------------
-----------------------
-- Trial of Kings --
-----------------------
L= VEM:GetModLocalization(708)

L:SetMiscLocalization({
	Pull		= "Useless, all of you! Even the guards you give me in tribute can't keep these lesser beings from my palace.",
	Kuai		= "Clan Gurthan will show our King and the rest of you power-hungry imposters why we are the rightful ones at his side!",
	Ming		= "Clan Harthak will show all why they are the truest of Mogu!",
	Haiyan		= "Clan Kargesh will demonstrate why only the strong deserve to stand at our King's side!",
	Defeat		= "Who allowed these outsiders inside our halls? Only Clan Harthak or Clan Kargesh would stoop to such treachery!"
})

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Gekkan --
-----------------------
L= VEM:GetModLocalization(690)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Weaponmaster Xin --
-----------------------
L= VEM:GetModLocalization(698)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- <<<Siege of Niuzao Temple>>> --
-----------------------
-----------------------
-- Jinbak --
-----------------------
L= VEM:GetModLocalization(693)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Vo'jak --
-----------------------
L= VEM:GetModLocalization(738)

L:SetTimerLocalization({
	TimerWave	= "Sending: %s"
})

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills",
	TimerWave	= "Show timer for next mob wave"
})

L:SetMiscLocalization({
	WaveStart	= "Fools! Attacking the might of the mantid head on?  Your deaths will be swift.",
	Mob			= "joins the battle"
})

-----------------------
-- Pavalak --
-----------------------
L= VEM:GetModLocalization(692)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Neronok --
-----------------------
L= VEM:GetModLocalization(727)

L:SetMiscLocalization({
	Fly		= "fly to"
})

L:SetWarningLocalization({
	specWarnFly	= "GO GO GO!",
})

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills",
	specWarnFly		= "Special warning: When the boss to fly to the other end of the bridge"
})

-----------------------
-- <<<Scholomance>>> --
-----------------------
-----------------------
-- Instructor Chillheart --
-----------------------
L= VEM:GetModLocalization(659)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Jandice Barov --
-----------------------
L= VEM:GetModLocalization(663)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Rattlegore --
-----------------------
L= VEM:GetModLocalization(665)

L:SetWarningLocalization({
	SpecWarnGetBoned	= "Get Bone Armor"
})

L:SetOptionLocalization({
	SoundWOP 			= "voice warning: important skills",
	SpecWarnGetBoned	= "Show special warning when you are missing $spell:113996 debuff",
	InfoFrame			= "Show info frame for players not affected by $spell:113996"
})

L:SetMiscLocalization({
	PlayerDebuffs	= "No Bone Armor"
})

-----------------------
-- Lillian Voss --
-----------------------
L= VEM:GetModLocalization(666)

L:SetMiscLocalization({
	Kill	= "DIE, NECROMANCER!"
})

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Darkmaster Gandling --
-----------------------
L= VEM:GetModLocalization(684)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- <<<Scarlet Halls>>> --
-----------------------
-----------------------
-- Braun --
-----------------------
L= VEM:GetModLocalization(660)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Harlan --
-----------------------
L= VEM:GetModLocalization(654)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

L:SetMiscLocalization({
	Call		= "Armsmaster Harlan calls on two of his allies to join the fight!"
})

-----------------------
-- Flameweaver Koegler --
-----------------------
L= VEM:GetModLocalization(656)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- <<<Scarlet Cathedral>>> --
-----------------------
-----------------------
-- Thalnos Soulrender --
-----------------------
L= VEM:GetModLocalization(688)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})

-----------------------
-- Korlof --
-----------------------
L= VEM:GetModLocalization(671)

L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills",
	KickArrow	= "Show VEM arrow when $spell:114487 is near you",
})

-----------------------
-- Durand/High Inquisitor Whitemane --
-----------------------
L= VEM:GetModLocalization(674)


L:SetOptionLocalization({
	SoundWOP 		= "voice warning: important skills"
})