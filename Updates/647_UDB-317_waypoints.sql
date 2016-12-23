-- Technician Dyvuun
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 57476;
UPDATE creature_template SET movementType = 2 WHERE entry = 16551;
DELETE FROM creature_movement WHERE id = 57476;
DELETE FROM creature_movement_template WHERE entry = 16551;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16551, 1, -4158.32, -12483.1, 45.4554, 20000, 0, 3.85718, 0, 0),
(16551, 2, -4157.08, -12480.4, 45.2039, 46000, 1655101, 1.20771, 0, 0),
(16551, 3, -4158.32, -12483.1, 45.4554, 90000, 0, 3.85718, 0, 0),
(16551, 4, -4157.08, -12480.4, 45.2039, 65000, 1655102, 1.20771, 0, 0),
(16551, 5, -4158.32, -12483.1, 45.4554, 100000, 0, 3.85718, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1655101 AND 1655102;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1655101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1655101,40,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1655101,43,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1655102,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1655102,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1655102,10,13,0,0,181805,50,0x02,0,0,0,0,0,0,0,0,''),
(1655102,12,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1655102,12,10,17268,27000,0,0,0,0,0,0,0,-4156.35,-12477.5,46.1839,3.12414,'summon Image of Technician Zhanna'),
(1655102,14,36,0,0,17268,50,3,0,0,0,0,0,0,0,0,''),
(1655102,17,0,0,0,17268,50,3,2000000651,0,0,0,0,0,0,0,''),
(1655102,21,0,0,0,0,0,0,2000000652,0,0,0,0,0,0,0,''),
(1655102,30,0,0,0,17268,50,3,2000000653,0,0,0,0,0,0,0,''),
(1655102,39,0,0,0,0,0,0,2000000654,0,0,0,0,0,0,0,''),
(1655102,45,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1655102,60,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000651 AND 2000000654;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000651,'Dyvuun, is that you?',0,0,0,0,NULL),
(2000000652,'Yes, Zhanna, it\'s me! Your signal is weak.',0,0,0,0,NULL),
(2000000653,'I can barely hear you... <static> aking up!',0,0,0,0,NULL),
(2000000654,'Zhanna! Gah, I have to get this thing fixed!',0,0,0,0,NULL);

-- Image of Technician Dyvuun
UPDATE creature_template SET UnitFlags = 33587968, movementType = 0 WHERE entry = 17268; -- correct flags 
-- must be summoned
DELETE FROM creature WHERE guid = 62014;
DELETE FROM creature_addon WHERE guid = 62014;
DELETE FROM creature_movement WHERE id = 62014;


