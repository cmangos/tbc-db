UPDATE db_script_string SET type=2 WHERE entry IN(2000005492,2000005496); -- fix merge mistake

-- Demonic Crystal Prisons 10528

UPDATE quest_template SET CompleteEmote=0 WHERE entry=10528;
DELETE FROM dbscripts_on_quest_end WHERE id = 10528;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10528,0,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Artor - Set Emote 1'),
(10528,1,15,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'Artor - Cast Death Touch'),
(10528,4,0,0,0,21318,25,0,2000009036,0,0,0,0,0,0,0,'Artor - Make spirit talk');

-- Of Thistleheads and Eggs 10547

UPDATE quest_template SET CompleteScript=10547 WHERE entry=10547;
DELETE FROM dbscripts_on_quest_end WHERE id=10547;
INSERT INTO dbscripts_on_quest_end(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10547,0,29,2,2,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Remove NPC Questgiver flag'),
(10547,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Make active'),
-- TODO: add drinking from green bottle
(10547,2,0,0,0,0,0,0x04,2000006090,0,0,0,0,0,0,0,'Tobias - EMOTE 1'),
(10547,9,0,0,0,0,0,0x04,2000006091,0,0,0,0,0,0,0,'Tobias - SAY 1'),
(10547,10,20,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tobias - Start WP movement');
DELETE FROM creature_movement_template WHERE entry IN(21411);
INSERT INTO creature_movement_template VALUES
(21411, 1, -2080.785,5296.885,-37.323, 8000, 1054701, 0, 0, 0, 0, 0, 0, 0, 5.422, 0, 0),
(21411, 2, -2083.83,5299.95,-37.3236, 1000, 1054702, 0, 0, 0, 0, 0, 0, 0, 0.314159, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN(1054701,1054702);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1054701,0,0,0,0,0,0,0,2000006092,0,0,0,0,0,0,0,'Tobias - EMOTE 2'),
(1054701,0,15,36823,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Cast Overwhelming Odor'),
(1054702,0,0,0,0,0,0,0,2000006093,0,0,0,0,0,0,0,'Tobias - SAY 2'),
(1054702,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Add NPC Questgiver flag'),
(1054702,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Set Idle movement'),
(1054702,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tobias - Remove active');
DELETE FROM db_script_string WHERE entry IN(2000006090,2000006091,2000006092,2000006093);
INSERT INTO db_script_string(entry, content_default, sound, type, language, emote, comment) VALUES
(2000006090,'%s cracks the rotton egg open and - to the horror and dismay of all around him - begins to drink from its putrid core.',0,2,0,0,'Tobias - EMOTE 1'),
(2000006091,'That was life-changing... Excuse me for one minute',0,0,0,273,'Tobias - SAY 1'),
(2000006092,'%s lets loose the most foul belch ever heard or smelled.',0,2,0,0,'Tobias - EMOTE 2'),
(2000006093,'Ok then, back to business.',0,0,0,1,'Tobias - SAY 2');


