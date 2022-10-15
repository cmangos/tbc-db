REPLACE INTO `gameobject` (`guid`, `id`, `position_x`, `POSITION_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(191820, 0, -5975.29, -2786.09, 385.061, 5.74214, -0.267238, 0.963631, 180, 900, 100, 1), -- 191298 (Pool 21409), Entry 0 - [Random (gameobject_spawn_entry) X:-5795.830078, -2929.929932, 363.821014, 0
(191821, 0, -6835.26, -3643.86, 253.034, 4.01426, -0.906307, 0.422619, 180, 900, 100, 1), -- 191772 (Pool 21423), Entry 0 - [Random (gameobject_spawn_entry) X:-6606.040039, -3416.659912, 279.299988, 0
(300278, 106319, -6145.14, -2943.76, 397.839, 5.044, -0.580703, 0.814116, 300, 900, 100, 1), -- 12796 (Pool 31209), Entry 106319 - [Battered Chest X:-6162.259766, -2950.600098, 409.209015, 0
(300279, 106319, -5053.31, -2681.58, 320.147, 0.733038, 0.358368, 0.93358, 300, 900, 100, 1); -- 31210, 0, 'Loch Modan - Battered Chest

REPLACE INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(191820, 3662),(191820, 3705),
(191821, 3706),(191821, 3707);

REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(191820, 21409, 0, 'Loch Modan - Food Crate (3662) & Barrel of Milk (3705)'),
(191821, 21423, 0, 'Badlands - Food Crate (3707) & Barrel of Sweet Nectar (3706)'),
(300278, 31209, 0, 'Loch Modan (Stonesplinter Valley) - Battered Chest (106319)'),
(300279, 31210, 0, 'Loch Modan - Battered Chest (106319)');

-- Misc
-- delete underground
-- X:-13433.000000, -300.000000, 15.024000 0
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 75185 AND 75189;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 75185 AND 75189;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4864 AND 4864;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4864 AND 4864;

-- https://web.archive.org/web/20080217014622/http://wow.allakhazam.com/db/mob.html?wmob=8283
-- https://github.com/cmangos/issues/issues/1858
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 8283 AND `item` = 60184; -- NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)

-- missing
DELETE FROM `creature` WHERE `guid` IN (61629,61630) AND `id` IN (2182,2183);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(61629, 2182, 1, 7518.44, -954.141, -9.75713, 1.49309, 275, 275, 5, 1),
(61630, 2183, 1, 7498.7, -959.536, -3.24485, 3.80301, 275, 275, 5, 1);

-- delete duplicate (Pool 6113)
-- X:-7228.470215, -879.447021, 298.630005, 0
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76368 AND 76372;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76368 AND 76372;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6129 AND 6129;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6129 AND 6129;

-- delete duplicate (Pool 4608)
-- 2139.889893, -5152.189941, 59.936199, 0
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74520 AND 74524;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 74520 AND 74524;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4644 AND 4644;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4644 AND 4644;

-- delete duplicate (Pool 4608)
-- 2139.889893, -5152.189941, 59.936199, 0
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74450 AND 74454;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 74450 AND 74454;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4630 AND 4630;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4630 AND 4630;

-- delete duplicate (Pool 4987)
-- X:-4939.379883, -4077.810059, 302.541992, 0
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 75933 AND 75935;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 75933 AND 75935;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4991 AND 4991;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4991 AND 4991;

-- delete duplicate (Pool 4438)
-- X:-10415.000000, -1255.000000, 52.485001, 0
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 73660 AND 73664;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 73660 AND 73664;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4412 AND 4412;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4412 AND 4412;

UPDATE `creature` SET `position_x` = 1928.7673,  `position_y` = -4518.778,  `position_z` = 29.363235,  `orientation` = 0.959931075572967529 WHERE `guid` = 4767 AND `id` = 6987; --  Malton Droffers
UPDATE `creature` SET `position_x` = 1932.3334,  `position_y` = -4516.3403,  `position_z` = 29.363235,  `orientation` = 3.40339207649230957 WHERE `guid` = 4766 AND `id` = 6986; -- Dran Droffers
UPDATE `creature` SET `position_x` = -1755.7516,  `position_y` = 5677.2407,  `position_z` = 129.22449,  `orientation` = 3.001966238021850585 WHERE `guid` = 96756 AND `id` = 23271; -- Vindicator Kaan
UPDATE `creature` SET `position_x` = -2054.7473,  `position_y` = 8609.072,  `position_z` = 22.24437,  `orientation` = 4.363323211669921875 WHERE `guid` = 81653 AND `id` = 23007; -- Paulsta'ats
UPDATE `creature` SET `position_x` = -247.86519,  `position_y` = 5443.954,  `position_z` = 24.624128,  `orientation` = 5.270894527435302734 WHERE `guid` = 90497 AND `id` = 22832; -- Morthis Whisperwing
UPDATE `creature` SET `position_x` = 291.8718, `position_y` = 6100.054, `position_z` = 132.2092, `orientation` = 3.874631 WHERE `guid` = 65520 AND `id` = 18251; -- Caregiver Abidaar <Innkeeper>

UPDATE `creature` SET `position_x` = -5850.31, `position_y` = -463.224, `position_z` = 411.103 WHERE `guid` = 232 AND `id` = 1125; -- wotlkmangos

UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 76422 AND `id` = 21839; -- Mature Silkwing only one not moving

UPDATE `gameobject` SET `position_z` = 145.0453 WHERE `guid` = 25285 AND `id` = 184443; -- floating Ivory Bell

UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 21351; -- Ogre Building Bunny Large

-- Correct XYZ Summon for NPC Gor Grimgut 21319
UPDATE `dbscripts_on_event` SET `x` = 1316.4685, `y` = 6686.6694, `z` = -18.59028, `o` = 0.482672661542892456 WHERE `id` = 13685 AND `delay` = 1000 AND `command` = 10;

-- only in gameobject_loot_template entry data1 19616 - Highland Mixed School 182957
-- https://tbc.wowhead.com/item=27388/mr-pinchy#comments:id=3102345
DELETE FROM `reference_loot_template` WHERE `item` = 27388;

