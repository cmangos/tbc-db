-- Thanks Neotmiren for researching and fixing

-- Updated loot table of Lady Vespira (rare naga, Darkshore)
-- Source: http://www.wowwiki.com/Lady_Vespira
-- Drop rate from UDB
-- DELETE FROM `creature_loot_template` WHERE `entry` = 7016 AND `item` = 6333; -- handled in reference_loot_template 65139
-- INSERT INTO `creature_loot_template` VALUES (7016, 6333, 60, 2, 1, 1, 0);
-- UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 7016 AND `item` = 6332; -- mutually exclusive group for rare Black Pearl Ring
-- Item 6333 (Spikelash Dagger) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE item IN (6333) AND `entry` != 65139;
-- Updated rank of Lady Vespira (creature 7016) as she is rare but not elite
-- UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 7016; -- already correct

-- Updated loot table of Skhowl (rare yeti, Alterac Mountains)
-- Source: http://www.wowwiki.com/Skhowl
-- Drop rate from UDB
-- DELETE FROM `creature_loot_template` WHERE `entry` = 2452 AND `item` = 3011; -- handled in reference_loot_template 65064
-- INSERT INTO `creature_loot_template` VALUES (2452, 3011, 75, 2, 1, 1, 0);
-- UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 2452 AND `item` = 6331; -- mutually exclusive group for rare Howling Blade
-- Item 3011 (Feathered Headdress) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE item IN (3011) AND `entry` != 65064;
-- Updated rank of Skhowk (creature 2452) as he is rare but not elite
-- UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2452; -- already correct

-- Lo'Grosh (rare ogre, Alterac Mountains)
-- Source: http://www.wowwiki.com/Lo%27Grosh?oldid=538294
-- Drop rate from UDB
-- DELETE FROM `creature_loot_template` WHERE `entry` = 2453 AND `item` = 4810; -- handled in reference_loot_template 65065
-- INSERT INTO `creature_loot_template` VALUES (2453, 4810, 50, 2, 1, 1, 0); -- uncommon Boulder Pads
-- UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 35 WHERE `entry` = 2453 AND `item` = 1678; -- mutually exclusive group for rare Black Ogre Kickers
-- UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 2453 AND `item` = 6327; -- mutually exclusive group for rare The Pacifier
-- Item 4810 (Boulder Pads) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE `item` IN (4810) AND `entry` != 65065;
-- Updated rank of Lo'Grosh (creature 2453) as he is rare but not elite
-- UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2453; -- already correct

-- Mosh'Ogg Butcher (rare elite ogre, Stranglethorn Vale)
-- Source: http://www.wowwiki.com/Mosh%27Ogg_Butcher
DELETE FROM `creature_loot_template` WHERE `entry` = 723 AND `item` IN (1680,60172); -- As this is no raremob anymore at some point, it doesnt have a unique reference_loot_template at the moment

-- Item 1680 (Headchopper) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE `item` IN (1680) AND `entry` != 65281;
-- Updated rank of Mosh'Ogg Butcher (creature 723) as he is rare and elite
-- UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 723; -- not legit via wotlk sniff (rank = 0), i guess they were changed with the Mosh'Ogg Lords in patch 2.3

DELETE FROM `reference_loot_template_names` WHERE `entry` = 65281;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(65281, 'NPC LOOT (Rare NPC Loot) - Mosh''Ogg Butcher - Special Items');

-- Add Ref
DELETE FROM `reference_loot_template` WHERE `entry` = 65281;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(65281, 1680, 20, 0, 1, 1, 0, 'Headchopper'), -- uncommon Headchopper IL 44 [39] 2H-Axe
(65281, 60172, 80, 0, -60172, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 43-47) - (NPC Levels: 44)');

-- Add to creature
DELETE FROM creature_loot_template WHERE entry='723' AND mincountOrRef='-65281';
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('723', '65281', '100', '0', '-65281', '1', '0', 'NPC LOOT (Rare NPC Loot) - Mosh''Ogg Butcher - Special Items');

