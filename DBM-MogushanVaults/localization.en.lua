local L

------------
-- The Stone Guard --
------------
L= DBM:GetModLocalization(679)

L:SetWarningLocalization({
	SpecWarnOverloadSoon		= "%s soon!", -- prepare survival ablility or move boss. need more specific message.
	specWarnMySD 				= "you pull the BOSS point of the group of petrochemical",
	specWarnBreakJasperChains	= "Break Jasper Chains!"
})

L:SetOptionLocalization({
	SoundWOP				= "Voice warning: important skills",
	SpecWarnOverloadSoon		= "Show special warning before overload",
	specWarnMySD		= "Show special warning when you pull the BOSS point of the group of petrochemical",
	specWarnBreakJasperChains	= "Show special warning when it is safe to break $spell:130395",
	ArrowOnJasperChains			= "Show DBM Arrow when you are affected by $spell:130395 ",
	InfoFrame					= "Show info frame for active petrification",
	AInfoFrame					= "Show simple info frame for active petrification"
})

L:SetMiscLocalization({
	Overload	= "%s is about to Overload!",
	SDNOT		= "[NO Petrification]",
	SDBLUE		= "[|cFFFFA500Petrification|r:|cFF0080FFCobalt|r]",
	SDGREEN		= "[|cFFFFA500Petrification|r:|cFF088A08Jade|r]",
	SDRED		= "[|cFFFFA500Petrification|r:|cFFFF0404Jasper|r]",
	SDPURPLE	= "[|cFFFFA500Petrification|r:|cFF9932CDAmethyst|r]",
	NEXTR		= "|cFFFFA500Next Overload|r:|cFFFF0404Jasper|r",
	NEXTG		= "|cFFFFA500Next Overload|r:|cFF088A08Jade|r",
	NEXTB		= "|cFFFFA500Next Overload|r:|cFF0080FFCobalt|r",
	NEXTP		= "|cFFFFA500Next Overload|r:|cFF9932CDAmethyst|r"
})


------------
-- Feng the Accursed --
------------
L= DBM:GetModLocalization(689)

L:SetWarningLocalization({
	WarnPhase					= "Phase %d",
	specWarnDrawFlame			= "Draw Flame > %d <",
	specWarnArcaneVelocity 		= "Arcane Velocity > %d <",
	specWarnEpicenter 			= "Epicenter > %d <",
	specWarnSiphoningShield 	= "Siphoning Shield > %d <"
})

L:SetOptionLocalization({
	SoundWOP			= "Voice warning: important skills",
	InfoFrame			= "InfoFrame: Tank Debuff($spell:131788 $spell:116942 $spell:131790)",
	HudMAP				= "HUDMAP: $spell:116784",
	HudMAP2				= "HUDMAP: $spell:116417",
	HudMAP3				= "HUDMAP：$spell:115817",
	WarnPhase	= "Announce Phase transition",
	specWarnDrawFlame 	= "Voice warning: $spell:116711",
	specWarnArcaneVelocity 	= "Voice warning: $spell:116364",
	specWarnEpicenter 	= "Voice warning: $spell:116018",
	specWarnSiphoningShield = "Voice warning: $spell:117203",
	RangeFrame	= "Show range frame (6) during arcane phase",
	SetIconOnWS	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(116784),
	SetIconOnAR	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(116417)
})

L:SetMiscLocalization({
	Fire		= "Oh exalted one! Through me you shall melt flesh from bone!",
	Arcane		= "Oh sage of the ages! Instill to me your arcane wisdom!",
	Nature		= "Oh great spirit! Grant me the power of the earth!",--I did not log this one, text is probably not right
	Shadow		= "Great soul of champions past! Bear to me your shield!"
})


-------------------------------
-- Gara'jal the Spiritbinder --
-------------------------------
L= DBM:GetModLocalization(682)

L:SetWarningLocalization({
	specWarninTT 	= ">> Go To Totem <<",
	SpecWarnjs		= "<%s> → %s"
})

L:SetOptionLocalization({
	SoundWOP			= "Voice warning: important skills",
	SoundTT				= "Voice warning: $spell:116174",
	countTT				= "\"TOTEM\" Count",
	countnone			= "None",
	count3				= "1~3",
	count4				= "1~4",
	specWarninTT		= "warning:display text warning When you need to enter totem",
	GoTotemAdmin		= "主控：分配跨界(仅英雄模式有效,仅能由队长开啟)",
	GoTotemClient		= "被控：接收跨界警告(仅英雄模式有效,需存在主控)",
	optAdminTT			= "主控选项：分配几名DPS入场(此项不包括治疗,总是分配一名治疗入场)",
	send1				= "一人",
	send2				= "二人(10人模式推荐)",
	send3				= "三人(10人模式推荐)",
	send4				= "四人",
	IgnoreTT1			= "主控选项：忽略分配图腾1",
	IgnoreTT2			= "主控选项：忽略分配图腾2",
	IgnoreTT3			= "主控选项：忽略分配图腾3",
	IgnoreTT4			= "主控选项：忽略分配图腾4",
	IgnoreTT5			= "主控选项：忽略分配图腾5",
	IgnoreTT6			= "主控选项：忽略分配图腾6",
	IgnoreTT7			= "主控选项：忽略分配图腾7",
	IgnoreTT8			= "主控选项：忽略分配图腾8",
	IgnoreTT9			= "主控选项：忽略分配图腾9",
	IgnoreTT10			= "主控选项：忽略分配图腾10",
	IgnoreTT11			= "主控选项：忽略分配图腾11",
	IgnoreTT12			= "主控选项：忽略分配图腾12",
	IgnoreTT13			= "主控选项：忽略分配图腾13",
	IgnoreTT14			= "主控选项：忽略分配图腾14",
	IgnoreTT15			= "主控选项：忽略分配图腾15",
	IgnoreTT16			= "主控选项：忽略分配图腾16",
	IgnoreTT17			= "主控选项：忽略分配图腾17",
	SpecWarnjs			= "特殊警告：减伤链",
	SetIconOnVoodoo		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(122151),
	InfoFrame			= "资讯框：$spell:116161的玩家 (标注\"治疗\"需团员选择角色类型)",
	optjs				= "<黑手之城>@世界之树 公会专用减伤提示模块",
	non					= "老子谁的减伤都不看",
	druid				= "乳德的减伤",
	priest				= "戒律的减伤",
	paltank				= "坦骑的减伤",
	palheal				= "乳骑的减伤",
	warrior1			= "战神A的减伤",
	warrior2			= "战神B的减伤",
	monktank			= "坦僧的减伤",
	paldps1				= "惩戒A的减伤",
	paldps2				= "惩戒B的减伤",
	optindex			= "被控选项：DPS入场优先级(不影响治疗,总是分配魔法最低治疗入场)",
	noidex				= "我不想进",
	index1				= "序列1(最高优先级)",
	index2				= "序列2",
	index3				= "序列3",
	index4				= "序列4",
	index5				= "序列5",
	index6				= "序列6",
	index7				= "序列7",
	index8				= "序列8",
	index9				= "序列9"
})

L:SetMiscLocalization({
	Pull		= "It be dyin' time, now!"
})

----------------------
-- The Spirit Kings --
----------------------
L = DBM:GetModLocalization(687)

L:SetWarningLocalization({
	specWarnDDL 	= ">> Next:You Interrupt<<",
	specWarnQBH		= "Next: Annihilate!",
	specWarnQBHT	= "Next: Annihilate!",
	specWarnDSoon	= "3s: >> Shield! <<",
	DarknessSoon		= "Shield of Darkness in %ds"
})

L:SetOptionLocalization({
	RangeFrame			= "Show range frame (8)",
	SoundWOP			= "Voice warning: important skills",
	SoundDSA			= "Voice warning: Dispel $spell:117697 and $spell:117961",
	InfoFrame			= "InfoFrame: $spell:118303",
	HudMAP				= "HudMAP: $spell:118047",
	HudMAP2				= "HudMAP：$spell:118303",
	SoundCT				= "Voice warning: Kick $spell:117833",
	DarknessSoon		= "Show pre-warning countdown for $spell:117697 (5s before)",
	optDD				= "打断链",
	nodd				= "我不打断",
	DD1					= "打断1",
	DD2					= "打断2",
	DD3					= "打断3",
	DD4					= "打断4",
	optKZ				= "盗王控制链",
	noKZ				= "我不控制",
	KZ1					= "控制1",
	KZ2					= "控制2",
	specWarnDDL 		= "特殊警告：下一次到你打断",
	specWarnQBH			= "特殊警告：下一刀歼灭",
	specWarnQBHT		= "特殊警告：下一刀歼灭(坦克)",
	specWarnDSoon		= "特殊警告：护盾即将到来"
})


------------
-- Elegon --
------------
L = DBM:GetModLocalization(726)

L:SetWarningLocalization({
	specWarnDespawnFloor		= "Watch your step!",
	specWarnCharge				= "Charge [%d]",
	specwarnYB					= "Annihilation >>YOU MUST TARGET<<",
	specWarnProtector			= "Protector [%d]"
})

L:SetTimerLocalization({
	timerDespawnFloor			= "Watch your step!"
})

L:SetOptionLocalization({
	SoundWOP					= "Voice warning: important skills",
	SoundCC						= "Voice warning: Dispel $spell:117949",
	SoundDD						= "Voice warning: when you Disappear $spell:117878",
	optDBPull					= "Voice warning: warning $spell:117960 for tank who is pulling $journal:6178",
	specWarnDespawnFloor		= "Show special warning before floor vanishes",
	specWarnCharge				= "Show special warning: Charges",
	specWarnProtector			= "Show special warning: $journal:6178",
	specwarnYB					= "Show special warning: Take $spell: 129711",
	timerDespawnFloor			= "show timer for when floor vanishes",
	SetIconOnDestabilized	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(132226),
	InfoFrame					= "InfoFrame: $spell:117878 Stacks",
	optOC						= "How many \"OverLoad\" Stacks，Beginning warning",
	six							= "6 Stacks",
	nine						= "9 Stacks",
	twelve						= "12 Stacks",
	fifteen						= "15 Stacks",
	none						= "Don't warning",
	optPos 						= "DBM arrow: highest Core (Anti-clockwise Starting at the entrance)",
	nonepos 					= "Don't arrow",
	posA 						= "number 1",
	posB 						= "number 2",
	posC						= "number 3",
	posD 						= "number 4",
	posE 						= "number 5",
	posF 						= "number 6",
	optYB						= "First Annihilation Target",
	noYB						= "NO",
	YB1							= "first",
	YB2							= "second",
	YB3							= "third",
	YB4							= "fourth",
	YB5							= "fifth",
	optYBT						= "Second Annihilation Target",
	noYBT						= "NO",
	YBT1						= "first",
	YBT2						= "second",
	YBT3						= "third",
	YBT4						= "fourth",
	YBT5						= "fifth"
})

L:SetMiscLocalization({
	Floor						= "Energy vortex energy is reduced!"
})
------------
-- Will of the Emperor --
------------
L= DBM:GetModLocalization(677)

L:SetWarningLocalization({
	specWarnBomb				= ">> Bomb(%d) <<",
	specWarnKZ					= ">> Control(%d) <<"
})

L:SetOptionLocalization({
	InfoFrame			= "Show info frame for players affected by $spell:116525",
	ArrowOnCombo	= "Show DBM Arrow during $journal:5673\nNOTE: This assumes tank is in front of boss and anyone else is behind.",
	SoundWOP			= "Voice warning: important skills",
	SoundADD1A			= "Voice warning:$spell:ej5678 (5s before)",
	SoundADD1			= "Voice warning:$spell:ej5678",
	SoundADD2A			= "Voice warning:$spell:ej5676 (8s before)",
	SoundADD2			= "Voice warning:$spell:ej5676",
	SoundADD3A			= "Voice warning:$spell:ej5677 (8s before)",
	SoundADD3			= "Voice warning:$spell:ej5677",
	ragebomb1			= "英雄模式：爆破第3组",
	ragebomb2			= "英雄模式：爆破第6组",
	ragebomb3			= "英雄模式：爆破第9组",
	ragebomb4			= "英雄模式：爆破第12组",
	ragebomb5			= "英雄模式：爆破第15组",
	specWarnBomb		= "特殊警告：本轮需要爆破小怪",
	specWarnKZ			= "特殊警告：本轮需要控制小怪",
	optKZ				= "轻甲兵控制链",
	kza					= "第一组",
	kzb					= "第二组",
	kzc					= "第三组",
	nokz				= "我不控制",
	optBY 				= "Voice warning: only the tips of this boss's special attack ",
	tarfoc 				= "target and focus of special attacks ",
	Janxi 				= "Jan Xi special attack (on the left side) ",
	Qinxi 				= "Qin Xi special attack (on the right side) ",
	none 				= "Don't warning"
})

L:SetMiscLocalization({
	Pull		= "The machine hums to life!  Get to the lower level!",--Emote
	Rage		= "The Emperor's Rage echoes through the hills.",--Yell
	Strength	= "The Emperor's Strength appears in the alcoves!",--Emote
	Courage		= "The Emperor's Courage appears in the alcoves!",--Emote
	Boss		= "Two titanic constructs appear in the large alcoves!"--Emote
})

