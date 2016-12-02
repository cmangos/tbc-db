-- Kayneth Stillwind
-- temp. equip or visual spell missing...
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 32331;
DELETE FROM creature_movement WHERE id = 32331;
UPDATE creature_template SET MovementType = 2 WHERE entry = 3848;
DELETE FROM creature_movement_template WHERE entry = 3848;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(3848,1,2954.25,-3215.41,169.205,20000,0,3.49066,0,0),
(3848,2,2966.65,-3213.95,168.914,60000,384801,0.0702074,0,0),
(3848,3,2954.23,-3215.45,169.206,90000,0,3.3457,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 384801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(384801,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0.965562,''),
-- temp. equip "on"
(384801,6,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(384801,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- temp. equip "off"
(384801,59,0,0,0,0,0,0,2000000474,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000474;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000474,'Putting the bottles away, %s sighs.',0,2,0,0,NULL);


