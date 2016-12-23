-- q.9567 'Know Thine Enemy'
DELETE FROM dbscripts_on_quest_end WHERE id = 9567;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9567,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9567,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9567,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9567,4,0,0,0,0,0,0,2000000848,0,0,0,0,0,0,0,''),
(9567,8,0,0,0,0,0,0,2000000849,0,0,0,0,0,0,0,''),
(9567,12,0,0,0,0,0,0,2000000850,0,0,0,0,0,0,0,''),
(9567,14,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
UPDATE quest_template SET CompleteScript = 9567 WHERE entry = 9567;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000848 AND 2000000850;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000848,'These pictographs tell a story. This figure at the beginning, almost looks like one of the creatures we encountered at Azure Watch...',0,0,0,0,NULL),
(2000000849,'No, this can\'t be... It says this creature willingly became a servant of the Legion. He transforms into a satyr and receives the Legion\'s "blessing."',0,0,0,274,NULL),
(2000000850,'We must defeat these satyr, $n. We will not suffer the Legion\'s presence in these lands.',0,0,0,53,NULL);


