local AddName, AddonTable = ...
local L = AddonTable.L

------------------------------
--		Options Equates		--
------------------------------
local Both, Enhanced, Base, Damage, DamageTaken = 3, 1, 2, 1, 2

----------------------------------
--		Text Return Formats		--
----------------------------------
local Double_Percent_Format = { "%.2f%%", "%.2f%%", "%.2f/%.2f%%", }


------------------------------
--		Enhancements		--
------------------------------
-- Critical
function AddonTable.FunctionList.CritChance(HUD, data, options, ...)

	local EB, enhancedStat, baseStat = options.Enhanced_Base
	local statFormat = Double_Percent_Format[EB]
	
	local totalCrit = 0
	local critChance = GetCritChance("player")
	local critSpellChance = GetSpellCritChance("player")
	local critRangedChance = GetRangedCritChance("player")
	local critTable = {critChance, critSpellChance, critRangedChance}
	table.sort(critTable)
	totalCrit = critTable[#critTable]

	if AddonTable.Band(EB, Enhanced) then
		enhancedStat = totalCrit
	end
	if  AddonTable.Band(EB, Base) then
		baseStat = totalCrit
	end
	
	HUD:UpdateText(data, format(statFormat, enhancedStat and enhancedStat or baseStat, baseStat))
end

-- Haste
function AddonTable.FunctionList.Haste(HUD, data, options, ...)

	local EB, enhancedStat, baseStat = options.Enhanced_Base
	local statFormat = Double_Percent_Format[EB]	
	local haste = GetHaste()

	if AddonTable.Band(EB, Enhanced) then
		enhancedStat = haste
	end
	if  AddonTable.Band(EB, Base) then
		baseStat = haste
	end
	
	HUD:UpdateText(data, format(statFormat, enhancedStat and enhancedStat or baseStat, baseStat))
end

-- Mastery
function AddonTable.FunctionList.Mastery(HUD, data, options, ...)

	local EB, enhancedStat, baseStat = options.Enhanced_Base
	local statFormat = Double_Percent_Format[EB]	
	local mastery = GetMasteryEffect()

	if AddonTable.Band(EB, Enhanced) then
		enhancedStat = mastery
	end
	if  AddonTable.Band(EB, Base) then
		baseStat = mastery
	end
	
	HUD:UpdateText(data, format(statFormat, enhancedStat and enhancedStat or baseStat, baseStat))	
end

-- Versatility
function AddonTable.FunctionList.Versatility(HUD, data, options, ...)

	local EB, enhancedStat, baseStat = options.Damage_Taken
	local statFormat = Double_Percent_Format[EB]	
    local verDamage = GetVersatilityBonus(29) + GetCombatRatingBonus(29)
	local verMitigate = GetVersatilityBonus(31) + GetCombatRatingBonus(31)

	if AddonTable.Band(EB, Damage) then
		enhancedStat = verDamage
	end
	if  AddonTable.Band(EB, DamageTaken) then
		baseStat = verMitigate
	end
	
	HUD:UpdateText(data, format(statFormat, enhancedStat and enhancedStat or baseStat, baseStat))	
end

-- Avoidance
function AddonTable.FunctionList.Avoidance(HUD, data, options, ...)

	local EB, enhancedStat, baseStat = options.Enhanced_Base
	local statFormat = Double_Percent_Format[EB]	
	local avoidance = GetAvoidance()
	
	if AddonTable.Band(EB, Enhanced) then
		enhancedStat = avoidance
	end
	if  AddonTable.Band(EB, Base) then
		baseStat = avoidance
	end
	
	HUD:UpdateText(data, format(statFormat, enhancedStat and enhancedStat or baseStat, baseStat))
end

-- Leech
function AddonTable.FunctionList.Leech(HUD, data, options, ...)

	local EB, enhancedStat, baseStat = options.Enhanced_Base
	local statFormat = Double_Percent_Format[EB]	
	local leech = GetLifesteal()
	
	if AddonTable.Band(EB, Enhanced) then
		enhancedStat = leech
	end
	if  AddonTable.Band(EB, Base) then
		baseStat = leech
	end
	
	HUD:UpdateText(data, format(statFormat, enhancedStat and enhancedStat or baseStat, baseStat))
end

-- Speed
function AddonTable.FunctionList.Speed(HUD, data, options, ...)

	local currentSpeed, runSpeed, flightSpeed, swimSpeed = GetUnitSpeed("player")
	local fullSpeed = GetUnitSpeed("player") / 7 * 100
	if fullSpeed == 0 or fullSpeed == 100 then
		speedColor = ""
	elseif fullSpeed < 100 then
		speedColor = "|cffC41E3A"
	elseif fullSpeed > 100 then
		speedColor = "|cff00f26d"
	end
	
	HUD:UpdateText(data, speedColor .. string.format("%d%%", ("%.0f"):format(fullSpeed)))
end
------------------------------------------------
