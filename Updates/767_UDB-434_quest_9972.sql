-- q.9972 'The Ring of Blood: Skra'gath'
DELETE FROM dbscripts_on_quest_start WHERE id = 9972;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9972,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9972,2,0,0,0,0,0,0,2000000001,0,0,0,0,0,0,0,''),
(9972,12,0,0,0,0,0,0,2000000838,0,0,0,0,0,0,0,''),
(9972,17,10,18401,180000,0,0,0,0,0,0,0,-704.669,7871.08,45.0387,1.59531,''),
(9972,19,26,0,0,18401,100,0,0,0,0,0,0,0,0,0,''),
(9972,20,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000838 AND 2000000839;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000838,'From parts unknown: Skra\'gath! Can $n possibly survive the onslaught of void energies?',0,1,0,0,NULL),
(2000000839,'Mogor not impressed! Skra\'gath wuz made of da air and shadow! Soft like da squishy orcies!',0,1,0,15,NULL);
-- Skra'gath
UPDATE creature_template SET MovementType = 0 WHERE Entry = 18401;
DELETE FROM dbscripts_on_creature_death WHERE id = 18401;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18401,1,0,0,0,18471,66480,0 | 0x10,2000000836,0,0,0,0,0,0,0,'buddy : yell'),
(18401,6,0,0,0,18069,60873,0 | 0x10,2000000839,0,0,0,0,0,0,0,'buddy : yell');


