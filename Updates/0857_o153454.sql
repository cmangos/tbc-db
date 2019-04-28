-- Add Solid Chest 153454 & Update Loot

-- Update current spawns found in sniff
UPDATE `gameobject` SET `position_x` = 6796.874, `position_y` = -2666.078, `position_z` = 544.7845, `orientation` = 2.96706, `rotation2` = 0.9961939, `rotation3` = 0.08716504 WHERE `guid` = 49090;
UPDATE `gameobject` SET `position_x` = 6796.383, `position_y` = -5150.055, `position_z` = 732.1032, `orientation` = -2.076942 WHERE `guid` = 49091;
UPDATE `gameobject` SET `position_x` = 6520.667, `position_y` = -3264.038, `position_z` = 574.9415, `orientation` = 2.932153 WHERE `guid` = 49089;
UPDATE `gameobject` SET `position_x` = 6417.923, `position_y` = -4281.615, `position_z` = 666.0338, `orientation` = -0.7504914 WHERE `guid` = 49088;
UPDATE `gameobject` SET `position_x` = 3459.301, `position_y` = -4918.522, `position_z` = 170.4553, `orientation` = -1.692969 WHERE `guid` = 55579;
UPDATE `gameobject` SET `position_x` = 3191.122, `position_y` = -4639.979, `position_z` = 119.9467, `orientation` = -2.949606 WHERE `guid` = 45910;
UPDATE `gameobject` SET `position_x` = 3021.77, `position_y` = -4980.581, `position_z` = 106.6563, `orientation` = 1.832595 WHERE `guid` = 55578;
UPDATE `gameobject` SET `position_x` = 3003.645, `position_y` = -4886.261, `position_z` = 108.3842, `orientation` = 0.5061455 WHERE `guid` = 45734;
UPDATE `gameobject` SET `position_x` = 2601.594, `position_y` = -5512.311, `position_z` = 158.7127, `orientation` = -0.03490669 WHERE `guid` = 45931;
UPDATE `gameobject` SET `position_x` = 2544.61, `position_y` = -3704.674, `position_z` = 179.6404, `orientation` = 0.2443461 WHERE `guid` = 45915;
UPDATE `gameobject` SET `position_x` = 1829.562, `position_y` = -5210.252, `position_z` = 113.1052, `orientation` = -1.064651 WHERE `guid` = 45938;
UPDATE `gameobject` SET `position_x` = 1753.267, `position_y` = -5410.365, `position_z` = 113.5253, `orientation` = -0.3665193 WHERE `guid` = 45933;

-- Add missing spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 89666 AND 89677;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(89666, 153454, 0, 1, 2780.845, -5550.976, 160.7, 0.6981315, 0, 0, 0, 0, 7200, 7200, 100, 1),
(89667, 153454, 0, 1, 2560.83, -4806.043, 114.9838, 0.2617982, 0, 0, 0.1305256, 0.9914449, 7200, 7200, 100, 1),
(89668, 153454, 0, 1, 2506.888, -3804.469, 177.6538, 1.623156, 0, 0, 0, 0, 7200, 7200, 100, 1),
(89669, 153454, 0, 1, 1599.405, -5315.475, 91.10413, 2.234018, 0, 0, 0, 0, 7200, 7200, 100, 1),
(89670, 153454, 0, 1, 1558.684, -5417.936, 75.19698, 0.05235988, 0, 0, 0, 0, 7200, 7200, 100, 1),

(89671, 153454, 1, 1, 6863.548, -5118.346, 695.7354, -2.33874, 0, 0, 0, 0, 7200, 7200, 100, 1),
(89672, 153454, 1, 1, 6834.708, -5028.525, 691.3386, -1.675516, 0, 0, 0, 0, 7200, 7200, 100, 1),
(89673, 153454, 1, 1, 6843.175, -2482.165, 561.0096, -1.989672, 0, 0, 0, 0, 7200, 7200, 100, 1),
(89674, 153454, 1, 1, 6830.53, -3584.343, 718.5367, 0.9599311, 0, 0, 0.4617481, 0.8870111, 7200, 7200, 100, 1),
(89675, 153454, 1, 1, 6617.367, -4081.4, 662.5251, 1.500983, 0, 0, 0, 0, 7200, 7200, 100, 1),
(89676, 153454, 1, 1, 6491.729, -3132.61, 570.6507, -1.16937, 0, 0, 0, 0, 7200, 7200, 100, 1),
(89677, 153454, 1, 1, 6313.624, -2395.125, 556.7022, -2.757613, 0, 0, 0, 0, 7200, 7200, 100, 1);

-- Add to respective pools
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 89666 AND 89677;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(89666, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool'),
(89667, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool'),
(89668, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool'),
(89669, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool'),
(89670, 40024, 0, 'Eastern Plaguelands - Solid Chest Pool'),

(89671, 40038, 0, 'Winterspring - Solid Chest Pool'),
(89672, 40038, 0, 'Winterspring - Solid Chest Pool'),
(89673, 40038, 0, 'Winterspring - Solid Chest Pool'),
(89674, 40038, 0, 'Winterspring - Solid Chest Pool'),
(89675, 40038, 0, 'Winterspring - Solid Chest Pool'),
(89676, 40038, 0, 'Winterspring - Solid Chest Pool'),
(89677, 40038, 0, 'Winterspring - Solid Chest Pool');

-- Increase max_limit of pools
UPDATE `pool_template` SET `max_limit` = 5 WHERE `entry` = 40024; -- 3 Eastern Plaguelands - Solid Chest Pool
UPDATE `pool_template` SET `max_limit` = 4 WHERE `entry` = 40038; -- 2 Winterspring - Solid Chest Pool

-- Add gold for Solid Chest 153454
UPDATE `gameobject_template` SET `mingold` = 940, `maxgold` = 1335 WHERE `entry` = 153454;

-- Add missing loot
DELETE FROM `gameobject_loot_template` WHERE `entry` = 9933 AND `item` IN (1710,3827,3928,6149,4306,4338,8838);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(9933, 1710, 7, 0, 2, 3, 0, 'Greater Healing Potion'),
(9933, 3827, 11, 0, 2, 3, 0, 'Mana Potion'),
(9933, 3928, 6, 0, 1, 3, 0, 'Superior Healing Potion'),
(9933, 6149, 8, 0, 1, 3, 0, 'Greater Mana Potion'),
(9933, 4306, 1, 0, 2, 2, 0, 'Silk Cloth'),
(9933, 4338, 1, 0, 1, 1, 0, 'Mageweave Cloth'),
(9933, 8838, 2, 2, 1, 2, 0, 'Sungrass');

-- Improve 0311_o181798.sql - loot
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181798 AND `item` IN (4306,8838);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(181798, 8838, 2, 0, 1, 2, 0, 'Sungrass'),
(181798, 4306, 1, 0, 2, 2, 0, 'Silk Cloth');

