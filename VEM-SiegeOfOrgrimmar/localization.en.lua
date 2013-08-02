local L

---------------
-- Immerseus --
---------------
L= VEM:GetModLocalization(852)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
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
})

L:SetMiscLocalization({
})

---------------------------
-- Norushen --
---------------------------
L= VEM:GetModLocalization(866)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "Voice Warning: Critical Ability",
	InfoFrame			= "Show info frame for $journal:8252"
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
})

L:SetMiscLocalization({
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
	SoundTT					= "Voice Warning: ´òµô$spell:143474",
	InfoFrame				= "Info Frame: Rage Monitor",	
})

L:SetMiscLocalization({
	newForces1				= "Warriors, on the double!",
	newForces2				= "Defend the gate!",
	newForces3				= "Rally the forces!",
	newForces4				= "Kor'kron, at my side!",
	newForces5				= "Next squad, to the front!"
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
	RangeFrame	= "Show dynamic range frame (10)\n(This is a smart range frame that shows when you reach Frenzy threshold)"
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
	sword				= "Swords",
	drums				= "Drums",
	mantid				= "Mantid",--Assumed
	staff 				= "Staff",--Assumed
	one					= "One",
	two					= "Pair",
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
