-- q.9540 'Totem of Tikti'
DELETE FROM dbscripts_on_quest_start WHERE id = 9540;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9540,1,10,17391,35000,0,0,0,0,0,0,0,-3922.01,-12746.9,96.767,2.11154,'summon Stillpine Ancestor Coo'),
(9540,2,21,1,0,17391,30,7,0,0,0,0,0,0,0,0,'active'),
(9540,4,36,0,0,17391,50,0,0,0,0,0,0,0,0,0,'face player'),
(9540,5,0,0,0,17391,50,0,2000000668,0,0,0,0,0,0,0,''),
(9540,7,3,0,0,17391,50,7,0,0,0,0,-3925.63,-12752,97.7171,4.78528,''),
(9540,9,3,0,0,17391,50,7,0,0,0,0,-3925.8,-12755.8,99.4512,4.87481,''),
(9540,11,3,0,0,17391,50,7,0,0,0,0,-3924.27,-12761.5,101.829,4.9861,''),
(9540,14,0,0,0,17391,50,0,2000000669,0,0,0,0,0,0,0,''),
(9540,18,15,30424,0,17391,50,0,0,0,0,0,0,0,0,0,''),
(9540,21,0,0,0,17391,50,0,2000000670,0,0,0,0,0,0,0,''),
(9540,23,0,0,0,17391,50,0,2000000671,0,0,0,0,0,0,0,''),
(9540,24,23,17019,0,17391,50,7 |0x08,0,0,0,0,0,0,0,0,''),
(9540,25,39,1,0,17391,50,7,0,0,0,0,0,0,0,0,''),
(9540,27,3,0,0,17391,50,7,0,0,0,0,-3923.5,-12795,107.213,4.87004,''),
(9540,32,21,0,0,17391,100,7,0,0,0,0,0,0,0,0,'unactive'),
(9540,33,18,0,0,17391,100,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 9540 WHERE entry = 9540;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000668 AND 2000000671;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000668,'%s motions for you to follow him.',0,2,0,0,NULL),
(2000000669,'[Furbolg] Ritk kin\'chikx azul azure summit...',0,0,0,0,NULL),
(2000000670,'[Furbolg] Coo xip fly... Jump ilos river. Find Tikti.',0,0,0,0,NULL),
(2000000671,'%s points across the river.',0,2,0,0,NULL);
-- Stillpine Ancestor Coo
UPDATE creature_template SET MovementType = 0 WHERE Entry = 17391;


