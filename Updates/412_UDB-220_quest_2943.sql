-- q.2943 'Return to Troyas'
DELETE FROM dbscripts_on_quest_end WHERE id = 2943;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2943,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(2943,1,0,0,0,0,0,0,2000000523,0,0,0,0,0,0,0,''),
(2943,2,3,0,0,0,0,0,0,0,0,0,-4476.23,3230.55,13.7301,4.20931,''),
(2943,4,3,0,0,0,0,0,0,0,0,0,0,0,0,4.99471,''),
(2943,5,0,0,0,0,0,0x02,2000000524,0,0,0,0,0,0,0,''),
(2943,10,0,0,0,0,0,0,2000000525,0,0,0,0,0,0,0,''),
(2943,12,3,0,0,0,0,0,0,0,0,0,-4474.9,3232.88,13.7295,0.951991,''),
(2943,14,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added');
UPDATE quest_template SET CompleteScript = 2943 WHERE entry = 2943;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000523 AND 2000000525;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000523,'A History... Hmmmm... Let me examine this for a moment.',0,0,0,0,NULL),
(2000000524,'%s skims the pages of the book.',0,2,0,0,NULL),
(2000000525,'Amazing! I think I have found it, $N.',0,0,0,0,NULL);


