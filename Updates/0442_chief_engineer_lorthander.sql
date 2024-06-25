DELETE FROM creature WHERE guid IN(99260,99261,99262);
-- DELETE FROM creature_movement WHERE id IN(99260,99261,99262);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('99260', '18697', '530', '1', '4081.08007812500000000000', '4001.03002929687500000000', '119.01000213623047000000', '4.57457017898559600000', '43200', '86400', '0', '2'),
('99261', '18697', '530', '1', '2412.86010742187500000000', '2894.40991210937500000000', '131.32299804687500000000', '3.35328006744384770000', '43200', '86400', '0', '2'),
('99262', '18697', '530', '1', '3000.45996093750000000000', '2187.57006835937500000000', '164.39799499511720000000', '5.29949998855590800000', '43200', '86400', '0', '2');

SET @SGGUID := 28000; -- Netherstorm
DELETE FROM spawn_group WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+2, 'Netherstorm - Chief Engineer Lorthander', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+2;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+2, 99260, -1),
(@SGGUID+2, 99261, -1),
(@SGGUID+2, 99262, -1);