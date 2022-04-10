DELETE FROM `pool_template` WHERE `entry` IN (
2028, -- 11	Master Mineral Pool - Western Plaguelands (South-West Section)
2029 -- 17	Master Mineral Pool - Western Plaguelands (East and North Sections)
-- now 13 groups with relatively long respawntimes, observe
);

DELETE FROM `gameobject` WHERE `guid` BETWEEN 78604 AND 78714; -- Part of pool 6603 (Mineral Spawn Point 1 - Western Plaguelands (South-West Section)), top pool 2028 (Master Mineral Pool - Western Plaguelands (South-West Section))
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78604 AND 78714; -- etc
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6603 AND 6639;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6603 AND 6639;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 78718 AND 78897;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78718 AND 78897;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6641 AND 6700;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6641 AND 6700;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 105160 AND 105174;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 105160 AND 105174;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3193 AND 3197;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3193 AND 3197;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 105175 AND 105192;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 105175 AND 105192;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3573 AND 3578;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3573 AND 3578;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 1068001 AND 1068002;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 1068001 AND 1068002;

-- mithirl

-- Use new guid range to make them "new" confirmed spawns
-- https://github.com/cmangos/tbc-db/blob/2b5cb5e4fae262929c94a4139a60e7fc47b4c105/Updates/0116_VDB-20201117160515_world.sql#L32
DELETE FROM `gameobject` WHERE `guid` BETWEEN 1068001 AND 1068066;
DELETE FROM `gameobject_spawn_entry` WHERE `guid` BETWEEN 1068001 AND 1068066;
DELETE FROM `spawn_group_spawn` WHERE `Guid` BETWEEN 1068001 AND 1068066;
SET @OBJECT_1 = 1068001;
SET @OBJECT_2 = 1068002;
SET @OBJECT_3 = 1068003;
SET @OBJECT_4 = 1068004;
SET @OBJECT_5 = 1068005;

SET @GROUP_ID = 21;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 1682.8342285156250, -1010.23767089843750, 79.04257965087890625, 4.625123500823974609, 0, 0, -0.73727703094482421, 0.675590515136718750, 600, 1500, 100, 1),
(@OBJECT_2, 0, 0, 1, 1971.7695312500000, -1311.29211425781250, 76.34002685546875000, 1.780233979225158691, 0, 0, 0.777145385742187500, 0.629321098327636718, 600, 1500, 100, 1), -- NEW
(@OBJECT_3, 0, 0, 1, 2017.4509277343750, -1409.10156250000000, 93.83660125732421875, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 600, 1500, 100, 1),
(@OBJECT_4, 0, 0, 1, 1882.8878173828125, -1053.46997070312500, 78.62670898437500000, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 600, 1500, 100, 1), -- NEW
(@OBJECT_5, 0, 0, 1, 1832.7357177734375, -1031.80432128906250, 83.72958374023437500, 5.393068790435791015, 0, 0, -0.43051052093505859, 0.902585566043853759, 600, 1500, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Gold Vein | Truesilver Deposit | Mithril Deposit (1) Ore 000', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068006;
SET @OBJECT_2 = 1068007;
SET @OBJECT_3 = 1068008;
SET @OBJECT_4 = 1068009;
SET @OBJECT_5 = 1068010;

SET @GROUP_ID = 22;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 1481.6436767578125, -867.291809082031250, 78.03249359130859375, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958, 600, 1500, 100, 1),
(@OBJECT_2, 0, 0, 1, 1402.2398681640625, -1103.01281738281250, 71.51847076416015625, 2.583080768585205078, 0, 0, 0.961260795593261718, 0.275640487670898437, 600, 1500, 100, 1),
(@OBJECT_3, 0, 0, 1, 1429.3950195312500, -1221.99182128906250, 67.68790435791015625, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419, 600, 1500, 100, 1),
(@OBJECT_4, 0, 0, 1, 1440.1037597656250, -1000.28521728515625, 79.83707427978515625, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066, 600, 1500, 100, 1),
(@OBJECT_5, 0, 0, 1, 1491.9193115234375, -1351.54370117187500, 63.00372314453125000, 3.438302755355834960, 0, 0, -0.98901557922363281, 0.147811368107795715, 600, 1500, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Gold Vein | Truesilver Deposit | Mithril Deposit (1) Ore 001', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068011;
SET @OBJECT_2 = 1068012;
SET @OBJECT_3 = 1068013;
SET @OBJECT_4 = 1068014;
SET @OBJECT_5 = 1068015;

SET @GROUP_ID = 23;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 1180.4938964843750, -1692.75146484375000, 73.14791870117187500, 2.740161895751953125, 0, 0, 0.979924201965332031, 0.199370384216308593, 600, 1500, 100, 1),
(@OBJECT_2, 0, 0, 1, 1059.2753906250000, -1954.39111328125000, 70.76908111572265625, 0.977383077144622802, 0, 0, 0.469470977783203125, 0.882947921752929687, 600, 1500, 100, 1),
(@OBJECT_3, 0, 0, 1, 1163.1528320312500, -1867.06298828125000, 73.97917175292968750, 0.837757468223571777, 0, 0, 0.406736373901367187, 0.913545548915863037, 600, 1500, 100, 1),
(@OBJECT_4, 0, 0, 1, 1082.0050048828125, -1647.77966308593750, 67.95163726806640625, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026, 600, 1500, 100, 1),
(@OBJECT_5, 0, 0, 1, 1238.1269531250000, -1780.95764160156250, 68.31519317626953125, 5.340708732604980468, 0, 0, -0.45398998260498046, 0.891006767749786376, 600, 1500, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Gold Vein | Truesilver Deposit | Mithril Deposit (1) Ore 002', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068016;
SET @OBJECT_2 = 1068017;
SET @OBJECT_3 = 1068018;
SET @OBJECT_4 = 1068019;
SET @OBJECT_5 = 1068020;
SET @OBJECT_6 = 1068021;

SET @GROUP_ID = 24;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 1321.8610839843750, -898.631530761718750, 73.31448364257812500, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785, 600, 1500, 100, 1),
(@OBJECT_2, 0, 0, 1, 1227.6395263671875, -996.593078613281250, 99.48883819580078125, 1.064649581909179687, 0, 0, 0.507537841796875000, 0.861629426479339599, 600, 1500, 100, 1),
(@OBJECT_3, 0, 0, 1, 990.54516601562500, -1235.30908203125000, 72.84643554687500000, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279, 600, 1500, 100, 1),
(@OBJECT_4, 0, 0, 1, 1264.2664794921875, -1297.43383789062500, 74.51877593994140625, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 600, 1500, 100, 1),
(@OBJECT_5, 0, 0, 1, 1102.2971191406250, -1479.78820800781250, 81.73740386962890625, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646, 600, 1500, 100, 1),
(@OBJECT_6, 0, 0, 1, 1082.4857177734375, -1079.30761718750000, 100.5749511718750000, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 600, 1500, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047'),
(@OBJECT_6, '1734'), (@OBJECT_6, '2040'), (@OBJECT_6, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Gold Vein | Truesilver Deposit | Mithril Deposit (1) Ore 003', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068022;
SET @OBJECT_2 = 1068023;
SET @OBJECT_3 = 1068024;
SET @OBJECT_4 = 1068025;
SET @OBJECT_5 = 1068026;
SET @OBJECT_6 = 1068027;

SET @GROUP_ID = 25;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 1420.8138427734375, -1972.09985351562500, 69.92081451416015625, 4.450590610504150390, 0, 0, -0.79335308074951171, 0.608761727809906005, 600, 1500, 100, 1),
(@OBJECT_2, 0, 0, 1, 1351.9763183593750, -1781.53369140625000, 76.10716247558593750, 4.974189758300781250, 0, 0, -0.60876083374023437, 0.793353796005249023, 600, 1500, 100, 1),
(@OBJECT_3, 0, 0, 1, 1537.1987304687500, -1700.27197265625000, 78.49482727050781250, 6.003933906555175781, 0, 0, -0.13917255401611328, 0.990268170833587646, 600, 1500, 100, 1),
(@OBJECT_4, 0, 0, 1, 1575.0063476562500, -1502.70446777343750, 69.32721710205078125, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881, 600, 1500, 100, 1),
(@OBJECT_5, 0, 0, 1, 1326.3021240234375, -1876.08764648437500, 75.93212890625000000, 1.047197580337524414, 0, 0, 0.500000000000000000, 0.866025388240814208, 600, 1500, 100, 1),
(@OBJECT_6, 0, 0, 1, 1387.1306152343750, -1723.45886230468750, 71.80655670166015625, 5.270895957946777343, 0, 0, -0.48480892181396484, 0.874620079994201660, 600, 1500, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '1734'), (@OBJECT_1, '2040'), (@OBJECT_1, '2047'),
(@OBJECT_2, '1734'), (@OBJECT_2, '2040'), (@OBJECT_2, '2047'),
(@OBJECT_3, '1734'), (@OBJECT_3, '2040'), (@OBJECT_3, '2047'),
(@OBJECT_4, '1734'), (@OBJECT_4, '2040'), (@OBJECT_4, '2047'),
(@OBJECT_5, '1734'), (@OBJECT_5, '2040'), (@OBJECT_5, '2047'),
(@OBJECT_6, '1734'), (@OBJECT_6, '2040'), (@OBJECT_6, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Gold Vein | Truesilver Deposit | Mithril Deposit (1) Ore 004', '1', '1', '0', '0');

-- sthorium


SET @OBJECT_1 = 1068028;
SET @OBJECT_2 = 1068029;
SET @OBJECT_3 = 1068030;
SET @OBJECT_4 = 1068031;
SET @OBJECT_5 = 1068032;

SET @GROUP_ID = 26;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 2267.7963867187500, -2381.159423828125, 61.828571319580078120, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, 2282.9423828125000, -2285.574707031250, 63.043289184570312500, 1.134462952613830566, 0, 0, 0.537299156188964843, 0.843391716480255126, 600, 1200, 100, 1), -- NEW
(@OBJECT_3, 0, 0, 1, 2411.2111816406250, -2236.753906250000, 53.699970245361328120, 2.600535154342651367, 0, 0, 0.963629722595214843, 0.267241001129150390, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, 2348.9191894531250, -2319.702636718750, 48.787776947021484370, 1.972219824790954589, 0, 0, 0.833885192871093750, 0.551937937736511230, 600, 1200, 100, 1), -- NEW
(@OBJECT_5, 0, 0, 1, 2318.8466796875000, -2372.063232421875, 54.518714904785156250, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047'),
(@OBJECT_5, '324'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Small Thorium Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068033;
SET @OBJECT_2 = 1068034;
SET @OBJECT_3 = 1068035;
SET @OBJECT_4 = 1068036;
SET @OBJECT_5 = 1068037;

SET @GROUP_ID = 27;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 2654.8879394531250, -1740.7951660156250, 115.4410018920898437, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, 2326.6987304687500, -1935.1567382812500, 115.1641311645507812, 3.194002151489257812, 0, 0, -0.99965667724609375, 0.026201646775007247, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, 2742.2182617187500, -1859.1137695312500, 75.95893096923828125, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687, 600, 1200, 100, 1), -- NEW
(@OBJECT_4, 0, 0, 1, 2778.6545410156250, -1672.1892089843750, 134.6434478759765625, 5.288348197937011718, 0, 0, -0.47715854644775390, 0.878817260265350341, 600, 1200, 100, 1),
(@OBJECT_5, 0, 0, 1, 2579.3515625000000, -1876.9407958984375, 109.8852233886718750, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.963630676269531250, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047'),
(@OBJECT_5, '324'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Small Thorium Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068038;
SET @OBJECT_2 = 1068039;
SET @OBJECT_3 = 1068040;
SET @OBJECT_4 = 1068041;
SET @OBJECT_5 = 1068042;

SET @GROUP_ID = 28;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 1813.0523681640625, -2458.8916015625000, 72.85943603515625000, 1.535889506340026855, 0, 0, 0.694658279418945312, 0.719339847564697265, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, 1593.4224853515625, -2215.5139160156250, 63.80838394165039062, 3.717553615570068359, 0, 0, -0.95881938934326171, 0.284016460180282592, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, 2094.3222656250000, -2304.0217285156250, 80.33908081054687500, 5.148722648620605468, 0, 0, -0.53729915618896484, 0.843391716480255126, 600, 1200, 100, 1), -- NEW
(@OBJECT_4, 0, 0, 1, 1632.3603515625000, -2385.0097656250000, 73.89141082763671875, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 600, 1200, 100, 1),
(@OBJECT_5, 0, 0, 1, 1911.1757812500000, -2145.2661132812500, 75.14133453369140625, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507, 600, 1200, 100, 1); -- NEW

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047'),
(@OBJECT_5, '324'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Small Thorium Vein | Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068043;
SET @OBJECT_2 = 1068044;
SET @OBJECT_3 = 1068045;
SET @OBJECT_4 = 1068046;
SET @OBJECT_5 = 1068047;
SET @OBJECT_6 = 1068048;

SET @GROUP_ID = 29;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 1861.0117187500000, -1916.5275878906250, 95.62760925292968750, 3.961898565292358398, 0, 0, -0.91705989837646484, 0.398749500513076782, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, 1705.6855468750000, -1814.0980224609375, 80.32057189941406250, 5.026549339294433593, 0, 0, -0.58778476715087890, 0.809017360210418701, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, 2089.0144042968750, -1983.6864013671875, 88.36615753173828125, 3.141592741012573242, 0, 0, -00000000000000001.0, 0.000000000000000000, 600, 1200, 100, 1), -- NEW
(@OBJECT_4, 0, 0, 1, 2207.1301269531250, -1719.4685058593750, 81.93630981445312500, 1.500982880592346191, 0, 0, 0.681998252868652343, 0.731353819370269775, 600, 1200, 100, 1),
(@OBJECT_5, 0, 0, 1, 2185.0883789062500, -1871.7291259765625, 72.23816680908203125, 2.897245407104492187, 0, 0, 0.992546081542968750, 0.121869951486587524, 600, 1200, 100, 1),
(@OBJECT_6, 0, 0, 1, 1634.0180664062500, -1956.5881347656250, 73.18300628662109375, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255, 600, 1200, 100, 1); -- NEW

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047'),
(@OBJECT_5, '324'), (@OBJECT_5, '2047'),
(@OBJECT_6, '324'), (@OBJECT_6, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Small Thorium Vein | Truesilver Deposit (1) Ore 003', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068049;
SET @OBJECT_2 = 1068050;
SET @OBJECT_3 = 1068051;
SET @OBJECT_4 = 1068052;
SET @OBJECT_5 = 1068053;
SET @OBJECT_6 = 1068054;

SET @GROUP_ID = 30;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 2266.5715332031250, -1614.0273437500000, 97.52571105957031250, 5.567600727081298828, 0, 0, -0.35020732879638671, 0.936672210693359375, 600, 1200, 100, 1),
(@OBJECT_2, 0, 0, 1, 2410.7204589843750, -1453.9283447265625, 110.5691909790039062, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946, 600, 1200, 100, 1),
(@OBJECT_3, 0, 0, 1, 2571.0471191406250, -1621.0325927734375, 95.33972167968750000, 4.904376029968261718, 0, 0, -0.63607788085937500, 0.771624863147735595, 600, 1200, 100, 1),
(@OBJECT_4, 0, 0, 1, 2149.0925292968750, -1501.8131103515625, 73.07997131347656250, 0.785396754741668701, 0, 0, 0.382682800292968750, 0.923879802227020263, 600, 1200, 100, 1),
(@OBJECT_5, 0, 0, 1, 2408.5939941406250, -1759.7778320312500, 103.0759811401367187, 1.815141916275024414, 0, 0, 0.788010597229003906, 0.615661680698394775, 600, 1200, 100, 1),
(@OBJECT_6, 0, 0, 1, 2009.8880615234375, -1503.2789306640625, 82.85399627685546875, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047'),
(@OBJECT_5, '324'), (@OBJECT_5, '2047'),
(@OBJECT_6, '324'), (@OBJECT_6, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Small Thorium Vein | Truesilver Deposit (1) Ore 004', '1', '1', '0', '0');

-- rthorium


SET @OBJECT_1 = 1068055;
SET @OBJECT_2 = 1068056;
SET @OBJECT_3 = 1068057;
SET @OBJECT_4 = 1068058;

SET @GROUP_ID = 31;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 3025.695556640625, -1567.1376953125000, 150.4242553710937500, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 1800, 2700, 100, 1), -- NEW
(@OBJECT_2, 0, 0, 1, 3056.531005859375, -1543.2446289062500, 149.8952026367187500, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 1800, 2700, 100, 1), -- NEW
(@OBJECT_3, 0, 0, 1, 3079.409912109375, -1533.4869384765625, 150.6266021728515625, 3.298687219619750976, 0, 0, -0.99691677093505859, 0.078466430306434631, 1800, 2700, 100, 1),
(@OBJECT_4, 0, 0, 1, 3116.420166015625, -1540.3697509765625, 150.2277526855468750, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 1800, 2700, 100, 1); -- NEW

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '2047'), (@OBJECT_1, '175404'),
(@OBJECT_2, '2047'), (@OBJECT_2, '175404'),
(@OBJECT_3, '2047'), (@OBJECT_3, '175404'),
(@OBJECT_4, '2047'), (@OBJECT_4, '175404');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Truesilver Deposit | Rich Thorium Vein (1) Ore 000', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068059;
SET @OBJECT_2 = 1068060;
SET @OBJECT_3 = 1068061;
SET @OBJECT_4 = 1068062;

SET @GROUP_ID = 32;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 3047.893554687500, -1518.5606689453125, 161.8415985107421875, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279, 1800, 2700, 100, 1),
(@OBJECT_2, 0, 0, 1, 2979.148193359375, -1661.4227294921875, 151.5873870849609375, 0.925023794174194335, 0, 0, 0.446197509765625000, 0.894934535026550292, 1800, 2700, 100, 1), -- NEW
(@OBJECT_3, 0, 0, 1, 2955.938964843750, -1341.0092773437500, 151.2672882080078125, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, 1800, 2700, 100, 1),
(@OBJECT_4, 0, 0, 1, 2779.762939453125, -1391.1530761718750, 153.4921417236328125, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 1800, 2700, 100, 1); -- NEW

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '2047'), (@OBJECT_1, '175404'),
(@OBJECT_2, '2047'), (@OBJECT_2, '175404'),
(@OBJECT_3, '2047'), (@OBJECT_3, '175404'),
(@OBJECT_4, '2047'), (@OBJECT_4, '175404');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Truesilver Deposit | Rich Thorium Vein (1) Ore 001', '1', '1', '0', '0');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 1068063;
SET @OBJECT_2 = 1068064;
SET @OBJECT_3 = 1068065;
SET @OBJECT_4 = 1068066;

SET @GROUP_ID = 33;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 2374.702392578125, -2272.6809082031250, 48.89876556396484375, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453, 1800, 2700, 100, 1), -- NEW
(@OBJECT_2, 0, 0, 1, 2284.892333984375, -2227.4523925781250, 56.80730819702148437, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986, 1800, 2700, 100, 1), -- recent addition
(@OBJECT_3, 0, 0, 1, 2406.240722656250, -2344.4458007812500, 53.68817138671875000, 5.532694816589355468, 0, 0, -0.36650085449218750, 0.930417716503143310, 1800, 2700, 100, 1),
(@OBJECT_4, 0, 0, 1, 2285.387695312500, -2334.2456054687500, 63.67953109741210937, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 1800, 2700, 100, 1); -- recent addiotion

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '2047'), (@OBJECT_1, '175404'),
(@OBJECT_2, '2047'), (@OBJECT_2, '175404'),
(@OBJECT_3, '2047'), (@OBJECT_3, '175404'),
(@OBJECT_4, '2047'), (@OBJECT_4, '175404');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Truesilver Deposit | Rich Thorium Vein (1) Ore 002', '1', '1', '0', '0');

