-- based on https://github.com/cmangos/classic-db/commit/b283bb804d002d5190004d07935fa7aababce053 - 596 part needs to be ported "again" sadly

-- Fixed loot table of creature 596 (Brainwashed Noble)
-- Removed related items from reference_loot_template
-- Source: http://www.wowwiki.com/Brainwashed_Noble?oldid=1110892
-- Rates from UDB
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65278;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(65278, 'NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items');

-- Add Ref
DELETE FROM `reference_loot_template` WHERE `entry` = 65278;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('65278', '3902', '30', '1', '1', '1', '0', 'Staff of Nobles'),
('65278', '5967', '70', '1', '1', '1', '0', 'Girdle of Nobility');

-- Remove 65278	NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items from world loot tables
DELETE FROM reference_loot_template WHERE `item` IN (3902,5967) AND `entry` != 65278;

-- Set NPC LOOT (Green World Drop) - (Item Levels: 17-21) - (NPC Levels: 18) to normal %, should not be 100% (other cases for 60120 are entry 599 and 14272)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 596 AND `item` = 60120;

-- Add to creature
DELETE FROM creature_loot_template WHERE entry='596' AND mincountOrRef='-65278';
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('596', '65278', '100', '0', '-65278', '1', '0', 'NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items');

-- 						above missing in cdb due to rework

-- classic-db
-- Fixed loot table of creature 5928 (Sorrow Wing)
UPDATE `creature_template` SET `lootid` = 5928 WHERE `entry` = 5928;
DELETE FROM `creature_loot_template` WHERE `entry` = 5928;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(5928, 4633, 0.1672, 0, 1, 1, 0),
(5928, 5136, 10.2941, 0, 1, 1, 0),
(5928, 5137, 74.0196, 0, 1, 1, 0),
(5928, 5635, 4.6569, 0, 1, 1, 0),
(5928, 5637, 0.2451, 0, 1, 1, 0),
(5928, 5808, -6, 0, 1, 1, 0),
(5928, 24048, 1, 1, -24048, 1, 0),
(5928, 24058, 5, 1, -24058, 1, 0),
(5928, 24066, 0.5, 1, -24066, 1, 0),
(5928, 24068, 1, 1, -24068, 1, 0);

-- classic-db
DELETE FROM `reference_loot_template` WHERE `entry` = 24066;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(24066, 886, 0, 1, 1, 1, 0, 'Black Metal Shortsword'),
(24066, 1077, 0, 1, 1, 1, 0, 'Defias Mage Ring'),
(24066, 1955, 0, 1, 1, 1, 0, 'Dragonmaw Chain Boots'),
(24066, 2013, 0, 1, 1, 1, 0, 'Cryptbone Staff'),
(24066, 2018, 0, 1, 1, 1, 0, 'Skeletal Longsword'),
(24066, 2072, 0, 1, 1, 1, 0, 'Dwarven Magestaff'),
(24066, 2226, 0, 1, 1, 1, 0, 'Ogremage Staff'),
(24066, 2227, 0, 1, 1, 1, 0, 'Heavy Ogre War Axe'),
(24066, 2233, 0, 1, 1, 1, 0, 'Shadow Weaver Leggings'),
(24066, 2566, 0, 1, 1, 1, 0, 'Sacrificial Robes'),
(24066, 3045, 0, 1, 1, 1, 0, 'Lambent Scale Boots'),
(24066, 3047, 0, 1, 1, 1, 0, 'Lambent Scale Gloves'),
(24066, 3048, 0, 1, 1, 1, 0, 'Lambent Scale Legguards'),
(24066, 3049, 0, 1, 1, 1, 0, 'Lambent Scale Breastplate'),
(24066, 3055, 0, 1, 1, 1, 0, 'Forest Leather Chestpiece'),
(24066, 3056, 0, 1, 1, 1, 0, 'Forest Leather Pants'),
(24066, 3067, 0, 1, 1, 1, 0, 'Bright Pants'),
(24066, 3069, 0, 1, 1, 1, 0, 'Bright Robe'),
(24066, 3072, 0, 1, 1, 1, 0, 'Smoldering Robe'),
(24066, 3073, 0, 1, 1, 1, 0, 'Smoldering Pants'),
(24066, 3204, 0, 1, 1, 1, 0, 'Deepwood Bracers'),
(24066, 3212, 0, 1, 1, 1, 0, 'Lambent Scale Bracers'),
(24066, 3569, 0, 1, 1, 1, 0, 'Vicar\'s Robe'),
(24066, 3656, 0, 1, 1, 1, 0, 'Lambent Scale Shield'),
(24066, 4036, 0, 1, 1, 1, 0, 'Silver-thread Cuffs'),
(24066, 4661, 0, 1, 1, 1, 0, 'Bright Mantle'),
(24066, 4705, 0, 1, 1, 1, 0, 'Lambent Scale Pauldrons'),
(24066, 4707, 0, 1, 1, 1, 0, 'Lambent Scale Girdle'),
(24066, 4713, 0, 1, 1, 1, 0, 'Silver-thread Cloak'),
(24066, 4714, 0, 1, 1, 1, 0, 'Silver-thread Sash'),
(24066, 4715, 0, 1, 1, 1, 0, 'Emblazoned Cloak'),
(24066, 4999, 0, 1, 1, 1, 0, 'Azora\'s Will'),
(24066, 5001, 0, 1, 1, 1, 0, 'Heart Ring'),
(24066, 5752, 0, 1, 1, 1, 0, 'Wyvern Tailspike'),
(24066, 6315, 0, 1, 1, 1, 0, 'Steelarrow Crossbow'),
(24066, 6394, 0, 1, 1, 1, 0, 'Silver-thread Boots'),
(24066, 6591, 0, 1, 1, 1, 0, 'Battleforge Wristguards'),
(24066, 6593, 0, 1, 1, 1, 0, 'Battleforge Cloak'),
(24066, 6600, 0, 1, 1, 1, 0, 'Dervish Belt'),
(24066, 6602, 0, 1, 1, 1, 0, 'Dervish Bracers'),
(24066, 6604, 0, 1, 1, 1, 0, 'Dervish Cape'),
(24066, 6608, 0, 1, 1, 1, 0, 'Bright Armor'),
(24066, 8183, 0, 1, 1, 1, 0, 'Precision Bow'),
(24066, 8186, 0, 1, 1, 1, 0, 'Dire Wand'),
(24066, 9769, 0, 1, 1, 1, 0, 'Greenweave Branch'),
(24066, 9772, 0, 1, 1, 1, 0, 'Greenweave Leggings'),
(24066, 9773, 0, 1, 1, 1, 0, 'Greenweave Robe'),
(24066, 9774, 0, 1, 1, 1, 0, 'Greenweave Vest'),
(24066, 9795, 0, 1, 1, 1, 0, 'Ivycloth Gloves'),
(24066, 9796, 0, 1, 1, 1, 0, 'Ivycloth Mantle'),
(24066, 9799, 0, 1, 1, 1, 0, 'Ivycloth Sash'),
(24066, 9802, 0, 1, 1, 1, 0, 'Superior Boots'),
(24066, 9803, 0, 1, 1, 1, 0, 'Superior Bracers'),
(24066, 9804, 0, 1, 1, 1, 0, 'Superior Buckler'),
(24066, 9806, 0, 1, 1, 1, 0, 'Superior Gloves'),
(24066, 9807, 0, 1, 1, 1, 0, 'Superior Shoulders'),
(24066, 9817, 0, 1, 1, 1, 0, 'Fortified Spaulders'),
(24066, 10287, 0, 1, 1, 1, 0, 'Greenweave Mantle'),
(24066, 11968, 0, 1, 1, 1, 0, 'Amber Hoop'),
(24066, 11983, 0, 1, 1, 1, 0, 'Chrome Ring'),
(24066, 14158, 0, 1, 1, 1, 0, 'Pagan Vest'),
(24066, 14163, 0, 1, 1, 1, 0, 'Pagan Wraps'),
(24066, 14176, 0, 1, 1, 1, 0, 'Watcher\'s Boots'),
(24066, 14177, 0, 1, 1, 1, 0, 'Watcher\'s Cuffs'),
(24066, 14185, 0, 1, 1, 1, 0, 'Watcher\'s Cinch'),
(24066, 14188, 0, 1, 1, 1, 0, 'Raincaller Cloak'),
(24066, 14377, 0, 1, 1, 1, 0, 'Sanguine Handwraps'),
(24066, 14378, 0, 1, 1, 1, 0, 'Sanguine Mantle'),
(24066, 14573, 0, 1, 1, 1, 0, 'Bristlebark Amice'),
(24066, 14574, 0, 1, 1, 1, 0, 'Bristlebark Britches'),
(24066, 14580, 0, 1, 1, 1, 0, 'Dokebi Bracers'),
(24066, 14749, 0, 1, 1, 1, 0, 'Hulking Spaulders'),
(24066, 14752, 0, 1, 1, 1, 0, 'Slayer\'s Cape'),
(24066, 15116, 0, 1, 1, 1, 0, 'Rigid Shoulders'),
(24066, 15118, 0, 1, 1, 1, 0, 'Rigid Tunic'),
(24066, 15120, 0, 1, 1, 1, 0, 'Robust Girdle'),
(24066, 15212, 0, 1, 1, 1, 0, 'Fighter Broadsword'),
(24066, 15241, 0, 1, 1, 1, 0, 'Battle Knife'),
(24066, 15249, 0, 1, 1, 1, 0, 'Polished Zweihander'),
(24066, 15332, 0, 1, 1, 1, 0, 'Wrangler\'s Buckler'),
(24066, 15334, 0, 1, 1, 1, 0, 'Wrangler\'s Gloves'),
(24066, 15336, 0, 1, 1, 1, 0, 'Wrangler\'s Leggings'),
(24066, 15340, 0, 1, 1, 1, 0, 'Pathfinder Cloak'),
(24066, 15348, 0, 1, 1, 1, 0, 'Pathfinder Bracers'),
(24066, 15514, 0, 1, 1, 1, 0, 'Grunt\'s Chestpiece'),
(24066, 15516, 0, 1, 1, 1, 0, 'Spiked Chain Slippers'),
(24066, 15520, 0, 1, 1, 1, 0, 'Spiked Chain Gauntlets'),
(24066, 15521, 0, 1, 1, 1, 0, 'Spiked Chain Leggings'),
(24066, 15523, 0, 1, 1, 1, 0, 'Spiked Chain Shoulder Pads'),
(24066, 15527, 0, 1, 1, 1, 0, 'Sentry\'s Gloves'),
(24066, 15528, 0, 1, 1, 1, 0, 'Sentry\'s Sash'),
(24066, 15532, 0, 1, 1, 1, 0, 'Sentry\'s Armsplints'),
(24066, 15891, 0, 1, 1, 1, 0, 'Hulking Shield'),
(24066, 15927, 0, 1, 1, 1, 0, 'Bright Sphere'),
(24066, 15974, 0, 1, 1, 1, 0, 'Pagan Rod');

-- Fixed loot table of creature 7361 (Grubbis)
DELETE FROM `creature_loot_template` WHERE `entry` = 7361 AND `item` = 11004;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7361, 11004, 1, 1, -11004, 1, 0);

