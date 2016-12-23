-- q.9967 'The Ring of Blood: The Blue Brothers'
DELETE FROM dbscripts_on_quest_start WHERE id = 9967;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9967,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9967,2,0,0,0,0,0,0,2000000001,0,0,0,0,0,0,0,''),
(9967,12,0,0,0,0,0,0,2000000832,0,0,0,0,0,0,0,''),
(9967,17,10,18399,180000,0,0,0,0,0,0,0,-718.589,7871.74,45.2408,1.66026,''),
(9967,17,10,18399,180000,0,0,0,0,0,0,0,-697.494,7881.43,46.9757,2.38283,''),
(9967,18,0,0,0,18399,100,7,2000000834,0,0,0,0,0,0,0,''),
(9967,20,26,0,0,18399,100,0,0,0,0,0,0,0,0,0,''),
(9967,20,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000832 AND 2000000834;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000832,'The battle is about to begin! The unmerciful Murkblood twins versus $n!',0,1,0,0,NULL),
(2000000833,'Unbelievable! $n has defeated the Murkblood twins!',0,1,0,0,NULL),
(2000000834,'Blue brothers reign supreme!',0,0,0,0,NULL);
-- Murkblood Twin
UPDATE creature_template SET MovementType = 0 WHERE Entry = 18399;
DELETE FROM dbscripts_on_creature_death WHERE id = 18399;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18399,1,0,0,0,18471,66480,0 | 0x10,2000000833,0,0,0,0,0,0,0,'buddy : yell');


