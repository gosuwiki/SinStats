local AddName, AddonTable = ...
local L = AddonTable.L

------------------------------
--		Options Equates		--
------------------------------
local Both, Enhanced, Base, World, Realm, Equipped, Overall, Level, Honor = 3, 1, 2, 1, 2, 1, 2, 1, 2


----------------------------------
--		Text Return Formats		--
----------------------------------
local Double_Rating_Format = { "%.0f", "%.0f", "%.0f/%.0f", }
local Base_Casting_Format = { "%.2f", "%.2f", "%.2f/%.2f", }

----------------------
--		Misc		--
----------------------

-- Target Speed
function AddonTable.FunctionList.TargetSpeed(HUD, data, options, ...)

	local speedColor = ""
	local targetSpeed = GetUnitSpeed("target") / 7 * 100
	
	if targetSpeed == 0 or targetSpeed == 100 then
		speedColor = ""
	elseif targetSpeed < 100 then
		speedColor = "|cffC41E3A"
	elseif targetSpeed > 100 then
		speedColor = "|cff71FFC9"
	end

	HUD:UpdateText(data, speedColor .. string.format("%d%%", ("%.0f"):format(targetSpeed)))
end
------------------------------------------------

-- Durability
function AddonTable.FunctionList.Durability(HUD, data, options, ...)
	local Durability, Current, Full, Percent
	local LowestCurrent, LowestFull, t1, t2, t3 = 500, 0, 0, 0, 100
	for i=1,19 do
		Current, Full = GetInventoryItemDurability(i)
		if Current and Full then
			Percent = floor(100*Current/Full + 0.5)
			if (Percent < t3) then
				t3 = Percent
			end
			if (Current < LowestCurrent) then
				LowestCurrent = Current
				LowestFull = Full
			end
			t1 = t1 + Current
			t2 = t2 + Full
		end
	end
	if t2 == 0 then
		Durability = "N/A"
	else
		Durability = floor(t1 * 100 / t2)
	end
	local Text = ""
	if type(Durability) == "number" then
		if Durability > 50 then
			Text = string.format("|cff%2xff00", ((Durability > 50) and (255 - 2.55*Durability) or (2.55*Durability)), Durability) .. Text
		else
			Text = string.format("|cffff%2x00", (2.55*Durability), Durability) .. Text
		end
		Text = Text..Durability.."%"
	end
	
	HUD:UpdateText(data, Text)        
end
------------------------------------------------

-- Item Level
function AddonTable.FunctionList.ItemLevel(HUD, data, options, ...)

	local EB, percentStat, ratingStat = options.Equipped_Overall
	local overall, equipped = GetAverageItemLevel()
	local returnText
	
	if AddonTable.Band(EB, Equipped) then
		returnText = ("%.2f"):format(equipped)
	end
	if  AddonTable.Band(EB, Overall) then
		returnText = ("%.2f"):format(overall)
	end
	if  AddonTable.Band(EB, Both) then
		returnText = ("%.2f"):format(equipped) .. "/" .. ("%.2f"):format(overall)
	end		

	HUD:UpdateText(data, returnText)
end
------------------------------------------------

-- Honor
function AddonTable.FunctionList.Honor(HUD, data, options, ...)

	local EB, percentStat, ratingStat = options.Level_HonorPoints
	local honorLevel = UnitHonorLevel("player")
	local honorPoints = UnitHonor("player")
	local ratedHonor = C_CurrencyInfo.GetCurrencyInfo(1891)
	local ratedTotal = 0
	local returnText
 
	if ratedHonor.name and tonumber(ratedHonor.quantity) then
		ratedTotal = ratedHonor.quantity
	end
	
	if options.Display_Rated then
		honorPoints = ratedTotal
	end
	
	if AddonTable.Band(EB, Level) then
		returnText = honorLevel
	end
	if  AddonTable.Band(EB, Honor) then
		returnText = honorPoints
	end
	if  AddonTable.Band(EB, Both) then
		returnText = honorLevel .. "/" .. honorPoints
	end			

	HUD:UpdateText(data, returnText)
end
------------------------------------------------

-- Ping
function AddonTable.FunctionList.Lag(HUD, data, options, ...)

	local EB, percentStat, ratingStat = options.World_Realm
	local _, _, lagRealm, lagWorld = GetNetStats()
	local lagColor = ""
	local returnText

	if lagWorld <= 90 or lagRealm <= 90 then
		lagColor = "|cff71FFC9"
	elseif (lagWorld >= 90 and lagWorld < 200) or  (lagRealm >= 90 and lagRealm < 200) then
		lagColor = "|cffFF7C0A"
	elseif lagWorld >= 200 or lagRealm >= 200 then
		lagColor = "|cffC41E3A"
	end
	
	if AddonTable.Band(EB, World) then
		returnText = lagColor .. floor(lagWorld)
	end
	if  AddonTable.Band(EB, Realm) then
		returnText = lagColor .. floor(lagRealm)
	end
	if  AddonTable.Band(EB, Both) then
		returnText = lagColor .. floor(lagWorld) .. "/" .. floor(lagRealm)
	end		

	HUD:UpdateText(data, returnText)
end
------------------------------------------------

-- FPS
function AddonTable.FunctionList.FPS(HUD, data, options, ...)

	local framerate = GetFramerate()
	local fpsColor = ""
	
	if framerate < 30 then
		fpsColor = "|cffC41E3A"
	elseif framerate > 30 and framerate < 50 then
		fpsColor = "|cffFF7C0A"
	elseif framerate > 50 then
		fpsColor = "|cff71FFC9"
	end
	
	HUD:UpdateText(data, fpsColor .. floor(framerate))
end
------------------------------------------------
local repairTooltip = CreateFrame("GameTooltip")
-- Money
function AddonTable.FunctionList.Gold(HUD, data, options, ...)

	local money = GetMoney()
	local formattedMoney = (GetCoinTextureString(money))
	
	HUD:UpdateText(data, formattedMoney)
end
