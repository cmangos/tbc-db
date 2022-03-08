
SET @CREATURE_0 := '6767';

DELETE FROM `creature` WHERE `guid` IN (@CREATURE_0);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-6910.1728515625', '-1212.8509521484375', '213.85284423828125', '0.0', '300', '300', '0', '0', '1', '0', '0', '4');

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CREATURE_0, '01', '-6910.40869140625', '-1212.5770263671875', '213.7969818115234375', '100', '0', '0'),
(@CREATURE_0, '02', '-6901.37695312500', '-1223.1827392578125', '214.8538208007812500', '100', '0', '0'),
(@CREATURE_0, '03', '-6888.71240234375', '-1235.1220703125000', '216.1168670654296875', '100', '0', '0'),
(@CREATURE_0, '04', '-6897.95458984375', '-1258.9643554687500', '216.0875549316406250', '100', '0', '0'),
(@CREATURE_0, '05', '-6906.74121093750', '-1282.8693847656250', '216.3659210205078125', '100', '0', '0'),
(@CREATURE_0, '06', '-6914.45996093750', '-1305.3848876953125', '216.7799987792968750', '100', '0', '0'),
(@CREATURE_0, '07', '-6903.58935546875', '-1331.4736328125000', '212.9319152832031250', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '5844'), (@CREATURE_0, '5846');

--


SET @CREATURE_0 := '6771';
SET @CREATURE_1 := '6836'; -- duplicate

DELETE FROM `creature` WHERE `guid` IN (@CREATURE_0, @CREATURE_1);
DELETE FROM `creature_movement` WHERE `id` IN (@CREATURE_0);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-6906.8056640625', '-1215.2720947265625', '178.4346771240234375', '0.0', '300', '300', '0', '0', '1', '0', '0', '4');

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@CREATURE_0, '01', '-6906.47412109375', '-1214.7137451171875', '178.3810577392578125', '100', '0', '0'),
(@CREATURE_0, '02', '-6911.52636718750', '-1233.3146972656250', '178.3810577392578125', '100', '0', '0'),
(@CREATURE_0, '03', '-6911.12500000000', '-1262.9444580078125', '178.7266845703125000', '100', '0', '0'),
(@CREATURE_0, '04', '-6918.87890625000', '-1292.2712402343750', '182.9430389404296875', '100', '0', '0'),
(@CREATURE_0, '05', '-6908.81201171875', '-1315.1503906250000', '180.1653594970703125', '100', '0', '0'),
(@CREATURE_0, '06', '-6901.74560546875', '-1348.9106445312500', '173.6742401123046875', '100', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '5844'), (@CREATURE_0, '5846');

