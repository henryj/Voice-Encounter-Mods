if GetLocale() ~= "zhTW" then return end
local L

-----------------------
-- <<<Temple of the Jade Serpent>>> --
-----------------------
-----------------------
-- Wise Mari --
-----------------------
L= VEM:GetModLocalization(672)

L:SetOptionLocalization({
	SetIconOnAdds	= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format("ej5616"),
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Lorewalker Stonestep --
-----------------------
L= VEM:GetModLocalization(664)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	SpecWarnIntensity	= VEM_CORE_AUTO_SPEC_WARN_OPTIONS["stack"]:format(6, 113315)
})

L:SetWarningLocalization({
	SpecWarnIntensity	= "%s 於 %s (%d)"
})

-----------------------
-- Liu Flameheart --
-----------------------
L= VEM:GetModLocalization(658)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Sha of Doubt --
-----------------------
L= VEM:GetModLocalization(335)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- <<<Stormstout Brewery>>> --
-----------------------
-----------------------
-- Ook-Ook --
-----------------------
L= VEM:GetModLocalization(668)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Hoptallus --
-----------------------
L= VEM:GetModLocalization(669)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

L:SetMiscLocalization({
	Tuzi				= "跳跳巨兔妖發出一聲響亮的尖叫!兔妖來了!"
})

-----------------------
-- Yan Zhu the Uncasked --
-----------------------
L= VEM:GetModLocalization(670)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	SpecWarnFizzyBubbles	= "特別警告：缺少$spell:114459",
	RangeFrame				= "距離監視(10碼)：$spell:106546"
})

L:SetWarningLocalization({
	SpecWarnFizzyBubbles	= "去拿泡泡飛起來!"
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
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Snowdrift --
-----------------------
L= VEM:GetModLocalization(657)

L:SetWarningLocalization({
	warnRemainingNovice	= "學徒剩餘: %d"
})

L:SetOptionLocalization({
	warnRemainingNovice	= "警告：學徒剩餘數量",
	SoundWOP			= "語音警告：重要技能"
})

L:SetMiscLocalization({
--	NovicesPulled	= "你!在煞沉眠了這麼多年之後，你竟然讓它甦醒了!",
	NovicesDefeated = "你打贏了我資歷最淺的徒弟。現在你要面對我最資深的兩個徒弟。",
--	Defeat			= "I am bested.  Give me a moment and we will venture forth together to face the Sha."
})

-----------------------
-- Sha of Violence --
-----------------------
L= VEM:GetModLocalization(685)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

L:SetMiscLocalization({
	Kill		= "只要你們心中還存有暴力，我就..會回來...",
})

-----------------------
-- Taran Zhu --
-----------------------
L= VEM:GetModLocalization(686)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	InfoFrame			= "資訊框：$journal:5827"
})

-----------------------
-- <<<The Gate of the Setting Sun>>> --
-----------------------
---------------------
-- Kiptilak --
---------------------
L= VEM:GetModLocalization(655)

L:SetOptionLocalization({
	IconOnSabotage	= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(107268),
	SoundWOP			= "語音警告：重要技能"
})

-------------
-- Gadok --
-------------
L= VEM:GetModLocalization(675)

L:SetMiscLocalization({
	StaffingRun		= "打擊者卡多克準備開始低空掃射!"
})

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Rimok --
-----------------------
L= VEM:GetModLocalization(676)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------------
-- Raigonn --
-----------------------------
L= VEM:GetModLocalization(649)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

L:SetMiscLocalization({
	Kkxka		= "柯克席克喚蟲者",
	Kkxkb		= "柯克席克捲風者",
	Kkxkc		= "柯克席克護衛兵"
})

-----------------------
-- <<<Mogu'Shan Palace>>> --
-----------------------
-----------------------
-- Trial of Kings --
-----------------------
L= VEM:GetModLocalization(708)

L:SetMiscLocalization({
	Pull		= "你們這些沒用的東西!就連你們獻上的守衛，都擋不住這些低等的生物。",
	Kuai		= "葛薩恩部族會讓你們這些想要權力的傢伙知道為什麼我們才是王身邊真正的勇士!",
	Ming		= "哈薩科會讓所有人看看為什麼我們才是真正的魔古!",
	Haiyan		= "卡傑許部族會展示出強者才有資格替王效勞的原因!",
	Defeat		= "是誰讓外來者進入我們的殿堂?只有哈薩科或卡傑許部族會做出這種背叛的行為!"
})

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Gekkan --
-----------------------
L= VEM:GetModLocalization(690)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Weaponmaster Xin --
-----------------------
L= VEM:GetModLocalization(698)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- <<<Siege of Niuzao Temple>>> --
-----------------------
-----------------------
-- Jinbak --
-----------------------
L= VEM:GetModLocalization(693)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Vo'jak --
-----------------------
L= VEM:GetModLocalization(738)

L:SetTimerLocalization({
	TimerWave	= "開始進攻: %s"
})

L:SetOptionLocalization({
	TimerWave	= "計時器：下一波小怪",
	SoundWOP	= "語音警告：重要技能"
})

L:SetMiscLocalization({
	WaveStart		= "蠢蛋!敢跟螳螂人的力量正面衝突?你的死期就要到了!",
	Mob			= "加入戰場。"
})

-----------------------
-- Pavalak --
-----------------------
L= VEM:GetModLocalization(692)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Neronok --
-----------------------
L= VEM:GetModLocalization(727)

L:SetMiscLocalization({
	Fly		= "升空並飛到橋的另一頭"
})

L:SetWarningLocalization({
	specWarnFly	= "快去另一邊!",
})

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	specWarnFly			= "特別警告：當首領飛到橋的另一頭時"
})

-----------------------
-- <<<Scholomance>>> --
-----------------------
-----------------------
-- Instructor Chillheart --
-----------------------
L= VEM:GetModLocalization(659)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Jandice Barov --
-----------------------
L= VEM:GetModLocalization(663)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Rattlegore --
-----------------------
L= VEM:GetModLocalization(665)

L:SetWarningLocalization({
	SpecWarnGetBoned	= "快去拿骨甲!",
})

L:SetOptionLocalization({
	SpecWarnGetBoned	= "特別警告：缺少$spell:113996",
	InfoFrame			= "信息框： 缺少$spell:113996的團隊成員",
	SoundWOP			= "語音警告：重要技能"
})

L:SetMiscLocalization({
	PlayerDebuffs	= "未獲得骨甲"
})

-----------------------
-- Lillian Voss --
-----------------------
L= VEM:GetModLocalization(666)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

L:SetMiscLocalization({
	Kill	= "什麼?!"
})

-----------------------
-- Darkmaster Gandling --
-----------------------
L= VEM:GetModLocalization(684)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- <<<Scarlet Halls>>> --
-----------------------
-----------------------
-- Braun --
-----------------------
L= VEM:GetModLocalization(660)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Harlan --
-----------------------
L= VEM:GetModLocalization(654)

L:SetMiscLocalization({
	Call		= "武器大師哈倫召來兩名他的盟友加入戰鬥!"
})

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Flameweaver Koegler --
-----------------------
L= VEM:GetModLocalization(656)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- <<<Scarlet Cathedral>>> --
-----------------------
-----------------------
-- Thalnos Soulrender --
-----------------------
L= VEM:GetModLocalization(688)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

-----------------------
-- Korlof --
-----------------------
L= VEM:GetModLocalization(671)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	KickArrow	= "當$spell:114487在你附近時顯示VEM箭頭",
})

-----------------------
-- Durand/High Inquisitor Whitemane --
-----------------------
L= VEM:GetModLocalization(674)


L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})