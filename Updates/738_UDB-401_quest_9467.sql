-- q.9467 'Call of Fire'
DELETE FROM dbscripts_on_quest_end WHERE id = 9467;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- (9467,1,15,x,0,0,0,0,0,0,0,0,0,0,0,0,''), -- spell casted by Temper missing
(9467,3,10,17220,13000,0,0,0,0,0,0,0,-3266.49,-12929.1,11.4484,2.23998,''),
(9467,5,0,0,0,17220,50,7,2000000006,0,0,0,0,0,0,0,'17220 text'),
(9467,8,0,0,0,17220,50,7,2000000007,0,0,0,0,0,0,0,'17220 text');
UPDATE quest_template SET CompleteScript = 9467 WHERE entry = 9467; 
DELETE FROM db_script_string WHERE entry IN (2000000006,2000000007);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000006,'%s looks over at Temper as if reluctant to speak.',0,2,0,0,NULL),
(2000000007,'Thank you, shaman.  I am reborn and will burn brighter than ever before!',0,0,0,0,NULL);

-- Hauteur Reborn
UPDATE creature_template SET MovementType = 0 WHERE entry = 17220;


