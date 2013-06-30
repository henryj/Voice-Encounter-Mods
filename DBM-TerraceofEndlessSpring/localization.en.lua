local L

------------
-- Protectors of the Endless --
------------
L= DBM:GetModLocalization(683)

L:SetWarningLocalization({
	warnGroupOrder		= "Rotate In: Group %s",
	specWarnYourGroup	= "Your Group - Rotate In!",
	specWarnYourEnd		= "Your Group - Back!",
	specWarnDDL 	= "Next You Interrupt!",
	SpecWarnJSA		= "%s Health >>damage reduction<<"
})

L:SetOptionLocalization({
	warnGroupOrder		= "Announce group rotation for $spell:118191\n(Currently only supports 25 man 5,2,2,2, etc... strat)",
	specWarnYourGroup	= "Show special warning when it's your group's turn for $spell:118191\n(25 man only)",
	specWarnYourEnd		= "特殊警告：本輪處理小怪已經結束",
	RangeFrame			= "Show range frame (8) for $spell:111850\n(Shows everyone if you have debuff, only players with debuff if not)",
	HudMAP 			= "HudMAP: $spell:111850",
	SetIconOnPrison		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(117436),
	SoundDW 			= "voice warning: $spell:117283 disperse",
	SoundSDQ			= "語音警告：$spell:117436的驅散",
	SoundWater			= "語音警告：$spell:117309時提示拉開BOSS(坦克)",
	SoundWOP			= "voice warning: important skills",
	optDD4				= "使用四人打斷鏈(不選則前3人循環)",
	opthelpDD			= "語音警告：當$spell:118077出現時提示你幫忙打斷第一次$spell:118312",
	specWarnDDL 		= "特殊警告：下一次到你打斷",
	optDD				= "水王打斷鏈",
	nodd				= "我不打斷",
	DD1					= "打斷1",
	DD2					= "打斷2",
	DD3					= "打斷3",
	DD4					= "打斷4",
	optMob				= "選擇您的處理組編號",
	Mob1				= "小怪處理組1",
	Mob2				= "小怪處理組2",
	Mob3				= "小怪處理組3",
	Mob4				= "小怪處理組4",
	Mob5				= "小怪處理組5",
	noMob				= "不提示",
	optMobSet			= "小怪處理策略(支持4或5組循環,若跳組請用數字0填充)",
	warndr9				= "減傷提示：三階段水王90%血",
	warndr8				= "減傷提示：三階段水王80%血",
	warndr7				= "減傷提示：三階段水王70%血",
	warndr6				= "減傷提示：三階段水王60%血",
	warndr5				= "減傷提示：三階段水王50%血",
	warndr4				= "減傷提示：三階段水王40%血",
	warndr3				= "減傷提示：三階段水王30%血",
	warndr2				= "減傷提示：三階段水王20%血",
	warndr1				= "減傷提示：三階段水王10%血",
	SpecWarnJSA			= "特別警告：注意開減傷",
	helpdispset			= "輸入一個重點關注的團員,當其被點名閃電牢籠時會提示你幫忙驅散"
})


------------
-- Tsulong --
------------
L= DBM:GetModLocalization(742)

L:SetWarningLocalization({
	SpecWarnJSA				= "%d Mobs >>damage reduction<<"
})

L:SetOptionLocalization ({
	SoundWOP 	= "voice warning: important skills",
	SoundGH						= "語音警告：$journal:6551刷新及計數",
	SoundHX						= "語音警告：為$spell:122752倒數",
	SoundMY						= "語音警告：為$spell:122770倒數(若開啟此項,建議關閉暗影之息倒數)",
	WarnJK 	= "voice warning: $spell:123011 advance warning",
	SpecWarnJSA					= "特別警告：注意開減傷",
	unseenjs1					= "減傷提示：$journal:6320 1",
	unseenjs2					= "減傷提示：$journal:6320 2",
	unseenjs3					= "減傷提示：$journal:6320 3",
	unseenjs4					= "減傷提示：$journal:6320 4",
	unseenjs5					= "減傷提示：$journal:6320 5",
	unseenjs6					= "減傷提示：$journal:6320 6",
	lod1						= "吃球額外提示：$journal:6551 1",
	lod2						= "吃球額外提示：$journal:6551 2",
	lod3						= "吃球額外提示：$journal:6551 3",
	lod4						= "吃球額外提示：$journal:6551 4",
	lod5						= "吃球額外提示：$journal:6551 5",
	lod6						= "吃球額外提示：$journal:6551 6",
	lod7						= "吃球額外提示：$journal:6551 7",
	lod8						= "吃球額外提示：$journal:6551 8",
	lod9						= "吃球額外提示：$journal:6551 9",
	lod10						= "吃球額外提示：$journal:6551 10",
	lod11						= "吃球額外提示：$journal:6551 11",
	HudMAP 		= "HudMAP:$spell:122770 (only 10N/10H Mode) ",
	optDS 		= "shadow of terror, how many stacks start warning",
	six 		= "6",
	nine 		= "9",
	twelve 		= "12",
	fifteen 	= "15",
	none 		= "Don't warning",
	optTS						= "神牧天使警告",
	TS1							= "第一次火息",
	TS2							= "第二次火息",
	TS3							= "第三次火息",
	noms						= "不提示"
})

L:SetMiscLocalization{
	Victory	= "I thank you, strangers. I have been freed."
}


-------------------------------
-- Lei Shi --
-------------------------------
L= DBM:GetModLocalization(729)

L:SetWarningLocalization({
	warnHideOver			= "%s has ended",
	SpecWarnJSA				= ">>Damage reduction skill!<<",
	warnHideProgress		= "Hits: %s. Damage: %s. Time: %s"
})

L:SetTimerLocalization({
	timerSpecialCD			= "Special CD (%d)"
})

L:SetOptionLocalization({
	warnHideOver			= "Show warning when $spell:123244 has ended",
	warnHideProgress		= "Show statistics for $spell:123244 when it ends",
	timerSpecialCD			= "Show timer for special ability CD",
	HudMAP					= "高級定位監視(HUD)：超過5層的$spell:123705攜帶者",
	InfoFrame				= "資訊框：首領的$spell:123712",
	SpecWarnJSA				= "特殊警告：注意減傷",
	unseenjs1				= "減傷提示:滾開1",
	unseenjs2				= "減傷提示:滾開2",
	unseenjs3				= "減傷提示:滾開3",
	unseenjs4				= "減傷提示:滾開4",
	unseenjs5				= "減傷提示:滾開5",
	SoundWOP 				= "voice warning: important skills",
	SetIconOnGuardfix		= "Set icons on $journal:6224",
	RangeFrame				= "Show range frame (3) for $spell:123121\n(Shows everyone during Hide, otherwise, only shows tanks)",
	GWHealthFrame			= "Show remaining health frame for $spell:123461 fades\n(Requires boss health frame enabled)" -- maybe bad wording, needs review
})

L:SetMiscLocalization{
	Victory	= "I... ah... oh! Did I...? Was I...? It was... so... cloudy."--wtb alternate and less crappy victory event.
}


----------------------
-- Sha of Fear --
----------------------
L= DBM:GetModLocalization(709)

L:SetWarningLocalization({
	specWarnyinmo		= "Submerge >%d<",
	specWarnzyg			= "Light (From >%s<)",
	specWarnweisuo		= "Huddle in Terror >%d<",
	specWarningpreHud	= "Huddle in Terror SOON!",
	specWarnfuxian		= "Sons %d - %d",
	MoveWarningLeft		= "← ← Left",
	MoveWarningRight	= "Right → →",
	MoveWarningBack		= "→ → Back ← ←"
})

L:SetTimerLocalization({
	timerSpecialCD			= "Next Special",
	timerSpoHudCD			= "Next Spo / Hud",
	timerSpoStrCD			= "Next Spo / Str",
	timerHudStrCD			= "Next Hud / Str"
})

L:SetOptionLocalization ({
	SoundDD = "voice warning: $spell:131996",
	SoundWOP = "voice warning: important skills",
	InfoFrameTankMode	= "資訊框顯示首領攻擊計數器取代$spell:120629",
	RangeFrame			= "Show range frame (2) for $spell:119519",
	pscount				= "語音警告：為恐怖噴散報數",
	HudMAP				= "高級定位監視(HUD)：$spell:120519",
	InfoFrame			= "資訊框：$spell:120629和$journal:6107數量",
	timerSpecialCD		= "計時器：下一次P2特殊技能",
	specWarnyinmo		= "特殊警告：$spell:120455",
	specWarnfuxian		= "特殊警告：$spell:120458",
	specWarnweisuo		= "特殊警告：$spell:120629",
	specWarnzyg			= "特殊警告：$spell:120268",
	specWarningpreHud	= "特殊警告：即將$spell:120629",
	MoveWarningLeft		= "特殊警告：向左一格",
	MoveWarningRight	= "特殊警告：向右一格",
	MoveWarningBack		= "特殊警告：回原位",
	ShaAssist			= "特殊功能：啟用恐怖噴散方向指示圖(輸入/sha可進行細節調整)",
	ShaStarMode			= "恐怖噴散指示使用星辰跑位模式(硬吃一擊以減少跑位)",
	timerSpoHudCD		= "計時器：下一次$spell:120629或$spell:120519",
	timerSpoStrCD		= "計時器：下一次$spell:120519或$spell:120672",
	timerHudStrCD		= "計時器：下一次$spell:120629或$spell:120672",
	SoundWSCOUNT		= "語音警告：為$spell:120629播放1~4循環的計數語音",
	unseenjs1			= "減傷提示：$spell:120629 1/4",
	unseenjs2			= "減傷提示：$spell:120629 2/4",
	unseenjs3			= "減傷提示：$spell:120629 3/4",
	unseenjs4			= "減傷提示：$spell:120629 4/4",
	SetIconOnWS			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(120629)
})

L:SetMiscLocalization({
	sanlian				= "Thrash",
	liulian				= "DreadThrash"
})