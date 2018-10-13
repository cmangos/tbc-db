-- Texts for q.11108 'Lord Illidan Stormrage' start script were somehow somewhere overwritten by Curator Thorius c.8256 waypoint texts
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001549, 'What is the meaning of this, Mor\'ghor?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000001550, 'SILENCE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL);

UPDATE `dbscripts_on_quest_start` SET `dataint`=2000001549 WHERE `id`=11108 AND `delay`=48 AND `command`=0;
UPDATE `dbscripts_on_quest_start` SET `dataint`=2000001550 WHERE `id`=11108 AND `delay`=55 AND `command`=0;
