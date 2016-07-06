-- Source of the Corruption (q.9387)
DELETE FROM dbscripts_on_quest_end WHERE id = 9387;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9387,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Azethen - active'),
(9387,1,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9387,5,0,0,0,0,0,0,2000000254,0,0,0,0,0,0,0,''),
(9387,9,0,0,0,0,0,0,2000000255,0,0,0,0,0,0,0,''),
(9387,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9387,13,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9387,17,0,0,0,0,0,0,2000000256,0,0,0,0,0,0,0,''),
(9387,21,0,0,0,16795,20,7,2000000257,0,0,0,0,0,0,0,''),
(9387,23,1,7,0,16795,20,7,0,0,0,0,0,0,0,0,''),
(9387,26,15,5,0,16795,20,7,0,0,0,0,0,0,0,0,''),
(9387,30,0,0,0,0,0,0,2000000258,0,0,0,0,0,0,0,''),
(9387,31,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Apothecary Azethen - unactive');
UPDATE quest_template SET CompleteScript = 9387 WHERE entry = 9387;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000254 AND 2000000258;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000254,'...a potent concoction!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000255,'But where could I ever find a suitable test subject?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000000256,'Drink this, you blue brute! Disobey me and I promise you a slow, painful death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,NULL),
(2000000257,'I pity you Forsaken, Your soul is devoid of light.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,35,0,NULL),
(2000000258,'Hmmm... looks like I\'m going to need a new test subject.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
-- Draenei Prisoner -- q. req.
UPDATE creature SET spawntimesecs = 15 WHERE guid = 57798;

