if GetLocale() ~= "zhCN" then return end
local L

---------------
-- Immerseus --
---------------
L= VEM:GetModLocalization(852)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	dr						= "减伤提示[警报会在$spell:143020时提示, 但您的减伤应在撞击前开启]",
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
	SoundWOP				= "语音警告：重要技能",
	SoundBD					= "语音警告：驱散$spell:143434",
	dr1						= "减伤提示：$spell:143491 1/4",
	dr2						= "减伤提示：$spell:143491 2/4",
	dr3						= "减伤提示：$spell:143491 3/4",
	dr4						= "减伤提示：$spell:143491 4/4",
	BaneGridCount			= "Grid：为首领释放的$spell:143434显示编号(提示位置需要在Grid上设置\"VEM编号-暗言术:蛊\"，若不选中下边一项则编号顺序使用Grid默认排序。扩散出现的$spell:143434不会显示编号)",
	BaneRaidFrameCount		= "Grid：$spell:143434编号顺序使用暴雪团队框架的排序",
	optBaneGridCount		= "Grid：闪动显示分配给你驱散的\"暗言术:蛊\"编号",
	noflash					= "不闪动",
	flash1					= "1号",
	flash2					= "2号",
	flash3					= "3号",
	flash4					= "4号",
	flash5					= "5号"
})

L:SetMiscLocalization({
	VEM_GridBaneCount		= "VEM编号-暗言术:蛊"
})

---------------------------
-- Norushen --
---------------------------
L= VEM:GetModLocalization(866)

L:SetWarningLocalization({
	specWarnTestIn			= "队友入场：%s",
	specWarnTestOut			= "队友出场：%s"
})

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	InfoFrame				= "信息框：$journal:8252",
	InfoFrame2				= "信息框：$spell:144452(取代$journal:8252提示)",
	specWarnTestIn			= "特别警告：你监视的队友入场",
	specWarnTestOut			= "特别警告：你监视的队友出场",
	prevplayer				= "输入一个队友名，在他入场和离场时都会通知你"
})

------------------
-- Sha of Pride --
------------------
L= VEM:GetModLocalization(867)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	HudMAPBP				= "高级定位监视(HUD)：$spell:144911",
	HudMAPCP				= "高级定位监视(HUD)：$spell:144574",
	HudMAPAoP				= "高級定位監視(HUD)：$spell:146817",
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(5, 146817),
	SetIconOnMark			= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(144351),
	InfoFrame				= "信息框： $journal:8255"
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
	SoundWOP				= "语音警告：重要技能",
	SoundZQ					= "语音警告：$spell:147328",
	SoundTT					= "语音警告：$spell:146753",
	FixateIcon				= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(147068),
	InfoFrame				= "信息框：下一波$journal:8427"
})

L:SetMiscLocalization({
	tower		= "塔楼的大门被攻破了！",--The door barring the South/North Tower has been breached!
	demolisher	= "库卡隆投石车|h|r攻击塔楼！"--In case they remove the bad epiccenter spellid will use this
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
	SoundWOP				= "语音警告：重要技能",
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
	SoundWOP				= "语音警告：重要技能",
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
	SoundWOP				= "语音警告：重要技能",
	SoundTT					= "语音警告：$spell:143474",
	InfoFrame				= "信息框：怒气监视器",	
})

L:SetMiscLocalization({
	newForces1				= "战士们，快过来！",
	newForces2				= "守住大门！",
	newForces3				= "Rally the forces!",
	newForces4				= "库卡隆，支援我！",
	newForces5				= "下一队，冲上去！",
	allForces				= "All Kor'kron... under my command... kill them... NOW!"
})

-----------------
-- Malkorok -----
-----------------
L= VEM:GetModLocalization(846)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	HudMAP					= "高级定位监视(HUD)：$spell:142913",
})

------------------------
-- Spoils of Pandaria --
------------------------
L= VEM:GetModLocalization(870)

L:SetWarningLocalization({
})

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	Filterarea				= "其他：使用更严格的方式判定所在区域"
})

L:SetMiscLocalization({
	Module1					= "1号模组准备完毕，可以系统重置。",
	Victory					= "2号模组准备完毕，可以系统重置。"
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
	SoundWOP				= "语音警告：重要技能",
	SoundPX					= "倒计时：$spell:143343",
	RangeFrame				= "距离监视(10码)：动态",
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
	SoundWOP				= "语音警告：重要技能",
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
	specWarnActivatedVulnerable		= "易伤：%s - 避免接怪!",
	specWarnCriteriaLinked			= "连线 - %s!"
})

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	InfoFrame				= "信息框：下一个激活的英杰",
	HudMAPRed				= "高级定位监视(HUD)：$spell:142726",
	HudMAPBlue				= "高级定位监视(HUD)：$spell:142725",
	HudMAPYellow			= "高级定位监视(HUD)：$spell:142727",
	warnToxicCatalyst			= VEM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format("ej8036"),
	specWarnToxicInjection			= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.you:format(142528),
	specWarnToxicCatalyst			= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.you:format("ej8036"),
	specWarnActivatedVulnerable		= "特别警告：新出现的英杰对你有易伤",
	specWarnCriteriaLinked			= "特别警告：你被$spell:144095连线的目标",
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
	SoundWOP				= "语音警告：重要技能",
})

L:SetMiscLocalization({
})

-------------
--  Trash  --
-------------
L = VEM:GetModLocalization("FoOTrash")

L:SetGeneralLocalization({
	name =	"奥格瑞玛杂兵"
})

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
})
