-- UDB_275
-- Ring of Observance - Shadow Labyrinth entrance
-- Lower City Healer
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 69877;
DELETE FROM creature_movement WHERE id = 69877;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(69877,1,-3610.66,4948.03,-101.05,15000,0,3.12345,0,0),
(69877,2,-3610.79,4938.52,-101.05,15000,0,3.07789,0,0);
-- Lower City Operative
UPDATE creature SET position_x = -3615.746338, position_y = 4945.628906, position_z = -101.048439, orientation = 3.256698 WHERE guid = 85755;
UPDATE creature SET position_x = -3615.463623, position_y = 4943.306641, position_z = -101.048439, orientation = 3.344565 WHERE guid = 85754;
UPDATE creature SET position_x = -3616.228516, position_y = 4940.459473, position_z = -101.048439, orientation = 2.924377 WHERE guid = 84773;
DELETE FROM dbscripts_on_creature_death WHERE id = 19501;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19501,5,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'resp');
-- Cabal Agent
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 56341;
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56341, 19503, 530, 1, -3655.25, 4940.03, -101.048, 0.17698, 300, 6542, 0, 0, 2);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (56341,69878,69879);
DELETE FROM creature_movement WHERE id IN (56341,69878,69879);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56341,1, -3655.25,4940.03,-101.048,4000,1950301,0.17698,0,0),
(56341,2,-3618.24,4944.49,-101.049,5000,1950302,6.21765,0,0),
(69878,1,-3655.05,4945.2,-101.048,2000,1950301,6.04428,0,0),
(69878,2,-3618.24,4944.49,-101.049,5000,1950302,6.21765,0,0),
(69879,1,-3655.25,4943.03,-101.048,2000,1950301,0.115848,0,0),
(69879,2,-3619.75,4942.19,-101.049,5000,1950302,0.0216377,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1950301 AND 1950302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1950301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1950302,1,31,19501,50,0,0,0,0,0,0,0,0,0,0,0,'search for 19501'),
(1950302,2,26,0,0,19501,50,1,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 19503;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19503,10,41,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'resp');


