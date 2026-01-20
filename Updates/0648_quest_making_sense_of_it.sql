-- QuestEnd Script 'Making Sense of It'
-- Quest ID: 4321 

-- Old script happened on QuestStart, classic sniffs (from 1.13.6.37497 and from 1.15.8.64057) showed that the RP happens on QuestEnd 


-- Delete OLD script
DELETE FROM dbscripts_on_quest_start WHERE id = 4321;

DELETE FROM dbscripts_on_quest_end WHERE id = 4321;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(4321, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Set Activeobject'),
(4321, 0, 1, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Remove NPC Flags'), -- 23:03:25.687
(4321, 1000, 0, 9, 63180, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Respawn J.D\'s Manual'), --  23:03:26.187 - 23:03:41.984
(4321, 3000, 0, 36, 0, 0, 0, 174683, 10, 1025, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Face J.D\'s Manual'), -- 23:03:28.203
(4321, 4000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Emote OneShotKneel'), -- 23:03:29.781
(4321, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 5287, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Say Text'), -- 23:03:29.937
(4321, 9000, 0, 0, 0, 0, 0, 0, 0, 0, 5288, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Say Text'), -- 23:03:34.812
(4321, 14000, 0, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Reset Facing'), -- 23:03:37.937
(4321, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 5289, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Say Text'), -- 23:03:38.062
-- (4321, 19000, 0, 7, 4321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Finish Quest'), 
(4321, 19000, 0, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Add NPC Flags'), -- 23:03:42.765
(4321, 19000, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J.D. Collie - Remove Activeobject');

UPDATE quest_template SET StartScript = 0, CompleteScript = 4321 WHERE entry = 4321;


DELETE FROM `gameobject` WHERE `guid` = 63180;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(63180, 174683, 1, 1, -6036.80810546875, -1016.013427734375, -216.878570556640625, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, -15, -15);