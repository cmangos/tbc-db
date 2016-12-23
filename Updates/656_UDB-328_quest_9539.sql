-- q.9539 'Totem of Coo'
DELETE FROM dbscripts_on_quest_start WHERE id = 9539;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9539,1,10,17379,120000,0,0,0,0,0,0,0,-4178.3,-12515.1,44.3627,2.63132,'summon Stillpine Ancestor Akida'),
(9539,2,21,1,0,17379,30,7,0,0,0,0,0,0,0,0,'active'),
(9539,4,36,0,0,17379,50,0,0,0,0,0,0,0,0,0,'face player'),
(9539,5,0,0,0,17379,50,0,2000000666,0,0,0,0,0,0,0,''),
(9539,6,20,2,0,17379,30,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
UPDATE quest_template SET StartScript = 9539 WHERE entry = 9539;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000666 AND 2000000667;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000666,'%s urges you to follow him.',0,2,0,0,NULL),
(2000000667,'%s points to the totem of Coo.',0,2,0,25,NULL);

-- Stillpine Ancestor Akida
UPDATE creature_template SET SpeedRun = 1, MovementType = 0 WHERE Entry = 17379; -- waypoints will be set by script
DELETE FROM creature_movement_template WHERE entry = 17379;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17379, 1, -4178.3,-12515.1,44.3627, 2000, 1737901, 100, 0, 0),
(17379, 2, -4156.91,-12516.1,45.0017, 0, 0,6.12162, 0, 0),
(17379, 3, -4134.95,-12516.6,44.8959, 0, 0,6.27084, 0, 0),
(17379, 4, -4123.49,-12517.2,44.8246, 0, 0,6.00223, 0, 0),
(17379, 5, -4097.6,-12522.4,42.0019, 0, 0,6.03915, 0, 0),
(17379, 6, -4077.12,-12530.6,43.7753, 0, 0,5.85851, 0, 0),
(17379, 7, -4060.63,-12538.1,44.1549, 0, 0,5.66217, 0, 0),
(17379, 8, -4050.65,-12546.2,42.2335, 0, 0,5.59541, 0, 0),
(17379, 9, -4034.49,-12560.5,44.9926, 0, 0,5.52865, 0, 0),
(17379, 10, -4016.73,-12579.5,49.464, 0, 0,5.45011, 0, 0),
(17379, 11, -4003.06,-12595.4,53.3469, 0, 0,5.41477, 0, 0),
(17379, 12, -3989.72,-12611.6,59.1497, 0, 0,5.39514, 0, 0),
(17379, 13, -3970.6,-12636.3,64.4018, 0, 0,5.35979, 0, 0),
(17379, 14, -3959.1,-12651.6,71.234, 0, 0,5.35587, 0, 0),
(17379, 15, -3945.98,-12669.7,75.8562, 0, 0,5.32838, 0, 0),
(17379, 16, -3937.34,-12685.6,81.0235, 0, 0,5.18701, 0, 0),
(17379, 17, -3925.95,-12719,89.6782, 0, 0,5.06135, 0, 0),
(17379, 18, -3915.914,-12743.41,98.69524, 15000, 1737902,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1737901,1737902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1737901,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1737902,3,36,0,0,17361,50,1,0,0,0,0,0,0,0,0,'face Totem of Coo'),
(1737902,5,0,0,0,0,0,0,2000000667,0,0,0,0,0,0,0,''),
(1737902,10,15,30428,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1737902,10,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(1737902,11,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');


