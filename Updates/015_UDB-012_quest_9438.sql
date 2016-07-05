-- Messenger to Thrall(q.9438) 
UPDATE creature SET position_x = 1920.01, position_y = -4123.95, position_z = 43.63 WHERE guid = 4770;
UPDATE creature_template_addon SET bytes1 = 5, emote = 0 WHERE entry = 4949;
DELETE FROM dbscripts_on_quest_end WHERE id = 9438;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9438,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Thrall active'),
(9438,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'4949 - NpcFlag removed'),
(9438,2,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(9438,6,0,0,0,0,0,0,2000000016,0,0,0,0,0,0,0,''),
(9438,10,3,0,0,0,0,0,0,0,0,0,1923.52,-4136.32,40.574,4.80241,''),
(9438,18,0,0,0,0,0,0,2000000017,0,0,0,0,0,0,0,''),
(9438,22,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(9438,23,25,1,0,3144,50,7,0,0,0,0,0,0,0,0,'RUN ON'),
(9438,25,0,0,0,0,0,0,2000000018,0,0,0,0,0,0,0,''),
(9438,26,3,0,0,3144,50,7,0,0,0,0,1923.41,-4138.83,40.608,0.540048,''),
(9438,31,3,0,0,3144,50,7,0,0,0,0,0,0,0,1.61604,''),
(9438,33,0,0,0,3144,20,7,2000000098,0,0,0,0,0,0,0,'force buddy to: say text'),
(9438,38,0,0,0,0,0,0,2000000099,0,0,0,0,0,0,0,''),
(9438,43,28,8,0,3144,20,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(9438,45,0,0,0,3144,20,7,2000000100,0,0,0,0,0,0,0,'force buddy to: say text'),
(9438,48,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(9438,49,3,0,0,0,0,0,0,0,0,0,1920.33,-4126.62,43.1443,1.62468,''),
(9438,54,3,0,0,0,0,0,0,0,0,0,0,0,0,4.86366,''),
(9438,57,0,0,0,0,0,0,2000000101,0,0,0,0,0,0,0,''),
(9438,60,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9438,61,25,0,0,3144,50,7,0,0,0,0,0,0,0,0,'RUN OFF'),
(9438,62,28,0,0,3144,50,7,0,0,0,0,0,0,0,0,'STATE_STAND'),
(9438,63,3,0,0,3144,50,7,0,0,0,0,1925.12,-4137.15,40.6369,2.32692,''),
(9438,64,3,0,0,3144,50,7,0,0,0,0,1923.25,-4136.01,40.5651,2.4243,''),
(9438,67,0,0,0,3144,50,7,2000000102,0,0,0,0,0,0,0,'force buddy to: say text'),
(9438,69,0,0,0,0,0,0,2000000103,0,0,0,0,0,0,0,''),
(9438,69,3,0,0,3144,50,7,0,0,0,0,1905.75,-4161.37,41.0035,0.488692,''),
(9438,70,3,0,0,0,0,0,0,0,0,0,1920.01,-4124.28,43.6129,1.62468,''),
(9438,72,3,0,0,0,0,0,0,0,0,0,0,0,0,4.79965,''),
(9438,73,28,5,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(9438,73,3,0,0,0,0,0x08,0,0,0,0,1920.01,-4123.75,43.6129,4.79965,''),
(9438,74,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'4949 - NpcFlag added'),
(9438,82,3,0,0,3144,50,7,0,0,0,0,0,0,0,0.488692,''),
(9438,83,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Thrall unactive');
UPDATE quest_template SET CompleteScript = 9438 WHERE entry = 9438;
DELETE FROM db_script_string WHERE entry IN (2000000016,2000000017,2000000018,2000000098,2000000099,2000000100,2000000101,2000000102,2000000103);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000016,'My people have survived in Outland...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000017,'Unnoticed for years...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000018,'...uncorrupted!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000098,'Thrall! My lord... are you all right?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000099,'I\'ll be fine, Eitrigg.  We must begin preparations... I need to go to Outland at once!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000100,'With all due respect, Warchief.  Our enemies would take advantage of your sudden absence if we don\'t prepare properly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000101,'You are right, Eitrigg.  The timing is unfavorable.  Make sure our best ambassadors are sent as envoys to Hellscream.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000102,'At once, sir! For the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,66,NULL),
(2000000103,'If he\'s anything like his father, allying with the Mag\'har will mark the dawn of a new age for the Horde.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

