DELETE FROM creature WHERE guid IN(86860,99266,99267);
-- DELETE FROM creature_movement WHERE id IN(86860,99266,99267);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('86860', '20932', '530', '1', '3280.81005859375000000000', '1907.82995605468750000000', '133.22900390625000000000', '1.89857995510101320000', '43200', '86400', '0', '2'),
('99266', '20932', '530', '1', '2817.22998046875000000000', '2929.54003906250000000000', '130.13800048828125000000', '2.32735991477966300000', '43200', '86400', '0', '2'),
('99267', '20932', '530', '1', '4788.54003906250000000000', '3503.48999023437500000000', '119.85099792480469000000', '3.12453007698059100000', '43200', '86400', '0', '2');

SET @SGGUID := 28000; -- Netherstorm
DELETE FROM spawn_group WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Netherstorm - Nuramoc', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, 86860, -1),
(@SGGUID+1, 99266, -1),
(@SGGUID+1, 99267, -1);