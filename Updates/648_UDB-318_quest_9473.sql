-- q.9473 'An Alternative Alternative'
DELETE FROM dbscripts_on_quest_end WHERE id = 9473;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9473,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(9473,2,3,0,0,0,0,0,0,0,0,0,-4191.78,-12474,45.8086,3.92804,''),
(9473,4,3,0,0,0,0,0,0,0,0,0,-4196.96,-12475.7,45.72,2.56773,''),
(9473,6,3,0,0,0,0,0,0,0,0,0,-4200.02,-12472.6,45.6286,1.87579,''),
(9473,8,0,0,0,0,0,0,2000000655,0,0,0,0,0,0,0,''),
(9473,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9473,13,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9473,16,0,0,0,0,0,0,2000000656,0,0,0,0,0,0,0,''),
(9473,19,0,0,0,17117,84578,7 | 0x10,2000000657,0,0,0,0,0,0,0,''),
(9473,22,0,0,0,17117,84578,7 | 0x10,2000000658,0,0,0,0,0,0,0,''),
(9473,22,28,1,0,17117,84578,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_SIT'),
(9473,24,0,0,0,17117,84578,7 | 0x10,2000000659,0,0,0,0,0,0,0,''),
(9473,29,0,0,0,17117,84578,7 | 0x10,2000000660,0,0,0,0,0,0,0,''),
(9473,32,1,25,0,17117,84578,7 | 0x10,0,0,0,0,0,0,0,0,''),
(9473,38,0,0,0,17117,84578,7 | 0x10,2000000661,0,0,0,0,0,0,0,''),
(9473,38,28,3,0,17117,84578,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(9473,38,3,0,0,0,0,0,0,0,0,0,-4197.28,-12474.5,45.6484,0.101384,''),
(9473,40,3,0,0,0,0,0,0,0,0,0,-4192.1,-12472.7,45.7121,0.999094,''),
(9473,42,3,0,0,0,0,0,0,0,0,0,-4191.15,-12470,45.6375,1.24414,''),
(9473,45,3,0,0,0,0,0,0,0,0,0,-4191.15,-12470,45.6375,3.80482,''),
(9473,45,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added');
UPDATE quest_template SET CompleteScript = 9473 WHERE entry = 9473;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000655 AND 2000000661;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000655,'This should do it...',0,0,0,69,NULL),
(2000000656,'Wake up little creature. Wake up from your slumber... You are safe now.',0,0,0,0,NULL),
(2000000657,'%s groans.',0,2,0,0,NULL),
(2000000658,'%s sits up.',0,2,0,0,NULL),
(2000000659,'Whe... Where am I? What... What is this place?',0,0,0,5,NULL),
(2000000660,'BY THE LIGHT OF ELUNE! Eredar! Cursed demons, what have you done to me? I have not come alone, we will fight you as we have in the past! I...',0,0,0,6,NULL),
(2000000661,'%s falls back into a coma.',0,2,0,0,NULL);


