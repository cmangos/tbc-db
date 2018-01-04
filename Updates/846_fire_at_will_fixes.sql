UPDATE creature_template SET UnitFlags=256 WHERE entry IN(22443);

DELETE FROM creature WHERE guid IN(78881,78882,78955,78956);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('78881', '22471', '530', '1', '0', '0', '2188.262', '5478.035', '159.4316', '1.623156', '300', '300', '0', '0', '9500', '0', '0', '0'),
('78882', '22472', '530', '1', '0', '0', '1978.722', '5315.313', '162.2831', '6.091199', '300', '300', '0', '0', '9500', '0', '0', '0'),
('78955', '22502', '530', '1', '0', '0', '2188.702', '5477.067', '155.1576', '5.707227', '300', '300', '0', '0', '4120', '0', '0', '0'),
('78956', '22502', '530', '1', '0', '0', '1983.291', '5317.166', '156.6592', '0.9075712', '300', '300', '0', '0', '4120', '0', '0', '0');

