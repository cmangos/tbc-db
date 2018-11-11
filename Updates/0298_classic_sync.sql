-- Sync creatures with classic-db - 3k
DELETE FROM `creature` WHERE `guid` IN (3262,3261,3258,3257,3255,3246,3243,3239,3137,2354,2353,1735,871,147);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(147, 721, 0, -5184.31, -539.13, 397.053, 5.6955, 180, 180, 10, 1),
(871, 706, 0, -6368.93, 806.56, 391.294, 5.08483, 180, 180, 0, 0),
(1735, 721, 0, -5170.98, -541.089, 398.372, 0.019529, 180, 180, 10, 1),
(2353, 6652, 1, 4776.41, -6639.24, 111.696, 1.72771, 75600, 115200, 0, 0),
(2354, 6652, 1, 4499.01, -6388.19, 127, 4.06034, 75600, 115200, 5, 1);

-- probably were removed due to brewfest
DELETE FROM `game_event_creature` WHERE `guid` IN (147,1735);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(147, -26),
(1735, -26);

DELETE FROM `pool_template` WHERE `entry` = 1213;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1213, 1, 'Master Feardred (6652)');

DELETE FROM `pool_creature_template` WHERE `id` = 6652;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(6652, 1213, 0, 'Master Feardred (6652)');

