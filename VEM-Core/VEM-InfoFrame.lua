-- ********************************************
-- **             VEM Info Frame             **
-- **     http://www.deadlybossmods.com      **
-- ********************************************
--
-- This addon is written and copyrighted by:
--    * Paul Emmerich (Tandanu @ EU-Aegwynn) (VEM-Core)
--    * Martin Verges (Nitram @ EU-Azshara) (VEM-GUI)
--
-- The localizations are written by:
--    * enGB/enUS: Tandanu				http://www.deadlybossmods.com
--    * deDE: Tandanu					http://www.deadlybossmods.com
--    * zhCN: Diablohu					http://wow.gamespot.com.cn
--    * ruRU: BootWin					bootwin@gmail.com
--    * ruRU: Vampik					admin@vampik.ru
--    * zhTW: Hman						herman_c1@hotmail.com
--    * zhTW: Azael/kc10577				paul.poon.kw@gmail.com
--    * koKR: BlueNyx/nBlueWiz			bluenyx@gmail.com / everfinale@gmail.com
--    * esES: Snamor/1nn7erpLaY      	romanscat@hotmail.com
--
-- Special thanks to:
--    * Arta
--    * Omegal @ US-Whisperwind (continuing mod support for 3.2+)
--    * Tennberg (a lot of fixes in the enGB/enUS localization)
--
--
-- The code of this addon is licensed under a Creative Commons Attribution-Noncommercial-Share Alike 3.0 License. (see license.txt)
-- All included textures and sounds are copyrighted by their respective owners.
--
--
--  You are free:
--    * to Share ?to copy, distribute, display, and perform the work
--    * to Remix ?to make derivative works
--  Under the following conditions:
--    * Attribution. You must attribute the work in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the work).
--    * Noncommercial. You may not use this work for commercial purposes.
--    * Share Alike. If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.
--
--
-- This file makes use of the following free (Creative Commons Sampling Plus 1.0) sounds:
--    * alarmclockbeeps.ogg by tedthetrumpet (http://www.freesound.org/usersViewSingle.php?id=177)
--    * blip_8.ogg by Corsica_S (http://www.freesound.org/usersViewSingle.php?id=7037)
--  The full of text of the license can be found in the file "Sounds\Creative Commons Sampling Plus 1.0.txt".

---------------
--  Globals  --
---------------
VEM.InfoFrame = {}

--------------
--  Locals  --
--------------
local infoFrame = VEM.InfoFrame
local frame
local createFrame
local onUpdate
local dropdownFrame
local initializeDropdown
local maxlines
local infoFrameThreshold
local pIndex
local extraPIndex
local lowestFirst
local lowestT
local lowestF
local tankIgnored
local iconModifier
local headerText = "VEM Info Frame"	-- this is only used if VEM.InfoFrame:SetHeader(text) is not called before :Show()
local currentEvent
local sortingAsc
local lines = {}
local icons = {}
local sortedLines = {}
local lastStacks = {}
local showtime,infot = 0

-------------------
-- Local Globals --
-------------------
--Entire InfoFrame is a looping onupdate function. All of these globals get used several times a second
local IsInGroup = IsInGroup
local GetRaidTargetIndex = GetRaidTargetIndex
local UnitName = UnitName
local UnitHealth = UnitHealth
local UnitPower = UnitPower
local UnitPowerMax = UnitPowerMax
local UnitDebuff = UnitDebuff
local UnitBuff = UnitBuff
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local GetSpellInfo = GetSpellInfo
local UnitThreatSituation = UnitThreatSituation
local GetRaidRosterInfo = GetRaidRosterInfo
local GetRealZoneText = GetRealZoneText
local GetPartyAssignment = GetPartyAssignment
local UnitGroupRolesAssigned = UnitGroupRolesAssigned

---------------------
--  Dropdown Menu  --
---------------------
-- todo: this dropdown menu is somewhat ugly and unflexible....
do
	local function toggleLocked()
		VEM.Options.InfoFrameLocked = not VEM.Options.InfoFrameLocked
	end
	local function toggleShowSelf()
		VEM.Options.InfoFrameShowSelf = not VEM.Options.InfoFrameShowSelf
	end

	function initializeDropdown(dropdownFrame, level, menu)
		local info
		if level == 1 then
			info = UIDropDownMenu_CreateInfo()
			info.text = LOCK_FRAME
			if VEM.Options.InfoFrameLocked then
				info.checked = true
			end
			info.func = toggleLocked
			UIDropDownMenu_AddButton(info, 1)

			info = UIDropDownMenu_CreateInfo()
			info.text = VEM_CORE_INFOFRAME_SHOW_SELF
			if VEM.Options.InfoFrameShowSelf then
				info.checked = true
			end
			info.func = toggleShowSelf
			UIDropDownMenu_AddButton(info, 1)

			info = UIDropDownMenu_CreateInfo()
			info.text = HIDE
			info.notCheckable = true
			info.func = infoFrame.Hide
			info.arg1 = infoFrame
			UIDropDownMenu_AddButton(info, 1)
		end
	end
end


------------------------
--  Create the frame  --
------------------------
function createFrame()
	local elapsed = 0
	local frame = CreateFrame("GameTooltip", "VEMInfoFrame", UIParent, "GameTooltipTemplate")
	dropdownFrame = CreateFrame("Frame", "VEMInfoFrameDropdown", frame, "UIDropDownMenuTemplate")
	frame:SetFrameStrata("DIALOG")
	frame:SetPoint(VEM.Options.InfoFramePoint, UIParent, VEM.Options.InfoFramePoint, VEM.Options.InfoFrameX, VEM.Options.InfoFrameY)
	frame:SetHeight(maxlines*12)
	frame:SetWidth(64)
	frame:EnableMouse(true)
	frame:SetToplevel(true)
	frame:SetMovable()
	GameTooltip_OnLoad(frame)
	frame:SetPadding(16)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function(self)
		if not VEM.Options.InfoFrameLocked then
			self:StartMoving()
		end
	end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		ValidateFramePosition(self)
		local point, _, _, x, y = self:GetPoint(1)
		VEM.Options.InfoFrameX = x
		VEM.Options.InfoFrameY = y
		VEM.Options.InfoFramePoint = point
	end)
	frame:SetScript("OnUpdate", function(self, e)
		elapsed = elapsed + e
		if elapsed >= 0.5 then
			onUpdate(self, elapsed)
			elapsed = 0
		end
	end)
	frame:SetScript("OnEvent", function(self, event, ...)
		if infoFrame[event] then
			infoFrame[event](self, ...)
		end
	end)
	frame:SetScript("OnMouseDown", function(self, button)
		if button == "RightButton" then
			UIDropDownMenu_Initialize(dropdownFrame, initializeDropdown, "MENU")
			ToggleDropDownMenu(1, nil, dropdownFrame, "cursor", 5, -10)
		end
	end)
	return frame
end


------------------------
--  Update functions  --
------------------------
local updateCallbacks = {}
local function sortFuncDesc(a, b) return lines[a] > lines[b] end
local function sortFuncAsc(a, b) return lines[a] < lines[b] end
local function namesortFuncAsc(a, b) return a < b end
local function updateLines()
	table.wipe(sortedLines)
	for i in pairs(lines) do
		sortedLines[#sortedLines + 1] = i
	end
	if sortingAsc then
		table.sort(sortedLines, sortFuncAsc)
	else
		table.sort(sortedLines, sortFuncDesc)
	end
	for i, v in ipairs(updateCallbacks) do
		v(sortedLines)
	end
end

--namesort add start
local function updateNamesortLines()
	table.wipe(sortedLines)
	for i in pairs(lines) do
		sortedLines[#sortedLines + 1] = i
	end
	table.sort(sortedLines, namesortFuncAsc)
		for i, v in ipairs(updateCallbacks) do
		v(sortedLines)
	end
end
--add end

local function updateIcons()
	table.wipe(icons)
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			local icon = GetRaidTargetIndex(uId)
			if icon then
				icons[UnitName(uId)] = ("|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_%d:0|t"):format(icon)
			end
		end
	end
end

local function updateHealth()
	table.wipe(lines)
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			local icon = GetRaidTargetIndex(uId)
			if UnitHealth(uId) < infoFrameThreshold and not UnitIsDeadOrGhost(uId) then
				lines[UnitName(uId)] = UnitHealth(uId) - infoFrameThreshold
			end
		end
	end
	updateLines()
	updateIcons()
end

local function updatePlayerPower()
	table.wipe(lines)
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			if not UnitIsDeadOrGhost(uId) and UnitPower(uId, pIndex)/UnitPowerMax(uId, pIndex)*100 >= infoFrameThreshold then
				lines[UnitName(uId)] = UnitPower(uId, pIndex)
			end
		end
	end
	if VEM.Options.InfoFrameShowSelf and not lines[UnitName("player")] and UnitPower("player", pIndex) > 0 then
		lines[UnitName("player")] = UnitPower("player", pIndex)
	end
	updateLines()
	updateIcons()
end

local function updateEnemyPower()
	table.wipe(lines)
	for i = 1, 5 do
		if UnitPower("boss"..i, pIndex)/UnitPowerMax("boss"..i, pIndex)*100 >= infoFrameThreshold then
			lines[UnitName("boss"..i)] = UnitPower("boss"..i, pIndex)
		end
	end
	if extraPIndex then
		if UnitPower("player", extraPIndex) > 0 then
			lines[UnitName("player")] = UnitPower("player", extraPIndex)
		end
	end
	updateLines()
end

local function updateNazgrimPower()
	table.wipe(lines)	
	if UnitPower("boss1") < 50 then
		lines["|cFF088A08"..GetSpellInfo(143500).."|r"] = UnitPower("boss"..i)
		lines[GetSpellInfo(143536)] = "50"
		lines[GetSpellInfo(143872)] = "70"
		lines[GetSpellInfo(143503)] = "100"
	elseif UnitPower("boss1") < 70 then
		lines[GetSpellInfo(143500)] = UnitPower("boss"..i)
		lines["|cFF088A08"..GetSpellInfo(143536).."|r"] = UnitPower("boss"..i)
		lines[GetSpellInfo(143872)] = "70"
		lines[GetSpellInfo(143503)] = "100"
	elseif UnitPower("boss1") < 100 then
		lines[GetSpellInfo(143500)] = UnitPower("boss"..i)
		lines[GetSpellInfo(143536)] = "50"
		lines["|cFF088A08"..GetSpellInfo(143872).."|r"] = UnitPower("boss"..i)
		lines[GetSpellInfo(143503)] = "100"
	elseif UnitPower("boss1") == 100 then
		lines[GetSpellInfo(143500)] = UnitPower("boss"..i)
		lines[GetSpellInfo(143536)] = "50"
		lines[GetSpellInfo(143872)] = "70"
		lines["|cFF088A08"..GetSpellInfo(143503).."|r"] = UnitPower("boss"..i)
	end
	updateLines()
end


local function updateCobalyPower()
	table.wipe(lines)	
	for i = 1, 4 do
		local BossName
		if pIndex then
			BossName = UnitName("boss"..i)
			if not UnitName("boss"..i.."target") then return end			
			if BossName == EJ_GetSectionInfo(5691) then BossName = "紫色" end
			if BossName == EJ_GetSectionInfo(5771) then BossName = "藍色" end
			if BossName == EJ_GetSectionInfo(5773) then BossName = "綠色" end
			if BossName == EJ_GetSectionInfo(5774) then BossName = "紅色" end
			if UnitName("boss"..i) == EJ_GetSectionInfo(5773) then				--Jade
				if infoFrameThreshold["Gsdnow"] then
					lines["|cFF088A08"..BossName.."|cFFCDCDC1[石]|r"] = UnitPower("boss"..i)
				else
					lines["|cFF088A08"..BossName] = UnitPower("boss"..i)
				end
			elseif UnitName("boss"..i) == EJ_GetSectionInfo(5774) then			--Jasper
				if infoFrameThreshold["Rsdnow"] then
					lines["|cFFFF0404"..BossName.."|cFFCDCDC1[石]|r"] = UnitPower("boss"..i)
				else
					lines["|cFFFF0404"..BossName] = UnitPower("boss"..i)
				end
			elseif UnitName("boss"..i) == EJ_GetSectionInfo(5771) then			--Cobalt
				if infoFrameThreshold["Bsdnow"] then
					lines["|cFF0080FF"..BossName.."|cFFCDCDC1[石]|r"] = UnitPower("boss"..i)
				else
					lines["|cFF0080FF"..BossName] = UnitPower("boss"..i)
				end
			elseif UnitName("boss"..i) == EJ_GetSectionInfo(5691) then			--Amethyst
				if infoFrameThreshold["Psdnow"] then
					lines["|cFF9932CD"..BossName.."|cFFCDCDC1[石]|r"] = UnitPower("boss"..i)
				else
					lines["|cFF9932CD"..BossName] = UnitPower("boss"..i)
				end
			end
		else
			if UnitName("boss"..i) == EJ_GetSectionInfo(5773) then				--Jade
				if infoFrameThreshold["Gsdnow"] then
					lines["|cFF088A08"..UnitName("boss"..i).."|r |cFFCDCDC1["..EJ_GetSectionInfo(5785).."]|r"] = UnitPower("boss"..i)
				else
					lines["|cFF088A08"..UnitName("boss"..i).."|r"] = UnitPower("boss"..i)
				end
			elseif UnitName("boss"..i) == EJ_GetSectionInfo(5774) then			--Jasper
				if infoFrameThreshold["Rsdnow"] then
					lines["|cFFFF0404"..UnitName("boss"..i).."|r |cFFCDCDC1["..EJ_GetSectionInfo(5785).."]|r"] = UnitPower("boss"..i)
				else
					lines["|cFFFF0404"..UnitName("boss"..i).."|r"] = UnitPower("boss"..i)
				end
			elseif UnitName("boss"..i) == EJ_GetSectionInfo(5771) then			--Cobalt
				if infoFrameThreshold["Bsdnow"] then
					lines["|cFF0080FF"..UnitName("boss"..i).."|r |cFFCDCDC1["..EJ_GetSectionInfo(5785).."]|r"] = UnitPower("boss"..i)
				else
					lines["|cFF0080FF"..UnitName("boss"..i).."|r"] = UnitPower("boss"..i)
				end
			elseif UnitName("boss"..i) == EJ_GetSectionInfo(5691) then			--Amethyst
				if infoFrameThreshold["Psdnow"] then
					lines["|cFF9932CD"..UnitName("boss"..i).."|r |cFFCDCDC1["..EJ_GetSectionInfo(5785).."]|r"] = UnitPower("boss"..i)
				else
					lines["|cFF9932CD"..UnitName("boss"..i).."|r"] = UnitPower("boss"..i)
				end
			end
		end
	end
	updateLines()
end

--Buffs that are good to have, therefor bad not to have them.
local function updatePlayerBuffs()
	table.wipe(lines)
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			if not UnitBuff(uId, GetSpellInfo(infoFrameThreshold)) and not UnitIsDeadOrGhost(uId) then
				lines[UnitName(uId)] = ""
			end
		end
	end
	updateLines()
	updateIcons()
end

--Debuffs that are good to have, therefor it's bad NOT to have them.
local function updateGoodPlayerDebuffs()
	table.wipe(lines)
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			if tankIgnored and (UnitGroupRolesAssigned(uId) == "TANK" or GetPartyAssignment("MAINTANK", uId, 1)) then break end
			if not UnitDebuff(uId, GetSpellInfo(infoFrameThreshold)) and not UnitIsDeadOrGhost(uId) then
				lines[UnitName(uId)] = ""
			end
		end
	end
	updateLines()
	updateIcons()
end

--Debuffs that are bad to have, therefor it is bad to have them.
local function updateBadPlayerDebuffs()
	table.wipe(lines)
	if IsInGroup() then
		for uId, i in VEM:GetGroupMembers() do
			if tankIgnored and (UnitGroupRolesAssigned(uId) == "TANK" or GetPartyAssignment("MAINTANK", uId, 1)) then break end
			if UnitDebuff(uId, GetSpellInfo(infoFrameThreshold)) and not UnitIsDeadOrGhost(uId) then
				if UnitGroupRolesAssigned(uId) == "HEALER" then
					lines[UnitName(uId)] = _G["HEALER"]
				else
					lines[UnitName(uId)] = ""
				end
			end
		end
	end
	updateLines()
	updateIcons()
end

--Debuffs that are bad to have, but we want to show players who do NOT have them
local function updateReverseBadPlayerDebuffs()
	table.wipe(lines)
	if IsInGroup() then
		for uId, i in VEM:GetGroupMembers() do
			if tankIgnored and (UnitGroupRolesAssigned(uId) == "TANK" or GetPartyAssignment("MAINTANK", uId, 1)) then break end
			if not UnitDebuff(uId, GetSpellInfo(infoFrameThreshold)) and not UnitIsDeadOrGhost(uId) then
				lines[UnitName(uId)] = ""
			end
		end
	end
	updateLines()
	updateIcons()
end

local function updatePlayerBuffStacks()
	table.wipe(lines)
	updateIcons()	-- update Icons first in case of an "icon modifier"
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			if UnitBuff(uId, GetSpellInfo(infoFrameThreshold)) then
				lines[UnitName(uId)] = select(4, UnitBuff(uId, GetSpellInfo(infoFrameThreshold)))
			elseif UnitBuff(uId, GetSpellInfo(pIndex)) then
				lines[UnitName(uId)] = lastStacks[UnitName(uId)] or 0			-- is always 0 ?
				if iconModifier then
					icons[UnitName(uId)] = ("|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_%d:0|t"):format(iconModifier)
				end
			end
		end
	end

	table.wipe(lastStacks)		-- 'Erase' the old table, and copy the current values into it
	for k,v in pairs(lines) do
		lastStacks[k] = v
	end

	updateLines()
end

local function updatePlayerDebuffStacks()
	table.wipe(lines)
	local spell = GetSpellInfo(infoFrameThreshold)
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			if UnitDebuff(uId, spell) then
				lines[UnitName(uId)] = select(4, UnitDebuff(uId, spell))
			end
		end
	end
	updateIcons()
	updateLines()
end

--BH ADD
local function updateBossDebuffStacks()
	table.wipe(lines)
	local UnitDebuffTime
	if IsInRaid() then
		for i = 1, 5 do
			local uId = "boss"..i
			if UnitDebuff(uId, GetSpellInfo(infoFrameThreshold)) then
				if select(7, UnitDebuff(uId, GetSpellInfo(infoFrameThreshold))) > GetTime() then
					UnitDebuffTime = math.ceil(select(7, UnitDebuff(uId, GetSpellInfo(infoFrameThreshold))) - GetTime()).."s"
				else
					UnitDebuffTime = ""
				end
				lines[UnitName(uId)] = "["..select(4, UnitDebuff(uId, GetSpellInfo(infoFrameThreshold))).."層]  "..UnitDebuffTime
			end			
		end
	end
	updateLines()
end

local function updatePlayerDebuffStacksTime()
	table.wipe(lines)
	local UnitDebuffTime
	local spell = GetSpellInfo(infoFrameThreshold)
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			if UnitDebuff(uId, spell) and not UnitIsDeadOrGhost(uId) then
				if select(7, UnitDebuff(uId, spell)) > GetTime() then
					UnitDebuffTime = math.ceil(select(7, UnitDebuff(uId, spell)) - GetTime()).."s"
				else
					UnitDebuffTime = ""
				end
				if select(4, UnitDebuff(uId, spell)) > 1 then
					lines[UnitName(uId)] = "["..select(4, UnitDebuff(uId, spell)).."層]"..UnitDebuffTime
				else
					lines[UnitName(uId)] = UnitDebuffTime
				end
			end			
		end
	end
	updateNamesortLines()
	updateIcons()
end

local function updateOther()
	table.wipe(lines)
	lines[pIndex]= infoFrameThreshold
	if extraPIndex then
		lines[extraPIndex]= iconModifier
	end
	if tankIgnored then
		lines[tankIgnored]= lowestFirst
	end
	if lowestF then
		lines[lowestF]= lowestT
	end
	updateLines()
end

local function updateTime()
	showtime = showtime + 0.5
	if pIndex then		
		infot = ("%ds"):format(pIndex - showtime)
		table.wipe(lines)
		local actbossid = nil
		for i = 1, 5 do
			if iconModifier then
				if UnitName("boss"..i) == iconModifier then
					actbossid = "boss"..i
					break
				end
			end
		end
		if actbossid then
			lines[infot]= ("%d%%"):format(25 - (infoFrameThreshold - UnitHealth(actbossid) / UnitHealthMax(actbossid) * 100))
		else
			lines[infot]= infoFrameThreshold
		end
	else
		infot = ("%d:%0.2d"):format(showtime/60, math.fmod(showtime, 60))
		table.wipe(lines)
		lines[infot]= infoFrameThreshold
	end
	updateLines()
end
--BH ADD END

local function updatePlayerAggro()
	table.wipe(lines)
	if IsInGroup() then
		for uId in VEM:GetGroupMembers() do
			if UnitThreatSituation(uId) == infoFrameThreshold then
				lines[UnitName(uId)] = ""
			end
		end
	end
	updateLines()
	updateIcons()
end

local function getUnitCreatureId(uId)
	local guid = UnitGUID(uId)
	return (guid and (tonumber(guid:sub(6, 10), 16))) or 0
end
local function updatePlayerTargets()
	table.wipe(lines)
	if IsInGroup() then
		for uId, i in VEM:GetGroupMembers() do
			if getUnitCreatureId(uId.."target") ~= infoFrameThreshold and (UnitGroupRolesAssigned(uId) == "DAMAGER" or UnitGroupRolesAssigned(uId) == "NONE") then
				lines[UnitName(uId)] = ""
			end
		end
	end
	updateLines()
	updateIcons()
end

----------------
--  OnUpdate  --
----------------
function onUpdate(self, elapsed)
	local addedSelf = false
	local color = NORMAL_FONT_COLOR
	self:ClearLines()
	if headerText then
		self:AddLine(headerText, 255, 255, 255, 0)
	end
	if currentEvent == "health" then
		updateHealth()
	elseif currentEvent == "playerpower" then
		updatePlayerPower()
	elseif currentEvent == "enemypower" then
		updateEnemyPower()
	elseif currentEvent == "playerbuff" then
		updatePlayerBuffs()
	elseif currentEvent == "playergooddebuff" then
		updateGoodPlayerDebuffs()
	elseif currentEvent == "playerbaddebuff" then
		updateBadPlayerDebuffs()
	elseif currentEvent == "reverseplayerbaddebuff" then
		updateReverseBadPlayerDebuffs()
	elseif currentEvent == "playeraggro" then
		updatePlayerAggro()
	elseif currentEvent == "playerbuffstacks" then
		updatePlayerBuffStacks()
	elseif currentEvent == "playerdebuffstacks" then
		updatePlayerDebuffStacks()
	elseif currentEvent == "playertargets" then
		updatePlayerTargets()
	elseif currentEvent == "cobalypower" then
		updateCobalyPower()
	elseif currentEvent == "nazgrimpower" then
		updateNazgrimPower()
	elseif currentEvent == "playerdebuffstackstime" then
		updatePlayerDebuffStacksTime()
	elseif currentEvent == "bossdebuffstacks" then
		updateBossDebuffStacks()
	elseif currentEvent == "other" then
		updateOther()
	elseif currentEvent == "time" then
		updateTime()
	end
--	updateIcons()
	local playerZone = GetRealZoneText()
	local linesShown = 0
	for i = 1, #sortedLines do
		if linesShown >= maxlines then
			break
		end
		local name = sortedLines[i]
		-- filter players who are not in the current zone (i.e. just idling/watching while being in the raid)
		local unitId = VEM:GetRaidUnitId(VEM:GetFullNameByShortName(name))
		local raidId = unitId and unitId:sub(0, 4) == "raid" and (tonumber(unitId:sub(5) or 0) or 0)
		if not raidId or select(7, GetRaidRosterInfo(raidId)) == playerZone then
			linesShown = linesShown + 1
			local power = lines[name]
			local icon = icons[name]
			-- work-around for the player bug, "name" should actually be called "displayName" or something as it might contain the icon in addition to the name
			-- so we need playerName if we just want the raw name
			local playerName = name
			if icon then
				name = icons[name]..name
			end
			if playerName == UnitName("player") then
				addedSelf = true
				if currentEvent == "playerbuff" or currentEvent == "playerbaddebuff" or currentEvent == "playergooddebuff" or currentEvent == "health" or currentEvent == "playertargets" or (currentEvent == "playeraggro" and infoFrameThreshold == 3) then--Player name on frame bad a thing make it red.
					self:AddDoubleLine(name, power, 255, 0, 0, 255, 255, 255)	-- (leftText, rightText, left.R, left.G, left.B, right.R, right.G, right.B)
				elseif currentEvent == "playerbuffstacks" or currentEvent == "playerdebuffstackstime" or (currentEvent == "playeraggro" and infoFrameThreshold == 0) or currentEvent == "enemypower" or currentEvent == "reverseplayerbaddebuff" then--Player name on frame is a good thing, make it green
					self:AddDoubleLine(name, power, 0, 255, 0, 255, 255, 255)	-- (leftText, rightText, left.R, left.G, left.B, right.R, right.G, right.B)
				else--it's not defined a color, so default to white.
					self:AddDoubleLine(name, power, color.R, color.G, color.B, 255, 255, 255)	-- (leftText, rightText, left.R, left.G, left.B, right.R, right.G, right.B)
				end
			else--It's not player, do nothing special with it. Ordinary white text.
				self:AddDoubleLine(name, power, color.R, color.G, color.B, 255, 255, 255)	-- (leftText, rightText, left.R, left.G, left.B, right.R, right.G, right.B)
			end
		end
	end					 						-- Add a method to color the power value?
	if not addedSelf and VEM.Options.InfoFrameShowSelf and currentEvent == "playerpower" then 	-- Don't show self on health/enemypower/playerdebuff/playeraggro
		self:AddDoubleLine(UnitName("player"), lines[UnitName("player")], color.R, color.G, color.B, 255, 255, 255)
	end
	self:Show()
end


---------------
--  Methods  --
---------------
function infoFrame:Show(maxLines, event, threshold, powerIndex, iconMod, extraPowerIndex, sortLowest, ignoreTank, ...)
	if VEM.Options.DontShowInfoFrame and (event or 0) ~= "test" then return end
	maxLines = maxLines or 5
	
	infoFrameThreshold = threshold
	maxlines = maxLines
	pIndex = powerIndex		-- used as 'filter' for player buff stacks
	iconModifier = iconMod
	extraPIndex = extraPowerIndex
	lowestFirst = sortLowest
	tankIgnored = ignoreTank
	lowestT = select(1, ...)
	lowestF = select(2, ...)
	currentEvent = event
	frame = frame or createFrame()

	if lowestFirst then
		sortingAsc = true
	end
	if event == "health" then
		sortingAsc = true	-- Person who misses the most HP to be at threshold is listed on top
		updateHealth()
	elseif event == "playerpower" then
		updatePlayerPower()
	elseif event == "enemypower" then
		updateEnemyPower()
	elseif event == "playerbuff" then
		updatePlayerBuffs()
	elseif event == "playergooddebuff" then
		updateGoodPlayerDebuffs()
	elseif event == "playerbaddebuff" then
		updateBadPlayerDebuffs()
	elseif currentEvent == "reverseplayerbaddebuff" then
		updateReverseBadPlayerDebuffs()
	elseif currentEvent == "playeraggro" then
		updatePlayerAggro()
	elseif currentEvent == "playerbuffstacks" then
		updatePlayerBuffStacks()
	elseif currentEvent == "playerdebuffstacks" then
		updatePlayerDebuffStacks()
	elseif currentEvent == "playertargets" then
		updatePlayerTargets()
	elseif currentEvent == "cobalypower" then
		updateCobalyPower()
	elseif currentEvent == "nazgrimpower" then
		updateNazgrimPower()
	elseif currentEvent == "playerdebuffstackstime" then
		updatePlayerDebuffStacksTime()
	elseif currentEvent == "bossdebuffstacks" then
		updateBossDebuffStacks()
	elseif currentEvent == "other" then
		updateOther()
	elseif currentEvent == "time" then
		updateTime()
	elseif currentEvent == "test" then
	else
		error("VEM-InfoFrame: Unsupported event", 2)
	end

	frame:Show()
	frame:SetOwner(UIParent, "ANCHOR_PRESERVE")
	onUpdate(frame, 0)
end

function infoFrame:RegisterCallback(cb)
	updateCallbacks[#updateCallbacks + 1] = cb
end

function infoFrame:Update(event)
	if event == "health" then
		updateHealth()
	elseif event == "playerpower" then
		updatePlayerPower()
	elseif event == "enemypower" then
		updateEnemyPower()
	elseif event == "playerbuff" then
		updatePlayerBuffs()
	elseif event == "playergooddebuff" then
		updateGoodPlayerDebuffs()
	elseif event == "playerbaddebuff" then
		updateBadPlayerDebuffs()
	elseif currentEvent == "reverseplayerbaddebuff" then
		updateReverseBadPlayerDebuffs()
	elseif event == "playeraggro" then
		updatePlayerAggro()
	elseif event == "playerbuffstacks" then
		updatePlayerBuffStacks()
	elseif event == "playerdebuffstacks" then
		updatePlayerDebuffStacks()
	elseif event == "playertargets" then
		updatePlayerTargets()
	elseif currentEvent == "cobalypower" then
		updateCobalyPower()
	elseif currentEvent == "nazgrimpower" then
		updateNazgrimPower()
	elseif currentEvent == "playerdebuffstackstime" then
		updatePlayerDebuffStacksTime()
	elseif currentEvent == "bossdebuffstacks" then
		updateBossDebuffStacks()
	elseif currentEvent == "other" then
		updateOther()
	elseif currentEvent == "time" then
		updateTime()
	else
		error("VEM-InfoFrame: Unsupported event", 2)
	end
end

function infoFrame:Hide()
	table.wipe(lines)
	table.wipe(sortedLines)
	table.wipe(updateCallbacks)
	headerText = "VEM Info Frame"
	sortingAsc = false
	infoFrameThreshold = nil
	pIndex = nil
	currentEvent = nil
	maxlines = nil
	lowestFirst = nil
	tankIgnored = nil
	extraPIndex = nil
	showtime = 0
	lowestT = nil
	lowestF = nil
	if frame then
		frame:Hide()
	end
end

function infoFrame:IsShown()
	return frame and frame:IsShown()
end

function infoFrame:SetHeader(text)
	if not text then return end
	headerText = text
end

function infoFrame:SetSorting(ascending)
	sortingAsc = ascending
end
