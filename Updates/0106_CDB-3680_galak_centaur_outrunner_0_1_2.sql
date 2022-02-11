-- [3680] Mulgore - Galak Centaur | Galak Outrunner
-- spawn_group numbering rule changes yet again
-- 1-9999 for anything in vanilla (Eastern Kingdoms 0 & Kalimdor 1)
-- 10000-19999 Classic only
-- 20000-29999 TBC (Outland 530)
-- 30000-39999 WOTLK (Northrend 571)
-- 3000000+ Instance Files

-- 3680_galak_centaur_outrunner_0.sql

SET @PATH_ID := 10000;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10000;

SET @CREATURE_0 := 26000;
SET @CREATURE_1 := 26019;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-2261.411376953125', '-1456.5129394531250', '46.26078033447265625', '100', '0', '0'),
(@PATH_ID, '02', '-2277.622314453125', '-1422.9306640625000', '32.44640350341796875', '100', '0', '0'),
(@PATH_ID, '03', '-2302.182128906250', '-1411.6473388671875', '28.16486930847167968', '100', '0', '0'),
(@PATH_ID, '04', '-2322.678466796875', '-1384.6729736328125', '21.24376678466796875', '100', '0', '0'),
(@PATH_ID, '05', '-2324.527832031250', '-1341.7761230468750', '10.12503623962402343', '100', '0', '0'),
(@PATH_ID, '06', '-2332.664306640625', '-1306.9366455078125', '2.244270324707031250', '100', '0', '0'),
(@PATH_ID, '07', '-2344.877197265625', '-1270.5764160156250', '-3.62923288345336914', '100', '0', '0'),
(@PATH_ID, '08', '-2339.733642578125', '-1244.6018066406250', '-3.21247148513793945', '100', '0', '0'),
(@PATH_ID, '09', '-2325.123046875000', '-1210.8341064453125', '0.479225397109985351', '100', '0', '0'),
(@PATH_ID, '10', '-2314.431396484375', '-1186.4919433593750', '-5.11853551864624023', '100', '0', '0'),
(@PATH_ID, '11', '-2290.476318359375', '-1145.7753906250000', '-5.83722305297851562', '100', '0', '0'),
(@PATH_ID, '12', '-2306.632812500000', '-1123.4935302734375', '-6.99771499633789062', '100', '0', '0'),
(@PATH_ID, '13', '-2334.346923828125', '-1115.5435791015625', '-8.00800991058349609', '100', '0', '0'),
(@PATH_ID, '14', '-2357.482177734375', '-1119.4997558593750', '-7.95283412933349609', '100', '0', '0'),
(@PATH_ID, '15', '-2375.606445312500', '-1150.5356445312500', '-4.55892419815063476', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-2259.56152343750', '-1458.315185546875', '47.78318023681640625', '0.0', '300', '300', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-2263.56689453125', '-1462.390625000000', '47.19444656372070312', '0.0', '300', '300', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '2967'), (@CREATURE_0, '2968'),
(@CREATURE_1, '2967'), (@CREATURE_1, '2968');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 000');

-- 3680_galak_centaur_outrunner_1.sql

SET @PATH_ID := 10001;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10001;

SET @CREATURE_0 := 25998;
SET @CREATURE_1 := 26001;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-2227.053466796875', '-1386.4667968750000', '43.97423171997070312', '100', '0', '0'),
(@PATH_ID, '02', '-2245.915039062500', '-1344.8148193359375', '30.14173507690429687', '100', '0', '0'),
(@PATH_ID, '03', '-2268.830810546875', '-1314.0554199218750', '20.29230117797851562', '100', '0', '0'),
(@PATH_ID, '04', '-2279.645019531250', '-1271.4801025390625', '16.38397598266601562', '100', '0', '0'),
(@PATH_ID, '05', '-2282.102539062500', '-1241.2604980468750', '13.29562664031982421', '100', '0', '0'),
(@PATH_ID, '06', '-2260.679199218750', '-1207.3371582031250', '9.328395843505859375', '100', '0', '0'),
(@PATH_ID, '07', '-2226.927490234375', '-1181.6134033203125', '10.37219715118408203', '100', '0', '0'),
(@PATH_ID, '08', '-2219.546386718750', '-1141.5689697265625', '5.103100776672363281', '100', '0', '0'),
(@PATH_ID, '09', '-2213.303710937500', '-1122.7198486328125', '3.597398996353149414', '100', '0', '0'),
(@PATH_ID, '10', '-2183.893310546875', '-1115.6446533203125', '9.905197143554687500', '100', '0', '0'),
(@PATH_ID, '11', '-2152.304199218750', '-1119.8013916015625', '21.30877304077148437', '100', '0', '0'),
(@PATH_ID, '12', '-2134.706298828125', '-1147.1497802734375', '26.62783241271972656', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-2225.28076171875', '-1386.2265625000000', '44.92912292480468750', '0.0', '300', '300', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-2227.42187500000', '-1393.3824462890625', '44.85366058349609375', '0.0', '300', '300', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '2967'), (@CREATURE_0, '2968'),
(@CREATURE_1, '2967'), (@CREATURE_1, '2968');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 001', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 001');

-- 3680_galak_centaur_outrunner_2.sql

SET @PATH_ID := 10002;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10002;

SET @CREATURE_0 := 25999;
SET @CREATURE_1 := 26002;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-2407.222656250000', '-1479.5722656250000', '33.05950164794921875', '100', '0', '0'),
(@PATH_ID, '02', '-2415.050781250000', '-1452.6914062500000', '26.85837745666503906', '100', '0', '0'),
(@PATH_ID, '03', '-2444.765625000000', '-1435.3220214843750', '20.92482948303222656', '100', '0', '0'),
(@PATH_ID, '04', '-2450.515625000000', '-1413.0410156250000', '12.66809272766113281', '100', '0', '0'),
(@PATH_ID, '05', '-2458.226806640625', '-1396.3651123046875', '7.196881771087646484', '100', '0', '0'),
(@PATH_ID, '06', '-2472.930175781250', '-1386.0676269531250', '6.301160335540771484', '100', '0', '0'),
(@PATH_ID, '07', '-2489.449462890625', '-1352.6268310546875', '0.586614131927490234', '100', '0', '0'),
(@PATH_ID, '08', '-2490.702636718750', '-1323.0804443359375', '-5.60819864273071289', '100', '0', '0'),
(@PATH_ID, '09', '-2505.409667968750', '-1293.5949707031250', '-5.59694290161132812', '100', '0', '0'),
(@PATH_ID, '10', '-2526.140136718750', '-1257.8902587890625', '-6.33397769927978515', '100', '0', '0'),
(@PATH_ID, '11', '-2525.910644531250', '-1234.6562500000000', '-6.50463199615478515', '100', '0', '0'),
(@PATH_ID, '12', '-2524.524169921875', '-1210.5882568359375', '-6.29260587692260742', '100', '0', '0'),
(@PATH_ID, '13', '-2530.701660156250', '-1183.5764160156250', '-4.12831878662109375', '100', '0', '0'),
(@PATH_ID, '14', '-2548.856445312500', '-1165.3353271484375', '-4.94732379913330078', '100', '0', '0'),
(@PATH_ID, '15', '-2553.756347656250', '-1156.0465087890625', '-6.98687458038330078', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-2415.07275390625', '-1480.5194091796875', '33.02446365356445312', '0.0', '300', '300', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-2406.61816406250', '-1485.7286376953125', '34.27843856811523437', '0.0', '300', '300', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '2967'), (@CREATURE_0, '2968'),
(@CREATURE_1, '2967'), (@CREATURE_1, '2968');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 002', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '2', '0', @PATH_ID, @PATH_TYPE, 'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 002');

