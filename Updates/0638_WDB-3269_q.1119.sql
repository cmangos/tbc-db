-- q.1119 'Zanzil's Mixture and a Fool's Stout'
-- .go c id 4452
DELETE FROM dbscripts_on_quest_end WHERE id = 1119;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1119, 0, 0, 21, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'active'),
(1119, 0, 1, 29, 2, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NPCFlags removed'),
(1119, 0, 2, 9, 30, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Resp object (15 secs)'),
(1119, 600, 0, 3, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 4.7017, 0, 'face object'),
(1119, 1000, 0, 0, 0, 0, 0, 0, 0, 4, 2000003225, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1119, 5000, 0, 0, 0, 0, 0, 0, 0, 4, 2000003226, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1119, 9000, 0, 28, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stand state'),
(1119, 9500, 0, 1, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote'),
(1119, 10000, 0, 0, 0, 0, 0, 0, 0, 4, 2000003227, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1119, 13000, 0, 3, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0.904, 0, 'face object'),
(1119, 13100, 0, 29, 2, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NPCFlags added'),
(1119, 13150, 0, 28, 8, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kneel state'),
(1119, 13200, 0, 21, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unactive');

UPDATE quest_template SET CompleteScript = 1119 WHERE entry = 1119;

DELETE FROM dbscript_string WHERE entry BETWEEN 2000003225 AND 2000003227; -- new free, added broadcast_text_id
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment, broadcast_text_id) VALUES
(2000003225,'This stout sure smells strong!',0,0,0,0,NULL, 1489),
(2000003226,'Let\'s have just a small taste...',0,0,0,0,NULL, 1491),
(2000003227,'Wait!  What am I thinking!  We have a job to do with this stuff.',0,0,0,0,NULL, 1492);

-- Cask of Fool's Stout 19897
-- missing spawns added
DELETE FROM gameobject WHERE guid = 30;
DELETE FROM game_event_gameobject WHERE guid = 30;
DELETE FROM gameobject_battleground WHERE guid = 30;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(30,19897,1,1,-6233.253,-3857.1125,-58.750053,3.2463472,0,0,-0.9986286,0.052353222,-15,-15,100,1);
