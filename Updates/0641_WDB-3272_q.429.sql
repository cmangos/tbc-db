-- q.429 'Wild Hearts'
-- .go c id 1937
DELETE FROM dbscripts_on_quest_end WHERE id = 429;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(429, 0, 0, 29, 2, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NPCFlags removed'),
(429, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2000003232, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(429, 100, 0, 1, 69, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote'),
(429, 4900, 0, 29, 2, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NPCFlags added'),
(429, 5000, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE quest_template SET CompleteScript = 429 WHERE entry = 429;

DELETE FROM dbscript_string WHERE entry = 2000003232; -- NEW, broadcast_text_id added
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment, broadcast_text_id) VALUES
(2000003232,'%s concocts a potion for $n.',0,2,0,0,NULL, 885);

