-- Jane & Kitty
UPDATE creature SET position_x = 10509.476563, position_y = -6503.363281, position_z = 3.391211, Spawndist = 10, MovementType = 1 WHERE guid = 71601;
UPDATE creature SET position_x = 10509.476563, position_y = -6503.363281, position_z = 3.391211, Spawndist = 0, MovementType = 0 WHERE guid = 71942;
-- Nova & Manny
UPDATE creature SET position_x = 10516.872070, position_y = -6494.785645, position_z = 3.605470, Spawndist = 10, MovementType = 1 WHERE guid = 71940;
UPDATE creature SET position_x = 10516.872070, position_y = -6494.785645, position_z = 3.605470, Spawndist = 0, MovementType = 0 WHERE guid = 71941;
-- Links
DELETE FROM creature_linking WHERE guid IN (71942,71941);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(71941, 71940, 512),
(71942, 71601, 512);

-- Jessel
UPDATE creature_template_addon SET bytes1 = 0, auras = NULL WHERE entry = 20100;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 71602;
UPDATE creature_template SET MovementType = 2 WHERE entry = 20100;
DELETE FROM creature_movement_template WHERE entry = 20100;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation,model1,model2) VALUES
(20100,1,10520.5,-6504.38,1.28933,50000,2010001,5.48033,0,0),
(20100,2,10520.5,-6504.38,1.28933,120000,0,5.48033,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2010001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2010001,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Jessel - active'),
(2010001,2,15,14915,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2010001,3,28,3,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(2010001,14,14,14915,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2010001,15,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(2010001,16,0,0,0,0,0,0,2000000467,0,0,0,0,0,0,0,''),
(2010001,21,0,0,0,0,0,0,2000000468,0,0,0,0,0,0,0,''),
(2010001,26,1,22,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2010001,32,0,0,0,20098,71601,7 | 0x10,2000000469,0,0,0,0,0,0,0,'force 20098 to: say text'),
(2010001,37,0,0,0,0,0,0,2000000470,0,0,0,0,0,0,0,''),
(2010001,40,0,0,0,20098,71601,7 | 0x10,2000000471,0,0,0,0,0,0,0,'force 20098 to: say text'),
(2010001,43,15,14915,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2010001,44,28,3,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(2010001,46,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Jessel - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000467 AND 2000000471;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000467,'%s wakes up, startled.',0,2,0,0,NULL),
(2000000468,'Was... Was it all a dream? Azuremyst, Bloodmyst, Zangarmarsh, Shadowmoon... even Zul\'Aman... Jane! Jane where are you!',0,0,10,6,NULL),
(2000000469,'I\'m right here, daddy. You\'ve been asleep all day long. You sure must be tired!',0,0,10,1,NULL),
(2000000470,'Ah, wonderful. It was all just a dream...',0,0,10,1,NULL),
(2000000471,'%s resumes playing on the beach.',0,2,0,0,NULL);



