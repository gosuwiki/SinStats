local AddName, AddonTable = ...
local L = AddonTable.L


----------------------------
-- Local Helper Functions --
----------------------------

function AddonTable.StatsCompute()

	-- local totalrepair = 0
	
	-- local repairTooltip = CreateFrame("GameTooltip")
-- for slot = INVSLOT_FIRST_EQUIPPED, INVSLOT_LAST_EQUIPPED do
-- if slot == nil then break end
	-- repairTooltip:ClearLines()
	-- local repairCost = select(3, GameTooltip:SetInventoryItem("player", slot)) or 0
	-- local bagCost = select(2, repairTooltip:SetInventoryItem("player", slot)) or 0
	-- totalrepair = totalrepair + repairCost + bagCost
-- end

-- print(GetCoinTextureString(totalrepair))
	
end 

--------------------------------------
--		Global OnEvent function		--
--------------------------------------
function AddonTable.OnEventFunc(event, ...)

	if event == "UPDATE_INVENTORY_DURABILITY" then
	-----	
		AddonTable.StatsCompute()
	-----
	
end -- end events
end -- end function