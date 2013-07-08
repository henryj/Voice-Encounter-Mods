-- Simplified Chinese by Diablohu(diablohudream@gmail.com)
-- Last update: 3/2/2013

if GetLocale() ~= "zhCN" then return end
local L

-----------------------
-- Sha of Anger --
-----------------------
L= VEM:GetModLocalization(691)

L:SetOptionLocalization({
	SoundWOP			= "语音警告：重要技能",
	RangeFrame			= "距离监视（动态）：$spell:119622",
	HudMAP				= "高级定位监视(HUD)：$spell:119622",
	SetIconOnMC			= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(119622)
})

-----------------------
-- Salyis --
-----------------------
L= VEM:GetModLocalization(725)

L:SetOptionLocalization({
	SoundWOP			= "语音警告：重要技能"
})

--------------
-- Oondasta --
--------------
L= VEM:GetModLocalization(826)

L:SetOptionLocalization({
	SoundWOP			= "语音警告：重要技能",
	RangeFrame			= "距离监视：$spell:137511"
})

---------------------------
-- Nalak, The Storm Lord --
---------------------------
L= VEM:GetModLocalization(814)

L:SetOptionLocalization({
	RangeFrame			= "距离监视（10码）：$spell:136340"
})


---------------------------
-- Chi-ji, The Red Crane --
---------------------------
L= VEM:GetModLocalization(857)

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	HudMAP					= "高级定位监视(HUD)：$spell:144473",
	SetIconOnBeacon			= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(144473),
	BeaconArrow				= "VEM箭头：$spell:144473"
})

------------------------------
-- Yu'lon, The Jade Serpent --
------------------------------
L= VEM:GetModLocalization(858)

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(11, 144532)
})

--------------------------
-- Niuzao, The Black Ox --
--------------------------
L= VEM:GetModLocalization(859)

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能"
})

---------------------------
-- Xuen, The White Tiger --
---------------------------
L= VEM:GetModLocalization(860)

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(3, 144642)
})

------------------------------------
-- Ordos, Fire-God of the Yaungol --
------------------------------------
L= VEM:GetModLocalization(861)

L:SetOptionLocalization({
	SoundWOP				= "语音警告：重要技能",
	HudMAP					= "高级定位监视(HUD)：$spell:144689",
	SetIconOnBurningSoul	= VEM_CORE_AUTO_ICONS_OPTION_TEXT:format(144689),
	RangeFrame				= VEM_CORE_AUTO_RANGE_OPTION_TEXT:format(8, 144689)
})