-- Req. cmangos 12805

-- Minshina's Skull(q.808)
-- both npc's will 'face' player after q. completed
 DELETE FROM dbscripts_on_quest_end WHERE id = 808;
 INSERT INTO dbscripts_on_quest_end VALUES 
 (808,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
 (808,2,10,3289,14000,0,0,0,0,0,0,0,-822.91,-4923.33,19.6365,3.41642,'summon'),
 (808,5,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
 (808,5,36,0,0,3289,20,0,0,0,0,0,0,0,0,0,''),
 (808,7,1,2,0,3289,20,7,0,0,0,0,0,0,0,0,''),
 (808,7,0,0,0,0,0,0,2000005776,0,0,0,0,0,0,0,''),
 (808,11,36,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
 (808,12,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
 DELETE FROM db_script_string WHERE entry = 2000005776;
 INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
 (2000005776,'I thank you, $N. And my brother thanks you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL);
 UPDATE quest_template SET CompleteScript = 808 WHERE entry = 808;
 
-- The Prodigal Lich Returns(q.411)
-- summoned npc will 'face' player after q. completed
DELETE FROM dbscripts_on_quest_end WHERE id = 411;
INSERT INTO dbscripts_on_quest_end VALUES
(411,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(411,2,15,7673,0,0,0,4,0,0,0,0,0,0,0,0,'Bethor - Cast 7673'),
(411,7,10,5666,23000,0,0,0,0,0,0,0,1768.58,55.4891,-46.3198,2.28248,'Summon Visage'),
(411,21,36,0,0,5666,20,0,0,0,0,0,0,0,0,0,''),
(411,23,0,0,0,5666,10,0,2000000210,0,0,0,0,0,0,0,'Visage Say 3'),
(411,23,1,2,0,5666,10,0,0,0,0,0,0,0,0,0,''),
(411,30,0,0,0,0,0,0,2000000211,0,0,0,0,0,0,0,'Bethor Say'),
(411,31,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');


