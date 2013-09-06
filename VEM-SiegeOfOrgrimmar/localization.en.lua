local L

---------------
-- Immerseus --
---------------
L= VEM:GetModLocalization(852)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	dr						= "Defensive warning[Warning will be showed at $spell:143020, but you should use your defensive cooldowns before contact]",
	dr1						= "$spell:143020 1",
	dr2						= "$spell:143020 2",
	dr3						= "$spell:143020 3",
	dr4						= "$spell:143020 4",
	dr5						= "$spell:143020 5",
	dr6						= "$spell:143020 6",
	dr7						= "$spell:143020 7",
	dr8						= "$spell:143020 8"
})

---------------------------
-- The Fallen Protectors --
---------------------------
L= VEM:GetModLocalization(849)

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	SoundBD					= "Voice Warning: Dispel $spell:143434",
	dr1						= "Defensive warning: $spell:143491 1/4",
	dr2						= "Defensive warning: $spell:143491 2/4",
	dr3						= "Defensive warning: $spell:143491 3/4",
	dr4						= "Defensive warning: $spell:143491 4/4",
	BaneGridCount			= "Grid: Number $spell:143434 (Position need to be set on Grid \"VEM number - Shadow Word: Bane\". If none of the following options is selected, the default order from Grid will be used. The spreaded $spell:143434 will not be numbered)",
	BaneRaidFrameCount		= "Grid: $spell:143434 number order use BLZ raid frame order",
	optBaneGridCount		= "Grid: Flash the \"Shadow Word: Bane\" number which is assigned to you to dispel ",
	noflash					= "No flash",
	flash1					= "1",
	flash2					= "2",
	flash3					= "3",
	flash4					= "4",
	flash5					= "5"
})

L:SetMiscLocalization({
	VEM_GridBaneCount		= "VEM number - Shadow Word: Bane"
})

---------------------------
-- Norushen --
---------------------------
L= VEM:GetModLocalization(866)

L:SetWarningLocalization({
	specWarnTestIn			= "Player in: %s",
	specWarnTestOut			= "Player out: %s"
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	InfoFrame			= "Show info frame for $journal:8252"
	InfoFrame2				= "Info frame: $spell:144452(取代$journal:8252提示)",
	specWarnTestIn			= "Special Warning: The player you monitor is in",
	specWarnTestOut			= "Special Warning: The player you monitor is out",
	prevplayer				= "Type in a player's name and you will be warned when he/she is in or out"
})

------------------
-- Sha of Pride --
------------------
L= VEM:GetModLocalization(867)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	HudMAPBP				= "HUD MAP: $spell:144911",
	HudMAPCP				= "HUD MAP: $spell:144574",
	HudMAPAoP				= "HUD MAP: $spell:146817",
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(5, 146817),
	SetIconOnMark		= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(144351),
	InfoFrame			= "Show info frame for $journal:8255"
})

L:SetMiscLocalization({
})

--------------
-- Galakras --
--------------
L= VEM:GetModLocalization(868)

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	SoundZQ					= "Voice Warning: $spell:147328",
	SoundTT					= "Voice Warning: $spell:146753",
	FixateIcon				= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(147068),
	InfoFrame				= "Info frame: Next $journal:8427"
})

L:SetMiscLocalization({
	tower		= "The door barring the",--The door barring the South/North Tower has been breached!
	demolisher	= "[Kor'kron Demolisher]|h|r to assault the tower!"--In case they remove the bad epiccenter spellid will use this
})

--------------------
--Iron Juggernaut --
--------------------
L= VEM:GetModLocalization(864)

L:SetWarningLocalization({
})

L:SetTimerLocalization({
	timerAssaultModeCD		= VEM_CORE_AUTO_TIMER_OPTIONS.next:format("ej8177"),
	timerSiegeModeCD		= VEM_CORE_AUTO_TIMER_OPTIONS.next:format("ej8178"),
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(6, 144154)
})

L:SetMiscLocalization({
})

--------------------------
-- Kor'kron Dark Shaman --
--------------------------
L= VEM:GetModLocalization(856)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	SetIconOnToxicMists		= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(144089),
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(4, 143990)
})

L:SetMiscLocalization({
})

---------------------
-- General Nazgrim --
---------------------
L= VEM:GetModLocalization(850)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	SoundTT					= "Voice Warning: Kill $spell:143474",
	InfoFrame				= "Info Frame: Rage Monitor",	
})

L:SetMiscLocalization({
	newForces1				= "Warriors, on the double!",
	newForces2				= "Defend the gate!",
	newForces3				= "Rally the forces!",
	newForces4				= "Kor'kron, at my side!",
	newForces5				= "Next squad, to the front!"
	allForces				= "All Kor'kron... under my command... kill them... NOW!"
})


-----------------
-- Malkorok -----
-----------------
L= VEM:GetModLocalization(846)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	HudMAP					= "HUD MAP: $spell:142913",
})

L:SetMiscLocalization({
	bloodRageEnds	= "subsides!"
})

------------------------
-- Spoils of Pandaria --
------------------------
L= VEM:GetModLocalization(870)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	Filterarea				= "Other: Use stricter way to tell the area"
})

L:SetMiscLocalization({
	Module1 = "Module 1's all prepared for system reset.",
	Victory	= "Module 2's all prepared for system reset"
})

---------------------------
-- Thok the Bloodthirsty --
---------------------------
L= VEM:GetModLocalization(851)

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	SoundPX					= "Countdown: $spell:143343",
	RangeFrame	= "Show dynamic range frame (10)\n(This is a smart range frame that shows when you reach Frenzy threshold)"
	FixateIcon				= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(143445)
})

L:SetMiscLocalization({
})

----------------------------
-- Siegecrafter Blackfuse --
----------------------------
L= VEM:GetModLocalization(865)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
})

L:SetMiscLocalization({
	newWeapons	= "Unfinished weapons begin to roll out on the assembly line.",
	newShredder	= "An Automated Shredder draws near!"
})

----------------------------
-- Paragons of the Klaxxi --
----------------------------
L= VEM:GetModLocalization(853)

L:SetWarningLocalization({
	specWarnActivatedVulnerable		= "You are vulnerable to %s - Avoid!",
	specWarnCriteriaLinked			= "You are linked to %s!"
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	InfoFrame				= "Info Frame: Next Klaxxi Paragon",
	HudMAPRed				= "HUD MAP: $spell:142726",
	HudMAPBlue				= "HUD MAP: $spell:142725",
	HudMAPYellow			= "HUD MAP: $spell:142727",
	warnToxicCatalyst				= VEM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format("ej8036"),
	specWarnToxicInjection			= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.you:format(142528),
	specWarnToxicCatalyst			= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.you:format("ej8036"),
	specWarnActivatedVulnerable		= "Show special warning when you are vulnerable to activating paragons",
	specWarnCriteriaLinked			= "Show special warning when you are linked to $spell:144095",
	SetIconOnAim					= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(142948),
	yellToxicCatalyst				= VEM_CORE_AUTO_YELL_OPTION_TEXT:format("ej8036"),
	RangeFrame						= VEM_CORE_AUTO_RANGE_OPTION_TEXT_SHORT:format("6/5")
})

L:SetMiscLocalization({
	calculatedTarget	= "calculating eye!",
	--thanks to blizz, the only accurate way for this to work, is to translate 15 emotes in all languages
	yellow				= "Yellow",
	red					= "Red",
	blue				= "Blue",
	purple				= "Purple",
	green				= "Green",
	bomb				= "Bomb",
	sword				= "Sword",
	drums				= "Drums",
	mantid				= "Mantid",--Assumed
	staff 				= "Staff",--Assumed
	one					= "One",
	two					= "Two",
	three				= "Three",
	four				= "Four",--Assumed
	five				= "Five",--Assumed
	hisekFlavor			= "Look who's quiet now",--http://ptr.wowhead.com/quest=31510
	KilrukFlavor		= "Just another day, culling the swarm",--http://ptr.wowhead.com/quest=31109
	XarilFlavor			= "I see only dark skies in your future",--http://ptr.wowhead.com/quest=31216
	KaztikFlavor		= "Reduced to mere kunchong treats",--http://ptr.wowhead.com/quest=31024
	KaztikFlavor2		= "1 Mantid down, only 199 to go",--http://ptr.wowhead.com/quest=31808
	KorvenFlavor		= "The end of an ancient empire",--http://ptr.wowhead.com/quest=31232
	KorvenFlavor2		= "Take your Gurthani Tablets and choke on them",--http://ptr.wowhead.com/quest=31232
	IyyokukFlavor		= "See opportunities. Exploit them!",--Does not have quests, http://ptr.wowhead.com/npc=65305
	KarozFlavor			= "You won't be leaping anymore!",---Does not have questst, http://ptr.wowhead.com/npc=65303
	SkeerFlavor			= "A bloody delight!",--http://ptr.wowhead.com/quest=31178
	RikkalFlavor		= "Specimen request fulfilled"--http://ptr.wowhead.com/quest=31508
})

------------------------
-- Garrosh Hellscream --
------------------------
L= VEM:GetModLocalization(869)

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
})

L:SetMiscLocalization({
})

-------------
--  Trash  --
-------------
L = VEM:GetModLocalization("FoOTrash")

L:SetGeneralLocalization({
	name =	"Siege of Orgrimmar Trash"
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
})
