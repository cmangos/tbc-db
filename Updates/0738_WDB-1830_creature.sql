-- Wounded Soldier 19445 - script updated
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1944501 AND 1944503; 
insert into dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(1944501,0,31,19446,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944501,1,21,1,0,0,19446,31,7,0,0,0,0,0,0,0,0,'buddy active'),
(1944501,1,0,0,0,0,19446,31,7,2000005412,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944502,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.42158,''),
(1944502,5,0,0,0,0,0,0,0,2000001417,0,0,0,0,0,0,0,''),
(1944502,9,0,0,0,0,0,0,0,2000005413,0,0,0,0,0,0,0,''),
(1944502,13,31,19446,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944502,14,0,0,0,0,19446,31,7,2000005414,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,0,1,93,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,4,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,5,31,19446,20,0,0,0,0,-15000,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944503,6,3,0,0,0,19446,21,7,0,0,0,0,0,0,0,0.532048,'force 19446 to: move'),
(1944503,6,0,0,0,0,19446,21,7,2000005415,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,10,0,0,0,0,0,0,0,2000005416,0,0,0,0,0,0,0,''),
(1944503,12,31,19446,20,0,0,0,0,-8000,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944503,13,0,0,0,0,19446,21,7,2000005417,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,16,31,19446,20,0,0,0,0,-4000,0,0,0,0,0,0,0,'search for buddy - 19446'),
(1944503,17,0,0,0,0,19446,21,7,2000001414,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,17,3,0,0,0,19446,21,7,0,0,0,0,0,0,0,5.51524,'force 19446 to: move'),
(1944503,18,21,0,0,0,19446,21,7,0,0,0,0,0,0,0,0,'buddy unactive');

-- In case if npc is killed during event...
DELETE FROM dbscripts_on_creature_death WHERE id = 19446;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19446,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

UPDATE dbscript_string SET emote = 5 WHERE entry = 2000005415;

-- moved to acid / Sync!
DELETE FROM `dbscript_string` WHERE `entry` IN (2000001414,2000001417,2000005440,2000005441,2000005442,2000005443,2000005444);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000001414, 'NEVER AGAIN!! Next time some wounded soldier wants to return to the front line, I am putting my foot down. I mean it this time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, NULL),
(2000001417, 'Sir! If I don\'t get out there and fight for Azeroth, then why am I in this army? I enlisted to do a job, and I intend to see it through.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

