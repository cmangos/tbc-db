DELETE FROM creature WHERE guid IN(99263,99264,99265);
-- DELETE FROM creature_movement WHERE id IN(99263,99264,99265);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('99263', '18698', '530', '1', '4029.03002929687500000000', '4134.35009765625000000000', '191.49600219726562000000', '4.54011011123657200000', '43200', '86400', '0', '2'),
('99264', '18698', '530', '1', '2943.06005859375000000000', '4351.27978515625000000000', '142.35899353027344000000', '0.00021499999274965376', '43200', '86400', '0', '2'),
('99265', '18698', '530', '1', '3706.06005859375000000000', '2078.25000000000000000000', '151.86700439453125000000', '1.03066003322601320000', '43200', '86400', '0', '2');

SET @SGGUID := 28000; -- Netherstorm
DELETE FROM spawn_group WHERE Id = @SGGUID+3;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+3, 'Netherstorm - Ever-Core the Punisher', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+3;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+3, 99263, -1),
(@SGGUID+3, 99264, -1),
(@SGGUID+3, 99265, -1);