VEM.Flash = {}
local flasherFrame = nil

function Flash(event, ar, ag, ab)
	local r, g, b = ar, ag, ab
	if not flasherFrame then
		flasherFrame = CreateFrame("Frame", "VEMFlash", UIParent)
		flasherFrame:SetBackdrop({bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",})
		flasherFrame:SetAllPoints(UIParent)
		flasherFrame:SetFrameStrata("BACKGROUND")
		flasherFrame:SetScript("OnShow", function(self)
			self.TimeSinceLastUpdate = 0
			self:SetAlpha(0)
		end)
		flasherFrame:SetScript("OnUpdate", function(self, elapsed)
			self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed
			if self.TimeSinceLastUpdate >= 1 then
				self:Hide()
				self:SetAlpha(0)
				return
			end
			if self.TimeSinceLastUpdate >= 0.5 then
				self:SetAlpha(1 - self.TimeSinceLastUpdate)
			else
				self:SetAlpha(self.TimeSinceLastUpdate)
			end
		end)
		flasherFrame:Hide()
	end
	flasherFrame:SetBackdropColor(r, g, b, 0.5)
	flasherFrame:Show()
end

function VEM.Flash:Show(...)
	if VEM.Options.ShowFlashFrame then
		return Flash(event, ...)
	end
end