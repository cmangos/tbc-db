-- q.9566 'Blood Crystals'
-- first remove wrong script from prev quest
DELETE FROM dbscripts_on_quest_end WHERE id = 9565;
UPDATE quest_template SET CompleteScript = 0 WHERE entry = 9565; 

-- correct script
DELETE FROM dbscripts_on_quest_start WHERE id = 9566;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9566,1,0,0,0,0,0,6,2000000600,0,0,0,0,0,0,0,''),
(9566,3,10,17189,180000,0,0,0,0,0,0,0,-3120.01,-12550.6,-5.43793,5.87471,''),
(9566,3,10,17189,180000,0,0,0,0,0,0,0,-3121.54,-12555,-5.4526,6.07341,''),
(9566,4,31,17189,50,0,0,0,0,0,0,0,0,0,0,0,'search for 17189'),
(9566,5,0,0,0,17189,50,7,2000000601,0,0,0,0,0,0,0,'17189 text'),
(9566,6,26,0,0,17189,50,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 9566 WHERE entry = 9566;
DELETE FROM db_script_string WHERE entry IN (2000000600,2000000601);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000600,'The sound of footsteps shuffling echo throughout cave.',0,2,0,0,NULL),
(2000000601,'You stay away from crystals! Die now!',0,0,0,0,NULL);


