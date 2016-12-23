-- q.9973 'The Ring of Blood: The Warmaul Champion'
DELETE FROM dbscripts_on_quest_start WHERE id = 9973;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9973,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9973,2,0,0,0,0,0,0,2000000001,0,0,0,0,0,0,0,''),
(9973,12,0,0,0,0,0,0,2000000840,0,0,0,0,0,0,0,''),
(9973,17,10,18402,180000,0,0,0,0,0,0,0,-706.284,7876.7,45.1221,2.27229,''),
(9973,19,26,0,0,18402,100,0,0,0,0,0,0,0,0,0,''),
(9973,20,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000840 AND 2000000841;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000840,'This is the moment we\'ve all been waiting for! The Warmaul champion is about to make his first showing at the Ring of Blood in weeks! Will $n go down in defeat as easily as the champion\'s other opponents? We shall see...',0,1,0,0,NULL),
(2000000841,'WUT!? UNPOSSIBLE!! You fight Mogor now! Mogor destroy!',0,1,0,15,NULL);
-- Warmaul Champion
UPDATE creature_template SET MovementType = 1 WHERE Entry = 18402;
DELETE FROM dbscripts_on_creature_death WHERE id = 18402;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18402,1,0,0,0,18471,66480,0 | 0x10,2000000836,0,0,0,0,0,0,0,'buddy : yell'),
(18402,6,0,0,0,18069,60873,0 | 0x10,2000000841,0,0,0,0,0,0,0,'buddy : yell');


