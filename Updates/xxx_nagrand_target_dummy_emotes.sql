DELETE FROM `creature` WHERE `guid`=86753 AND `id`=17578; -- Delete a target dummy that should not exist

DELETE FROM `dbscripts_on_spell` WHERE `id` IN(33423,33424,33425);
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(33423, 0, 1, 0, 0, 0, 19139, 5, 7, 33, 0, 0, 0, 0, 0, 0, 0, 'Nagrand Target Dummy - OneShotWound'),
(33424, 0, 1, 0, 0, 0, 19139, 5, 7, 33, 0, 0, 0, 0, 0, 0, 0, 'Nagrand Target Dummy - OneShotWound'),
(33425, 0, 1, 0, 0, 0, 19139, 5, 7, 34, 0, 0, 0, 0, 0, 0, 0, 'Nagrand Target Dummy - OneShotWoundCritical');