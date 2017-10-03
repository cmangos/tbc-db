-- ------------------------------------
-- Available after reaching Friendly with Tranquillien
-- ------------------------------------
UPDATE quest_template SET RequiredMinRepFaction=922, RequiredMinRepValue=3000 WHERE entry=9150; -- Salvaging the Past
UPDATE quest_template SET RequiredMinRepFaction=922, RequiredMinRepValue=3000 WHERE entry=9145; -- Help Ranger Valanna!
UPDATE quest_template SET RequiredMinRepFaction=922, RequiredMinRepValue=3000 WHERE entry=9192; -- Trouble at the Underlight Mines
UPDATE quest_template SET RequiredMinRepFaction=922, RequiredMinRepValue=3000 WHERE entry=9160; -- Investigate An'daroth
UPDATE quest_template SET RequiredMinRepFaction=922, RequiredMinRepValue=3000 WHERE entry=9130; -- Goods from Silvermoon City
UPDATE quest_template SET RequiredMinRepFaction=922, RequiredMinRepValue=3000 WHERE entry=9155; -- Down the Dead Scar
UPDATE quest_template SET RequiredMinRepFaction=922, RequiredMinRepValue=3000, RequiredCondition=10002 WHERE entry=9171; -- Culinary Crunch - Friendly Reputation and Quest 9329 OR Quest 9327 Rewarded

-- ------------------------------------
-- Available after reaching Honored with Tranquillien
-- ------------------------------------
UPDATE quest_template SET RequiredMinRepFaction=922, RequiredMinRepValue=9000 WHERE entry=9173; -- Retaking Windrunner Spire

