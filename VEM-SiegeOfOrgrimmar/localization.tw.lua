if GetLocale() ~= "zhTW" then return end
local L

---------------
-- Immerseus --
---------------
L= VEM:GetModLocalization(852)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	dr						= "減傷提示[警報會在$spell:143020時提示, 但您的減傷應在撞擊前開啟]",
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
	SoundWOP				= "語音警告：重要技能",
	SoundBD					= "語音警告：驅散$spell:143434",
	dr1						= "減傷提示：$spell:143491 1/4",
	dr2						= "減傷提示：$spell:143491 2/4",
	dr3						= "減傷提示：$spell:143491 3/4",
	dr4						= "減傷提示：$spell:143491 4/4",
	BaneGridCount			= "Grid：爲首領釋放的$spell:143434顯示編號(提示位置需要在Grid上設置\"VEM編號-暗言術:蠱\"，若不選中下邊一項則編號順序使用Grid默認排序。擴散出現的$spell:143434不會顯示編號)",
	BaneRaidFrameCount		= "Grid：$spell:143434編號順序使用暴雪團隊框架的排序",
	optBaneGridCount		= "Grid：閃動顯示分配給你驅散的\"暗言術:蠱\"編號",
	noflash					= "不閃動",
	flash1					= "1號",
	flash2					= "2號",
	flash3					= "3號",
	flash4					= "4號",
	flash5					= "5號"
})

L:SetMiscLocalization({
	VEM_GridBaneCount		= "VEM編號-暗言術:蠱"
})

---------------------------
-- Norushen --
---------------------------
L= VEM:GetModLocalization(866)

L:SetWarningLocalization({
	specWarnTestIn			= "隊友入場：%s",
	specWarnTestOut			= "隊友出場：%s"
})

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	InfoFrame				= "資訊框：$journal:8252",
	InfoFrame2				= "資訊框：$spell:144452(取代$journal:8252提示)",
	specWarnTestIn			= "特別警告：你監視的隊友入場",
	specWarnTestOut			= "特別警告：你監視的隊友出場",
	prevplayer				= "輸入一個隊友名，在他入場和離場時都會通知你"
})

------------------
-- Sha of Pride --
------------------
L= VEM:GetModLocalization(867)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	HudMAPBP				= "高級定位監視(HUD)：$spell:144911",
	HudMAPCP				= "高級定位監視(HUD)：$spell:144574",
	HudMAPAoP				= "高級定位監視(HUD)：$spell:146817",
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(5, 146817),
	SetIconOnMark			= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(144351),
	InfoFrame				= "資訊框：$journal:8255"
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
	SoundWOP				= "語音警告：重要技能",
	SoundZQ					= "語音警告：$spell:147328",
	SoundTT					= "語音警告：$spell:146753",
	FixateIcon				= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(147068),
	InfoFrame				= "資訊框：下一波$journal:8427"
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
	SoundWOP				= "語音警告：重要技能",
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
	SoundWOP				= "語音警告：重要技能",
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
	SoundWOP				= "語音警告：重要技能",
	SoundTT					= "語音警告：$spell:143474",
	InfoFrame				= "資訊框：怒氣監視器",	
})

L:SetMiscLocalization({
	newForces1				= "Warriors, on the double!",
	newForces2				= "Defend the gate!",
	newForces3				= "Rally the forces!",
	newForces4				= "Kor'kron, at my side!",
	newForces5				= "Next squad, to the front!",
	allForces				= "All Kor'kron... under my command... kill them... NOW!"
})


-----------------
-- Malkorok -----
-----------------
L= VEM:GetModLocalization(846)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	HudMAP					= "高級定位監視(HUD)：$spell:142913",
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
	SoundWOP				= "語音警告：重要技能",
	Filterarea				= "其他：使用更嚴格的方式判定所在區域"
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
	SoundWOP				= "語音警告：重要技能",
	SoundPX					= "倒计时：$spell:143343",
	RangeFrame				= "距離監視(10碼)：動態",
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
	SoundWOP				= "語音警告：重要技能",
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
	specWarnActivatedVulnerable		= "易傷：%s - 避免接怪!",
	specWarnCriteriaLinked			= "連線 - %s!"
})

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	InfoFrame				= "資訊框：下一個激活的英傑",
	HudMAPRed				= "高級定位監視(HUD)：$spell:142726",
	HudMAPBlue				= "高級定位監視(HUD)：$spell:142725",
	HudMAPYellow			= "高級定位監視(HUD)：$spell:142727",
	warnToxicCatalyst			= VEM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format("ej8036"),
	specWarnToxicInjection			= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.you:format(142528),
	specWarnToxicCatalyst			= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.you:format("ej8036"),
	specWarnActivatedVulnerable		= "特別警告：新激活的英傑對你有易傷",
	specWarnCriteriaLinked			= "特别警告：你被$spell:144095連線的目標",
	SetIconOnAim				= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(142948),
	yellToxicCatalyst			= VEM_CORE_AUTO_YELL_OPTION_TEXT:format("ej8036"),
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT_SHORT:format("6/5")
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
	SoundWOP				= "語音警告：重要技能",
})

L:SetMiscLocalization({
})

-------------
--  Trash  --
-------------
L = VEM:GetModLocalization("FoOTrash")

L:SetGeneralLocalization({
	name =	"奧格瑪雜兵"
})

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
})
