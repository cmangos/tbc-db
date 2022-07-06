DELETE FROM `dbscripts_on_relay` WHERE `id` = 10213;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(10213, 0, 		0, 31, 15284, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jesthenis Sunstriker 15280 - Terminate script if NPC Matron Arena 15284 not found'),
(10213, 0, 		1, 1, 1, 0, 0, 0, 0, 0, 6, 273, 274, 0, 0, 0, 0, 0, 0, 'Jesthenis Sunstriker 15280 - Play Random Emote (Talk, Question, Yes or No)'),
-- (10213, 2000, 	0, 31, 15280, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Matron Arena 15284 - Terminate script if NPC Jesthenis Sunstriker 15280 not found'), -- does not seem to work as it searches for relay sender.
(10213, 2000, 	1, 1, 1, 0, 0, 15284, 20, 7, 6, 273, 274, 0, 0, 0, 0, 0, 0, 'Matron Arena 15284 - Play Random Emote (Talk, Question, Yes or No)');

