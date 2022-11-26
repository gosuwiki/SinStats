local AddName, AddonTable = ...
--local L = AddonTable.RegisterLocale("enUS", default)

--if AddonTable.locale == "enUS" or AddonTable.locale == "enGB" then
local L = AddonTable.RegisterLocale("enUS", true)
-- other locale files use:
-- local L = AddonTable.RegisterLocale(GetLocale())

	------------------
	-- 	HUD 	--
	------------------

L["Green"] = "|cff71ffc9"
L["Red"] = "|cffC41E3A"	
L["TipsAndInfo"] = L["Green"] .. "Tips and Info!|r\n\n"
L["SinLive"] = L["Green"] .. "SinLive™ Stat!\nThis stat is interactive and will scale based on your current target!|r\n\n"
L["Display_AverageTooltip"] = L["Green"] .. "[Average]|r " .. "switches from max values to average values"
L["Display_BasicTooltip"] = L["Green"] .. "[Basic]|r " .. "shows the basic value as displayed on the character panel, without additions"
L["Enhanced_BaseTooltip"] = L["Green"] .. "[Enhanced]|r " .. "provides the best accuracy including talents, buffs, potions, enchants and much more\n" .. L["Green"] .. "[Basic]|r " .. "shows the basic value as displayed on the character panel"
L["Regen_Normal_CastingTooltip"] = L["Green"] .. "[Normal]|r " .. "displays the mana regeneration outside of the 5-second rule, while not casting \n" .. L["Green"] .. "[Casting]|r " .. "displays the mana regeneration while casting"
L["World_RealmTooltip"] = L["Green"] .. "[Realm]|r " .. "displays the average latency of the connection from your computer to the Blizzard server in milliseconds\n" .. L["Green"] .. "[World]|r " .. "displays the in-game latency of the connection from your computer to the Game World"
L["Melee_RangedTooltip"] = L["Green"] .. "[Melee]|r " .. "displays the melee value of this stat\n" .. L["Green"] .. "[Ranged]|r " .. "displays the ranged value of this stat"
L["Equipped_OverallTooltip"] = L["Green"] .. "[Equipped]|r " .. "displays the equipped average item level \n" .. L["Green"] .. "[Overall]|r " .. "displays the overall average item level, including gear in bags"
L["Damage_TakenTooltip"] = L["Green"] .. "[Offense]|r " .. "displays the increase in damage and healing done \n" .. L["Green"] .. "[Defense]|r " .. "displays the decrease in damage taken"
L["Level_HonorPointsTooltip"] = L["Green"] .. "[Level]|r " .. "displays the current honor level \n" .. L["Green"] .. "[Points]|r " .. "displays the total honor earned"
L["Display_RatedTooltip"] = L["Green"] .. "[Rated]|r " .. "option displays the rated honor earned"

L["CritChance"] = "Crit"
L["CritChanceAbrev"] = "Crit"
L["CritChanceMenu"] = "Critical Chance"
L["CritChanceTip"] = ""
L["CritChanceDescription"] = ""

L["Haste"] = "Haste"
L["HasteAbrev"] = "Has"
L["HasteMenu"] = "Haste"
L["HasteTip"] = ""
L["HasteDescription"] = ""

L["Mastery"] = "Mastery"
L["MasteryAbrev"] = "Mas"
L["MasteryMenu"] = "Mastery"
L["MasteryTip"] = ""
L["MasteryDescription"] = ""

L["Versatility"] = "Versatility"
L["VersatilityAbrev"] = "Ver"
L["VersatilityMenu"] = "Versatility"
L["VersatilityTip"] = ""
L["VersatilityDescription"] = ""

L["Avoidance"] = "Avoidance"
L["AvoidanceAbrev"] = "Mas"
L["AvoidanceMenu"] = "Avoidance"
L["AvoidanceTip"] = ""
L["AvoidanceDescription"] = ""

L["Leech"] = "Leech"
L["LeechAbrev"] = "Lee"
L["LeechMenu"] = "Leech"
L["LeechTip"] = ""
L["LeechDescription"] = ""

L["Strength"] = "Strength"
L["StrengthAbrev"] = "Str"
L["StrengthMenu"] = "Strength"
L["StrengthTip"] = ""
L["StrengthDescription"] = L["TipsAndInfo"] .. "A red " .. L["Red"] .. "Strength|r text indicates that you are affected by a debuff"

L["Agility"] = "Agility"
L["AgilityAbrev"] = "Agi"
L["AgilityMenu"] = "Agility"
L["AgilityTip"] = ""
L["AgilityDescription"] = L["TipsAndInfo"] .. "A red " .. L["Red"] .. "Agility|r text indicates that you are affected by a debuff"

L["AP"] = "AP"
L["APAbrev"] = "AP"
L["APMenu"] = "Attack Power"
L["APTip"] = ""
L["APDescription"] = L["TipsAndInfo"] .. "A red " .. L["Red"] .. "Attack Power|r text indicates that you are affected by a debuff"

L["DMG"] = "Damage"
L["DMGAbrev"] = "DMG"
L["DMGMenu"] = "Damage"
L["DMGTip"] = ""
L["DMGDescription"] = L["TipsAndInfo"] .. "A red " .. L["Red"] .. "Damage|r text indicates that you are affected by a debuff related to this stat\nThis stat automatically detects if you're wielding a 1H or 2H and displays the stat accordingly"

L["weaponSpeed"] = "Atk Speed"
L["weaponSpeedAbrev"] = "As"
L["weaponSpeedMenu"] = "Weapon Speed"
L["weaponSpeedTip"] = ""
L["weaponSpeedDescription"] = L["TipsAndInfo"] .. "This stat automatically detects if you're wielding a 1H or 2H and displays the stat accordingly"

L["EnergyRegen"] = "Energy Regen"
L["EnergyRegenAbrev"] = "EnR"
L["EnergyRegenMenu"] = "Energy Regen"
L["EnergyRegenTip"] = ""
L["EnergyRegenDescription"] = ""

L["Stamina"] = "Stamina"
L["StaminaAbrev"] = "Sta"
L["StaminaMenu"] = "Stamina"
L["StaminaTip"] = ""
L["StaminaDescription"] = L["TipsAndInfo"] .. "A red " .. L["Red"] .. "Stamina|r text indicates that you are affected by a debuff related to this stat"

L["Armor"] = "Armor"
L["ArmorAbrev"] = "Arm"
L["ArmorMenu"] = "Armor"
L["ArmorTip"] = ""
L["ArmorDescription"] = L["TipsAndInfo"] .. "A red " .. L["Red"] .. "Armor|r text indicates that you are affected by a debuff related to this stat"

L["Dodge"] = "Dodge"
L["DodgeAbrev"] = "Dod"
L["DodgeMenu"] = "Dodge"
L["DodgeTip"] = ""
L["DodgeDescription"] = ""

L["Parry"] = "Parry"
L["ParryAbrev"] = "Par"
L["ParryMenu"] = "Parry"
L["ParryTip"] = ""
L["ParryDescription"] = ""

L["Block"] = "Block"
L["BlockAbrev"] = "Blo"
L["BlockMenu"] = "Block"
L["BlockTip"] = ""
L["BlockDescription"] = ""

L["Absorb"] = "Absorb"
L["AbsorbAbrev"] = "Abs"
L["AbsorbMenu"] = "Absorb"
L["AbsorbTip"] = ""
L["AbsorbDescription"] = ""

L["Stagger"] = "Stagger"
L["StaggerAbrev"] = "Stag"
L["StaggerMenu"] = "Stagger"
L["StaggerTip"] = ""
L["StaggerDescription"] = ""

L["Intellect"] = "Intellect"
L["IntellectAbrev"] = "Int"
L["IntellectMenu"] = "Intellect"
L["IntellectTip"] = ""
L["IntellectDescription"] = L["TipsAndInfo"] .. "A red " .. L["Red"] .. "Intellect|r text indicates that you are affected by a debuff"

L["SpellPower"] = "Spell"
L["SpellPowerAbrev"] = "Sp"
L["SpellPowerMenu"] = "Spell Power"
L["SpellPowerTip"] = ""
L["SpellPowerDescription"] = ""

L["Healing"] = "Healing"
L["HealingAbrev"] = "Heal"
L["HealingMenu"] = "Healing Power"
L["HealingTip"] = ""
L["HealingDescription"] = ""

L["ManaRegen"] = "Mana Regen"
L["ManaRegenAbrev"] = "MR"
L["ManaRegenMenu"] = "Mana Regen"
L["ManaRegenTip"] = ""
L["ManaRegenDescription"] = ""

L["Durability"] = "Durability"
L["DurabilityAbrev"] = "Dur"
L["DurabilityMenu"] = "Durability"
L["DurabilityTip"] = ""
L["DurabilityDescription"] = L["TipsAndInfo"] .. "Durability percentage of your currently equipped gear and weapons"

L["Speed"] = "Speed"
L["SpeedAbrev"] = "Spe"
L["SpeedMenu"] = "Speed"
L["SpeedTip"] = ""
L["SpeedDescription"] = L["TipsAndInfo"] .. "The current movement speed of your character, in real-time.\n\nA red " .. L["Red"] .. "Speed|r value indicates that you are affected by slowing effects or moving at a slower speed than normal"

L["TargetSpeed"] = "Target Speed"
L["TargetSpeedAbrev"] = "Spe+"
L["TargetSpeedMenu"] = "Target Speed"
L["TargetSpeedTip"] = ""
L["TargetSpeedDescription"] = L["TipsAndInfo"] .. "The current movement speed of your target, in real-time\n\n" .. L["Red"] .. "Speed|r value in red indicates that your target is affected by slowing effects or moving at a slower speed than normal"

L["ItemLevel"] = "Item Level"
L["ItemLevelAbrev"] = "iLvl"
L["ItemLevelMenu"] = "Item Level"
L["ItemLevelTip"] = ""
L["ItemLevelDescription"] = L["TipsAndInfo"] .. "Average item level"

L["Honor"] = "Honor"
L["HonorAbrev"] = "Hon"
L["HonorMenu"] = "Honor"
L["HonorTip"] = ""
L["HonorDescription"] = L["TipsAndInfo"] .. "Displays your honor level, honor earned or both"

L["Lag"] = "Ping"
L["LagAbrev"] = "Ping"
L["LagMenu"] = "Ping"
L["LagTip"] = ""
L["LagDescription"] = L["TipsAndInfo"] .. "Connection latency (Ping)"

L["FPS"] = "FPS"
L["FPSAbrev"] = "FPS"
L["FPSMenu"] = "FPS"
L["FPSTip"] = ""
L["FPSDescription"] = L["TipsAndInfo"] .. "Frames per second [FPS]"

L["Gold"] = "Gold"
L["GoldAbrev"] = "G"
L["GoldMenu"] = "Money"
L["GoldTip"] = ""
L["GoldDescription"] = L["TipsAndInfo"] .. "Total amount of money in your character's possession"


-- Fonts
L["Default Font"] = "Arial Narrow"
L["Thin"] = "Thin"
L["Thick"] = "Thick"
L["Monochrome"] = "Monochrome"
L["Thin Monochrome"] = "Thin Monochrome"
L["Thick Monochrome"] = "Thick Monochrome"
L["None"] = "None"



------------------
--    Config    --
------------------

-- Settings tabs
L["HUDMenu"] = "HUD"
L["FontsMenu"] = "Fonts"
L["DisplayMenu"] = "Display"
L["EventsMenu"] = "Events"
L["ProfilesMenu"] = "Profiles"

-- Settings HUD
L["SettingsDescription"] = ""
L["HideHUD"] = "Hide"
L["HideHUDTip"] = "Hide stats HUD"
L["LockHUD"] = "Lock"
L["LockHUDTip"] = "Lock stats HUD"
L["PanelDisplay"] = "Attach"
L["PanelDisplayTip"] = "Attach to Character panel"
L["ResetPosition"] = "Reset HUD Position"
L["ResetPositionTip"] = "Reset the stats HUD's position"
L["MinimapGroupText"] = "Minimap"
L["Minimap"] = "Show"
L["MinimapTip"] = "Show or Hide the Minimap button. Hover to see quick access options"
L["HUDStrataTip"] = "Stats Frame Strata"
L["Low"] = "Low"
L["Medium"] = "Medium"
L["High"] = "High"
L["Highest"] = "Highest"

-- Fonts Settings
L["StatFontTip"] = "Fonts"
L["StatFontSizeTip"] = "Font Size"
L["StatFontFlagsTip"] = "Outline"

-- Display Settings
-- L["StatIconsTip"] = "Stats icons"
-- L["StatIcons"] = "Enable"
-- L["StatTextAbreviateTip"] = "Abbreviate stats"
-- L["StatTextAbreviate"] = "Enable"
-- L["StatTextCapsTip"] = "All caps stats"
-- L["StatTextCaps"] = "Enable"
-- L["GroupOrderTip"] = "Order stats by group"
-- L["GroupOrder"] = "Enable"

-- Display Settings
L["StatIconsTip"] = ""
L["StatIcons"] = "Stats icons"
L["StatTextAbreviateTip"] = ""
L["StatTextAbreviate"] = "Abbreviate stats"
L["StatTextCapsTip"] = ""
L["StatTextCaps"] = "All caps stats"
L["GroupOrderTip"] = ""
L["GroupOrder"] = "Order stats by group"
L["VerticalGroupText"] = "Alignment and Spacing"
L["VerticalTip"] = "Vertical & Horizontal"
L["Vertical"] = "Vertical"
L["StatSpacingHTip"] = "Horizontal Spacing"
L["StatSpacingVTip"] = "Vertical Spacing"
L["StatAlignmentTip"] = "Alignment"
L["StatRowsTip"] = "Rows"

-- Events
L["EventEnable"] = "Enable"
L["EventEnableTip"] = "Enable HUD Events to restrict the stats HUD to only be visible during the selected events. In Combat event has the highest priority"
L["EventWorld"] = "Open World"
L["EventWorldTip"] = L["Green"] .. "HUD Events"
L["EventDungeon"] = "Dungeons"
L["EventDungeonTip"] = ""
L["EventRaid"] = "Raids"
L["EventRaidTip"] = ""
L["EventPvP"] = "Battlegrounds"
L["EventPvPTip"] = ""
L["EventArena"] = "Arena"
L["EventArenaTip"] = ""
L["EventCombat"] = "In Combat"
L["EventCombatTip"] = ""

-- Minimap
L["LeftClick"] = "Quick Access"
L["OpenClose"] = ""
L["RightClick"] = "Right Click"
L["EnableDisable"] = "|cffFFF468Enable/Disable|r the HUD"
L["ShiftRightClick"] = "Shift + Right Click"
L["UnlockHUD"] = "|cffFFF468Lock/Unlock|r the HUD"
L["ControlClick"] = "Ctrl + Right Click"
L["AttachPanel"] = "|cffFFF468Attach|r the HUD to character panel"
L["AltClick"] = "Alt + Right Click"
L["DetachPanel"] = "|cffFFF468Detach|r the HUD from character panel"

-- Settings Profile
L["Selected"] = "Apply"
L["SelectProfile"] = "Manage your profiles: Select, Create, Copy or Delete. \nProfiles used by a character cannot be deleted. A different profile must be selected first."
L["ProfileSelected"] = "Profiles"
L["ProfileUsed"] = "Profile is currently in use, unable to delete!"
L["NewProfile"] = "Create New Profile"
L["CurrentProfile"] = "Active Profile"
L["Copy"] = "Apply"
L["Delete"] = "Delete"
L["ConfirmDelete"] = "Confirm"
L["Cancel"] = "Cancel"
L["ProfileCopyDelete"] = "Select, delete or copy to new profile."

-- Settings Options
L["OptionsTip"] = "Extended Options"
L["Show"] = "Show"
L["ShowTip"] = ""
L["Enhanced"] = "Enhanced"
L["Base"] = "Basic"
L["Damage"] = "Offense"
L["DamageTaken"] = "Defense"
L["World"] = "World"
L["Realm"] = "Realm"
L["Average"] = "Average"
L["Level"] = "Level"
L["Honor"] = "Honor"
L["Both"] = "Both"

L["Settings"] = "Settings"
L["SettingsDescription"] = ""

L["Physical"] = "Physical"
L["PhysicalDescription"] = ""

L["Enhancement"] = "Enhancement"
L["EnhancementDescription"] = ""

L["Spell"] = "Spell"
L["SpellDescription"] = ""

L["Misc"] = "Misc"
L["MiscDescription"] = ""

L["Display_Average"] = "Average"
L["Display_AverageTip"] = ""

L["Display_Rated"] = "Rated"
L["Display_RatedTip"] = ""
