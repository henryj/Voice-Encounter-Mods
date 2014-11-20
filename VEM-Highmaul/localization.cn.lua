--Mini Dragon(projecteurs@gmail.com)
--Thanks to Yike Xia
--Last Update: Oct 21, 2014

if GetLocale() ~= "zhCN" then return end
local L

---------------
-- Kargath Bladefist --
---------------
L= VEM:GetModLocalization(1128)

L:SetTimerLocalization({
	timerCrowdCD	= "捣乱的观众 CD"
})

L:SetOptionLocalization({
	timerCrowdCD	= "为下一波捣乱的观众显示计时器"
})

---------------------------
-- The Butcher --
---------------------------
L= VEM:GetModLocalization(971)

---------------------------
-- Tectus, the Living Mountain --
---------------------------
L= VEM:GetModLocalization(1195)

L:SetMiscLocalization({
	pillarSpawn	= "群山，动起来吧！"
})

------------------
-- Brackenspore, Walker of the Deep --
------------------
L= VEM:GetModLocalization(1196)

--------------
-- Twin Ogron --
--------------
L= VEM:GetModLocalization(1148)

L:SetOptionLocalization({
	PhemosSpecial	= "为菲莫斯的技能播放倒计时声音",
	PolSpecial		= "为波尔的技能播放倒计时声音"
})

--------------------
--Koragh --
--------------------
L= VEM:GetModLocalization(1153)

L:SetMiscLocalization({
	supressionTarget1	= "I will crush you!", --PH
	supressionTarget2	= "Silence!", --PH
	supressionTarget3	= "Quiet!", --PH
	supressionTarget4	= "我要把你撕成两半！"
})

--------------------------
-- Imperator Mar'gok --
--------------------------
L= VEM:GetModLocalization(1197)

-------------
--  Trash  --
-------------
L = VEM:GetModLocalization("HighmaulTrash")

L:SetGeneralLocalization({
	name =	"悬槌堡小怪"
})
