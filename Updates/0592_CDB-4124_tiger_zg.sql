-- Align High Priest Thekal with classicmangos
UPDATE `creature_loot_template` SET `groupid` = '1' WHERE (`entry` = '14509') and (`item` = '19902');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(24721, 'Zul\'Gurub (Boss Loot) - High Priest Shared Items');

DELETE FROM `reference_loot_template` WHERE `entry` = 24721;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24721, 22711, 0, 1, 1, 1, 0, 'Cloak of the Hakkari Worshipers'),
(24721, 22712, 0, 1, 1, 1, 0, 'Might of the Tribe'),
(24721, 22713, 0, 1, 1, 1, 0, 'Zulian Scepter of Rites'),
(24721, 22714, 0, 1, 1, 1, 0, 'Sacrificial Gauntlets'),
(24721, 22715, 0, 1, 1, 1, 0, 'Gloves of the Tormented'),
(24721, 22716, 0, 1, 1, 1, 0, 'Belt of Untapped Power'),
(24721, 22718, 0, 1, 1, 1, 0, 'Blooddrenched Mask'),
(24721, 22720, 0, 1, 1, 1, 0, 'Zulian Headdress'),
(24721, 22721, 0, 1, 1, 1, 0, 'Band of Servitude'),
(24721, 22722, 0, 1, 1, 1, 0, 'Seal of the Gurubashi Berserker');

-- https://www.wowhead.com/classic/item=22722/seal-of-the-gurubashi-berserker

DELETE FROM `creature_loot_template` WHERE `entry` IN (14507,14509,14510,14515,14517) AND `item` IN (22711,22712,22713,22714,22715,22716,22718,22720,22721,22722,24721);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14507, 24721, 100, 1, -24721, 1, 0, 'Zul\'Gurub (Boss Loot) - High Priest Shared Items'),
(14509, 24721, 100, 1, -24721, 1, 0, 'Zul\'Gurub (Boss Loot) - High Priest Shared Items'),
(14510, 24721, 100, 1, -24721, 1, 0, 'Zul\'Gurub (Boss Loot) - High Priest Shared Items'),
(14515, 24721, 100, 1, -24721, 1, 0, 'Zul\'Gurub (Boss Loot) - High Priest Shared Items'),
(14517, 24721, 100, 1, -24721, 1, 0, 'Zul\'Gurub (Boss Loot) - High Priest Shared Items');

