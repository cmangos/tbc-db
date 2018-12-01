-- has accompanying core commit
UPDATE creature_template SET UnitFlags=33554432,FactionAlliance=35,FactionHorde=35 WHERE entry IN(23416);
UPDATE creature_model_info SET bounding_radius=3.05556,combat_reach=10 WHERE modelid IN(20952);
DELETE FROM creature_movement_template WHERE entry IN(22357) AND pathId IN(1);
INSERT INTO creature_movement_template(entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
('22357', '1', '1', '-1505.546', '9770.327', '200.3277', '100', '3500', '0', NULL),
('22357', '1', '2', '-1531.002', '9802.706', '199.0381', '100', '500', '0', NULL),
('22357', '1', '3', '-1557.931', '9834.344', '200.9487', '100', '10000', '0', NULL);


