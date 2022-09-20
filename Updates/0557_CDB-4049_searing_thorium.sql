UPDATE `pool_template` SET `max_limit` = 9 WHERE `entry` = 2021; -- 13	Master Mineral Pool - Searing Gorge (West Section) (44 + 1)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76263 AND 76267;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76263 AND 76267;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6108 AND 6108;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6108 AND 6108;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76213 AND 76247;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76213 AND 76247;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6098 AND 6104;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6098 AND 6104;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76273 AND 76282;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76273 AND 76282;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6110 AND 6111;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6110 AND 6111;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76248 AND 76252;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76248 AND 76252;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6105 AND 6105;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6105 AND 6105;

DELETE FROM `pool_gameobject` WHERE `guid` = 75574;
DELETE FROM `gameobject` WHERE `guid` = 75574;
DELETE FROM `gameobject_spawn_entry` WHERE `guid` = 75574;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76538 AND 76542;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76538 AND 76542;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6163 AND 6163;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6163 AND 6163;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70586 AND 70590;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70586 AND 70590;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4748 AND 4748;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4748 AND 4748;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76548 AND 76552;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76548 AND 76552;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6165 AND 6165;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6165 AND 6165;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76558 AND 76562;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76558 AND 76562;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6167 AND 6167;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6167 AND 6167;

-- Remove Small Thorium Vein from remaining nodes in Badlands, can only spawn at these ~16 nodes (45 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%Small Thorium%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2021,2022));
DELETE FROM `gameobject` WHERE `guid` IN (70592,76254,76269,76284,76289,76294,76299,76304,76314,76319,76324,76329,76334,76339,76344,76349,76354,76359,76374,76379,
76384,76389,76399,76404,76409,76419,76424,76429,76434,76439,76449,76454,76464,76469,76474,76479,76489,76494,76499,76504,76514,76519,76544,76569,105311);

-- 76303	6116	0	Mineral Spawn Point 19 - Mithril
-- 76304	6116	20	Mineral Spawn Point 19 - Small Thorium -> removed
-- 76305	6116	20	Mineral Spawn Point 19 - Dark Iron
-- 76306	6116	5	Mineral Spawn Point 19 - Gold
-- 76307	6116	3	Mineral Spawn Point 19 - Truesilver

-- other bad nodes
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76513 AND 76517;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76513 AND 76517;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6158 AND 6158;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6158 AND 6158;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140890;
SET @OBJECT_2 = 140891;
SET @OBJECT_3 = 140892;
SET @OBJECT_4 = 140893;

SET @GROUP_ID = 91;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -7040.05810546875, -1185.0600585937500, 255.285369873046875, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, -7084.92431640625, -914.23907470703125, 285.949951171875000, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, -7284.29687500000, -803.92803955078125, 298.656158447265625, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, -6892.15234375000, -851.13604736328125, 260.943359375000000, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Searing Gorge - Small Thorium Vein | Truesilver Deposit | Dark Iron Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5'),
(@GROUP_ID, '165658', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140900;
SET @OBJECT_2 = 140901;
SET @OBJECT_3 = 140902;
SET @OBJECT_4 = 140903;

SET @GROUP_ID = 92;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6644.49609375000, -858.29376220703125, 244.1436614990234375, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, -6737.70556640625, -610.84490966796875, 241.2174224853515625, 2.111847877502441406, 0, 0, 0.870355606079101562, 0.492423713207244873, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, -6581.75244140625, -672.11645507812500, 241.6349029541015625, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, -6647.44824218750, -699.64416503906250, 233.3199920654296875, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Searing Gorge - Small Thorium Vein | Truesilver Deposit | Dark Iron Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5'),
(@GROUP_ID, '165658', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140910;
SET @OBJECT_2 = 140911;
SET @OBJECT_3 = 140912;
SET @OBJECT_4 = 140913;

SET @GROUP_ID = 93;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6560.43652343750, -824.79913330078125, 297.7158203125000000, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, -6463.51513671875, -824.62384033203125, 336.5514526367187500, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, -6749.60058593750, -843.77716064453125, 251.2032928466796875, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, -6502.37890625000, -1040.0323486328125, 344.8175964355468750, 2.635444164276123046, 0, 0, 0.968147277832031250, 0.250381410121917724, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Searing Gorge - Small Thorium Vein | Truesilver Deposit | Dark Iron Deposit (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5'),
(@GROUP_ID, '165658', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140920;
SET @OBJECT_2 = 140921;
SET @OBJECT_3 = 140922;
SET @OBJECT_4 = 140923;

SET @GROUP_ID = 94;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6421.86425781250, -1300.817871093750, 180.9387969970703125, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, -6727.06835937500, -1085.870849609375, 185.5764465332031250, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, -6718.60351562500, -1252.821044921875, 183.4928741455078125, 0.139624491333961486, 0, 0, 0.069755554199218750, 0.997564136981964111, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, -6561.69677734375, -1257.702880859375, 136.2116394042968750, 5.846853733062744140, 0, 0, -0.21643924713134765, 0.976296067237854003, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Searing Gorge - Small Thorium Vein | Truesilver Deposit | Dark Iron Deposit (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5'),
(@GROUP_ID, '165658', '0', '0', '5');

