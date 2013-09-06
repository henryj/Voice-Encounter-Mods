if GetLocale() ~= "zhTW" then return end
local L

-----------------------
-- Sha of Anger --
-----------------------
L= VEM:GetModLocalization(691)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	RangeFrame			= "距離監視：$spell:119622",
	HudMAP				= "高級定位監視(HUD)：$spell:119622",
	SetIconOnMC			= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(119622)
})

L:SetMiscLocalization({
	Pull				= "沒錯...沒錯!釋放你的怒火!試著擊敗我!"
})

-----------------------
-- Salyis --
-----------------------
L= VEM:GetModLocalization(725)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能"
})

L:SetMiscLocalization({
	Pull				= "把他們的屍體帶給我!"
})

--------------
-- Oondasta --
--------------
L= VEM:GetModLocalization(826)

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	RangeFrame			= "距離監視：$spell:137511"
})

L:SetMiscLocalization({
	Pull				= "你們竟敢打擾我們的準備工作!贊達拉這次不會再被阻止了!"
})

---------------------------
-- Nalak, The Storm Lord --
---------------------------
L= VEM:GetModLocalization(814)

L:SetOptionLocalization({
	RangeFrame			= "距離監視(10碼)：$spell:136340"
})

L:SetMiscLocalization({
	Pull				= "你感覺到冷風吹過了嗎?風暴要來了..."
})

---------------------------
-- Chi-ji, The Red Crane --
---------------------------
L= VEM:GetModLocalization(857)

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	HudMAP					= "高級定位監視(HUD)：$spell:144473",
	SetIconOnBeacon			= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(144473),
	BeaconArrow				= "VEM箭頭：$spell:144473"
})

L:SetMiscLocalization({
	Victory					= "Your hope shines brightly, and even more brightly when you work together to overcome. It will ever light your way in even the darkest of places."
})

------------------------------
-- Yu'lon, The Jade Serpent --
------------------------------
L= VEM:GetModLocalization(858)

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(11, 144532)
})

--------------------------
-- Niuzao, The Black Ox --
--------------------------
L= VEM:GetModLocalization(859)

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能"
})

---------------------------
-- Xuen, The White Tiger --
---------------------------
L= VEM:GetModLocalization(860)

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(3, 144642)
})

L:SetMiscLocalization({
	Victory					= "You are strong, stronger even than you realize. Carry this thought with you into the darkness ahead, and let it shield you."
})

------------------------------------
-- Ordos, Fire-God of the Yaungol --
------------------------------------
L= VEM:GetModLocalization(861)

L:SetOptionLocalization({
	SoundWOP				= "語音警告：重要技能",
	HudMAP					= "高級定位監視(HUD)：$spell:144689",
	SetIconOnBurningSoul	= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(144689),
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(8, 144689)
})