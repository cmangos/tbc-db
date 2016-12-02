-- Nagrand
-- Consortium Overseer
UPDATE creature SET position_x = -2063.320557, position_y = 8546.734375, position_z = 23.936728, spawndist = 0, MovementType = 2 WHERE guid = 65566;
DELETE FROM creature_movement WHERE id = 65566;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18274;
DELETE FROM creature_movement_template WHERE entry = 18274;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18274,1,-2086,8569.04,21.5988,0,0,2.25497,0,0),
(18274,2,-2104.1,8587.69,18.2267,0,0,2.44975,0,0),
(18274,3,-2076.87,8558.08,22.9817,0,0,5.41856,0,0),
(18274,4,-2065.22,8536.39,23.9165,60000,1827401,5.10126,0,0),
(18274,5,-2074.9,8545.01,22.9726,0,0,1.88819,0,0),
(18274,6,-2078.75,8557.38,22.8488,0,0,2.1081,0,0),
(18274,7,-2086.85,8569.92,21.4582,0,0,2.22591,0,0),
(18274,8,-2103.09,8588.28,18.2584,0,0,0.444629,0,0),
(18274,9,-2091.81,8599.37,20.2861,0,0,0.0809899,0,0),
(18274,10,-2068.57,8594.29,21.5667,0,0,5.19236,0,0),
(18274,11,-2064.07,8583.91,21.4222,0,0,4.72034,0,0),
(18274,12,-2063.53,8571.92,23.4418,0,0,4.72539,0,0),
(18274,13,-2063.37,8546.69,23.9351,60000,1827402,4.61544,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1827401,1827402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1827401,59,0,0,0,0,0,0,2000000493,0,0,0,0,0,0,0,''),
(1827402,0,20,1,10,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1827402,59,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint');
DELETE FROM db_script_string WHERE entry = 2000000493;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000493,'Try to keep appraisal errors to a minimum.  I\'d hate to tell Gezhe we\'ve overpaid on another gem shipment this month.',0,0,0,0,NULL);


