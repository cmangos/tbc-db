-- Improve & Activate Quest 10791 Endscript: "Welcoming the Wolf Spirit" s.38336 Script
UPDATE `quest_template` SET `ReqCreatureOrGoId2` = 18384, `ReqCreatureOrGoCount2` = 1 WHERE `entry` = 10791;

-- Terokkar Wolf Spirit 19616
UPDATE `creature_template` SET `UnitFlags` = 33536, `MovementType` = 2 WHERE `entry` = 19616;

DELETE FROM `creature_movement_template` WHERE `entry` IN (18384,19616);
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(19616, 1, -2675, 4405.729, 34.34139, 100, 0, 1961601),
(19616, 2, -2658.745, 4401.56, 36.92767, 100, 0, 0),
(19616, 3, -2655.032, 4394.873, 36.41991, 100, 0, 0),
(19616, 4, -2657.96, 4388.163, 36.22264, 100, 0, 0),
(19616, 5, -2668.332, 4376.582, 36.26878, 100, 20000, 1961602),

(18384, 1, -2671.772, 4373.862, 35.97809, 0.6806784, 40000, 1838401),
(18384, 2, -2671.772, 4373.862, 35.97809, 0.6806784, 2000, 0);

DELETE FROM `dbscripts_on_event` WHERE `id` = 12650;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(12650, 1, 0, 0, 0, 0, 18384, 10, 4, 2000001565, 0, 0, 0, 0, 0, 0, 0, 'Force Malukaz - Text'),
(12650, 1, 20, 2, 0, 0, 18384, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Force Malukaz - Wayoint Movement'),
(12650, 15, 10, 19616, 100000, 0, 0, 0, 0, 0, 0, 0, 0, -2687.927, 4396.282, 32.17587, 0.6079453, 'Summon Terokkar Wolf Spirit 19616'),
(12650, 44, 8, 18384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Killcredit Quest 10791'),
(12650, 45, 29, 3, 1, 0, 18384, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Force Malukaz - npc_flag added'),
(12650, 46, 0, 0, 0, 0, 18384, 10, 4, 2000001572, 0, 0, 0, 0, 0, 0, 0, 'Force Malukaz - Text');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1838401,1838402,1961601,1961602);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1838401, 1, 15, 34317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Cast Transform Malukaz 34317'),
(1838401, 3, 15, 28892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Cast Nature Channeling 28892'),
(1838401, 6, 0, 0, 0, 0, 0, 0, 0, 2000001566, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Text'),
(1838401, 9, 0, 0, 0, 0, 0, 0, 0, 2000001567, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Text'),
(1838401, 14, 0, 0, 0, 0, 0, 0, 0, 2000001568, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Text'),
(1838401, 18, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Interrupt Channelling'),
(1838401, 18, 15, 34312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Cast Summon Terokkar Wolf Spirit 34312'), -- dummy (12650, 15, 10
(1838401, 38, 14, 34317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Remove Transform Malukaz 34317'),
(1838401, 39, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malukaz - Idle Movement'),

(1961601, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terokkar Wolf Spirit - RUN ON'),

(1961602, 0, 1, 393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terokkar Wolf Spirit - Emote'),
(1961602, 4, 1, 393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terokkar Wolf Spirit - Emote'),
(1961602, 4, 0, 0, 0, 0, 0, 0, 0, 2000001569, 0, 0, 0, 0, 0, 0, 0, 'Terokkar Wolf Spirit - text_emote'),
(1961602, 4, 0, 0, 0, 0, 0, 0, 0, 2000001570, 0, 0, 0, 0, 0, 0, 0, 'Terokkar Wolf Spirit - text_emote'),
(1961602, 5, 1, 2, 0, 0, 18384, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Force Malukaz - Emote'),
(1961602, 8, 0, 0, 0, 0, 18384, 10, 4, 2000001571, 0, 0, 0, 0, 0, 0, 0, 'Force Malukaz - Text'),
(1961602, 17, 18, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terokkar Wolf Spirit - Despawn');

DELETE FROM `dbscript_string` WHERE `entry` IN (2000000220,2000000223,2000000224,2000000225,2000000226);
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001565 AND 2000001572;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000001565, '%s dons his wolf-fur vestments.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Malukaz 18384 - Quest 10791'),
(2000001566, 'Wolf spirit of the forest, hear me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Malukaz 18384 - Quest 10791'),
(2000001567, 'Long ago, you were a companion to my people. We gave ourselves to evil and you were forgotten.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Malukaz 18384 - Quest 10791'),
(2000001568, 'But we have returned, spirit! We have returned to honor you again. Favor us with your presence once more.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Malukaz 18384 - Quest 10791'),
(2000001569, '%s howls in response to Malukaz\'s call.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Malukaz 18384 - Quest 10791'),
(2000001570, '%s expresses its approval.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Malukaz 18384 - Quest 10791'),
(2000001571, 'May our bond with you never be broken again, spirit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Malukaz 18384 - Quest 10791'),
(2000001572, 'We have done it! Thrall would be proud.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Malukaz 18384 - Quest 10791');

