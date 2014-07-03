-- Fixed flag in quest 1117 end script target NPC instead of player
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1117;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1117, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kravel Koalbeard: npc_flag questgiver removed'),
(1117, 1, 0, 0, 0, 0, 0, 0, 0, 2000005083, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 2, 1, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 8, 0, 0, 0, 0, 0, 0, 0, 2000005084, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 8, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 8, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kravel Koalbeard: npc_flag questgiver added'),
(1117, 9, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

