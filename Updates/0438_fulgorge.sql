DELETE FROM creature WHERE guid IN(99246,99247,99248);
-- DELETE FROM creature_movement WHERE id IN(99246,99247,99248);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('99246', '18678', '530', '1', '232.75999450683594000000', '3937.88989257812500000000', '73.82289886474610000000', '2.42653989791870100000', '43200', '86400', '0', '2'),
('99247', '18678', '530', '1', '-219.06199645996094000000', '3218.43994140625000000000', '-74.57980346679688000000', '2.16421008110046400000', '43200', '86400', '0', '2'),
('99248', '18678', '530', '1', '-974.64801025390620000000', '2456.80004882812500000000', '5.99800014495849600000', '2.14064002037048340000', '43200', '86400', '0', '2');

SET @SGGUID := 22000; -- Hellfire Peninsula
DELETE FROM spawn_group WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Hellfire Peninsula - Fulgorge', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, 99246, -1),
(@SGGUID+1, 99247, -1),
(@SGGUID+1, 99248, -1);