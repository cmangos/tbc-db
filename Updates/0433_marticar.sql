DELETE FROM creature WHERE guid IN(66945,99285,99286);
DELETE FROM creature_movement WHERE id IN(66945,99285,99286);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('66945', '18680', '530', '1', '909.79797363281250000000', '6974.81982421875000000000', '20.72750091552734400000', '4.35157012939453100000', '82800', '82800', '0', '2'),
('99285', '18680', '530', '1', '641.62902832031250000000', '5601.52978515625000000000', '21.72890090942382800000', '1.20404005050659180000', '104400', '104400', '0', '2'),
('99286', '18680', '530', '1', '-35.42789840698242000000', '8945.67968750000000000000', '18.99340057373047000000', '0.34088999032974243000', '122400', '122400', '0', '2');

SET @SGGUID := 24000; -- Zangarmarsh
DELETE FROM spawn_group WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+2, 'Zangarmarsh - Marticar', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+2, 66945, -1),
(@SGGUID+2, 99285, -1),
(@SGGUID+2, 99286, -1);

SET @MOVID = 99258;


