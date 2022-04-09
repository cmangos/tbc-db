-- 42896	42895
-- 42897	42898

SET @PATH_ID := 10008;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 10008;

SET @CREATURE_0 := 42895;
SET @CREATURE_1 := 42896;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));
DELETE FROM `creature_movement` WHERE (`id` = @CREATURE_0);
DELETE FROM `creature_linking` WHERE (`guid` = @CREATURE_1);

DELETE FROM `waypoint_path` WHERE `PathId` = @PATH_ID;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-6886.19433593750', '893.58953857421875', '29.85743141174316406', '100', '0', '0'),
(@PATH_ID, '02', '-6885.69628906250', '875.66674804687500', '33.88318634033203125', '100', '0', '0'),
(@PATH_ID, '03', '-6875.41162109375', '856.72509765625000', '36.65996551513671875', '100', '0', '0'),
(@PATH_ID, '04', '-6865.23291015625', '835.85430908203125', '40.14589691162109375', '100', '0', '0'),
(@PATH_ID, '05', '-6853.87207031250', '808.16729736328125', '42.77117919921875000', '100', '0', '0'),
(@PATH_ID, '06', '-6842.17333984375', '789.61029052734375', '42.80141830444335937', '100', '0', '0'),
(@PATH_ID, '07', '-6833.73046875000', '771.60076904296875', '43.68960189819335937', '100', '0', '0'),
(@PATH_ID, '08', '-6827.97119140625', '750.58386230468750', '42.77940750122070312', '100', '0', '0'),
(@PATH_ID, '09', '-6816.82275390625', '733.69891357421875', '41.72349929809570312', '100', '0', '0'),
(@PATH_ID, '10', '-6808.96582031250', '716.48217773437500', '39.17466735839843750', '100', '0', '0'),
(@PATH_ID, '11', '-6803.82812500000', '699.70977783203125', '34.71686935424804687', '100', '0', '0'),
(@PATH_ID, '12', '-6802.73144531250', '671.53961181640625', '23.50117111206054687', '100', '0', '0');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-6870.93603515625', '897.3962402343750', '30.20238304138183593', '3.490658521652221679', '300', '300', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-6866.91259765625', '899.2886962890625', '31.40401268005371093', '3.560471534729003906', '300', '300', '0', '0');

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '15184'),
(@CREATURE_1, '15184');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 000', '0', '0', '0', '0');

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

REPLACE INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '1', '6', '0', @PATH_ID, @PATH_TYPE, 'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 000');

--


SET @PATH_ID := 10009;
SET @PATH_TYPE := 2;

SET @GROUP_ID := 10009;

SET @CREATURE_0 := 42897;
SET @CREATURE_1 := 42898;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1));
DELETE FROM `creature_movement` WHERE (`id` = @CREATURE_1);
DELETE FROM `creature_linking` WHERE (`guid` = @CREATURE_0);

DELETE FROM `waypoint_path` WHERE `PathId` = @PATH_ID;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-6766.43066406250', '753.60382080078125', '85.08976745605468750', '100', '0', '0'),
(@PATH_ID, '02', '-6779.67333984375', '750.00195312500000', '79.01744079589843750', '100', '0', '0'),
(@PATH_ID, '03', '-6787.77587890625', '755.20800781250000', '74.94444274902343750', '100', '0', '0'),
(@PATH_ID, '04', '-6793.85400390625', '766.77862548828125', '68.64054870605468750', '100', '0', '0'),
(@PATH_ID, '05', '-6792.49023437500', '786.34649658203125', '52.47892379760742187', '100', '0', '0'),
(@PATH_ID, '06', '-6805.73046875000', '794.17572021484375', '51.00131607055664062', '100', '0', '0'),
(@PATH_ID, '07', '-6822.38720703125', '816.84851074218750', '50.26433563232421875', '100', '0', '0'),
(@PATH_ID, '08', '-6815.21728515625', '833.35241699218750', '49.71983718872070312', '100', '0', '0'),
(@PATH_ID, '09', '-6799.79492187500', '838.45642089843750', '48.49955749511718750', '100', '0', '0'),
(@PATH_ID, '10', '-6769.24072265625', '840.93182373046875', '42.76591491699218750', '100', '0', '0'),
(@PATH_ID, '11', '-6764.69628906250', '849.54211425781250', '35.99612426757812500', '100', '0', '0'),
(@PATH_ID, '12', '-6771.03564453125', '862.97930908203125', '26.40055656433105468', '100', '0', '0'),
(@PATH_ID, '13', '-6766.45019531250', '869.84545898437500', '23.53795433044433593', '100', '0', '0'),
(@PATH_ID, '14', '-6742.60351562500', '847.02929687500000', '15.90432548522949218', '100', '0', '0'),
(@PATH_ID, '15', '-6766.45019531250', '869.84545898437500', '23.53795433044433593', '100', '0', '0'),
(@PATH_ID, '16', '-6771.03564453125', '862.97930908203125', '26.40055656433105468', '100', '0', '0'),
(@PATH_ID, '17', '-6764.69628906250', '849.54211425781250', '35.99612426757812500', '100', '0', '0'),
(@PATH_ID, '18', '-6769.24072265625', '840.93182373046875', '42.76591491699218750', '100', '0', '0'),
(@PATH_ID, '19', '-6799.79492187500', '838.45642089843750', '48.49955749511718750', '100', '0', '0'),
(@PATH_ID, '20', '-6815.21728515625', '833.35241699218750', '49.71983718872070312', '100', '0', '0'),
(@PATH_ID, '21', '-6822.38720703125', '816.84851074218750', '50.26433563232421875', '100', '0', '0'),
(@PATH_ID, '22', '-6805.81640625000', '794.29003906250000', '51.01291275024414062', '100', '0', '0'),
(@PATH_ID, '23', '-6792.49023437500', '786.34649658203125', '52.47892379760742187', '100', '0', '0'),
(@PATH_ID, '24', '-6793.85400390625', '766.77862548828125', '68.64054870605468750', '100', '0', '0'),
(@PATH_ID, '25', '-6787.77587890625', '755.20800781250000', '74.94444274902343750', '100', '0', '0'),
(@PATH_ID, '26', '-6779.67333984375', '750.00195312500000', '79.01744079589843750', '100', '0', '0'),
(@PATH_ID, '27', '-6766.43066406250', '753.60382080078125', '85.08976745605468750', '100', '0', '0'),
(@PATH_ID, '28', '-6758.62060546875', '760.69219970703125', '87.04972839355468750', '100', '0', '0');

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CREATURE_0, '0', '1', '1', '0', '0', '-6758.97851562500', '761.72283935546875', '87.04808807373046875', '3.717551231384277343', '300', '300', '0', '0'),
(@CREATURE_1, '0', '1', '1', '0', '0', '-6757.06201171875', '762.68878173828125', '87.32467651367187500', '3.490658521652221679', '300', '300', '0', '0');

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '15184'),
(@CREATURE_1, '15184');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 001', '0', '0', '0', '0');

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1');

REPLACE INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '1', '6', '0', @PATH_ID, @PATH_TYPE, 'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 001');
