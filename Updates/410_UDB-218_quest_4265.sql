-- q.4265 'Freed from the Hive'
DELETE FROM dbscripts_on_quest_start WHERE id = 4265;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4265,2,10,9546,18000,0,0,0,0,0,0,0,-5323.15,431.758,12.1273,3.34124,''),
(4265,3,0,0,0,9546,20,7,2000000519,0,0,0,0,0,0,0,''),
(4265,7,0,0,0,9546,20,7,2000000520,0,0,0,0,0,0,0,''),
(4265,13,1,2,0,9546,20,7,0,0,0,0,0,0,0,0,''),
(4265,14,7,4265,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 4265 WHERE entry = 4265;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000519 AND 2000000520;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000519,'Oh man, I thought I was dead for sure. Ugh... Still dizzy...',0,0,0,462,NULL),
(2000000520,'I can get back to Stronghold on my own, I think. Now that you bought me some time, I should be able to stealth out of here. Who ever you are... thank you. May Elune bless you always!',0,0,0,1,NULL);


