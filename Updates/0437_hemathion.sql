DELETE FROM creature WHERE guid IN(200071,200070);
-- DELETE FROM creature_movement WHERE id IN(200071,200070);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('200071', '18692', '530', '1', '1837.67004394531250000000', '7158.52978515625000000000', '364.39801025390625000000', '2.69354009628295900000', '43200', '86400', '0', '2'),
('200070', '18692', '530', '1', '2807.89990234375000000000', '7239.04980468750000000000', '365.24200439453125000000', '4.89663982391357400000', '43200', '86400', '0', '2');

SET @SGGUID := 23000; -- Blades Edge
DELETE FROM spawn_group WHERE Id = @SGGUID+3;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+3, 'Blades Edge Mountains - Hemathion', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+3;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+3, 200071, -1),
(@SGGUID+3, 200070, -1);