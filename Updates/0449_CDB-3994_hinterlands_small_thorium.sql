UPDATE `pool_template` SET `max_limit` = 18 WHERE `entry` = 2026; -- 29	Master Mineral Pool - The Hinterlands - 92
DELETE FROM `pool_pool` WHERE `pool_id` = 3591; -- empty pool in tbcmangos as spawns were deleted, this was a bad thorium/x node in jasperlode mine elwynn (still exists in wotlkmangos)
DELETE FROM `pool_template` WHERE `entry` = 3591; -- Mineral Spawn Point 115 - The Hinterlands

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78071 AND 78076;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78071 AND 78076;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6523 AND 6523;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6523 AND 6523;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78041 AND 78052;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78041 AND 78052;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6518 AND 6519;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6518 AND 6519;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78383 AND 78394;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78383 AND 78394;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6575 AND 6576;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6575 AND 6576;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78413 AND 78418;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78413 AND 78418;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6580 AND 6580;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6580 AND 6580;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78473 AND 78478;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78473 AND 78478;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6590 AND 6590;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6590 AND 6590;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78545 AND 78550;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78545 AND 78550;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6602 AND 6602;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6602 AND 6602;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 105127 AND 105132;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 105127 AND 105132;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3569 AND 3569;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3569 AND 3569;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78509 AND 78514;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78509 AND 78514;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6596 AND 6596;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6596 AND 6596;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78527 AND 78532;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78527 AND 78532;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6599 AND 6599;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6599 AND 6599;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71410 AND 71427;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71410 AND 71427;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4876 AND 4878;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4876 AND 4878;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70214 AND 70219;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70214 AND 70219;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3469 AND 3469;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3469 AND 3469;

-- additional wrong nodes (middle of road etc)
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78065 AND 78070;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78065 AND 78070;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6522 AND 6522;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6522 AND 6522;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78083 AND 78088;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78083 AND 78088;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6525 AND 6525;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6525 AND 6525;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78113 AND 78118;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78113 AND 78118;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6530 AND 6530;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6530 AND 6530;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78479 AND 78484;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78479 AND 78484;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6591 AND 6591;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6591 AND 6591;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78209 AND 78214;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78209 AND 78214;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6546 AND 6546;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6546 AND 6546;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78329 AND 78334;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78329 AND 78334;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6566 AND 6566;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6566 AND 6566;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78347 AND 78352;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78347 AND 78352;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6569 AND 6569;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6569 AND 6569;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78365 AND 78370;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78365 AND 78370;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6572 AND 6572;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6572 AND 6572;

-- DELETE FROM `gameobject` WHERE (`guid` IN (71411, 71417, 71423, 78036, 78042, 78048, 78054, 78060, 78066, 78072, 78078, 78084, 78090, 78096, 78102, 78108, 78114, 78120, 78126, 78132, 78138, 78144, 78150, 78156, 78162, 78168, 78174, 78180,
-- 78186, 78192, 78198, 78204, 78210, 78216, 78222, 78228, 78234, 78240, 78246, 78252, 78258, 78264, 78270, 78276, 78282, 78288, 78294, 78300, 78306, 78312, 78318, 78324, 78330, 78336, 78342, 78348, 78354, 78360, 78366, 78372, 78378, 78384,
-- 78390, 78396, 78402, 78408, 78414, 78420, 78426, 78432, 78438, 78444, 78450, 78456, 78462, 78468, 78474, 78480, 78486, 78492, 78498, 78504, 78510, 78516, 78522, 78528, 78534, 78540, 78546, 105002, 105008, 105014, 105020, 105026, 105032,
-- 105038, 105044, 105050, 105056, 105062, 105068, 105074, 105080, 105086, 105092, 105098, 105104, 105110, 105116, 105122, 105128, 105134, 105140, 105146));

-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (71411, 71417, 71423, 78036, 78042, 78048, 78054, 78060, 78066, 78072, 78078, 78084, 78090, 78096, 78102, 78108, 78114, 78120, 78126, 78132, 78138, 78144, 78150, 78156, 78162, 78168, 78174, 78180,
-- 78186, 78192, 78198, 78204, 78210, 78216, 78222, 78228, 78234, 78240, 78246, 78252, 78258, 78264, 78270, 78276, 78282, 78288, 78294, 78300, 78306, 78312, 78318, 78324, 78330, 78336, 78342, 78348, 78354, 78360, 78366, 78372, 78378, 78384,
-- 78390, 78396, 78402, 78408, 78414, 78420, 78426, 78432, 78438, 78444, 78450, 78456, 78462, 78468, 78474, 78480, 78486, 78492, 78498, 78504, 78510, 78516, 78522, 78528, 78534, 78540, 78546, 105002, 105008, 105014, 105020, 105026, 105032,
-- 105038, 105044, 105050, 105056, 105062, 105068, 105074, 105080, 105086, 105092, 105098, 105104, 105110, 105116, 105122, 105128, 105134, 105140, 105146));


DELETE FROM `gameobject` WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2026)AND `description` LIKE '%Small Thorium%'); -- 114 wrong small thorium nodes in Hinterlands
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2026) AND `description` LIKE '%Small Thorium%'; -- 114 wrong small thorium nodes in Hinterlands (including the single spawns deleted above)
UPDATE `pool_gameobject` SET `chance` = 30 WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2026) AND `description` LIKE '%Iron%';
-- 78053	6520	0	Mineral Spawn Point 4 - Mithril 40 -> 50
-- 78054	6520	30	Mineral Spawn Point 4 - Small Thorium
-- 78055	6520	10	Mineral Spawn Point 4 - Iron -> 30
-- 78056	6520	10	Mineral Spawn Point 4 - Gold
-- 78057	6520	7	Mineral Spawn Point 4 - Truesilver
-- 78058	6520	3	Mineral Spawn Point 4 - Silver

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140200;
SET @OBJECT_2 = 140201;
SET @OBJECT_3 = 140202;
SET @OBJECT_4 = 140203;
SET @OBJECT_5 = 140204;

SET @GROUP_ID = 45;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 408.9018554687500000, -4095.564697265625, 113.9685134887695312, 6.126106262207031250, 0, 0, -0.07845878601074218, 0.996917366981506347, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, 121.8111190795898437, -4147.389160156250, 157.8766784667968750, 0.244345575571060180, 0, 0, 0.121869087219238281, 0.992546200752258300, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, -155.380477905273437, -4073.342041015625, 127.7760696411132812, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, 107.2168273925781250, -4568.657714843750, 132.7589416503906250, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 600, 1200, 100, 1),
(@OBJECT_5, 0, 0, 1, -121.696083068847656, -4368.514160156250, 153.5909271240234375, 4.694936752319335937, 0, 0, -0.71325016021728515, 0.700909554958343505, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'The Hinterlands - Small Thorium Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140210;
SET @OBJECT_2 = 140211;
SET @OBJECT_3 = 140212;
SET @OBJECT_4 = 140213;

SET @GROUP_ID = 46;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -258.276367187500000, -3673.161132812500, 241.4124908447265625, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, -292.832244873046875, -3754.572998046875, 238.5475769042968750, 3.089183330535888671, 0, 0, 0.999656677246093750, 0.026201646775007247, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, -222.085510253906250, -3605.737060546875, 231.8484191894531250, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, -261.941528320312500, -3704.226562500000, 242.7987976074218750, 2.722712755203247070, 0, 0, 0.978147506713867187, 0.207912087440490722, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'The Hinterlands - Small Thorium Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140220;
SET @OBJECT_2 = 140221;
SET @OBJECT_3 = 140222;
SET @OBJECT_4 = 140223;

SET @GROUP_ID = 47;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -714.287597656250000, -3791.046142578125, 227.1372833251953125, 0.000000000000000000, 0, 0, 0.000000000000000000, 1.000000000000000000, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, -601.704528808593750, -3747.024658203125, 231.7095794677734375, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, -671.735473632812500, -3811.949707031250, 223.0373535156250000, 3.996806621551513671, 0, 0, -0.90996074676513671, 0.414694398641586303, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, -674.432189941406250, -3671.854248046875, 231.2791290283203125, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'The Hinterlands - Small Thorium Vein | Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');
