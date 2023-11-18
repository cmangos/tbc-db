DELETE FROM creature_template_addon WHERE entry=18696;
INSERT INTO creature_template_addon(entry,auras) VALUES
(18696,'12743');
SET @CGUID := 5305010; -- creatures
SET @SGGUID := 26000; -- Shadowmoon Valley
DELETE FROM creature WHERE id=18696;
DELETE FROM creature_movement WHERE Id IN (78222);
DELETE FROM pool_creature_template WHERE id = 18696;
DELETE FROM pool_template WHERE entry = 1188;
INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(@CGUID+1, '18696', '530', '1', '-2405.5', '1720.5', '-2.965846', '0', '43200', '86400', '18', '1'),
(@CGUID+2, '18696', '530', '1', '-4485', '1915', '150.634903', '0', '43200', '86400', '25', '1'),
(@CGUID+3, '18696', '530', '1', '-3427', '1909', '90.174660', '0', '43200', '86400', '33', '1'),
(@CGUID+4, '18696', '530', '1', '-3667', '938', '56.308254', '0', '43200', '86400', '25', '1'),
(@CGUID+5, '18696', '530', '1', '-3610', '2520', '73.539108', '0', '43200', '86400', '30', '1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+3, 'Shadowmoon Valley - Collidus the Warp-Watcher', 0, 1, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+3, @CGUID+1, -1),
(@SGGUID+3, @CGUID+2, -1),
(@SGGUID+3, @CGUID+3, -1),
(@SGGUID+3, @CGUID+4, -1),
(@SGGUID+3, @CGUID+5, -1);


