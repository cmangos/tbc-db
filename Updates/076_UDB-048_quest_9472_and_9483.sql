-- q.9472 'Arelion's Mistress'
-- TEMP Discreet Location - xyz update
UPDATE gameobject SET position_x = -722.991, position_y = 4168.96, position_z = 50.4291 WHERE guid = 99910;
-- To finish q. we need to add script for prev. quest. 
-- q.9483 'Life's Finer Pleasures'
DELETE FROM dbscripts_on_quest_end WHERE id = 9483;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9483,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(9483,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Viera Sunwhisper - active'),
(9483,3,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(9483,6,0,0,0,0,0,0,2000000388,0,0,0,0,0,0,0,''),
(9483,6,32,1,0,17230,61963,7 | 0x10,0,0,0,0,0,0,0,0,'wp pause'),
(9483,7,25,1,0,17230,61963,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(9483,8,3,0,0,0,0,0,0,0,0,0,-656.13,4146.6,64.128,2.16845,''),
(9483,8,3,0,0,17230,61963,7 | 0x10,0,0,0,0,-656.13,4146.6,64.128,2.16845,''),
(9483,11,3,0,0,0,0,0,0,0,0,0,-682.265,4148.52,63.9026,1.87414,''),
(9483,18,3,0,0,17230,61963,7 | 0x10,0,0,0,0,-682.265,4148.52,63.9026,1.87414,''),
(9483,19,3,0,0,0,0,0,0,0,0,0,-699.983,4184.54,57.9007,2.85353,''),
(9483,20,25,0,0,17230,61963,7 | 0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(9483,21,3,0,0,17230,61963,7 | 0x10,0,0,0,0,-699.983,4184.54,57.9007,2.85353,''),
(9483,30,3,0,0,0,0,0,0,0,0,0,-718.249,4174.95,51.9827,4.24132,''),
(9483,31,3,0,0,17230,61963,7 | 0x10,0,0,0,0,-718.249,4174.95,51.9827,4.24132,''),
(9483,37,3,0,0,0,0,0,0,0,0,0,-719.781,4168.6,51.2242,4.51228,''),
(9483,38,3,0,0,17230,61963,7 | 0x10,0,0,0,0,-718.649,4170.65,51.8661,4.50951,''),
(9483,36,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(9483,93,31,17230,220,0,0,0,0,0,0,0,0,0,0,0,''), -- check and desp if its nessesary
(9483,94,18,0,0,17230,61963,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9483,94,18,0,0,17226,61961,7 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 9483 WHERE entry = 9483;
-- Twinkle
UPDATE creature SET spawntimesecs = 60 WHERE guid = 61963; -- quest req. 
-- Viera Sunwhisper c.17226
UPDATE creature SET spawntimesecs = 60 WHERE guid = 61961; -- quest req.
UPDATE creature_template SET MovementType = 2 WHERE entry = 17226;
DELETE FROM creature_movement_template WHERE entry = 17226;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(17226,1,-719.781,4168.6,51.2242,7000,1722601,0,0,0,0,0,0,0,4.51228,0,0),
(17226,2,-723.602,4123.29,49.3491,1000,1722602,0,0,0,0,0,0,0,4.60652,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1722601,1722602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1722601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1722601,1,25,1,0,17230,61963,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1722601,1,0,0,0,0,0,0,2000000389,0,0,0,0,0,0,0,''),
(1722601,5,0,0,0,0,0,0,2000000390,0,0,0,0,0,0,0,''),
(1722601,7,0,0,0,0,0,0,2000000391,0,0,0,0,0,0,0,''),
(1722601,11,3,0,0,17230,61963,7 | 0x10,0,0,0,0,-723.602,4123.29,49.3491,4.60652,''),
(1722601,9,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Viera Sunwhisper - unactive'),
(1722601,17,18,0,0,17230,61963,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1722602,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000388 AND 2000000391;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000388,'Ok, let\'s go.  I know just the perfect spot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000389,'What... is happening... to me?  Get this cat away from me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000390,'Twinkle looks at Viera Sunwhisper with very hungry eyes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000000391,'%s scurries away, attempting to flee from Twinkle.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);

