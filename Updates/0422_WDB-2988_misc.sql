-- Kobold Geomancer 476
-- UPDATE creature_template SET UnitClass = 8 WHERE entry = 476;

-- Princess 330
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 /*, spawndist = 0, MovementType = 2*/ WHERE `guid` = 80849 AND `id` = 330;

-- DELETE FROM creature_movement WHERE id = 80849;
-- UPDATE creature_template SET MovementType = 2 WHERE entry = 330;
-- DELETE FROM creature_movement_template WHERE entry = 330;
-- INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- (330,1,-9789.04,-883.081,39.7169,5.49499,0,0),
-- (330,2,-9778.89,-886.159,39.5577,6.22148,0,0),
-- (330,3,-9764.3,-887.894,39.4625,0.42539,0,0),
-- (330,4,-9756.13,-883.658,39.4828,1.05764,0,0),
-- (330,5,-9754.27,-867.836,39.5175,1.88623,0,0),
-- (330,6,-9765,-857.964,39.5037,2.5067,0,0),
-- (330,7,-9780.19,-855.94,39.6235,3.03291,0,0),
-- (330,8,-9788.41,-861.402,39.4437,3.72799,0,0),
-- (330,9,-9794.33,-873.049,39.6014,5.36554,0,0);

-- Handled in creature_linking_template
-- links
-- UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (80848,80850);
-- DELETE FROM creature_linking WHERE guid IN (80848,80850);
-- INSERT INTO creature_linking (guid, master_guid, flag) VALUES
-- (80848, 80849, 512),
-- (80850, 80849, 512);

