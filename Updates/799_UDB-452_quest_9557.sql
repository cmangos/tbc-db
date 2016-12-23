-- q.9557 'Deciphering the Book'
DELETE FROM dbscripts_on_quest_end WHERE id = 9557;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9557,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(9557,1,0,0,0,0,0,0,2000000856,0,0,0,0,0,0,0,''),
(9557,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9557,5,0,0,0,0,0,0,2000000857,0,0,0,0,0,0,0,''),
(9557,11,0,0,0,0,0,0,2000000858,0,0,0,0,0,0,0,''),
(9557,17,0,0,0,0,0,0,2000000859,0,0,0,0,0,0,0,''),
(9557,17,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
UPDATE quest_template SET CompleteScript = 9557 WHERE entry = 9557;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000856 AND 2000000859;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000856,'Now, let\'s see....',0,0,0,69,NULL),
(2000000857,'In the process of translating this, I believe I\'ve learned more about the drunken exploits of a certain \'Andrew Clementine\' than about the journal\'s author.',0,0,0,1,NULL),
(2000000858,'But, no matter. Mister Clementine\'s... err, \'contribution\' notwithstanding, this seems to be the journal of a man named Nolkai. The entries toward the end describe a brutal battle.',0,0,0,11,NULL),
(2000000859,'Take a look at this passage...',0,0,0,25,NULL);


