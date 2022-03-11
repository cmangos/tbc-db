DELETE FROM `dbscripts_on_relay` WHERE `id` IN (15280, 15281);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(10213, 0, 1, 31, 15284, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jesthenis Sunstriker - Terminate script if NPC Matron Arena not found'),
(10213, 0, 2, 1, 1, 0, 0, 0, 0, 0, 6, 273, 274, 0, 0, 0, 0, 0, 0, 'Jesthenis Sunstriker - Play Random Emote (Talk, Question, Yes or No)'),
(10213, 0, 3, 35, 5, 0, 0, 15284, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jesthenis Sunstriker - Send Custom Event A to Matron Arena'),
(10214, 0, 0, 1, 1, 0, 0, 0, 0, 0, 6, 273, 274, 0, 0, 0, 0, 0, 0, 'Matron Arena - Play Random Emote (Talk, Question, Yes or No)');

