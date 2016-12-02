-- q.11128 'Propaganda War'
DELETE FROM dbscripts_on_quest_end WHERE id = 11128;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11128,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Calia active'),
(11128,1,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(11128,1,0,0,0,0,0,0,2000000464,0,0,0,0,0,0,0,''),
(11128,3,3,0,0,0,0,0,0,0,0,0,-3817.38,-4566.12,8.84245,1.07843,''),
(11128,5,3,0,0,0,0,0,0,0,0,0,-3816.62,-4564.31,8.97211,1.1499,''),
(11128,6,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11128,15,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11128,15,3,0,0,0,0,0,0,0,0,0,-3817.38,-4566.12,8.84245,0,''),
(11128,16,3,0,0,0,0,0,0,0,0,0,-3819.74,-4562.35,9.14216,2.40855,''),
(11128,17,0,0,0,0,0,0,2000000465,0,0,0,0,0,0,0,''),
(11128,19,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added'),
(11128,20,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Calia unactive');
UPDATE quest_template SET CompleteScript = 11128 WHERE entry = 11128;
DELETE FROM db_script_string WHERE entry IN (2000000464,2000000465);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000464,'It would be a shame to let these leaflets go to waste, wouldn\'t it?',0,0,0,1,NULL),
(2000000465,'With just a little creative editing, these are much more useful... ',0,0,0,0,NULL);


