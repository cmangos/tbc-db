-- Befor, the groupid of a reference_loot_template referenced towards the items inside the reference_loot_template
-- Now, the groupid for a reference_loot_template is the same as for items, abiding to the 100% chance rule inside the primary loot table.
-- We will also have to check for cases, where groupid = 1 and other items also having groupid = 1
-- Same for refloots where groupid != 0 or 1 as it no longer rolles for explicit items inside the refloot which have this corresponding groupid

-- Linked Core Commits:
-- https://github.com/cmangos/mangos-tbc/commit/e9aa973fd979b5fe801a4c3a6c9011c7fc0170b4
-- https://github.com/cmangos/mangos-tbc/commit/ca97309fa842e1287661d30009910ac15554a87d
-- https://github.com/cmangos/mangos-tbc/commit/1ebd794f68a58ff7a093d2e4d4b3e6fdf05943f2

-- 21844 Mountain Colossus
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 21844 AND `mincountOrRef` = -12004 AND `groupid` = 1;
UPDATE `creature_loot_template` SET `item` = 12003, `groupid` = 0, `mincountOrRef` = -12003 WHERE `entry` = 21844 AND `mincountOrRef` = -12004 AND `groupid` = 2;

-- Redo Gems for
-- 181555	Fel Iron Deposit	18359
-- 181556	Adamantite Deposit	18361
-- 181557	Khorium Vein	18363
-- 181569	Rich Adamantite Deposit	18361
-- 181570	Rich Adamantite Deposit	18361
-- 185877	Nethercite Deposit	22070
-- 185557	Ancient Gem Vein	22046
-- Table 'gameobject_loot_template' entry 22046 group 1 has total chance > 100% (160.000000)
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (18359,18361,18363,22046,22070) AND `mincountorref` IN (-12003,-12004,-12005,-13001,-13002,-13003);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(18359, 12003, 1, 0, -12003, 1, 0, 'TBC Uncommon Quality GEM'),
(18359, 13001, 1, 0, -13001, 1, 0, 'TBC Uncommon Quality GEM'),
(18359, 12004, 0.5, 0, -12004, 1, 0, 'TBC Rare Quality GEM'),

(18361, 12003, 1, 0, -12003, 1, 0, 'TBC Uncommon Quality GEM'),
(18361, 13001, 1, 0, -13001, 1, 0, 'TBC Uncommon Quality GEM'),
(18361, 12004, 0.5, 0, -12004, 1, 0, 'TBC Rare Quality GEM'),

(18363, 12003, 2, 0, -12003, 1, 0, 'TBC Uncommon Quality GEM'),
(18363, 13001, 2, 0, -13001, 1, 0, 'TBC Uncommon Quality GEM'),
(18363, 12004, 5, 0, -12004, 1, 0, 'TBC Rare Quality GEM'),

(22046, 13002, 20, 0, -13002, 1, 0, 'TBC Rare Quality GEM'),
(22046, 13003, 50, 0, -13003, 1, 0, 'TBC Epic Quality GEM'),

(22070, 12003, 1, 0, -12003, 1, 0, 'TBC Uncommon Quality GEM'),
(22070, 13001, 1, 0, -13001, 1, 0, 'TBC Uncommon Quality GEM'),
(22070, 12004, 1, 0, -12004, 1, 0, 'TBC Rare Quality GEM');

-- 12003	TBC Uncommon Quality GEM
-- 12004	TBC Rare Quality GEM
-- 12005	TBC Epic Quality GEM

-- 13001	TBC Uncommon Quality GEM
-- 13002	TBC Rare Quality GEM
-- 13003	TBC Epic Quality GEM

UPDATE `gameobject_loot_template` SET `item` = 0, `groupid` = 0, `mincountOrRef` = -13002 WHERE `entry` IN (
18359,18361,18363,22046,22070) AND `mincountOrRef` = -12004 AND `groupid` = 1; -- Uncommon & Rare Gem - TBC groupid 1 = rare gem - 13002 1 TBC Rare Quality GEM
UPDATE `reference_loot_template_names` SET `name` = 'TBC Rare Quality GEM' WHERE `entry` = 13002;
UPDATE `reference_loot_template_names` SET `name` = 'TBC Rare Quality GEM' WHERE `entry` = 12004;
UPDATE `reference_loot_template_names` SET `name` = 'TBC Epic Quality GEM' WHERE `entry` = 12005;
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (12003, 'TBC Uncommon Quality GEM'); -- splitting 12004, g1 blue quality, g2 green quality
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (13003, 'TBC Epic Quality GEM');
DELETE FROM `reference_loot_template` WHERE `entry` IN (12003,12004,12005,13001,13002,13003);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(12003, 21929, 0, 1, 1, 1, 0, 'Flame Spessarite'),
(12003, 23077, 0, 1, 1, 1, 0, 'Blood Garnet'),
(12003, 23079, 0, 1, 1, 1, 0, 'Deep Peridot'),
(12003, 23107, 0, 1, 1, 1, 0, 'Shadow Draenite'),
(12003, 23112, 0, 1, 1, 1, 0, 'Golden Draenite'),
(12003, 23117, 0, 1, 1, 1, 0, 'Azure Moonstone'),

(12004, 23436, 0, 1, 1, 1, 0, 'Living Ruby'),
(12004, 23437, 0, 1, 1, 1, 0, 'Talasite'),
(12004, 23438, 0, 1, 1, 1, 0, 'Star of Elune'),
(12004, 23439, 0, 1, 1, 1, 0, 'Noble Topaz'),
(12004, 23440, 0, 1, 1, 1, 0, 'Dawnstone'),
(12004, 23441, 0, 1, 1, 1, 0, 'Nightseye'),

(12005, 32227, 0, 1, 1, 1, 0, 'Crimson Spinel'),
(12005, 32228, 0, 1, 1, 1, 0, 'Empyrean Sapphire'),
(12005, 32229, 0, 1, 1, 1, 0, 'Lionseye'),
(12005, 32230, 0, 1, 1, 1, 0, 'Shadowsong Amethyst'),
(12005, 32231, 0, 1, 1, 1, 0, 'Pyrestone'),
(12005, 32249, 0, 1, 1, 1, 0, 'Seaspray Emerald'),

(13001, 21929, 0, 1, 1, 1, 0, 'Flame Spessarite'),
(13001, 23077, 0, 1, 1, 1, 0, 'Blood Garnet'),
(13001, 23079, 0, 1, 1, 1, 0, 'Deep Peridot'),
(13001, 23107, 0, 1, 1, 1, 0, 'Shadow Draenite'),
(13001, 23112, 0, 1, 1, 1, 0, 'Golden Draenite'),
(13001, 23117, 0, 1, 1, 1, 0, 'Azure Moonstone'),

(13002, 23436, 0, 1, 1, 1, 0, 'Living Ruby'),
(13002, 23437, 0, 1, 1, 1, 0, 'Talasite'),
(13002, 23438, 0, 1, 1, 1, 0, 'Star of Elune'),
(13002, 23439, 0, 1, 1, 1, 0, 'Noble Topaz'),
(13002, 23440, 0, 1, 1, 1, 0, 'Dawnstone'),
(13002, 23441, 0, 1, 1, 1, 0, 'Nightseye'),

(13003, 32227, 0, 1, 1, 1, 0, 'Crimson Spinel'),
(13003, 32228, 0, 1, 1, 1, 0, 'Empyrean Sapphire'),
(13003, 32229, 0, 1, 1, 1, 0, 'Lionseye'),
(13003, 32230, 0, 1, 1, 1, 0, 'Shadowsong Amethyst'),
(13003, 32231, 0, 1, 1, 1, 0, 'Pyrestone'),
(13003, 32249, 0, 1, 1, 1, 0, 'Seaspray Emerald');

-- 23425	Adamantite Ore
-- Table 'prospecting_loot_template' entry 23425 group 1 has total chance > 100% (139.000000)

-- 23424	Fel Iron Ore
-- Table 'prospecting_loot_template' entry 23424 group 1 has total chance > 100% (112.199997)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` IN (-12003,-12004,-12005,-13001,-13002,-13003);
UPDATE `prospecting_loot_template` SET `groupid` = 0 WHERE `entry` IN (23424,23425) AND `mincountOrRef` IN (-13001,-13002);

-- blue gem pickpocketing_loot_template
UPDATE `pickpocketing_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -12004;

-- 10005	Item Loot - Black Sack of Gems (34846) - Rare & Epic Gems - TBC - 3 epic gems, 2 rare gems
DELETE FROM `reference_loot_template` WHERE `entry` = 10005;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 10005;
DELETE FROM `item_loot_template` WHERE `entry` = 34846;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(34846, 13002, 100, 0, -13002, 2, 0, 'TBC Rare Quality GEM'),
(34846, 13003, 100, 0, -13003, 3, 0, 'TBC Epic Quality GEM');

