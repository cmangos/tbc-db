-- q.489 'Seek Redemption!' - update
-- spell target corrected
-- UPDATE dbscripts_on_quest_end SET data_flags = 4 WHERE id = 489 AND delay = 0;

-- (489, 1000, 0, 2, 152, 901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- (489, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 2000000047, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- (489, 60000, 0, 2, 152, 10035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 489;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(489, 0, 0, 15, 3329, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(489, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 2000000047, 0, 0, 0, 0, 0, 0, 0, 0, '');

