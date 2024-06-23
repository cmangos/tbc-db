DELETE FROM creature WHERE guid IN(86746,86745,86744);
DELETE FROM creature_movement WHERE id IN(86746,86745,86744);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('86746', '18682', '530', '1', '1172.08996582031250000000', '8023.14990234375000000000', '17.74830055236816400000', '0.67077898979187010000', '10506', '10506', '0', '2'),
('86745', '18682', '530', '1', '-1023.69000244140620000000', '5095.25000000000000000000', '17.38409996032715000000', '6.16307020187377900000', '10506', '10506', '0', '2'),
('86744', '18682', '530', '1', '-294.88000488281250000000', '6951.41015625000000000000', '19.35709953308105500000', '5.86618995666503900000', '10506', '10506', '0', '2');

SET @SGGUID := 24000; -- Zangarmarsh
DELETE FROM spawn_group WHERE Id = @SGGUID+3;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+3, 'Zangarmarsh - Bog Lurker', 0, 1, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+3;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+3, 86746, -1),
(@SGGUID+3, 86745, -1),
(@SGGUID+3, 86744, -1);

SET @MOVID = 99258;

