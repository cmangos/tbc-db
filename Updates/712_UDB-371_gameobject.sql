-- Shrine of Gelihast -- missing trap added
-- empty guids reused -- UDB ONLY
DELETE FROM gameobject WHERE guid = 14106;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(14106, 94039, 48, 1, -839.619, -477.904, -33.7343, 3.14159, 0, 0, 0.926452, 0.376412, 300, 255, 1);

-- Altar of the Deeps
DELETE FROM dbscripts_on_go_template_use WHERE id = 103016; 
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(103016,1,31,4829,50,0,0,0x08,0,0,0,0,0,0,0,0,'search for 4829'), -- boss must be killed
(103016,2,31,6729,50,0,0,0x08,0,0,0,0,0,0,0,0,'search for 6729'), -- only one must be spawned
(103016,3,10,6729,300000,0,0,0,0,0,0,0,-857.158,-467.636,-33.9256,5.90677,'');
-- Morridune
UPDATE creature_template SET UnitFlags = 2, MovementType = 2 WHERE entry = 6729;
DELETE FROM creature_movement_template WHERE entry = 6729;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(6729,1,-857.158,-467.636,-33.9256,1000,672901,5.90677,0,0),
(6729,2,-840.903,-474.555,-34.0673,5000,672902,1.86432,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 672901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(672901,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(672902,1,0,0,0,0,0,0,2000005241,0,0,0,0,0,0,0,''),
(672902,1,29,1,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added'),
(672902,2,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause');
DELETE FROM db_script_string WHERE entry = 2000005241;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005241,'Speak with me to hear my tale.',0,0,0,0,'');
-- teleport possition corrected
DELETE FROM spell_target_position WHERE id = 9268;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(9268, 1, 9664.01, 2526.15, 1332.16, 0);


