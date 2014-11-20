local L

--------------------------
--  Blastenheimer 5000  --
--------------------------
L = VEM:GetModLocalization("Cannon")

L:SetGeneralLocalization({
	name = "Blastenheimer 5000"
})

-------------
--  Gnoll  --
-------------
L = VEM:GetModLocalization("Gnoll")

L:SetGeneralLocalization({
	name = "Whack-a-Gnoll"
})

L:SetWarningLocalization({
	warnGameOverQuest	= "Earned %d out of %d possible points spawned",
	warnGameOverNoQuest	= "Game ended with a total of %d possible points spawned",
	warnGnoll			= "Gnoll spawned",
	warnHogger			= "Hogger spawned",
	specWarnHogger		= "Hogger spawned!"
})

L:SetOptionLocalization({
	warnGameOver	= "Announce total possible points when game ends",
	warnGnoll		= "Announce when a Gnoll spawns",
	warnHogger		= "Announce when a Hogger spawns",
	specWarnHogger	= "Show special warning when a Hogger spawns"
})

------------------------
--  Shooting Gallery  --
------------------------
L = VEM:GetModLocalization("Shot")

L:SetGeneralLocalization({
	name = "Shooting Gallery"
})

L:SetOptionLocalization({
	SetBubbles			= "Automatically disable chat bubbles during $spell:101871<br/>(restores them when game ends)"
})

----------------------
--  Tonk Challenge  --
----------------------
L = VEM:GetModLocalization("Tonks")

L:SetGeneralLocalization({
	name = "Tonk Challenge"
})

-----------------------
--  Darkmoon Rabbit  --
-----------------------
L = VEM:GetModLocalization("Rabbit")

L:SetGeneralLocalization({
	name = "Darkmoon Rabbit"
})

-------------------------
--  Darkmoon Moonfang  --
-------------------------
L = VEM:GetModLocalization("Moonfang")

L:SetGeneralLocalization({
	name = "Moonfang"
})

L:SetWarningLocalization({
	specWarnCallPack		= "Call the Pack - Run > 40 yards from Moonfang!",
	specWarnMoonfangCurse	= "Moonfang's Curse - Run > 10 yards from Moonfang!"
})

L:SetOptionLocalization({
	specWarnCallPack		= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.run:format(144602),
	specWarnMoonfangCurse	= VEM_CORE_AUTO_SPEC_WARN_OPTIONS.run:format(144590)
})
