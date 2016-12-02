-- The Mechanar -- doors added
-- handled by SD2
DELETE FROM gameobject WHERE guid IN (43097,43098,43099,44726);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(43097, 184322, 554, 3, 242.874, 52.3148, 1.59633, 3.14159, 0, 0, -1, 0, 43200, 0, 1),
(43098, 184632, 554, 3, 236.46, 52.3636, 1.65354, 3.14159, 0, 0, -1, 0, 43200, 0, 1),
(43099, 184069, 550, 1, 743.057, 4.63443, 137.796, 3.14159, 0, 0, -1, 0, 7200, 255, 1),
(44726, 184449, 554, 3, 267.9281, 52.31481, 27.04254, 3.141593, 0, 0, -1, 0, 7200, 255, 0);
UPDATE gameobject SET spawnMask = 3 WHERE id = 184849;
-- objects update
UPDATE gameobject_template SET flags = 32, faction = 1375 WHERE entry IN (184322,184632,184449);

-- Tempest-Forge Destroyer - wps update
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 83173;
DELETE FROM creature_movement WHERE id = 83173;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83173,1,200.165,52.1172,-0.00492364,0,0,3.01772,0,0),
(83173,2,229.678,52.6314,0.00518766,0,0,0.0214238,0,0);


