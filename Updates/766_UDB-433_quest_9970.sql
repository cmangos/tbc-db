-- q.9970 'The Ring of Blood: Rokdar the Sundered Lord'
DELETE FROM dbscripts_on_quest_start WHERE id = 9970;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9970,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9970,2,0,0,0,0,0,0,2000000001,0,0,0,0,0,0,0,''),
(9970,12,0,0,0,0,0,0,2000000835,0,0,0,0,0,0,0,''),
(9970,17,10,18400,180000,0,0,0,0,0,0,0,-704.669,7871.08,45.0387,1.59531,''),
(9970,19,26,0,0,18400,100,0,0,0,0,0,0,0,0,0,''),
(9970,20,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000835 AND 2000000837;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000835,'Hailing from the mountains of Blade\'s Edge comes Rokdar the Sundered Lord! $n is in for the fight of $g his:her; life.',0,1,0,0,NULL),
(2000000836,'$n is victorious once more!',0,1,0,0,NULL),
(2000000837,'Dat was poop! Mogor could put up much better fight den dat!',0,1,0,15,NULL);
-- Rokdar the Sundered Lord
UPDATE creature_template SET MovementType = 0 WHERE Entry = 18400;
DELETE FROM dbscripts_on_creature_death WHERE id = 18400;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18400,1,0,0,0,18471,66480,0 | 0x10,2000000836,0,0,0,0,0,0,0,'buddy : yell'),
(18400,6,0,0,0,18069,60873,0 | 0x10,2000000837,0,0,0,0,0,0,0,'buddy : yell');


