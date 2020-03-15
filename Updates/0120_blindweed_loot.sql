-- Outland Blindweed should use 183046 not 142143
UPDATE `gameobject` SET `id` = 183046 WHERE `id` = 142143 AND `guid` BETWEEN 142236 AND 142243;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 19630 AND `item` = 24401;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(19630, 24401, 7, 0, 1, 3, 0, 'Unidentified Plant Parts');
DELETE FROM `reference_loot_template` WHERE `entry` = 12011 AND `item` = 24401; -- moved to 19630

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(12009, 'Purple Lotus'),
(12010, 'Sungrass'),
(12011, 'Blindweed'),
(12012, 'Golden Sansam'),
(12013, 'Dreamfoil'),
(12014, 'Mountain Silversage'),
(12015, 'Felweed'),
(12016, 'Dreaming Glory'),
(12017, 'Ragveil');

