-- Simplified Chinese by Diablohu(diablohudream@gmail.com)
-- Last update: 2/4/2013

if GetLocale() ~= "zhCN" then return end
local L

----------------------
-- Theramore's Fall --
----------------------
L= VEM:GetModLocalization("d566")

---------------------------
-- Arena Of Annihilation --
---------------------------
L= VEM:GetModLocalization("d511")

--------------
-- Landfall --
--------------
L = VEM:GetModLocalization("Landfall")

L:SetWarningLocalization({
	WarnAchFiveAlive	= "成就“五号还活着”失败"
})

L:SetOptionLocalization({
	WarnAchFiveAlive	= "警报：成就“五号还活着”失败"
})