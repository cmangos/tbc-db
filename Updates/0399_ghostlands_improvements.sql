-- =======
-- General
-- =======

DELETE FROM `creature` WHERE `guid` = 91567; -- d.86851 "Blood Elf Commoner [Entry 19169]"

-- https://tbc.wowhead.com/item=4290/dust-bowl
DELETE FROM `reference_loot_template` WHERE `item` = 4290 AND `entry` IN (60113,60114,60115,60116,60117,60118,60119,60120,60121,60122,60123);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(832, 4290, 1.5, 9, 1, 1, 0, 'Dust Bowl'); -- Dust Devil only (template shows alot of items that dont belong in general npc loot)

-- https://tbc.wowhead.com/item=2899/wendigo-collarv
DELETE FROM `reference_loot_template` WHERE `item` = 2899;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1271, 2899, 4, 9, 1, 1, 0, 'Wendigo Collar'); -- Old Icebeard only

-- only hold white shoulder slot items, having these at 5% is way too high. Should be Values around 0.5 to 2%
-- 60423	NPC LOOT (White World Drop) - (Item Levels: 15-21) - (NPC Levels: 16-17)
-- 60440	NPC LOOT (White World Drop) - (Item Levels: 24) - (NPC Levels: 25)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `mincountOrRef` BETWEEN -60440 AND -60423 AND `entry` != 14682; -- 611 Lines in tbcmangos

UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` IN (2287,1179,4605); -- corrupted by chestloot mixed into creature loot

-- ===========================
-- Improve Ghostlands Leveling
-- ===========================

-- Quartermaster Lymel 16187
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 432 AND `item` = 159; -- Refreshing Spring Water
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 432 AND `item` = 1179; -- Ice Cold Milk
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 432 AND `item` = 4496; -- Small Brown Pouch
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 432 AND `item` = 4498; -- Brown Leather Satchel
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 432 AND `item` = 2512; -- Rough Arrow
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 432 AND `item` = 2515; -- Sharp Arrow
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 432 AND `item` = 2516; -- Light Shot
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 432 AND `item` = 2519; -- Heavy Shot
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 432 AND `item` = 4470; -- Simple Wood
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 432 AND `item` = 4471; -- Flint and Tinder
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 432 AND `item` = 5042; -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 432 AND `item` = 25861; -- Crude Throwing Axe
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` = 432 AND `item` = 29007; -- Weighted Throwing Axe
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 432 AND `item` = 28979; -- Light Throwing Knife
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 432 AND `item` = 25872; -- Balanced Throwing Dagger

-- Arcanist Vandril 16197
-- Pathing for Arcanist Vandril Entry: 16197 'CMaNGOS FORMAT' 
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = 7643.588, `position_y` = -6804.5483, `position_z` = 79.20106 WHERE `id` = 16197;
DELETE FROM `creature_movement` WHERE `id` = 81722;
DELETE FROM `creature_movement_template` WHERE `Entry` = 16197;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(16197, 1, 7643.588, -6804.5483, 79.20106, 100, 0, 0),
(16197, 2, 7642.384, -6811.481, 78.97755, 100, 0, 0),
(16197, 3, 7642.4478, -6819.272, 79.4463, 100, 0, 0); -- texts? -> ai

DELETE FROM `dbscript_random_templates` WHERE `id`= 10199; -- https://www.youtube.com/watch?v=I4mtBZZ-Ai8
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(10199, 0, 12408, 0, 'Arcanist Vandril 16197 - OOC Texts'), -- 12408	Where's that courier?
(10199, 0, 12409, 0, 'Arcanist Vandril 16197 - OOC Texts'), -- 12409	What word from Silvermoon?  The courier is late!
(10199, 0, 12410, 0, 'Arcanist Vandril 16197 - OOC Texts'), -- 12410	Where is the messenger from the regent lord?
(10199, 0, 12411, 0, 'Arcanist Vandril 16197 - OOC Texts'), -- 12411	I don't have all day to wait out here for that message. There are things that Dame Auriferous has tasked me with seeing to!
(10199, 0, 12412, 0, 'Arcanist Vandril 16197 - OOC Texts'), -- 12412	The hour runs late. The message from Silvermoon City is delayed for some reason.
(10199, 0, 12413, 0, 'Arcanist Vandril 16197 - OOC Texts'), -- 12413	The courier from Silvermoon City is delayed. Perhaps I should send a scout to look for him?
(10199, 0, 12414, 0, 'Arcanist Vandril 16197 - OOC Texts'), -- 12414	At this rate I'm going to pace a rut into the road. I hope the messenger from Kalecgos arrives soon.
(10199, 0, 12415, 0, 'Arcanist Vandril 16197 - OOC Texts'), -- 12415	Whatever the courier delivers, I hope that it's good news.
(10199, 0, 12416, 0, 'Arcanist Vandril 16197 - OOC Texts'); -- 12416	$C, you didn't happen to see a courier on your way here? We are awaiting word from Silvermoon City and their messenger is late!

-- Apothecary Thedra 16196
-- Courier Dawnstrider 16183 - Half Dead Bloodelfs & Doctors dont attack people
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2 WHERE `entry` IN (16196,16183);

-- Rathis Tomber (16224)
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 112 AND `item` = 7005;
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 112 AND `item` = 5956;
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 112 AND `item` = 2901;
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 112 AND `item` = 6256;
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 112 AND `item` = 6217;
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 112 AND `item` = 3371;
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 112 AND `item` = 2320;
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 112 AND `item` = 2321;
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 112 AND `item` = 2678;
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 112 AND `item` = 2692;
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 112 AND `item` = 2880;
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 112 AND `item` = 4289;
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` = 112 AND `item` = 6529;
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 112 AND `item` = 6530;
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 112 AND `item` = 2605;
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` = 112 AND `item` = 6260;
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `entry` = 112 AND `item` = 2604;
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `entry` = 112 AND `item` = 2324;
-- guessed
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 16224 AND `item` = 5771; --  Pattern: Red Linen Bag
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 16224 AND `item` = 954; --  Scroll of Strength
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 16224 AND `item` = 955; --  Scroll of Intellect
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 16224 AND `item` = 1180; --  Scroll of Stamina
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 16224 AND `item` = 1181; --  Scroll of Spirit
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 16224 AND `item` = 3012; --  Scroll of Agility
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 16224 AND `item` = 3013; --  Scroll of Protection
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 16224 AND `item` = 2770; --  Copper Ore
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 16224 AND `item` = 2771; --  Tin Ore
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 16224 AND `item` = 2775; --  Silver Ore
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 16224 AND `item` = 765; --  Silverleaf
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16224 AND `item` = 785; --  Mageroyal
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 16224 AND `item` = 2447; --  Peacebloom
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 16224 AND `item` = 2449; --  Earthroot
UPDATE `npc_vendor` SET `slot` = 15 WHERE `entry` = 16224 AND `item` = 2453; --  Bruiseweed
UPDATE `npc_vendor` SET `slot` = 16 WHERE `entry` = 16224 AND `item` = 6530; --  Nightcrawlers
UPDATE `npc_vendor` SET `slot` = 17 WHERE `entry` = 16224 AND `item` = 2321; --  Fine Thread
UPDATE `npc_vendor` SET `slot` = 18 WHERE `entry` = 16224 AND `item` = 2605; --  Green Dye
UPDATE `npc_vendor` SET `slot` = 19 WHERE `entry` = 16224 AND `item` = 2692; --  Hot Spices
UPDATE `npc_vendor` SET `slot` = 20 WHERE `entry` = 16224 AND `item` = 20815; --  Jeweler's Kit
UPDATE `npc_vendor` SET `slot` = 21 WHERE `entry` = 16224 AND `item` = 20824; --  Simple Grinder

-- Master Chef Mouldier (16253)
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 16253 AND `item` = 22647; -- Recipe: Crunchy Spider Surprise
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 16253 AND `item` = 27687; -- Recipe: Bat Bites
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 119 AND `item` = 159; -- Refreshing Spring Water
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 119 AND `item` = 30817; -- Simple Flour
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 119 AND `item` = 2678; -- Mild Spices
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 119 AND `item` = 2692; -- Hot Spices
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 119 AND `item` = 3713; -- Soothing Spices
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 119 AND `item` = 21099; -- Recipe: Smoked Sagefish
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 119 AND `item` = 21219; -- Recipe: Sagefish Delight

-- Eralan (16268)
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 123 AND `item` = 5060; -- Thieves' Tools
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 123 AND `item` = 3371; -- Empty Vial
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 123 AND `item` = 3372; -- Leaded Vial
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 123 AND `item` = 8925; -- Crystal Vial
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 123 AND `item` = 5140; -- Flash Powder
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 123 AND `item` = 2928; -- Dust of Decay
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 123 AND `item` = 3777; -- Lethargy Root
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 123 AND `item` = 8924; -- Dust of Deterioration
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 123 AND `item` = 2930; -- Essence of Pain
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 123 AND `item` = 8923; -- Essence of Agony
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 123 AND `item` = 5173; -- Deathweed
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 123 AND `item` = 2931; -- Maiden's Anguish

-- Narina (16274)
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 16274;
DELETE FROM `npc_vendor` WHERE `entry` = 16274;

INSERT INTO `npc_vendor` (`entry`, `item`, `slot`) VALUES
(16274, 2504, 6),(16274, 2505, 7),(16274, 2506, 8),(16274, 2507, 9),
(16274, 2512, 3),(16274, 2515, 4),(16274, 3026, 10),(16274, 3027, 11),
(16274, 3030, 5),(16274, 5439, 1),(16274, 11362, 2);
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 5441; -- Small Shot Pouch
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 2509; -- Ornate Blunderbuss
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 2511; -- Hunter's Boomstick
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 2516; -- Light Shot
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 2519; -- Heavy Shot
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 3023; -- Large Bore Blunderbuss
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 16274 AND `item` = 3033; -- Solid Shot

-- ========
-- Deadscar
-- ========
-- Risen Creeper 16300
UPDATE `creature_template` SET `modelid1` = 2676, `modelid2` = 1200, `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16300;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16300, 774, 0.5, 0, 1, 1, 0, 'Malachite'),
(16300, 50600, 0.5, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Risen Hungerer 16301
-- https://web.archive.org/web/20080228044732/http://wow.allakhazam.com/db/mob.html?wmob=16301
-- https://web.archive.org/web/20140905081856/http://www.wowhead.com/npc=16301
UPDATE `creature_template` SET `modelid1` = 1201, `modelid2` = 1197, `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16301;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50610) AND `entry` = 16301;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16301, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16301, 774, 0.3, 0, 1, 1, 0, 'Malachite'),
(16301, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem');

-- Risen Stalker 16302
-- https://web.archive.org/web/20080302042307/http://wow.allakhazam.com/db/mob.html?wmob=16302
-- https://web.archive.org/web/20140905081901/http://www.wowhead.com:80/npc=16302
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16302;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50610,2409,2881,4293,4346) AND `entry` = 16302;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16302, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16302, 1210, 0.3, 0, 1, 1, 0, 'Shadowgem'),
(16302, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `reference_loot_template` WHERE `entry` = 50503;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 50503, `entry`, 0, 1 FROM `item_template` WHERE `entry` IN (
-- 50502 is included in 50503, hence the confusion about the range.
-- 1%
2406, -- Pattern: Fine Leather Boots
2407, -- Pattern: White Leather Jerkin
2408, -- Pattern: Fine Leather Gloves
2553, -- Recipe: Elixir of Minor Agility
2555, -- Recipe: Swiftness Potion
2598, -- Pattern: Red Linen Robe
3609, -- Plans: Copper Chain Vest
3610, -- Plans: Gemmed Copper Gauntlets
4408, -- Schematic: Mechanical Squirrel
6271, -- Pattern: Red Linen Vest
6342, -- Formula: Enchant Chest - Minor Mana
7288, -- Pattern: Rugged Leather Pants
-- 2.75%
6344, -- Formula: Enchant Bracer - Minor Spirit	60
2881, -- Plans: Runed Copper Breastplate	80
6347, -- Formula: Enchant Bracer - Minor Strength	80
6348, -- Formula: Enchant Weapon - Minor Beastslayer	90
6663, -- Recipe: Elixir of Giant Growth	90
4292, -- Pattern: Green Woolen Bag	95
4345, -- Pattern: Red Woolen Boots	95
2409, -- Pattern: Dark Leather Tunic	100
4293, -- Pattern: Hillman's Leather Vest	100
4346, -- Pattern: Heavy Woolen Cloak	100
4409, -- Schematic: Small Seaforium Charge	100
6716, -- Schematic: EZ-Thro Dynamite	100
2601, -- Pattern: Gray Woolen Robe	105
5972, -- Pattern: Fine Leather Pants	105

3393, -- Recipe: Minor Magic Resistance Potion	110
11038, -- Formula: Enchant 2H Weapon - Lesser Spirit	110
11039, -- Formula: Enchant Cloak - Minor Agility	110
11081, -- Formula: Enchant Shield - Lesser Protection	115
3394, -- Recipe: Potion of Curing	120
4294, -- Pattern: Hillman's Belt	120
4347, -- Pattern: Reinforced Woolen Shoulders	120
4410, -- Schematic: Shadow Goggles	120
6375, -- Formula: Enchant Bracer - Lesser Spirit	120
6390, -- Pattern: Stylish Blue Shirt	120
6391, -- Pattern: Stylish Green Shirt	120
7360, -- Pattern: Dark Leather Gloves	120
10316, -- Pattern: Colorful Kilt	120
2882, -- Plans: Silvered Bronze Shoulders	125
2883, -- Plans: Deadly Bronze Poniard	125
4348, -- Pattern: Phoenix Gloves	125
4349, -- Pattern: Phoenix Pants	125
5578 -- Plans: Silvered Bronze Breastplate	130
);
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `entry` = 50503 AND `item` IN (2406,2407,2408,2553,2555,2598,3609,3610,4408,6271,6342,7288);
REPLACE INTO `reference_loot_template_names` VALUES (50503, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `reference_loot_template` WHERE `entry` = 50505 AND `item` IN (6344,2881,6347,6348,6663,4292,4345,2409,4293,4346,4409,6716,2601,5972,3393,11038,11039,11081,3394,4294,4347,4410,6375,6390,6391,7360,10316,2882,2883,4348,4349,5578);
UPDATE `reference_loot_template_names` SET `name` = 'LOOT (World Drop) - (RequiredSkillRank: 130-300 (Profession Recipes)) - (NPC Levels ~20-63) (Split me up)' WHERE `entry` = 50505;

UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 5-10)' WHERE `entry` = 50502;

-- Dreadbone Skeleton 16303 - only spellsummoned have higher level then db value.
-- https://web.archive.org/web/20080302143549/http://wow.allakhazam.com/db/mob.html?wmob=16303
-- https://web.archive.org/web/20130211184124/http://www.wowhead.com/npc=16303#drops:mode=noteworthy:50-16+1
UPDATE `creature_template` SET `MaxLevel` = 11, `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576, `CallForHelp` = 5 WHERE `entry` = 16303;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502) AND `entry` = 16303;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16303, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16303, 774, 0.5, 0, 1, 1, 0, 'Malachite'),
(16303, 818, 0.4, 0, 1, 1, 0, 'Tigerseye'),
(16303, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16303, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Dreadbone Sentinel 16305
-- https://web.archive.org/web/20121027164553/http://www.wowhead.com/npc=16305#drops:50+1
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16305;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502,2409,4292,4293,4294,4345,4347,6347,6348,6716,11038) AND `entry` = 16305;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16305, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16305, 1210, 0.3, 0, 1, 1, 0, 'Shadowgem'),
(16305, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Deathcage Scryer 16307
-- https://web.archive.org/web/20080228143534/http://wow.allakhazam.com/db/mob.html?wmob=16307
-- https://web.archive.org/web/20121027164553/http://www.wowhead.com/npc=16307#drops:mode=noteworthy:0+1
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|(4096+1048576) WHERE `entry` = 16307;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502) AND `entry` = 16307;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16307, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16307, 50503, 0.3, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Deathcage Sorcerer 16308
-- https://web.archive.org/web/20080228210107/http://wow.allakhazam.com/db/mob.html?wmob=16308
-- https://web.archive.org/web/20140321092736/http://www.wowhead.com/npc=16308
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|(4096+1048576) WHERE `entry` = 16308;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502,2882,4409,6347) AND `entry` = 16308;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16308, 1210, 0.3, 0, 1, 1, 0, 'Shadowgem'),
(16308, 818, 0.1, 0, 1, 1, 0, 'Tigerseye'),
(16308, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16308, 50503, 0.3, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16308, 50600, 0.75, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(16308, 60003, 9, 0, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)'),
(16308, 60119, 2, 0, -60119, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 16-21) - (NPC Levels: 17-18)'),
(16308, 60425, 5, 0, -60425, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 18-21) - (NPC Levels: 17-18)'),
(16308, 60442, 0.5, 0, -60441, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)');

-- Gangled Cannibal 16309
-- https://web.archive.org/web/20080228044739/http://wow.allakhazam.com/db/mob.html?wmob=16309
-- https://web.archive.org/web/20140224041856/http://www.wowhead.com/npc=16309#drops:150-17+1
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (7 / 7), `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16309;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502,2881,4293,6347) AND `entry` = 16309;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16309, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16309, 774, 0.1, 0, 1, 1, 0, 'Malachite'),
(16309, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16309, 50503, 0.3, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Phantasmal Watcher 16311
-- https://web.archive.org/web/20080302112105/http://wow.allakhazam.com/db/mob.html?wmob=16311
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|(4096+1048576) WHERE `entry` = 16311;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502) AND `entry` = 16311;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16311, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16311, 774, 0.1, 0, 1, 1, 0, 'Malachite'),
(16311, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16311, 50503, 0.3, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16311, 50600, 0.75, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(16311, 60002, 9, 0, -60002, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)'),
(16311, 60111, 2, 0, -60111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)'),
(16311, 60442, 0.5, 0, -60441, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)');

DELETE FROM `creature` WHERE `id` IN (16300,16303,16301,16309,16302,16305);
DELETE FROM `creature` WHERE `guid` BETWEEN 5303731 AND 5303820;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303731, 16300, 530, 7889.64, -6681.77, 40.73, 5.17795, 300, 300, 10, 1), -- 16303
(5303732, 16300, 530, 7897.45, -6700.66, 38.2828, 2.83917, 300, 300, 10, 1), -- 16303
(5303733, 16300, 530, 7910.77, -6682.72, 43.280, 5.6176, 300, 300, 10, 1), -- 16303
(5303734, 16300, 530, 7812.67, -6645.41, 24.7233, 3.69274, 300, 300, 10, 1), -- 16303
(5303735, 16300, 530, 7819.83, -6620.99, 27.69, 5.34535, 300, 300, 10, 1), -- 16303
(5303736, 16300, 530, 7712.58, -6640.83, 10.56, 5.58219, 300, 300, 10, 1), -- 16303
(5303737, 16300, 530, 7721.75, -6623.67, 11.5083, 2.23304, 300, 300, 10, 1), -- 16303
(5303738, 16300, 530, 7782.47, -6634.35, 25.2338, 1.06379, 300, 300, 10, 1), -- 16303
(5303739, 16303, 530, 7840.92, -6642.66, 30.3298, 2.03195, 300, 300, 10, 1), -- 16300
(5303740, 16303, 530, 7750.11, -6627.93, 21.8124, 1.0509, 300, 300, 10, 1), -- 16300
(5303741, 16303, 530, 7757.49, -6642.58, 21.0889, 5.40181, 300, 300, 10, 1), -- 16300
(5303742, 16303, 530, 7911.12, -6711.19, 41.2316, 4.62725, 300, 300, 10, 1), -- 16300
(5303743, 16300, 530, 7887.19, -6643.72, 39.4283, 1.56298, 300, 300, 10, 1),
(5303744, 16300, 530, 7688.48, -6607.1, 10.5279, 0.944266, 300, 300, 10, 1),
(5303745, 16300, 530, 7747.31, -6585.14, 14.41, 4.99243, 300, 300, 10, 1),
(5303746, 16303, 530, 7942.10, -6678.87, 53.056, 0.316744, 300, 300, 10, 1),
(5303747, 16303, 530, 7850.89, -6689.16, 19.01, 2.14322, 300, 300, 10, 1),
(5303748, 16303, 530, 7912.31, -6653.75, 46.31, 1.93205, 300, 300, 10, 1),
(5303749, 16303, 530, 7714.31, -6578.87, 13.21, 6.01936, 300, 300, 10, 1),
(5303750, 16303, 530, 7723.04, -6587.04, 14.3537, 5.11138, 300, 300, 10, 1),
(5303751, 16303, 530, 7785.25, -6617.27, 23.61, 5.97047, 300, 300, 10, 1),
(5303752, 16301, 530, 7515.75, -6581.70, 9.87, 5.9785, 300, 300, 10, 1), -- 16309
(5303753, 16301, 530, 7482.39, -6561.17, 10.3657, 2.88916, 300, 300, 10, 1), -- 16309
(5303754, 16301, 530, 7541.94, -6590.83, 11.5973, 3.79072, 300, 300, 10, 1), -- 16309
(5303755, 16301, 530, 7617.04, -6582.54, 14.01, 2.27134, 300, 300, 10, 1), -- 16309
(5303756, 16301, 530, 7316.79, -6549.70, 10.94, 0.178631, 300, 300, 10, 1), -- 16309
(5303757, 16301, 530, 7419.12, -6546.12, 11.4786, 5.15593, 300, 300, 10, 1), -- 16309
(5303758, 16301, 530, 7556.18, -6595.69, 11.8128, 1.52736, 300, 300, 10, 1), -- 16309
(5303759, 16301, 530, 7515.47, -6609.47, 9.52, 0.19057, 300, 300, 10, 1), -- 16309
(5303760, 16301, 530, 7586.52, -6582.37, 14.33, 1.92153, 300, 300, 10, 1), -- 16309
(5303761, 16301, 530, 7551.3, -6583.67, 12.5211, 0.680678, 300, 300, 10, 1), -- 16309
(5303762, 16301, 530, 7354.25, -6583.14, 10.07, 1.46899, 300, 300, 10, 1), -- 16309
(5303763, 16309, 530, 7253.6, -6549.31, 14.8441, 2.09077, 300, 300, 10, 1), -- 16301
(5303764, 16309, 530, 7283.54, -6581.05, 14.5094, 5.20635, 300, 300, 10, 1), -- 16301
(5303765, 16309, 530, 7327.2, -6522.6, 13.6942, 0.169313, 300, 300, 10, 1), -- 16301
(5303766, 16309, 530, 7358.7, -6548.32, 12.5225, 5.74603, 300, 300, 10, 1), -- 16301
(5303767, 16309, 530, 7452.48, -6586.72, 10.3211, 4.20766, 300, 300, 10, 1), -- 16301
(5303768, 16309, 530, 7584.39, -6614.91, 11.02, 3.3202, 300, 300, 10, 1), -- 16301
(5303769, 16301, 530, 7553.06, -6616.18, 11.01, 3.66777, 300, 300, 10, 1),
(5303770, 16301, 530, 7226.93, -6502.93, 10.67, 1.17989, 300, 300, 10, 1),
(5303771, 16301, 530, 7482.25, -6582.09, 9.88644, 0.681211, 300, 300, 10, 1),
(5303772, 16301, 530, 7605.18, -6562.73, 13.8426, 5.53916, 300, 300, 10, 1),
(5303773, 16301, 530, 7281.93, -6544.78, 11.7742, 2.12274, 300, 300, 10, 1),
(5303774, 16301, 530, 7322.01, -6582.67, 9.86694, 1.639, 300, 300, 10, 1),
(5303775, 16301, 530, 7423.64, -6584.93, 10.32, 4.03869, 300, 300, 10, 1),
(5303776, 16301, 530, 7618.18, -6614.89, 14.41, 6.12371, 300, 300, 10, 1),
(5303777, 16301, 530, 7587.32, -6556.01, 14.0612, 4.32842, 300, 300, 10, 1),
(5303778, 16301, 530, 7382.79, -6550.02, 12.27, 0.286284, 300, 300, 10, 1),
(5303779, 16301, 530, 7214.9, -6515.68, 10.2427, 3.92569, 300, 300, 10, 1),
(5303780, 16309, 530, 7517.91, -6550.02, 11.312, 1.33789, 300, 300, 10, 1),
(5303781, 16309, 530, 7448.56, -6543.76, 11.1855, 5.04762, 300, 300, 10, 1),
(5303782, 16309, 530, 7553.97, -6557.81, 13.61, 4.56649, 300, 300, 10, 1),
(5303783, 16309, 530, 7286, -6518.35, 12.5914, 1.21944, 300, 300, 10, 1),
(5303784, 16309, 530, 7381.06, -6587.88, 9.92009, 3.94864, 300, 300, 10, 1),
(5303785, 16309, 530, 7350.89, -6520.37, 14.9855, 0.021648, 300, 300, 10, 1),
(5303786, 16309, 530, 7254.22, -6520.18, 11.19, 1.20146, 300, 300, 10, 1),
(5303787, 16309, 530, 7420.74, -6522.04, 12.54, 1.00784, 300, 300, 10, 1),
(5303788, 16302, 530, 7107.89, -6517.51, 10.2024, 3.58346, 300, 300, 10, 1), -- 16305
(5303789, 16302, 530, 7148.50, -6556.85, 14.00, 2.22833, 300, 300, 10, 1), -- 16305
(5303790, 16302, 530, 7050.29, -6546.18, 9.14357, 0.5278, 300, 300, 10, 1), -- 16305
(5303791, 16302, 530, 6919.18, -6578.77, 9.61, 2.46747, 300, 300, 10, 1), -- 16305
(5303792, 16302, 530, 7019.89, -6547.27, 10.13, 0.216529, 300, 300, 10, 1), -- 16305
(5303793, 16302, 530, 6951.25, -6515.10, 9.89, 2.4464, 300, 300, 10, 1), -- 16305
(5303794, 16302, 530, 6886.98, -6513.73, 17.262, 0.386488, 300, 300, 10, 1), -- 16305
(5303795, 16302, 530, 6851.31, -6486.41, 17.51, 2.63819, 300, 300, 10, 1), -- 16305
(5303796, 16302, 530, 6811.56, -6476.06, 16.3749, 2.41827, 300, 300, 10, 1), -- 16305
(5303797, 16305, 530, 7082.41, -6545.55, 9.58132, 1.9154, 300, 300, 10, 1), -- 16302
(5303798, 16305, 530, 7056.84, -6530.01, 9.44472, 2.43041, 300, 300, 10, 1), -- 16302
(5303799, 16305, 530, 7047.09, -6581.31, 10.0371, 4.59892, 300, 300, 10, 1), -- 16302
(5303800, 16305, 530, 7021.54, -6579.9, 9.43695, 6.2422, 300, 300, 10, 1), -- 16302
(5303801, 16305, 530, 7002.5, -6533.6, 9.66569, 5.0376, 300, 300, 10, 1), -- 16302
(5303802, 16305, 530, 6792.73, -6484.1, 18.0288, 0.239668, 300, 300, 10, 1), -- 16302
(5303803, 16305, 530, 6742.87, -6473.09, 23.3, 4.5324, 300, 300, 10, 1), -- 16302
(5303804, 16302, 530, 6983.14, -6514.81, 9.90, 5.97047, 300, 300, 10, 1), -- 16305
(5303805, 16302, 530, 6721.95, -6507.95, 27.54, 5.97047, 300, 300, 10, 1), -- 16305
(5303806, 16302, 530, 7080.42, -6519.63, 8.95315, 3.80419, 300, 300, 10, 1),
(5303807, 16302, 530, 7116.31, -6549.70, 10.61, 2.87025, 300, 300, 10, 1),
(5303808, 16302, 530, 7017.55, -6519.99, 9.97549, 4.76363, 300, 300, 10, 1),
(5303809, 16302, 530, 6950.86, -6577.64, 9.93981, 4.86543, 300, 300, 10, 1),
(5303810, 16302, 530, 6894.52, -6541.65, 15.7473, 5.37814, 300, 300, 10, 1),
(5303811, 16302, 530, 6813.81, -6516.58, 18.60, 2.94746, 300, 300, 10, 1),
(5303812, 16302, 530, 6753.14, -6505.81, 21.29, 2.97802, 300, 300, 10, 1),
(5303813, 16302, 530, 6984.29, -6550.66, 9.58, 4.74494, 300, 300, 10, 1),
(5303814, 16305, 530, 6932.79, -6550.73, 9.75339, 0.36446, 300, 300, 10, 1),
(5303815, 16305, 530, 6944.77, -6541.48, 9.86426, 0.606934, 300, 300, 10, 1),
(5303816, 16305, 530, 6906.24, -6509.92, 13.6212, 4.63917, 300, 300, 10, 1),
(5303817, 16305, 530, 6857.71, -6532.7, 19.7623, 4.97647, 300, 300, 10, 1),
(5303818, 16305, 530, 6788.91, -6508.7, 18.4704, 3.26457, 300, 300, 10, 1),
(5303819, 16305, 530, 6724.07, -6468.06, 26.9358, 4.88107, 300, 300, 10, 1),
(5303820, 16305, 530, 6984.85, -6584.62, 9.93, 5.97047, 300, 300, 10, 1);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16300 FROM `creature` WHERE `guid` BETWEEN 5303731 AND 5303742;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16303 FROM `creature` WHERE `guid` BETWEEN 5303731 AND 5303742;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303731 AND 5303742;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16301 FROM `creature` WHERE `guid` BETWEEN 5303752 AND 5303768;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16309 FROM `creature` WHERE `guid` BETWEEN 5303752 AND 5303768;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303752 AND 5303768;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16302 FROM `creature` WHERE `guid` BETWEEN 5303788 AND 5303805;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16305 FROM `creature` WHERE `guid` BETWEEN 5303788 AND 5303805;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303788 AND 5303805;

-- rp attacker
-- 7552.089844 -6679.160156 46.345501 - 16309
-- 7554.169922 -6679.100098 45.772900 - 16301
-- 7549.979980 -6679.080078 46.176998 - 16301

-- 7652.069824 -6754.879883 58.089001 - 16309
-- 7652.319824 -6757.740234 59.178699 - 16301
-- 7651.750000 -6752.450195 57.113800 - 16301

DELETE FROM `creature` WHERE `id` = 16308;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303488, 16308, 530, 6727.7255859375, -6460.21728515625, 26.46784210205078125, 0, 300, 300, 0, 4),
(5303489, 16308, 530, 6702.06, -6489.62, 29.3432, 0, 300, 300, 0, 4),
(5303490, 16308, 530, 7095.29150390625, -6542.45263671875, 9.762145042419433593, 0, 300, 300, 0, 4);

-- Pathing for Deathcage Sorcerer Entry: 16308 'CMaNGOS FORMAT' 
SET @GUID := 5303488;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 6727.7255859375, -6460.21728515625, 26.46784210205078125, 6.058742046356201171, 30000, 0),
(@GUID, 2, 6754.346, -6465.144, 22.53503, 100, 0, 0),
(@GUID, 3, 6783.1035, -6464.2236, 18.224869, 100, 0, 0),
(@GUID, 4, 6853.7568359375, -6484.658203125, 17.78900718688964843, 100, 0, 0),
(@GUID, 5, 6892.264, -6491.754, 18.465225, 100, 0, 0),
(@GUID, 6, 6915.8774, -6493.78, 13.71758, 100, 0, 0),
(@GUID, 7, 7025.951171875, -6501.3935546875, 10.75816154479980468, 100, 0, 0),
(@GUID, 8, 7059.0674, -6502.6357, 9.745641, 100, 0, 0),
(@GUID, 9, 7072.2773, -6493.5615, 10.647484, 100, 0, 0);
-- 0x20307C42400FED0000006A00000B5B7C .go xyz 6783.1035 -6464.2236 18.224869

-- Pathing for Deathcage Sorcerer Entry: 16308 'CMaNGOS FORMAT' 
SET @GUID := 5303489;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 6702.06, -6489.62, 29.3432, 0.087266, 10000, 0),
(@GUID, 2, 6842.2998046875, -6540.22900390625, 18.38805007934570312, 100, 0, 0),
(@GUID, 3, 6854.87109375, -6539.22216796875, 19.16777992248535156, 100, 0, 0),
(@GUID, 4, 6866.46484375, -6544.90380859375, 18.8291015625, 100, 0, 0),
(@GUID, 5, 6877.892, -6550.9995, 19.447285, 100, 0, 0),
(@GUID, 6, 6891.1655, -6564.9497, 16.306171, 100, 0, 0),
(@GUID, 7, 6900.8154, -6575.0913, 12.373608, 100, 0, 0),
(@GUID, 8, 6911.1626, -6585.9844, 9.769257, 100, 0, 0),
(@GUID, 9, 6940.42138671875, -6601.03271484375, 10.3547372817993164, 100, 0, 0),
(@GUID, 10, 6965.375, -6602.0566, 10.58962, 100, 0, 0),
(@GUID, 11, 6988.7686, -6606.379, 9.802615, 100, 0, 0),
(@GUID, 12, 7091.5849609375, -6578.96630859375, 10.09276103973388671, 100, 0, 0);
-- 0x203CC442400FED00001D530000741788 .go xyz 6877.892 -6550.9995 19.447285

-- Pathing for Deathcage Sorcerer Entry: 16308 'CMaNGOS FORMAT' 
SET @GUID := 5303490;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7095.29150390625, -6542.45263671875, 9.762145042419433593, 100, 0, 0),
(@GUID, 2, 7087.515625, -6544.7666015625, 9.582495689392089843, 100, 0, 0),
(@GUID, 3, 6908.914, -6534.4204, 12.928319, 100, 0, 0),
(@GUID, 4, 6886.1147, -6528.21, 17.733747, 100, 0, 0),
(@GUID, 5, 6861.8486328125, -6520.41552734375, 19.12448883056640625, 100, 0, 0),
(@GUID, 6, 6776.1533, -6500.8296, 19.099348, 100, 0, 0),
(@GUID, 7, 6729.5029296875, -6486.69580078125, 25.4896087646484375, 5.642649650573730468, 0, 0);
-- 0x203CC442400FED00001D53000074274B .go xyz 6776.1533 -6500.8296 19.099348

DELETE FROM `creature` WHERE `id` = 16311;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303727, 16311, 530, 7188.27, -6495.46, 10.9984, 0, 300, 300, 0, 4), -- left
(5303728, 16311, 530, 7651.20, -6580.62, 10.2465, 0, 300, 300, 0, 4), -- left middle
(5303729, 16311, 530, 7221.23, -6542.42, 14.4053, 0, 300, 300, 0, 4), -- right middle
(5303730, 16311, 530, 7252.30, -6570.79, 17.8611, 0, 300, 300, 0, 4); -- right

-- Pathing for Phantasmal Watcher Entry: 16311 'CMaNGOS FORMAT' 
SET @GUID := 5303727; -- Left
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7188.27, -6495.46, 10.9984, 100, 0, 0),
(@GUID, 2, 7222.347, -6495.6606, 11.325985, 100, 0, 0),
(@GUID, 3, 7253.28, -6498.1235, 11.305006, 100, 0, 0),
(@GUID, 4, 7292.9316, -6513.9243, 13.077052, 100, 0, 0),
(@GUID, 5, 7316.3115, -6501.7466, 14.422257, 100, 0, 0),
(@GUID, 6, 7345.693, -6518.047, 15.281251, 100, 0, 0),
(@GUID, 7, 7445.6807, -6546.5596, 11.011176, 100, 0, 0), -- exact spawn on waypoint
(@GUID, 8, 7486.049, -6546.157, 10.568814, 100, 0, 0),
(@GUID, 9, 7515.1025, -6542.5103, 11.416475, 100, 0, 0),
(@GUID, 10, 7543.6084, -6551.826, 12.611581, 100, 0, 0),
(@GUID, 11, 7589.0156, -6555.318, 14.050683, 100, 0, 0),
(@GUID, 12, 7616.53, -6545.7173, 10.092621, 100, 0, 0),
(@GUID, 13, 7652.928, -6551.9565, 11.630804, 100, 0, 0);
-- 0x20307C42400FEDC000006A00000B04CB .go xyz 7253.28 -6498.1235 11.305006

-- Pathing for Phantasmal Watcher Entry: 16311 'CMaNGOS FORMAT' 
SET @GUID := 5303728; -- Left Middle
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7651.2085, -6580.6274, 10.246517, 100, 0, 0),
(@GUID, 2, 7574.973, -6575.3916, 13.658122, 100, 0, 0),
(@GUID, 3, 7546.5166, -6570.2656, 12.472251, 100, 0, 0),
(@GUID, 4, 7506.358, -6562.097, 10.328341, 100, 0, 0),
(@GUID, 5, 7448.37, -6556.74, 10.5310, 100, 0, 0),
(@GUID, 6, 7411.41, -6553.86, 10.8579, 100, 0, 0),
(@GUID, 7, 7378.27, -6549.28, 12.8599, 100, 0, 0),
(@GUID, 8, 7254.6406, -6523.9453, 11.628147, 100, 0, 0),
(@GUID, 9, 7220.651, -6522.0815, 10.580136, 100, 0, 0),
(@GUID, 10, 7191.97, -6514.98, 10.7379, 100, 0, 0);
-- 0x20307C42400FEDC000006A00000AFB4E .go xyz 7651.2085 -6580.6274 10.246517

-- Pathing for Phantasmal Watcher Entry: 16311 'CMaNGOS FORMAT' 
SET @GUID := 5303729; -- Right Middle
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7221.23, -6542.42, 14.4053, 100, 0, 0),
(@GUID, 2, 7252.74, -6551.9297, 15.076238, 100, 0, 0),
(@GUID, 3, 7280.7793, -6553.406, 11.63918, 100, 0, 0),
(@GUID, 4, 7310.6304, -6562.0713, 11.390157, 100, 0, 0),
(@GUID, 5, 7438.28, -6579.83, 9.7462, 100, 0, 0),
(@GUID, 6, 7488.311, -6583.426, 9.413548, 100, 0, 0),
(@GUID, 7, 7512.869, -6585.4463, 10.433503, 100, 0, 0),
(@GUID, 8, 7545.0337, -6592.553, 11.641196, 100, 0, 0),
(@GUID, 9, 7577.6675, -6601.77, 11.89841, 100, 0, 0),
(@GUID, 10, 7617.639, -6609.751, 14.411549, 100, 0, 0),
(@GUID, 11, 7642.31, -6615.88, 13.5814, 100, 0, 0);
-- 0x20307C42400FEDC000006A00000B04E3 .go xyz 7280.7793 -6553.406 11.63918

-- Pathing for Phantasmal Watcher Entry: 16311 'CMaNGOS FORMAT' 
SET @GUID := 5303730; -- Right
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7252.30, -6570.79, 17.8611, 100, 0, 0),
(@GUID, 2, 7304.4673, -6602.853, 11.905862, 100, 0, 0),
(@GUID, 3, 7329.0063, -6606.192, 8.848245, 100, 0, 0),
(@GUID, 4, 7355.4165, -6604.479, 10.104639, 100, 0, 0),
(@GUID, 5, 7379.0547, -6603.8105, 8.856997, 100, 0, 0),
(@GUID, 6, 7266.613, -6575.5664, 17.473843, 100, 0, 0),
(@GUID, 7, 7443.03, -6606.39, 9.2374, 100, 0, 0),
(@GUID, 8, 7480.038, -6606.483, 9.45992, 100, 0, 0),
(@GUID, 9, 7512.153, -6613.131, 9.395042, 100, 0, 0),
(@GUID, 10, 7535.4053, -6617.065, 9.97742, 100, 0, 0),
(@GUID, 11, 7562.0503, -6624.1763, 10.499148, 100, 0, 0),
(@GUID, 12, 7599.4565, -6634.863, 11.278537, 100, 0, 0),
(@GUID, 13, 7626.25, -6642.38, 15.6297, 100, 0, 0);
-- 0x20307C42400FEDC000006A00008B04CB .go xyz 7304.4673 -6602.853 11.905862

-- =====
-- Beach
-- =====
-- https://www.youtube.com/watch?v=lYkZ6GozkPk - no flee

-- Zombified Grimscale 16402
-- https://web.archive.org/web/20080222050012/http://wow.allakhazam.com/db/mob.html?wmob=16402
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16402;
DELETE FROM `creature_loot_template` WHERE `item` IN (2287,50502) AND `entry` = 16402;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16402, 774, 0.1, 0, 1, 1, 0, 'Malachite'),
(16402, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16402, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Withered Grimscale 16403
-- https://web.archive.org/web/20080220231020/http://wow.allakhazam.com/db/mob.html?wmob=16403
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16403;
DELETE FROM `creature_loot_template` WHERE `item` IN (50502) AND `entry` = 16403;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16403, 774, 0.1, 0, 1, 1, 0, 'Malachite'),
(16403, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16403, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature` WHERE `id` IN (16402,16403);
DELETE FROM `creature` WHERE `guid` BETWEEN 5303636 AND 5303726;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303636, 16402, 530, 8095.13, -5889.54, -0.657658, 0.606555, 300, 300, 5, 1),
(5303637, 16402, 530, 8143.81, -5897.67, 0.000952, 0.376035, 300, 300, 5, 1),
(5303638, 16402, 530, 8122.1, -5881.21, -0.387449, 2.52433, 300, 300, 5, 1),
(5303639, 16402, 530, 8035.29, -5885.92, 1.26286, 5.6433, 300, 300, 5, 1),
(5303640, 16402, 530, 8051.37, -5907.97, 2.6589, 1.3389, 300, 300, 10, 1),
(5303641, 16402, 530, 8049.44, -5870.13, -0.78142, 0.099766, 300, 300, 5, 1),
(5303642, 16402, 530, 8069.36, -5887.78, 0.342342, 5.67666, 300, 300, 5, 1),
(5303643, 16402, 530, 7995.94, -5877.91, -1.02161, 2.31534, 300, 300, 10, 1),
(5303644, 16402, 530, 7949.64, -5890.19, -0.897752, 3.38634, 300, 300, 10, 1),
(5303645, 16402, 530, 7954.59, -5916.04, 1.34593, 1.67537, 300, 300, 10, 1),
(5303646, 16402, 530, 7848.11, -5954.62, 1.82614, 5.79742, 300, 300, 10, 1),
(5303647, 16402, 530, 7827.45, -5913.19, -0.167991, 3.24481, 300, 300, 5, 1),
(5303648, 16402, 530, 7846.89, -5914.49, 0.697879, 4.91915, 300, 300, 5, 1),
(5303649, 16402, 530, 7816.54, -5944.85, 1.83334, 1.80535, 300, 300, 10, 1),
(5303650, 16402, 530, 7804.27, -5930.46, 0.582009, 4.06653, 300, 300, 5, 1),
(5303651, 16402, 530, 7792.82, -5909.03, -0.017687, 2.11156, 300, 300, 5, 1),
(5303652, 16402, 530, 7814.1, -5884.38, -2.45017, 1.82824, 300, 300, 10, 1),
(5303653, 16402, 530, 7739.91, -5940.25, 1.42728, 4.68098, 300, 300, 5, 1),
(5303654, 16402, 530, 7744.08, -5912.24, -0.572456, 3.65945, 300, 300, 10, 1),
(5303655, 16402, 530, 7718.58, -5910.74, 2.12594, 4.06763, 300, 300, 10, 1),
(5303656, 16402, 530, 7719.44, -5878.25, -1.04782, 5.7673, 300, 300, 10, 1),
(5303657, 16402, 530, 7620.11, -5881.81, -0.963721, 5.35433, 300, 300, 5, 1),
(5303658, 16402, 530, 7644.74, -5856.79, -1.29658, 4.37945, 300, 300, 10, 1),
(5303659, 16402, 530, 7581.13, -5849.26, -2.8296, 3.54423, 300, 300, 10, 1),
(5303660, 16402, 530, 7582.55, -5818.87, -1.25428, 1.3243, 300, 300, 5, 1),
(5303661, 16402, 530, 7563.05, -5828.52, 0.276409, 2.76176, 300, 300, 5, 1),
(5303662, 16402, 530, 7578.71, -5783.63, -2.71509, 4.79358, 300, 300, 10, 1),
(5303663, 16402, 530, 7578.93, -5711.72, -2.60365, 2.41275, 300, 300, 10, 1),
(5303664, 16402, 530, 7556.35, -5809.75, 0.526409, 3.63337, 300, 300, 10, 1),
(5303665, 16402, 530, 7446.6, -5713.29, 0.610046, 3.65561, 300, 300, 10, 1),
(5303666, 16402, 530, 7549.22, -5681.95, -2.79833, 5.55168, 300, 300, 5, 1),
(5303667, 16402, 530, 7386.07, -5776.84, 0.414619, 6.0352, 300, 300, 5, 1),
(5303668, 16402, 530, 7384.58, -5706.99, -1.87002, 1.51716, 300, 300, 10, 1),
(5303669, 16402, 530, 7418.02, -5683.1, -3.19395, 1.91986, 300, 300, 10, 1),
(5303670, 16402, 530, 7318.35, -5712.8, -1.28743, 1.55712, 300, 300, 10, 1),
(5303671, 16402, 530, 7518.82, -5889.87, 1.10734, 3.45857, 300, 300, 10, 1),
(5303672, 16402, 530, 7512.19, -5918.57, 1.8194, 3.90756, 300, 300, 10, 1),
(5303673, 16402, 530, 7544.65, -5896.27, 0.618895, 1.02249, 300, 300, 5, 1),
(5303674, 16402, 530, 7508.12, -5959.73, 0.335729, 1.91867, 300, 300, 5, 1),
(5303675, 16403, 530, 8084.33, -5898.44, 1.46734, 3.28392, 300, 300, 5, 1),
(5303676, 16403, 530, 8130.59, -5895.08, 0.487551, 0.162113, 300, 300, 5, 1),
(5303677, 16403, 530, 8113.82, -5920.45, 1.49016, 4.62343, 300, 300, 10, 1),
(5303678, 16403, 530, 8036.37, -5873.47, -0.112143, 1.68369, 300, 300, 5, 1),
(5303679, 16403, 530, 8077.78, -5887.24, -0.407658, 1.44158, 300, 300, 5, 1),
(5303680, 16403, 530, 8103.49, -5879.53, -2.54339, 3.20023, 300, 300, 10, 1),
(5303681, 16403, 530, 8019.4, -5910.81, 2.44276, 5.08552, 300, 300, 10, 1),
(5303682, 16403, 530, 8022.06, -5882.01, 0.282856, 2.28391, 300, 300, 5, 1),
(5303683, 16403, 530, 7980.36, -5915.66, -0.102393, 5.57468, 300, 300, 10, 1),
(5303684, 16403, 530, 7960.06, -5912.06, 0.38635, 0.180677, 300, 300, 5, 1),
(5303685, 16403, 530, 7886.13, -5911.71, 1.57224, 6.17052, 300, 300, 10, 1),
(5303686, 16403, 530, 7876.65, -5883.31, -0.720406, 3.53114, 300, 300, 10, 1),
(5303687, 16403, 530, 7861.76, -5905.29, 1.07288, 0.090379, 300, 300, 5, 1),
(5303688, 16403, 530, 7825.86, -5926.25, 1.33201, 0.069979, 300, 300, 5, 1),
(5303689, 16403, 530, 7746.54, -5978.31, -0.773188, 1.53753, 300, 300, 10, 1),
(5303690, 16403, 530, 7790.18, -5921.73, 0.857313, 2.51122, 300, 300, 5, 1),
(5303691, 16403, 530, 7854.95, -5890.38, -0.533673, 1.4651, 300, 300, 5, 1),
(5303692, 16403, 530, 7476.96, -5677.23, -2.82214, 6.26228, 300, 300, 10, 1),
(5303693, 16403, 530, 7783.46, -5882.27, -0.002309, 3.9887, 300, 300, 10, 1),
(5303694, 16403, 530, 7745.22, -5942.06, 0.427283, 3.00064, 300, 300, 5, 1),
(5303695, 16403, 530, 7692.19, -5881.77, 0, 0.94975, 300, 300, 5, 1),
(5303696, 16403, 530, 7681.67, -5879.19, 1.65927, 3.82396, 300, 300, 10, 1),
(5303697, 16403, 530, 7624.26, -5841.95, -2.37393, 2.89963, 300, 300, 10, 1),
(5303698, 16403, 530, 7574.77, -5893, -2.05242, 4.23737, 300, 300, 10, 1),
(5303699, 16403, 530, 7576.62, -5912.88, -0.362907, 3.44375, 300, 300, 5, 1),
(5303700, 16403, 530, 7563.1, -5817.16, 0.526409, 6.05736, 300, 300, 5, 1),
(5303701, 16403, 530, 7576.82, -5736.22, -1.93772, 2.92693, 300, 300, 10, 1),
(5303702, 16403, 530, 7549.55, -5740.53, 0.616941, 2.79208, 300, 300, 10, 1),
(5303703, 16403, 530, 7521.97, -5680.68, -1.16028, 5.74278, 300, 300, 5, 1),
(5303704, 16403, 530, 7552.26, -5717.29, 0.237131, 0.802851, 300, 300, 3, 1),
(5303705, 16403, 530, 7555.07, -5772.59, 0.616941, 4.64213, 300, 300, 10, 1),
(5303706, 16403, 530, 7486.8, -5708.65, 0.613484, 0.95975, 300, 300, 10, 1),
(5303707, 16403, 530, 7421.19, -5749.17, 0.532183, 4.02848, 300, 300, 10, 1),
(5303708, 16403, 530, 7419.91, -5709.44, 0.319265, 1.07783, 300, 300, 5, 1),
(5303709, 16403, 530, 7518.75, -5712.88, 0.585622, 6.14356, 300, 300, 10, 1),
(5303710, 16403, 530, 7382.17, -5763.08, 0.168289, 0.263649, 300, 300, 5, 1),
(5303711, 16403, 530, 7354.27, -5718.49, -0.21734, 4.42243, 300, 300, 10, 1),
(5303712, 16403, 530, 7320.79, -5745.58, 0.817503, 0.62418, 300, 300, 10, 1),
(5303713, 16403, 530, 7288.02, -5752.59, 0.928354, 4.67432, 300, 300, 10, 1),
(5303714, 16403, 530, 7243.85, -5752.08, -0.001794, 0.36092, 300, 300, 5, 1),
(5303715, 16403, 530, 7218.37, -5752.77, 0.163409, 3.65153, 300, 300, 10, 1),
(5303716, 16403, 530, 7548.56, -5888.08, 0.618895, 4.48729, 300, 300, 5, 1),
(5303717, 16403, 530, 7546.98, -5847.88, 0.30206, 1.85213, 300, 300, 5, 1),
(5303718, 16403, 530, 7476.53, -5947.81, 1.49361, 3.03315, 300, 300, 10, 1),
(5303719, 16403, 530, 7501.4, -5976.42, 0.109332, 4.13386, 300, 300, 10, 1),
(5303720, 16403, 530, 7455.88, -5681.72, -2.7804, 2.32306, 300, 300, 10, 1),
(5303721, 16403, 530, 7349.93, -5745.94, 1.38875, 0.954544, 300, 300, 10, 1),
(5303722, 16403, 530, 7507.29, -6055.87, -0.047915, 1.15185, 300, 300, 5, 1),
(5303723, 16403, 530, 7575.0, -5980.45, 0.263069, 4.5112, 300, 300, 5, 1),
(5303724, 16403, 530, 7544.3, -5981.65, -0.902975, 5.45064, 300, 300, 5, 1),
(5303725, 16403, 530, 7530.87, -6011.59, 0.0502268, 2.73083, 300, 300, 5, 1),
(5303726, 16403, 530, 7529.9, -6018.66, 0.454768, 2.0368, 300, 300, 5, 1);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16402 FROM `creature` WHERE `guid` BETWEEN 5303636 AND 5303726;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16403 FROM `creature` WHERE `guid` BETWEEN 5303636 AND 5303726;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303636 AND 5303726;

-- =============
-- The North Sea
-- =============

-- Yellowgill Frenzy 16404
-- https://web.archive.org/web/20080302112138/http://wow.allakhazam.com/db/mob.html?wmob=16404
-- https://web.archive.org/web/20111005121821/http://www.wowhead.com:80/npc=16404
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16404;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16404, 60002, 5, 0, -60002, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)'),
(16404, 60111, 2, 0, -60111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)'),
(16404, 60442, 0.5, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)');
	
-- Whitetail Frenzy 16405
-- https://web.archive.org/web/20080302185326/http://wow.allakhazam.com/db/mob.html?wmob=16405
-- https://web.archive.org/web/20180921151340/https://www.wowhead.com/npc=16405/whitetail-frenzy
UPDATE `creature_template` SET `SpeedWalk` = 1, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16405;
DELETE FROM `creature_loot_template` WHERE `item` IN (50502) AND `entry` = 16403;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16405, 60002, 5, 0, -60002, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)'),
(16405, 60111, 2, 0, -60111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)'),
(16405, 60442, 0.5, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)');

DELETE FROM `creature` WHERE `id` IN (16404,16405);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303610, 16404, 530, 7782.52, -5520.32, -25.0596, 2.25148, 300, 300, 25, 1), -- TC spawns
(5303611, 16404, 530, 7849.99, -5582.05, -15.6664, 1.91986, 300, 300, 25, 1),
(5303612, 16404, 530, 7453.58, -5582.35, -4.67931, 1.29154, 300, 300, 25, 1),
(5303613, 16404, 530, 7650.67, -5514.59, -49.1541, 0.471239, 300, 300, 25, 1),
(5303614, 16404, 530, 7584.5, -5583.41, -24.8534, 3.45575, 300, 300, 25, 1),
(5303615, 16404, 530, 7583.76, -5452.18, -46.0399, 2.70526, 300, 300, 25, 1),
(5303616, 16404, 530, 7714.01, -5449.99, -64.6989, 5.61996, 300, 300, 25, 1),
(5303617, 16404, 530, 7646.78, -5386.8, -65.335, 3.75246, 300, 300, 25, 1),
(5303618, 16404, 530, 7851.46, -5451.52, -47.5537, 0.698132, 300, 300, 25, 1),
(5303619, 16404, 530, 7916.75, -5518.63, -40.6265, 0.0872665, 300, 300, 25, 1),
(5303620, 16404, 530, 7981.46, -5584.88, -4.67932, 2.98451, 300, 300, 25, 1),
(5303621, 16404, 530, 7981.47, -5453.28, -45.3642, 2.44346, 300, 300, 25, 1),
(5303622, 16404, 530, 8049.63, -5517.96, -25.7112, 5.20108, 300, 300, 25, 1),
(5303623, 16404, 530, 8116.96, -5448.62, -46.0617, 0.698132, 300, 300, 25, 1),
(5303624, 16404, 530, 8115.65, -5582.93, -4.67935, 3.07178, 300, 300, 25, 1),
(5303625, 16404, 530, 8181.52, -5517.78, -21.4738, 3.9968, 300, 300, 25, 1),

(5303626, 16405, 530, 6929.59, -5718.05, -2.57678, 4.20766, 300, 300, 25, 1),
(5303627, 16405, 530, 6786.31, -5718.75, -11.0892, 3.22507, 300, 300, 25, 1),
(5303628, 16405, 530, 6988.21, -5644.91, -3.24633, 3.19372, 300, 300, 25, 1),
(5303629, 16405, 530, 7185.63, -5581.58, -7.89854, 1.23799, 300, 300, 25, 1),
(5303630, 16405, 530, 7125.06, -5516.67, -5.84579, 0.0544871, 300, 300, 25, 1),
(5303631, 16405, 530, 7250.16, -5645.38, -4.68682, 1.60947, 300, 300, 25, 1),
(5303632, 16405, 530, 7251.58, -5518.66, -14.8205, 5.09052, 300, 300, 25, 1),
(5303633, 16405, 530, 7319, -5583.68, -5.34557, 4.63134, 300, 300, 25, 1),
(5303634, 16405, 530, 7385.25, -5514.5, -23.8396, 4.48253, 300, 300, 25, 1),
(5303635, 16405, 530, 7058.42, -5622.24, -6.2648, 5.30934, 300, 300, 25, 1);

-- ===================
-- Sanctum of the Moon
-- ===================
-- Arcane Devourer 16304
-- https://web.archive.org/web/20080216183926/http://wow.allakhazam.com/db/mob.html?wmob=16304
-- https://web.archive.org/web/20180921121407/https://www.wowhead.com/npc=16304/arcane-devourer#drops:mode=noteworthy:0-18+1
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16304;
DELETE FROM `creature_loot_template` WHERE `item` IN (5498,50502,50600) AND `entry` = 16304;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16304, 774, 0.2, 0, 1, 1, 0, 'Malachite'),
(16304, 818, 0.3, 0, 1, 1, 0, 'Tigerseye'),
(16304, 1210, 0.15, 0, 1, 1, 0, 'Shadowgem'),
(16304, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Mana Shifter 16310
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16310;
DELETE FROM `creature_loot_template` WHERE `item` IN (4293,6347,6348,6716,50502,50600) AND `entry` = 16310;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16310, 774, 0.2, 0, 1, 1, 0, 'Malachite'),
(16310, 1210, 0.15, 0, 1, 1, 0, 'Shadowgem'),
(16310, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature` WHERE `id` IN (16304,16310);
DELETE FROM `creature` WHERE `guid` BETWEEN 5302449 AND 5302484;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302449, 16310, 530, 7452.2, -6346.68, 37.2297, 5.84081, 300, 300, 5, 1), -- both
(5302450, 16310, 530, 7487.6, -6313.28, 27.6104, 0.788531, 300, 300, 5, 1), -- both
(5302451, 16304, 530, 7484.73193359375, -6413.71240234375, 13.32374095916748046, 1.206020832061767578, 300, 300, 5, 1), -- both
(5302452, 16304, 530, 7440.783203125, -6385.646484375, 38.716522216796875, 3.653154611587524414, 300, 300, 5, 1), -- both
(5302453, 16310, 530, 7508.650390625, -6389.578125, 23.73736953735351562, 2.36830902099609375, 300, 300, 3, 1), -- both
(5302454, 16310, 530, 7517.9296875, -6385.40283203125, 13.20359134674072265, 0.085525311529636383, 300, 300, 5, 1), -- both
(5302455, 16304, 530, 7511.79, -6388.81, 40.966, 0.880024, 300, 300, 3, 1), -- both
(5302456, 16304, 530, 7542.701171875, -6361.25439453125, 37.07781982421875, 0.222618177533149719, 300, 300, 3, 1), -- both
(5302457, 16310, 530, 7489.32, -6355.7, 13.5635, 5.99707, 300, 300, 5, 1), -- both
(5302458, 16304, 530, 7471.24, -6379.06, 14.1961, 1.90976, 300, 300, 5, 1), -- both
(5302459, 16304, 530, 7525.85, -6323.6, 12.1129, 6.06664, 300, 300, 5, 1), -- both
(5302460, 16310, 530, 7518.05, -6347.98, 12.5795, 0.635689, 300, 300, 5, 1), -- both
(5302461, 16310, 530, 7539.8125, -6388.4346, 38.761326, 0, 300, 300, 0, 2), -- patrol spawn! - both
(5302462, 16304, 530, 7552.82, -6325.74, 12.2313, 0, 300, 300, 0, 4), -- patrol spawn! - both - path incomplete
(5302463, 16310, 530, 7451.85, -6415.54, 34.0699, 4.60672, 300, 300, 5, 1), -- both
(5302464, 16310, 530, 7519.58447265625, -6420.421875, 13.60797977447509765, 0.094139948487281799, 300, 300, 5, 1), -- both
(5302465, 16304, 530, 7536.01416015625, -6403.84765625, 13.29240322113037109, 6.263972759246826171, 300, 300, 5, 1), -- both
(5302466, 16304, 530, 7548.56, -6356.11, 10.4107, 0.864444, 300, 300, 5, 1), -- both
(5302467, 16304, 530, 7559.81, -6290.94, 18.1437, 0.668834, 300, 300, 5, 1), -- both
(5302468, 16310, 530, 7553.98, -6387.07, 9.76365, 1.12375, 300, 300, 5, 1), -- both
(5302469, 16304, 530, 7561.81, -6325.39, 12.706, 2.17613, 300, 300, 5, 1), -- both
(5302470, 16310, 530, 7577.66, -6379.29, 12.5311, 1.73948, 300, 300, 5, 1), -- both
(5302471, 16310, 530, 7554.49, -6419.19, 10.2047, 5.87522, 300, 300, 5, 1), -- both
(5302472, 16310, 530, 7489.75, -6454.5, 19.0485, 4.85056, 300, 300, 5, 1), -- both
(5302473, 16304, 530, 7515.1, -6451.56, 16.8, 5.18366, 300, 300, 5, 1), -- both
(5302474, 16304, 530, 7545.72, -6446.94, 12.2698, 4.55196, 300, 300, 5, 1), -- both
(5302475, 16304, 530, 7585.17, -6415.2, 13.2534, 2.73195, 300, 300, 5, 1), -- both
(5302476, 16310, 530, 7585.88, -6455.48, 14.8567, 4.24856, 300, 300, 5, 1), -- both
(5302477, 16304, 530, 7616.89, -6419.38, 16.5303, 3.06924, 300, 300, 5, 1), -- both
(5302478, 16304, 530, 7601.99, -6386.42, 13.8787, 3.64934, 300, 300, 5, 1), -- both
(5302479, 16304, 530, 7580.19, -6480.23, 11.3903, 4.13643, 300, 300, 5, 1), -- both
(5302480, 16310, 530, 7621.94, -6309.47, 32.8258, 2.70188, 300, 300, 5, 1), -- both
(5302481, 16310, 530, 7575.26, -6278.58, 27.0996, 5.35784, 300, 300, 5, 1), -- both
(5302482, 16304, 530, 7619.021484375, -6346.900390625, 22.84634017944335937, 3.960128068923950195, 300, 300, 5, 1), -- both
(5302483, 16310, 530, 7543.91, -6493.53, 14.8472, 1.85209, 300, 300, 5, 1), -- both
(5302484, 16310, 530, 7591.43017578125, -6348.7060546875, 13.21041297912597656, 1.103118777275085449, 300, 300, 5, 1); -- both

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16304 FROM `creature` WHERE `guid` BETWEEN 5302449 AND 5302484;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16310 FROM `creature` WHERE `guid` BETWEEN 5302449 AND 5302484;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5302449 AND 5302484;

-- Pathing for Arcane Devourer Entry: 16304 'CMaNGOS FORMAT' 
SET @GUID := 5302461;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7539.8125, -6388.4346, 38.761326, 100, 0, 0),
(@GUID, 2, 7538.2993, -6373.2803, 37.604626, 100, 0, 0),
(@GUID, 3, 7527.8696, -6362.4624, 37.50347, 100, 0, 0),
(@GUID, 4, 7518.232, -6361.598, 38.175793, 100, 0, 0),
(@GUID, 5, 7505.858, -6366.499, 39.54415, 100, 0, 0),
(@GUID, 6, 7499.272, -6378.8696, 41.093914, 100, 0, 0),
(@GUID, 7, 7504.889, -6396.0176, 42.10122, 100, 0, 0),
(@GUID, 8, 7512.113, -6391.0283, 41.128998, 100, 0, 0),
(@GUID, 9, 7518.6494, -6393.4175, 39.847206, 100, 0, 0),
(@GUID, 10, 7526.3706, -6391.301, 35.84284, 100, 0, 0),
(@GUID, 11, 7529.44, -6386.936, 32.666985, 100, 0, 0),
(@GUID, 12, 7529.4907, -6380.035, 29.394146, 100, 0, 0),
(@GUID, 13, 7525.638, -6376.0254, 29.356146, 100, 0, 0),
(@GUID, 14, 7517.7847, -6372.229, 31.714348, 100, 0, 0),
(@GUID, 15, 7511.5366, -6375.772, 35.82529, 100, 0, 0),
(@GUID, 16, 7507.2207, -6382.0225, 39.357403, 100, 0, 0),
(@GUID, 17, 7511.6597, -6389.8296, 41.06302, 100, 0, 0),
(@GUID, 18, 7509.211, -6392.9062, 41.51196, 100, 0, 0),
(@GUID, 19, 7503.9688, -6396.7344, 42.232685, 100, 0, 0),
(@GUID, 20, 7523.4307, -6403.814, 41.32212, 100, 0, 0),
(@GUID, 21, 7503.9688, -6396.7344, 42.232685, 100, 0, 0),
(@GUID, 22, 7509.211, -6392.9062, 41.51196, 100, 0, 0),
(@GUID, 23, 7511.6597, -6389.8296, 41.06302, 100, 0, 0),
(@GUID, 24, 7507.2207, -6382.0225, 39.357403, 100, 0, 0),
(@GUID, 25, 7511.5366, -6375.772, 35.82529, 100, 0, 0),
(@GUID, 26, 7517.7847, -6372.229, 31.714348, 100, 0, 0),
(@GUID, 27, 7525.638, -6376.0254, 29.356146, 100, 0, 0),
(@GUID, 28, 7529.4907, -6380.0205, 29.392622, 100, 0, 0),
(@GUID, 29, 7529.44, -6386.936, 32.666985, 100, 0, 0),
(@GUID, 30, 7526.5522, -6391.0425, 35.63183, 100, 0, 0),
(@GUID, 31, 7518.6494, -6393.4175, 39.847206, 100, 0, 0),
(@GUID, 32, 7512.113, -6391.0283, 41.128998, 100, 0, 0),
(@GUID, 33, 7504.889, -6396.0176, 42.10122, 100, 0, 0),
(@GUID, 34, 7502.9966, -6396.4004, 42.27991, 100, 0, 0),
(@GUID, 35, 7499.272, -6378.8696, 41.093914, 100, 0, 0),
(@GUID, 36, 7505.858, -6366.499, 39.54415, 100, 0, 0),
(@GUID, 37, 7518.232, -6361.598, 38.175793, 100, 0, 0),
(@GUID, 38, 7527.8696, -6362.4624, 37.50347, 100, 0, 0),
(@GUID, 39, 7538.2993, -6373.2803, 37.604626, 100, 0, 0),
(@GUID, 40, 7539.8125, -6388.4346, 38.761326, 100, 0, 0);
-- 0x20309442400FEC000000160003D1F959 .go xyz 7539.8125, -6388.4346, 38.761326

-- Pathing for Mana Shifter Entry: 16310 'CMaNGOS FORMAT' 
SET @GUID := 5302462;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7528.51, -6328.1074, 11.362928, 100, 0, 0),
(@GUID, 2, 7507.8394, -6342.2085, 13.260005, 100, 0, 0),
(@GUID, 3, 7485.5376, -6355.259, 13.7642975, 100, 0, 0),
(@GUID, 4, 7470.434, -6380.24, 13.889555, 100, 0, 0),
(@GUID, 5, 7473.6875, -6401.5107, 14.347273, 100, 0, 0),
(@GUID, 6, 7493.6562, -6418.146, 13.847273, 100, 0, 0),
(@GUID, 7, 7508.0913, -6428.413, 13.69941, 100, 0, 0); -- path incomplete
-- 0x20309442400FED800000160000558792 .go xyz 7528.51 -6328.1074 11.362928

-- ================
-- Suncrown Village
-- ================
-- Nerubis Guard 16313
-- https://web.archive.org/web/20080222045939/http://wow.allakhazam.com/db/mob.html?wmob=16313
-- https://web.archive.org/web/20100515203714/http://www.wowhead.com/npc=16313
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16313; -- CREATURE_EXTRA_FLAG_DYNGUID

-- Anok'suten 16357
-- https://youtu.be/lMsnvgGSq54?t=63
UPDATE `creature_template` SET `UnitFlags` = 64, `SpeedWalk` = (2.5 / 2.5), `ExtraFlags` = `ExtraFlags`|(4096+1048576) WHERE `entry` = 16357; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (2881,6344,50502,50600) AND `entry` = 16357;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16357, 774, 0.5, 0, 1, 1, 0, 'Malachite'),
(16357, 1210, 0.5, 0, 1, 1, 0, 'Shadowgem'),
(16357, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 60106 AND `entry` = 16357; -- Green

DELETE FROM `creature_movement` WHERE `Id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16357); -- Anok'suten
DELETE FROM `creature` WHERE `id` IN (16313,16357);
DELETE FROM `creature` WHERE `guid` BETWEEN 5302388 AND 5302447 AND `id` = 16313;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302388, 16313, 530, 7917.68, -7254.84, 155.815, 2.39918, 300, 300, 5, 1),
(5302389, 16313, 530, 7891.48, -7265.98, 155.814, 1.21025, 300, 300, 5, 1),
(5302390, 16313, 530, 7927.29, -7210.73, 133.072, 0.782311, 300, 300, 5, 1),
(5302391, 16313, 530, 7881.63, -7254.56, 135.359, 1.88359, 300, 300, 5, 1),
(5302392, 16313, 530, 7910.72, -7275.58, 155.821, 0.654843, 300, 300, 5, 1),
(5302393, 16313, 530, 7913.52, -7274.86, 139.928, 0.092749, 300, 300, 5, 1),
(5302394, 16313, 530, 7934.49755859375, -7281.12060546875, 139.9403076171875, 5.109298229217529296, 300, 300, 5, 1),
(5302395, 16313, 530, 8063.88, -7227.39, 158.636, 2.5068, 300, 300, 5, 1), -- d.81771
(5302396, 16313, 530, 8005.55, -7215.29, 140.733, 0.859763, 300, 300, 5, 1),
(5302397, 16313, 530, 8064.798828125, -7226.09716796875, 142.7427825927734375, 1.025228500366210937, 300, 300, 5, 1), -- move spawn d.82110
(5302398, 16313, 530, 8076.1455078125, -7209.85595703125, 158.6285858154296875, 0.408957690000534057, 300, 300, 5, 1), -- d.82111
(5302399, 16313, 530, 7980.2, -7277.51, 141.477, 1.266, 300, 300, 5, 1),
(5302400, 16313, 530, 8047.76, -7214.73, 158.63, 0.086975, 300, 300, 5, 1),
(5302401, 16313, 530, 8059.7866, -7234.3174, 142.74278, 0, 300, 300, 0, 4), -- patrol
(5302402, 16313, 530, 8004.17, -7245.37, 140.082, 2.92907, 300, 300, 5, 1),
(5302403, 16313, 530, 8081.00146484375, -7236.935546875, 158.6287689208984375, 2.410483598709106445, 300, 300, 5, 1), -- d.82112
(5302404, 16313, 530, 7908.89, -7290.9, 155.816, 1.0134, 300, 300, 5, 1),
(5302405, 16313, 530, 8049.94, -7241.1, 142.758, 1.78743, 300, 300, 5, 1),
(5302406, 16313, 530, 8021.15, -7276.64, 141.569, 5.86424, 300, 300, 5, 1),
(5302407, 16313, 530, 7910.08, -7343.75, 142.364, 1.69972, 300, 300, 5, 1),
(5302408, 16313, 530, 7977.77, -7309.79, 143.179, 3.13593, 300, 300, 5, 1),
(5302409, 16313, 530, 7912.77, -7322.09, 142.163, 5.42778, 300, 300, 5, 1),
(5302410, 16313, 530, 7878.73, -7285.98, 139.36, 1.93883, 300, 300, 5, 1),
(5302411, 16313, 530, 7937.96, -7354.21, 144.804, 5.90593, 300, 300, 5, 1),
(5302412, 16313, 530, 7943.96, -7390.71, 142.6, 0.296576, 300, 300, 5, 1),
(5302413, 16313, 530, 7973.29443359375, -7379.5517578125, 141.2067718505859375, 5.250002861022949218, 300, 300, 5, 1),
(5302414, 16313, 530, 8013.4, -7415.66, 146.733, 3.96502, 300, 300, 5, 1),
(5302415, 16313, 530, 8018.51, -7377.34, 141.626, 0.924137, 300, 300, 5, 1),
(5302416, 16313, 530, 8036.01, -7364.29, 144.148, 4.16971, 300, 300, 5, 1),
(5302417, 16313, 530, 8054.48, -7395.71, 142.656, 1.681, 300, 300, 5, 1),
(5302418, 16313, 530, 8076.13, -7338.33, 141.755, 2.26157, 300, 300, 5, 1),
(5302419, 16313, 530, 8055.91, -7372.2, 143.957, 3.43894, 300, 300, 5, 1),
(5302420, 16313, 530, 8087.92, -7380.57, 164.221, 2.75257, 300, 300, 5, 1),
(5302421, 16313, 530, 8092.19, -7388.02, 142.92, 6.22496, 300, 300, 5, 1),
(5302422, 16313, 530, 8039.06, -7373.16, 144.328, 0, 300, 300, 0, 4), -- patrol
(5302423, 16313, 530, 8051.65, -7383.42, 165.085, 5.84559, 300, 300, 5, 1),
(5302424, 16313, 530, 8062.16, -7366.95, 164.38, 5.73705, 300, 300, 5, 1),
(5302425, 16313, 530, 8018.67, -7324.76, 142.587, 3.16472, 300, 300, 5, 1),
(5302426, 16313, 530, 8076.57, -7314.19, 142.1, 2.15668, 300, 300, 5, 1),
(5302427, 16313, 530, 8046.61962890625, -7318.23095703125, 141.4781951904296875, 5.014691829681396484, 300, 300, 5, 1), -- might be patrol
(5302428, 16313, 530, 8043.7705078125, -7286.7734375, 141.088226318359375, 3.203671455383300781, 300, 300, 5, 1),
(5302429, 16313, 530, 8081.529785, -7253.419922, 140.921997, 5.080754280090332031, 300, 300, 5, 1),
(5302430, 16313, 530, 8032.8017578125, -7407.4482421875, 143.8387298583984375, 0.199041545391082763, 300, 300, 5, 1),
(5302431, 16313, 530, 8084.83, -7488.58, 151.409, 1.30011, 300, 300, 5, 1),
(5302432, 16313, 530, 8114.41, -7486.53, 155.379, 0.102157, 300, 300, 5, 1),
(5302433, 16313, 530, 8125.57, -7503.06, 162.773, 1.25773, 300, 300, 5, 1),
(5302434, 16313, 530, 8147.62, -7487, 152.346, 0.98401, 300, 300, 5, 1),
(5302435, 16313, 530, 8138.35, -7511.81, 160.649, 3.32652, 300, 300, 5, 1),
(5302436, 16313, 530, 8054.1, -7511.16, 150.723, 3.37757, 300, 300, 5, 1),
(5302437, 16313, 530, 8113.41, -7552.92, 171.521, 3.9528, 300, 300, 5, 1),
(5302438, 16313, 530, 8051.92, -7547.54, 150.128, 0.305359, 300, 300, 5, 1),
(5302439, 16313, 530, 8022.23, -7543.98, 146.799, 2.06548, 300, 300, 5, 1),
(5302440, 16313, 530, 8118.99, -7608.19, 150.797, 2.3161, 300, 300, 5, 1),
(5302441, 16313, 530, 8117.7, -7593.37, 157.453, 5.36761, 300, 300, 5, 1),
(5302442, 16313, 530, 8047.31, -7580.24, 147.437, 4.09581, 300, 300, 5, 1),
(5302443, 16313, 530, 8080.82, -7591.3, 149.215, 4.58534, 300, 300, 5, 1),
(5302444, 16313, 530, 8145.62, -7612.53, 149.937, 1.56981, 300, 300, 5, 1),
(5302445, 16313, 530, 7988.4, -7185.39, 135.418, 5.19177, 300, 300, 5, 1),
(5302446, 16313, 530, 8018.2, -7181.63, 136.041, 2.21388, 300, 300, 5, 1),
(5302447, 16313, 530, 8050.99, -7186.66, 140.962, 4.79919, 300, 300, 5, 1),
(5302448, 16357, 530, 7907.8212890625, -7261.64990234375, 155.8169403076171875, 0.482410401105880737, 300, 300, 0, 2);

-- Pathing for Nerubis Guard Entry: 16313 'CMaNGOS FORMAT' 
SET @GUID := 5302401;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 8059.7866, -7234.3174, 142.74278, 100, 0, 0),
(@GUID, 2, 8043.001, -7257.784, 140.44353, 100, 0, 0),
(@GUID, 3, 8031.8647, -7253.7134, 140.51013, 100, 0, 0),
(@GUID, 4, 8028.828, -7227.35, 139.8902, 100, 0, 0),
(@GUID, 5, 8045.1406, -7206.0024, 149.90599, 100, 0, 0),
(@GUID, 6, 8054.3115, -7201.061, 153.1547, 100, 0, 0),
(@GUID, 7, 8062.1357, -7201.198, 156.03026, 100, 0, 0),
(@GUID, 8, 8075.4395, -7211.2393, 158.62909, 100, 0, 0),
(@GUID, 9, 8056.79, -7237.8306, 158.6323, 100, 0, 0);
-- 0x203CC442400FEE4000001F0000CD7131 .go xyz 8059.7866, -7234.3174, 142.74278

-- Pathing for Nerubis Guard Entry: 16313 'CMaNGOS FORMAT' 
SET @GUID := 5302422;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 8039.06, -7373.16, 144.328, 100, 0, 0),
(@GUID, 2, 8051.43359375, -7385.18798828125, 152.362762451171875, 100, 0, 0),
(@GUID, 3, 8059.011, -7370.053, 153.7886, 100, 0, 0),
(@GUID, 4, 8070.358, -7342.4834, 152.83217, 100, 0, 0),
(@GUID, 5, 8076.145, -7342.5244, 152.84624, 100, 0, 0),
(@GUID, 6, 8088.7847, -7351.132, 155.2907, 100, 0, 0),
(@GUID, 7, 8094.854, -7362.633, 159.5592, 100, 0, 0); -- incomplete, maybe two patrols
-- 0x20307C42400FEE4000006A00000B17FD .go xyz 8039.06, -7373.16, 144.328

DELETE FROM `creature_movement_template` WHERE `Entry` = 16357;
INSERT INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Comment`) VALUES
(16357, 1, 7907.8212890625, -7261.64990234375, 155.8169403076171875, 100, NULL),
(16357, 2, 7920.6763, -7263.211, 155.8173, 100, NULL),
(16357, 3, 7925.768, -7272.3706, 155.81439, 100, NULL),
(16357, 4, 7923.9473, -7281.567, 155.81462, 100, NULL),
(16357, 5, 7913.2866, -7288.8774, 155.81728, 100, NULL),
(16357, 6, 7902.268, -7284.6, 155.81789, 100, NULL),
(16357, 7, 7896.721, -7274.737, 155.81575, 100, NULL),
(16357, 8, 7892.6104, -7273.857, 155.81439, 100, NULL),
(16357, 9, 7889.3013, -7277.143, 155.28731, 100, 'Gap to 11'),
(16357, 10, 7964.39, -7344.49, 140.298, 100, 'guessed'),
(16357, 11, 8021.0947, -7357.2993, 141.18483, 100, NULL),
(16357, 12, 8052.1616, -7325.52, 141.14775, 100, NULL),
(16357, 13, 8057.1235, -7312.013, 141.27275, 100, NULL),
(16357, 14, 8058.7734, -7296.549, 141.38231, 100, NULL),
(16357, 15, 8057.38, -7284.6, 140.724, 100, 'guessed'),
(16357, 16, 8042.08, -7257.95, 140.385, 100, 'guessed'),
(16357, 17, 8022.0244140625, -7250.67431640625, 140.6328887939453125, 100, 'guessed by spawn point'),
(16357, 18, 8001.62646484375, -7246.15185546875, 139.9937744140625, 100, 'guessed by spawn point'),
(16357, 19, 7981.71, -7247.56, 137.597, 100, 'guessed'),
(16357, 20, 7973.8228, -7252.6577, 137.25917, 100, NULL),
(16357, 21, 7962.366, -7261.485, 137.04005, 100, NULL),
(16357, 22, 7953.8315, -7280.776, 137.74208, 100, NULL),
(16357, 23, 7889.3013, -7277.143, 155.28731, 100, 'guessed'),
(16357, 24, 7892.6104, -7273.857, 155.81439, 100, 'guessed');

-- ================
-- Windrunner Spire
-- ================

-- Fallen Ranger 16314 - i.22597
-- https://web.archive.org/web/20080302143553/http://wow.allakhazam.com/db/mob.html?wmob=16314
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16314; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (118,858,2455,2287,4345,6344,6348,50502) AND `entry` = 16314;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16314, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16314, 774, 0.2, 0, 1, 1, 0, 'Malachite'),
(16314, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16314, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Deatholme Acolyte 16315 - i.22597
-- https://web.archive.org/web/20071230004432/http://wow.allakhazam.com/db/mob.html?wmob=16315
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16315; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4409,6347,6348,6716,50502) AND `entry` = 16315;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16315, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16315, 774, 0.1, 0, 1, 1, 0, 'Malachite'),
(16315, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16315, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16314,16315));
DELETE FROM `creature` WHERE `id` IN (16314,16315);
DELETE FROM `creature` WHERE `guid` BETWEEN 5302701 AND 5302732;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302701, 16314, 530, 7058.19921875, -5792.74072265625, 49.2176666259765625, 1.71378028392791748, 300, 300, 5, 1),
(5302702, 16314, 530, 6983.06, -5844.8, 47.174, 1.59517, 300, 300, 5, 1),
(5302703, 16314, 530, 7009.74, -5815.04, 66.761, 4.55041, 300, 300, 5, 1),
(5302704, 16315, 530, 7020.8555, -5738.1626, 105.2407, 0, 300, 300, 0, 4),
(5302705, 16315, 530, 6983.85, -5747.48, 84.2958, 4.42905, 300, 300, 5, 1),
(5302706, 16314, 530, 7026.81, -5777.01, 86.6475, 0.501217, 300, 300, 5, 1),
(5302707, 16314, 530, 6969.30078125, -5738.6103515625, 84.29576873779296875, 5.08451700210571289, 300, 300, 3, 1),
(5302708, 16314, 530, 7020.0576171875, -5734.05078125, 105.1327896118164062, 1.929980397224426269, 300, 300, 2, 1),
(5302709, 16314, 530, 7024.78466796875, -5752.82421875, 100.6259536743164062, 4.768599510192871093, 300, 300, 5, 1),
(5302710, 16315, 530, 6984.78, -5725.2, 84.1039, 2.12036, 300, 300, 3, 1),
(5302711, 16315, 530, 7056.62939453125, -5734.591796875, 84.230804443359375, 3.715481042861938476, 300, 300, 5, 1),
(5302712, 16315, 530, 7015.49755859375, -5712.55224609375, 106.6074447631835937, 3.18492436408996582, 300, 300, 2, 1),
(5302713, 16315, 530, 7055.22, -5718.27, 84.2155, 4.82528, 300, 300, 3, 1),
(5302714, 16314, 530, 7065.8818359375, -5719.13427734375, 84.24062347412109375, 1.794481635093688964, 300, 300, 3, 1),
(5302715, 16314, 530, 7011.75, -5677.9, 82.6366, 1.87804, 300, 300, 2, 1),
(5302716, 16314, 530, 7006.5, -5690.31, 82.6524, 1.68673, 300, 300, 2, 1),
(5302717, 16315, 530, 6997.6, -5659.572, 80.76391, 0, 300, 300, 0, 4),
(5302718, 16315, 530, 7008.458, -5692.7563, 102.441956, 0, 300, 300, 0, 2),
(5302719, 16315, 530, 6982.41, -5684.82, 82.6858, 4.20834, 300, 300, 3, 1),
(5302720, 16315, 530, 7020.13, -5690.52, 82.6788, 5.20008, 300, 300, 2, 1),
(5302721, 16315, 530, 7019.9004, -5656.8804, 80.780426, 0, 300, 300, 0, 4),
(5302722, 16314, 530, 6998.6, -5685.4, 102.562, 0.681355, 300, 300, 3, 1),
(5302723, 16314, 530, 7027.35, -5684.5, 102.611, 2.15704, 300, 300, 3, 1),
(5302724, 16314, 530, 7012.73681640625, -5673.13330078125, 102.5048751831054687, 0.797618567943572998, 300, 300, 2, 1),
(5302725, 16315, 530, 7047.84326171875, -5813.53125, 46.11582183837890625, 5.903041839599609375, 300, 300, 5, 1),
(5302726, 16315, 530, 6970.0673828125, -5700.59423828125, 92.26541900634765625, 4.883859634399414062, 300, 300, 3, 1),
(5302727, 16314, 530, 7025.49, -5847.62, 49.222, 3.54302, 300, 300, 5, 1),
(5302728, 16315, 530, 7040.9, -5669.2, 82.1646, 4.79297, 300, 300, 3, 1),
(5302729, 16315, 530, 7057.60986328125, -5685.408203125, 92.96010589599609375, 4.905610084533691406, 300, 300, 2, 1),
(5302730, 16314, 530, 7022.27294921875, -5656.99951171875, 80.780426025390625, 5.981015682220458984, 300, 300, 2, 1),
(5302731, 16314, 530, 7009.60693359375, -5644.791015625, 80.7138519287109375, 2.046421527862548828, 300, 300, 3, 1),
(5302732, 16314, 530, 6999.10302734375, -5662.2451171875, 80.7705230712890625, 2.529907703399658203, 300, 300, 3, 1);

-- Pathing for Deatholme Acolyte Entry: 16315 'CMaNGOS FORMAT' 
SET @GUID := 5302704;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7020.8555, -5738.1626, 105.2407, 100, 0, 0),
(@GUID, 2, 7023.218, -5752.3257, 100.925026, 100, 0, 0),
(@GUID, 3, 7025.036, -5766.217, 92.00779, 100, 0, 0),
(@GUID, 4, 7024.269, -5783.517, 83.72383, 100, 0, 0),
(@GUID, 5, 7019.844, -5795.6807, 77.70369, 100, 0, 0),
(@GUID, 6, 7009.5645, -5810.03, 68.75157, 100, 0, 0),
(@GUID, 7, 6996.22, -5824.52, 58.9523, 100, 0, 0),
(@GUID, 8, 6985.41, -5841.97, 49.1264, 100, 0, 0),
(@GUID, 9, 6980.41, -5864.21, 38.0055, 100, 0, 0),
(@GUID, 10, 6980.6, -5898.02, 28.7638, 100, 0, 0);
-- 0x203CC442400FEEC0001D530000741614 .go xyz 7019.844 -5795.6807 77.70369
UPDATE `creature_movement` SET `comment` = 'old db data' WHERE `id` = 5302704 AND `point` BETWEEN 7 AND 10;

-- Pathing for Deatholme Acolyte Entry: 16315 'CMaNGOS FORMAT' 
SET @GUID := 5302717;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 6997.6, -5659.572, 80.76391, 100, 0, 0),
(@GUID, 2, 6992.815, -5663.3853, 81.08223, 100, 0, 0),
(@GUID, 3, 6986.7153, -5669.108, 81.556786, 100, 0, 0),
(@GUID, 4, 6981.4985, -5678.178, 82.22271, 100, 0, 0),
(@GUID, 5, 6978.81, -5693.6313, 83.435234, 100, 0, 0),
(@GUID, 6, 6979.14, -5713.551, 84.424416, 100, 0, 0),
(@GUID, 7, 6981.325, -5722.795, 84.23877, 100, 0, 0),
(@GUID, 8, 6977.486, -5726.349, 84.29577, 100, 0, 0),
(@GUID, 9, 6971.3066, -5723.894, 84.3634, 100, 0, 0),
(@GUID, 10, 6967.3354, -5713.7583, 87.91317, 100, 0, 0),
(@GUID, 11, 6968.454, -5702.842, 91.22821, 100, 0, 0),
(@GUID, 12, 6975.971, -5694.044, 95.7253, 100, 0, 0),
(@GUID, 13, 6987.627, -5688.987, 100.55511, 100, 0, 0),
(@GUID, 14, 6998.1616, -5687.537, 102.58447, 100, 0, 0);
-- 0x203CC442400FEEC0001D530000740941 .go xyz 6977.486 -5726.349 84.29577

-- Pathing for Deatholme Acolyte Entry: 16315 'CMaNGOS FORMAT' 
SET @GUID := 5302718;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7008.458, -5692.7563, 102.441956, 100, 0, 0),
(@GUID, 2, 7012.4697, -5694.48, 102.39562, 100, 0, 0),
(@GUID, 3, 7017.362, -5693.4585, 102.40715, 100, 0, 0),
(@GUID, 4, 7020.9595, -5689.228, 102.3715, 100, 0, 0),
(@GUID, 5, 7021.114, -5682.306, 102.36366, 100, 0, 0),
(@GUID, 6, 7018.1533, -5678.813, 102.368195, 100, 0, 0),
(@GUID, 7, 7012.334, -5677.6343, 102.36714, 100, 0, 0),
(@GUID, 8, 7007.7095, -5679.725, 102.36718, 100, 0, 0),
(@GUID, 9, 7004.7573, -5684.2275, 102.37094, 100, 0, 0),
(@GUID, 10, 7005.509, -5689.2285, 102.36203, 100, 0, 0);
-- 0x203CC442400FEEC0001D530000F4165E .go xyz 7008.458 -5692.7563 102.441956

-- Pathing for Deatholme Acolyte Entry: 16315 'CMaNGOS FORMAT' 
SET @GUID := 5302721;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7019.9004, -5656.8804, 80.780426, 100, 0, 0),
(@GUID, 2, 7026.0024, -5658.157, 81.05522, 100, 0, 0),
(@GUID, 3, 7034.332, -5662.384, 81.58104, 100, 0, 0),
(@GUID, 4, 7040.5137, -5668.5884, 82.08224, 100, 0, 0),
(@GUID, 5, 7047.8506, -5682.1416, 83.38293, 100, 0, 0),
(@GUID, 6, 7053.4814, -5695.8267, 84.24983, 100, 0, 0),
(@GUID, 7, 7054.388, -5710.0835, 84.32379, 100, 0, 0),
(@GUID, 8, 7057.6626, -5714.525, 84.23196, 100, 0, 0),
(@GUID, 9, 7062.471, -5713.8022, 84.26099, 100, 0, 0),
(@GUID, 10, 7064.8384, -5704.6904, 85.973885, 100, 0, 0),
(@GUID, 11, 7063.4204, -5693.1353, 90.06081, 100, 0, 0),
(@GUID, 12, 7056.7983, -5684.974, 93.249344, 100, 0, 0),
(@GUID, 13, 7046.176, -5681.1313, 98.17607, 100, 0, 0),
(@GUID, 14, 7036.658, -5680.9824, 101.349525, 100, 0, 0),
(@GUID, 15, 7028.906, -5683.0977, 102.596886, 100, 0, 0);
-- 0x203CC442400FEEC0001D530000741711 .go xyz 7053.4814 -5695.8267 84.24983

-- =================
-- Bleeding Zigguart
-- =================

-- Stonewing Tracker 16316
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16316; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (2409,4346,5972,6375,50502,50600) AND `entry` = 16316;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16316, 1206, 0.1, 0, 1, 1, 0, 'Moss Agate'),
(16316, 1210, 0.3, 0, 1, 1, 0, 'Shadowgem'),
(16316, 818, 0.05, 0, 1, 1, 0, 'Tigerseye'),
(16316, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature` WHERE `id` = 16316;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302733, 16316, 530, 7221.24, -6350.17, 42.281, 0.784609, 300, 300, 10, 1),
(5302734, 16316, 530, 7245.87, -6371.23, 45.5117, 1.98578, 300, 300, 10, 1),
(5302735, 16316, 530, 7284, -6389.01, 42.9657, 5.91538, 300, 300, 10, 1),
(5302736, 16316, 530, 7151.58251953125, -6417.0107421875, 39.69874954223632812, 4.290693283081054687, 300, 300, 10, 1),
(5302737, 16316, 530, 7279.27099609375, -6447.33056640625, 31.69436454772949218, 1.409456253051757812, 300, 300, 10, 1),
(5302738, 16316, 530, 7268.84, -6422.21, 44.8567, 0.68786, 300, 300, 10, 1),
(5302739, 16316, 530, 7121.49462890625, -6645.91943359375, 45.05701065063476562, 4.965888023376464843, 300, 300, 10, 1),
(5302740, 16316, 530, 7164.14, -6659.28, 51.1032, 2.44948, 300, 300, 10, 1),
(5302741, 16316, 530, 7186.97216796875, -6654.8828125, 52.35645675659179687, 5.1043243408203125, 300, 300, 10, 1),
(5302742, 16316, 530, 7234.97, -6643.13, 49.204, 5.49503, 300, 300, 10, 1);

-- Deatholme Darkmage 16318
-- https://web.archive.org/web/20071229234054/http://wow.allakhazam.com/db/mob.html?wmob=16318
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16318; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,2601,6344,6348,6375,11039,50502) AND `entry` = 16318;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16318, 1210, 0.25, 0, 1, 1, 0, 'Shadowgem'),
(16318, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16318, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16318); -- delete bad non aura guids (thx @al3xc1985)
DELETE FROM `creature` WHERE `id` = 16318;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302743, 16318, 530, 7220.64501953125, -6403.009765625, 56.24953079223632812, 4.660028934478759765, 300, 300, 0, 0),
(5302744, 16318, 530, 7221.1875, -6428.111328125, 56.24944305419921875, 1.623156189918518066, 300, 300, 0, 0),
(5302745, 16318, 530, 7232.88232421875, -6414.5380859375, 56.24930953979492187, 3.176499128341674804, 300, 300, 0, 0),
(5302746, 16318, 530, 7216.7509765625, -6415.4697265625, 59.2485809326171875, 0.104719758033752441, 300, 300, 0, 0),
(5302747, 16318, 530, 7167.1162109375, -6626.78662109375, 60.74185562133789062, 1.413716673851013183, 300, 300, 0, 0),
(5302748, 16318, 530, 7173.07666015625, -6602.65478515625, 60.74173355102539062, 4.450589656829833984, 300, 300, 0, 0),
(5302749, 16318, 530, 7157.48486328125, -6611.3837890625, 60.7415771484375, 6.038839340209960937, 300, 300, 0, 0),
(5302750, 16318, 530, 7172.9970703125, -6615.69384765625, 63.7408447265625, 2.932153224945068359, 300, 300, 0, 0);

-- =========
-- Deatholme
-- =========

-- Borgoth the Bloodletter 16247
-- https://web.archive.org/web/20071219115738/http://wow.allakhazam.com/db/mob.html?wmob=16247
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (7 / 7), `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16247; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (414,1179,4537,50502,50600,60442) AND `entry` = 16247;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16247, 1206, 0.2, 0, 1, 1, 0, 'Moss Agate'),
(16247, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16247, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Jurion the Deceiver 16248
-- https://web.archive.org/web/20071030124337/http://wow.allakhazam.com/db/mob.html?wmob=16248
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16248; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (50502,50600,60442) AND `entry` = 16248;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16248, 1206, 0.1, 0, 1, 1, 0, 'Moss Agate'),
(16248, 1210, 0.3, 0, 1, 1, 0, 'Shadowgem'),
(16248, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Masophet the Black 16249
-- https://web.archive.org/web/20071031005116/http://wow.allakhazam.com/db/mob.html?wmob=16249
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16249; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (4410,6716,50502,50600,60442) AND `entry` = 16249;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16249, 818, 0.15, 0, 1, 1, 0, 'Tigerseye'),
(16249, 1210, 0.4, 0, 1, 1, 0, 'Shadowgem'),
(16249, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Mirdoran the Fallen 16250
-- https://web.archive.org/web/20071030064130/http://wow.allakhazam.com/db/mob.html?wmob=16250
-- https://web.archive.org/web/20121119021712/http://www.wowhead.com:80/npc=16250#drops:50-15+1
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16250; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (414,2318,858,2881,4410,50502,50600,60442) AND `entry` = 16250;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16250, 1206, 0.3, 0, 1, 1, 0, 'Moss Agate'),
(16250, 1210, 0.2, 0, 1, 1, 0, 'Shadowgem'),
(16250, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Nerubis Centurion 16319
-- https://web.archive.org/web/20071030124357/http://wow.allakhazam.com/db/mob.html?wmob=16319
-- https://web.archive.org/web/20121019202129/http://www.wowhead.com/npc=16319#drops:100-15+1
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16319; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (2409,4293,4345,4346,4409,6348,6390,6716,50502,50600) AND `entry` = 16319;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16319, 1210, 0.25, 0, 1, 1, 0, 'Shadowgem'),
(16319, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Deatholme Necromancer 16317
-- https://web.archive.org/web/20071030001229/http://wow.allakhazam.com/db/mob.html?wmob=16317
UPDATE `creature_template` SET `UnitFlags` = 32768, `CallForHelp` = 5, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16317;
DELETE FROM `creature_loot_template` WHERE `item` IN (2409,4292,4293,4345,4346,4349,4409,5972,6716,11039,50502,50600) AND `entry` = 16317;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16317, 1210, 0.2, 0, 1, 1, 0, 'Shadowgem'),
(16317, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Eye of Dar'Khan 16320
-- https://web.archive.org/web/20071229150739/http://wow.allakhazam.com/db/mob.html?wmob=16320
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16320;
DELETE FROM `creature_loot_template` WHERE `item` IN (4349,5972,6344,6347,6348,11081,50502,50600) AND `entry` = 16320;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16320, 1210, 0.3, 0, 1, 1, 0, 'Shadowgem'),
(16320, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Wailer 16321
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16321;
DELETE FROM `creature_loot_template` WHERE `item` IN (2409,3393,4292,4345,4347,6347,6348,11038,50502,50600) AND `entry` = 16321;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16321, 1210, 0.2, 0, 1, 1, 0, 'Shadowgem'),
(16321, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Dar'Khan Drathir 16329 - Seemingly changed Pattern List
-- https://web.archive.org/web/20071229150744/http://wow.allakhazam.com/db/mob.html?wmob=16329
-- https://web.archive.org/web/20121117090001/http://www.wowhead.com/npc=16329#drops:100-15+1
UPDATE `creature_template` SET `UnitFlags` = 32832, `ExtraFlags` = `ExtraFlags`|1048576, `MechanicImmuneMask` = `MechanicImmuneMask`|(256+33554432) WHERE `entry` = 16329;
DELETE FROM `creature_loot_template` WHERE `item` IN (2881,4349,5543,50502,50600) AND `entry` = 16329;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16329, 1210, 0.2, 0, 1, 1, 0, 'Shadowgem'),
(16329, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16329, 5543, 0.01, 0, 1, 1, 0, 'Plans: Iridescent Hammer'),
(16329, 4412, 0.01, 0, 1, 1, 0, 'Schematic: Moonsight Rifle'),
(16329, 7363, 0.01, 0, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'),
(16329, 4297, 0.01, 0, 1, 1, 0, 'Pattern: Barbaric Gloves'),
(16329, 4296, 0.01, 0, 1, 1, 0, 'Pattern: Dark Leather Shoulders'),
(16329, 7364, 0.01, 0, 1, 1, 0, 'Pattern: Heavy Earthen Gloves'),
(16329, 10424, 0.01, 0, 1, 1, 0, 'Plans: Silvered Bronze Leggings'), -- confirmed until here, gather cases for new range (50504 level 20-30?)
(16329, 11098, 0.01, 0, 1, 1, 0, 'Formula: Enchant Cloak - Lesser Shadow Resistance'),
(16329, 7363, 0.01, 0, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'),
(16329, 3612, 0.01, 0, 1, 1, 0, 'Plans: Green Iron Gauntlets'),
(16329, 3396, 0.01, 0, 1, 1, 0, 'Recipe: Elixir of Lesser Agility');

-- Apprentice Varnis (16206)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16206;
UPDATE `gossip_menu` SET `condition_id` = 0 WHERE `entry` IN (7186,7179,7176); -- Already conditioned behind gossip_menu_option, so text is now displayed during gm debug
DELETE FROM `dbscripts_on_gossip` WHERE `Id` = 7186 AND `command` IN (1,25); -- emote and set run
UPDATE `dbscripts_on_gossip` SET `delay` = 0 WHERE `Id` = 7186 AND `command` = 8; -- quest credit
UPDATE `dbscripts_on_gossip` SET `delay` = 2000 WHERE `Id` = 7186 AND `command` = 20; -- text on gossip
DELETE FROM `creature_movement_template` WHERE `entry` = 16206 AND `point` BETWEEN 3 and 7;
UPDATE `creature_movement_template` SET `positionx` = 6426.9736, `positiony` = -6614.0903, `positionz` = 110.5383, `WaitTime` = 0, `ScriptId` = 0 WHERE `entry` = 16206 AND `point` = 1;
UPDATE `creature_movement_template` SET `positionx` = 6431.514, `positiony` = -6597.9756, `positionz` = 112.11294, `WaitTime` = 1, `ScriptId` = 1 WHERE `entry` = 16206 AND `point` = 2;
-- (MovementMonsterSpline) (MovementSpline) [0] WayPoints: X: 6435.7236, -6631.0903, 107.7883
-- (MovementMonsterSpline) (MovementSpline) [1] WayPoints: X: 6436.9736, -6626.3403, 107.7883
-- (MovementMonsterSpline) (MovementSpline) [2] WayPoints: X: 6435.2236, -6617.8403, 107.7883
-- (MovementMonsterSpline) (MovementSpline) [3] WayPoints: X: 6428.9736, -6617.8403, 109.2883
-- (MovementMonsterSpline) (MovementSpline) [4] WayPoints: X: 6426.9736, -6614.0903, 110.5383
-- (MovementMonsterSpline) (MovementSpline) [5] WayPoints: X: 6429.9736, -6610.8403, 112.2883
-- (MovementMonsterSpline) (MovementSpline) [6] WayPoints: X: 6433.2236, -6607.8403, 112.2883

-- Apothecary Enith (16208)
UPDATE `creature_template` SET `UnitFlags` = 33024, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16208;
DELETE FROM `dbscripts_on_gossip` WHERE `Id` = 7179 AND `command` IN (25); -- run
UPDATE `dbscripts_on_gossip` SET `delay` = 0 WHERE `Id` = 7179 AND `command` IN (8,1); -- quest credit, emote(not visible like this but ok)
UPDATE `dbscripts_on_gossip` SET `delay` = 100 WHERE `Id` = 7179 AND `command` = 0; -- text
UPDATE `dbscripts_on_gossip` SET `delay` = 400 WHERE `Id` = 7179 AND `command` IN(28,29); -- standstate,npcflags
UPDATE `dbscripts_on_gossip` SET `delay` = 2700 WHERE `Id` = 7179 AND `command` = 20; -- moving
DELETE FROM `creature_movement_template` WHERE `entry` = 16208 AND `point` BETWEEN 2 and 6; -- doing sniff pathing is not an option, needs one spline to choose left side to go out
UPDATE `creature_movement_template` SET `positionx` = 6662.1343, `positiony` = -6331.6577, `positionz` = 20.891989, `WaitTime` = 1, `ScriptId` = 1 WHERE `entry` = 16208 AND `point` = 1;
-- (MovementMonsterSpline) (MovementSpline) [0] WayPoints: X: 6642.683, -6344.165, 9.459976
-- (MovementMonsterSpline) (MovementSpline) [1] WayPoints: X: 6646.933, -6344.165, 9.459976
-- (MovementMonsterSpline) (MovementSpline) [2] WayPoints: X: 6651.933, -6344.665, 11.959976
-- (MovementMonsterSpline) (MovementSpline) [3] WayPoints: X: 6656.683, -6345.165, 14.959976
-- (MovementMonsterSpline) (MovementSpline) [4] WayPoints: X: 6661.683, -6345.915, 15.459976
-- (MovementMonsterSpline) (MovementSpline) [5] WayPoints: X: 6661.433, -6337.165, 19.209976

-- Ranger Vedoran (16209)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16209;
DELETE FROM `dbscripts_on_gossip` WHERE `Id` = 7176 AND `command` IN (1,25);
UPDATE `dbscripts_on_gossip` SET `delay` = 0 WHERE `Id` = 7176 AND `command` = 8;
UPDATE `dbscripts_on_gossip` SET `delay` = 2000 WHERE `Id` = 7176 AND `command` IN (0,20); -- text on movement start
DELETE FROM `creature_movement_template` WHERE `entry` = 16209 AND `point` BETWEEN 3 and 7; -- doing sniff pathing is not an option, needs one spline to choose right side to go out
UPDATE `creature_movement_template` SET `positionx` = 6308.249, `positiony` = -6357.642, `positionz` = 80.13461, `WaitTime` = 0, `ScriptId` = 0 WHERE `entry` = 16209 AND `point` = 1;
UPDATE `creature_movement_template` SET `positionx` = 6326.8506, `positiony` = -6366.817, `positionz` = 82.70898, `WaitTime` = 1, `ScriptId` = 1 WHERE `entry` = 16209 AND `point` = 2;
-- (MovementMonsterSpline) (MovementSpline) [0] WayPoints: X: 6294.999, -6365.142, 78.38461
-- (MovementMonsterSpline) (MovementSpline) [1] WayPoints: X: 6298.499, -6364.392, 78.38461
-- (MovementMonsterSpline) (MovementSpline) [2] WayPoints: X: 6305.749, -6361.392, 78.38461
-- (MovementMonsterSpline) (MovementSpline) [3] WayPoints: X: 6308.249, -6357.642, 80.13461
-- (MovementMonsterSpline) (MovementSpline) [4] WayPoints: X: 6311.999, -6358.392, 81.88461
-- (MovementMonsterSpline) (MovementSpline) [5] WayPoints: X: 6314.749, -6363.892, 82.88461
-- (MovementMonsterSpline) (MovementSpline) [6] WayPoints: X: 6317.249, -6365.642, 82.88461

-- Blood Knight Dawnstar (17832) - npc_blood_knight_dawnstar
UPDATE `creature_template` SET `UnitFlags` = 768, `Faction` = 1604 WHERE `entry` = 17832;

-- Dr. Whitherlimb 22062
UPDATE `creature_template` SET `UnitFlags` = 0 WHERE `entry` = 22062;
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `item` = 31270 AND `entry` = 65299; -- 41
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `item` = 31269 AND `entry` = 65299; -- 25
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `item` = 31268 AND `entry` = 65299; -- 34
DELETE FROM `creature_loot_template` WHERE `item` IN (50502,50600) AND `entry` = 16329;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16329, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `pool_creature` WHERE `pool_entry` IN (1249,16462,16463,16464,16465,46875);
DELETE FROM `pool_template` WHERE `entry` IN (1249,16462,16463,16464,16465,46875);

DELETE FROM `spawn_group` WHERE `Name` = 'Ghostlands (Deatholme) - Borgoth the Bloodletter (16247)';
DELETE FROM `spawn_group` WHERE `Name` = 'Ghostlands (Deatholme) - Masophet the Black (16249)';
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(5300001, 'Ghostlands (Deatholme) - Borgoth the Bloodletter (16247)', '0', '1', '0', '0'),
(5300002, 'Ghostlands (Deatholme) - Masophet the Black (16249)', '0', '1', '0', '0');

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(5300001, 5303491, '-1'),
(5300001, 5303492, '-1'),
(5300002, 5303494, '-1'),
(5300002, 5303495, '-1');

DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16247,16248,16249,16250,16319,16317,16320,16321,16329,16206,16208,16209,17832,22062));
DELETE FROM `creature_movement` WHERE `id` IN (85744,85745,82890,84496);

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16317);
DELETE FROM `creature` WHERE `id` IN (16247,16248,16249,16250,16319,16317,16320,16321,16329,16206,16208,16209,17832,22062);
DELETE FROM `creature` WHERE `id` = 10415 AND `map` = 530;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303491, 16247, 530, 6279.76, -6361.43, 78.1116, 6.21337, 300, 300, 0, 0),
(5303492, 16247, 530, 6439.93701171875, -6645.59375, 107.5150146484375, 1.797689080238342285, 300, 300, 0, 0),
(5303493, 16248, 530, 6628.64697265625, -6342.47998046875, 10.16819572448730468, 0, 300, 300, 0, 0),
(5303494, 16249, 530, 6311.3818359375, -6249.671875, 81.18752288818359375, 2.478367567062377929, 300, 300, 0, 0),
(5303495, 16249, 530, 6305.88, -6463.66, 86.2826, 3.92699, 300, 300, 0, 0),
(5303496, 16250, 530, 6521.34619140625, -6516.05712890625, 43.8453521728515625, 2.775073528289794921, 300, 300, 0, 0),

(5303497, 16317, 530, 6301.09228515625, -6257.4912109375, 77.8969879150390625, 0.715584993362426757, 300, 300, 0, 2), -- s.28729
(5303498, 16317, 530, 6300.625, -6239.94775390625, 77.896759033203125, 5.567600250244140625, 300, 300, 0, 2), -- s.28729
(5303499, 16317, 530, 6318.4619140625, -6239.15478515625, 77.8968963623046875, 4.084070205688476562, 300, 300, 0, 2), -- s.28729

(5303500, 16317, 530, 6313.0224609375, -6474.517578125, 83.0942840576171875, 2.251474618911743164, 300, 300, 0, 2), -- s.28729
(5303501, 16317, 530, 6297.05029296875, -6472.91650390625, 83.0940704345703125, 0.750491559505462646, 300, 300, 0, 2), -- s.28729
(5303502, 16317, 530, 6296.859375, -6455.6494140625, 83.094207763671875, 5.585053443908691406, 300, 300, 0, 2), -- s.28729

(5303503, 16317, 530, 6463.95068359375, -6441.87060546875, 52.459564208984375, 3.525565147399902343, 300, 300, 0, 2), -- s.21157 - creature_addon 193
(5303504, 16317, 530, 6479.72998046875, -6289.81884765625, 48.91797637939453125, 3.141592741012573242, 300, 300, 0, 2), -- s.21157

(5303505, 16317, 530, 6448.7021484375, -6383.24609375, 41.31981658935546875, 2.792526721954345703, 300, 300, 0, 0),
(5303506, 16317, 530, 6461.7744140625, -6346.42578125, 41.29198455810546875, 2.792526721954345703, 300, 300, 0, 0),
(5303507, 16317, 530, 6477.1201171875, -6363.00927734375, 27.28609466552734375, 3.787364482879638671, 300, 300, 0, 0),
(5303508, 16317, 530, 6470.63916015625, -6380.86962890625, 27.28606224060058593, 1.919862151145935058, 300, 300, 0, 0),

(5303509, 16317, 530, 6373.92, -6399.32, 68.8309, 4.80469, 300, 300, 0, 2),
(5303510, 16317, 530, 6645.71, -6293.45, 29.268, 3.1262, 300, 300, 5, 1),
(5303511, 16317, 530, 6639.73, -6308.42, 29.309, 3.5275, 300, 300, 5, 1),
(5303512, 16317, 530, 6652.46, -6363.44, 30.6345, 1.77026, 300, 300, 5, 1),
(5303513, 16317, 530, 6487.52, -6220.51, 52.843, 5.2114, 300, 300, 3, 1),
(5303514, 16317, 530, 6639.36, -6353.36, 29.3845, 4.54505, 300, 300, 5, 1),
(5303515, 16317, 530, 6503.7, -6231.61, 53.441, 4.9601, 300, 300, 3, 1),

(5303516, 16319, 530, 6608.94, -6510.98, 37.95, 1.28177, 300, 300, 15, 1),
(5303517, 16319, 530, 6573.81, -6473.52, 33.92, 5.86162, 300, 300, 10, 1),
(5303518, 16319, 530, 6561.54, -6504.41, 37.48, 0.952152, 300, 300, 10, 1),
(5303519, 16319, 530, 6580.48, -6544.9, 43.5655, 0.871808, 300, 300, 10, 1),
(5303520, 16319, 530, 6551.86, -6549.8, 43.4567, 1.08618, 300, 300, 10, 1),
(5303521, 16319, 530, 6455.78, -6221.85, 63.585, 4.6828, 300, 300, 10, 1),
(5303522, 16319, 530, 6512.87, -6581.06, 47.35, 2.01173, 300, 300, 10, 1),
(5303523, 16319, 530, 6410.62, -6520.54, 75.1295, 3.92078, 300, 300, 15, 1),
(5303524, 16319, 530, 6395.15, -6471.49, 65.8307, 0.377968, 300, 300, 10, 1),
(5303525, 16319, 530, 6307.02, -6213.66, 80.417, 6.1398, 300, 300, 5, 1),
(5303526, 16319, 530, 6272.51, -6257.68, 80.57, 1.4195, 300, 300, 10, 1),
(5303527, 16319, 530, 6356.25, -6543.75, 90.26, 2.56063, 300, 300, 10, 1),
(5303528, 16319, 530, 6587.96, -6204.04, 52.907, 4.1519, 300, 300, 15, 1),
(5303529, 16319, 530, 6455.35, -6186.52, 69.92, 4.7771, 300, 300, 10, 1),
(5303530, 16319, 530, 6284.8, -6420.19, 80.6047, 5.55927, 300, 300, 10, 1),
(5303531, 16319, 530, 6395.93, -6213.76, 71.929, 2.2285, 300, 300, 10, 1),
(5303532, 16319, 530, 6416.22, -6222.39, 68.66, 1.9065, 300, 300, 10, 1),
(5303533, 16319, 530, 6357.56, -6381.08, 72.93, 6.28203, 300, 300, 10, 1),
(5303534, 16319, 530, 6386.37, -6247.31, 69.10, 2.2183, 300, 300, 15, 1),
(5303535, 16319, 530, 6359.38, -6484.38, 73.7127, 5.13074, 300, 300, 15, 1),
(5303536, 16319, 530, 6391.31, -6510.63, 71.64, 0.309369, 300, 300, 10, 1),
(5303537, 16319, 530, 6360.07, -6227.81, 72.586, 2.1303, 300, 300, 15, 1),
(5303538, 16319, 530, 6267.04, -6292.86, 80.604, 0.5556, 300, 300, 15, 1),
(5303539, 16319, 530, 6553.19, -6229.25, 54.462, 4.8863, 300, 300, 10, 1),
(5303540, 16319, 530, 6272.02, -6494.5, 82.8473, 0.189908, 300, 300, 10, 1),
(5303541, 16319, 530, 6320.60, -6525.43, 93.04, 4.29327, 300, 300, 10, 1),
(5303542, 16319, 530, 6353.75, -6355.5, 73.2292, 3.07819, 300, 300, 10, 1),
(5303543, 16319, 530, 6578.94, -6235.66, 49.36, 4.5061, 300, 300, 10, 1),

(5303544, 16320, 530, 6698.88330078125, -6463.11767578125, 29.34287261962890625, 5.637413501739501953, 300, 300, 0, 0),
(5303545, 16320, 530, 6690.845703125, -6483.70703125, 29.34287643432617187, 6.038839340209960937, 300, 300, 0, 0),
(5303546, 16320, 530, 6630.9228515625, -6333.9853515625, 30.18363571166992187, 3.019419670104980468, 300, 300, 0, 0),
(5303547, 16320, 530, 6633.21044921875, -6322.7412109375, 29.89544105529785156, 2.94960641860961914, 300, 300, 0, 0),
(5303548, 16320, 530, 6462.13623046875, -6349.03271484375, 55.26158905029296875, 1.675516128540039062, 300, 300, 0, 0),
(5303549, 16320, 530, 6456.20556640625, -6346.81640625, 55.26158905029296875, 1.239183783531188964, 300, 300, 0, 0),
(5303550, 16320, 530, 6347.26171875, -6434.5869140625, 78.156768798828125, 0.837758064270019531, 300, 300, 0, 0),
(5303551, 16320, 530, 6338.64794921875, -6424.51953125, 78.06884002685546875, 0.698131680488586425, 300, 300, 0, 0),
(5303552, 16320, 530, 6335.45947265625, -6372.74560546875, 78.1971435546875, 5.8817596435546875, 300, 300, 0, 0),
(5303553, 16320, 530, 6336.43603515625, -6361.6865234375, 78.108734130859375, 6.108652114868164062, 300, 300, 0, 0),
(5303554, 16320, 530, 6343.5283203125, -6287.59912109375, 73.39533233642578125, 5.846852779388427734, 300, 300, 0, 0),
(5303555, 16320, 530, 6352.8408203125, -6277.44384765625, 73.46697235107421875, 5.515240192413330078, 300, 300, 0, 0),
(5303556, 16320, 530, 6450.625, -6384.8076171875, 55.26158905029296875, 4.345870018005371093, 300, 300, 0, 0),
(5303557, 16320, 530, 6444.46728515625, -6383.09765625, 55.26158905029296875, 4.433136463165283203, 300, 300, 0, 0),

(5303558, 16320, 530, 6313.95, -6456.59, 86.01, 0.7696, 300, 300, 0, 2), -- 16321
(5303559, 16320, 530, 6509.95, -6259.63, 52.218, 2.862, 300, 300, 0, 2), -- 16321
(5303560, 16321, 530, 6437.28, -6360.66, 41.276, 1.2629, 300, 300, 0, 2), -- 16320
(5303561, 16321, 530, 6440.71, -6404.61, 48.678, 1.2039, 300, 300, 0, 2), -- 16320
(5303562, 16320, 530, 6439.41, -6483.35, 55.9861, 3.08295, 300, 300, 0, 2), -- 16321
(5303563, 16321, 530, 6611.07, -6442.62, 29.296, 1.5043, 300, 300, 0, 2), -- 16320

(5303564, 16320, 530, 6454.95, -6647.25, 108.56, 2.6108, 300, 300, 3, 1), -- 16321
(5303565, 16321, 530, 6427.86, -6653.2, 108.56, 1.0551, 300, 300, 3, 1), -- 16320

(5303566, 16320, 530, 6285.26, -6382.66, 79.2458, 4.72984, 300, 300, 3, 1), -- 16321
(5303567, 16321, 530, 6271.67, -6375.19, 79.1538, 2.26807, 300, 300, 3, 1), -- 16320
(5303568, 16321, 530, 6274.22, -6346.52, 79.15, 0, 300, 300, 3, 1), -- 16320
(5303569, 16321, 530, 6289.18, -6342.33, 79.15, 0, 300, 300, 3, 1), -- 16320

(5303570, 16320, 530, 6579.99, -6381.62, 31.3772, 2.28409, 300, 300, 10, 1),
(5303571, 16320, 530, 6541.48, -6460.78, 39.5829, 4.42782, 300, 300, 10, 1),
(5303572, 16320, 530, 6521.67, -6383.59, 47.0422, 6.27122, 300, 300, 10, 1),
(5303573, 16320, 530, 6555.31, -6346.99, 32.9609, 0.1727, 300, 300, 10, 1),
(5303574, 16320, 530, 6480.24, -6547.81, 46.7218, 1.96852, 300, 300, 10, 1),
(5303575, 16320, 530, 6411.43, -6421.56, 61.5423, 4.23564, 300, 300, 10, 1),
(5303576, 16320, 530, 6648.48, -6379.55, 32.274, 3.434, 300, 300, 10, 1),
(5303577, 16320, 530, 6527, -6298.2, 46.122, 1.4706, 300, 300, 10, 1),
(5303578, 16320, 530, 6391.89, -6347.54, 63.841, 2.94707, 300, 300, 10, 1),
(5303579, 16320, 530, 6318.94, -6415.87, 80.0936, 2.25195, 300, 300, 10, 1),
(5303580, 16320, 530, 6608.25, -6260.46, 39.272, 3.8926, 300, 300, 10, 1),
(5303581, 16320, 530, 6580.82, -6316.21, 35.502, 6.1693, 300, 300, 10, 1),

(5303582, 16321, 530, 6578.25, -6408.97, 31.1786, 5.11744, 300, 300, 10, 1),
(5303583, 16321, 530, 6519.12, -6440.00, 42.30, 4.48281, 300, 300, 10, 1),
(5303584, 16321, 530, 6584.04, -6349.61, 31.4075, 6.03469, 300, 300, 10, 1),
(5303585, 16321, 530, 6550.83, -6379.9, 33.8966, 2.79348, 300, 300, 10, 1),
(5303586, 16321, 530, 6448.48, -6513.6, 53.4191, 2.46838, 300, 300, 10, 1),
(5303587, 16321, 530, 6420.7, -6293.95, 61.144, 3.4361, 300, 300, 10, 1),
(5303588, 16321, 530, 6554.87, -6290.08, 44.863, 1.1604, 300, 300, 10, 1),
(5303589, 16321, 530, 6629.63, -6246.24, 36.022, 3.6383, 300, 300, 10, 1),
(5303590, 16321, 530, 6521.94, -6349.83, 44.203, 3.7672, 300, 300, 10, 1),
(5303591, 16321, 530, 6324.1, -6296.8, 76.4418, 6.0455, 300, 300, 10, 1),

(5303592, 16321, 530, 6349.71, -6366.3, 78.1873, 5.88176, 300, 300, 5, 1),
(5303593, 16321, 530, 6379.41, -6374.6, 67.9934, 2.63799, 300, 300, 5, 1),
(5303594, 16321, 530, 6506.25, -6529.8, 43.7615, 4.70514, 300, 300, 5, 1),
(5303595, 16321, 530, 6511.78, -6498.71, 43.762, 5.87526, 300, 300, 5, 1),
(5303596, 16321, 530, 6532.87, -6521.41, 43.762, 3.17142, 300, 300, 5, 1),

(5303597, 16329, 530, 6479.17578125, -6373.51220703125, 27.28882217407226562, 3.228859186172485351, 300, 300, 0, 0),
(5303598, 16206, 530, 6435.93310546875, -6635.705078125, 108.963653564453125, 3.31612563133239746, 15, 30, 0, 0),
(5303599, 16208, 530, 6639.73193359375, -6344.17236328125, 9.027962684631347656, 2.251474618911743164, 15, 30, 0, 0),
(5303600, 16209, 530, 6288.14794921875, -6365.46728515625, 79.56024169921875, 1.692969322204589843, 15, 30, 0, 0),
(5303601, 17832, 530, 6465.76806640625, -6433.66064453125, 50.41553497314453125, 1.797689080238342285, 300, 300, 0, 0),

(5303602, 10415, 530, 7220.408203125, -6415.69287109375, 122.2270278930664062, 1.570796370506286621, 300, 300, 0, 0),
(5303603, 10415, 530, 7169.7734375, -6613.94091796875, 130.1852264404296875, 4.939281940460205078, 300, 300, 0, 0),
(5303604, 10415, 530, 6305.94970703125, -6463.65966796875, 135.9405364990234375, 1.186823844909667968, 300, 300, 0, 0),
(5303605, 10415, 530, 6310.50537109375, -6248.95166015625, 129.3821258544921875, 3.176499128341674804, 300, 300, 0, 0),

(5303606, 22062, 530, 6300.91, -6252.88, 77.8134, 4.92138, 5400, 5400, 0, 2),
(5303607, 22062, 530, 6305.22, -6475.4, 83.0121, 0.443913, 6300, 6300, 0, 2),
(5303608, 22062, 530, 7160.29, -6620.61, 60.6592, 5.59064, 7200, 7200, 0, 2),
(5303609, 22062, 530, 7227.19, -6406.61, 56.1656, 2.77106, 9000, 9000, 0, 2);

REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(5303503, 0, 8, 1, 16, 193, 0, NULL), -- changes between 193 emote + s.21157 for 10secs, 30secs nothing
(5303504, 0, 0, 1, 16, 193, 0, NULL); -- changes between 193 emote + s.21157 for 15secs, 30secs nothing

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(5303499, 2, 6318.4619140625, -6239.15478515625, 77.8968963623046875, 4.084070205688476562, 30000, 1631701, NULL), -- s.28729
(5303499, 1, 6318.4619140625, -6239.15478515625, 77.8968963623046875, 4.084070205688476562, 2000, 0, NULL),

(5303498, 2, 6300.625, -6239.94775390625, 77.896759033203125, 5.567600250244140625, 30000, 1631701, NULL), -- s.28729
(5303498, 1, 6300.625, -6239.94775390625, 77.896759033203125, 5.567600250244140625, 2000, 0, NULL),

(5303497, 1, 6301.09228515625, -6257.4912109375, 77.8969879150390625, 0.715584993362426757, 2000, 0, NULL),
(5303497, 2, 6301.09228515625, -6257.4912109375, 77.8969879150390625, 0.715584993362426757, 30000, 1631701, NULL), -- s.28729


(5303608, 1, 7160.11, -6607.73, 60.658, 100, 0, 0, NULL),
(5303608, 2, 7157.84, -6617.14, 60.658, 100, 0, 0, NULL),
(5303608, 3, 7162.99, -6624.5, 60.658, 100, 0, 0, NULL),
(5303608, 4, 7171.73, -6626.08, 60.864, 100, 0, 0, NULL),
(5303608, 5, 7176.71, -6622.44, 63.658, 100, 0, 0, NULL),
(5303608, 6, 7179.54, -6610.65, 63.658, 100, 0, 0, NULL),
(5303608, 7, 7175.27, -6604.53, 60.658, 100, 0, 0, NULL),
(5303608, 8, 7167.62, -6603.2, 60.658, 100, 0, 0, NULL),
(5303609, 1, 7224.31, -6404.75, 56.166, 100, 0, 0, NULL),
(5303609, 2, 7215.94, -6405.19, 56.166, 100, 0, 0, NULL),
(5303609, 3, 7211.89, -6409.29, 59.166, 100, 0, 0, NULL),
(5303609, 4, 7212.47, -6421.64, 59.166, 100, 0, 0, NULL),
(5303609, 5, 7216.75, -6426.26, 56.166, 100, 0, 0, NULL),
(5303609, 6, 7225.6, -6425.64, 56.166, 100, 0, 0, NULL),
(5303609, 7, 7231.39, -6419.25, 56.166, 100, 0, 0, NULL),
(5303609, 8, 7230.53, -6411.13, 56.166, 100, 0, 0, NULL),
(5303607, 1, 6294.18, -6468.08, 83.011, 100, 0, 0, NULL),
(5303607, 2, 6301.18, -6475.33, 83.011, 100, 0, 0, NULL),
(5303607, 3, 6309.72, -6475.18, 83.011, 100, 0, 0, NULL),
(5303607, 4, 6315.84, -6468.94, 83.197, 100, 0, 0, NULL),
(5303607, 5, 6315.23, -6462.81, 86.01, 100, 0, 0, NULL),
(5303607, 6, 6306.69, -6453.58, 86.01, 100, 0, 0, NULL),
(5303607, 7, 6300.74, -6453.97, 83.01, 100, 0, 0, NULL),
(5303607, 8, 6294.72, -6459.48, 83.01, 100, 0, 0, NULL),
(5303606, 1, 6305.4, -6258.75, 77.813, 100, 0, 0, NULL),
(5303606, 2, 6312.15, -6258.67, 80.813, 100, 0, 0, NULL),
(5303606, 3, 6319.65, -6250.08, 80.813, 100, 0, 0, NULL),
(5303606, 4, 6320.9, -6243.77, 77.942, 100, 0, 0, NULL),
(5303606, 5, 6314.05, -6237.9, 77.813, 100, 0, 0, NULL),
(5303606, 6, 6305.43, -6238.32, 77.813, 100, 0, 0, NULL),
(5303606, 7, 6299.6, -6244.36, 77.813, 100, 0, 0, NULL),
(5303606, 8, 6299.7, -6253.44, 77.813, 100, 0, 0, NULL),
(5303562, 40, 6439.41, -6483.35, 55.986, 0, 0, 0, NULL),
(5303562, 39, 6456.8, -6482.65, 52.26, 0, 0, 0, NULL),
(5303562, 38, 6471.18, -6480.31, 49.019, 0, 0, 0, NULL),
(5303562, 37, 6474.13, -6507.35, 43.687, 0, 0, 0, NULL),
(5303562, 36, 6491.95, -6512.3, 43.764, 0, 0, 0, NULL),
(5303562, 35, 6495.59, -6496.74, 43.762, 0, 0, 0, NULL),
(5303562, 34, 6524.28, -6487.14, 43.762, 0, 0, 0, NULL),
(5303562, 33, 6547.38, -6508.36, 43.763, 0, 0, 0, NULL),
(5303562, 32, 6540.83, -6538, 43.763, 0, 0, 0, NULL),
(5303562, 31, 6511.8, -6547.6, 43.762, 0, 0, 0, NULL),
(5303562, 30, 6489.28, -6527.17, 43.762, 0, 0, 0, NULL),
(5303562, 29, 6491.95, -6512.3, 43.764, 0, 0, 0, NULL),
(5303562, 28, 6474.13, -6507.35, 43.687, 0, 0, 0, NULL),
(5303562, 27, 6471.18, -6480.31, 49.019, 0, 0, 0, NULL),
(5303562, 26, 6456.8, -6482.65, 52.26, 0, 0, 0, NULL),
(5303562, 25, 6439.41, -6483.35, 55.986, 0, 0, 0, NULL),
(5303562, 24, 6419.65, -6507.63, 65.668, 0, 0, 0, NULL),
(5303562, 23, 6405, -6527.25, 76.185, 0, 0, 0, NULL),
(5303562, 22, 6417.6, -6554.91, 90.45, 0, 0, 0, NULL),
(5303562, 21, 6429.58, -6587.66, 107.14, 0, 0, 0, NULL),
(5303562, 20, 6433.62, -6609.42, 112.12, 0, 0, 0, NULL),
(5303562, 19, 6438.26, -6608.97, 112.03, 0, 0, 0, NULL),
(5303562, 18, 6442.82, -6611.98, 110.09, 0, 0, 0, NULL),
(5303562, 17, 6441.83, -6615.94, 108.81, 0, 0, 0, NULL),
(5303562, 16, 6435.19, -6617.99, 107.43, 0, 0, 0, NULL),
(5303562, 15, 6437.68, -6631.79, 107.43, 0, 0, 0, NULL),
(5303562, 14, 6444.35, -6630.78, 107.43, 0, 0, 0, NULL),
(5303562, 13, 6445.39, -6638.98, 107.43, 0, 0, 0, NULL),
(5303562, 12, 6432.43, -6640.1, 107.43, 0, 0, 0, NULL),
(5303562, 11, 6431.64, -6632.8, 107.43, 0, 0, 0, NULL),
(5303562, 10, 6437.64, -6631.54, 107.43, 0, 0, 0, NULL),
(5303562, 9, 6435.19, -6617.99, 107.43, 0, 0, 0, NULL),
(5303562, 8, 6430.41, -6618.96, 107.91, 0, 0, 0, NULL),
(5303562, 7, 6425.64, -6614.5, 110.22, 0, 0, 0, NULL),
(5303562, 6, 6428.77, -6610.92, 111.92, 0, 0, 0, NULL),
(5303562, 5, 6433.62, -6609.42, 112.12, 0, 0, 0, NULL),
(5303562, 4, 6429.58, -6587.66, 107.14, 0, 0, 0, NULL),
(5303562, 3, 6417.6, -6554.91, 90.45, 0, 0, 0, NULL),
(5303562, 2, 6405, -6527.25, 76.185, 0, 0, 0, NULL),
(5303562, 1, 6419.65, -6507.63, 65.668, 0, 0, 0, NULL),
(5303559, 27, 6509.95, -6259.63, 52.218, 0, 0, 0, NULL),
(5303559, 26, 6531.75, -6256.04, 50.964, 0, 0, 0, NULL),
(5303559, 25, 6556.29, -6256.18, 47.43, 0, 0, 0, NULL),
(5303559, 24, 6577.68, -6266.07, 43.243, 0, 0, 0, NULL),
(5303559, 23, 6600.84, -6288.77, 38.173, 0, 0, 0, NULL),
(5303559, 22, 6607.06, -6307.1, 35.684, 0, 0, 0, NULL),
(5303559, 21, 6607.23, -6339.48, 33.038, 0, 0, 0, NULL),
(5303559, 20, 6612.26, -6369.37, 31.552, 0, 0, 0, NULL),
(5303559, 19, 6612.96, -6415.94, 29.393, 0, 0, 0, NULL),
(5303559, 18, 6611.1, -6446.29, 29.289, 0, 0, 0, NULL),
(5303559, 17, 6584.22, -6464.87, 31.281, 0, 0, 0, NULL),
(5303559, 16, 6567.05, -6476.94, 34.8, 0, 0, 0, NULL),
(5303559, 15, 6552.78, -6479.32, 36.314, 0, 0, 0, NULL),
(5303559, 14, 6532.63, -6472.35, 40.189, 0, 0, 0, NULL),
(5303559, 13, 6492.92, -6473.46, 46.546, 0, 0, 0, NULL),
(5303559, 12, 6457.24, -6482.61, 52.163, 0, 0, 0, NULL),
(5303559, 11, 6438.69, -6482.45, 56.147, 0, 0, 0, NULL),
(5303559, 10, 6420.69, -6474.4, 60.63, 0, 0, 0, NULL),
(5303559, 9, 6397.39, -6451.18, 65.38, 0, 0, 0, NULL),
(5303559, 8, 6375.29, -6416.05, 69.208, 0, 0, 0, NULL),
(5303559, 7, 6372.28, -6373.57, 68.195, 0, 0, 0, NULL),
(5303559, 6, 6371.79, -6333.09, 67.813, 0, 0, 0, NULL),
(5303559, 5, 6377.23, -6302.08, 67.33, 0, 0, 0, NULL),
(5303559, 4, 6407.56, -6264.99, 64.431, 0, 0, 0, NULL),
(5303559, 3, 6428.73, -6251.19, 62.728, 0, 0, 0, NULL),
(5303559, 2, 6455, -6247.83, 59.668, 0, 0, 0, NULL),
(5303559, 1, 6488.54, -6253.51, 54.803, 0, 0, 0, NULL),
(5303558, 60, 6313.95, -6456.59, 86.01, 0, 0, 0, NULL),
(5303558, 59, 6330.64, -6441.11, 86.01, 0, 0, 0, NULL),
(5303558, 58, 6352.54, -6421.32, 74.822, 0, 0, 0, NULL),
(5303558, 57, 6343.77, -6402.39, 76.696, 0, 0, 0, NULL),
(5303558, 56, 6341.21, -6368.73, 78.164, 0, 0, 0, NULL),
(5303558, 55, 6324.46, -6366.41, 82.699, 0, 0, 0, NULL),
(5303558, 54, 6313.79, -6365.32, 82.71, 0, 0, 0, NULL),
(5303558, 53, 6314.15, -6359.15, 82.244, 0, 0, 0, NULL),
(5303558, 52, 6311.04, -6356.02, 80.682, 0, 0, 0, NULL),
(5303558, 51, 6306.16, -6359.39, 78.562, 0, 0, 0, NULL),
(5303558, 50, 6305.44, -6364.38, 78.025, 0, 0, 0, NULL),
(5303558, 49, 6291.85, -6362.96, 78.02, 0, 0, 0, NULL),
(5303558, 48, 6292.5, -6356.79, 78.018, 0, 0, 0, NULL),
(5303558, 47, 6285.58, -6355.71, 78.018, 0, 0, 0, NULL),
(5303558, 46, 6283.28, -6367.92, 78.018, 0, 0, 0, NULL),
(5303558, 45, 6290.9, -6368.85, 78.018, 0, 0, 0, NULL),
(5303558, 44, 6291.85, -6362.96, 78.02, 0, 0, 0, NULL),
(5303558, 43, 6305.44, -6364.38, 78.025, 0, 0, 0, NULL),
(5303558, 42, 6305.42, -6370.85, 79.3, 0, 0, 0, NULL),
(5303558, 41, 6309.99, -6373.58, 80.873, 0, 0, 0, NULL),
(5303558, 40, 6313.49, -6370.02, 82.593, 0, 0, 0, NULL),
(5303558, 39, 6313.79, -6365.32, 82.71, 0, 0, 0, NULL),
(5303558, 38, 6324.46, -6366.41, 82.699, 0, 0, 0, NULL),
(5303558, 37, 6341.21, -6368.73, 78.164, 0, 0, 0, NULL),
(5303558, 36, 6334.46, -6350.81, 77.142, 0, 0, 0, NULL),
(5303558, 35, 6334.19, -6326.3, 74.539, 0, 0, 0, NULL),
(5303558, 34, 6342.84, -6311.02, 73.289, 0, 0, 0, NULL),
(5303558, 33, 6358.17, -6298.21, 70.389, 0, 0, 0, NULL),
(5303558, 32, 6347.74, -6282.33, 73.269, 0, 0, 0, NULL),
(5303558, 31, 6332.74, -6269.21, 80.814, 0, 0, 0, NULL),
(5303558, 30, 6316.71, -6254.65, 80.813, 0, 0, 0, NULL),
(5303558, 29, 6332.74, -6269.21, 80.814, 0, 0, 0, NULL),
(5303558, 28, 6347.74, -6282.33, 73.269, 0, 0, 0, NULL),
(5303558, 27, 6358.17, -6298.21, 70.389, 0, 0, 0, NULL),
(5303558, 26, 6342.84, -6311.02, 73.289, 0, 0, 0, NULL),
(5303558, 25, 6334.19, -6326.3, 74.539, 0, 0, 0, NULL),
(5303558, 24, 6334.46, -6350.81, 77.142, 0, 0, 0, NULL),
(5303558, 23, 6341.21, -6368.73, 78.164, 0, 0, 0, NULL),
(5303558, 22, 6324.46, -6366.41, 82.699, 0, 0, 0, NULL),
(5303558, 21, 6313.79, -6365.32, 82.71, 0, 0, 0, NULL),
(5303558, 20, 6313.49, -6370.02, 82.593, 0, 0, 0, NULL),
(5303558, 19, 6309.99, -6373.58, 80.873, 0, 0, 0, NULL),
(5303558, 18, 6305.42, -6370.85, 79.3, 0, 0, 0, NULL),
(5303558, 17, 6305.44, -6364.38, 78.025, 0, 0, 0, NULL),
(5303558, 16, 6291.85, -6362.96, 78.02, 0, 0, 0, NULL),
(5303558, 15, 6290.9, -6368.85, 78.018, 0, 0, 0, NULL),
(5303558, 14, 6283.28, -6367.92, 78.018, 0, 0, 0, NULL),
(5303558, 13, 6285.58, -6355.71, 78.018, 0, 0, 0, NULL),
(5303558, 12, 6292.5, -6356.79, 78.018, 0, 0, 0, NULL),
(5303558, 11, 6291.85, -6362.96, 78.02, 0, 0, 0, NULL),
(5303558, 10, 6305.44, -6364.38, 78.025, 0, 0, 0, NULL),
(5303558, 9, 6306.16, -6359.39, 78.562, 0, 0, 0, NULL),
(5303558, 8, 6311.04, -6356.02, 80.682, 0, 0, 0, NULL),
(5303558, 7, 6314.15, -6359.15, 82.244, 0, 0, 0, NULL),
(5303558, 6, 6313.79, -6365.32, 82.71, 0, 0, 0, NULL),
(5303558, 5, 6324.46, -6366.41, 82.699, 0, 0, 0, NULL),
(5303558, 4, 6341.21, -6368.73, 78.164, 0, 0, 0, NULL),
(5303558, 3, 6343.77, -6402.39, 76.696, 0, 0, 0, NULL),
(5303558, 2, 6352.54, -6421.32, 74.822, 0, 0, 0, NULL),
(5303558, 1, 6330.64, -6441.11, 86.01, 0, 0, 0, NULL),
(5303509, 59, 6373.92, -6399.32, 68.697, 0, 0, 0, NULL),
(5303509, 58, 6372.06, -6370.58, 68.288, 0, 0, 0, NULL),
(5303509, 57, 6372.03, -6331.16, 67.791, 0, 0, 0, NULL),
(5303509, 56, 6375.09, -6303.51, 67.412, 0, 0, 0, NULL),
(5303509, 55, 6357.22, -6299.63, 70.514, 0, 0, 0, NULL),
(5303509, 54, 6338.59, -6314.03, 74.01, 0, 0, 0, NULL),
(5303509, 53, 6333.77, -6327.8, 74.552, 0, 0, 0, NULL),
(5303509, 52, 6333.77, -6348.56, 76.818, 0, 0, 0, NULL),
(5303509, 51, 6341.15, -6368.38, 78.169, 0, 0, 0, NULL),
(5303509, 50, 6314.77, -6365.56, 82.71, 0, 0, 0, NULL),
(5303509, 49, 6314.13, -6359.88, 82.436, 0, 0, 0, NULL),
(5303509, 48, 6309.87, -6356.62, 80.466, 0, 0, 0, NULL),
(5303509, 47, 6306.76, -6359.13, 78.733, 0, 0, 0, NULL),
(5303509, 46, 6305.9, -6364.63, 78.025, 0, 0, 0, NULL),
(5303509, 45, 6292.15, -6362.94, 78.02, 0, 0, 0, NULL),
(5303509, 44, 6292.8, -6356.77, 78.018, 0, 0, 0, NULL),
(5303509, 43, 6284.68, -6356.28, 78.018, 0, 0, 0, NULL),
(5303509, 42, 6283.47, -6368.63, 78.018, 0, 0, 0, NULL),
(5303509, 41, 6291.13, -6369.04, 78.018, 0, 0, 0, NULL),
(5303509, 40, 6292.15, -6362.94, 78.02, 0, 0, 0, NULL),
(5303509, 39, 6305.9, -6364.63, 78.025, 0, 0, 0, NULL),
(5303509, 38, 6305.47, -6369.54, 78.59, 0, 0, 0, NULL),
(5303509, 37, 6308.71, -6372.94, 80.597, 0, 0, 0, NULL),
(5303509, 36, 6312.75, -6371.42, 82.168, 0, 0, 0, NULL),
(5303509, 35, 6314.77, -6365.56, 82.71, 0, 0, 0, NULL),
(5303509, 34, 6341.15, -6368.38, 78.169, 0, 0, 0, NULL),
(5303509, 33, 6343.6, -6402.32, 76.704, 0, 0, 0, NULL),
(5303509, 32, 6352.58, -6418.92, 74.82, 0, 0, 0, NULL),
(5303509, 31, 6363.17, -6422.52, 72.021, 0, 0, 0, NULL),
(5303509, 30, 6377.08, -6418.94, 69.218, 0, 0, 0, NULL),
(5303509, 29, 6398.72, -6453, 65.142, 0, 0, 0, NULL),
(5303509, 28, 6427.66, -6481.12, 58.952, 0, 0, 0, NULL),
(5303509, 27, 6421.91, -6506.95, 64.563, 0, 0, 0, NULL),
(5303509, 26, 6401.37, -6516.19, 72.359, 0, 0, 0, NULL),
(5303509, 25, 6414.94, -6552.77, 89.385, 0, 0, 0, NULL),
(5303509, 24, 6429.26, -6587.14, 106.91, 0, 0, 0, NULL),
(5303509, 23, 6433.49, -6608.26, 112.12, 0, 0, 0, NULL),
(5303509, 22, 6428.51, -6610.9, 111.86, 0, 0, 0, NULL),
(5303509, 21, 6426.26, -6614.58, 110.2, 0, 0, 0, NULL),
(5303509, 20, 6429.79, -6618.46, 108.16, 0, 0, 0, NULL),
(5303509, 19, 6435.42, -6617.64, 107.43, 0, 0, 0, NULL),
(5303509, 18, 6437.83, -6631.19, 107.43, 0, 0, 0, NULL),
(5303509, 17, 6431.26, -6632.43, 107.43, 0, 0, 0, NULL),
(5303509, 16, 6433.2, -6640.24, 107.43, 0, 0, 0, NULL),
(5303509, 15, 6445.88, -6637.56, 107.43, 0, 0, 0, NULL),
(5303509, 14, 6443.81, -6630.77, 107.43, 0, 0, 0, NULL),
(5303509, 13, 6437.83, -6631.19, 107.43, 0, 0, 0, NULL),
(5303509, 12, 6435.42, -6617.64, 107.43, 0, 0, 0, NULL),
(5303509, 11, 6440.65, -6616.69, 108.16, 0, 0, 0, NULL),
(5303509, 10, 6443.04, -6612.97, 109.86, 0, 0, 0, NULL),
(5303509, 9, 6440.3, -6609.17, 111.31, 0, 0, 0, NULL),
(5303509, 8, 6433.49, -6608.26, 112.12, 0, 0, 0, NULL),
(5303509, 7, 6429.26, -6587.14, 106.91, 0, 0, 0, NULL),
(5303509, 6, 6414.94, -6552.77, 89.385, 0, 0, 0, NULL),
(5303509, 5, 6401.37, -6516.19, 72.359, 0, 0, 0, NULL),
(5303509, 4, 6421.91, -6506.95, 64.563, 0, 0, 0, NULL),
(5303509, 3, 6427.66, -6481.12, 58.952, 0, 0, 0, NULL),
(5303509, 2, 6398.72, -6453, 65.142, 0, 0, 0, NULL),
(5303509, 1, 6377.08, -6418.94, 69.218, 0, 0, 0, NULL),
(5303563, 20, 6611.07, -6442.62, 29.296, 0, 0, 0, NULL),
(5303563, 19, 6638.62, -6450.05, 29.26, 0, 0, 0, NULL),
(5303563, 18, 6682.42, -6468.48, 29.258, 0, 0, 0, NULL),
(5303563, 17, 6638.62, -6450.05, 29.26, 0, 0, 0, NULL),
(5303563, 16, 6611.07, -6442.62, 29.296, 0, 0, 0, NULL),
(5303563, 15, 6611.74, -6424.31, 29.1, 0, 0, 0, NULL),
(5303563, 14, 6612.13, -6403.32, 29.817, 0, 0, 0, NULL),
(5303563, 13, 6612.75, -6373.3, 31.285, 0, 0, 0, NULL),
(5303563, 12, 6607.33, -6340.16, 32.998, 0, 0, 0, NULL),
(5303563, 11, 6633.64, -6327.65, 29.859, 0, 0, 0, NULL),
(5303563, 10, 6662.06, -6331.11, 20.892, 0, 0, 0, NULL),
(5303563, 9, 6660.82, -6345.71, 15.346, 0, 0, 0, NULL),
(5303563, 8, 6642.96, -6344.14, 8.9457, 0, 0, 0, NULL),
(5303563, 7, 6660.82, -6345.71, 15.346, 0, 0, 0, NULL),
(5303563, 6, 6662.06, -6331.11, 20.892, 0, 0, 0, NULL),
(5303563, 5, 6633.64, -6327.65, 29.859, 0, 0, 0, NULL),
(5303563, 4, 6607.33, -6340.16, 32.998, 0, 0, 0, NULL),
(5303563, 3, 6612.75, -6373.3, 31.285, 0, 0, 0, NULL),
(5303563, 2, 6612.37, -6403.64, 29.795, 0, 0, 0, NULL),
(5303563, 1, 6611.96, -6425.78, 29.015, 0, 0, 0, NULL),

(5303504, 2, 6479.72998046875, -6289.81884765625, 48.91797637939453125, 3.141592741012573242, 30000, 1631702, NULL), -- s.21157
(5303504, 1, 6479.72998046875, -6289.81884765625, 48.91797637939453125, 3.141592741012573242, 30000, 0, NULL),

(5303500, 2, 6313.0224609375, -6474.517578125, 83.0942840576171875, 2.251474618911743164, 30000, 1631701, NULL), -- s.28729
(5303500, 1, 6313.0224609375, -6474.517578125, 83.0942840576171875, 2.251474618911743164, 2000, 0, NULL),

(5303501, 2, 6297.05029296875, -6472.91650390625, 83.0940704345703125, 0.750491559505462646, 30000, 1631701, NULL), -- s.28729
(5303501, 1, 6297.05029296875, -6472.91650390625, 83.0940704345703125, 0.750491559505462646, 2000, 0, NULL),

(5303502, 1, 6296.859375, -6455.6494140625, 83.094207763671875, 5.585053443908691406, 2000, 0, NULL),
(5303502, 2, 6296.859375, -6455.6494140625, 83.094207763671875, 5.585053443908691406, 30000, 1631701, NULL), -- s.28729

(5303503, 1, 6463.95068359375, -6441.87060546875, 52.459564208984375, 3.525565147399902343, 30000, 0, NULL),
(5303503, 2, 6463.95068359375, -6441.87060546875, 52.459564208984375, 3.525565147399902343, 30000, 1631702, NULL), -- s.21157

(5303560, 6, 6437.28, -6360.66, 41.276, 0, 0, 0, NULL),
(5303560, 5, 6430.96, -6379.17, 41.291, 0, 0, 0, NULL),
(5303560, 4, 6446.68, -6384.37, 41.203, 0, 0, 0, NULL),
(5303560, 3, 6453.16, -6365.24, 33.735, 0, 0, 0, NULL),
(5303560, 2, 6459.56, -6345.86, 41.208, 0, 0, 0, NULL),
(5303560, 1, 6443.78, -6340.43, 41.291, 0, 0, 0, NULL),
(5303561, 12, 6440.46, -6404.84, 48.678, 0, 0, 0, NULL),
(5303561, 11, 6445.87, -6388.29, 55.178, 0, 0, 0, NULL),
(5303561, 10, 6433.99, -6376.2, 55.178, 0, 0, 0, NULL),
(5303561, 9, 6430.45, -6358.61, 55.179, 0, 0, 0, NULL),
(5303561, 8, 6443.27, -6346.17, 55.179, 0, 0, 0, NULL),
(5303561, 7, 6460.2, -6343.13, 55.178, 0, 0, 0, NULL),
(5303561, 6, 6465.87, -6326.58, 48.679, 0, 0, 0, NULL),
(5303561, 5, 6460.2, -6343.13, 55.178, 0, 0, 0, NULL),
(5303561, 4, 6472.75, -6355.57, 55.178, 0, 0, 0, NULL),
(5303561, 3, 6477.23, -6373.64, 55.178, 0, 0, 0, NULL),
(5303561, 2, 6462.24, -6385.64, 55.178, 0, 0, 0, NULL),
(5303561, 1, 6445.87, -6388.29, 55.178, 0, 0, 0, NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1631702;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1631702, 0, 0, 15, 21157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deatholme Necromancer - Cast Ribbon of Souls'),
(1631702, 30000, 0, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deatholme Necromancer - Interrupt Channelling');

-- Luzran 16245 - speed^^
-- https://web.archive.org/web/20080430024505/http://wow.allakhazam.com:80/db/mob.html?wmob=16245
-- https://web.archive.org/web/20121015045831/http://www.wowhead.com/npc=16245#drops:0-15+1
UPDATE `creature_template` SET `UnitFlags` = 64, `ExtraFlags` = `ExtraFlags`|(4096+1048576), `MovementType` = 2 WHERE `entry` = 16245;
DELETE FROM `creature_loot_template` WHERE `item` IN (5972,6375,11039,50502,50600) AND `entry` = 16245;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16245, 1210, 0.2, 0, 1, 1, 0, 'Shadowgem'),
(16245, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16245, 5543, 0.01, 0, 1, 1, 0, 'Plans: Iridescent Hammer'),
(16245, 4412, 0.01, 0, 1, 1, 0, 'Schematic: Moonsight Rifle'),
(16245, 7363, 0.01, 0, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'),
(16245, 4297, 0.01, 0, 1, 1, 0, 'Pattern: Barbaric Gloves'),
(16245, 4296, 0.01, 0, 1, 1, 0, 'Pattern: Dark Leather Shoulders'),
(16245, 7364, 0.01, 0, 1, 1, 0, 'Pattern: Heavy Earthen Gloves'), -- confirmed (next group 50504)
(16245, 10424, 0.01, 0, 1, 1, 0, 'Plans: Silvered Bronze Leggings'),
(16245, 11098, 0.01, 0, 1, 1, 0, 'Formula: Enchant Cloak - Lesser Shadow Resistance'), -- confirmed
(16245, 7363, 0.01, 0, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'), -- confirmed
(16245, 3612, 0.01, 0, 1, 1, 0, 'Plans: Green Iron Gauntlets'), -- confirmed
(16245, 3396, 0.01, 0, 1, 1, 0, 'Recipe: Elixir of Lesser Agility'); -- confirmed

-- Knucklerot 16246 - speed^^
-- https://web.archive.org/web/20080510033431/http://wow.allakhazam.com/db/mob.html?wmob=16246
-- -- https://web.archive.org/web/20121018101126/http://www.wowhead.com/npc=16246
UPDATE `creature_template` SET `UnitFlags` = 64, `ExtraFlags` = `ExtraFlags`|(4096+1048576), `MovementType` = 2 WHERE `entry` = 16246;
DELETE FROM `creature_loot_template` WHERE `item` IN (5972,6375,11039,50502,50600) AND `entry` = 16246;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16246, 1210, 0.2, 0, 1, 1, 0, 'Shadowgem'),
(16246, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16246, 5543, 0.01, 0, 1, 1, 0, 'Plans: Iridescent Hammer'),
(16246, 4412, 0.01, 0, 1, 1, 0, 'Schematic: Moonsight Rifle'),
(16246, 7363, 0.01, 0, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'),
(16246, 4297, 0.01, 0, 1, 1, 0, 'Pattern: Barbaric Gloves'),
(16246, 4296, 0.01, 0, 1, 1, 0, 'Pattern: Dark Leather Shoulders'),
(16246, 7364, 0.01, 0, 1, 1, 0, 'Pattern: Heavy Earthen Gloves'), -- confirmed (next group 50504)
(16246, 10424, 0.01, 0, 1, 1, 0, 'Plans: Silvered Bronze Leggings'),
(16246, 11098, 0.01, 0, 1, 1, 0, 'Formula: Enchant Cloak - Lesser Shadow Resistance'),
(16246, 7363, 0.01, 0, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'),
(16246, 3612, 0.01, 0, 1, 1, 0, 'Plans: Green Iron Gauntlets'),
(16246, 3396, 0.01, 0, 1, 1, 0, 'Recipe: Elixir of Lesser Agility');

INSERT INTO `creature_movement_template` (`entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`)
SELECT 16245 as `entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, 100 as `Orientation`, `WaitTime`, `ScriptId` FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16245);
INSERT INTO `creature_movement_template` (`entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`)
SELECT 16246 as `entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, 100 as  `Orientation`, `WaitTime`, `ScriptId` FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16246);
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16245,16246)); -- 82697,82765
UPDATE `creature` SET `guid` = 5303983 WHERE `id` = 16245;
UPDATE `creature` SET `guid` = 5303984 WHERE `id` = 16246;

-- ========================
-- Rathis Tomber's Supplies
-- ========================
-- Gangled Flesheater 16322
-- https://web.archive.org/web/20080502022936/http://wow.allakhazam.com/db/mob.html?wmob=16322
-- https://web.archive.org/web/20100523012922/http://www.wowhead.com/npc=16322
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16322; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,6348,50502) AND `entry` = 16322;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16322, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16322, 774, 0.4, 0, 1, 1, 0, 'Malachite'),
(16322, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16322, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature` WHERE `id` = 16322; -- there might be event involved with some of these spawning and moving towards town, being killed by guards that react with yells
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302751, 16322, 530, 7695.32, -6385.79, 21.7635, 2.10787, 300, 300, 5, 1),
(5302752, 16322, 530, 7665.96, -6406.48, 19.1865, 1.05674, 300, 300, 5, 1),
(5302753, 16322, 530, 7680.21, -6408.18, 17.545, 4.67237, 300, 300, 5, 1),
(5302754, 16322, 530, 7709.88525390625, -6404.076171875, 17.94471931457519531, 4.077486515045166015, 300, 300, 5, 1), -- d.82454
(5302755, 16322, 530, 7688.4, -6391.44, 20.5135, 1.10074, 300, 300, 5, 1),
(5302756, 16322, 530, 7663.18, -6396, 20.2945, 2.48449, 300, 300, 5, 1),
(5302757, 16322, 530, 7676.73, -6378.29, 23.0135, 4.74449, 300, 300, 5, 1),
(5302758, 16322, 530, 7663.31, -6376.65, 23.6095, 2.0837, 300, 300, 5, 1),
(5302759, 16322, 530, 7705.21, -6355.74, 22.5366, 0.780316, 300, 300, 5, 1),
(5302760, 16322, 530, 7680.92, -6343.92, 28.4991, 0.109609, 300, 300, 5, 1),
(5302761, 16322, 530, 7650.7607421875, -6351.3671875, 25.54853057861328125, 6.2238922119140625, 300, 300, 5, 1), -- d.82452
(5302762, 16322, 530, 7685.076171875, -6375.98828125, 24.37945938110351562, 1.120163321495056152, 300, 300, 5, 1);

-- ==================
-- Windrunner Village
-- ==================
-- Phantasmal Seeker 16323 - Stats/Loot
-- https://web.archive.org/web/20080430024541/http://wow.allakhazam.com/db/mob.html?wmob=16323
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16323; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4292,4345,5498,50502) AND `entry` = 16323;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16323, 1210, 0.15, 0, 1, 1, 0, 'Shadowgem'),
(16323, 774, 0.05, 0, 1, 1, 0, 'Malachite'),
(16323, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16323, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16323, 50600, 0.75, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(16323, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(16323, 60111, 2, 0, -60111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)'),
(16323, 60002, 9, 0, -60002, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)');

-- Stonewing Slayer 16324 - Stats/Loot
-- https://web.archive.org/web/20080430024546/http://wow.allakhazam.com/db/mob.html?wmob=16324
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16324; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (4345,50502,50600) AND `entry` = 16324;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16324, 1210, 0.14, 0, 1, 1, 0, 'Shadowgem'),
(16324, 774, 0.15, 0, 1, 1, 0, 'Malachite'),
(16324, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature` WHERE `id` IN (16323,16324);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302763, 16323, 530, 7319.12, -5816.76, 36.5527, 1.22332, 300, 300, 5, 1),
(5302764, 16323, 530, 7326.64, -5842.55, 36.5612, 3.82827, 300, 300, 5, 1),
(5302765, 16324, 530, 7320.32, -5811.63, 11.509, 1.4829, 300, 300, 10, 1),
(5302766, 16323, 530, 7305.51, -5844.56, 15.9554, 5.74213, 300, 300, 5, 1),
(5302767, 16323, 530, 7317.54, -5854.11, 36.5739, 3.03988, 300, 300, 3, 1),
(5302768, 16323, 530, 7320.78, -5854.77, 23.892, 5.37561, 300, 300, 3, 1),
(5302769, 16323, 530, 7306.57, -5835.58, 36.5702, 2.32997, 300, 300, 3, 1),
(5302770, 16323, 530, 7303.82, -5847.31, 25.8295, 4.28434, 300, 300, 3, 1),
(5302771, 16323, 530, 7144.90673828125, -5869.82421875, 12.90517520904541015, 0, 300, 300, 0, 4),
(5302772, 16324, 530, 7344.59, -5852.3, 14.6604, 3.77817, 300, 300, 5, 1),
(5302773, 16323, 530, 7277.30419921875, -5830.5341796875, 26.00293540954589843, 1.910501360893249511, 300, 300, 3, 1),
(5302774, 16323, 530, 7282.85, -5834.31, 36.6375, 5.88176, 300, 300, 3, 1),
(5302775, 16324, 530, 7276.38, -5812.78, 12.1091, 2.88477, 300, 300, 20, 1),
(5302776, 16324, 530, 7190.4, -5821.69, 15.417, 3.76264, 300, 300, 15, 1),
(5302777, 16324, 530, 7249.43, -5850.77, 13.3048, 5.2212, 300, 300, 20, 1),
(5302778, 16324, 530, 7217.3935546875, -5818.9755859375, 10.97299098968505859, 6.098617076873779296, 300, 300, 20, 1),
(5302779, 16324, 530, 7161.82, -5849.43, 11.8721, 0.172449, 300, 300, 15, 1),
(5302780, 16323, 530, 7102.01, -5823.69, 27.9161, 1.31866, 300, 300, 5, 1),
(5302781, 16323, 530, 7189.26, -5858.7, 14.4108, 1.83646, 300, 300, 5, 1),
(5302782, 16324, 530, 7180.3, -5883.62, 11.6324, 1.45703, 300, 300, 10, 1),
(5302783, 16324, 530, 7216.25, -5888.84, 13.7329, 4.13552, 300, 300, 10, 1),
(5302784, 16324, 530, 7320.85, -5884.67, 14.4275, 1.40249, 300, 300, 20, 1),
(5302785, 16324, 530, 7250.41, -5885.59, 16.1289, 5.48191, 300, 300, 10, 1),
(5302786, 16323, 530, 7313.02, -5866.82, 36.5603, 3.27176, 300, 300, 3, 1),
(5302787, 16323, 530, 7293.66064453125, -5865.62060546875, 15.8825387954711914, 1.579568028450012207, 300, 300, 5, 1),
(5302788, 16323, 530, 7299.45, -5854.98, 36.6516, 5.81195, 300, 300, 3, 1),
(5302789, 16323, 530, 7278.82, -5927.09, 17.8029, 1.04639, 300, 300, 3, 1),
(5302790, 16324, 530, 7321.8, -5915.77, 15.7796, 5.57732, 300, 300, 5, 1),
(5302791, 16324, 530, 7353.74, -5917.72, 13.999, 0.28313, 300, 300, 15, 1),
(5302792, 16324, 530, 7385.953, -5944.16, 15.41744, 3.68904, 300, 300, 15, 1),
(5302793, 16323, 530, 7336.9521484375, -5955.60791015625, 15.93630409240722656, 6.126180648803710937, 300, 300, 5, 1),
(5302794, 16324, 530, 7348.67, -5980.05, 11.8727, 1.10597, 300, 300, 5, 1),
(5302795, 16324, 530, 7366.42, -5946.21, 13.6186, 1.30403, 300, 300, 10, 1),
(5302796, 16324, 530, 7320.12, -5983.79, 14.7263, 0.588545, 300, 300, 15, 1),
(5302797, 16324, 530, 7286.98, -6014.38, 17.8272, 4.93433, 300, 300, 5, 1),
(5302798, 16324, 530, 7249.43, -6015.57, 19.0449, 1.48668, 300, 300, 10, 1),
(5302799, 16324, 530, 7283.9, -5987.35, 19.3443, 3.56881, 300, 300, 10, 1),
(5302800, 16323, 530, 7312.5454, -5947.145, 13.739003, 0, 300, 300, 0, 2),
(5302801, 16324, 530, 7248.990234, -5992.339844, 18.2362, 1.23432, 300, 300, 15, 1),
(5302802, 16323, 530, 7216.1, -5976.58, 19.6699, 1.58679, 300, 300, 5, 1),
(5302803, 16323, 530, 7263.52, -5936, 17.8033, 3.66275, 300, 300, 3, 1),
(5302804, 16323, 530, 7215.65, -5948.23, 21.3398, 3.09782, 300, 300, 3, 1),
(5302805, 16323, 530, 7192.81, -5954.74, 37.2182, 3.35264, 300, 300, 3, 1),
(5302806, 16323, 530, 7189.98, -5934.97, 37.2118, 5.08829, 300, 300, 3, 1),
(5302807, 16323, 530, 7192.73974609375, -5956.35205078125, 21.32487297058105468, 6.191906452178955078, 300, 300, 3, 1),
(5302808, 16323, 530, 7200.11, -5975.64, 37.2118, 6.22156, 300, 300, 3, 1),
(5302809, 16323, 530, 7173.15, -5961.48, 37.2111, 4.69972, 300, 300, 3, 1),
(5302810, 16324, 530, 7170.06, -5987.71, 19.5167, 2.91043, 300, 300, 10, 1),
(5302811, 16324, 530, 7154.5, -5952.75, 15.1304, 6.04247, 300, 300, 15, 1),
(5302812, 16324, 530, 7151.78, -5916.41, 12.2722, 1.13771, 300, 300, 10, 1),
(5302813, 16324, 530, 7175.7, -5911.12, 14.0527, 2.62296, 300, 300, 20, 1), 
(5302814, 16324, 530, 7111.04, -5877.53, 13.5683, 2.05509, 300, 300, 10, 1),
(5302815, 16324, 530, 7079.7, -5881.88, 13.4844, 3.17041, 300, 300, 10, 1),
(5302816, 16324, 530, 7058.65, -5856.66, 18.8789, 0.808082, 300, 300, 10, 1),
(5302817, 16324, 530, 7288.255859375, -5864.1982421875, 36.54387664794921875, 0, 300, 300, 0, 4),
(5302818, 16324, 530, 7340.393, -5850.4683, 14.400704, 0, 300, 300, 0, 2);

-- Pathing for Phantasmal Seeker Entry: 16323 'CMaNGOS FORMAT' 
SET @GUID := 5302771;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7144.90673828125, -5869.82421875, 12.90517520904541015, 100, 0, 0), -- spawn
(@GUID, 2, 7167.731, -5888.3984, 11.15952, 100, 0, 0),
(@GUID, 3, 7199.818, -5896.315, 12.859471, 100, 0, 0),
(@GUID, 4, 7230.858, -5890.361, 15.052214, 100, 0, 0),
(@GUID, 5, 7249.5293, -5883.857, 15.778265, 100, 0, 0),
(@GUID, 6, 7270.4062, -5881.6836, 14.914035, 100, 0, 0),
(@GUID, 7, 7287.4766, -5877.186, 13.539035, 100, 0, 0); -- path incomplete?
-- 0x203CC442400FF0C0001D530000741588 .go xyz 7167.731 -5888.3984 11.15952

-- Pathing for Phantasmal Seeker Entry: 16323 'CMaNGOS FORMAT' 
SET @GUID := 5302800;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7312.5454, -5947.145, 13.739003, 100, 0, 0),
(@GUID, 2, 7306.452, -5925.6514, 14.437667, 100, 0, 0),
(@GUID, 3, 7298.639, -5913.2705, 14.670607, 100, 0, 0),
(@GUID, 4, 7287.653, -5895.778, 13.914035, 100, 0, 0),
(@GUID, 5, 7287.8228, -5883.7896, 13.539035, 100, 0, 0),
(@GUID, 6, 7285.8115, -5893.134, 13.789035, 100, 0, 0),
(@GUID, 7, 7267.225, -5897.0396, 14.87131, 100, 0, 0),
(@GUID, 8, 7253.26, -5903.4355, 15.479996, 100, 0, 0),
(@GUID, 9, 7242.7173, -5913.6274, 16.433731, 100, 0, 0),
(@GUID, 10, 7240.8535, -5930.3916, 17.343765, 100, 0, 0),
(@GUID, 11, 7239.111, -5946.506, 18.061293, 100, 0, 0), -- gap
(@GUID, 12, 7250.164062, -5965.491211, 17.914513, 100, 0, 0), -- guessed
(@GUID, 13, 7271.798340, -5976.670410, 16.845417, 100, 0, 0), -- guessed
(@GUID, 14, 7286.5, -5964.24, 15.4778, 100, 0, 0); -- old spawn
-- 0x203CC442400FF0C0001D530000741608 .go xyz 7312.5454 -5947.145 13.739003
UPDATE `creature_movement` SET `comment` = 'guessed' WHERE `id` = 5302800 AND `point` BETWEEN 12 AND 14;

-- Pathing for Stonewing Slayer Entry: 16324 'CMaNGOS FORMAT' 
SET @GUID := 5302817;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7288.255859375, -5864.1982421875, 36.54387664794921875, 100, 0, 0),
(@GUID, 2, 7282.268, -5851.51, 36.557377, 100, 0, 0),
(@GUID, 3, 7281.4414, -5836.441, 36.54975, 100, 0, 0),
(@GUID, 4, 7291.971, -5824.3047, 36.557358, 100, 0, 0),
(@GUID, 5, 7318.971, -5816.202, 36.552254, 100, 0, 0),
(@GUID, 6, 7306.3896, -5810.4683, 34.559788, 100, 0, 0),
(@GUID, 7, 7295.1226, -5809.596, 30.667048, 100, 0, 0),
(@GUID, 8, 7287.444, -5814.809, 28.188602, 100, 0, 0),
(@GUID, 9, 7277.1104, -5831.7266, 25.919615, 100, 0, 0),
(@GUID, 10, 7302.4185, -5844.3457, 25.829456, 100, 0, 0),
(@GUID, 11, 7319.901, -5854.153, 23.803442, 100, 0, 0),
(@GUID, 12, 7315.646, -5863.9194, 20.866133, 100, 0, 0),
(@GUID, 13, 7308.54, -5866.2256, 17.65254, 100, 0, 0),
(@GUID, 14, 7298.4053, -5865.24, 15.879765, 100, 0, 0),
(@GUID, 15, 7286.458, -5878.125, 13.539035, 100, 0, 0),
(@GUID, 16, 7292.5493, -5901.6357, 14.222242, 100, 0, 0),
(@GUID, 17, 7296.4053, -5916.968, 15.009474, 100, 0, 0),
(@GUID, 18, 7286.152, -5954.9307, 15.797743, 100, 0, 0),
(@GUID, 19, 7285.6787, -5966.9653, 15.653902, 100, 0, 0),
(@GUID, 20, 7265.091, -5973.717, 17.20413, 100, 0, 0);
-- 0x20307C42400FF10000006A00000B5F70 .go xyz 7282.268 -5851.51 36.557377

-- Pathing for Stonewing Slayer Entry: 16324 'CMaNGOS FORMAT' 
SET @GUID := 5302818;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7340.393, -5850.4683, 14.400704, 100, 0, 0),
(@GUID, 2, 7324.6094, -5822.4634, 12.21998, 100, 0, 0),
(@GUID, 3, 7286.2456, -5814.7207, 12.166025, 100, 0, 0),
(@GUID, 4, 7261.852, -5816.5923, 12.432216, 100, 0, 0),
(@GUID, 5, 7250.124, -5840.846, 12.518942, 100, 0, 0),
(@GUID, 6, 7246.8257, -5860.666, 13.454, 100, 0, 0),
(@GUID, 7, 7243.721, -5881.558, 14.279851, 100, 0, 0),
(@GUID, 8, 7231.0835, -5910.859, 16.342487, 100, 0, 0),
(@GUID, 9, 7235.9644, -5929.9536, 17.837418, 100, 0, 0),
(@GUID, 10, 7244.8364, -5947.1313, 17.660414, 100, 0, 0),
(@GUID, 11, 7245.572, -5973.7646, 18.905668, 100, 0, 0),
(@GUID, 12, 7241.577, -6000.3286, 17.92609, 100, 0, 0),
(@GUID, 13, 7252.286, -6013.513, 19.168766, 100, 0, 0),
(@GUID, 14, 7275.27, -6007.8994, 19.334187, 100, 0, 0),
(@GUID, 15, 7321.434, -6002.094, 16.63307, 100, 0, 0), -- path incomplete
(@GUID, 16, 7337.1226, -5979.8516, 11.741189, 100, 0, 0), -- guessed
(@GUID, 17, 7360.5629, -5954.8770, 13.23652, 100, 0, 0), -- guessed
(@GUID, 18, 7343.667, -5924.1055, 14.126178, 100, 0, 0), -- guessed
(@GUID, 19, 7342.6074, -5890.514, 15.728307, 100, 0, 0), -- guessed
(@GUID, 20, 7346.121, -5873.5435, 16.203117, 100, 0, 0); -- guessed
-- 0x203CC442400FF100001D5300007415B4 .go xyz 7340.393 -5850.4683 14.400704
UPDATE `creature_movement` SET `comment` = 'guessed' WHERE `id` = 5302818 AND `point` BETWEEN 16 AND 20;

-- ==================
-- Goldenmist Village
-- ==================
-- Quel'dorei Ghost 16325
-- https://web.archive.org/web/20080502022942/http://wow.allakhazam.com/db/mob.html?wmob=16325
UPDATE `broadcast_text` SET `text` = `text1` WHERE `Id` = 12690;
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16325; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (118,858,2455,4292,4346,6347,50502) AND `entry` = 16325;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16325, 1210, 0.05, 0, 1, 1, 0, 'Shadowgem'),
(16325, 774, 0.40, 0, 1, 1, 0, 'Malachite'),
(16325, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16325, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Quel'dorei Wraith 16326
-- https://web.archive.org/web/20080502013323/http://wow.allakhazam.com/db/mob.html?wmob=16326
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16326; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (118,858,2455,6716,50502) AND `entry` = 16326;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16326, 1210, 0.14, 0, 1, 1, 0, 'Shadowgem'),
(16326, 774, 0.09, 0, 1, 1, 0, 'Malachite'),
(16326, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16326, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature` WHERE `id` IN (16325,16326);
DELETE FROM `creature` WHERE `guid` BETWEEN 5302819 AND 5302858;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302819, 16325, 530, 7919.5986328125, -6284.19287109375, 39.78729629516601562, 0.675800442695617675, 300, 300, 5, 1),
(5302820, 16326, 530, 7914.0923, -6278.8076, 39.78892, 0, 300, 300, 0, 2), -- both
(5302821, 16326, 530, 7883.97, -6222.94, 20.6409, 4.81779, 300, 300, 10, 1),
(5302822, 16326, 530, 7856.89697265625, -6144.46728515625, 18.86255455017089843, 6.278054714202880859, 300, 300, 10, 1),
(5302823, 16325, 530, 7923.4, -6223.38, 20.5818, 5.65621, 300, 300, 10, 1),
(5302824, 16325, 530, 7923.5, -6265.96, 23.9011, 4.18964, 300, 300, 5, 1),
(5302825, 16326, 530, 7924.86, -6266.15, 39.7944, 5.11603, 300, 300, 3, 1),
(5302826, 16325, 530, 7911.6, -6183.53, 20.21, 4.01615, 300, 300, 3, 1), -- both?
(5302827, 16326, 530, 7932.82, -6240.5, 23.9161, 0.877803, 300, 300, 3, 1),
(5302828, 16325, 530, 7888.84, -6186.89, 19.8005, 5.77237, 300, 300, 5, 1), -- both?
(5302829, 16326, 530, 7904.7, -6258.87, 39.8714, 2.54818, 300, 300, 3, 1), -- both
(5302830, 16326, 530, 7947.62, -6271.32, 39.7869, 6.03138, 300, 300, 5, 1), -- both
(5302831, 16325, 530, 7924.05, -6167.13, 40.8979, 2.17939, 300, 300, 3, 1), -- both
(5302832, 16325, 530, 7946.03, -6220.6, 20.8998, 1.63308, 300, 300, 10, 1),
(5302833, 16325, 530, 7932.78, -6174.04, 30.1563, 0.577165, 300, 300, 3, 1),
(5302834, 16326, 530, 7940.02, -6194.55, 28.1352, 5.18289, 300, 300, 3, 1),
(5302835, 16325, 530, 7934.01, -6188.04, 40.9003, 3.25636, 300, 300, 3, 1), -- both
(5302836, 16325, 530, 7932.20947265625, -6174.390625, 20.28230667114257812, 6.260632991790771484, 300, 300, 5, 1),
(5302837, 16326, 530, 7954.53, -6242.43, 21.6017, 1.00392, 300, 300, 5, 1),
(5302838, 16325, 530, 7986.86279296875, -6180.3525390625, 21.34664344787597656, 1.287926554679870605, 300, 300, 10, 1),
(5302839, 16326, 530, 7957.09, -6142.27, 18.496, 0.758214, 300, 300, 10, 1),
(5302840, 16326, 530, 7979.84228515625, -6212.453125, 21.96927833557128906, 3.155263900756835937, 300, 300, 10, 1),
(5302841, 16326, 530, 7962.11, -6161.79, 40.88, 6.16171, 300, 300, 5, 1),
(5302842, 16326, 530, 7881.890625, -6152.0556640625, 19.17034339904785156, 2.361719369888305664, 300, 300, 10, 1),
(5302843, 16325, 530, 7918.25, -6146.14, 30.2472, 0.38953, 300, 300, 3, 1),
(5302844, 16326, 530, 7926.778, -6197.565, 40.885124, 0, 300, 300, 0, 4), -- both
(5302845, 16325, 530, 7958.751, -6165.9106, 18.237658, 0, 300, 300, 0, 2), -- both
(5302846, 16326, 530, 7885.95, -6121.88, 15.7667, 5.05607, 300, 300, 5, 1),
(5302847, 16326, 530, 7912.153, -6174.936, 20.209412, 0, 300, 300, 0, 2), -- both
(5302848, 16325, 530, 7930.3525, -6221.976, 20.826181, 0, 300, 300, 0, 2), -- both
(5302849, 16325, 530, 7980.72, -6128.25, 16.8466, 1.48494, 300, 300, 10, 1),
(5302850, 16326, 530, 7983.0849609375, -6098.8564453125, 20.39158821105957031, 3.242784500122070312, 300, 300, 5, 1),
(5302851, 16325, 530, 7943.08, -6080.15, 16.1983, 2.51753, 300, 300, 10, 1), -- both?
(5302852, 16326, 530, 7905.93, -6099.9, 17.09585, 4.49323, 300, 300, 5, 1),
(5302853, 16326, 530, 8013.88, -6072.9, 16.2664, 2.16154, 300, 300, 10, 1),
(5302854, 16325, 530, 7979.693359375, -6052.6826171875, 15.99495887756347656, 0.110588788986206054, 300, 300, 10, 1),
(5302855, 16325, 530, 7878.17236328125, -6044.79541015625, 15.36771774291992187, 5.47954559326171875, 300, 300, 10, 1),
(5302856, 16326, 530, 7911.07, -6052.9, 15.2507, 3.53048, 300, 300, 10, 1),
(5302857, 16326, 530, 7849.07, -6088.06, 17.8198, 4.23564, 300, 300, 10, 1),
(5302858, 16325, 530, 7875.02, -6089.27, 16.3889, 3.60742, 300, 300, 10, 1);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16325 FROM `creature` WHERE `guid` BETWEEN 5302819 AND 5302858;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16326 FROM `creature` WHERE `guid` BETWEEN 5302819 AND 5302858;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5302819 AND 5302858; -- due to lack of data i couldnt confirm most spawns having both entries, static ids are conserved here

-- 16325,16326
SET @GUID := 5302844;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7926.778, -6197.565, 40.885124, 100, 0, 0),
(@GUID, 2, 7913.846, -6190.5996, 40.87745, 100, 0, 0),
(@GUID, 3, 7906.8237, -6174.9434, 40.871754, 100, 0, 0),
(@GUID, 4, 7913.854, -6155.9536, 40.867466, 100, 0, 0),
(@GUID, 5, 7922.3384, -6152.981, 40.88551, 100, 0, 0),
(@GUID, 6, 7933.1816, -6149.7266, 40.87985, 100, 0, 0),
(@GUID, 7, 7952.7954, -6162.736, 40.882893, 100, 0, 0),
(@GUID, 8, 7952.9536, -6185.162, 40.882427, 100, 0, 0),
(@GUID, 9, 7955.4272, -6164.0728, 40.885902, 100, 0, 0),
(@GUID, 10, 7957.992, -6154.009, 40.878986, 100, 0, 0),
(@GUID, 11, 7947.1963, -6139.851, 35.437824, 100, 0, 0),
(@GUID, 12, 7930.239, -6140.1387, 31.21633, 100, 0, 0),
(@GUID, 13, 7919.366, -6145.9478, 30.24641, 100, 0, 0),
(@GUID, 14, 7931.097, -6174.3003, 30.156336, 100, 0, 0),
(@GUID, 15, 7937.8115, -6190.597, 28.130938, 100, 0, 0),
(@GUID, 16, 7928.5806, -6195.002, 25.11251, 100, 0, 0),
(@GUID, 17, 7919.8345, -6190.147, 20.662395, 100, 0, 0),
(@GUID, 18, 7914.204, -6184.247, 20.210493, 100, 0, 0),
(@GUID, 19, 7929.4185, -6175.338, 20.196922, 100, 0, 0),
(@GUID, 20, 7948.9263, -6165.6777, 18.586485, 100, 0, 0);
-- 0x20307C42400FF14000006A00000B52F5 .go xyz 7913.846 -6190.5996 40.87745

-- Pathing for Quel'dorei Ghost Entry: 16325 'CMaNGOS FORMAT' 
SET @GUID := 5302820;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7914.0923, -6278.8076, 39.78892, 100, 0, 0),
(@GUID, 2, 7913.9946, -6272.1235, 39.790344, 100, 0, 0),
(@GUID, 3, 7908.618, -6265.1235, 39.788143, 100, 0, 0),
(@GUID, 4, 7898.3896, -6257.671, 39.78475, 100, 0, 0),
(@GUID, 5, 7911.2524, -6254.192, 39.788033, 100, 0, 0),
(@GUID, 6, 7928.336, -6251.07, 39.78985, 100, 0, 0),
(@GUID, 7, 7942.463, -6263.8438, 39.789032, 100, 0, 0),
(@GUID, 8, 7951.663, -6271.606, 39.78544, 100, 0, 0),
(@GUID, 9, 7938.172, -6274.9453, 39.789654, 100, 0, 0),
(@GUID, 10, 7924.541, -6280.259, 39.788685, 100, 0, 0),
(@GUID, 11, 7930.7056, -6285.243, 38.595074, 100, 0, 0),
(@GUID, 12, 7940.613, -6285.119, 34.78138, 100, 0, 0),
(@GUID, 13, 7948.8335, -6277.5225, 31.016361, 100, 0, 0),
(@GUID, 14, 7951.5254, -6258.032, 22.852287, 100, 0, 0),
(@GUID, 15, 7949.146, -6241.6143, 21.086964, 100, 0, 0),
(@GUID, 16, 7941.3135, -6225.7456, 21.197014, 100, 0, 0), -- incomplete?
(@GUID, 17, 7949.146, -6241.6143, 21.086964, 100, 0, 0),
(@GUID, 18, 7951.5254, -6258.032, 22.852287, 100, 0, 0),
(@GUID, 19, 7948.8335, -6277.5225, 31.016361, 100, 0, 0),
(@GUID, 20, 7940.613, -6285.119, 34.78138, 100, 0, 0),
(@GUID, 21, 7930.7056, -6285.243, 38.595074, 100, 0, 0);
-- 0x20309442400FF140000016000055889C .go xyz 7914.0923 -6278.8076 39.78892
UPDATE `creature_movement` SET `comment` = 'guessed' WHERE `id` = 5302820 AND `point` BETWEEN 17 AND 21;

-- Pathing for Quel'dorei Wraith Entry: 16326 'CMaNGOS FORMAT' 
SET @GUID := 5302845;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = 7921.021, `position_y` = -6124.257, `position_z` = 15.615221 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7958.751, -6165.9106, 18.237658, 100, 0, 0),
(@GUID, 2, 7947.915, -6137.85, 17.241808, 100, 0, 0), -- gap/incomplete
(@GUID, 3, 7921.021, -6124.257, 15.615221, 100, 0, 0),
(@GUID, 4, 7903.9185, -6128.5967, 15.740221, 100, 0, 0),
(@GUID, 5, 7893.674, -6151.8003, 18.139582, 100, 0, 0),
(@GUID, 6, 7886.565, -6168.048, 19.467518, 100, 0, 0),
(@GUID, 7, 7881.5, -6191.525, 20.167835, 100, 0, 0),
(@GUID, 8, 7886.565, -6168.048, 19.467518, 100, 0, 0),
(@GUID, 9, 7893.674, -6151.8003, 18.139582, 100, 0, 0),
(@GUID, 10, 7903.9185, -6128.5967, 15.740221, 100, 0, 0),
(@GUID, 11, 7879.568, -6118.568, 15.891743, 100, 0, 0),
(@GUID, 12, 7877.172, -6100.2466, 15.766743, 100, 0, 0),
(@GUID, 13, 7879.608, -6084.5312, 15.776264, 100, 0, 0),
(@GUID, 14, 7915.3247, -6074.39, 15.615221, 100, 0, 0),
(@GUID, 15, 7930.1494, -6086.416, 15.615221, 100, 0, 0),
(@GUID, 16, 7933.722, -6109.113, 15.641746, 100, 0, 0),
(@GUID, 17, 7932.9062, -6124.5527, 16.12401, 100, 0, 0),
(@GUID, 18, 7947.915, -6137.85, 17.241808, 100, 0, 0);
UPDATE `creature_movement` SET `comment` = 'guessed' WHERE `id` = 5302845 AND `point` IN (3,11,12,13,17);
-- 0x20307C42400FF18000006A00000B5477 .go xyz 7921.021 -6124.257 15.615221

-- 16325,16326
SET @GUID := 5302847;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7912.153, -6174.936, 20.209412, 100, 0, 0),
(@GUID, 2, 7905.548, -6186.3203, 20.209415, 100, 0, 0),
(@GUID, 3, 7889.2676, -6193.2744, 19.917835, 100, 0, 0),
(@GUID, 4, 7881.093, -6191.506, 20.167835, 100, 0, 0),
(@GUID, 5, 7887.461, -6166.7617, 19.359974, 100, 0, 0),
(@GUID, 6, 7897.9785, -6142.7275, 17.300959, 100, 0, 0),
(@GUID, 7, 7901.28, -6130.992, 16.021715, 100, 0, 0),
(@GUID, 8, 7879.568, -6118.568, 15.891743, 100, 0, 0),
(@GUID, 9, 7877.172, -6100.2466, 15.766743, 100, 0, 0),
(@GUID, 10, 7879.608, -6084.5312, 15.776264, 100, 0, 0), -- gap/incomplete
(@GUID, 11, 7915.3247, -6074.39, 15.615221, 100, 0, 0),
(@GUID, 12, 7930.1494, -6086.416, 15.615221, 100, 0, 0),
(@GUID, 13, 7934.987, -6107.5737, 15.641746, 100, 0, 0),
(@GUID, 14, 7921.021, -6124.257, 15.615221, 100, 0, 0),
(@GUID, 15, 7908.3223, -6124.477, 15.615221, 100, 0, 0),
(@GUID, 16, 7887.461, -6166.7617, 19.359974, 100, 0, 0),
(@GUID, 17, 7881.093, -6191.506, 20.167835, 100, 0, 0),
(@GUID, 18, 7889.2676, -6193.2744, 19.917835, 100, 0, 0),
(@GUID, 19, 7904.983, -6186.561, 20.209415, 100, 0, 0);
-- 0x20307C42400FF18000006A00000B5503 .go xyz 7887.461 -6166.7617 19.359974
UPDATE `creature_movement` SET `comment` = 'guessed' WHERE `id` = 5302847 AND `point` BETWEEN 11 AND 15;

-- Pathing for Quel'dorei Wraith Entry: 16326 'CMaNGOS FORMAT' 
SET @GUID := 5302848;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7930.3525, -6221.976, 20.826181, 100, 0, 0),
(@GUID, 2, 7942.526, -6222.151, 21.024773, 100, 0, 0),
(@GUID, 3, 7959.408, -6211.862, 19.958244, 100, 0, 0),
(@GUID, 4, 7971.3906, -6196.0615, 18.935719, 100, 0, 0),
(@GUID, 5, 7969.171, -6178.558, 19.419361, 100, 0, 0),
(@GUID, 6, 7957.9756, -6163.536, 18.15697, 100, 0, 0),
(@GUID, 7, 7952.809, -6148.634, 18.137316, 100, 0, 0),
(@GUID, 8, 7943.0366, -6130.9663, 16.891747, 100, 0, 0),
(@GUID, 9, 7908.3223, -6124.477, 15.615221, 100, 0, 0),
(@GUID, 10, 7917.271, -6123.5425, 15.615221, 100, 0, 0),
(@GUID, 11, 7932.9062, -6124.5527, 16.12401, 100, 0, 0), -- incomplete
(@GUID, 12, 7943.0366, -6130.9663, 16.891747, 100, 0, 0),
(@GUID, 13, 7952.809, -6148.634, 18.137316, 100, 0, 0),
(@GUID, 14, 7957.9756, -6163.536, 18.15697, 100, 0, 0),
(@GUID, 15, 7969.171, -6178.558, 19.419361, 100, 0, 0),
(@GUID, 16, 7971.3906, -6196.0615, 18.935719, 100, 0, 0),
(@GUID, 17, 7959.408, -6211.862, 19.958244, 100, 0, 0),
(@GUID, 18, 7942.526, -6222.151, 21.024773, 100, 0, 0);
-- 0x20309442400FF180000016000055893B .go xyz 7930.3525 -6221.976 20.826181
UPDATE `creature_movement` SET `comment` = 'guessed' WHERE `id` = 5302848 AND `point` BETWEEN 12 AND 18;

-- =============
-- Lake Elrendar
-- =============
-- Ravening Apparition 16327
-- https://web.archive.org/web/20080502013328/http://wow.allakhazam.com/db/mob.html?wmob=16327
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16327; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,2409,4293,6344,6347,6348,50502) AND `entry` = 16327;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16327, 1210, 0.09, 0, 1, 1, 0, 'Shadowgem'),
(16327, 774, 0.1, 0, 1, 1, 0, 'Malachite'),
(16327, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16327, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Vengeful Apparition 16328
-- https://web.archive.org/web/20080502013333/http://wow.allakhazam.com/db/mob.html?wmob=16328
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16328; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,2881,4292,4346,6347,50502) AND `entry` = 16328;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16328, 1210, 0.12, 0, 1, 1, 0, 'Shadowgem'),
(16328, 774, 0.15, 0, 1, 1, 0, 'Malachite'),
(16328, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16328, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Aquantion 16292
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (9.027779579162597656 / 7), `UnitFlags` = 0, `DamageSchool` = 4, `MovementType` = 0 WHERE `entry` = 16292;
-- Altar of Tidal Mastery 181157 - despawn issue on use
UPDATE `gameobject_template` SET `ExtraFlags` = 0 WHERE `entry` = 181157; -- data5 also does not work? should be consumed on go usage, dbscript or data5 manipulation doesnt work
UPDATE `gameobject` SET `spawntimesecsmin` = 15, `spawntimesecsmax` = 30 WHERE `id` = 181157;
UPDATE `dbscripts_on_event` SET `delay` = 500, `x` = 7945.52978515625, `y` = -7636.7119140625, `z` = 112.9729385375976562, `o` = 2.932153224945068359, `comments` = 'Quest 9174 - Summon Aquantion 16292'  WHERE `id` = 9980 AND `command` = 10;
DELETE FROM `dbscripts_on_event` WHERE `id` = 9980 AND `command` IN (31,40);
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(9980, 0, 0, 31, 16292, 100, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest 9174 - search for 16292 - terminate if alive'),
(9980, 200, 0, 40, 0, 0, 0, 181157, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest 9174 - despawn object'); -- does not work

DELETE FROM `creature` WHERE `id` IN (16327,16328);
DELETE FROM `creature` WHERE `guid` BETWEEN 5302859 AND 5302892;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302859, 16327, 530, 7748.21, -7739.11, 142.024, 2.47245, 300, 300, 5, 1), -- both
(5302860, 16327, 530, 7850.0869140625, -7713.759765625, 134.4644927978515625, 0.562574565410614013, 300, 300, 10, 1), -- both
(5302861, 16327, 530, 7799.02, -7712.31, 134.056, 3.41369, 300, 300, 10, 1), -- both
(5302862, 16327, 530, 7816.37158203125, -7693.70361328125, 144.5638885498046875, 0.841317653656005859, 300, 300, 10, 1),
(5302863, 16327, 530, 7846.423828125, -7653.16259765625, 146.958465576171875, 2.733879566192626953, 300, 300, 10, 1),
(5302864, 16327, 530, 7722.02, -7722.55, 141.013, 4.62446, 300, 300, 5, 1), -- both
(5302865, 16327, 530, 7801.52, -7638.89, 138.972, 1.87958, 300, 300, 5, 1), -- both
(5302866, 16327, 530, 7751.04, -7685.68, 139.99, 3.22886, 300, 300, 10, 1), -- both
(5302867, 16327, 530, 7963.19, -7584.59, 132.888, 1.61344, 300, 300, 10, 1), -- both
(5302868, 16327, 530, 7884.87, -7683.61, 139.46, 5.77704, 300, 300, 10, 1), -- both
(5302869, 16327, 530, 7681.96, -7674.95, 131.462, 0.294235, 300, 300, 5, 1), -- both
(5302870, 16328, 530, 7917.67724609375, -7651.69970703125, 118.3044052124023437, 0.514395892620086669, 300, 300, 10, 1), -- both
(5302871, 16328, 530, 7946.65, -7614.63, 118.887, 5.55015, 300, 300, 10, 1), -- both
(5302872, 16327, 530, 7883.07, -7611.99, 130.091, 0.802851, 300, 300, 10, 1), -- both
(5302873, 16328, 530, 7816.27, -7743.35, 140.129, 2.56563, 300, 300, 5, 1), -- both
(5302874, 16327, 530, 7783.36, -7713.65, 134.263, 1.37881, 300, 300, 10, 1), -- both
(5302875, 16328, 530, 7851.74, -7586.3, 119.558, 6.24828, 300, 300, 10, 1), -- both
(5302876, 16327, 530, 7817.72, -7614.53, 133.94, 4.95674, 300, 300, 10, 1), -- both
(5302877, 16327, 530, 7772.76, -7647.01, 136.054, 1.59059, 300, 300, 10, 1), -- both
(5302878, 16328, 530, 7647.81, -7675.31, 127.042, 1.80155, 300, 300, 10, 1), -- both
(5302879, 16327, 530, 7720.48, -7648.03, 146.227, 1.06958, 300, 300, 5, 1), -- both
(5302880, 16327, 530, 7735.2, -7638.77, 145.428, 0.938071, 300, 300, 5, 1), -- both
(5302881, 16328, 530, 7745.13, -7620.38, 145.785, 3.46334, 300, 300, 5, 1), -- both
(5302882, 16328, 530, 7775.79, -7589.87, 127.65, 3.30651, 300, 300, 10, 1), -- both
(5302883, 16328, 530, 7657.39, -7689.21, 128.875, 2.15799, 300, 300, 10, 1), -- both
(5302884, 16327, 530, 7759.18, -7724.33, 139.139, 3.57387, 300, 300, 5, 1), -- both
(5302885, 16328, 530, 7900.044921875, -7610.56103515625, 131.4434051513671875, 1.431661725044250488, 300, 300, 5, 1), -- wrong? path?
(5302886, 16327, 530, 7641.24365234375, -7655.82421875, 126.0739898681640625, 4.616604804992675781, 300, 300, 5, 1), -- wrong? path?
(5302887, 16327, 530, 7767.09130859375, -7746.0361328125, 142.0464630126953125, 5.911688804626464843, 300, 300, 5, 1), -- d.82019
(5302888, 16327, 530, 7806.06201171875, -7580.9833984375, 131.047515869140625, 6.130239009857177734, 300, 300, 5, 1), -- d.81906
(5302889, 16327, 530, 7920.978515625, -7677.1083984375, 141.1870269775390625, 1.072153925895690917, 300, 300, 5, 1), -- d.81904
(5302890, 16328, 530, 7628.714844, -7633.286621, 128.65855, 3.719856977462768554, 300, 300, 5, 1), -- d.81903
(5302891, 16328, 530, 7729.115234375, -7702.5400390625, 135.729461669921875, 4.761273860931396484, 300, 300, 10, 1), -- d.81877
(5302892, 16328, 530, 7982.746582, -7630.207031, 121.483337, 2.77563, 300, 300, 10, 1); -- d.81885

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16327 FROM `creature` WHERE `guid` BETWEEN 5302859 AND 5302892;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16328 FROM `creature` WHERE `guid` BETWEEN 5302859 AND 5302892;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5302859 AND 5302892;

-- =========
-- An'daroth
-- =========
-- Sentinel Spy 16330
-- https://web.archive.org/web/20080420172813/http://wow.allakhazam.com/db/mob.html?wmob=16330
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16330; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502) AND `entry` = 16330;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16330, 1210, 0.06, 0, 1, 1, 0, 'Shadowgem'),
(16330, 774, 0.39, 0, 1, 1, 0, 'Malachite'),
(16330, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16330, 50503, 0.3, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Sentinel Leader 17210
-- https://web.archive.org/web/20080502220941/http://wow.allakhazam.com/db/mob.html?wmob=17210
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 17210; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502) AND `entry` = 17210;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17210, 1210, 0.09, 0, 1, 1, 0, 'Shadowgem'),
(17210, 774, 0.14, 0, 1, 1, 0, 'Malachite'),
(17210, 818, 0.51, 0, 1, 1, 0, 'Tigerseye'),
(17210, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(17210, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature_movement` WHERE `Id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16330);
DELETE FROM `creature` WHERE `id` IN (16330,17210);
DELETE FROM `creature` WHERE `guid` BETWEEN 5302893 AND 5302893;
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302893, 16330, 530, 7946.3671875, -6469.5166015625, 50.92702102661132812, 5.829399585723876953, 300, 300, 0, 0),
(5302894, 16330, 530, 7965.81103515625, -6465.1884765625, 51.12981414794921875, 4.118977069854736328, 300, 300, 0, 0),
(5302895, 16330, 530, 7966.69091796875, -6482.30810546875, 51.914703369140625, 2.426007747650146484, 300, 300, 0, 0),
(5302896, 16330, 530, 8005.76318359375, -6450.9755859375, 62.13370513916015625, 3.926990747451782226, 300, 300, 0, 0),
(5302897, 16330, 530, 8011.03662109375, -6466.64501953125, 62.0297088623046875, 3.176499128341674804, 300, 300, 0, 0),
(5302898, 16330, 530, 7978.05029296875, -6554.125, 59.26723861694335937, 1.954768776893615722, 300, 300, 0, 0),
(5302899, 16330, 530, 7981.28759765625, -6539.00244140625, 59.53390884399414062, 3.892084121704101562, 300, 300, 0, 0),
(5302900, 16330, 530, 7945.73291015625, -6579.013671875, 54.38336944580078125, 1.01095, 300, 300, 15, 1),
(5302901, 16330, 530, 7920.18, -6554.29, 51.7943, 5.00561, 300, 300, 15, 1),
(5302902, 16330, 530, 7894.06, -6544.12, 47.641, 0.324908, 300, 300, 15, 1),
(5302903, 16330, 530, 7947.65, -6547.53, 54.3721, 5.65176, 300, 300, 15, 1),
(5302904, 16330, 530, 7915.890625, -6519.07080078125, 47.7542266845703125, 4.08876657485961914, 300, 300, 15, 1),
(5302905, 16330, 530, 7885.6962890625, -6486.44921875, 48.70124053955078125, 0.894071877002716064, 300, 300, 15, 1),
(5302906, 16330, 530, 7989.87, -6513.11, 59.2806, 5.54836, 300, 300, 15, 1),
(5302907, 16330, 530, 7913.65, -6485.86, 47.6309, 4.13106, 300, 300, 15, 1),
(5302908, 16330, 530, 7954.7627, -6430.6167, 57.585033, 0.081288, 300, 300, 15, 1),
(5302909, 16330, 530, 7886.62, -6517.31, 46.9132, 5.20012, 300, 300, 15, 1),
(5302910, 16330, 530, 7993.6333, -6466.6142, 59.4672, 6.03039, 300, 300, 5, 1),
(5302911, 16330, 530, 7954.6, -6563.63, 55.0333, 6.02287, 300, 300, 0, 2),
(5302912, 16330, 530, 7900.32, -6497.87, 47.5106, 0.484221, 300, 300, 0, 2),
(5302913, 17210, 530, 7959.21, -6477.04, 51.0589, 0, 300, 300, 0, 2);

DELETE FROM `creature_movement` WHERE `Id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16330);
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`) VALUES
-- def. 1 or 2 spies with waypoints
(5302912, 1, 7900.32, -6497.87, 47.5106, 100),
(5302912, 2, 7912.19, -6494.71, 47.1821, 100),
(5302912, 3, 7922.93, -6492.08, 46.9292, 100),
(5302912, 4, 7921.86, -6482.85, 47.5928, 100),
(5302912, 5, 7920.85, -6469.48, 49.084, 100),
(5302912, 6, 7919.63, -6459.06, 50.2057, 100),
(5302912, 7, 7918.18, -6448.69, 52.262, 100),
(5302912, 8, 7920.56, -6464.31, 49.4089, 100),
(5302912, 9, 7921.59, -6478.87, 47.8886, 100),
(5302912, 10, 7929.73, -6493.64, 46.6639, 100),
(5302912, 11, 7937.41, -6500.79, 46.5272, 100),
(5302912, 12, 7919.69, -6516.77, 46.9043, 100),
(5302912, 13, 7914.54, -6535.86, 47.6551, 100),
(5302912, 14, 7913.81, -6544.76, 50.403, 100),
(5302912, 15, 7913.29, -6551.15, 51.2099, 100),
(5302912, 16, 7914.92, -6541.96, 49.7333, 100),
(5302912, 17, 7915.97, -6535.64, 47.636, 100),
(5302912, 18, 7920.28, -6524.81, 47.3236, 100),
(5302912, 19, 7923.52, -6512.41, 46.8267, 100),
(5302912, 20, 7939.68, -6501.67, 46.5513, 100),
(5302912, 21, 7947.13, -6505.87, 46.7364, 100),
(5302912, 22, 7952.35, -6506.45, 47.3305, 100),
(5302912, 23, 7965.78, -6506.66, 52.521, 100),
(5302912, 24, 7967.41, -6504.22, 52.7831, 100),
(5302912, 25, 7954.21, -6506.42, 47.7545, 100),
(5302912, 26, 7946.79, -6505.8, 46.7331, 100),
(5302912, 27, 7939.91, -6501.96, 46.5581, 100),
(5302912, 28, 7927.88, -6507.88, 46.7883, 100),
(5302912, 29, 7921.43, -6512.77, 46.8466, 100),
(5302912, 30, 7915.21, -6535.85, 47.6562, 100),
(5302912, 31, 7912.94, -6545.49, 50.4127, 100),
(5302912, 32, 7911.48, -6551.73, 51.1795, 100),
(5302912, 33, 7912.34, -6543.65, 49.8552, 100),
(5302912, 34, 7913.88, -6535.61, 47.6357, 100),
(5302912, 35, 7918.22, -6515.64, 46.8566, 100),
(5302912, 36, 7929.86, -6506.89, 46.7253, 100),
(5302912, 37, 7929.33, -6494.27, 46.6611, 100),
(5302912, 38, 7923.27, -6490.81, 46.9264, 100),
(5302912, 39, 7913.32, -6494.07, 47.1927, 100),
(5302912, 40, 7899.95, -6498.34, 47.557, 100),
(5302912, 41, 7890.17, -6499.9, 47.7993, 100),
(5302912, 42, 7876.3, -6501.86, 48.0669, 100),
(5302912, 43, 7872.25, -6502.43, 48.8298, 100),
(5302912, 44, 7882.11, -6501.17, 47.8077, 100),
(5302912, 45, 7890.8, -6499.92, 47.7538, 100),

(5302911, 45, 7945.58, -6565.89, 53.7617, 100),
(5302911, 44, 7937.35, -6573.28, 54.2422, 100),
(5302911, 43, 7926.36, -6582.38, 53.3067, 100),
(5302911, 42, 7920.57, -6571.27, 53.5382, 100),
(5302911, 41, 7914.84, -6561.13, 52.44, 100),
(5302911, 40, 7908.73, -6559.11, 51.5153, 100),
(5302911, 39, 7897.69, -6555.46, 49.4669, 100),
(5302911, 38, 7886.59, -6550.28, 47.3383, 100),
(5302911, 37, 7883.16, -6534.38, 45.6395, 100),
(5302911, 36, 7881.31, -6518.72, 46.856, 100),
(5302911, 35, 7880.4, -6512.95, 46.5274, 100),
(5302911, 34, 7880.19, -6504.77, 47.4123, 100),
(5302911, 33, 7881.74, -6487.36, 48.4788, 100),
(5302911, 32, 7890.16, -6474.4, 50.7722, 100),
(5302911, 31, 7891.72, -6470.63, 50.8219, 100),
(5302911, 30, 7900.47, -6463.69, 50.8951, 100),
(5302911, 29, 7910.99, -6457.89, 51.0916, 100),
(5302911, 28, 7917.64, -6450.51, 51.9036, 100),
(5302911, 27, 7924.08, -6439.39, 54.3376, 100),
(5302911, 26, 7933.5, -6426.63, 57.9866, 100),
(5302911, 25, 7938.21, -6419.97, 61.3128, 100),
(5302911, 24, 7949.72, -6421.83, 59.2484, 100),
(5302911, 23, 7963.72, -6423.02, 59.4658, 100),
(5302911, 22, 7974.22, -6423.23, 58.9278, 100),
(5302911, 21, 7986.65, -6428.11, 60.1909, 100),
(5302911, 20, 7999.43, -6429.75, 61.7411, 100),
(5302911, 19, 8010.34, -6435.62, 62.5336, 100),
(5302911, 18, 8021.14, -6441.41, 62.7181, 100),
(5302911, 17, 8023.17, -6447.8, 62.1215, 100),
(5302911, 16, 8025.27, -6459.26, 62.0128, 100),
(5302911, 15, 8021.24, -6467.69, 62.1535, 100),
(5302911, 14, 8015.96, -6477.41, 63.0251, 100),
(5302911, 13, 8011.67, -6485.03, 62.7964, 100),
(5302911, 12, 8011.49, -6490.87, 62.3164, 100),
(5302911, 11, 8009.73, -6507.7, 59.7056, 100),
(5302911, 10, 8009.96, -6519.94, 59.6991, 100),
(5302911, 9, 8008.8, -6536.84, 61.587, 100),
(5302911, 8, 8006.59, -6547.12, 63.0345, 100),
(5302911, 7, 8005.24, -6555.77, 63.7849, 100),
(5302911, 6, 8004.22, -6566.78, 63.3646, 100),
(5302911, 5, 7994.78, -6569.86, 62.2509, 100),
(5302911, 4, 7983.77, -6569.5, 60.7446, 100),
(5302911, 3, 7973.98, -6567.99, 58.5354, 100),
(5302911, 2, 7964.2, -6566.23, 56.9822, 100),
(5302911, 1, 7954.6, -6563.63, 55.0333, 100);

UPDATE `creature_movement` SET `Comment` = 'Corecraft' WHERE `id` = 5302912;

DELETE FROM `creature_movement_template` WHERE `Entry` = 17210;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(17210, 0, 1, 7959.21, -6477.04, 51.0589, 100, 0, 0),
(17210, 0, 2, 7949.21, -6470.89, 50.8545, 2.67718, 12000, 1721001),
(17210, 0, 3, 7964.13, -6468.31, 50.8281, 100, 0, 0),
(17210, 0, 4, 7970.87, -6472.73, 51.378, 100, 0, 0),
(17210, 0, 5, 7976.76, -6470.12, 53.2503, 100, 0, 0),
(17210, 0, 6, 7987.85, -6464.91, 58.1229, 100, 0, 0),
(17210, 0, 7, 7994, -6460.51, 60.3201, 100, 0, 0),
(17210, 0, 8, 8002.4, -6454.37, 61.7814, 0.722335, 12000, 1721001),
(17210, 0, 9, 8008.29, -6466.92, 61.8956, 0.09794, 12000, 1721001),
(17210, 0, 10, 8002.48, -6475.78, 60.9006, 100, 0, 0),
(17210, 0, 11, 7996.81, -6483.91, 59.0609, 100, 0, 0),
(17210, 0, 12, 7991.4, -6490.99, 57.1803, 100, 0, 0),
(17210, 0, 13, 7986.9, -6496.35, 56.1106, 100, 0, 0),
(17210, 0, 14, 7972.27, -6513.77, 56.5861, 100, 0, 0),
(17210, 0, 15, 7972.21, -6524.3, 57.8696, 100, 0, 0),
(17210, 0, 16, 7974.74, -6536.88, 58.8071, 100, 0, 0),
(17210, 0, 17, 7977.36, -6550.41, 59.3031, 4.92499, 12000, 1721001),
(17210, 0, 18, 7979.65, -6540.51, 59.4182, 0.723897, 12000, 1721001),
(17210, 0, 19, 7973.16, -6525.25, 58.0451, 100, 0, 0),
(17210, 0, 20, 7970.04, -6515.8, 56.4786, 100, 0, 0),
(17210, 0, 21, 7966.01, -6503.63, 52.3774, 100, 0, 0),
(17210, 0, 22, 7961.96, -6491.44, 51.8998, 100, 0, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1721001;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1721001, 0, 	0, 31, 16330, 5, 0, 0, 0, 0, -12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Leader - Terminate Script If Sentinel Spy (16330) Is Not Found in Range'),
(1721001, 1000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Leader - EMOTE_ONESHOT_SALUTE (66)'),
(1721001, 3000, 0, 1, 1, 0, 0, 16330, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Spy - EMOTE_ONESHOT_TALK (1)'),
(1721001, 5000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Leader - EMOTE_ONESHOT_QUESTION (6)'),
(1721001, 7000, 0, 1, 273, 0, 0, 16330, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Spy - EMOTE_ONESHOT_YES (273)'),
(1721001, 9000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Leader - EMOTE_ONESHOT_SALUTE (66)'),
(1721001, 11000, 0, 1, 66, 0, 0, 16330, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Spy - EMOTE_ONESHOT_SALUTE (66)');

-- ==============
-- Shalandis Isle
-- ==============
-- Darnassian Druid 16331
-- https://web.archive.org/web/20080502022947/http://wow.allakhazam.com/db/mob.html?wmob=16331
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16331; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4345,4409,50502) AND `entry` = 16331;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16331, 1210, 0.14, 0, 1, 1, 0, 'Shadowgem'),
(16331, 774, 0.11, 0, 1, 1, 0, 'Malachite'),
(16331, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16331, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Darnassian Huntress 16332
-- https://web.archive.org/web/20080430071340/http://wow.allakhazam.com/db/mob.html?wmob=16332
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16332; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4292,50502) AND `entry` = 16332;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16332, 1210, 0.09, 0, 1, 1, 0, 'Shadowgem'),
(16332, 774, 0.15, 0, 1, 1, 0, 'Malachite'),
(16332, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16332, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16331,16332));
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16331,16332));
DELETE FROM `creature` WHERE `id` IN (16331,16332);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302914, 16331, 530, 7679.66162109375, -5769.40478515625, 3.854619264602661132, 1.047197580337524414, 300, 300, 0, 2),
(5302915, 16331, 530, 7677.50244140625, -5736.302734375, 3.758324146270751953, 5.724679946899414062, 300, 300, 0, 2),
(5302916, 16331, 530, 7691.95654296875, -5714.34912109375, 4.27935647964477539, 3.577924966812133789, 300, 300, 0, 0),
(5302917, 16331, 530, 7712.92626953125, -5704.05322265625, 3.397907257080078125, 2.565634012222290039, 300, 300, 0, 2),
(5302918, 16331, 530, 7685.88525390625, -5699.0595703125, 3.649730205535888671, 0.48869219422340393, 300, 300, 0, 2),
(5302919, 16331, 530, 7720.328125, -5695.7041015625, 3.863145351409912109, 2.722713708877563476, 300, 300, 0, 2),
(5302920, 16331, 530, 7741.41650390625, -5707.06005859375, 3.669067144393920898, 6.195918560028076171, 300, 300, 0, 2),
(5302921, 16331, 530, 7719.69287109375, -5682.38525390625, 4.808124542236328125, 0.191986218094825744, 300, 300, 0, 0),
(5302922, 16331, 530, 7681.078125, -5667.5009765625, 1.573118329048156738, 5.305800914764404296, 300, 300, 0, 2),

(5302923, 16332, 530, 7751.95, -5668.52, 3.2572, 0, 300, 300, 0, 2),
(5302924, 16332, 530, 7758.2876, -5604.123, 5.953563, 0, 300, 300, 0, 4),
(5302925, 16332, 530, 7730.902, -5575.2056, 6.875351, 0, 300, 300, 0, 2),
(5302926, 16332, 530, 7746.667480, -5595.223145, 5.204555, 0, 300, 300, 1, 1),
(5302927, 16332, 530, 7764.08447265625, -5621.7392578125, 12.73809432983398437, 2.234021425247192382, 300, 300, 0, 0),
(5302928, 16332, 530, 7775.2153, -5634.5225, 17.786907, 0, 300, 300, 0, 2),
(5302929, 16332, 530, 7772.72998046875, -5629.0810546875, 17.91558647155761718, 2.687807083129882812, 300, 300, 0, 0);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(5302916, 0, 8, 1, 16, 0, 0, NULL), -- no precast emotestate
(5302921, 0, 8, 1, 16, 0, 0, NULL); -- no precast emotestate

-- not enough data to revamp this one, points are slightly off
DELETE FROM `creature_movement` WHERE `Id` = 5302923;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(5302923, 10, 7751.95, -5668.52, 3.257, 100, 0, 0),
(5302923, 9, 7755.93, -5703.13, 3.984, 100, 0, 0),
(5302923, 8, 7731.41, -5733.69, 3.972, 100, 0, 0),
(5302923, 7, 7697.18, -5732.92, 3.67, 100, 0, 0),
(5302923, 6, 7696.6, -5753.39, 4.803, 100, 0, 0),
(5302923, 5, 7672.94, -5753.6, 3.817, 100, 0, 0),
(5302923, 4, 7696.6, -5753.39, 4.803, 100, 0, 0),
(5302923, 3, 7697.18, -5732.92, 3.67, 100, 0, 0),
(5302923, 2, 7731.41, -5733.69, 3.972, 100, 0, 0),
(5302923, 1, 7755.93, -5703.13, 3.984, 100, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(5302914, 1, 7679.66162109375, -5769.40478515625, 3.854619264602661132, 100, 1, 1633101),
(5302914, 2, 7679.66162109375, -5769.40478515625, 3.854619264602661132, 100, 45000, 0),
(5302915, 1, 7677.50244140625, -5736.302734375, 3.758324146270751953, 100, 45000, 0),
(5302915, 2, 7677.50244140625, -5736.302734375, 3.758324146270751953, 100, 1, 1633101),
(5302917, 1, 7712.92626953125, -5704.05322265625, 3.397907257080078125, 100, 1, 1633101),
(5302917, 2, 7712.92626953125, -5704.05322265625, 3.397907257080078125, 100, 45000, 0),
(5302918, 1, 7685.88525390625, -5699.0595703125, 3.649730205535888671, 100, 45000, 0),
(5302918, 2, 7685.88525390625, -5699.0595703125, 3.649730205535888671, 100, 1, 1633101),
(5302919, 1, 7720.328125, -5695.7041015625, 3.863145351409912109, 100, 1, 1633101),
(5302919, 2, 7720.328125, -5695.7041015625, 3.863145351409912109, 100, 45000, 0),
(5302920, 1, 7741.41650390625, -5707.06005859375, 3.669067144393920898, 100, 45000, 0),
(5302920, 2, 7741.41650390625, -5707.06005859375, 3.669067144393920898, 100, 1, 1633101),
(5302922, 1, 7681.078125, -5667.5009765625, 1.573118329048156738, 100, 1, 1633101),
(5302922, 2, 7681.078125, -5667.5009765625, 1.573118329048156738, 100, 45000, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1633101;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1633101, 0, 0, 15, 28892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darnassian Druid - Cast Nature Channeling'),
(1633101, 30000, 0, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darnassian Druid - Interrupt Channelling'); -- 28s in sniff, can be random i guess

-- Pathing for Darnassian Huntress Entry: 16332 'CMaNGOS FORMAT' 
SET @GUID := 5302925;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7730.902, -5575.2056, 6.875351, 100, 0, 0),
(@GUID, 2, 7729.6963, -5579.8394, 6.7106028, 100, 0, 0),
(@GUID, 3, 7732.3457, -5586.9214, 6.2064266, 100, 0, 0),
(@GUID, 4, 7739.3994, -5597.0625, 5.1765356, 100, 0, 0),
(@GUID, 5, 7743.164, -5603.155, 5.3690796, 100, 0, 0),
(@GUID, 6, 7750.7754, -5606.6, 5.8016047, 100, 0, 0),
(@GUID, 7, 7755.2476, -5603.3574, 5.79532, 100, 0, 0),
(@GUID, 8, 7754, -5596.923, 5.4391894, 100, 0, 0),
(@GUID, 9, 7748.6787, -5590.26, 5.1773467, 100, 0, 0),
(@GUID, 10, 7741.2046, -5580.746, 6.187786, 100, 0, 0),
(@GUID, 11, 7735.624, -5575.783, 6.685228, 100, 0, 0);

-- Pathing for Darnassian Huntress Entry: 16332 'CMaNGOS FORMAT' 
SET @GUID := 5302928;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7775.2153, -5634.5225, 17.786907, 100, 0, 0),
(@GUID, 2, 7781.776, -5625.834, 17.69419, 100, 0, 0),
(@GUID, 3, 7780.244, -5622.344, 16.68333, 100, 0, 0),
(@GUID, 4, 7778.632, -5620.921, 15.060618, 100, 0, 0),
(@GUID, 5, 7773.259, -5620.7246, 12.782057, 100, 0, 0),
(@GUID, 6, 7767.975, -5624.541, 12.765444, 100, 0, 0),
(@GUID, 7, 7762.6157, -5628.4653, 12.778393, 100, 0, 0),
(@GUID, 8, 7761.0054, -5634.1597, 14.97569, 100, 0, 0),
(@GUID, 9, 7762.2866, -5636.7803, 17.259825, 100, 0, 0),
(@GUID, 10, 7767.257, -5638.0933, 17.724257, 100, 0, 0);
-- 0x20307C42400FF30000006A00000B5214 .go xyz 7775.2153, -5634.5225, 17.786907

-- Pathing for Darnassian Huntress Entry: 16332 'CMaNGOS FORMAT' 
SET @GUID := 5302924;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 4, 7725, -5631.25, 2.3535814, 100, 0, 0),
(@GUID, 3, 7730.3564, -5628.1562, 1.3758655, 100, 0, 0),
(@GUID, 2, 7747.982, -5614.319, 6.5642357, 100, 0, 0),
(@GUID, 1, 7758.2876, -5604.123, 5.953563, 100, 0, 0);
-- 0x20307C42400FF30000006A00000B5209 .go xyz 7725 -5631.25 2.3535814

-- =======
-- An'owyn
-- =======
-- Sentinel Infiltrator 16333
-- https://web.archive.org/web/20080430024551/http://wow.allakhazam.com/db/mob.html?wmob=16333
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16333; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,2881,4345,4409,6375,6716,50502) AND `entry` = 16333;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16333, 1210, 0.17, 0, 1, 1, 0, 'Shadowgem'),
(16333, 774, 0.09, 0, 1, 1, 0, 'Malachite'),
(16333, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16333, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature_movement` WHERE `Id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16333);
DELETE FROM `creature` WHERE `id` = 16333;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5302930, 16333, 530, 6836.13916015625, -7143.13525390625, 30.26040077209472656, 4.485496044158935546, 300, 300, 0, 0),
(5302931, 16333, 530, 6824.734375, -7225.86962890625, 27.0943145751953125, 1.169370532035827636, 300, 300, 0, 0),
(5302932, 16333, 530, 6846.6484375, -7184.21728515625, 27.48716354370117187, 3.804817676544189453, 300, 300, 0, 0),
(5302933, 16333, 530, 6781.94873046875, -7187.36474609375, 25.85512924194335937, 6.126105785369873046, 300, 300, 0, 0),
(5302934, 16333, 530, 6791.18212890625, -7202.23974609375, 25.85512924194335937, 0.715584993362426757, 300, 300, 0, 0),
(5302935, 16333, 530, 6768.29345703125, -7147.10107421875, 49.63121795654296875, 0.471238881349563598, 300, 300, 0, 0),
(5302936, 16333, 530, 6812.75341796875, -7221.546875, 26.718292236328125, 0.872664630413055419, 300, 300, 0, 0),
(5302937, 16333, 530, 6841.5849609375, -7174.06591796875, 26.72866249084472656, 4.956735134124755859, 300, 300, 0, 0),
(5302938, 16333, 530, 6830.13, -7176.33, 26.0216, 4.5204, 300, 300, 0, 0),
(5302939, 16333, 530, 6818.568359, -7242.177734, 35.198566, 5.42038, 300, 300, 10, 1),
(5302940, 16333, 530, 6847.521484, -7243.867676, 37.487274, 0.712861, 300, 300, 15, 1),
(5302941, 16333, 530, 6851.939453, -7217.625488, 30.057913, 0.618929, 300, 300, 3, 1),
(5302942, 16333, 530, 6880.149902, -7218.870117, 35.896557, 3.83648, 300, 300, 7, 1),
(5302943, 16333, 530, 6882.91, -7182.39, 34.9994, 1.0177, 300, 300, 5, 1),
(5302944, 16333, 530, 6879.649902, -7156.330078, 31.428101, 2.73824, 300, 300, 7, 1),
(5302945, 16333, 530, 6898.009766, -7120.899902, 44.987499, 2.37723, 300, 300, 10, 1),
(5302946, 16333, 530, 6872.617188, -7108.649414, 42.858631, 0.108649, 300, 300, 10, 1),
(5302947, 16333, 530, 6813.123047, -7141.786133, 41.153851, 4.35504, 300, 300, 5, 1),
(5302948, 16333, 530, 6748.535, -7152.66, 52.768658, 2.06064, 300, 300, 7, 1),
(5302949, 16333, 530, 6749.279785, -7176.759766, 36.344700, 4.35297, 300, 300, 10, 1),
(5302950, 16333, 530, 6779.802246, -7220.193848, 31.106001, 3.68917, 300, 300, 10, 1),
(5302951, 16333, 530, 6834.94, -7216.47, 26.7579, 0, 300, 300, 0, 2),
(5302952, 16333, 530, 6814.88, -7163.52, 33.065, 0, 300, 300, 0, 2),
(5302953, 16333, 530, 6846.407, -7200.3657, 27.267984, 0, 300, 300, 0, 2);

-- Pathing for Sentinel Infiltrator Entry: 16333 'CMaNGOS FORMAT' 
SET @GUID := 5302953;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 6846.407, -7200.3657, 27.267984, 100, 0, 0),
(@GUID, 2, 6842.989, -7192.268, 26.899847, 100, 0, 0),
(@GUID, 3, 6835.602, -7187.326, 26.064764, 100, 0, 0),
(@GUID, 4, 6828.214, -7188.1807, 24.513636, 100, 0, 0),
(@GUID, 5, 6820.3257, -7191.4316, 24.031214, 100, 0, 0),
(@GUID, 6, 6816.6333, -7196.6235, 24.099451, 100, 0, 0),
(@GUID, 7, 6816.6333, -7206.371, 24.4266, 100, 0, 0),
(@GUID, 8, 6820.516, -7213.812, 24.97848, 100, 0, 0),
(@GUID, 9, 6826.326, -7216.882, 25.996058, 100, 0, 0),
(@GUID, 10, 6835.212, -7216.7383, 26.493082, 100, 0, 0),
(@GUID, 11, 6841.942, -7214.983, 27.368082, 100, 0, 0),
(@GUID, 12, 6847.863, -7209.14, 27.527506, 100, 0, 0);
-- 0x2030A442400FF3400075F60000F348AB .go xyz 6846.407 -7200.3657 27.267984

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(5302951, 1, 6834.94, -7216.47, 26.7579, 100, 0, 0),
(5302951, 2, 6826.21, -7222.83, 27.1963, 100, 10000, 1633301),
(5302951, 3, 6817.33, -7206.5, 24.9296, 100, 0, 0),
(5302951, 4, 6819.72, -7180.19, 25.8325, 100, 0, 0),
(5302951, 5, 6811.1, -7153.33, 37.8559, 100, 0, 0),
(5302951, 6, 6794.9, -7138.71, 44.1971, 100, 0, 0),
(5302951, 7, 6778.6, -7138.58, 47.7421, 100, 0, 0),
(5302951, 8, 6770.26, -7144.74, 49.6693, 100, 10000, 1633301),
(5302951, 9, 6786.9, -7138.09, 45.3298, 100, 0, 0),
(5302951, 10, 6817.34, -7166.11, 30.7101, 100, 0, 0),
(5302951, 11, 6823.65, -7165.9, 28.295, 100, 0, 0),
(5302951, 12, 6835.52, -7146.78, 30.003, 100, 10000, 1633301),
(5302951, 13, 6835.17, -7162.58, 27.7987, 100, 0, 0),
(5302951, 14, 6835.99, -7176.25, 26.3595, 100, 0, 0),
(5302951, 15, 6827.22, -7186.35, 24.9956, 100, 0, 0),
(5302951, 16, 6819.5957, -7180.5723, 25.781458, 100, 0, 0),
(5302951, 17, 6813.71, -7178.02, 26.0733, 100, 0, 0),
(5302951, 18, 6800.09, -7180.94, 26.1337, 100, 0, 0),
(5302951, 19, 6785.24, -7187.50, 25.7774, 100, 10000, 1633301),
(5302951, 20, 6801.9673, -7180.109, 25.907923, 100, 0, 0),
(5302951, 21, 6818.525, -7178.7393, 25.782923, 100, 0, 0),
(5302951, 22, 6822.1846, -7189.311, 24.157923, 100, 0, 0),
(5302951, 23, 6841.8916, -7191.3696, 26.759832, 100, 0, 0),
(5302951, 24, 6844.3, -7187.85, 27.6956, 100, 10000, 1633301),
(5302951, 25, 6846.74, -7212.1, 27.7392, 100, 0, 0),

(5302952, 1, 6813.301, -7160.7793, 34.0559, 100, 0, 0),
(5302952, 2, 6796.022, -7137.7695, 44.04686, 100, 0, 0),
(5302952, 3, 6775.7603, -7138.9243, 48.620712, 100, 0, 0),
(5302952, 4, 6770.26, -7144.74, 49.6693, 100, 10000, 1633301),
(5302952, 5, 6783.22, -7137.83, 46.4981, 100, 0, 0),
(5302952, 6, 6794.4, -7137.11, 44.6029, 100, 0, 0),
(5302952, 7, 6800.04, -7146.85, 40.496, 100, 0, 0),
(5302952, 8, 6795.78, -7165.81, 32.8607, 100, 0, 0),
(5302952, 9, 6794.72, -7181.56, 26.6348, 100, 0, 0),
(5302952, 10, 6794.2, -7190.43, 25.9555, 100, 0, 0),
(5302952, 11, 6791.74, -7199.41, 25.7725, 100, 10000, 1633301),
(5302952, 12, 6789.92, -7190.85, 26.1468, 100, 0, 0),
(5302952, 13, 6801.36, -7179.81, 25.9079, 100, 0, 0),
(5302952, 14, 6817.51, -7178.51, 25.7217, 100, 0, 0),
(5302952, 15, 6818.854, -7192.0767, 24.157923, 100, 0, 0),
(5302952, 16, 6814.8433, -7203.1724, 24.507288, 100, 0, 0),
(5302952, 17, 6819.7017, -7216.159, 25.484217, 100, 0, 0),
(5302952, 18, 6814.854, -7219.908, 26.657923, 100, 10000, 1633301),
(5302952, 19, 6816.3257, -7196.019, 24.154505, 100, 0, 0),
(5302952, 20, 6828.638, -7189.9097, 24.657068, 100, 0, 0),
(5302952, 21, 6830.4307, -7178.8135, 26.032923, 100, 10000, 1633301),
(5302952, 22, 6820.8594, -7177.1274, 26.519983, 100, 0, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1633301;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1633301, 0, 	0, 31, 16333, 5, 0, 0, 0, 0, -12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator (Master) - Terminate Script If Sentinel Infiltrator (16333) Is Not Found in Range'),
(1633301, 1000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator (Master) - EMOTE_ONESHOT_SALUTE (66)'),
(1633301, 1000, 0, 1, 66, 0, 0, 16333, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator - EMOTE_ONESHOT_SALUTE (66)'),
(1633301, 3000, 0, 1, 1, 0, 0, 16333, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator - EMOTE_ONESHOT_TALK (1)'),
(1633301, 5000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator (Master) - EMOTE_ONESHOT_QUESTION (6)'),
(1633301, 7000, 0, 1, 5, 0, 0, 16333, 5, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator - EMOTE_ONESHOT_EXCLAMATION (5) or '),
(1633301, 7000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Infiltrator (Master) - EMOTE_ONESHOT_SALUTE (66)');

-- ================
-- Underlight Mines
-- ================
-- Blackpaw Gnoll 16334
-- https://web.archive.org/web/20080430024556/http://wow.allakhazam.com/db/mob.html?wmob=16334
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16334; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502) AND `entry` = 16334;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16334, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16334, 818, 0.35, 0, 1, 1, 0, 'Tigerseye'),
(16334, 774, 0.12, 0, 1, 1, 0, 'Malachite'),
(16334, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16334, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Blackpaw Scavenger 16335 - Stats/Loot
-- https://web.archive.org/web/20080430024601/http://wow.allakhazam.com/db/mob.html?wmob=16335
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16335; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (414,858,2455,50502) AND `entry` = 16335;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16335, 1210, 0.11, 0, 1, 1, 0, 'Shadowgem'),
(16335, 818, 0.4, 0, 1, 1, 0, 'Tigerseye'),
(16335, 774, 0.12, 0, 1, 1, 0, 'Malachite'),
(16335, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16335, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Blackpaw Shaman 16337 - Stats/Loot
-- https://web.archive.org/web/20080502022952/http://wow.allakhazam.com/db/mob.html?wmob=16337
UPDATE `creature_template` SET `UnitFlags` = 0, `MaxLevel` = 14, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16337; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,50502) AND `entry` = 16337;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16337, 1210, 0.09, 0, 1, 1, 0, 'Shadowgem'),
(16337, 774, 0.12, 0, 1, 1, 0, 'Malachite'),
(16337, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16337, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16337, 50600, 0.75, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(16337, 60002, 9, 0, -60002, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15)'),
(16337, 60111, 2, 0, -60111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)'),
(16337, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)');

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16334,16335,16337));
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16334,16335,16337));
DELETE FROM `creature` WHERE `id` IN (16334,16335,16337);
DELETE FROM `creature` WHERE `guid` BETWEEN 5302954 AND 5303018;
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- working emote, fix id
(5302954, 16335, 530, 7000.56103515625, -6248.927734375, 6.558905601501464843, 2.722713708877563476, 300, 300, 0, 0),
(5302955, 16335, 530, 7028.328125, -6270.31982421875, 8.200091361999511718, 1.972222089767456054, 300, 300, 0, 0),
(5302956, 16335, 530, 7057.92333984375, -6279.16064453125, 13.66651248931884765, 5.044001579284667968, 300, 300, 0, 0),
(5302957, 16335, 530, 7044.5146484375, -6276.11328125, 10.06748485565185546, 1.256637096405029296, 300, 300, 0, 0),
(5302958, 16334, 530, 7009.27978515625, -6283.8681640625, 8.322439193725585937, 3.665191411972045898, 300, 300, 0, 0),
(5302959, 16334, 530, 7079.49267578125, -6263.71826171875, 17.91138458251953125, 0.244346097111701965, 300, 300, 0, 0),
(5302960, 16335, 530, 7074.57177734375, -6215.58837890625, 23.28429222106933593, 2.426007747650146484, 300, 300, 0, 0),
(5302961, 16335, 530, 7095.4765625, -6210.82666015625, 22.44951629638671875, 4.468042850494384765, 300, 300, 0, 0),
(5302962, 16335, 530, 7066.95947265625, -6243.07568359375, 19.81866455078125, 3.944444179534912109, 300, 300, 0, 0),
(5302963, 16334, 530, 7070.99658203125, -6185.95166015625, 20.76849746704101562, 1.2042771577835083, 300, 300, 0, 0),
(5302964, 16335, 530, 7104.9384765625, -6222.45703125, 22.98914718627929687, 3.787364482879638671, 300, 300, 0, 0),
(5302965, 16334, 530, 7130.99462890625, -6215.4609375, 22.48281669616699218, 1.274090290069580078, 300, 300, 0, 0),

(5302966, 0, 530, 7019.18212890625, -6235.48974609375, 4.30447244644165039, 5.16617441177368164, 300, 300, 0, 0), -- 4,7
(5302967, 0, 530, 7022.73876953125, -6241.17626953125, 4.568348407745361328, 2.251474618911743164, 300, 300, 0, 0), -- 4,5,7
(5302968, 0, 530, 6997.2705078125, -6269.63916015625, 7.025445461273193359, 1.762782573699951171, 300, 300, 0, 0), -- 4,5

(5302969, 0, 530, 7152.3837890625, -6238.3056640625, 22.38779640197753906, 0.349065840244293212, 300, 300, 0, 0), -- 5,7
(5302970, 0, 530, 7158.7275390625, -6242.81494140625, 22.05929756164550781, 1.466076612472534179, 300, 300, 0, 0), -- 4,5
(5302971, 0, 530, 7166.11279296875, -6239.56787109375, 21.87233543395996093, 2.600540637969970703, 300, 300, 0, 0), -- 4,5,7

(5302972, 0, 530, 7146.12353515625, -6192.17431640625, 21.70940971374511718, 2.059488534927368164, 300, 300, 0, 0), -- all
(5302973, 0, 530, 7139.37548828125, -6189.8583984375, 21.44756507873535156, 0.436332315206527709, 300, 300, 0, 0), -- 4,7

(5302974, 0, 530, 7211.89501953125, -6245.833984375, 19.45539283752441406, 2.897246599197387695, 300, 300, 0, 0), -- 4,5,7
(5302975, 0, 530, 7208.52490234375, -6239.28564453125, 19.61165618896484375, 4.502949237823486328, 300, 300, 0, 0), -- 4,5,7

(5302976, 0, 530, 7252.46728515625, -6225.43408203125, 21.29739952087402343, 4.206243515014648437, 300, 300, 0, 0), -- 4,7
(5302977, 0, 530, 7245.4296875, -6227.09765625, 21.29429244995117187, 5.637413501739501953, 300, 300, 0, 0), -- 4,5,7

(5302978, 0, 530, 7278.2646484375, -6283.39697265625, 20.8280792236328125, 2.775073528289794921, 300, 300, 0, 0), -- 4,5,7
(5302979, 0, 530, 7273.39892578125, -6275.47998046875, 20.1842193603515625, 4.328416347503662109, 300, 300, 0, 0), -- 4,5,7
(5302980, 0, 530, 7269.66064453125, -6285.244140625, 20.37000083923339843, 1.221730470657348632, 300, 300, 0, 0), -- 4,5,7
(5302981, 0, 530, 7248.40185546875, -6298.4189453125, 20.14741325378417968, 0.820304751396179199, 300, 300, 0, 0), -- 4,7
(5302982, 0, 530, 7255.81201171875, -6296.96484375, 20.10398483276367187, 2.426007747650146484, 300, 300, 0, 0), -- 4,5,7

(5302983, 16337, 530, 6995.99072265625, -6264.93310546875, 6.487468719482421875, 5.06145477294921875, 300, 300, 0, 0),
(5302984, 16337, 530, 7015.5405, -6240.3853, 4.9957542, 0, 300, 300, 0, 4), -- patrol confirmed
(5302985, 16337, 530, 7071.983, -6188.415, 20.749304, 0, 300, 300, 0, 2), -- patrol confirmed
(5302986, 16334, 530, 7153.12, -6217.6, 21.8023, 3.23241, 300, 300, 5, 1),
(5302987, 16337, 530, 7188.8813, -6232.1265, 18.830463, 0, 300, 300, 0, 2), -- patrol
(5302988, 16334, 530, 7175.9, -6275.98, 21.2529, 2.71065, 300, 300, 5, 1),
(5302989, 16334, 530, 7183.86, -6255.8, 20.4616, 4.7162, 300, 300, 5, 1),
(5302990, 16335, 530, 7179.92919921875, -6186.6259765625, 19.72839164733886718, 1.941687583923339843, 300, 300, 3, 1),
(5302991, 16335, 530, 7182.77783203125, -6215.39599609375, 18.4402618408203125, 2.432020902633666992, 300, 300, 8, 1),
(5302992, 16334, 530, 7211.58, -6214.71, 19.9386, 5.58982, 300, 300, 5, 1),
(5302993, 16337, 530, 7246.706, -6241.632, 20.523369, 0, 300, 300, 0, 2), -- patrol
(5302994, 16337, 530, 7229.44775390625, -6203.51025390625, 20.61722946166992187, 3.630284786224365234, 300, 300, 0, 0),
(5302995, 16337, 530, 7228.21, -6209.17, 20.3136, 1.77669, 300, 300, 0, 0), -- patrol (spawn with waittime)
(5302996, 16334, 530, 7214.1923828125, -6185.76025390625, 18.34282684326171875, 4.10601043701171875, 300, 300, 5, 1),
(5302997, 16334, 530, 7182.57, -6147.89, 17.8552, 0.051184, 300, 300, 5, 1),
(5302998, 16335, 530, 7215.62, -6142.75, 14.2215, 1.06344, 300, 300, 3, 1), -- def not at the campfire perm.
(5302999, 16337, 530, 7223.5126953125, -6135.146484375, 16.89697265625, 2.251474618911743164, 300, 300, 0, 0),
(5303000, 16335, 530, 7192.74, -6122.73, 16.2776, 6.21986, 300, 300, 5, 1),
(5303001, 16334, 530, 7250.77880859375, -6249.7587890625, 20.23552703857421875, 5.559301376342773437, 300, 300, 8, 1),
(5303002, 16337, 530, 7285.23, -6252.43, 22.9658, 3.45126, 300, 300, 3, 1),
(5303003, 16337, 530, 7314.42, -6250.48, 21.609, 2.48052, 300, 300, 3, 1),
(5303004, 16337, 530, 7252.37646484375, -6291.01025390625, 20.11279106140136718, 4.834561824798583984, 300, 300, 0, 2),
(5303005, 16334, 530, 7212.47, -6286.72, 21.002, 3.65154, 300, 300, 5, 1),
(5303006, 16337, 530, 7147.7827, -6288.0024, 49.091217, 0, 300, 300, 0, 2), -- patrol spawn
(5303007, 16334, 530, 7152.4, -6289.72, 48.9875, 1.23329, 300, 300, 5, 1),
(5303008, 16335, 530, 7171.59, -6312.76, 40.7508, 4.6166, 300, 300, 8, 1),
(5303009, 16334, 530, 7286.5888671875, -6324.51513671875, 47.8266754150390625, 3.777281522750854492, 300, 300, 5, 1),
(5303010, 16335, 530, 7313.46, -6278.23, 51.3968, 3.10789, 300, 300, 5, 1),
(5303011, 16334, 530, 7315.09, -6248.73, 50.0025, 3.2433, 300, 300, 3, 1),
(5303012, 16334, 530, 7313.79, -6222.86, 41.1625, 4.79747, 300, 300, 5, 1),
(5303013, 16335, 530, 7280.27, -6211.79, 40.9668, 2.40372, 300, 300, 5, 1),
(5303014, 16334, 530, 7255.1640625, -6189.66015625, 33.166748046875, 1.517507910728454589, 300, 300, 5, 1),
(5303015, 16334, 530, 7239.74, -6147.62, 20.303, 6.24536, 300, 300, 5, 1),
(5303016, 16334, 530, 7113.55, -6188.56, 34.9294, 0.550632, 300, 300, 5, 1),
(5303017, 16335, 530, 7100.95, -6210.46, 42.392, 5.79553, 300, 300, 5, 1),
(5303018, 16334, 530, 7114.314453125, -6253.6083984375, 47.81731414794921875, 2.938565254211425781, 300, 300, 5, 1);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16334 FROM `creature` WHERE `guid` BETWEEN 5302966 AND 5302982;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16335 FROM `creature` WHERE `guid` BETWEEN 5302966 AND 5302982;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16337 FROM `creature` WHERE `guid` BETWEEN 5302966 AND 5302982;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5302966 AND 5302892;

REPLACE INTO `creature_addon` (`guid`, `b2_0_sheath`, `emote`)
SELECT `guid`, 1, 233 FROM `creature` WHERE `guid` BETWEEN 5302954 AND 5302965;

-- Pathing for Blackpaw Shaman Entry: 16337 'CMaNGOS FORMAT' 
SET @GUID := 5302993;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7246.706, -6241.632, 20.523369, 100, 0, 0),
(@GUID, 2, 7265.992, -6239.153, 20.692924, 100, 0, 0),
(@GUID, 3, 7270.2773, -6250.8735, 19.707134, 100, 0, 0),
(@GUID, 4, 7249.682, -6278.63, 20.356133, 100, 0, 0),
(@GUID, 5, 7228.124, -6291.2773, 21.632608, 100, 0, 0),
(@GUID, 6, 7199.47, -6295.778, 22.861763, 100, 0, 0),
(@GUID, 7, 7181.401, -6281.5767, 21.252876, 100, 0, 0),
(@GUID, 8, 7174.768, -6253.7837, 20.301943, 100, 0, 0),
(@GUID, 9, 7176.9907, -6222.223, 18.881855, 100, 0, 0),
(@GUID, 10, 7182.5337, -6194.3804, 20.085768, 100, 0, 0); -- probably incomplete
-- 0x2030A442400FF4400075F60000734A64 .go xyz 7246.706 -6241.632 20.523369

-- Pathing for Blackpaw Shaman Entry: 16337 'CMaNGOS FORMAT' 
SET @GUID := 5302987;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7188.8813, -6232.1265, 18.830463, 100, 0, 0),
(@GUID, 2, 7169.0723, -6227.0366, 19.95876, 100, 0, 0),
(@GUID, 3, 7160.52685546875, -6232.83447265625, 22.14530181884765625, 3.739406347274780273, 30000, 0), -- waittime
(@GUID, 4, 7174.0854, -6210.7456, 18.205463, 100, 0, 0),
(@GUID, 5, 7206.3296, -6204.702, 17.68687, 100, 0, 0),
(@GUID, 6, 7210.865, -6180.0864, 17.362307, 100, 0, 0),
(@GUID, 7, 7211.994, -6141.432, 14.527667, 100, 0, 0),
(@GUID, 8, 7219.291, -6135.053, 16.44643, 0.752098, 30000, 0), -- guessed
(@GUID, 9, 7211.994, -6141.432, 14.527667, 100, 0, 0), -- guessed
(@GUID, 10, 7210.865, -6180.0864, 17.362307, 100, 0, 0), -- guessed
(@GUID, 11, 7223.6113, -6231.929, 19.19041, 100, 0, 0),
(@GUID, 12, 7249.716, -6239.4487, 19.9544, 100, 0, 0); -- incomplete
-- 0x2030A442400FF4400075F60000734ABC .go xyz 7188.8813 -6232.1265 18.830463

UPDATE `creature_movement` SET `comment` = 'guessed' WHERE `id` = 5302987 AND `point` BETWEEN 8 AND 10;
UPDATE `creature_movement` SET `comment` = 'incomplete' WHERE `id` = 5302987 AND `point` = 12;

-- Pathing for Blackpaw Shaman Entry: 16337 'CMaNGOS FORMAT' 
SET @GUID := 5303004;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7252.37646484375, -6291.01025390625, 20.11279106140136718, 4.834561824798583984, 30000, 0), -- spawn
(@GUID, 2, 7256.8384, -6281.7227, 19.855644, 100, 0, 0),
(@GUID, 3, 7267.5264, -6279.764, 19.5511, 100, 30000, 0),
(@GUID, 4, 7252.879, -6263.5186, 18.857841, 100, 0, 0),
(@GUID, 5, 7226.827, -6258.0063, 19.138662, 100, 0, 0),
(@GUID, 6, 7247.459, -6234.054, 20.949, 1.05448, 30000, 0), -- guessed
(@GUID, 7, 7244.22, -6239.3447, 21.113823, 100, 0, 0),
(@GUID, 8, 7255.945, -6262.5146, 18.857841, 100, 0, 0),
(@GUID, 9, 7252.325, -6289.195, 19.99871, 100, 0, 0);
-- 0x2030A442400FF4400075F60000734B4F .go xyz 7244.22 -6239.3447 21.113823
UPDATE `creature_movement` SET `comment` = 'incomplete' WHERE `id` = 5303004 AND `point` = 6;

-- Pathing for Blackpaw Shaman Entry: 16337 'CMaNGOS FORMAT' 
SET @GUID := 5302984;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7015.5405, -6240.3853, 4.9957542, 100, 0, 0),
(@GUID, 2, 7006.4263, -6247.241, 6.075028, 100, 0, 0),
(@GUID, 3, 7003.605, -6255.737, 5.631299, 100, 0, 0),
(@GUID, 4, 7000.46, -6265.9766, 6.8268323, 100, 0, 0),
(@GUID, 5, 7008.461, -6272.834, 5.1955156, 100, 0, 0),
(@GUID, 6, 7017.209, -6275.1895, 6.961357, 100, 0, 0),
(@GUID, 7, 7027.53, -6277.966, 8.6078205, 100, 0, 0),
(@GUID, 8, 7040.23, -6279.4634, 9.063009, 100, 0, 0),
(@GUID, 9, 7058.8823, -6274.784, 13.938346, 100, 0, 0),
(@GUID, 10, 7073.38, -6265.707, 16.486864, 100, 0, 0),
(@GUID, 11, 7075.0337, -6255.051, 17.369118, 100, 0, 0),
(@GUID, 12, 7070.5376, -6242.628, 20.197206, 100, 0, 0),
(@GUID, 13, 7065.898, -6230.5483, 22.730558, 100, 0, 0);
-- 0x203CC442400FF440001D5300007401CF .go xyz 7008.461 -6272.834 5.1955156

-- Pathing for Blackpaw Shaman Entry: 16337 'CMaNGOS FORMAT' 
SET @GUID := 5302985;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7071.983, -6188.415, 20.749304, 100, 0, 0),
(@GUID, 2, 7071.6914, -6201.8047, 23.11982, 100, 0, 0),
(@GUID, 3, 7077.0728, -6207.834, 22.160261, 100, 0, 0),
(@GUID, 4, 7093.895, -6205.9854, 21.912146, 100, 0, 0),
(@GUID, 5, 7105.125, -6212.364, 22.043694, 100, 0, 0),
(@GUID, 6, 7111.915, -6228.706, 20.697302, 100, 0, 0),
(@GUID, 7, 7137.2417, -6219.641, 22.991, 100, 0, 0),
(@GUID, 8, 7148.6885, -6215.7144, 22.982988, 100, 0, 0), -- end
(@GUID, 9, 7137.423, -6219.579, 23.085499, 100, 0, 0),
(@GUID, 10, 7111.915, -6228.706, 20.697302, 100, 0, 0),
(@GUID, 11, 7105.1426, -6212.3735, 22.050865, 100, 0, 0),
(@GUID, 12, 7093.895, -6205.9854, 21.912146, 100, 0, 0),
(@GUID, 13, 7081.1694, -6206.3823, 21.908049, 100, 0, 0),
(@GUID, 14, 7071.6235, -6202.0938, 23.143377, 100, 0, 0);
-- 0x203CC442400FF440001D530000741300 .go xyz 7105.1426 -6212.3735 22.05086

-- Pathing for Blackpaw Shaman Entry: 16337 'CMaNGOS FORMAT' 
SET @GUID := 5303006;
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 7147.7827, -6288.0024, 49.091217, 100, 0, 0),
(@GUID, 2, 7166.6685, -6306.105, 43.313866, 100, 0, 0),
(@GUID, 3, 7193.2314, -6316.1934, 34.55825, 100, 0, 0),
(@GUID, 4, 7220.419, -6326.2754, 36.288784, 100, 0, 0),
(@GUID, 5, 7248.52, -6330.97, 41.3593, 100, 0, 0), -- spawn
(@GUID, 6, 7319.57, -6263.23, 50.0265, 100, 0, 0), -- spawn
(@GUID, 7, 7321.02, -6239.17, 47.3743, 100, 0, 0), -- spawn
(@GUID, 8, 7287.097, -6205.182, 38.57908, 100, 0, 0),
(@GUID, 9, 7261.4224, -6182.3, 30.300783, 100, 0, 0),
(@GUID, 10, 7245.549, -6156.0757, 23.289946, 100, 0, 0),
(@GUID, 11, 7185.2773, -6177.0537, 18.387403, 100, 0, 0),
(@GUID, 12, 7154.87, -6176.0073, 20.392511, 100, 0, 0),
(@GUID, 13, 7121.01, -6176.3, 30.1094, 100, 0, 0); -- spawn
UPDATE `creature_movement` SET `comment` = 'spawn' WHERE `id` = 5303006 AND `point` IN (5,6,7,13);
-- 0x2030A442400FF4400075F60000734CFD .go xyz 7166.6685 -6306.105 43.313866

-- ==============
-- Dawnstar Spire
-- ==============
-- Arcane Reaver 16339
-- https://web.archive.org/web/20080421133747/http://wow.allakhazam.com/db/mob.html?wmob=16339
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576, `MechanicImmuneMask` = 8405008 WHERE `entry` = 16339; -- CREATURE_EXTRA_FLAG_DYNGUID / Fear,Bleed,Horror
DELETE FROM `creature_loot_template` WHERE `item` IN (50502,50600) AND `entry` = 16339;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16339, 1210, 0.18, 0, 1, 1, 0, 'Shadowgem'),
(16339, 818, 0.19, 0, 1, 1, 0, 'Tigerseye'),
(16339, 774, 0.11, 0, 1, 1, 0, 'Malachite'),
(16339, 1206, 0.03, 0, 1, 1, 0, 'Moss Agate'),
(16339, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature` WHERE `id` = 16339;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303019, 16339, 530, 7836.87744140625, -7830.78076171875, 170.352783203125, 0.125504761934280395, 300, 300, 8, 1),
(5303020, 16339, 530, 7842.21875, -7876.0615234375, 167.137908935546875, 1.232527494430541992, 300, 300, 0, 0),
(5303021, 16339, 530, 7851.47998046875, -7902.98681640625, 169.3264617919921875, 3.717551231384277343, 300, 300, 0, 0),
(5303022, 16339, 530, 7866.71, -7870.94, 169.488, 1.63918, 300, 300, 0, 2),
(5303023, 16339, 530, 7830.7587890625, -7930.8505859375, 169.3264007568359375, 1.570796370506286621, 300, 300, 0, 0),
(5303024, 16339, 530, 7806.52197265625, -7911.296875, 169.32647705078125, 6.2657318115234375, 300, 300, 0, 0),
(5303025, 16339, 530, 7829.58, -7911.2, 169.326, 5.06238, 300, 300, 8, 1),
(5303026, 16339, 530, 7866.26, -7911.63, 180.515, 3.12597, 300, 300, 0, 2),
(5303027, 16339, 530, 7797.85, -7828.4, 170.186, 3.7655, 300, 300, 0, 2),
(5303028, 16339, 530, 7788.1, -7865.09, 167.556, 3.60884, 300, 300, 0, 2),
(5303029, 16339, 530, 7806.66455078125, -7827.712890625, 170.3248443603515625, 3.693150043487548828, 300, 300, 8, 1),
(5303030, 16339, 530, 7817.93310546875, -7875.994140625, 167.2403106689453125, 1.919862151145935058, 300, 300, 0, 0);

UPDATE `creature_movement` SET `Id` = 5303022 WHERE `Id` = 81860; -- 6
UPDATE `creature_movement` SET `Id` = 5303026 WHERE `Id` = 81865; -- 24
UPDATE `creature_movement` SET `Id` = 5303027 WHERE `Id` = 81868; -- 22
UPDATE `creature_movement` SET `Id` = 5303028 WHERE `Id` = 81869; -- 8

-- ========
-- Zeb'Sora
-- ========
-- Shadowpine Ripper 16340
-- https://web.archive.org/web/20080422104241/http://wow.allakhazam.com/db/mob.html?wmob=16340
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16340; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4346,50502) AND `entry` = 16340;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16340, 1210, 0.05, 0, 1, 1, 0, 'Shadowgem'),
(16340, 774, 0.33, 0, 1, 1, 0, 'Malachite'),
(16340, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16340, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Shadowpine Witch 16341
-- https://web.archive.org/web/20080422030006/http://wow.allakhazam.com/db/mob.html?wmob=16341
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16341; -- CREATURE_EXTRA_FLAG_DYNGUID
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,2409,4345,6344,6348,6716,50502) AND `entry` = 16341;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16341, 1210, 0.11, 0, 1, 1, 0, 'Shadowgem'),
(16341, 774, 0.16, 0, 1, 1, 0, 'Malachite'),
(16341, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16341, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16341); -- delete unneeded auras
DELETE FROM `creature` WHERE `id` IN (16340,16341);
DELETE FROM `creature` WHERE `guid` BETWEEN 5303031 AND 5303056;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303031, 16341, 530, 8043.96337890625, -7785.67529296875, 167.812408447265625, 3.857177734375, 300, 300, 0, 0), -- 0,1
(5303032, 16341, 530, 8080.54541015625, -7784.1337890625, 164.817901611328125, 5.873990058898925781, 300, 300, 5, 1), -- 0,1
(5303033, 16341, 530, 8009.6694, -7833.4688, 175.17601, 0, 300, 300, 0, 4), -- patrol 0,1
(5303034, 16340, 530, 8051.32, -7825.21, 170.586, 3.84641, 300, 300, 5, 1), -- 0,1
(5303035, 16341, 530, 8036.8193359375, -7853.5625, 180.8086395263671875, 6.2657318115234375, 300, 300, 0, 0), -- 0,1
(5303036, 16340, 530, 8054.83056640625, -7865.0712890625, 180.5230865478515625, 2.059488534927368164, 300, 300, 0, 0), -- 0,1
(5303037, 16341, 530, 7988.1162109375, -7849.29248046875, 177.581756591796875, 1.064650893211364746, 300, 300, 0, 0), -- 0,1
(5303038, 16340, 530, 7998.87744140625, -7839.70556640625, 177.41937255859375, 4.694935798645019531, 300, 300, 0, 0), -- 0,1
(5303039, 16340, 530, 8014.11, -7711.65, 148.443, 1.7564, 300, 300, 8, 1), -- 0,1
(5303040, 16340, 530, 7983.65, -7717.06, 146.681, 6.19592, 300, 300, 5, 1), -- 0,1
(5303041, 16341, 530, 7999.93, -7727.41, 151.524, 4.90438, 300, 300, 5, 1), -- 0,1
(5303042, 16341, 530, 7999.6015625, -7738.16064453125, 150.7118682861328125, 4.555309295654296875, 300, 300, 0, 0), -- 0,1
(5303043, 16340, 530, 8045.03369140625, -7846.79248046875, 179.5254669189453125, 2.560970306396484375, 300, 300, 0, 2), -- 0,1 ???
(5303044, 16340, 530, 7975.71, -7729.04, 147.057, 3.33631, 300, 300, 0, 0), -- 0,1 patrol around the town (no data)
(5303045, 16340, 530, 8048.07, -7749.25, 155.691, 0.86111, 300, 300, 5, 1),
(5303046, 16340, 530, 8033.6630859375, -7806.44091796875, 168.0534210205078125, 4.415682792663574218, 300, 300, 0, 0),
(5303047, 16340, 530, 8010.408203125, -7787.5302734375, 166.4400634765625, 5.901092052459716796, 300, 300, 5, 1),
(5303048, 16340, 530, 8079.41, -7819.85, 170.927, 3.24401, 300, 300, 8, 1),
(5303049, 16341, 530, 8015.99658203125, -7846.478515625, 180.51055908203125, 2.951139688491821289, 300, 300, 5, 1),
(5303050, 16341, 530, 7950.18, -7716.03, 147.709, 4.27606, 300, 300, 5, 1),
(5303051, 16340, 530, 8010.96435546875, -7758.85791015625, 152.257080078125, 5.637413501739501953, 300, 300, 0, 0),
(5303052, 16340, 530, 8026.0478515625, -7757.15087890625, 151.9837493896484375, 2.600540637969970703, 300, 300, 0, 0),
(5303053, 16341, 530, 7977.1875, -7755.3515625, 151.7387542724609375, 0.471238881349563598, 300, 300, 0, 0),
(5303054, 16341, 530, 7984.85, -7785.59, 159.486, 5.34071, 300, 300, 8, 1),
(5303055, 16341, 530, 7951.32, -7752.68, 153.93, 4.7603, 300, 300, 5, 1),
(5303056, 16340, 530, 7981.7744140625, -7818.140625, 170.6991729736328125, 5.546158790588378906, 300, 300, 5, 1); -- d.81851

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16340 FROM `creature` WHERE `guid` BETWEEN 5303031 AND 5303044;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16341 FROM `creature` WHERE `guid` BETWEEN 5303031 AND 5303044;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303031 AND 5303044;

-- Pathing for Shadowpine Witch Entry: 16341 'CMaNGOS FORMAT' 
SET @GUID := 5303033; -- 0,1
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 8009.6694, -7833.4688, 175.17601, 100, 0, 0),
(@GUID, 2, 8018.837, -7825.397, 172.67534, 100, 0, 0),
(@GUID, 3, 8023.389, -7808.493, 168.68266, 100, 0, 0),
(@GUID, 4, 8033.8115, -7799.6235, 167.82736, 100, 0, 0),
(@GUID, 5, 8013.4106, -7797.3896, 166.5028, 100, 0, 0),
(@GUID, 6, 7988.7153, -7791.19, 160.87088, 100, 0, 0),
(@GUID, 7, 7987.1895, -7769.5503, 153.56888, 100, 0, 0); -- incomplete
-- 0x203CC442400FF54000001F00004D7364 .go xyz 8009.6694 -7833.4688 175.17601

-- Pathing for Shadowpine Witch Entry: 16341 'CMaNGOS FORMAT' 
SET @GUID := 5303043; -- 0,1
DELETE FROM `creature_movement` WHERE `Id` = @GUID;
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@GUID, 1, 8029.627, -7832.954, 174.46281, 100, 0, 0),
(@GUID, 2, 8020.1196, -7826.1553, 172.82353, 100, 0, 0),
(@GUID, 3, 8005.4463, -7833.5337, 175.81493, 100, 0, 0), -- incomplete
(@GUID, 4, 7990.7524, -7833.9497, 176.87799, 100, 0, 0),
(@GUID, 5, 8005.4463, -7833.5337, 175.81493, 100, 0, 0),
(@GUID, 6, 8020.1196, -7826.1553, 172.82353, 100, 0, 0),
(@GUID, 7, 8029.627, -7832.954, 174.46281, 100, 0, 0),
(@GUID, 8, 8048.27, -7853.06, 180.018, 100, 0, 0), -- guessed via spawn
(@GUID, 9, 8045.03369140625, -7846.79248046875, 179.5254669189453125, 2.560970306396484375, 35000, 0); -- guessed via spawn used by alot of npcs
-- 0x20307C42400FF54000006A00008B1966 .go xyz 8029.627 -7832.954 174.46281

-- ===============
-- Amani Catacombs
-- ===============
-- Mummified Headhunter 16342 - spawns are good as is (SG rework)
-- https://web.archive.org/web/20080421212131/http://wow.allakhazam.com/db/mob.html?wmob=16342
UPDATE `creature_template` SET `CallForHelp` = 5, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16342;
DELETE FROM `creature_loot_template` WHERE `item` IN (414,858,2455,2287,4606,5498,29573,29574,29577,2409,2881,4345,4346,4409,5972,6348,6716,50502) AND `entry` = 16342;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16342, 1210, 0.25, 0, 1, 1, 0, 'Shadowgem'),
(16342, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16342, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Shadowpine Oracle 16343 - spawns are good as is (SG rework)
-- https://web.archive.org/web/20080423012445/http://wow.allakhazam.com/db/mob.html?wmob=16343
UPDATE `creature_template` SET `CallForHelp` = 5, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16343;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4605,4606,29574,29577,2409,2883,4346,6344,6716,50502) AND `entry` = 16343;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16343, 1210, 0.18, 0, 1, 1, 0, 'Shadowgem'),
(16343, 774, 0.07, 0, 1, 1, 0, 'Malachite'),
(16343, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16343, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Ranger Lilatha 16295 - https://github.com/cmangos/issues/issues/2133
UPDATE `creature_template` SET `CreatureTypeFlags` = `CreatureTypeFlags`|4096, `UnitFlags` = 768, `SpeedWalk` = (2.5 / 2.5), `Detection` = 10 WHERE `entry` = 16295;
UPDATE `creature_template_addon` SET `bytes1` = 0 WHERE `entry` = 16295; -- 8 - not restored during escort (evade) needs to be done in SD2 (open pr)
UPDATE `creature` SET `guid` = 161507 WHERE `guid` = 82071; -- .go c id 16295, same in wotlkmangos

-- ========
-- Zeb'Tela / Zeb'Nowa
-- ========
-- Shadowpine Headhunter 16344 - Stats/Loot
-- https://web.archive.org/web/20080430024605/http://wow.allakhazam.com/db/mob.html?wmob=16344
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16344;
DELETE FROM `creature_loot_template` WHERE `item` IN (818,858,2455,4606,2409,2881,4293,6391,11038,50502) AND `entry` = 16344;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16344, 1210, 0.25, 0, 1, 1, 0, 'Shadowgem'),
(16344, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16344, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Shadowpine Catlord 16345 - Stats/Loot
-- https://web.archive.org/web/20080502022958/http://wow.allakhazam.com/db/mob.html?wmob=16345
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16345;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4606,6347,50502) AND `entry` = 16345;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16345, 1210, 0.27, 0, 1, 1, 0, 'Shadowgem'),
(16345, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16345, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Shadowpine Hexxer 16346 - Stats/Loot
-- https://web.archive.org/web/20080502023003/http://wow.allakhazam.com/db/mob.html?wmob=16346
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16346;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4606,2409,2881,4292,4293,4294,4346,4409,6344,6347,6348,6375,50502) AND `entry` = 16346;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16346, 1210, 0.24, 0, 1, 1, 0, 'Shadowgem'),
(16346, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16346, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16346, 50600, 0.75, 0, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(16346, 60003, 9, 0, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)'),
(16346, 60121, 2, 0, -60121, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 17-22) - (NPC Levels: 18-19)'),
(16346, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)');

-- Kel\'gash the Wicked 16358
-- https://web.archive.org/web/20080430024616/http://wow.allakhazam.com/db/mob.html?wmob=16358
UPDATE `creature_template` SET `UnitFlags` = 32832, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16358;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,6347,50502) AND `entry` = 16358;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16358, 1210, 0.25, 0, 1, 1, 0, 'Shadowgem'),
(16358, 1206, 0.05, 0, 1, 1, 0, 'Moss Agate'),
(16358, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16358, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- Shadowpine Shadowcaster 16469
-- https://web.archive.org/web/20080430024707/http://wow.allakhazam.com/db/mob.html?wmob=16469
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16469;
DELETE FROM `creature_loot_template` WHERE `item` IN (858,2455,4605,4606,30508,2409,2881,2883,4292,4293,4345,4347,4409,6344,6347,6348,6391,6716,10316,50502) AND `entry` = 16469;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16469, 1210, 0.22, 0, 1, 1, 0, 'Shadowgem'),
(16469, 50610, 3, 0, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(16469, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)');

-- occupying pools can be different in wotlkmangos
DELETE FROM pool_creature WHERE `pool_entry` IN (298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452);
DELETE FROM pool_template WHERE `entry` IN (298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452);

DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16344,16345,16346,16358,16469));
DELETE FROM `creature` WHERE `id` IN (16344,16345,16346,16358,16469);
DELETE FROM `creature` WHERE `guid` BETWEEN 5303057 AND 5303151;
DELETE FROM `creature_movement` WHERE `id` BETWEEN 5303057 AND 5303151;
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303057, 16344, 530, 7415.77, -7815.71, 145.061, 2.25219, 300, 300, 5, 1), -- 16469
(5303058, 16344, 530, 7422.85, -7923.25, 157.144, 2.49582, 300, 300, 0, 0), -- 16469
(5303059, 16344, 530, 7392.21, -7930.51, 158.8, 0.785398, 300, 300, 0, 0), -- 16469
(5303060, 16344, 530, 7451.21, -7978.11, 159.021, 5.71861, 300, 300, 5, 1), -- 16469
(5303061, 16344, 530, 7447.43, -7848.06, 154.175, 0.301576, 300, 300, 5, 1), -- 16469
(5303062, 16344, 530, 7485.4, -7848.96, 153.596, 1.25664, 300, 300, 5, 1), -- 16469
(5303063, 16344, 530, 7351.32, -7820.85, 148.058, 1.48353, 300, 300, 0, 0), -- 16469
(5303064, 16344, 530, 7419.24, -7783.99, 139.396, 4.98013, 300, 300, 5, 1), -- 16469
(5303065, 16344, 530, 7243.54, -7799.12, 148.667, 3.76476, 300, 300, 5, 1), -- 16469
(5303066, 16344, 530, 7280.24, -7721.44, 149.28, 3.38642, 300, 300, 5, 1), -- 16469
(5303067, 16344, 530, 7283.75, -7825.28, 151.497, 1.0821, 300, 300, 0, 0), -- 16469
(5303068, 16344, 530, 7299.02, -7818.04, 151.608, 2.07694, 300, 300, 0, 0), -- 16469
(5303069, 16344, 530, 7257.98, -7751, 150.051, 0.743456, 300, 300, 0, 2), -- 16469
(5303070, 16344, 530, 7316.43, -7749.91, 150.193, 2.65538, 300, 300, 5, 1), -- 16469
(5303071, 16344, 530, 7284.98, -7762.82, 163.02, 0.628318, 300, 300, 0, 0), -- 16469
(5303072, 16344, 530, 7240.63, -7761.36, 147.999, 4.85815, 300, 300, 0, 2), -- 16469
(5303073, 16344, 530, 7303.02, -7781.8, 147.999, 1.0472, 300, 300, 0, 0), -- 16469
(5303074, 16344, 530, 7514.47, -7951.56, 186.063, 3.08868, 300, 300, 5, 1), -- 16469
(5303075, 16344, 530, 7384.82, -7789.48, 148.006, 5.93672, 300, 300, 5, 1), -- 16469
(5303076, 16344, 530, 7512.64, -7820.24, 147.926, 4.31028, 300, 300, 5, 1), -- 16469
(5303077, 16344, 530, 7379.52, -7888.1, 155.485, 3.24631, 300, 300, 0, 0), -- 16469
(5303078, 16344, 530, 7405.5, -7989.74, 161.289, 2.8091, 300, 300, 0, 2), -- 16469
(5303079, 16344, 530, 7452.45, -7888.83, 158.664, 5.81195, 300, 300, 0, 0), -- 16469
(5303080, 16344, 530, 7411.85, -7846.06, 151.338, 1.87053, 300, 300, 5, 1), -- 16469
(5303081, 16344, 530, 7425.34, -7965.4, 174.347, 0.785398, 300, 300, 0, 0), -- 16469
(5303082, 16344, 530, 7277.89, -7781.6, 163.129, 5.91667, 300, 300, 0, 0),
(5303083, 16344, 530, 7267.65, -7765.63, 150.102, 0.767945, 300, 300, 0, 0),
(5303084, 16344, 530, 7360.37, -7832.71, 148.134, 1.32645, 300, 300, 0, 0),
(5303085, 16344, 530, 7401.94, -7975.17, 161.333, 0.802851, 300, 300, 0, 0),
(5303086, 16344, 530, 7486.74, -7889.98, 159.137, 3.10669, 300, 300, 0, 0),
(5303087, 16344, 530, 7466.09, -7933.68, 160.1, 0.0174533, 300, 300, 0, 0),
(5303088, 16469, 530, 7275.17, -7759.25, 150.102, 3.78736, 300, 300, 0, 0),
(5303089, 16469, 530, 7264.24, -7759.49, 163.223, 1.79769, 300, 300, 0, 0),
(5303090, 16469, 530, 7334.45, -7823.75, 147.357, 0.663225, 300, 300, 0, 0),
(5303091, 16469, 530, 7385.24, -7837.18, 147.753, 3.76991, 300, 300, 0, 0),
(5303092, 16469, 530, 7474.08, -7908.47, 159.393, 2.26893, 300, 300, 0, 0),
(5303093, 16469, 530, 7407.71, -7953.32, 174.374, 1.58825, 300, 300, 0, 0),

(5303094, 16346, 530, 6500.58, -7455.83, 86.2448, 2.23402, 300, 300, 0, 0), -- 16345
(5303095, 16346, 530, 6539.51, -7416.45, 67.6969, 0.801134, 300, 300, 0, 2), -- 16345
(5303096, 16346, 530, 6550.97, -7413.13, 65.638, 0.377993, 300, 300, 7, 1), -- 16345
(5303097, 16346, 530, 6616.82, -7316.6, 52.231, 2.50463, 300, 300, 7, 1), -- 16345
(5303098, 16346, 530, 6716.53, -7316.28, 52.762, 2.36951, 300, 300, 7, 1), -- 16345
(5303099, 16346, 530, 6796.17, -7337.43, 49.8916, 3.71755, 300, 300, 0, 0), -- 16345
(5303100, 16346, 530, 6950.91, -7479.96, 47.8349, 2.60054, 300, 300, 7, 1), -- 16345
(5303101, 16346, 530, 6985.87, -7539.85, 61.8454, 4.23501, 300, 300, 0, 2), -- 16345
(5303102, 16346, 530, 7064.54, -7539.9, 45.8901, 2.05949, 300, 300, 0, 0), -- 16345
(5303103, 16346, 530, 7052.57, -7520.29, 46.2507, 1.35617, 300, 300, 0, 2), -- 16345
(5303104, 16346, 530, 7117.03, -7481.02, 47.7817, 0.58737, 300, 300, 7, 1), -- 16345
(5303105, 16346, 530, 7008.82, -7528.72, 61.8603, 6.26573, 300, 300, 0, 0), -- 16345
(5303106, 16346, 530, 7048.89, -7484.41, 46.5757, 2.84459, 300, 300, 7, 1), -- 16345
(5303107, 16346, 530, 6813.1, -7437.24, 47.7421, 1.44862, 300, 300, 0, 0), -- 16345
(5303108, 16346, 530, 6843.57, -7409.95, 46.4381, 3.04766, 300, 300, 0, 2), -- 16345
(5303109, 16346, 530, 6817.99, -7348.17, 48.2163, 0.420232, 300, 300, 7, 1), -- 16345
(5303110, 16346, 530, 6814.85, -7315.85, 46.9566, 2.47305, 300, 300, 7, 1), -- 16345
(5303111, 16346, 530, 6749.98, -7384.85, 51.1738, 3.32903, 300, 300, 7, 1), -- 16345
(5303112, 16346, 530, 6660.45, -7390.41, 57.6384, 4.95674, 300, 300, 0, 0), -- 16345
(5303113, 16346, 530, 6653.56, -7406.25, 70.741, 1.66448, 300, 300, 0, 2), -- 16345
(5303114, 16346, 530, 6610.52, -7349.64, 54.0591, 4.46804, 300, 300, 0, 0), -- 16345
(5303115, 16346, 530, 6634.08, -7363.21, 54.5565, 2.75762, 300, 300, 0, 0), -- 16345
(5303116, 16346, 530, 6506.88, -7452.85, 73.14, 5.11381, 300, 300, 0, 0), -- 16345
(5303117, 16346, 530, 7163.5, -7580.25, 48.8425, 2.04204, 300, 300, 0, 0),
(5303118, 16346, 530, 7184.88, -7546.47, 49.1561, 3.24549, 300, 300, 7, 1),
(5303119, 16346, 530, 7150.12, -7556.66, 48.0593, 4.62512, 300, 300, 0, 0),
(5303120, 16346, 530, 7083.45, -7450.58, 47.6918, 4.04192, 300, 300, 7, 1),
(5303121, 16346, 530, 7017.94, -7450.17, 46.54, 5.68634, 300, 300, 7, 1),
(5303122, 16346, 530, 6985.83, -7519.01, 61.9886, 1.67552, 300, 300, 0, 0),
(5303123, 16346, 530, 7034.18, -7541.15, 45.8612, 1.09956, 300, 300, 0, 0),
(5303124, 16346, 530, 6787.35, -7416.75, 47.5715, 0.314159, 300, 300, 0, 0),
(5303125, 16346, 530, 6807.39, -7385.57, 47.4029, 5.44543, 300, 300, 0, 0),
(5303126, 16346, 530, 6848.55, -7385.62, 46.4157, 3.51467, 300, 300, 7, 1),
(5303127, 16346, 530, 6722.1, -7430.5, 51.2673, 1.46608, 300, 300, 0, 0),
(5303128, 16346, 530, 6677.82, -7401.4, 70.5784, 6.24828, 300, 300, 0, 0),
(5303129, 16346, 530, 6716.41, -7384.34, 52.1568, 1.42658, 300, 300, 7, 1),
(5303130, 16346, 530, 6650.97, -7319.24, 52.231, 0.674381, 300, 300, 7, 1),
(5303131, 16346, 530, 6586.11, -7283.46, 52.4044, 5.62297, 300, 300, 7, 1),
(5303132, 16346, 530, 6611.23, -7375.11, 54.8431, 1.50098, 300, 300, 0, 0),
(5303133, 16346, 530, 6579.08, -7380.64, 58.4905, 0.805971, 300, 300, 7, 1),
(5303134, 16346, 530, 6501.68, -7445.17, 73.14, 4.27606, 300, 300, 0, 0),
(5303135, 16345, 530, 7135.54, -7580.94, 48.8834, 1.18682, 300, 300, 0, 0),
(5303136, 16345, 530, 7116.6, -7548.76, 47.7817, 2.4794, 300, 300, 7, 1),
(5303137, 16345, 530, 7096.57, -7528.34, 48.4963, 4.55531, 300, 300, 0, 0),
(5303138, 16345, 530, 7149.04, -7514.32, 47.7817, 5.29911, 300, 300, 7, 1),
(5303139, 16345, 530, 6997.33, -7459.84, 47.3789, 3.75246, 300, 300, 0, 0),
(5303140, 16345, 530, 6990.91, -7536.77, 48.9269, 1.74533, 300, 300, 0, 0),
(5303141, 16345, 530, 6948.32, -7447.86, 47.5863, 2.3955, 300, 300, 7, 1),
(5303142, 16345, 530, 6772.32, -7322.28, 49.8916, 4.10152, 300, 300, 0, 0),
(5303143, 16345, 530, 6783.99, -7385.6, 49.4426, 4.67817, 300, 300, 7, 1),
(5303144, 16345, 530, 6830.69, -7436.72, 46.8494, 1.90241, 300, 300, 0, 0),
(5303145, 16345, 530, 6662.5, -7385.84, 70.557, 1.55334, 300, 300, 0, 0),
(5303146, 16345, 530, 6716.23, -7351.89, 53.5533, 2.49208, 300, 300, 7, 1),
(5303147, 16345, 530, 6743.17, -7430.3, 50.4181, 4.93928, 300, 300, 0, 0),
(5303148, 16345, 530, 6649.23, -7286.75, 52.231, 1.76257, 300, 300, 7, 1),
(5303149, 16345, 530, 6681.73, -7318.63, 52.231, 0.781856, 300, 300, 7, 1),
(5303150, 16345, 530, 6592.69, -7331.27, 55.1147, 1.91986, 300, 300, 0, 0),
(5303151, 16358, 530, 6518.6, -7437.8, 86.2023, 0.837758, 120, 120, 0, 0);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16344 FROM `creature` WHERE `guid` BETWEEN 5303057 AND 5303081;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16469 FROM `creature` WHERE `guid` BETWEEN 5303057 AND 5303081;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303057 AND 5303081;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16345 FROM `creature` WHERE `guid` BETWEEN 5303094 AND 5303116;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16346 FROM `creature` WHERE `guid` BETWEEN 5303094 AND 5303116;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303094 AND 5303116;

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(5303095, 1, 6558.99, -7396.35, 61.793, 100, 0, 0),
(5303095, 2, 6584.46, -7368.21, 56.6458, 100, 0, 0),
(5303095, 3, 6598.53, -7348.97, 54.2868, 100, 0, 0),
(5303095, 4, 6615.36, -7339.76, 53.5625, 100, 0, 0),
(5303095, 5, 6647.19, -7348.87, 53.1827, 100, 0, 0),
(5303095, 6, 6682.19, -7368.34, 54.0891, 100, 0, 0),
(5303095, 7, 6703.27, -7370.28, 53.0481, 100, 0, 0),
(5303095, 8, 6728.65, -7395.89, 51.5481, 100, 0, 0),
(5303095, 9, 6753.04, -7417.47, 51.4471, 100, 0, 0),
(5303095, 10, 6728.65, -7395.89, 51.5481, 100, 0, 0),
(5303095, 11, 6703.27, -7370.28, 53.0481, 100, 0, 0),
(5303095, 12, 6682.19, -7368.34, 54.0891, 100, 0, 0),
(5303095, 13, 6647.19, -7348.87, 53.1827, 100, 0, 0),
(5303095, 14, 6615.36, -7339.76, 53.5625, 100, 0, 0),
(5303095, 15, 6598.53, -7348.97, 54.2868, 100, 0, 0),
(5303095, 16, 6584.46, -7368.21, 56.6458, 100, 0, 0),
(5303095, 17, 6558.99, -7396.35, 61.793, 100, 0, 0),
(5303095, 18, 6542.07, -7417.91, 67.301, 100, 0, 0),
(5303101, 1, 6981.9, -7547.54, 61.8286, 100, 0, 0),
(5303101, 2, 6989.54, -7552.49, 59.4155, 100, 0, 0),
(5303101, 3, 6999.9, -7552.05, 56.2894, 100, 0, 0),
(5303101, 4, 6996.5, -7538.88, 56.288, 100, 0, 0),
(5303101, 5, 7002.26, -7533.87, 53.5002, 100, 0, 0),
(5303101, 6, 7002.21, -7528.1, 49.7452, 100, 0, 0),
(5303101, 7, 6992.99, -7522.23, 48.8435, 100, 0, 0),
(5303101, 8, 6987.1, -7510.24, 48.8364, 100, 0, 0),
(5303101, 9, 6984.38, -7495.83, 45.799, 100, 0, 0),
(5303101, 10, 6972.15, -7467.01, 47.049, 100, 0, 0),
(5303101, 11, 6981.92, -7440.97, 47.3086, 100, 0, 0),
(5303101, 12, 6972.12, -7466.88, 47.049, 100, 0, 0),
(5303101, 13, 6986.21, -7490.85, 46.0844, 100, 0, 0),
(5303101, 14, 7021.83, -7503.57, 45.8993, 100, 0, 0),
(5303101, 15, 7049.29, -7519.16, 45.855, 100, 0, 0),
(5303101, 16, 7021.83, -7503.57, 45.8993, 100, 0, 0),
(5303101, 17, 6986.21, -7490.85, 46.0844, 100, 0, 0),
(5303101, 18, 6972.12, -7466.88, 47.049, 100, 0, 0),
(5303101, 19, 6981.92, -7440.97, 47.3086, 100, 0, 0),
(5303101, 20, 6972.15, -7467.01, 47.049, 100, 0, 0),
(5303101, 21, 6983.8, -7495.74, 45.7478, 100, 0, 0),
(5303101, 22, 6987.1, -7510.24, 48.8364, 100, 0, 0),
(5303101, 23, 6992.99, -7522.23, 48.8435, 100, 0, 0),
(5303101, 24, 7002.21, -7528.1, 49.7452, 100, 0, 0),
(5303101, 25, 7002.26, -7533.87, 53.5002, 100, 0, 0),
(5303101, 26, 6996.5, -7538.88, 56.288, 100, 0, 0),
(5303101, 27, 6999.84, -7551.85, 56.2821, 100, 0, 0),
(5303101, 28, 6989.54, -7552.49, 59.4155, 100, 0, 0),
(5303101, 29, 6981.9, -7547.54, 61.8286, 100, 0, 0),
(5303101, 30, 6986.94, -7539.8, 61.7621, 100, 0, 0),
(5303103, 1, 7061.14, -7480.87, 47.7646, 100, 0, 0),
(5303103, 2, 7086.89, -7469.2, 47.8795, 100, 0, 0),
(5303103, 3, 7120.25, -7478.43, 47.9573, 100, 0, 0),
(5303103, 4, 7158.03, -7495.03, 48.4225, 100, 0, 0),
(5303103, 5, 7183.48, -7508.46, 50.499, 100, 0, 0),
(5303103, 6, 7193.09, -7526.86, 48.4589, 100, 0, 0),
(5303103, 7, 7182.28, -7550.29, 49.4183, 100, 0, 0),
(5303103, 8, 7149.92, -7553.13, 48.0622, 100, 0, 0),
(5303103, 9, 7123.23, -7541.27, 47.775, 100, 0, 0),
(5303103, 10, 7107.78, -7519.83, 48.0685, 100, 0, 0),
(5303103, 11, 7078.57, -7522.57, 47.6736, 100, 0, 0),
(5303103, 12, 7054.72, -7515.06, 45.8253, 100, 0, 0),
(5303108, 1, 6816.64, -7407.4, 48.2194, 100, 0, 0),
(5303108, 2, 6790.03, -7391.28, 47.9546, 100, 0, 0),
(5303108, 3, 6775.29, -7359.67, 49.2705, 100, 0, 0),
(5303108, 4, 6760.45, -7356.15, 48.8437, 100, 0, 0),
(5303108, 5, 6736.91, -7385.61, 51.5358, 100, 0, 0),
(5303108, 6, 6706.39, -7408.47, 51.1987, 100, 0, 0),
(5303108, 7, 6736.91, -7385.61, 51.5358, 100, 0, 0),
(5303108, 8, 6760.45, -7356.15, 48.8437, 100, 0, 0),
(5303108, 9, 6775.29, -7359.67, 49.2705, 100, 0, 0),
(5303108, 10, 6790.03, -7391.28, 47.9546, 100, 0, 0),
(5303108, 11, 6816.64, -7407.4, 48.2194, 100, 0, 0),
(5303108, 12, 6843.5, -7409.59, 46.4158, 100, 0, 0),
(5303113, 1, 6652.23, -7392.04, 70.4737, 100, 0, 0),
(5303113, 2, 6645.21, -7388.86, 70.5385, 100, 0, 0),
(5303113, 3, 6641.34, -7398.83, 67.981, 100, 0, 0),
(5303113, 4, 6643.85, -7409.51, 64.9955, 100, 0, 0),
(5303113, 5, 6656.48, -7402.09, 64.9921, 100, 0, 0),
(5303113, 6, 6660.88, -7406.82, 62.7485, 100, 0, 0),
(5303113, 7, 6667.7, -7405.81, 58.3944, 100, 0, 0),
(5303113, 8, 6674.52, -7392.12, 57.5551, 100, 0, 0),
(5303113, 9, 6686.5, -7386.05, 57.5435, 100, 0, 0),
(5303113, 10, 6701.1, -7375.45, 52.9875, 100, 0, 0),
(5303113, 11, 6713.96, -7335.45, 52.8344, 100, 0, 0),
(5303113, 12, 6705.37, -7304.64, 51.3505, 100, 0, 0),
(5303113, 13, 6667.7, -7315.06, 52.2435, 100, 0, 0),
(5303113, 14, 6656.72, -7350.43, 53.8643, 100, 0, 0),
(5303113, 15, 6671.56, -7365.55, 55.2192, 100, 0, 0),
(5303113, 16, 6700.93, -7375.48, 52.7981, 100, 0, 0),
(5303113, 17, 6687.01, -7386.02, 57.5435, 100, 0, 0),
(5303113, 18, 6674.51, -7391.93, 57.5551, 100, 0, 0),
(5303113, 19, 6667.74, -7405.69, 58.3077, 100, 0, 0),
(5303113, 20, 6661.01, -7406.89, 62.6823, 100, 0, 0),
(5303113, 21, 6656.47, -7402.08, 64.9928, 100, 0, 0),
(5303113, 22, 6643.86, -7409.59, 64.9951, 100, 0, 0),
(5303113, 23, 6641.33, -7398.94, 67.9354, 100, 0, 0),
(5303113, 24, 6645.21, -7388.88, 70.5383, 100, 0, 0),
(5303113, 25, 6652.31, -7391.98, 70.4737, 100, 0, 0),
(5303113, 26, 6662.75, -7386.94, 70.4737, 100, 0, 0),
(5303113, 27, 6672.84, -7390.35, 70.5959, 100, 0, 0),
(5303113, 28, 6674.76, -7402.3, 70.487, 100, 0, 0),
(5303113, 29, 6665.35, -7409.67, 70.4212, 100, 0, 0),
(5303113, 30, 6653.06, -7404.97, 70.6519, 100, 0, 0),
(5303069, 1, 7263.64, -7745.8, 150.029, 100, 0, 0),
(5303069, 2, 7274.56, -7743.9, 150.075, 100, 0, 0),
(5303069, 3, 7286.54, -7746.86, 149.87, 100, 0, 0),
(5303069, 4, 7295.23, -7756.68, 150.007, 100, 0, 0),
(5303069, 5, 7297.97, -7767.88, 150.081, 100, 0, 0),
(5303069, 6, 7293.82, -7781.94, 150.043, 100, 0, 0),
(5303069, 7, 7289.06, -7785.7, 150.007, 100, 0, 0),
(5303069, 8, 7281.84, -7777.58, 150.018, 100, 0, 0),
(5303069, 9, 7268.98, -7774.61, 150.018, 100, 0, 0),
(5303069, 10, 7265.92, -7769.98, 154.04, 100, 0, 0),
(5303069, 11, 7265.45, -7763.79, 157.171, 100, 0, 0),
(5303069, 12, 7267.78, -7761.61, 157.475, 100, 0, 0),
(5303069, 13, 7259.44, -7751.21, 157.471, 100, 0, 0),
(5303069, 14, 7268.29, -7746.61, 160.318, 100, 0, 0),
(5303069, 15, 7278.93, -7748.22, 163.003, 100, 0, 0),
(5303069, 16, 7277.52, -7757.76, 162.937, 100, 0, 0),
(5303069, 17, 7263.04, -7761.82, 163.122, 100, 0, 0),
(5303069, 18, 7262.12, -7774.91, 162.908, 100, 0, 0),
(5303069, 19, 7275, -7780.83, 162.977, 100, 0, 0),
(5303069, 20, 7285.95, -7774.41, 163.024, 100, 0, 0),
(5303069, 21, 7283.97, -7762.13, 162.937, 100, 0, 0),
(5303069, 22, 7277.48, -7757.59, 162.937, 100, 0, 0),
(5303069, 23, 7278.77, -7748.22, 163.002, 100, 0, 0),
(5303069, 24, 7268.54, -7746.45, 160.432, 100, 0, 0),
(5303069, 25, 7259.37, -7751.32, 157.467, 100, 0, 0),
(5303069, 26, 7267.99, -7761.76, 157.462, 100, 0, 0),
(5303069, 27, 7265.3, -7763.81, 157.133, 100, 0, 0),
(5303069, 28, 7265.97, -7769.66, 154.295, 100, 0, 0),
(5303069, 29, 7268.96, -7774.56, 150.018, 100, 0, 0),
(5303069, 30, 7281.74, -7777.4, 150.018, 100, 0, 0),
(5303069, 31, 7288.98, -7785.5, 150.008, 100, 0, 0),
(5303069, 32, 7285.07, -7789.73, 150.013, 100, 0, 0),
(5303069, 33, 7273.74, -7792.13, 150.094, 100, 0, 0),
(5303069, 34, 7260.4, -7786.96, 150.263, 100, 0, 0),
(5303069, 35, 7251.75, -7777.36, 149.99, 100, 0, 0),
(5303069, 36, 7249.86, -7766.42, 149.842, 100, 0, 0),
(5303069, 37, 7253.85, -7754.85, 149.861, 100, 0, 0),
(5303069, 38, 7258.2, -7750.88, 149.978, 100, 0, 0),
(5303072, 1, 7244.15, -7785.33, 148.041, 100, 0, 0),
(5303072, 2, 7266.12, -7801.62, 150.472, 100, 0, 0),
(5303072, 3, 7289.63, -7805.56, 150.614, 100, 0, 0),
(5303072, 4, 7313.88, -7802.26, 148.966, 100, 0, 0),
(5303072, 5, 7344.3, -7800.05, 147.986, 100, 0, 0),
(5303072, 6, 7373.67, -7814.48, 148.096, 100, 0, 0),
(5303072, 7, 7402.54, -7839.22, 148.859, 100, 0, 0),
(5303072, 8, 7411, -7868.42, 155.428, 100, 0, 0),
(5303072, 9, 7417.26, -7894.82, 158.883, 100, 0, 0),
(5303072, 10, 7434.58, -7923.84, 156.641, 100, 0, 0),
(5303072, 11, 7443.71, -7952.69, 157.767, 100, 0, 0),
(5303072, 12, 7443.18, -7979.57, 158.632, 100, 0, 0),
(5303072, 13, 7423.19, -7998.04, 159.625, 100, 0, 0),
(5303072, 14, 7446.2, -7981.2, 159.116, 100, 0, 0),
(5303072, 15, 7452.2, -7950.15, 159.477, 100, 0, 0),
(5303072, 16, 7449.24, -7919.37, 158.269, 100, 0, 0),
(5303072, 17, 7462.93, -7890.61, 158.703, 100, 0, 0),
(5303072, 18, 7471.36, -7872.48, 158.856, 100, 0, 0),
(5303072, 19, 7498.08, -7843.41, 152.134, 100, 0, 0),
(5303072, 20, 7461.35, -7837.51, 153.514, 100, 0, 0),
(5303072, 21, 7424.88, -7815.74, 146.115, 100, 0, 0),
(5303072, 22, 7392.11, -7802.23, 146.915, 100, 0, 0),
(5303072, 23, 7374.02, -7794.57, 148.538, 100, 0, 0),
(5303072, 24, 7342.48, -7791.65, 148.15, 100, 0, 0),
(5303072, 25, 7328.25, -7790.27, 148.046, 100, 0, 0),
(5303072, 26, 7307.41, -7750.55, 149.402, 100, 0, 0),
(5303072, 27, 7328.25, -7790.27, 148.046, 100, 0, 0),
(5303072, 28, 7342.48, -7791.65, 148.15, 100, 0, 0),
(5303072, 29, 7374.02, -7794.57, 148.538, 100, 0, 0),
(5303072, 30, 7392.11, -7802.23, 146.915, 100, 0, 0),
(5303072, 31, 7424.88, -7815.74, 146.115, 100, 0, 0),
(5303072, 32, 7461.35, -7837.51, 153.514, 100, 0, 0),
(5303072, 33, 7498.08, -7843.41, 152.134, 100, 0, 0),
(5303072, 34, 7471.44, -7872.31, 158.712, 100, 0, 0),
(5303072, 35, 7462.93, -7890.61, 158.703, 100, 0, 0),
(5303072, 36, 7449.24, -7919.37, 158.269, 100, 0, 0),
(5303072, 37, 7452.2, -7950.15, 159.477, 100, 0, 0),
(5303072, 38, 7446.2, -7981.2, 159.116, 100, 0, 0),
(5303072, 39, 7423.19, -7998.04, 159.625, 100, 0, 0),
(5303072, 40, 7443.18, -7979.57, 158.632, 100, 0, 0),
(5303072, 41, 7443.71, -7952.69, 157.767, 100, 0, 0),
(5303072, 42, 7434.58, -7923.84, 156.641, 100, 0, 0),
(5303072, 43, 7417.26, -7894.82, 158.883, 100, 0, 0),
(5303072, 44, 7411, -7868.42, 155.428, 100, 0, 0),
(5303072, 45, 7402.54, -7839.22, 148.859, 100, 0, 0),
(5303072, 46, 7373.67, -7814.48, 148.096, 100, 0, 0),
(5303072, 47, 7344.3, -7800.05, 147.986, 100, 0, 0),
(5303072, 48, 7313.88, -7802.26, 149.007, 100, 0, 0),
(5303072, 49, 7289.63, -7805.56, 150.614, 100, 0, 0),
(5303072, 50, 7266.12, -7801.62, 150.494, 100, 0, 0),
(5303072, 51, 7244.15, -7785.33, 148.041, 100, 0, 0),
(5303072, 52, 7242.07, -7760.24, 148.002, 100, 0, 0),
(5303078, 1, 7398.23, -7987.23, 161.264, 100, 0, 0),
(5303078, 2, 7390.52, -7979.59, 161.28, 100, 0, 0),
(5303078, 3, 7385.23, -7969.68, 161.085, 100, 0, 0),
(5303078, 4, 7388.71, -7956.61, 161.238, 100, 0, 0),
(5303078, 5, 7395.52, -7947.34, 161.316, 100, 0, 0),
(5303078, 6, 7409.83, -7942.27, 161.271, 100, 0, 0),
(5303078, 7, 7414.19, -7944.01, 161.239, 100, 0, 0),
(5303078, 8, 7412.56, -7951.63, 161.249, 100, 0, 0),
(5303078, 9, 7418.33, -7966.84, 161.249, 100, 0, 0),
(5303078, 10, 7416.76, -7971.57, 164.892, 100, 0, 0),
(5303078, 11, 7415.12, -7973.94, 166.464, 100, 0, 0),
(5303078, 12, 7411.69, -7975.51, 168.455, 100, 0, 0),
(5303078, 13, 7409.04, -7974.64, 168.673, 100, 0, 0),
(5303078, 14, 7406.08, -7988.41, 168.689, 100, 0, 0),
(5303078, 15, 7396.55, -7984.08, 171.507, 100, 0, 0),
(5303078, 16, 7391.74, -7975.29, 174.23, 100, 0, 0),
(5303078, 17, 7398.66, -7969.91, 174.168, 100, 0, 0),
(5303078, 18, 7401.41, -7959.69, 174.168, 100, 0, 0),
(5303078, 19, 7409.54, -7954.94, 174.251, 100, 0, 0),
(5303078, 20, 7419.05, -7957.56, 174.219, 100, 0, 0),
(5303078, 21, 7422.39, -7966.5, 174.212, 100, 0, 0),
(5303078, 22, 7419.16, -7975.82, 174.059, 100, 0, 0),
(5303078, 23, 7409.3, -7978.35, 174.337, 100, 0, 0),
(5303078, 24, 7399.12, -7970.75, 174.168, 100, 0, 0),
(5303078, 25, 7391.34, -7974.58, 174.233, 100, 0, 0),
(5303078, 26, 7396.58, -7984.09, 171.496, 100, 0, 0),
(5303078, 27, 7406.01, -7988.43, 168.689, 100, 0, 0),
(5303078, 28, 7409.04, -7974.9, 168.675, 100, 0, 0),
(5303078, 29, 7411.73, -7975.67, 168.443, 100, 0, 0),
(5303078, 30, 7415.12, -7973.88, 166.442, 100, 0, 0),
(5303078, 31, 7416.68, -7971.39, 164.777, 100, 0, 0),
(5303078, 32, 7418.24, -7966.99, 161.249, 100, 0, 0),
(5303078, 33, 7412.59, -7951.58, 161.249, 100, 0, 0),
(5303078, 34, 7414.26, -7944.12, 161.239, 100, 0, 0),
(5303078, 35, 7420.4, -7944.38, 161.241, 100, 0, 0),
(5303078, 36, 7429.63, -7952.79, 161.323, 100, 0, 0),
(5303078, 37, 7433.21, -7966.14, 161.482, 100, 0, 0),
(5303078, 38, 7430.91, -7977.68, 161.238, 100, 0, 0),
(5303078, 39, 7423.58, -7985.98, 161.09, 100, 0, 0),
(5303078, 40, 7412.28, -7990.25, 161.099, 100, 0, 0),
(5303078, 41, 7405.37, -7989.33, 161.224, 100, 0, 0);

-- ==========
-- Ghostlands
-- ==========

-- Starving Ghostclaw 16347
-- https://web.archive.org/web/20080418001043/http://wow.allakhazam.com/db/mob.html?wmob=16347
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16347;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16347, 818, 0.16, 0, 1, 1, 0, 'Tigerseye'),
(16347, 60103, 2, 0, -60103, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)');

-- Ghostclaw Lynx 16348
-- https://web.archive.org/web/20080417230035/http://wow.allakhazam.com/db/mob.html?wmob=16348
UPDATE `creature_template` SET `Faction` = 38, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16348; -- faction forest troll gets adopted from their troll masters
DELETE FROM `creature_loot_template` WHERE `item` IN (856,2934,2657,5573,5574,2318,4606,2881,50502) AND `entry` = 16348;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16348, 1210, 0.12, 0, 1, 1, 0, 'Shadowgem'),
(16348, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(16348, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16348, 60111, 2, 0, -60111, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 12-17) - (NPC Levels: 13-14)');

-- Ghostclaw Ravager 16349
-- https://web.archive.org/web/20080417230040/http://wow.allakhazam.com/db/mob.html?wmob=16349
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16349;
DELETE FROM `creature_loot_template` WHERE `item` IN (783,2318,2319,5573,5574,2409,2601,2881,4293,4294,4346,4349,6347,6348,6391,50502) AND `entry` = 16349;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16349, 1210, 0.22, 0, 1, 1, 0, 'Shadowgem'),
(16349, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(16349, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16349, 60117, 2, 0, -60117, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 15-20) - (NPC Levels: 16-17)');

-- Spindleweb Spider 16350
-- https://web.archive.org/web/20080430024611/http://wow.allakhazam.com/db/mob.html?wmob=16350
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16350;
DELETE FROM `creature_loot_template` WHERE `item` IN (856,2657,5573,5574) AND `entry` = 16350;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16350, 774, 0.47, 0, 1, 1, 0, 'Malachite'),
(16350, 60442, 0.25, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(16350, 60105, 2, 0, -60105, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 9-14) - (NPC Levels: 10-11)');

-- Spindleweb Lurker 16351
-- https://web.archive.org/web/20080502013338/http://wow.allakhazam.com/db/mob.html?wmob=16351
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16351;
DELETE FROM `creature_loot_template` WHERE `item` IN (856,2657,5573,5574,2409,4292,4293,50502) AND `entry` = 16351;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16351, 1210, 0.14, 0, 1, 1, 0, 'Shadowgem'),
(16351, 774, 0.11, 0, 1, 1, 0, 'Malachite'),
(16351, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16351, 60442, 0.5, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(16351, 60113, 2, 0, -60113, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)');

-- Greater Spindleweb 16352
-- https://web.archive.org/web/20080502023007/http://wow.allakhazam.com/db/mob.html?wmob=16352
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16352;
DELETE FROM `creature_loot_template` WHERE `item` IN (5573,5574,2409,2881,4293,4345,4346,4347,6348,11038,50502) AND `entry` = 16352;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16352, 1210, 0.33, 0, 1, 1, 0, 'Shadowgem'),
(16352, 60442, 0.5, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(16352, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16352, 60119, 2, 0, -60119, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 16-21) - (NPC Levels: 17-18)');	

-- Mistbat 16353
-- https://web.archive.org/web/20080418071305/http://wow.allakhazam.com/db/mob.html?wmob=16353
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16353;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16353, 774, 0.57, 0, 1, 1, 0, 'Malachite'),
(16353, 818, 0.23, 0, 1, 1, 0, 'Tigerseye'),
(16353, 60103, 2, 0, -60103, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)');

-- Vampiric Mistbat 16354
-- https://web.archive.org/web/20080502023012/http://wow.allakhazam.com/db/mob.html?wmob=16354
UPDATE `creature_template` SET `Faction` = 411, `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16354;
DELETE FROM `creature_loot_template` WHERE `item` IN (783,856,2657,5573,5574,2318,2934,50502) AND `entry` = 16354;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16354, 1210, 0.1, 0, 1, 1, 0, 'Shadowgem'),
(16354, 774, 0.11, 0, 1, 1, 0, 'Malachite'),
(16354, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(16354, 50503, 0.3, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16354, 60113, 2, 0, -60113, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 13-18) - (NPC Levels: 14-15)');

-- Lesser Scourgebat 16355
-- https://web.archive.org/web/20080430071345/http://wow.allakhazam.com/db/mob.html?wmob=16355
UPDATE `creature_template` SET `UnitFlags` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16355;
DELETE FROM `creature_loot_template` WHERE `item` IN (856,2657,5573,5972,11081,50502,2318,2319,4232) AND `entry` = 16355;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16355, 1210, 0.22, 0, 1, 1, 0, 'Shadowgem'),
(16355, 1206, 0.11, 0, 1, 1, 0, 'Moss Agate'),
(16355, 60442, 1, 0, -60442, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 15 (8 Slot Bag)) - (NPC Levels: 11-20)'),
(16355, 50503, 0.8, 0, -50503, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 20-130 (Profession Recipes)) - (NPC Levels ~10-20)'),
(16355, 60119, 2, 0, -60119, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 16-21) - (NPC Levels: 17-18)');

DELETE FROM `creature` WHERE `id` IN (16347,16348,16349,16350,16351,16352,16353,16354,16355);
DELETE FROM `creature` WHERE `guid` BETWEEN 5303152 AND 5303487;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303152, 16347, 530, 7741.77, -6942.68, 100.649, 1.32713, 300, 300, 10, 1),
(5303153, 16347, 530, 7823.68, -6847.24, 64.7335, 4.51576, 300, 300, 10, 1),
(5303154, 16347, 530, 7846.78, -6944.73, 91.3033, 2.66048, 300, 300, 10, 1),
(5303155, 16347, 530, 7858.67, -6994.99, 100.384, 1.97462, 300, 300, 15, 1),
(5303156, 16347, 530, 7889.44, -7051.99, 107.781, 6.05468, 300, 300, 5, 1),
(5303157, 16347, 530, 7912.38, -7079.21, 116.116, 1.66127, 300, 300, 5, 1),
(5303158, 16347, 530, 7942.54, -7053.46, 115.891, 3.88227, 300, 300, 10, 1), -- path?
(5303159, 16347, 530, 7950.14, -7113.01, 124.781, 1.52688, 300, 300, 10, 1),
(5303160, 16347, 530, 7819.21, -7175.48, 130.682, 4.71141, 300, 300, 10, 1),
(5303161, 16347, 530, 7817.28, -7321.1, 145.134, 2.55084, 300, 300, 5, 1),
(5303162, 16347, 530, 7847.01, -7419.17, 152.063, 0.708043, 300, 300, 5, 1),
(5303163, 16347, 530, 7902.12, -7470.38, 148.729, 1.9141, 300, 300, 10, 1),
(5303164, 16347, 530, 7843.77, -7476.99, 149.932, 0.788161, 300, 300, 10, 1), -- path?
(5303165, 16347, 530, 7877.9, -7443.66, 158.705, 1.28981, 300, 300, 5, 1),
(5303166, 16347, 530, 7946.22, -6783.54, 56.189, 0.84701, 300, 300, 5, 1),
(5303167, 16347, 530, 7745.75, -6707.56, 37.922, 5.72769, 300, 300, 5, 1),
(5303168, 16347, 530, 7321.28, -6688.02, 29.2631, 4.31282, 300, 300, 10, 1),
(5303169, 16347, 530, 7782.95, -6750.10, 40.98, 0, 300, 300, 15, 1),

(5303170, 16348, 530, 7546.34, -7548.01, 137.023, 5.57048, 300, 300, 10, 1),
(5303171, 16348, 530, 7554.64, -7809.52, 148.332, 5.26854, 300, 300, 10, 1),
(5303172, 16348, 530, 7513.69, -7785.91, 146.767, 0.191986, 300, 300, 10, 1),
(5303173, 16348, 530, 7648.29, -7783.03, 150.752, 1.29221, 300, 300, 10, 1),
(5303174, 16348, 530, 7673.08, -7850.51, 158.261, 1.05735, 300, 300, 10, 1),
(5303175, 16348, 530, 7621.81, -7888.47, 176.509, 4.57435, 300, 300, 5, 1),
(5303176, 16348, 530, 7547.50, -7885.62, 189.005, 5.99893, 300, 300, 5, 1),
(5303177, 16348, 530, 7445.04, -7611.89, 121.769, 4.06978, 300, 300, 10, 1),
(5303178, 16348, 530, 7449.89, -7586.9, 118.794, 5.64261, 300, 300, 5, 1),
(5303179, 16348, 530, 7476.58, -7564.97, 119.505, 5.2536, 300, 300, 10, 1),
(5303180, 16348, 530, 7491.17, -6658.18, 23.709, 1.87349, 300, 300, 5, 1),
(5303181, 16348, 530, 7156.07, -6744.26, 38.7533, 4.06342, 300, 300, 5, 1),
(5303182, 16348, 530, 7199.42, -6772.95, 41.5937, 0.399206, 300, 300, 10, 1),
(5303183, 16348, 530, 7212.56, -6960.97, 48.106, 4.19339, 300, 300, 5, 1),
(5303184, 16348, 530, 7252.84, -7528.44, 62.2813, 5.32311, 300, 300, 5, 1),
(5303185, 16348, 530, 7248.10, -6860.58, 43.182, 1.34429, 300, 300, 5, 1),
(5303186, 16348, 530, 7219.83, -6845.17, 46.8786, 1.67746, 300, 300, 5, 1),
(5303187, 16348, 530, 7449.55, -7519.19, 109.957, 5.57671, 300, 300, 5, 1),
(5303188, 16348, 530, 7390.12, -7552.72, 92.971, 2.98484, 300, 300, 10, 1),
(5303189, 16348, 530, 7380.24, -6846.62, 49.1646, 4.51898, 300, 300, 5, 1),
(5303190, 16348, 530, 7281.21, -7539.5, 78.8577, 3.34367, 300, 300, 5, 1),
(5303191, 16348, 530, 7306.83, -7538.53, 79.345, 5.23091, 300, 300, 5, 1),
(5303192, 16348, 530, 7050.06, -6921.03, 48.6787, 5.75483, 300, 300, 10, 1),
(5303193, 16348, 530, 7287.43, -6754.24, 38.8073, 1.25594, 300, 300, 10, 1),
(5303194, 16348, 530, 7318.97, -6982.24, 50.00, 0, 300, 300, 10, 1),
(5303195, 16348, 530, 7281.85, -7015.24, 47.08, 0, 300, 300, 10, 1),
(5303196, 16348, 530, 7245.75, -7248.99, 50.24, 0, 300, 300, 5, 1),
(5303197, 16348, 530, 7345.75, -7365.83, 76.14, 0, 300, 300, 10, 1),
(5303198, 16348, 530, 7317.62, -7383.33, 67.79, 0, 300, 300, 10, 1),
(5303199, 16348, 530, 7221.93, -7381.37, 51.44, 0, 300, 300, 10, 1),
(5303200, 16348, 530, 7151.31, -7417.00, 49.62, 0, 300, 300, 15, 1),
(5303201, 16348, 530, 7179.47, -7274.54, 46.89, 0, 300, 300, 10, 1),
(5303202, 16348, 530, 7218.18, -7350.97, 52.44, 0, 300, 300, 15, 1),
(5303203, 16348, 530, 7341.89, -7692.29, 116.20, 0, 300, 300, 5, 1),
(5303204, 16348, 530, 7277.22, -7630.27, 93.95, 0, 300, 300, 15, 1),
(5303205, 16348, 530, 7451.22, -7814.88, 147.906, 0, 300, 300, 15, 1),
(5303206, 16349, 530, 6938.36, -5973.4, 12.4592, 1.71382, 300, 300, 10, 1),
(5303207, 16349, 530, 6827.66, -5855.18, 14.362, 2.30506, 300, 300, 15, 1),
(5303208, 16349, 530, 6744.32, -5857.02, 45.6707, 3.80658, 300, 300, 5, 1),
(5303209, 16349, 530, 6954.29, -6050.88, 11.9405, 1.09579, 300, 300, 5, 1),
(5303210, 16349, 530, 6981.64, -6087.83, 14.8062, 4.27311, 300, 300, 5, 1),
(5303211, 16349, 530, 6984.17, -6147.91, 26.739, 1.68359, 300, 300, 5, 1),
(5303212, 16349, 530, 6845.13, -6212.6, 29.7925, 2.47646, 300, 300, 5, 1),
(5303213, 16349, 530, 6978.91, -6228.89, 38.136, 4.6984, 300, 300, 10, 1),
(5303214, 16349, 530, 7082.22, -6680.17, 41.5294, 6.16289, 300, 300, 10, 1),
(5303215, 16349, 530, 6978.11, -7054.83, 50.3897, 1.00269, 300, 300, 10, 1),
(5303216, 16349, 530, 6643.19, -7188.1, 58.0733, 0.68298, 300, 300, 5, 1),
(5303217, 16349, 530, 6718.66, -7210.42, 41.1978, 0.039609, 300, 300, 5, 1),
(5303218, 16349, 530, 6886.94, -7352.25, 47.7202, 0.35165, 300, 300, 10, 1),
(5303219, 16349, 530, 6876.93, -6620.79, 21.87, 0, 300, 300, 10, 1),
(5303220, 16349, 530, 6907.56, -6898.62, 47.87, 0, 300, 300, 10, 1),
(5303221, 16349, 530, 6881.33, -6819.73, 59.83, 0, 300, 300, 10, 1),
(5303222, 16349, 530, 6950.20, -6885.49, 50.70, 0, 300, 300, 10, 1),
(5303223, 16349, 530, 6842.92, -6908.28, 79.80, 0, 300, 300, 5, 1),
(5303224, 16349, 530, 6917.02, -6844.18, 61.82, 0, 300, 300, 10, 1),
(5303225, 16349, 530, 6655.12, -6847.50, 113.68, 0, 300, 300, 5, 1),

(5303226, 16350, 530, 7851.42, -6409.05, 15.8509, 1.26232, 300, 300, 10, 1),
(5303227, 16350, 530, 7817.92, -6379.25, 19.2762, 1.38317, 300, 300, 10, 1),
(5303228, 16350, 530, 7787.7, -6347.71, 18.1345, 4.20624, 300, 300, 5, 1),
(5303229, 16350, 530, 7708.11, -6286.88, 25.0428, 3.41238, 300, 300, 5, 1),
(5303230, 16350, 530, 7657.56, -6287.20, 33.063, 2.12712, 300, 300, 10, 1),
(5303231, 16350, 530, 8053, -6054.84, 19.5034, 5.09471, 300, 300, 10, 1),
(5303232, 16350, 530, 8023.52, -6012.63, 10.7103, 0.662257, 300, 300, 10, 1),
(5303233, 16350, 530, 8048.43, -5975.22, 8.29452, 1.77221, 300, 300, 10, 1),
(5303234, 16350, 530, 7901.27, -6010.1, 12.6596, 0.234557, 300, 300, 10, 1),
(5303235, 16350, 530, 7811.98, -6016.23, 10.5294, 2.87268, 300, 300, 10, 1),
(5303236, 16350, 530, 7780.74, -6118, 18.9486, 4.20596, 300, 300, 10, 1),
(5303237, 16350, 530, 7631.48, -6290.49, 33.791, 3.47563, 300, 300, 5, 1),
(5303238, 16350, 530, 7652.87, -6220.72, 25.226, 0.752831, 300, 300, 5, 1),
(5303239, 16350, 530, 7571.65, -6232.69, 28.5959, 2.4635, 300, 300, 10, 1),
(5303240, 16350, 530, 7616.89, -6190.43, 23.949, 2.27879, 300, 300, 10, 1),
(5303241, 16350, 530, 7575.58, -6147.05, 16.3499, 2.16584, 300, 300, 10, 1),
(5303242, 16350, 530, 7551.08, -6172.43, 17.8947, 1.58676, 300, 300, 10, 1),
(5303243, 16350, 530, 7567.3, -6070.95, 10.8373, 4.17968, 300, 300, 5, 1),

(5303244, 16351, 530, 7381.92, -5829.83, 9.39925, 4.99372, 300, 300, 10, 1),
(5303245, 16351, 530, 7423.56, -5839.98, 10.2727, 1.9513, 300, 300, 10, 1),
(5303246, 16351, 530, 7169.12, -5796.13, 8.33154, 5.74676, 300, 300, 10, 1),
(5303247, 16351, 530, 7091.05, -5788.24, 29.3632, 4.30814, 300, 300, 5, 1),
(5303248, 16351, 530, 7448.04, -6199.84, 17.7026, 2.02571, 300, 300, 10, 1),
(5303249, 16351, 530, 7346.16, -6199.37, 30.177, 3.04322, 300, 300, 10, 1),
(5303250, 16351, 530, 7413.36, -6253.65, 34.4874, 4.52914, 300, 300, 10, 1),
(5303251, 16351, 530, 7376.38, -6420.17, 31.7223, 3.64281, 300, 300, 5, 1),
(5303252, 16351, 530, 7281.7, -6121.28, 20.2221, 4.60767, 300, 300, 5, 1),
(5303253, 16351, 530, 7004.39, -5977.81, 13.6176, 1.02937, 300, 300, 5, 1),
(5303254, 16351, 530, 7077.02, -6260.87, 48, 0.420348, 300, 300, 5, 1),
(5303255, 16351, 530, 7121.84, -6153.76, 29.3215, 3.35217, 300, 300, 0, 0), -- lol keeping this eyecandy spawn as is
(5303256, 16351, 530, 7285.24, -6180.82, 29.9302, 0.793405, 300, 300, 5, 1),
(5303257, 16351, 530, 7345.93, -6368.19, 41.7665, 1.59325, 300, 300, 5, 1),
(5303258, 16351, 530, 7215.04, -6051.41, 12.18, 0, 300, 300, 10, 1),

(5303259, 16349, 530, 6894.12, -5912.43, 13.794, 3.21589, 300, 300, 10, 1), -- 16352
(5303260, 16352, 530, 6898.47, -5956.63, 17.1241, 3.3342, 300, 300, 10, 1), -- 16349
(5303261, 16352, 530, 6925.66, -5886.74, 11.4354, 3.081, 300, 300, 10, 1), -- 16349
(5303262, 16352, 530, 6920.34, -5823.66, 13.02, 0.708626, 300, 300, 10, 1), -- 16349
(5303263, 16352, 530, 6885.81, -5826.12, 13.556, 1.73944, 300, 300, 10, 1), -- 16349
(5303264, 16349, 530, 6881.91, -6039.95, 30.6079, 2.49829, 300, 300, 5, 1), -- 16352
(5303265, 16352, 530, 6916.19, -6085.43, 19.4604, 4.87113, 300, 300, 5, 1), -- 16349
(5303266, 16349, 530, 6916.37, -6141.21, 26.1866, 5.02778, 300, 300, 5, 1), -- 16352
(5303267, 16352, 530, 6949.75, -6178.75, 25.5325, 1.60594, 300, 300, 5, 1), -- 16349
(5303268, 16352, 530, 6930.62, -6285.45, 33.3223, 4.91457, 300, 300, 15, 1), -- 16349
(5303269, 16349, 530, 6929.68, -6243.52, 27.456, 0.863548, 300, 300, 15, 1), -- 16352
(5303270, 16352, 530, 7010.99, -6172.63, 35.0472, 6.09652, 300, 300, 5, 1), -- 16349
(5303271, 16352, 530, 7014.39, -6252.89, 46.5658, 4.10491, 300, 300, 5, 1), -- 16349
(5303272, 16349, 530, 6981.98, -6279.86, 46.1905, 2.07469, 300, 300, 10, 1), -- 16352
(5303273, 16349, 530, 7053.42, -6654.79, 30.336, 5.26168, 300, 300, 10, 1), -- 16352
(5303274, 16352, 530, 7048.15, -6713.6, 33.2798, 0.736578, 300, 300, 10, 1), -- 16349
(5303275, 16349, 530, 6995.12, -6714.20, 27.516, 1.76717, 300, 300, 10, 1), -- 16352
(5303276, 16352, 530, 6966.15, -6703.91, 22.194, 3.92067, 300, 300, 10, 1), -- 16349
(5303277, 16349, 530, 6973.81, -6415.64, 36.005, 4.33098, 300, 300, 10, 1), -- 16352
(5303278, 16352, 530, 6916.27, -6384.22, 34.9919, 3.97137, 300, 300, 15, 1), -- 16349
(5303279, 16349, 530, 6956, -7146.39, 46.6246, 6.20889, 300, 300, 10, 1), -- 16352
(5303280, 16349, 530, 6920.85, -7046.95, 45.587, 1.30403, 300, 300, 5, 1), -- 16352
(5303281, 16349, 530, 6930.51, -7156.84, 43.0283, 5.06567, 300, 300, 5, 1), -- 16352
(5303282, 16352, 530, 6882.45, -6678.18, 34.36, 0, 300, 300, 15, 1), -- 16349
(5303283, 16352, 530, 6835.50, -6677.58, 39.62, 0, 300, 300, 15, 1), -- 16349
(5303284, 16352, 530, 6850.08, -7296.33, 49.85, 0, 300, 300, 5, 1), -- 16349
(5303285, 16352, 530, 7017.77, -6375.00, 43.01, 0, 300, 300, 5, 1), -- 16349
(5303286, 16352, 530, 6949.04, -6819.41, 48.39, 0, 300, 300, 5, 1), -- 16349
(5303287, 16349, 530, 6715.02, -6837.31, 103.68, 0, 300, 300, 10, 1), -- 16352
(5303288, 16349, 530, 6876.08, -6329.87, 30.17, 0, 300, 300, 20, 1), -- 16352
(5303289, 16349, 530, 6934.75, -6320.93, 36.49, 0, 300, 300, 10, 1), -- 16352
(5303290, 16349, 530, 6913.89, -6715.54, 25.93, 0, 300, 300, 10, 1), -- 16352
(5303291, 16349, 530, 6923.52, -6951.04, 43.96, 0, 300, 300, 20, 1), -- 16352

(5303292, 16352, 530, 6831.3, -5895.5, 24.7307, 0.576621, 300, 300, 5, 1),
(5303293, 16352, 530, 6846.78, -5813.15, 8.43531, 3.30327, 300, 300, 5, 1),
(5303294, 16352, 530, 6781.18, -5837.49, 12.9008, 3.75072, 300, 300, 5, 1),
(5303295, 16352, 530, 6862.5, -6004.17, 51.5158, 3.005, 300, 300, 5, 1),
(5303296, 16352, 530, 6918.20, -6021.66, 15.693, 5.28467, 300, 300, 5, 1),
(5303297, 16352, 530, 6907.41, -6118.76, 26.3414, 0.129198, 300, 300, 5, 1),
(5303298, 16352, 530, 6949.13, -6116.2, 21.7312, 2.66544, 300, 300, 5, 1),
(5303299, 16352, 530, 6851.87, -6082.52, 39.182, 3.62925, 300, 300, 5, 1),
(5303300, 16352, 530, 6898.67, -6208.28, 27.6364, 3.69005, 300, 300, 5, 1),
(5303301, 16352, 530, 6865.68, -6195.99, 30.6989, 3.75201, 300, 300, 5, 1),
(5303302, 16352, 530, 6922.79, -6203.27, 25.9434, 4.65472, 300, 300, 5, 1),
(5303303, 16352, 530, 6877.91, -6249.02, 26.889, 3.58112, 300, 300, 15, 1),
(5303304, 16352, 530, 7055.14, -6421.32, 32.0897, 2.12281, 300, 300, 10, 1),
(5303305, 16352, 530, 7020.41, -6685.99, 26.7252, 5.709, 300, 300, 5, 1),
(5303306, 16352, 530, 6921.3, -6646.21, 22.0719, 3.46275, 300, 300, 15, 1),
(5303307, 16352, 530, 6952.72, -6381.00, 40.00, 0, 300, 300, 5, 1), 
(5303308, 16352, 530, 6543.50, -7294.08, 57.96, 0, 300, 300, 5, 1),
(5303309, 16352, 530, 6861.89, -6858.16, 67.70, 0, 300, 300, 10, 1),
(5303310, 16352, 530, 6977.08, -6985.83, 52.45, 0, 300, 300, 10, 1),
(5303311, 16352, 530, 6886.39, -7027.18, 46.54, 0, 300, 300, 10, 1),
(5303312, 16352, 530, 6778.27, -6843.00, 90.44, 0, 300, 300, 10, 1),
(5303313, 16352, 530, 6554.02, -6811.20, 110.60, 0, 300, 300, 10, 1),
(5303314, 16352, 530, 6604.14, -6754.33, 114.28, 0, 300, 300, 10, 1),
(5303315, 16352, 530, 6806.95, -6894.68, 93.63, 0, 300, 300, 10, 1),

(5303316, 16347, 530, 7726.66, -6876.39, 80.4916, 0.80039, 300, 300, 15, 1), -- 16353
(5303317, 16347, 530, 7857.3, -6907.3, 74.6872, 4.39934, 300, 300, 15, 1), -- 16353
(5303318, 16347, 530, 7924.6, -6959.88, 79.966, 5.64757, 300, 300, 10, 1), -- 16353
(5303319, 16347, 530, 7999.81, -6940.25, 53.5095, 5.93425, 300, 300, 5, 1), -- 16353
(5303320, 16347, 530, 7976.72, -6925.95, 62.605, 2.99859, 300, 300, 10, 1), -- 16353
(5303321, 16347, 530, 7936.25, -6909.38, 67.8458, 3.33018, 300, 300, 5, 1), -- 16353
(5303322, 16353, 530, 7942.2, -6837.45, 58.743, 4.025, 300, 300, 5, 1), -- 16347
(5303323, 16347, 530, 7975.06, -6852.64, 56.332, 1.71283, 300, 300, 5, 1), -- 16353
(5303324, 16353, 530, 7972.6, -6816.25, 54.9817, 4.35202, 300, 300, 5, 1), -- 16347
(5303325, 16347, 530, 7886.53, -6777.71, 51.8727, 6.0946, 300, 300, 5, 1), -- 16353
(5303326, 16347, 530, 7841, -6745.92, 41.3207, 4.45084, 300, 300, 15, 1), -- 16353
(5303327, 16347, 530, 7812.58, -7488.56, 152.54, 0, 300, 300, 10, 1), -- 16353

(5303328, 16353, 530, 7812.81, -6445.56, 15.8457, 2.46165, 300, 300, 5, 1), -- 16350
(5303329, 16350, 530, 7781, -6407.29, 13.9963, 1.86937, 300, 300, 10, 1), -- 16353
(5303330, 16353, 530, 7789.49, -6285.89, 22.848, 5.4694, 300, 300, 10, 1), -- 16350
(5303331, 16353, 530, 7686.45, -6312.74, 27.5245, 0.474564, 300, 300, 10, 1), -- 16350
(5303332, 16353, 530, 7675.62, -6249.71, 28.3053, 3.02954, 300, 300, 10, 1), -- 16350
(5303333, 16353, 530, 7783.9, -6040.65, 11.6364, 1.51842, 300, 300, 10, 1), -- 16350
(5303334, 16353, 530, 7677.84, -5986.97, 8.80846, 2.86249, 300, 300, 10, 1), -- 16350
(5303335, 16350, 530, 7680.3, -6444.01, 14.2885, 2.46369, 300, 300, 5, 1), -- 16353
(5303336, 16353, 530, 7791.37, -6477.43, 14.198, 4.21561, 300, 300, 10, 1), -- 16350
(5303337, 16353, 530, 7617.48, -6238.39, 30.4525, 2.78002, 300, 300, 5, 1), -- 16350
(5303338, 16350, 530, 7610.02, -6081.95, 9.541, 1.4896, 300, 300, 10, 1), -- 16353
(5303339, 16350, 530, 7749.10, -6492.66, 19.78, 0, 300, 300, 10, 1), -- 16353
(5303340, 16353, 530, 7895.56, -6910.62, 68.527, 2.01161, 300, 300, 15, 1),
(5303341, 16353, 530, 7704.45, -6946.23, 117.873, 4.32572, 300, 300, 5, 1),
(5303342, 16353, 530, 7771.25, -7025.09, 102.999, 1.3622, 300, 300, 10, 1),
(5303343, 16353, 530, 7914.74, -7012.35, 95.9552, 0.737267, 300, 300, 10, 1),
(5303344, 16353, 530, 8006.89, -7119.09, 133.763, 3.7556, 300, 300, 10, 1),
(5303345, 16353, 530, 7842.88, -7401.62, 153.173, 5.49226, 300, 300, 5, 1),
(5303346, 16353, 530, 7767.54, -7479.50, 156.919, 2.45531, 300, 300, 5, 1),
(5303347, 16353, 530, 7810.45, -7449.61, 159.872, 3.14941, 300, 300, 5, 1),
(5303348, 16353, 530, 7745.61, -7377.09, 167.545, 2.19631, 300, 300, 5, 1),
(5303349, 16353, 530, 7916.28, -6892.25, 66.6871, 3.9401, 300, 300, 10, 1),
(5303350, 16353, 530, 7823.89, -6783.25, 50.606, 5.46693, 300, 300, 10, 1),
(5303351, 16353, 530, 8084.82, -6012.49, 16.2935, 0.202567, 300, 300, 10, 1),
(5303352, 16353, 530, 7943.83, -6011.3, 12.841, 2.70632, 300, 300, 10, 1),
(5303353, 16353, 530, 7643.00, -6490.08, 12.094, 2.87804, 300, 300, 5, 1),
(5303354, 16353, 530, 7608.85, -6130.18, 14.758, 0.66505, 300, 300, 10, 1),
(5303355, 16353, 530, 7551.21, -6124.18, 16.7468, 5.04197, 300, 300, 10, 1),

(5303356, 16354, 530, 7700.92, -7791.58, 150.774, 3.92434, 300, 300, 10, 1), -- 16348
(5303357, 16354, 530, 7617.66, -7759.49, 147.242, 3.50445, 300, 300, 10, 1), -- 16348
(5303358, 16348, 530, 7449.02, -7719.07, 131.328, 2.44346, 300, 300, 10, 1), -- 16354
(5303359, 16354, 530, 7708.98, -7861.67, 157.316, 1.88349, 300, 300, 10, 1), -- 16348
(5303360, 16348, 530, 7419.14, -7737.8, 131.254, 5.94909, 300, 300, 10, 1), -- 16354
(5303361, 16354, 530, 7387.67, -7705.2, 121.565, 4.36076, 300, 300, 10, 1), -- 16348
(5303362, 16354, 530, 7444.9, -7688.12, 129.816, 6.14251, 300, 300, 10, 1), -- 16348
(5303363, 16348, 530, 7449.91, -6681.22, 26.047, 5.95466, 300, 300, 5, 1), -- 16354
(5303364, 16348, 530, 7321.23, -6854.25, 45.3662, 1.71476, 300, 300, 10, 1), -- 16354
(5303365, 16348, 530, 7321.09, -6912.26, 51.416, 1.62066, 300, 300, 10, 1), -- 16354
(5303366, 16348, 530, 7226.49, -7484.44, 57.8355, 3.48435, 300, 300, 10, 1), -- 16354
(5303367, 16348, 530, 7306.88, -7459.98, 70.824, 2.72515, 300, 300, 10, 1), -- 16354
(5303368, 16348, 530, 7257.27, -6983.55, 46.3402, 0.029288, 300, 300, 10, 1), -- 16354
(5303369, 16348, 530, 7481.4, -7500.75, 119.791, 4.46173, 300, 300, 10, 1), -- 16354
(5303370, 16348, 530, 7322.04, -6793.29, 43.6187, 0.739129, 300, 300, 10, 1), -- 16354
(5303371, 16348, 530, 7336.12, -6949.56, 49.1077, 3.20023, 300, 300, 15, 1), -- 16354
(5303372, 16348, 530, 7096.86, -6864.17, 46.1903, 4.14281, 300, 300, 10, 1), -- 16354
(5303373, 16348, 530, 7356.70, -6900.62, 48.625, 3.53225, 300, 300, 10, 1), -- 16354
(5303374, 16348, 530, 7355.05, -6816.62, 44.8697, 0.768825, 300, 300, 5, 1), -- 16354
(5303375, 16354, 530, 7086.51, -6979.59, 44.511, 4.55007, 300, 300, 10, 1), -- 16348
(5303376, 16354, 530, 7351.83, -6829.73, 47.3718, 5.04897, 300, 300, 5, 1), -- 16348
(5303377, 16354, 530, 7016.24, -7146.81, 45.5547, 5.55168, 300, 300, 10, 1), -- 16348
(5303378, 16354, 530, 7249.52, -6917.8, 47.6001, 3.55149, 300, 300, 15, 1), -- 16348
(5303379, 16354, 530, 7514.57, -7506.5, 122.752, 1.89687, 300, 300, 10, 1), -- 16348
(5303380, 16354, 530, 7377.01, -7575.42, 101.17, 3.11621, 300, 300, 10, 1), -- 16348
(5303381, 16354, 530, 7385.12, -7517.12, 93.444, 5.7914, 300, 300, 15, 1), -- 16348
(5303382, 16354, 530, 7060.41, -7180.89, 45.8599, 1.98991, 300, 300, 10, 1), -- 16348
(5303383, 16354, 530, 7259.02, -6779.79, 40.6354, 2.3113, 300, 300, 15, 1), -- 16348
(5303384, 16354, 530, 7058.16, -7129.73, 44.9648, 0.139135, 300, 300, 15, 1), -- 16348
(5303385, 16354, 530, 7047.94, -7158.74, 45.9501, 1.90397, 300, 300, 5, 1), -- 16348
(5303386, 16354, 530, 7128.23, -6912.52, 52.9378, 6.0022, 300, 300, 10, 1), -- 16348
(5303387, 16354, 530, 7345.5, -6715.99, 30.4734, 5.67406, 300, 300, 10, 1), -- 16348
(5303388, 16354, 530, 7079.54, -7224.33, 48.01, 0, 300, 300, 10, 1), -- 16348
(5303389, 16348, 530, 7262.62, -7350.25, 54.40, 0, 300, 300, 15, 1), -- 16354
(5303390, 16348, 530, 7193.45, -7402.27, 51.10, 0, 300, 300, 15, 1), -- 16354
(5303391, 16348, 530, 7334.20, -7649.35, 107.51, 0, 300, 300, 15, 1), -- 16354

(5303392, 16351, 530, 7447.01, -5815.77, 9.106, 5.72718, 300, 300, 10, 1), -- 16354
(5303393, 16354, 530, 7116.26, -5756.28, 9.38268, 2.73606, 300, 300, 10, 1), -- 16351
(5303394, 16351, 530, 7455.5, -6009.79, 1.11116, 6.25803, 300, 300, 10, 1), -- 16354
(5303395, 16354, 530, 7399.75, -6077.98, 16.5881, 4.89812, 300, 300, 15, 1), -- 16351
(5303396, 16351, 530, 7371.72, -6092.62, 19.0664, 3.48226, 300, 300, 10, 1), -- 16354
(5303397, 16354, 530, 7444.69, -6081.72, 13.9749, 1.56021, 300, 300, 10, 1), -- 16351
(5303398, 16351, 530, 7381.23, -6204.32, 27.588, 1.78921, 300, 300, 10, 1), -- 16354
(5303399, 16351, 530, 7420.1, -6209.91, 23.8338, 4.66847, 300, 300, 10, 1), -- 16354
(5303400, 16354, 530, 7381.96, -6279.47, 40.5378, 1.75363, 300, 300, 10, 1), -- 16351
(5303401, 16354, 530, 7382.07, -6350.99, 41.3507, 3.0222, 300, 300, 15, 1), -- 16351
(5303402, 16351, 530, 7467.07, -6269.42, 22.9653, 4.29417, 300, 300, 10, 1), -- 16354
(5303403, 16354, 530, 7426.97, -6298.83, 34.162, 1.58288, 300, 300, 10, 1), -- 16351
(5303404, 16351, 530, 7415.05, -6413.86, 33.7962, 4.7321, 300, 300, 10, 1), -- 16354
(5303405, 16354, 530, 7455.06, -6482.57, 15.3897, 4.13765, 300, 300, 10, 1), -- 16351
(5303406, 16351, 530, 7409.73, -6470.1, 20.2439, 1.68523, 300, 300, 10, 1), -- 16354
(5303407, 16351, 530, 7313.42, -6153.67, 25.8258, 4.82143, 300, 300, 5, 1), -- 16354
(5303408, 16354, 530, 7318.5, -6092.13, 20.5386, 4.5238, 300, 300, 10, 1), -- 16351
(5303409, 16351, 530, 7028.39, -5914.21, 18.2938, 3.12972, 300, 300, 5, 1), -- 16354
(5303410, 16354, 530, 7036.46, -5956.94, 9.58792, 2.79482, 300, 300, 5, 1), -- 16351
(5303411, 16351, 530, 7090.87, -6176.2, 30.5939, 0.450462, 300, 300, 10, 1), -- 16354
(5303412, 16354, 530, 7046.56, -6087.54, 10.8871, 1.06171, 300, 300, 5, 1), -- 16351
(5303413, 16351, 530, 7179.96, -6093.75, 12.2083, 1.85992, 300, 300, 15, 1), -- 16354
(5303414, 16354, 530, 7354.26, -6254.4, 41.1595, 3.55673, 300, 300, 10, 1), -- 16351
(5303415, 16354, 530, 7350.24, -6881.45, 47.8994, 3.42472, 300, 300, 15, 1), -- 16351
(5303416, 16351, 530, 7085.12, -6317.87, 44.42, 0, 300, 300, 10, 1), -- 16354
(5303417, 16351, 530, 7448.79, -6151.83, 14.07, 0, 300, 300, 10, 1), -- 16354

(5303418, 16354, 530, 7679.11, -6782.89, 69.6863, 3.12846, 300, 300, 5, 1), -- cant confirm or deny
(5303419, 16354, 530, 7516.8, -7674.19, 147.884, 2.96242, 300, 300, 10, 1),
(5303420, 16354, 530, 7583.93, -7583.94, 148.664, 4.77198, 300, 300, 10, 1),
(5303421, 16354, 530, 7583.8, -7782.79, 146.95, 1.56127, 300, 300, 10, 1),
(5303422, 16354, 530, 7593.6, -7842.03, 161.097, 4.19627, 300, 300, 10, 1),
(5303423, 16354, 530, 7634.12, -7816.52, 156.259, 0.707691, 300, 300, 10, 1),
(5303424, 16354, 530, 7681.5, -7821.97, 154.805, 4.55755, 300, 300, 10, 1),
(5303425, 16354, 530, 7583.22, -7901.36, 192.421, 1.46996, 300, 300, 10, 1),
(5303426, 16354, 530, 7448.31, -7782.57, 141.648, 1.24686, 300, 300, 10, 1),
(5303427, 16354, 530, 7475.59, -7751.07, 137.625, 4.23447, 300, 300, 10, 1),
(5303428, 16354, 530, 7468.29, -5777.75, 5.77243, 2.87483, 300, 300, 10, 1),
(5303429, 16354, 530, 7479.47, -5842.54, 6.9663, 4.99861, 300, 300, 10, 1),
(5303430, 16354, 530, 7463.05, -5882.84, 7.8849, 2.10784, 300, 300, 10, 1),
(5303431, 16354, 530, 7451.06, -5963.87, 6.397, 5.93202, 300, 300, 10, 1),
(5303432, 16354, 530, 7419.66, -6050.92, 12.1033, 3.54495, 300, 300, 20, 1),
(5303433, 16354, 530, 7337.86, -6064.5, 19.8712, 1.19283, 300, 300, 10, 1),
(5303434, 16354, 530, 7355.1, -6123.63, 16.3345, 3.06234, 300, 300, 10, 1),
(5303435, 16354, 530, 7478.53, -6249.65, 18.6405, 2.81452, 300, 300, 10, 1),
(5303436, 16354, 530, 7336.76, -6310.77, 49.8848, 1.81435, 300, 300, 5, 1),
(5303437, 16354, 530, 7375.83, -6150.03, 22.9967, 0.586326, 300, 300, 5, 1),
(5303438, 16354, 530, 7078.77, -5974.39, 10.3831, 2.28161, 300, 300, 20, 1),
(5303439, 16354, 530, 7061.78, -6020.9, 4.89067, 5.89514, 300, 300, 15, 1),
(5303440, 16354, 530, 7140.70, -6116.35, 14.830, 3.54713, 300, 300, 10, 1),
(5303441, 16354, 530, 7086.04, -6063.33, 2.91535, 4.69832, 300, 300, 10, 1),
(5303442, 16354, 530, 7099.27, -6031.08, 4.906, 6.23002, 300, 300, 5, 1),
(5303443, 16354, 530, 7313.89, -6354.62, 42.2376, 3.7464, 300, 300, 5, 1),
(5303444, 16354, 530, 7388.22, -6670.5, 16.2542, 1.26418, 300, 300, 10, 1),
(5303445, 16354, 530, 7116.83, -6795.46, 43.4571, 0.142953, 300, 300, 10, 1),
(5303446, 16354, 530, 7150.31, -6950.38, 46.3751, 2.02505, 300, 300, 10, 1),
(5303447, 16354, 530, 7115.16, -6998.81, 46.3056, 1.36425, 300, 300, 10, 1),
(5303448, 16354, 530, 7280.07, -6882.21, 46.1654, 4.07929, 300, 300, 15, 1),
(5303449, 16354, 530, 7046.41, -7049.9, 46.9246, 2.03532, 300, 300, 10, 1),
(5303450, 16354, 530, 7274.39, -6955.69, 47.2941, 5.97969, 300, 300, 10, 1),
(5303451, 16354, 530, 7281.86, -6835.17, 42.8191, 4.821, 300, 300, 15, 1),
(5303452, 16354, 530, 7278.32, -7412.46, 55.6944, 0.259548, 300, 300, 10, 1),
(5303453, 16354, 530, 7294.09, -7493.07, 69.3951, 4.86919, 300, 300, 20, 1),
(5303454, 16354, 530, 7218.3, -7528.5, 54.6863, 4.88525, 300, 300, 10, 1),
(5303455, 16354, 530, 7248.74, -7451.9, 57.3766, 3.17473, 300, 300, 10, 1),
(5303456, 16354, 530, 7347.69, -7485.73, 79.9133, 4.75737, 300, 300, 5, 1),
(5303457, 16354, 530, 7358.93, -7537.02, 88.1644, 1.86786, 300, 300, 5, 1),
(5303458, 16354, 530, 7173.89, -6985.57, 44.9795, 3.09471, 300, 300, 15, 1),
(5303459, 16354, 530, 7417.48, -7490.27, 101.753, 6.01428, 300, 300, 10, 1),
(5303460, 16354, 530, 7026.39, -6880.07, 48.4719, 1.00557, 300, 300, 10, 1),
(5303461, 16354, 530, 7222.69, -6748.02, 39.8734, 0.946025, 300, 300, 10, 1),
(5303462, 16354, 530, 7392.84, -6746.67, 28.3679, 2.29955, 300, 300, 15, 1),
(5303463, 16354, 530, 7422.20, -6709.87, 28.66, 0, 300, 300, 15, 1),
(5303464, 16354, 530, 7125.81, -7255.87, 46.50, 0, 300, 300, 10, 1),
(5303465, 16354, 530, 7344.75, -6451.14, 25.15, 0, 300, 300, 10, 1),
(5303466, 16354, 530, 7336.97, -7395.08, 73.68, 0, 300, 300, 10, 1),
(5303467, 16354, 530, 7458.54, -5913.41, 7.46, 0, 300, 300, 10, 1),
(5303468, 16354, 530, 7192.39, -7445.27, 53.87, 0, 300, 300, 20, 1),
(5303469, 16354, 530, 7328.58, -7585.29, 94.54, 0, 300, 300, 10, 1),
(5303470, 16354, 530, 7406.50, -7636.56, 114.82, 0, 300, 300, 20, 1),
(5303471, 16354, 530, 7236.50, -6087.02, 14.02, 0, 300, 300, 10, 1),

(5303472, 16355, 530, 6848.3, -6419.27, 27.0688, 2.73082, 300, 300, 5, 1),
(5303473, 16355, 530, 6892.4, -6423.03, 32.516, 6.05456, 300, 300, 10, 1),
(5303474, 16355, 530, 6884.8, -6398.32, 31.0382, 4.58707, 300, 300, 5, 1),
(5303475, 16355, 530, 6819.17, -6375, 29.4544, 2.69759, 300, 300, 5, 1),
(5303476, 16355, 530, 6778.28, -6411.35, 26.407, 5.6002, 300, 300, 5, 1),
(5303477, 16355, 530, 6751.51, -6393.18, 34.3896, 2.93685, 300, 300, 5, 1),
(5303478, 16355, 530, 6769.48, -6346.58, 43.0525, 2.75492, 300, 300, 20, 1),
(5303479, 16355, 530, 6680.28, -6543.99, 41.8649, 1.88545, 300, 300, 15, 1),
(5303480, 16355, 530, 7000.50, -6299.93, 43.86, 0, 300, 300, 10, 1),
(5303481, 16355, 530, 6645.42, -6638.24, 45.22, 0, 300, 300, 10, 1),
(5303482, 16355, 530, 6979.39, -6375.75, 41.59, 0, 300, 300, 20, 1),
(5303483, 16355, 530, 6810.12, -6614.06, 26.04, 0, 300, 300, 20, 1),
(5303484, 16355, 530, 6744.10, -6649.64, 40.38, 0, 300, 300, 20, 1),
(5303485, 16355, 530, 6818.20, -6274.49, 29.50, 0, 300, 300, 20, 1),
(5303486, 16355, 530, 6687.91, -6587.08, 43.86, 0, 300, 300, 10, 1),
(5303487, 16355, 530, 6648.10, -6593.04, 46.16, 0, 300, 300, 20, 1);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16349 FROM `creature` WHERE `guid` BETWEEN 5303259 AND 5303291;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16352 FROM `creature` WHERE `guid` BETWEEN 5303259 AND 5303291;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303259 AND 5303291;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16347 FROM `creature` WHERE `guid` BETWEEN 5303316 AND 5303327;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16353 FROM `creature` WHERE `guid` BETWEEN 5303316 AND 5303327;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303316 AND 5303327;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16350 FROM `creature` WHERE `guid` BETWEEN 5303328 AND 5303339;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16353 FROM `creature` WHERE `guid` BETWEEN 5303328 AND 5303339;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303328 AND 5303339;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16348 FROM `creature` WHERE `guid` BETWEEN 5303356 AND 5303391;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16354 FROM `creature` WHERE `guid` BETWEEN 5303356 AND 5303391;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303356 AND 5303391;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16351 FROM `creature` WHERE `guid` BETWEEN 5303392 AND 5303417;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16354 FROM `creature` WHERE `guid` BETWEEN 5303392 AND 5303417;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303392 AND 5303417;

-- Farstrider Solanna 16463
UPDATE `creature_template_addon` SET `b2_0_sheath` = 2 WHERE `entry` = 16463;

-- Provisioner Vredigar (16528)
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 16528 AND `item` = 28164; -- Tranquillien Flamberge
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 16528 AND `item` = 22991; -- Apprentice Boots
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 16528 AND `item` = 22992; -- Bogwalker Boots
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 16528 AND `item` = 22993; -- Volunteer's Greaves
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 16528 AND `item` = 28155; -- Apothecary's Waistband
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 16528 AND `item` = 28158; -- Batskin Belt
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 16528 AND `item` = 28162; -- Tranquillien Defender's Girdle
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 16528 AND `item` = 22986; -- Apothecary's Robe;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 16528 AND `item` = 22987; -- Deathstalker's Vest;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 16528 AND `item` = 22985; -- Suncrown Hauberk
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 16528 AND `item` = 22990; -- Tranquillien Champion's Cloak

-- Ghostlands Guardian 16541 - Stats
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 16541;

DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 16541);
DELETE FROM `creature_movement` WHERE `id` BETWEEN 5303970 AND 5303982;
DELETE FROM `creature` WHERE `id` = 16541;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303970, 16541, 530, 7569.6943359375, -6873.30224609375, 96.03675079345703125, 0.855211317539215087, 300, 300, 0, 0), -- 7575.41, -6874.24, 96.0452, 0.855211
(5303971, 16541, 530, 7563.650390625, -6870.078125, 96.036285400390625, 1.186823844909667968, 300, 300, 0, 0), -- 7562.8, -6865.32, 96.0422, 1.18682
(5303972, 16541, 530, 7565.37, -6807.69, 86.911, 2.33022, 300, 300, 0, 2),
(5303973, 16541, 530, 7656.14, -6854.95, 86.5801, 4.72984, 300, 300, 0, 2),
(5303974, 16541, 530, 7551.37744140625, -6777.89501953125, 90.45041656494140625, 4.956735134124755859, 300, 300, 0, 0),
(5303975, 16541, 530, 7559.49462890625, -6775.45751953125, 90.33811187744140625, 5.096361160278320312, 300, 300, 0, 0),
(5303976, 16541, 530, 7565.35, -6731.61, 83.6889, 2.90088, 300, 300, 0, 2),
(5303977, 16541, 530, 7478.38, -6771.39, 76.7461, 3.92699, 300, 300, 0, 2),
(5303978, 16541, 530, 7482.22, -6898.36, 96.6347, 0.717728, 300, 300, 0, 2),
(5303979, 16541, 530, 7150.67, -7072.73, 55.2816, 0.406755, 300, 300, 0, 2),
(5303980, 16541, 530, 7244.09, -7125.76, 61.1245, 0.406755, 300, 300, 0, 2),
(5303981, 16541, 530, 7182.63916015625, -7079.07275390625, 56.25724029541015625, 2.565634012222290039, 300, 300, 0, 0),
(5303982, 16541, 530, 7168.55322265625, -7095.7724609375, 56.25724029541015625, 2.426007747650146484, 300, 300, 0, 0);

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(5303978, 1, 7478.8, -6901.36, 97.8091, 0, 0, 0, NULL),
(5303978, 2, 7450.9, -6915.15, 103.375, 0, 0, 0, NULL),
(5303978, 3, 7433.08, -6937.27, 107.413, 0, 0, 0, NULL),
(5303978, 4, 7425.6, -6974.17, 112.758, 0, 0, 0, NULL),
(5303978, 5, 7408.75, -6988.84, 111.95, 0, 0, 0, NULL),
(5303978, 6, 7397.44, -7007.23, 104.893, 0, 0, 0, NULL),
(5303978, 7, 7377.75, -7025.28, 97.1358, 0, 0, 0, NULL),
(5303978, 8, 7368.27, -7049.35, 91.127, 0, 0, 0, NULL),
(5303978, 9, 7361.64, -7077.51, 81.0359, 0, 0, 0, NULL),
(5303978, 10, 7333.41, -7099.64, 65.1055, 0, 0, 0, NULL),
(5303978, 11, 7294.18, -7106.22, 54.3248, 0, 0, 0, NULL),
(5303978, 12, 7333.41, -7099.64, 65.1055, 0, 0, 0, NULL),
(5303978, 13, 7361.64, -7077.51, 81.0359, 0, 0, 0, NULL),
(5303978, 14, 7368.27, -7049.35, 91.127, 0, 0, 0, NULL),
(5303978, 15, 7377.75, -7025.28, 97.1358, 0, 0, 0, NULL),
(5303978, 16, 7397.44, -7007.23, 104.893, 0, 0, 0, NULL),
(5303978, 17, 7408.75, -6988.84, 111.95, 0, 0, 0, NULL),
(5303978, 18, 7425.6, -6974.17, 112.758, 0, 0, 0, NULL),
(5303978, 19, 7433.08, -6937.27, 107.413, 0, 0, 0, NULL),
(5303978, 20, 7450.9, -6915.15, 103.375, 0, 0, 0, NULL),
(5303978, 21, 7478.61, -6901.51, 97.811, 0, 0, 0, NULL),
(5303978, 22, 7494.63, -6887.54, 93.349, 0, 0, 0, NULL),
(5303972, 1, 7578.85, -6821.89, 86.51, 0, 0, 0, NULL),
(5303972, 2, 7577.39, -6855.25, 93.0479, 0, 0, 0, NULL),
(5303972, 3, 7595.78, -6869.36, 93.8915, 0, 0, 0, NULL),
(5303972, 4, 7592.44, -6886.04, 95.0496, 0, 0, 0, NULL),
(5303972, 5, 7581.92, -6904.62, 101.79, 0, 0, 0, NULL),
(5303972, 6, 7567.56, -6915.81, 107.499, 0, 0, 0, NULL),
(5303972, 7, 7547.67, -6907.46, 111.913, 0, 0, 0, NULL),
(5303972, 8, 7565.5, -6879.02, 111.914, 0, 0, 0, NULL),
(5303972, 9, 7557.38, -6889.91, 111.92, 0, 0, 0, NULL),
(5303972, 10, 7549.75, -6908.67, 111.913, 0, 0, 0, NULL),
(5303972, 11, 7564.3, -6915.3, 108.688, 0, 0, 0, NULL),
(5303972, 12, 7575.96, -6912.18, 104.407, 0, 0, 0, NULL),
(5303972, 13, 7586.79, -6894.11, 96.9866, 0, 0, 0, NULL),
(5303972, 14, 7593.36, -6876.55, 95.0603, 0, 0, 0, NULL),
(5303972, 15, 7588.45, -6861.69, 93.0504, 0, 0, 0, NULL),
(5303972, 16, 7579.62, -6834.52, 88.3193, 0, 0, 0, NULL),
(5303972, 17, 7561.69, -6831.23, 87.7964, 0, 0, 0, NULL),
(5303972, 18, 7546.12, -6817.42, 86.2425, 0, 0, 0, NULL),
(5303972, 19, 7560.94, -6803.69, 87.0204, 0, 0, 0, NULL),
(5303972, 20, 7556.85, -6782.33, 89.646, 0, 0, 0, NULL),
(5303972, 21, 7560.94, -6803.69, 87.0204, 0, 0, 0, NULL),
(5303972, 22, 7546.12, -6817.42, 86.2425, 0, 0, 0, NULL),
(5303972, 23, 7561.69, -6831.23, 87.7964, 0, 0, 0, NULL),
(5303972, 24, 7579.62, -6834.52, 88.3193, 0, 0, 0, NULL),
(5303972, 25, 7588.45, -6861.69, 93.0504, 0, 0, 0, NULL),
(5303972, 26, 7593.36, -6876.55, 95.0603, 0, 0, 0, NULL),
(5303972, 27, 7586.85, -6893.78, 96.8434, 0, 0, 0, NULL),
(5303972, 28, 7575.96, -6912.18, 104.407, 0, 0, 0, NULL),
(5303972, 29, 7564.3, -6915.3, 108.688, 0, 0, 0, NULL),
(5303972, 30, 7549.75, -6908.67, 111.913, 0, 0, 0, NULL),
(5303972, 31, 7557.38, -6889.91, 111.92, 0, 0, 0, NULL),
(5303972, 32, 7565.5, -6879.02, 111.914, 0, 0, 0, NULL),
(5303972, 33, 7547.67, -6907.46, 111.913, 0, 0, 0, NULL),
(5303972, 34, 7567.56, -6915.81, 107.499, 0, 0, 0, NULL),
(5303972, 35, 7581.92, -6904.62, 101.79, 0, 0, 0, NULL),
(5303972, 36, 7592.44, -6886.04, 95.0496, 0, 0, 0, NULL),
(5303972, 37, 7595.78, -6869.36, 93.8915, 0, 0, 0, NULL),
(5303972, 38, 7577.39, -6855.25, 93.0479, 0, 0, 0, NULL),
(5303972, 39, 7578.85, -6821.89, 86.51, 0, 0, 0, NULL),
(5303972, 40, 7561.04, -6803.13, 87.0204, 0, 0, 0, NULL),
(5303972, 41, 7556.55, -6782.23, 89.6574, 0, 0, 0, NULL),
(5303972, 42, 7561.04, -6803.13, 87.0204, 0, 0, 0, NULL),
(5303976, 1, 7541.16, -6725.66, 80.0321, 0, 0, 0, NULL),
(5303976, 2, 7526.52, -6733.02, 80.3507, 0, 0, 0, NULL),
(5303976, 3, 7504.32, -6733.56, 72.1311, 0, 0, 0, NULL),
(5303976, 4, 7491.94, -6754.41, 73.4703, 0, 0, 0, NULL),
(5303976, 5, 7479.53, -6762.07, 74.6706, 0, 0, 0, NULL),
(5303976, 6, 7491.94, -6754.41, 73.4703, 0, 0, 0, NULL),
(5303976, 7, 7504.32, -6733.56, 72.1311, 0, 0, 0, NULL),
(5303976, 8, 7526.52, -6733.02, 80.3507, 0, 0, 0, NULL),
(5303976, 9, 7541.16, -6725.66, 80.0321, 0, 0, 0, NULL),
(5303976, 10, 7574.31, -6733.81, 84.1163, 0, 0, 0, NULL),
(5303976, 11, 7592.07, -6752.4, 89.1326, 0, 0, 0, NULL),
(5303976, 12, 7604.94, -6768.97, 85.3537, 0, 0, 0, NULL),
(5303976, 13, 7592.07, -6752.4, 89.1326, 0, 0, 0, NULL),
(5303976, 14, 7574.31, -6733.81, 84.1163, 0, 0, 0, NULL),
(5303973, 1, 7650.74, -6837.04, 83.7188, 0, 0, 0, NULL),
(5303973, 2, 7638.75, -6820.12, 79.5789, 0, 0, 0, NULL),
(5303973, 3, 7633.36, -6795.19, 77.4476, 0, 0, 0, NULL),
(5303973, 4, 7612.67, -6772.8, 81.4838, 0, 0, 0, NULL),
(5303973, 5, 7633.36, -6795.19, 77.4476, 0, 0, 0, NULL),
(5303973, 6, 7638.75, -6820.12, 79.5789, 0, 0, 0, NULL),
(5303973, 7, 7650.74, -6837.04, 83.7188, 0, 0, 0, NULL),
(5303973, 8, 7656.31, -6859.68, 88.1338, 0, 0, 0, NULL),
(5303977, 1, 7477.56, -6774.37, 77.3476, 0, 0, 0, NULL),
(5303977, 2, 7479.77, -6796.24, 75.9961, 0, 0, 0, NULL),
(5303977, 3, 7480.8, -6835.14, 76.4511, 0, 0, 0, NULL),
(5303977, 4, 7480.55, -6864.14, 87.3156, 0, 0, 0, NULL),
(5303977, 5, 7491.06, -6888.16, 93.6417, 0, 0, 0, NULL),
(5303977, 6, 7481.44, -6900.98, 97.1931, 0, 0, 0, NULL),
(5303977, 7, 7491.06, -6888.16, 93.6417, 0, 0, 0, NULL),
(5303977, 8, 7480.6, -6864.34, 87.3156, 0, 0, 0, NULL),
(5303977, 9, 7480.8, -6835.34, 76.3156, 0, 0, 0, NULL),
(5303977, 10, 7479.77, -6796.27, 76.0371, 0, 0, 0, NULL),
(5303980, 1, 7243.13, -7095.02, 64.3899, 0, 0, 0, NULL),
(5303980, 2, 7224.58, -7078.63, 58.6992, 0, 0, 0, NULL),
(5303980, 3, 7189.42, -7063.73, 58.1052, 0, 0, 0, NULL),
(5303980, 4, 7149.86, -7073.07, 54.9314, 0, 0, 0, NULL),
(5303980, 5, 7138.57, -7099.07, 56.6913, 0, 0, 0, NULL),
(5303980, 6, 7131.9, -7117.26, 58.934, 0, 0, 0, NULL),
(5303980, 7, 7150.35, -7138.76, 54.7062, 0, 0, 0, NULL),
(5303980, 8, 7188.12, -7144.33, 55.6607, 0, 0, 0, NULL),
(5303980, 9, 7219.08, -7136.55, 59.0705, 0, 0, 0, NULL),
(5303980, 10, 7245.4, -7125.19, 61.2178, 0, 0, 0, NULL),
(5303979, 1, 7150.67, -7072.73, 55.2816, 100, 0, 0, NULL),
(5303979, 2, 7140.17, -7095.67, 56.3249, 100, 0, 0, NULL),
(5303979, 3, 7134.29, -7111.14, 58.849, 100, 0, 0, NULL),
(5303979, 4, 7149.6, -7137.55, 55.1999, 100, 0, 0, NULL),
(5303979, 5, 7183.91, -7143.59, 56.0304, 100, 0, 0, NULL),
(5303979, 6, 7218.18, -7136.88, 58.9934, 100, 0, 0, NULL),
(5303979, 7, 7235.5, -7129.49, 60.6592, 100, 0, 0, NULL),
(5303979, 8, 7243.87, -7125.85, 61.1093, 100, 30000, 0, NULL),
(5303979, 9, 7243.13, -7095.02, 61.9528, 100, 0, 0, NULL),
(5303979, 10, 7224.58, -7078.63, 58.6992, 100, 0, 0, NULL),
(5303979, 11, 7189.42, -7063.73, 58.1052, 100, 0, 0, NULL);

-- Ghostlands Guardian - RP Event, guard "right?" infront of main questgiver house - handles rp event?
-- Yell "Text: Here they come again!  Stand ready!"
-- "That's done it!  Hopefully Rommath will send reinforcements soon."
-- "Another batch of Scourge has been destroyed!"

-- ========
-- Critters
-- ========

DELETE FROM `creature` WHERE `map` = 530 and `position_x` > 6000 and `position_x` < 8200 and `id` IN (1420,4075,2914,14881,13321,16030,16068);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5303821, 1420, 530, 8178.06, -7180.67, 137.686, 6.18598, 900, 900, 10, 1), -- 13321
(5303822, 13321, 530, 8111.52, -7125.98, 137.988, 3.70324, 900, 900, 10, 1), -- 1420
(5303823, 1420, 530, 7895.5, -7727.47, 143.771, 1.90436, 900, 900, 10, 1), -- 13321
(5303824, 1420, 530, 7744.64, -7744.09, 142.789, 2.13379, 900, 900, 10, 1), -- 13321
(5303825, 1420, 530, 7822, -7632.74, 139.024, 5.88754, 900, 900, 15, 1), -- 13321
(5303826, 1420, 530, 7945.17, -7581.22, 138.439, 4.38971, 900, 900, 15, 1), -- 13321
(5303827, 1420, 530, 7952.89, -7686.6, 143.166, 4.24525, 900, 900, 10, 1), -- 13321
(5303828, 1420, 530, 7951.29, -7480.88, 143.06, 0.816021, 900, 900, 10, 1), -- 13321
(5303829, 13321, 530, 7832.41, -7757.51, 142.432, 1.10966, 900, 900, 15, 1), -- 1420
(5303830, 13321, 530, 7737.08, -7648.37, 144.066, 3.05644, 900, 900, 15, 1), -- 1420
(5303831, 13321, 530, 7626.77, -7716.26, 141.674, 2.73204, 900, 900, 15, 1), -- 1420
(5303832, 13321, 530, 7607.61, -7614.02, 140.887, 3.57525, 900, 900, 15, 1), -- 1420
(5303833, 1420, 530, 7970.99, -6795.04, 55.08, 0.086904, 900, 900, 10, 1), -- 13321
(5303834, 1420, 530, 8125.85, -7297.00, 139.96, 0.191411, 900, 900, 10, 1), -- 13321
(5303835, 1420, 530, 8143.93, -7402.35, 149.033, 4.71337, 900, 900, 10, 1), -- 13321
(5303836, 13321, 530, 8033.88, -7507.48, 146.774, 3.99703, 900, 900, 10, 1), -- 1420
(5303837, 13321, 530, 7096.56, -7355.17, 45.2241, 3.27988, 900, 900, 10, 1), -- 1420
(5303838, 13321, 530, 7558.57, -6355.45, 12.184, 1.58788, 900, 900, 10, 1), -- 1420
(5303839, 13321, 530, 8002.47, -6997.24, 57.1849, 3.01336, 900, 900, 10, 1), -- 1420
(5303840, 13321, 530, 7206.86, -6860.88, 43.5585, 4.11195, 900, 900, 10, 1), -- 1420
(5303841, 1420, 530, 6873.02, -6294.04, 29.271, 0.264349, 900, 900, 10, 1), -- 1420
(5303842, 1420, 530, 7995.61, -6621.69, 59.5109, 5.36995, 900, 900, 10, 1), -- 1420
(5303843, 1420, 530, 7992.47, -6910.58, 54.7768, 0.236685, 900, 900, 10, 1), -- 1420
(5303844, 1420, 530, 7528.15, -6225.29, 14.2036, 5.72552, 900, 900, 10, 1), -- 1420
(5303845, 1420, 530, 8120.36, -7183.88, 140.76, 2.20642, 900, 900, 10, 1), -- 1420
(5303846, 1420, 530, 8027.77, -7424.14, 145.194, 3.68545, 900, 900, 10, 1), -- 1420
(5303847, 1420, 530, 8060.99, -7690.69, 144.936, 5.7657, 900, 900, 10, 1), -- 1420
(5303848, 1420, 530, 7608.82, -6507.44, 11.6294, 4.18051, 900, 900, 10, 1), -- 1420
(5303849, 1420, 530, 6973.85, -7359.93, 44.0361, 6.0446, 900, 900, 10, 1), -- 1420
(5303850, 1420, 530, 8055.47, -7122.11, 138.232, 5.43847, 900, 900, 10, 1), -- 1420
(5303851, 1420, 530, 7508.36, -6286.98, 14.6191, 1.94301, 900, 900, 10, 1), -- 1420
(5303852, 1420, 530, 7514.03, -6140.95, 15.2963, 5.29093, 900, 900, 10, 1), -- 1420
(5303853, 1420, 530, 8040.43, -6490.8, 56.9188, 4.92666, 900, 900, 10, 1), -- 1420
(5303854, 1420, 530, 7487.2, -6195.65, 12.556, 3.88808, 900, 900, 10, 1), -- 1420
(5303855, 1420, 530, 7552.33, -6494.21, 14.2573, 1.28281, 900, 900, 10, 1), -- 1420
(5303856, 1420, 530, 7033.92, -7326.69, 45.2658, 2.88412, 900, 900, 10, 1), -- 1420
(5303857, 1420, 530, 7920.12, -7585.42, 146.12, 5.84865, 900, 900, 10, 1), -- 1420
(5303858, 1420, 530, 8148.43, -7719.5, 148.721, 4.04, 900, 900, 10, 1), -- 1420

(5303859, 2914, 530, 8088.44, -7793.31, 165.861, 3.12349, 900, 900, 20, 1),
(5303860, 2914, 530, 8122.43, -7848.25, 177.627, 1.22571, 900, 900, 20, 1),
(5303861, 2914, 530, 7446.54, -7870.08, 156.888, 1.9788, 900, 900, 20, 1),
(5303862, 2914, 530, 7442.94, -7943.55, 158.825, 5.42859, 900, 900, 20, 1),
(5303863, 2914, 530, 7299.63, -7806.02, 149.964, 1.03804, 900, 900, 20, 1),
(5303864, 2914, 530, 6828.62, -7397.77, 46.4894, 3.38529, 900, 900, 20, 1),
(5303865, 2914, 530, 6763.17, -7364.5, 50.5972, 2.80516, 900, 900, 20, 1),
(5303866, 2914, 530, 6635.85, -7297.62, 53.3557, 0.389342, 900, 900, 20, 1),
(5303867, 2914, 530, 6964.73, -7463.76, 47.1557, 2.38242, 900, 900, 20, 1),
(5303868, 2914, 530, 7065.47, -7498.48, 47.0109, 0.54873, 900, 900, 20, 1),
(5303869, 2914, 530, 8129.4, -7747.66, 154.667, 3.62679, 900, 900, 20, 1),

-- 16068 might be bit more limited
(5303870, 4075, 530, 7488.58, -6846.12, 82.36, 4.20185, 900, 900, 15, 1), -- 16068,14881
(5303871, 4075, 530, 7591.83, -6378.20, 13.71, 4.74311, 900, 900, 15, 1), -- 16068,14881
(5303872, 14881, 530, 7572.14, -6776.58, 88.90, 5.69515, 900, 900, 15, 1), -- 16068,4075
(5303873, 14881, 530, 7892.23, -7813.05, 166.2, 0.393725, 900, 900, 15, 1), -- 16068,4075
(5303874, 14881, 530, 7895.20, -6560.93, 49.84, 0.358996, 900, 900, 15, 1), -- 16068,4075
(5303875, 14881, 530, 7707.48, -6278.86, 24.1611, 1.00733, 900, 900, 15, 1), -- 16068,4075
(5303876, 16068, 530, 7810.04, -6433.93, 14.7581, 2.22328, 900, 900, 15, 1), -- 14881,4075
(5303877, 4075, 530, 7939.91, -6208.44, 20.9746, 3.7849, 900, 900, 15, 1), -- 16068
(5303878, 4075, 530, 7932.25, -6097.27, 15.6152, 3.42432, 900, 900, 15, 1), -- 16068
(5303879, 4075, 530, 7311.25, -5989.16, 15.91, 2.67569, 900, 900, 15, 1), -- 14881
(5303880, 4075, 530, 7410.09, -6195.6, 24.5014, 1.77221, 900, 900, 15, 1), -- 14881
(5303881, 4075, 530, 7275.35, -6371.42, 43.3359, 5.87547, 900, 900, 15, 1), -- 14881
(5303882, 14881, 530, 7583.83, -6184.27, 17.6482, 0.361285, 900, 900, 15, 1), -- 4075
(5303883, 16068, 530, 7608.72, -6897.39, 94.18, 3.95924, 900, 900, 15, 1), -- 4075,14881
(5303884, 16068, 530, 7963.99, -7397.50, 142.36, 1.11545, 900, 900, 15, 1), -- 14881
(5303885, 16068, 530, 7169.15, -6230.63, 20.3345, 3.38657, 900, 900, 15, 1), -- 14881
(5303886, 16068, 530, 7239.06, -6248.54, 20.96, 3.41991, 900, 900, 15, 1), -- 14881
(5303887, 4075, 530, 7791.29, -7874.09, 167.414, 5.78184, 900, 900, 15, 1), -- 4075,14881
(5303888, 4075, 530, 6446.28, -6227.85, 64.003, 5.1886, 900, 900, 15, 1), -- 14881
(5303889, 4075, 530, 7418.06, -6732.09, 26.4651, 3.22497, 900, 900, 15, 1), -- 4075,14881,16068
(5303890, 4075, 530, 7088.48, -7108.75, 46.7367, 3.26945, 900, 900, 15, 1), -- 4075,14881, 
(5303891, 4075, 530, 7943.7, -7260.3, 137.971, 4.74687, 900, 900, 15, 1), -- 4075,14881, 
(5303892, 4075, 530, 6987.46, -7303.77, 44.051, 5.75806, 900, 900, 15, 1), -- 4075,14881,
(5303893, 14881, 530, 7296.01, -7027.68, 48.1696, 5.47646, 900, 900, 15, 1), -- 16068
(5303894, 14881, 530, 7093.5, -6855.83, 47.6813, 0.983709, 900, 900, 15, 1), -- 14881, 14881,16068,
(5303895, 14881, 530, 6909.99, -6315.15, 32.8663, 1.62775, 900, 900, 15, 1), -- 14881,16068
(5303896, 16068, 530, 7768.71, -6708.43, 37.8205, 1.21759, 900, 900, 15, 1), -- 4075,14881,16068

(5303897, 4075, 530, 7637.33, -7439.97, 162.96, 4.68078, 900, 900, 5, 1),
(5303898, 4075, 530, 7637.93, -7399.66, 162.16, 1.78623, 900, 900, 5, 1),
(5303899, 4075, 530, 7574.93, -7359.85, 161.737, 1.13992, 900, 900, 5, 1),
(5303900, 4075, 530, 7566.2, -7347.42, 161.737, 0.585648, 900, 900, 5, 1),
(5303901, 4075, 530, 7605.08, -7366.5, 162.297, 0.758985, 900, 900, 5, 1),
(5303902, 4075, 530, 7639.35, -7351.73, 162.335, 4.72994, 900, 900, 5, 1),
(5303903, 4075, 530, 7606.85, -7302.92, 155.228, 1.27164, 900, 900, 5, 1),
(5303904, 4075, 530, 7641.79, -7306.17, 155.185, 2.07363, 900, 900, 5, 1),
(5303905, 4075, 530, 7607.56, -7259.04, 155.329, 4.72778, 900, 900, 5, 1),
(5303906, 4075, 530, 7637.49, -7252.27, 155.152, 2.16218, 900, 900, 5, 1),
(5303907, 4075, 530, 7647.18, -7216.74, 156.154, 5.48125, 900, 900, 5, 1),
(5303908, 4075, 530, 6570.68, -6488.41, 35.10, 3.85022, 900, 900, 5, 1),
(5303909, 4075, 530, 6409.31, -6522.44, 75.6236, 1.40793, 900, 900, 5, 1),
(5303910, 4075, 530, 6589.34, -6247.18, 45.4899, 4.41102, 900, 900, 5, 1),
(5303911, 4075, 530, 6659.16, -6298.91, 29.3592, 3.87902, 900, 900, 5, 1),

(5303912, 14881, 530, 7853.74, -7008.52, 102.359, 2.90779, 900, 900, 15, 1),
(5303913, 14881, 530, 7556.8, -7546.87, 138.935, 1.25275, 900, 900, 15, 1),
(5303914, 14881, 530, 7532.26, -7832.15, 149.558, 2.81094, 900, 900, 15, 1),
(5303915, 14881, 530, 7827.62, -6077.33, 18.8619, 0.228629, 900, 900, 15, 1),
(5303916, 14881, 530, 7112.74, -5959.45, 12.8894, 2.83219, 900, 900, 15, 1),
(5303917, 14881, 530, 7096.66, -6695.13, 42.0294, 3.9535, 900, 900, 15, 1),
(5303918, 14881, 530, 7175.87, -7261.34, 45.3701, 1.26549, 900, 900, 15, 1),
(5303919, 14881, 530, 7119.83, -6671.28, 45.5699, 5.10818, 900, 900, 15, 1),
(5303920, 14881, 530, 6909.12, -7114.11, 45.9108, 0.654157, 900, 900, 15, 1),
(5303921, 14881, 530, 7811.86, -6745.96, 39.455, 3.72975, 900, 900, 15, 1),
(5303922, 14881, 530, 7253.45, -7404.35, 53.9951, 0.85624, 900, 900, 15, 1),
(5303923, 14881, 530, 7390.22, -7496.83, 91.2706, 5.54681, 900, 900, 15, 1),
(5303924, 14881, 530, 6745.69, -6628.14, 38.2327, 0.244387, 900, 900, 15, 1),
(5303925, 14881, 530, 7306.92, -6886.92, 48.8813, 0.19007, 900, 900, 15, 1),
(5303926, 14881, 530, 7558.11, -7820.88, 152.833, 3.62345, 900, 900, 15, 1),
(5303927, 14881, 530, 7366.92, -7655.67, 114.255, 2.70154, 900, 900, 15, 1),

(5303928, 4075, 530, 6384.81, -6380.22, 67.09, 1.20082, 900, 900, 15, 1), -- 16030
(5303929, 4075, 530, 6299.71, -6294.95, 79.2907, 5.21113, 900, 900, 15, 1), -- 16030
(5303930, 16030, 530, 7580.35, -6581.12, 14.00, 3.7696, 900, 900, 5, 1),
(5303931, 16030, 530, 7545.10, -6588.50, 11.59, 0.196805, 900, 900, 5, 1),
(5303932, 16030, 530, 7197.41, -6416.46, 59.1658, 3.0673, 900, 900, 10, 1),
(5303933, 16030, 530, 7225.98, -6412.22, 57.1505, 1.64461, 900, 900, 5, 1),
(5303934, 16030, 530, 7080.56, -6520.89, 8.74, 5.44337, 900, 900, 5, 1),
(5303935, 16030, 530, 7051.95, -6547.35, 9.61, 0.840156, 900, 900, 5, 1),
(5303936, 16030, 530, 7213.62, -6520.20, 10.47, 4.56041, 900, 900, 5, 1),
(5303937, 16030, 530, 7246.93, -6514.24, 10.91, 0.88212, 900, 900, 5, 1),
(5303938, 16030, 530, 7312.89, -6578.85, 9.41, 0.523072, 900, 900, 5, 1),
(5303939, 16030, 530, 7281.87, -6552.43, 11.44, 5.27231, 900, 900, 5, 1),
(5303940, 16030, 530, 7451.33, -6550.71, 10.8363, 2.49832, 900, 900, 5, 1),
(5303941, 16030, 530, 7453.79, -6579.75, 9.62054, 4.89678, 900, 900, 5, 1),
(5303942, 16030, 530, 7514.79, -6579.25, 9.87, 0.541563, 900, 900, 5, 1),
(5303943, 16030, 530, 7605.24, -6612.6, 13.4115, 1.50046, 900, 900, 5, 1),
(5303944, 16030, 530, 7786.02, -6615.50, 23.31, 5.10601, 900, 900, 5, 1),
(5303945, 16030, 530, 7382.04, -6580.33, 10.13, 0.712991, 900, 900, 5, 1),
(5303946, 16030, 530, 7354.97, -6550.74, 11.74, 4.89903, 900, 900, 5, 1),
(5303947, 16030, 530, 7196.1, -6620.98, 63.6581, 2.91104, 900, 900, 10, 1),
(5303948, 16030, 530, 6990.56, -6577.36, 10.2402, 3.8777, 900, 900, 5, 1),
(5303949, 16030, 530, 6923.3, -6586.66, 9.60756, 2.39419, 900, 900, 5, 1),
(5303950, 16030, 530, 6983.94, -6517.59, 9.79063, 4.25257, 900, 900, 5, 1),
(5303951, 16030, 530, 6884.93, -6517.60, 17.42, 4.17458, 900, 900, 5, 1),
(5303952, 16030, 530, 6807.44, -6485.34, 16.802, 1.86898, 900, 900, 5, 1),
(5303953, 16030, 530, 6753.22, -6480.41, 21.7116, 1.67307, 900, 900, 5, 1),
(5303954, 16030, 530, 6782.84, -6511.75, 18.728, 0.419415, 900, 900, 5, 1),
(5303955, 16030, 530, 7163.1, -6612.31, 60.7394, 4.66032, 900, 900, 5, 1),
(5303956, 16030, 530, 6659.44, -6372.3, 33.8854, 0.480802, 900, 900, 5, 1),
(5303957, 16030, 530, 6437.94, -6497.81, 58.272, 4.66557, 900, 900, 5, 1),
(5303958, 16030, 530, 6364.01, -6472.29, 70.6407, 5.46709, 900, 900, 5, 1),
(5303959, 16030, 530, 6320.68, -6420.54, 80.3665, 4.36833, 900, 900, 5, 1),
(5303960, 16030, 530, 6519.12, -6442.96, 42.3061, 3.69709, 900, 900, 5, 1),
(5303961, 16030, 530, 6572.57, -6557.44, 45.1431, 3.05759, 900, 900, 5, 1),
(5303962, 16030, 530, 6367.79, -6239.85, 65.3898, 3.668, 900, 900, 5, 1),
(5303963, 16030, 530, 6426.53, -6236.33, 65.9069, 0.794857, 900, 900, 5, 1),
(5303964, 16030, 530, 6527.39, -6293.9, 46.9009, 2.20057, 900, 900, 5, 1),
(5303965, 16030, 530, 6529.57, -6204.83, 62.8298, 3.50419, 900, 900, 5, 1),
(5303966, 16030, 530, 6425.04, -6291.09, 60.7602, 0.516352, 900, 900, 5, 1),
(5303967, 16030, 530, 6576.56, -6354.69, 32.1466, 5.09274, 900, 900, 5, 1),
(5303968, 16030, 530, 6655.24, -6289.18, 29.1111, 3.07787, 900, 900, 5, 1),
(5303969, 16030, 530, 6474.51, -6210.08, 61.8326, 6.18861, 900, 900, 5, 1);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1420 FROM `creature` WHERE `guid` BETWEEN 5303821 AND 5303858;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 13321 FROM `creature` WHERE `guid` BETWEEN 5303821 AND 5303858;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303821 AND 5303858;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4075 FROM `creature` WHERE `guid` BETWEEN 5303870 AND 5303896;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 14881 FROM `creature` WHERE `guid` BETWEEN 5303870 AND 5303896;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16068 FROM `creature` WHERE `guid` BETWEEN 5303870 AND 5303896;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303870 AND 5303896;

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 4075 FROM `creature` WHERE `guid` BETWEEN 5303928 AND 5303929;
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16030 FROM `creature` WHERE `guid` BETWEEN 5303928 AND 5303929;
UPDATE `creature` SET `id` = 0 WHERE `guid` BETWEEN 5303928 AND 5303929;

-- Innkeeper Kalarin (16542) - npc_innkeeper
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 413 AND `item` = 159; -- Refreshing Spring Water
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 413 AND `item` = 1179; -- Ice Cold Milk
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 413 AND `item` = 1205; -- Melon Juice
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 413 AND `item` = 1708; -- Sweet Nectar
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 413 AND `item` = 1645; -- Moonberry Juice
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 413 AND `item` = 8766; -- Morning Glory Dew
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 413 AND `item` = 4536; -- Shiny Red Apple
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 413 AND `item` = 4537; -- Tel'Abim Banana
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 413 AND `item` = 4538; -- Snapvine Watermelon
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 413 AND `item` = 4539; -- Goldenbark Apple
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 413 AND `item` = 4602; -- Moon Harvest Pumpkin
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 413 AND `item` = 8953; -- Deep Fried Plantains

-- Night Elf Corpse (16804) - we have all in guid range 150k

-- Blacksmith Frances (17655)
UPDATE `creature_template` SET `InteractionPauseTimer` = 30000 WHERE `entry` = 17655; -- guessed
DELETE FROM `creature_movement_template` WHERE `Entry` = 17655;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(17655, 0, 1, 7600.0645, -6907.846, 93.764725, 4.4572973, 30000, 1765501, NULL), -- timer guessed
(17655, 0, 2, 7600.5234, -6904.9946, 93.88599, 1.7802358, 30000, 0, NULL),
(17655, 0, 3, 7598.409, -6904.8096, 94.34996, 100, 0, 0, NULL),
(17655, 0, 4, 7596.7944, -6905.6245, 94.31394, 3.996804, 16000, 1765502, NULL),
(17655, 0, 5, 7600.5234, -6904.9946, 93.88599, 1.7802358, 45000, 0, NULL),
(17655, 0, 6, 7603.586, -6905.457, 93.76858, 0.82030475, 40000, 1765503, NULL),
(17655, 0, 7, 7600.5234, -6904.9946, 93.88599, 1.7802358, 30000, 0, NULL),
(17655, 0, 8, 7598.409, -6904.8096, 94.34996, 100, 0, 0, NULL),
(17655, 0, 9, 7596.7944, -6905.6245, 94.31394, 3.996804, 16000, 1765502, NULL),
(17655, 0, 10, 7604.855, -6905.6206, 93.76188, 0.82030475, 40000, 1765503, NULL),
(17655, 0, 11, 7600.5234, -6904.9946, 93.88599, 1.7802358, 0, 0, NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` BETWEEN 1765501 AND 1765503;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1765501, 1000, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - SHEATH_STATE_UNARMED'),
(1765501, 1000, 1, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_STATE_USESTANDING'),
(1765501, 29000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_NONE'),

(1765502, 2000, 0, 54, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - SHEATH_STATE_MELEE'),
(1765502, 2000, 1, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_STATE_WORK_NOSHEATHE_MINING'),
(1765502, 15000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_NONE'),

(1765503, 2000, 0, 54, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - SHEATH_STATE_MELEE'),
(1765503, 2000, 1, 42, 0, 0, 0, 0, 0, 0, 2703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - UNIT_VIRTUAL_ITEM_SLOT_ID'),
(1765503, 3000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 9000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 15000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 21000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 27000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 33000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - EMOTE_ONESHOT_EAT_NOSHEATHE'),
(1765503, 39000, 0, 42, 0, 0, 0, 0, 0, 0, 1903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksmith Frances - UNIT_VIRTUAL_ITEM_SLOT_ID');

-- Samir (23724) - Same List
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 116 AND `item` = 2901; -- Mining Pick
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 116 AND `item` = 5956; -- Blacksmith Hammer
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 116 AND `item` = 2880; -- Weak Flux
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 116 AND `item` = 3466; -- Strong Flux
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 116 AND `item` = 3857; -- Coal
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 116 AND `item` = 18567; -- Elemental Flux

-- Heron Skygaze (17656) - VendorList
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 18426;
DELETE FROM `npc_vendor` WHERE `entry` = 17656;

INSERT INTO `npc_vendor` (`entry`, `item`, `slot`) VALUES
(17656, 117, 1),(17656, 2287, 2),(17656, 3770, 3),(17656, 3771, 4),(17656, 4599, 5),(17656, 8952, 6),(17656, 787, 7),
(17656, 4592, 8),(17656, 4593, 9),(17656, 4594, 10),(17656, 21552, 11),(17656, 8957, 12),(17656, 4604, 13),
(17656, 4605, 14),(17656, 4606, 15),(17656, 4607, 16),(17656, 4608, 17),(17656, 8948, 18),(17656, 159, 19),
(17656, 1179, 20),(17656, 1205, 21),(17656, 1708, 22),(17656, 1645, 23),(17656, 8766, 24);

-- Terellia (18426)
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 18426;
DELETE FROM `npc_vendor` WHERE `entry` = 18426;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`) VALUES
(18426, 7005, 1),(18426, 6256, 4),(18426, 6217, 5),(18426, 5956, 2),(18426, 2901, 3),(18426, 2320, 7),(18426, 2321, 8),(18426, 2678, 9),(18426, 2692, 10),(18426, 2880, 11),
(18426, 2324, 18),(18426, 2604, 17),(18426, 6260, 16),(18426, 2605, 15),(18426, 3371, 6),(18426, 4289, 12),(18426, 6529, 13),(18426, 6530, 14);

-- ========
-- Zul'Aman
-- ========

-- Budd Nedreck (23559) - npc_budd_nedreck
-- Provisioner Ameenah (23560) - VendorList
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 136 AND `item` = 17034; -- Maple Seed
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 136 AND `item` = 17035; -- Stranglethorn Seed
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 136 AND `item` = 17036; -- Ashwood Seed
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 136 AND `item` = 17037; -- difference between 138 and 136
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 136 AND `item` = 17038; -- difference between 138 and 136
DELETE FROM `npc_vendor` WHERE `entry` IN (3335,19678,23560) AND `item` IN (17037,17038);
UPDATE `creature_template` SET `VendorTemplateId` = 136 WHERE `VendorTemplateId` = 138 AND `entry` IN (3335,19678,23560); -- 3335,19678,23560
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 136 AND `item` = 22147; -- Flintweed Seed
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 136 AND `item` = 17031; -- Rune of Teleportation
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 136 AND `item` = 17032; -- Rune of Portals
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 136 AND `item` = 17020; -- Arcane Powder
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 136 AND `item` = 17030; -- Ankh
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 136 AND `item` = 17033; -- Symbol of Divinity
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 136 AND `item` = 17028; -- Holy Candle
UPDATE `npc_vendor_template` SET `slot` = 13 WHERE `entry` = 136 AND `item` = 17029; -- Sacred Candle
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 136 AND `item` = 17021; -- Wild Berries
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 136 AND `item` = 17026; -- Wild Thornroot
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` = 136 AND `item` = 22148; -- Wild Quillvine
UPDATE `npc_vendor_template` SET `slot` = 17 WHERE `entry` = 136 AND `item` = 5565; -- Infernal Stone
UPDATE `npc_vendor_template` SET `slot` = 18 WHERE `entry` = 136 AND `item` = 16583; -- Demonic Figurine
UPDATE `npc_vendor_template` SET `slot` = 19 WHERE `entry` = 136 AND `item` = 21177; -- Symbol of Kings

UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 137 AND `item` = 17037; -- Hornbeam Seed
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 137 AND `item` = 17038; -- Ironwood Seed
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 137 AND `item` = 22147; -- Flintweed Seed
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 137 AND `item` = 17031; -- Rune of Teleportation
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 137 AND `item` = 17032; -- Rune of Portals
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 137 AND `item` = 17020; -- Arcane Powder
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 137 AND `item` = 17030; -- Ankh
UPDATE `npc_vendor_template` SET `slot` = 8 WHERE `entry` = 137 AND `item` = 17033; -- Symbol of Divinity
UPDATE `npc_vendor_template` SET `slot` = 9 WHERE `entry` = 137 AND `item` = 17028; -- Holy Candle
UPDATE `npc_vendor_template` SET `slot` = 10 WHERE `entry` = 137 AND `item` = 17029; -- Sacred Candle
UPDATE `npc_vendor_template` SET `slot` = 11 WHERE `entry` = 137 AND `item` = 17021; -- Wild Berries
UPDATE `npc_vendor_template` SET `slot` = 12 WHERE `entry` = 137 AND `item` = 17026; -- Wild Thornroot
REPLACE INTO `npc_vendor_template` (`entry`, `item`, `slot`) VALUES (137, 22148, 13); -- Wild Quillvine
DELETE FROM `npc_vendor` WHERE `entry` IN (17518,18017,18998,19235,19535,23157,25039) AND `item` = 22148; -- part of 137
UPDATE `npc_vendor_template` SET `slot` = 14 WHERE `entry` = 137 AND `item` = 5565; -- Infernal Stone
UPDATE `npc_vendor_template` SET `slot` = 15 WHERE `entry` = 137 AND `item` = 16583; -- Demonic Figurine
UPDATE `npc_vendor_template` SET `slot` = 16 WHERE `entry` = 137 AND `item` = 21177; -- Symbol of Kings

DELETE FROM `npc_vendor_template` WHERE `entry` = 138; -- not needed anymore

UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 139 AND `item` = 22147; -- Flintweed Seed
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 139 AND `item` = 17030; -- Ankh
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 139 AND `item` = 17033; -- Symbol of Divinity
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 139 AND `item` = 17029; -- Sacred Candle
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 139 AND `item` = 22148; -- Wild Quillvine
REPLACE INTO `npc_vendor_template` (`entry`, `item`, `slot`) VALUES (139, 16583, 6); -- Demonic Figurine
DELETE FROM `npc_vendor` WHERE `entry` IN (24409,26304) AND `item` = 16583; -- part of 139
UPDATE `npc_vendor_template` SET `slot` = 7 WHERE `entry` = 139 AND `item` = 21177; -- Symbol of Kings

-- Add Restocktime, use same as other Faction
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 18017 AND `item` = 22901; -- Recipe: Sneaking Potion
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `entry` = 18017 AND `item` = 22902; -- Recipe: Elixir of Major Frost Power

-- Turgore 23565
UPDATE `creature_template_addon` SET `emote` = 0 WHERE `entry` = 23565;

-- Mack (23718) - NSR
UPDATE `creature_template` SET `InteractionPauseTimer` = 30000 WHERE `entry` = 23718; -- guessed
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 23718);
UPDATE `creature` SET `position_x` = 6743.719, `position_y` = -7553.346, `position_z` = 126.2342, `orientation` = 3.176499, `MovementType` = 2 WHERE `id` = 23718;
DELETE FROM `creature_movement_template` WHERE `Entry` = 23718;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(23718, 0, 1, 6743.719, -7553.346, 126.2342, 3.176499, 60000, 0, NULL),
(23718, 0, 2, 6755.476, -7546.018, 126.2342, 100, 0, 0, NULL),
(23718, 0, 3, 6752.933, -7537.233, 126.7342, 100, 0, 0, NULL),
(23718, 0, 4, 6756.388, -7522.79, 127.2342, 100, 0, 0, NULL),
(23718, 0, 5, 6762.099, -7523.004, 127.3592, 100, 60000, 2371801, NULL),
(23718, 0, 6, 6756.388, -7522.79, 127.2342, 100, 0, 0, NULL),
(23718, 0, 7, 6752.933, -7537.233, 126.7342, 100, 0, 0, NULL),
(23718, 0, 8, 6755.476, -7546.018, 126.2342, 100, 0, 0, NULL),
(23718, 0, 9, 6743.719, -7553.346, 126.2342, 3.176499, 120000, 0, NULL),
(23718, 0, 10, 6737.742, -7553.029, 126.7342, 100, 0, 0, NULL),
(23718, 0, 11, 6731.241, -7555.08, 127.2341, 100, 0, 0, NULL),
(23718, 0, 12, 6725.964, -7561.686, 128.4841, 0.2792527, 60000, 2371801, NULL),
(23718, 0, 13, 6731.241, -7555.08, 127.2341, 100, 0, 0, NULL),
(23718, 0, 14, 6737.742, -7553.029, 126.7342, 100, 0, 0, NULL),
(23718, 0, 15, 6743.719, -7553.346, 126.2342, 3.176499, 1200000, 0, NULL), -- fuse old script into this for completion purposes
(23718, 0, 16, 6740.69, -7607.24, 126.194, 4.01019, 35000, 2371802, NULL),
(23718, 0, 17, 6771.95, -7585.33, 127.31, 0.534801, 10000, 2371803, NULL),
(23718, 0, 18, 6751.85, -7549.6, 126.132, 2.59961, 4000, 2371804, NULL),
(23718, 0, 19, 6743.03, -7551.57, 126.327, 3.40335, 1200000, 0, NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` BETWEEN 2371801 AND 2371804;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2371801, 1000, 0, 28, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - UNIT_STAND_STATE_SLEEP'),
(2371801, 4000, 0, 15, 32951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - Cast Sleeping Sleep'),
(2371801, 4000, 1, 29, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - Remove UNIT_NPC_FLAG_GOSSIP'),
(2371801, 54000, 0, 14, 32951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - Remove Sleeping Sleep'),
(2371801, 54000, 1, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - Add UNIT_NPC_FLAG_GOSSIP'),
(2371801, 57000, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - UNIT_STAND_STATE_STAND'),

(2371802, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 22216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- gossiping?
(2371802, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 22211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),

(2371803, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 22206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- drinking?

(2371804, 2000, 0, 1, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- throw bottle?

-- Garg (23745) - RP Script
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 23745;
DELETE FROM `creature_movement_template` WHERE `Entry` = 23745;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(23745, 0, 1, 6774.359, -7632.229, 127.482, 4.01426, 300000, 0, NULL),
(23745, 0, 2, 6768.644, -7638.577, 127.4824, 100, 0, 0, NULL),
(23745, 0, 3, 6762.757, -7665.549, 126.3963, 4.496761, 8000, 2374501, 'EMOTE_ONESHOT_CHEER_NOSHEATHE'),
(23745, 0, 4, 6772.73, -7667.064, 126.1074, 100, 3000, 0, NULL),
(23745, 0, 5, 6774.489, -7663.801, 126.2324, 100, 7000, 2374502, NULL),
(23745, 0, 6, 6771.448, -7652.63, 127.3574, 100, 0, 0, NULL),
(23745, 0, 7, 6774.404, -7640.198, 127.6074, 100, 0, 0, NULL),
(23745, 0, 8, 6774.364, -7632.227, 127.4824, 4.014257, 26000, 2374503, NULL),
(23745, 0, 9, 6762.757, -7665.549, 126.3963, 100, 7000, 2374504, NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` BETWEEN 2374501 AND 2374504;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2374501, 1000, 0, 1, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - EMOTE_ONESHOT_CHEER_NOSHEATHE'),

(2374502, 3000, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - EMOTE_ONESHOT_ATTACK1H'),
(2374502, 6000, 1, 42, 0, 0, 0, 0, 0, 0, 2703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - UNIT_VIRTUAL_ITEM_SLOT_ID'),

(2374503, 2000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - EMOTE_STATE_USESTANDING'),
(2374503, 8000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - EMOTE_STATE_USESTANDING'),
(2374503, 14000, 0, 1, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - EMOTE_STATE_USESTANDING'),
(2374503, 25000, 0, 42, 0, 0, 0, 0, 0, 0, 2023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - UNIT_VIRTUAL_ITEM_SLOT_ID'),

(2374504, 6000, 0, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - EMOTE_STATE_USESTANDING'),
(2374504, 9000, 0, 1, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Garg - EMOTE_STATE_USESTANDING');

-- Kurzel (23748) - VendorList
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 23748;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 23748 AND `item` = 8952; -- Roasted Quail
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 23748 AND `item` = 27854; -- Smoked Talbuk Venison
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 23748 AND `item` = 29451; -- Clefthoof Ribs
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 23748 AND `item` = 8957; -- Spinefin Halibut
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 23748 AND `item` = 27858; -- Sunspring Carp
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 23748 AND `item` = 29452; -- Zangar Trout
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 23748 AND `item` = 8766; -- Morning Glory Dew
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 23748 AND `item` = 28399; -- Filtered Draenic Water
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 23748 AND `item` = 27860; -- Purified Draenic Water
REPLACE INTO `npc_vendor` (`entry`, `item`, `slot`) VALUES (23748, 8948, 10),(23748, 27859, 11),(23748, 29453, 12);

-- Gunter 24408 <Food Vendor>
-- https://youtu.be/pCktder6HMg?t=210 - shows we need to be able to set random min/maxcount for limited supply items
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 24408;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `comments`) VALUES
(24408, 33926, 1, 604800, 1, 'Sealed Scroll Case'),
(24408, 27657, 12, 604800, 2, 'Blackened Basilisk'), -- 2 - 12? supplyitem abuse was fixed at end of tbc.
(24408, 27667, 12, 604800, 3, 'Spicy Crawdad'), -- 2 - 12?
(24408, 27666, 12, 604800, 4, 'Golden Fish Sticks'), -- 2 - 12?
(24408, 8948, 0, 0, 5, 'Dried King Bolete'),
(24408, 27859, 0, 0, 6, 'Zangar Caps'),
(24408, 29453, 0, 0, 7, 'Sporeggar Mushroom');

-- https://tbc.wowhead.com/npc=22266/ogrila-grubgiver#sells
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 22266;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 22266 AND `item` = 32685;
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 22266 AND `item` = 32686;
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 22266 AND `item` = 8952;
UPDATE `npc_vendor` SET `slot` = 4 WHERE `entry` = 22266 AND `item` = 27854;
UPDATE `npc_vendor` SET `slot` = 5 WHERE `entry` = 22266 AND `item` = 29451;
UPDATE `npc_vendor` SET `slot` = 6 WHERE `entry` = 22266 AND `item` = 8957;
UPDATE `npc_vendor` SET `slot` = 7 WHERE `entry` = 22266 AND `item` = 27858;
UPDATE `npc_vendor` SET `slot` = 8 WHERE `entry` = 22266 AND `item` = 29452;
UPDATE `npc_vendor` SET `slot` = 9 WHERE `entry` = 22266 AND `item` = 8953;
UPDATE `npc_vendor` SET `slot` = 10 WHERE `entry` = 22266 AND `item` = 27856;
UPDATE `npc_vendor` SET `slot` = 11 WHERE `entry` = 22266 AND `item` = 29450;
UPDATE `npc_vendor` SET `slot` = 12 WHERE `entry` = 22266 AND `item` = 8932;
UPDATE `npc_vendor` SET `slot` = 13 WHERE `entry` = 22266 AND `item` = 27857;
UPDATE `npc_vendor` SET `slot` = 14 WHERE `entry` = 22266 AND `item` = 29448;
REPLACE INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(22266, 8948, 15, 'Dried King Bolete'),
(22266, 27859, 16, 'Zangar Caps'),
(22266, 29453, 17, 'Sporeggar Mushroom');

-- https://tbc.wowhead.com/npc=19471/old-orok#sells
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 19471;
UPDATE `npc_vendor` SET `slot` = 1 WHERE `entry` = 19471 AND `item` = 8953; -- Deep Fried Plantains
UPDATE `npc_vendor` SET `slot` = 2 WHERE `entry` = 19471 AND `item` = 27856; -- Skethyl Berries
UPDATE `npc_vendor` SET `slot` = 3 WHERE `entry` = 19471 AND `item` = 29450; -- Telaari Grapes
DELETE FROM `npc_vendor_template` WHERE `entry` = 23; -- had 3 items, used by 1 npc
REPLACE INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(19471, 8948, 4, 'Dried King Bolete'),
(19471, 27859, 5, 'Zangar Caps'),
(19471, 29453, 6, 'Sporeggar Mushroom');

-- Prigmon (23761) - RP Script
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 23761;

-- ===========
-- Gameobjects
-- ===========

-- https://tbc.wowhead.com/object=181665/burial-chest
DELETE FROM `gameobject_loot_template` WHERE `entry` = 18432 AND `item` IN (1738,1739,1740,1741,1742,1743,1744,1745,1764,1766,1767,1768,1769,1770,1787,1788,
1789,1790,1791,1792,1793,1794,1811,1812,1813,1814,1815,1816,1817,2216,2217,2764,2780,2781,3376,3377,2970,2983,3376,3377,4567,4701,6539,6541,9786,15268);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(18432, 60003, 5, 1, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)'),
(18432, 60116, 1, 1, -60116, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)'),
(18432, 30508, 1, 0, 1, 1, 0, 'Pickled Murloc Head');

-- 181665 - (Pool 13999), Entry 181665
DELETE FROM `gameobject` WHERE `id` = 181665;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5301408, 181665, 530, 7562.84, -7380.08, 162.379, -1.62316, 0, 0, -0.725376, 0.688353, 60, 60, 255, 1),
(5301409, 181665, 530, 7573.78, -7379.44, 162.359, 5.07891, 0, 0, -0.566406, 0.824126, 60, 60, 255, 1),
(5301410, 181665, 530, 7597.63037109375, -7416.5234375, 156.941131591796875, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494, 60, 60, 255, 1),
(5301411, 181665, 530, 7615.83, -7375.65, 162.353, -1.51844, 0, 0, -0.688356, 0.725373, 60, 60, 255, 1),
(5301412, 181665, 530, 7619.28, -7323.88, 155.914, -1.51844, 0, 0, -0.688356, 0.725373, 60, 60, 255, 1),
(5301413, 181665, 530, 7630.08, -7389.77, 162.412, -3.12414, 0, 0, -0.999962, 0.0087262, 60, 60, 255, 1),
(5301414, 181665, 530, 7630.48, -7422.08, 163.077, -3.10669, 0, 0, -0.999848, 0.0174505, 60, 60, 255, 1),
(5301415, 181665, 530, 7643.6, -7397.83, 162.543, 0.05236, 0, 0, 0.026177, 0.999657, 60, 60, 255, 1),
(5301416, 181665, 530, 7644.13, -7429.99, 163.19, 0.034907, 0, 0, 0.0174526, 0.999848, 60, 60, 255, 1),
(5301417, 181665, 530, 7654.68, -7364.44, 162.123, 0, 0, 0, 0, 1, 60, 60, 255, 1),
(5301418, 181665, 530, 7654.78, -7352.84, 162.126, 0.139626, 0, 0, 0.0697563, 0.997564, 60, 60, 255, 1),
(5301419, 181665, 530, 7656.94, -7237.31, 155.826, 1.62316, 0, 0, 0.725376, 0.688353, 60, 60, 255, 1),
(5301420, 181665, 530, 7658.82, -7322.96, 156.024, -1.50098, 0, 0, -0.681997, 0.731355, 60, 60, 255, 1),
(5301421, 181665, 530, 7661.93, -7319.62, 156.012, 0.0349062, 0, 0, 0.0174522, 0.999848, 60, 60, 255, 1),
-- NEW
(5301422, 181665, 530, 7643.71630859375, -7405.77783203125, 162.7361602783203125, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562, 60, 60, 255, 1),
(5301423, 181665, 530, 7618.2802734375, -7342.31591796875, 162.2982635498046875, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 60, 60, 255, 1),
(5301424, 181665, 530, 7591.96435546875, -7323.79150390625, 155.7970123291015625, 4.660029888153076171, 0, 0, -0.72537422180175781, 0.688354730606079101, 60, 60, 255, 1),
(5301425, 181665, 530, 7543.92724609375, -7356.79248046875, 162.3701171875, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, 60, 60, 255, 1),
(5301426, 181665, 530, 7662.142578125, -7300.806640625, 156.0752105712890625, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 60, 60, 255, 1);

-- https://tbc.wowhead.com/object=181151/glistening-mud
DELETE FROM `gameobject` WHERE `id` = 181151;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5301427, 181151, 530, 7628.17, -7634.8, 128.267, 5.95157, 0, 0, -0.165047, 0.986286, 180, 300, 100, 1),
(5301428, 181151, 530, 7642.07, -7659.08, 125.852, 5.55015, 0, 0, -0.358368, 0.93358, 180, 300, 100, 1),
(5301429, 181151, 530, 7659, -7677.83, 125.501, 4.17134, 0, 0, -0.870356, 0.492424, 180, 300, 100, 1),
(5301430, 181151, 530, 7685.55, -7685.56, 121.563, 3.54302, 0, 0, -0.979924, 0.19937, 180, 300, 100, 1),
(5301431, 181151, 530, 7724.14, -7706.14, 134.989, 0.331611, 0, 0, 0.165047, 0.986286, 180, 300, 100, 1),
(5301432, 181151, 530, 7746.44, -7685.02, 139.637, 5.28835, 0, 0, -0.477159, 0.878817, 180, 300, 100, 1),
(5301433, 181151, 530, 7763.87, -7706.39, 135.907, 2.07694, 0, 0, 0.861629, 0.507539, 180, 300, 100, 1),
(5301434, 181151, 530, 7777.67, -7715.42, 135.303, 0.977383, 0, 0, 0.469471, 0.882948, 180, 300, 100, 1),
(5301435, 181151, 530, 7778.78, -7640.75, 134.321, 1.18682, 0, 0, 0.559193, 0.829038, 180, 300, 100, 1),
(5301436, 181151, 530, 7782.48, -7599.07, 126.095, 1.36136, 0, 0, 0.62932, 0.777146, 180, 300, 100, 1),
(5301437, 181151, 530, 7793.39, -7715.74, 132.921, 4.45059, 0, 0, -0.793353, 0.608762, 180, 300, 100, 1),
(5301438, 181151, 530, 7802.47, -7708.98, 132.167, 6.17847, 0, 0, -0.0523357, 0.99863, 180, 300, 100, 1),
(5301439, 181151, 530, 7829.67, -7591.23, 125.735, 4.55531, 0, 0, -0.760406, 0.649449, 180, 300, 100, 1),
(5301440, 181151, 530, 7853.14, -7579.73, 119.806, 1.97222, 0, 0, 0.833885, 0.551938, 180, 300, 100, 1),
(5301441, 181151, 530, 7861.51, -7708.38, 135.661, 5.98648, 0, 0, -0.147809, 0.989016, 180, 300, 100, 1),
(5301442, 181151, 530, 7888.21, -7608.03, 130.774, 5.28835, 0, 0, -0.477159, 0.878817, 180, 300, 100, 1),
(5301443, 181151, 530, 7928.5, -7629.58, 113.899, 6.19592, 0, 0, -0.0436192, 0.999048, 180, 300, 100, 1),
(5301444, 181151, 530, 7931.08, -7636.33, 113.054, 5.89921, 0, 0, -0.190808, 0.981627, 180, 300, 100, 1),
(5301445, 181151, 530, 7963.77, -7631.9, 117.423, 4.86947, 0, 0, -0.649447, 0.760406, 180, 300, 100, 1),
(5301446, 181151, 530, 7965.36, -7614.17, 117.34, 0.191985, 0, 0, 0.0958452, 0.995396, 180, 300, 100, 1),
(5301447, 181151, 530, 7805.21, -7590.71, 128.564, 6.07375, 0, 0, -0.104528, 0.994522, 180, 300, 100, 1);

-- https://tbc.wowhead.com/object=181698/voidstone
DELETE FROM `gameobject` WHERE `id` = 181698;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5301448, 181698, 530, 7842.85498046875, -6694.55908203125, 23.59645271301269531, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538, 300, 900, 100, 1),
(5301449, 181698, 530, 7857.765625, -6670.40966796875, 30.39245033264160156, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249, 300, 900, 100, 1),
(5301450, 181698, 530, 7895.56787109375, -6711.65283203125, 40.29127883911132812, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872, 300, 900, 100, 1),
(5301451, 181698, 530, 7902.84619140625, -6680.41357421875, 41.36348724365234375, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358, 300, 900, 100, 1),
(5301452, 181698, 530, 7907.486328125, -6711.6005859375, 41.73515701293945312, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 300, 900, 100, 1),
(5301453, 181698, 530, 7915.29443359375, -6724.173828125, 43.02392578125, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724, 300, 900, 100, 1),
(5301454, 181698, 530, 7921.23681640625, -6690.0029296875, 41.56734085083007812, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 300, 900, 100, 1),
(5301455, 181698, 530, 7923.38037109375, -6728.078125, 43.42253494262695312, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389, 300, 900, 100, 1),
(5301456, 181698, 530, 7938.51904296875, -6690.1552734375, 50.09942626953125, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818, 300, 900, 100, 1),
-- NEW
(5301457, 181698, 530, 7928.77685546875, -6701.45556640625, 37.96448516845703125, 4.48549652099609375, 0, 0, -0.7826080322265625, 0.622514784336090087, 300, 900, 100, 1),
(5301458, 181698, 530, 7887.07666015625, -6686.330078125, 40.31312179565429687, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724, 300, 900, 100, 1),
(5301459, 181698, 530, 7933.0224609375, -6739.1650390625, 46.80437469482421875, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358, 300, 900, 100, 1);

-- https://tbc.wowhead.com/object=181138/night-elf-plans-andaroth
-- https://tbc.wowhead.com/object=181139/night-elf-plans-anowyn
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1668, 1, 'Ghostlands - Night Elf Plans: An\'owyn (181139)');
REPLACE INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (181139, 1668, 0, 'Ghostlands - Night Elf Plans: An\'owyn (181139)');

UPDATE `pool_gameobject_template` SET `description` = 'Ghostlands - Night Elf Plans: An\'daroth (181138)' WHERE `id` = 181138;
UPDATE `pool_template` SET `description` = 'Ghostlands - Night Elf Plans: An\'daroth (181138)' WHERE `entry` = 1669;
DELETE FROM `gameobject` WHERE `id` IN (181138,181139,181140);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5301460, 181138, 530, 7676.28, -5735.22, 3.67275, -0.733038, 0, 0, -0.358368, 0.93358, 30, 30, 100, 1),
(5301461, 181138, 530, 7683.38623046875, -5696.8095703125, 5.27138519287109375, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016, 30, 30, 100, 1),
(5301462, 181138, 530, 7681.22998046875, -5770.63720703125, 3.879880905151367187, 1.378809213638305664, 0, 0, 0.636077880859375, 0.771624863147735595, 30, 30, 100, 1), -- NEW
(5301463, 181139, 530, 7714.5869140625, -5705.5654296875, 5.033568859100341796, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818, 30, 30, 100, 1),
(5301464, 181139, 530, 7740.111328125, -5707.51416015625, 3.82405400276184082, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546, 30, 30, 100, 1), -- NEW
(5301465, 181140, 530, 7769.91, -5627.93, 18.3952, 5.25344, 0, 0, -0.492423, 0.870356, 30, 30, 100, 1);

-- https://tbc.wowhead.com/object=2849/battered-chest
-- https://tbc.wowhead.com/object=106319/battered-chest
-- https://tbc.wowhead.com/object=75293/large-battered-chest
-- https://tbc.wowhead.com/object=2847/tattered-chest
-- https://tbc.wowhead.com/object=111095/tattered-chest
DELETE FROM `gameobject` WHERE `id` IN (2849,106319,75293,2847,111095) AND `guid` BETWEEN 5301466 AND 5301479;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5301466, 2849, 530, 7351.85400390625, -7824.33251953125, 147.920196533203125, 1.082104086875915527, 0, 0, 0.515038073062896728, 0.857167303562164306, 300, 900, 100, 1),

(5301467, 75293, 530, 6645.44921875, -6329.88427734375, 9.133299827575683593, 2.949595451354980468, 0, 0, 0.995395660400390625, 0.095851235091686248, 300, 900, 100, 1),
(5301468, 75293, 530, 6527.4453125, -6514.33349609375, 43.76202011108398437, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927, 300, 900, 100, 1),

(5301469, 111095, 530, 7164.01806640625, -6603.73291015625, 60.50824737548828125, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291, 300, 900, 100, 1),
(5301470, 111095, 530, 6783.197265625, -7199.501953125, 25.77179527282714843, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037, 300, 900, 100, 1),

(5301471, 106319, 530, 7344.85, -5957.92, 15.9372, 6.03884, 0, 0, -0.121869, 0.992546, 300, 900, 100, 1),
(5301472, 106319, 530, 7138.9, -6196.39, 21.5686, 0.942477, 0, 0, 0.45399, 0.891007, 300, 900, 100, 1),
(5301473, 106319, 530, 7828.2880859375, -7910.99462890625, 294.16424560546875, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, 300, 900, 100, 1),
(5301474, 106319, 530, 7050.58251953125, -5736.326171875, 84.08641815185546875, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267, 300, 900, 100, 1),
(5301475, 106319, 530, 7194.93896484375, -5962.3603515625, 21.32486915588378906, 2.67034769058227539, 0, 0, 0.972369194030761718, 0.233448356389999389, 300, 900, 100, 1),
(5301476, 106319, 530, 7917.97314453125, -6254.814453125, 39.78503036499023437, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818, 300, 900, 100, 1),
(5301477, 106319, 530, 7626.720703125, -7477.81494140625, 161.88909912109375, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111, 300, 900, 100, 1),
(5301478, 106319, 530, 7151.56, -6244.49, 21.8035, 0.785397, 0, 0, 0.382683, 0.92388, 300, 900, 100, 1),
(5301479, 106319, 530, 7009.52, -5700.59, 102.601, 1.29154, 0, 0, 0.601814, 0.798636, 300, 900, 100, 1);

REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 39943, 'Ghostlands - Battered Chest (2849)' FROM `gameobject` WHERE `guid` = 5301466;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 39943, 'Ghostlands - Large Battered Chest (75293)' FROM `gameobject` WHERE `guid` IN (5301467,5301468);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 39943, 'Ghostlands - Tattered Chest (111095)' FROM `gameobject` WHERE `guid` IN (5301469,5301470);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 39943, 'Ghostlands - Battered Chest (106319)' FROM `gameobject` WHERE `guid` BETWEEN 5301471 AND 5301479;
UPDATE `pool_template` SET `max_limit` = 9 WHERE `entry` = 39943; -- Ghostlands - Master Chest Pool (28/3)

UPDATE `gameobject` SET `position_x` = 7357.8359375, `position_y` = -7779.189453125, `position_z` = 149.5640411376953125, `orientation` = 5.6897735595703125, `rotation2` = -0.29237174987792968, `rotation3` = 0.956304728984832763 WHERE `guid` = 132657;
DELETE FROM `gameobject` WHERE `id` IN (1617,1620,1621,1622,2045) AND `guid` BETWEEN 5301480 AND 5301506;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5301480, 1617, 530, 9167.2783203125, -7052.37939453125, 16.54646110534667968, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 45, 90, 100, 1),




(5301481, 1620, 530, 7311.8662109375, -6624.78271484375, 18.53878402709960937, 3.24634718894958496, 0, 0, -0.99862861633300781, 0.052353221923112869, 45, 90, 100, 1),
(5301482, 1620, 530, 7737.55126953125, -6676.62548828125, 29.77887916564941406, 1.169368624687194824, 0, 0, 0.551936149597167968, 0.833886384963989257, 45, 90, 100, 1),
(5301483, 1620, 530, 6859.85546875, -5878.81298828125, 14.48326492309570312, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701, 45, 90, 100, 1),
(5301484, 1620, 530, 7001.46142578125, -6631.34716796875, 18.74684715270996093, 3.385940074920654296, 0, 0, -0.99254608154296875, 0.121869951486587524, 45, 90, 100, 1),
(5301485, 1620, 530, 7213.42724609375, -6960.95849609375, 48.03036117553710937, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358, 45, 90, 100, 1),
(5301486, 1620, 530, 7469.853515625, -6507.39453125, 14.75977897644042968, 3.857182979583740234, 0, 0, -0.93667125701904296, 0.350209832191467285, 45, 90, 100, 1),
(5301487, 1620, 530, 6874.5849609375, -6342.4990234375, 27.85045814514160156, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224, 45, 90, 100, 1),
(5301488, 1620, 530, 7277.58251953125, -7220.39306640625, 52.46618270874023437, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326, 45, 90, 100, 1),
(5301489, 1620, 530, 6757.70751953125, -6602.2783203125, 26.91973304748535156, 6.14356088638305664, 0, 0, -0.06975555419921875, 0.997564136981964111, 45, 90, 100, 1),

(5301490, 1621, 530, 7739.501953125, -7791.76904296875, 147.2200469970703125, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305, 45, 90, 100, 1),
(5301491, 1621, 530, 7348.14306640625, -7341.0693359375, 74.9949951171875, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849, 45, 90, 100, 1),
(5301492, 1621, 530, 7778.0771484375, -6017.95166015625, 7.097465038299560546, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511, 45, 90, 100, 1),
(5301493, 1621, 530, 7228.7724609375, -6141.59521484375, 16.54784202575683593, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592, 45, 90, 100, 1),
(5301494, 1621, 530, 7049.28466796875, -6720.61865234375, 32.27063751220703125, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687, 45, 90, 100, 1),
(5301495, 1621, 530, 7171.2724609375, -6806.39453125, 44.04899978637695312, 3.141592741012573242, 0, 0, -1, 0, 45, 90, 100, 1),
(5301496, 1621, 530, 7733.40966796875, -5702.97119140625, 4.299506187438964843, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, 45, 90, 100, 1),
(5301497, 1621, 530, 7404.298828125, -6480.02783203125, 19.81569671630859375, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183, 45, 90, 100, 1),
(5301498, 1621, 530, 6829.08349609375, -6246.76025390625, 28.90606689453125, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 45, 90, 100, 1),

(5301499, 1622, 530, 7086.09716796875, -5826.73583984375, 26.20808792114257812, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(5301500, 1622, 530,  7321.12353515625, -5955.8681640625, 14.65208244323730468, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 45, 90, 100, 1),
(5301501, 1622, 530, 6650.1494140625, -6321.328125, 29.259552001953125, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494, 45, 90, 100, 1),
(5301502, 1622, 530, 7388.56591796875, -7995.8818359375, 163.91253662109375, 0.733038246631622314, 0, 0, 0.358367949724197387, 0.933580398559570312, 45, 90, 100, 1),

(5301503, 2045, 530, 7656.27978515625, -5834.31787109375, -2.63982725143432617, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(5301504, 2045, 530, 7541.42431640625, -5956.5712890625, -1.20588374137878417, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(5301505, 2045, 530, 7732.9765625, -6004.59033203125, -2.05215835571289062, 0, 0, 0, 0, 1, 45, 90, 100, 1),
(5301506, 2045, 530, 7751.46435546875, -5824.88916015625, -3.13449501991271972, 0, 0, 0, 0, 1, 45, 90, 100, 1);

REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 13009, 'Eversong Woods - Silverleaf (1617)' FROM `gameobject` WHERE `guid` = 5301480;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 13010, 'Ghostlands - Mageroyal (1620)' FROM `gameobject` WHERE `guid` BETWEEN 5301481 AND 5301489;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 13010, 'Ghostlands - Briarthorn (1621)' FROM `gameobject` WHERE `guid` BETWEEN 5301490 AND 5301498;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 13010, 'Ghostlands - Bruiseweed (1622)' FROM `gameobject` WHERE `guid` BETWEEN 5301499 AND 5301502;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 13010, 'Ghostlands - Stranglekelp (2045)' FROM `gameobject` WHERE `guid` BETWEEN 5301503 AND 5301506;
UPDATE `pool_template` SET `max_limit` = 52 WHERE `entry` = 13010; -- Master Herb Pool - Ghostlands (206/4)

DELETE FROM `gameobject` WHERE `id` IN (1731,1732) AND `guid` BETWEEN 5301507 AND 5301531;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5301507, 1731, 530, 7360.2978515625, -5914.4267578125, 13.6429910659790039, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914, 45, 90, 255, 1),
(5301508, 1731, 530, 7973.48095703125, -6573.81494140625, 60.55048370361328125, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562, 45, 90, 255, 1),
(5301509, 1731, 530, 7199.53857421875, -6897.38720703125, 54.168975830078125, 0, 0, 0, 0, 1, 45, 90, 255, 1),
(5301510, 1731, 530, 7640.29150390625, -7874.12255859375, 174.2178192138671875, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279, 45, 90, 255, 1),
(5301511, 1731, 530, 7352.66650390625, -7758.18408203125, 154.555084228515625, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003, 45, 90, 255, 1),
(5301512, 1731, 530, 7310.75341796875, -7694.109375, 122.637237548828125, 2.740161895751953125, 0, 0, 0.979924201965332031, 0.199370384216308593, 45, 90, 255, 1),
(5301513, 1731, 530, 7307.04931640625, -7204.751953125, 54.9093780517578125, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, 45, 90, 255, 1),
(5301514, 1731, 530, 7855.66748046875, -6491.6953125, 50.7498321533203125, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509, 45, 90, 255, 1),
(5301515, 1731, 530, 6724.92529296875, -6383.27880859375, 42.28787994384765625, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169, 45, 90, 255, 1),
(5301516, 1731, 530, 6898.244140625, -6525.228515625, 16.38181877136230468, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173, 45, 90, 255, 1),
(5301517, 1731, 530, 6681.42626953125, -6392.2763671875, 42.07401657104492187, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904, 45, 90, 255, 1),
(5301518, 1731, 530, 6449.98095703125, -6462.44189453125, 51.57678604125976562, 5.93412017822265625, 0, 0, -0.17364788055419921, 0.984807789325714111, 45, 90, 255, 1),
(5301519, 1731, 530, 7752.7900390625, -7064.05517578125, 133.74822998046875, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 45, 90, 255, 1),
(5301520, 1731, 530, 8039.75244140625, -7419.8837890625, 149.5138092041015625, 4.171337604522705078, 0, 0, -0.87035560607910156, 0.492423713207244873, 45, 90, 255, 1),
(5301521, 1731, 530, 7400.99560546875, -7459.69384765625, 113.2272109985351562, 3.857182979583740234, 0, 0, -0.93667125701904296, 0.350209832191467285, 45, 90, 255, 1),
(5301522, 1731, 530, 7277.1240234375, -7452.3037109375, 61.38806915283203125, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279, 45, 90, 255, 1),
(5301523, 1731, 530, 6570.24658203125, -7308.27978515625, 60.3144683837890625, 2.129300594329833984, 0, 0, 0.874619483947753906, 0.484810054302215576, 45, 90, 255, 1),
(5301524, 1731, 530, 6536.0478515625, -6352.20556640625, 42.97127151489257812, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575, 45, 90, 255, 1),
(5301525, 1731, 530, 6770.072265625, -6713.13037109375, 51.92867279052734375, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 45, 90, 255, 1),
(5301526, 1731, 530, 6278.17724609375, -6506.23779296875, 89.57260894775390625, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066, 45, 90, 255, 1),

(5301527, 1732, 530, 6748.51171875, -6519.2490234375, 22.44476890563964843, 3.141592741012573242, 0, 0, -1, 0, 45, 90, 255, 1),
(5301528, 1732, 530, 6383.08837890625, -6547.10888671875, 91.9244384765625, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823, 45, 90, 255, 1),
(5301529, 1732, 530, 7080.5498046875, -7550.861328125, 57.31962203979492187, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 45, 90, 255, 1),
(5301530, 1732, 530, 6607.630859375, -6206.34130859375, 50.3685302734375, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449, 45, 90, 255, 1),
(5301531, 1732, 530, 6593.041015625, -7201.85400390625, 46.59514999389648437, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169, 45, 90, 255, 1);

REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 2013, 'Ghostlands - Copper Vein (1731)' FROM `gameobject` WHERE `guid` BETWEEN 5301507 AND 5301526;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) SELECT `guid`, 2013, 'Ghostlands - Tin Vein (1732)' FROM `gameobject` WHERE `guid` BETWEEN 5301527 AND 5301531;
UPDATE `pool_template` SET `max_limit` = 15 WHERE `entry` = 2013; -- Master Mineral Pool - Ghostlands (60/4)

-- https://tbc.wowhead.com/object=184793
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21029 AND `item` IN (1738,1739,1740,1741,1742,1743,1744,1745,1764,1766,1767,1768,1769,1770,1787,1788,
1789,1790,1791,1792,1793,1794,1811,1812,1813,1814,1815,1816,1817,2216,2217,2764,2780,2781,3376,3377,2970,2983,3376,3377,4567,4701,6539,6541,9786,15268,2079,2987,6537,6542,6556);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(21029, 60003, 5, 1, -60003, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)'),
(21029, 60117, 1, 1, -60117, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 15-20) - (NPC Levels: 16-17)');

DELETE FROM `gameobject` WHERE `id` = 184793;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5301532, 184793, 530, 6752.64, -7311.65, 53.0436, 1.36136, 0, 0, 0.629322, 0.777145, 180, 300, 100, 1),
(5301533, 184793, 530, 6777.21, -7418.51, 48.6384, 3.12414, 0, 0, 0.999962, 0.0087262, 180, 300, 100, 1),
(5301534, 184793, 530, 6779.95, -7314.91, 49.9428, 0.558505, 0, 0, 0.275637, 0.961262, 180, 300, 100, 1),
(5301535, 184793, 530, 6805.32, -7338.93, 49.9453, -0.15708, 0, 0, -0.0784593, 0.996917, 180, 300, 100, 1),
(5301536, 184793, 530, 6806.05, -7442.17, 47.9223, -2.32129, 0, 0, -0.91706, 0.398748, 180, 300, 100, 1),
(5301537, 184793, 530, 6857.2, -7417.04, 47.649, 0.122173, 0, 0, 0.0610485, 0.998135, 180, 300, 100, 1),
(5301538, 184793, 530, 6921.18, -7503.96, 49.671, -3.12414, 0, 0, -0.999962, 0.0087262, 180, 300, 100, 1),
(5301539, 184793, 530, 6942.06, -7485.71, 49.4787, -3.07178, 0, 0, -0.999391, 0.0348993, 180, 300, 100, 1),
(5301540, 184793, 530, 6990.35, -7432.6, 49.2192, 1.50098, 0, 0, 0.681997, 0.731355, 180, 300, 100, 1),
(5301541, 184793, 530, 7051.32, -7471.83, 48.7032, 3.10669, 0, 0, 0.999848, 0.0174505, 180, 300, 100, 1),
(5301542, 184793, 530, 7054.54, -7535.8, 45.7992, -0.593412, 0, 0, -0.292372, 0.956305, 180, 300, 100, 1),
(5301543, 184793, 530, 7110.55, -7567.63, 49.8488, -1.53589, 0, 0, -0.694658, 0.71934, 180, 300, 100, 1),
(5301544, 184793, 530, 7163.38, -7525.89, 50.5513, -0.488692, 0, 0, -0.241921, 0.970296, 180, 300, 100, 1),
(5301545, 184793, 530, 7225.66, -7799.21, 155.996, 3.05433, 0, 0, 0.999048, 0.0436174, 180, 300, 100, 1),
(5301546, 184793, 530, 7233.04, -7748.18, 149.285, 1.69297, 0, 0, 0.748956, 0.66262, 180, 300, 100, 1),
(5301547, 184793, 530, 7265.66, -7779.63, 157.668, -2.16421, 0, 0, -0.882948, 0.469471, 180, 300, 100, 1),
(5301548, 184793, 530, 7276.24, -7829.97, 151.824, -2.63545, 0, 0, -0.968148, 0.250379, 180, 300, 100, 1),
(5301549, 184793, 530, 7288.33, -7759.46, 150.019, 0.715585, 0, 0, 0.350207, 0.936672, 180, 300, 100, 1),
(5301550, 184793, 530, 7304.38, -7778.9, 147.916, 2.32129, 0, 0, 0.91706, 0.398748, 180, 300, 100, 1),
(5301551, 184793, 530, 7338.2, -7830.45, 147.661, -0.837758, 0, 0, -0.406737, 0.913545, 180, 300, 100, 1),
(5301552, 184793, 530, 7353.47, -7836.94, 148.174, -2.79253, 0, 0, -0.984808, 0.173647, 180, 300, 100, 1),
(5301553, 184793, 530, 7383.48, -7838.81, 147.744, -2.44346, 0, 0, -0.939692, 0.342021, 180, 300, 100, 1),
(5301554, 184793, 530, 7394.56, -7939.2, 158.955, -1.11701, 0, 0, -0.529919, 0.848048, 180, 300, 100, 1),
(5301555, 184793, 530, 7397.8, -7892.23, 159.261, 1.97222, 0, 0, 0.833885, 0.551938, 180, 300, 100, 1),
(5301556, 184793, 530, 7404.79, -7982.58, 161.249, -1.6057, 0, 0, -0.719339, 0.694659, 180, 300, 100, 1),
(5301557, 184793, 530, 7417.27, -7966.93, 174.169, 2.86234, 0, 0, 0.990268, 0.139173, 180, 300, 100, 1),
(5301558, 184793, 530, 7433.35, -7887.6, 159.824, -1.71042, 0, 0, -0.754709, 0.65606, 180, 300, 100, 1),
(5301559, 184793, 530, 7451.33, -7991.87, 161.674, -1.46608, 0, 0, -0.669132, 0.743144, 180, 300, 100, 1),
(5301560, 184793, 530, 7462.37, -7973.07, 161.674, 0.10472, 0, 0, 0.0523361, 0.99863, 180, 300, 100, 1),
-- NEW
(5301561, 184793, 530, 6987.93896484375, -7527.7568359375, 61.78148269653320312, -0.54105061292648315, 0, 0, -0.26723766326904296, 0.96363067626953125, 180, 300, 100, 1),
(5301562, 184793, 530, 6719.63916015625, -7438.46875, 51.35992431640625, -1.93731570243835449, 0, 0, -0.82412624359130859, 0.566406130790710449, 180, 300, 100, 1),
(5301563, 184793, 530, 6701.36962890625, -7323.048828125, 55.5932769775390625, 2.635444164276123046, 0, 0, 0.96814727783203125, 0.250381410121917724, 180, 300, 100, 1),
(5301564, 184793, 530, 6645.671875, -7273.37158203125, 54.9746246337890625, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402, 180, 300, 100, 1),
(5301565, 184793, 530, 6698.1611328125, -7318.4140625, 55.59328079223632812, -0.50614458322525024, 0, 0, -0.25037956237792968, 0.968147754669189453, 180, 300, 100, 1),
(5301566, 184793, 530, 6660.8603515625, -7392.01220703125, 70.47367095947265625, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796, 180, 300, 100, 1),
(5301567, 184793, 530, 6652.1787109375, -7409.3994140625, 65.2256317138671875, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331, 180, 300, 100, 1),
(5301568, 184793, 530, 6647.09033203125, -7404.20751953125, 57.55510330200195312, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039, 180, 300, 100, 1),
(5301569, 184793, 530, 6603.85693359375, -7301.5556640625, 55.20138931274414062, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705, 180, 300, 100, 1),
(5301570, 184793, 530, 6524.568359375, -7412.9365234375, 69.10111236572265625, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 180, 300, 100, 1),
(5301571, 184793, 530, 6505.11376953125, -7441.9365234375, 85.97518157958984375, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679, 180, 300, 100, 1),
(5301572, 184793, 530, 6997.9521484375, -7518.99755859375, 56.47841644287109375, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 180, 300, 100, 1),
(5301573, 184793, 530, 6996.2734375, -7547.40283203125, 48.84354019165039062, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538, 180, 300, 100, 1),
(5301574, 184793, 530, 7027.02197265625, -7547.90625, 45.5196075439453125, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169, 180, 300, 100, 1),
(5301575, 184793, 530, 7058.6689453125, -7545.7255859375, 45.8778839111328125, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358, 180, 300, 100, 1),
(5301576, 184793, 530, 7182.4072265625, -7573.7802734375, 49.2192535400390625, 3.263772249221801757, 0, 0, -0.99813461303710937, 0.061051756143569946, 180, 300, 100, 1);

-- =====
-- Items
-- =====

-- https://tbc.wowhead.com/item=23191/crystal-controlling-orb
-- https://web.archive.org/web/20080430024551/http://wow.allakhazam.com/db/mob.html?wmob=16333
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` = 16333 AND `item` = 23191; -- -11	

-- https://tbc.wowhead.com/quest=9488/a-simple-robe#comments:id=2745175:reply=1181212
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (16350,16351,16352) AND `item` = 23707; -- -100

-- https://tbc.wowhead.com/item=22597/the-ladys-necklace#dropped-by
-- https://web.archive.org/web/20120416013005/http://www.wowhead.com/item=22597
-- https://web.archive.org/web/20080105042658/http://wow.allakhazam.com/db/item.html?witem=22597
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (16314,16315) AND `item` = 22597; -- -5

-- https://tbc.wowhead.com/item=22580/crystallized-mana-essence
-- https://web.archive.org/web/20080105042648/http://wow.allakhazam.com/db/item.html?witem=22580
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `entry` IN (16304,16310) AND `item` = 22580; -- -80

-- https://tbc.wowhead.com/item=23165/headhunter-axe - kill 8
-- https://tbc.wowhead.com/item=23167/shadowcaster-mace - kill 8
-- https://tbc.wowhead.com/item=22677/catlord-claws - kill 10
-- https://tbc.wowhead.com/item=23166/hexxer-stave - kill 10
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (16344,16469) AND `item` IN (23165,23167); -- -80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (16345,16346) AND `item` IN (23166,22677); -- -80

-- https://tbc.wowhead.com/item=22579/plagued-murloc-spine
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (16402,16403) AND `item` = 22579; -- -80

-- https://tbc.wowhead.com/item=22633/troll-juju
-- https://web.archive.org/web/20080509073905/http://wow.allakhazam.com/db/item.html?witem=22633
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (16342,16343) AND `item` = 22633; -- -80

-- https://tbc.wowhead.com/item=22566/phantasmal-substance
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `entry` = 16323 AND `item` = 22566; -- -87

-- https://tbc.wowhead.com/item=22567/gargoyle-fragment
-- https://web.archive.org/web/20080528171612/http://wow.allakhazam.com/db/item.html?witem=22567
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` = 16324 AND `item` = 22567; -- -31

-- https://tbc.wowhead.com/item=22634/underlight-ore#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (16334,16335,16337) AND `item` = 22634; -- -80

-- -----
-- Extra
-- -----

-- Remove Gold for Eclipsion Hawkstrider 21627
UPDATE `creature_template` SET `minlootgold` = 0, `maxlootgold` = 0 WHERE `entry` = 21627;

UPDATE `creature_template` SET `Faction` = 188, `UnitFlags` = 33536 WHERE `entry` = 25518;

