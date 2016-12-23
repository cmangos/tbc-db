-- q.9463 'Medicinal Purpose'
DELETE FROM dbscripts_on_quest_end WHERE id = 9463;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9463,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(9463,2,0,0,0,0,0,0,2000000642,0,0,0,0,0,0,0,''),
(9463,6,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9463,10,0,0,0,0,0,0,2000000643,0,0,0,0,0,0,0,''),
(9463,14,36,0,0,17215,50,0,0,0,0,0,0,0,0,0,'face player'),
(9463,16,0,0,0,17215,50,0,2000000644,0,0,0,0,0,0,0,''),
(9463,16,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added'),
(9463,19,36,3.8,0,17215,50,0,0,0,0,0,0,0,0,0,'facing reset');
UPDATE quest_template SET CompleteScript = 9463 WHERE entry = 9463;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000642 AND 2000000644;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000642,'Now to apply the ointment to her wounds.',0,0,0,1,NULL),
(2000000643,'It appears that the ointment is ineffective. Such a pity...',0,0,0,1,NULL),
(2000000644,'There may still be a solution. Come here, $N. I will explain what I need.',0,0,0,1,NULL);


