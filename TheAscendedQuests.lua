-- All quests that give rep with The Ascended
-- Using Wowhead Search - https://www.wowhead.com/quests?filter=1;2407;0
-- Done Feb 16th 2021
local TAQuests = {
	["Glimmerflight"]	= 59865,
	["WANTED: Darkwing"] = 60366,
	["WANTED: Gorgebeak"] = 60315,
	["WANTED: Altered Sentinel"] = 60316,
	["Necrotic Wake: A Paragon's Plight"] = 60057,
	["The Spear of Kalliope"] = 57989,
	["Broken Wings"] = 59262,
	["How to Become Forsworn"] = 57860,
	["Fruit of the Gods"] = 62730,
	["The Sweetest Tribute"] = 62733,
	["More Wings!"] = 59348,
	["You Go First"] = 57966,
	["Feathers of Flight"] = 59263,
	["How to Catch a Glimmerfly"] = 59311,
	["Unshackled Knowledge"] = 59207,
	["Flight Test"] = 60660,
	["Strings and Things"] = 59351,
	["Tough Love"] = 57568,
	["Disturbing the Peace"] = 57538,
	["Phalynx Malfunction"] = 57931,
	["Shadow's Fall"] = 57555,
	["In Agthia's Memory"] = 57549,
	["A Test of Courage"] = 57547,
	["Success Without Soul"] = 58185,
	["On Larion Wings"] = 58042,
	["We Can Rebuild Him"] = 57933,
	["Resource Drain"] = 57932,
	["Distractions for Kala"] = 57545,
	["Laser Location"] = 57935,
	["Larion at Large"] = 58039,
	["Combat Drills"] = 57934,
	["Antiquated Methodology"] = 58184,
	["Part of the Pride"] = 58037,
	["Wicked Gateways"] = 57554,
	["Tactical Formation"] = 57937,
	["Superior Programming"] = 57936,
	["All Natural Chews"] = 58038,
	["Providing for the Pack"] = 58041,
	["On Wounded Wings"] = 57553,
	["With Lance and Larion"] = 58040,
	["Warriors of the Void"] = 57552,
	["Suggested Reading"] = 57712,
	["The Old Ways"] = 60466,
	["More Than A Gift"] = 62715,
	["A Gift for An Acolyte"] = 62714,
}

local addon_name = "TheAscendedQuests"
SLASH_THEASCENDEDQUESTS1 = "/taq" or "/TAQ" or "/theascendedquests" or "/THEASCENDEDQUESTS"

function SlashCmdList.THEASCENDEDQUESTS(arg)

	if arg == "about" then
		print("|cff9482C9Thank you for using |r" .. GetAddOnMetadata(addon_name, "Title") .. " " .. GetAddOnMetadata(addon_name, "Version"))
		print("|cff9482C9Author: |r" .. GetAddOnMetadata(addon_name, "Author"))
	elseif arg == "all" then
		print("|cff40E0D0 All Ascended Quests with Rep Progress|r")
		
		for questname,questid in pairs(TAQuests) do
			if C_QuestLog.IsQuestFlaggedCompleted(questid) == true then
				print(questname .. " - " .. questid .. "- |cff008000 Completed|r")
			elseif C_QuestLog.IsQuestFlaggedCompleted(questid) == false then
				print(questname .. " - " .. questid .. "- |cffff0000 Not Completed|r")
			else
				print("Error at checkQuestComplete")
			end
		end
	else
		print("|cff40E0D0 Incomplete Ascended Quests with Rep Progress|r")
		
		for questname,questid in pairs(TAQuests) do
			if C_QuestLog.IsQuestFlaggedCompleted(questid) == false then
				print(questname .. " - " .. questid .. "- |cffff0000 Not Completed|r")
			end
		end
	end
	
end