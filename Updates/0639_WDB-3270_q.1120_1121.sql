-- q.1120 'Get the Gnomes Drunk'
-- q.1121 'Get the Goblins Drunk'
DELETE FROM dbscripts_on_quest_end WHERE id IN (1120,1121);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1120, 100, 0, 0, 0, 0, 0, 0, 0, 0, 2000003228, 0, 0, 0, 0, 0, 0, 0, 0, 'Say'),
(1120, 1000, 0, 35, 5, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send Event 5'),
(1120, 1500, 0, 15, 20436, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Drunken Pit Crew'),
(1121, 100, 0, 0, 0, 0, 0, 0, 0, 0, 2000003229, 0, 0, 0, 0, 0, 0, 0, 0, 'Say'),
(1121, 1000, 0, 35, 5, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send Event 5'),
(1121, 1500, 0, 15, 20436, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Drunken Pit Crew');

UPDATE quest_template SET CompleteScript = 1120 WHERE entry = 1120;
UPDATE quest_template SET CompleteScript = 1121 WHERE entry = 1121;

DELETE FROM dbscript_string WHERE entry BETWEEN 2000003228 AND 2000003229; -- NEW, added broadcast_text_id
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment, broadcast_text_id) VALUES
(2000003228,'Look at what $n brought us!  Let\'s drink up!',0,0,0,0,NULL, 8242),
(2000003229,'$N brought us booze!  Let\'s party!',0,0,0,0,NULL, 8244);

-- Goblin Pit Crewman 4429
UPDATE creature SET spawndist=2, MovementType=1 WHERE guid IN (21552,21555); -- align with classic/tbc

