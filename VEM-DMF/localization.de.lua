if GetLocale() ~= "deDE" then return end
local L

--------------------------
--  Blastenheimer 5000  --
--------------------------
L = VEM:GetModLocalization("Cannon")

L:SetGeneralLocalization({
	name = "Kanonendonner"
})

-------------
--  Gnoll  --
-------------
L = VEM:GetModLocalization("Gnoll")

L:SetGeneralLocalization({
	name = "Hau-den-Gnoll"
})

L:SetWarningLocalization({
	warnGameOverQuest	= "Es wurden %d von insgesamt %d erreichbaren Punkten erzielt.",
	warnGameOverNoQuest	= "Spielende. Es waren insgesamt %d Punkte erreichbar.",
	warnGnoll			= "Gnoll erschienen",
	warnHogger			= "Hogger erschienen",
	specWarnHogger		= "Hogger erschienen!"
})

L:SetOptionLocalization({
	warnGameOver	= "Verkünde nach dem Spielende die insgesamt erreichbaren Punkte",
	warnGnoll		= "Zeige Warnung, wenn ein Gnoll erscheint",
	warnHogger		= "Zeige Warnung, wenn ein Hogger erscheint",
	specWarnHogger	= "Spezialwarnung, wenn ein Hogger erscheint"
})

------------------------
--  Shooting Gallery  --
------------------------
L = VEM:GetModLocalization("Shot")

L:SetGeneralLocalization({
	name = "Schießbude"
})

L:SetOptionLocalization({
	SetBubbles			= "Automatische Deaktivierung der 'Sprechblasen' während $spell:101871<br/>(wird nach dem Spielende auf die vorherige Einstellung zurückgesetzt)"
})

----------------------
--  Tonk Challenge  --
----------------------
L = VEM:GetModLocalization("Tonks")

L:SetGeneralLocalization({
	name = "Panzergeneral"
})

-----------------------
--  Darkmoon Rabbit  --
-----------------------
L = VEM:GetModLocalization("Rabbit")

L:SetGeneralLocalization({
	name = "Dunkelmond-Kaninchen"
})

-------------------------
--  Darkmoon Moonfang  --
-------------------------
L = VEM:GetModLocalization("Moonfang")

L:SetGeneralLocalization({
	name = "Mondfang"
})

L:SetWarningLocalization({
	specWarnCallPack		= "Rudelruf - Lauf mehr als 40 Meter von Mondfang weg!",
	specWarnMoonfangCurse	= "Mondfangs Fluch - Lauf mehr als 10 Meter von Mondfang weg!"
})
