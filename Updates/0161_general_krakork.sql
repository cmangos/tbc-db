DELETE FROM `dbscripts_on_relay` WHERE `id`=10215;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(10215, 0, 1, 31, 16580, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'General Krakork - Terminate script if NPC Thrallmar Grunt is not found'),
(10215, 0, 2, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'General Krakork - Pause Waypoint Movement'),
(10215, 0, 3, 36, 0, 0, 0, 16580, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'General Krakork - Face Nearest Thrallmar Grunt'),
(10215, 1700, 0, 0, 10085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'General Krakork - Say Random Text'),
(10215, 4700, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'General Krakork - Play Emote Talk'),
(10215, 9700, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'General Krakork - Unpause Waypoint Movement');

DELETE FROM `dbscript_random_templates` WHERE `id`=10085;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(10085, 0, 16390, 0, 'General Krakork - OOC Texts'),
(10085, 0, 16391, 0, 'General Krakork - OOC Texts'),
(10085, 0, 16392, 0, 'General Krakork - OOC Texts'),
(10085, 0, 16393, 0, 'General Krakork - OOC Texts'),
(10085, 0, 16394, 0, 'General Krakork - OOC Texts');

UPDATE `broadcast_text` SET `EmotesID`=1 WHERE `Id` BETWEEN 16390 AND 16394;

