/* DBScriptData
DBName: Hellfire Citadel - Magtheridon's Lair
DBScriptName: instance_magtheridons_lair
DB%Complete: 80
DBComment:
17474 need more research on movement/placement
EndDBScriptData */

SET @CGUID := 5440000; -- creatures
SET @OGUID := 5440000; -- gameobjects
SET @PGUID := 48300; -- pools
SET @SGGUID := 5440000;

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+28, 1, 2.00162, -64.4008, 22.8575, 0.645772, 5000, 1882902),
(@CGUID+29, 1, 2.69777, -60.936, 22.8984, 4.95674, 5000, 1882902),
(@CGUID+30, 1, 5.55054, -64.0838, 22.9179, 2.86234, 5000, 1882902),
(@CGUID+37, 1, -0.181343, 67.1853, 22.8294, 1.5708, 5000, 1882901),
(@CGUID+38, 1, 6.12531, 69.0678, 22.9075, 2.07694, 5000, 1882901),
(@CGUID+39, 1, -8.90767, 68.377, 22.6632, 1.16937, 5000, 1882901);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES

-- INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(17256, 0, 0, 1, 0, 0, NULL), -- Hellfire Channeler
(17257, 0, 0, 1, 0, 0, '30205'), -- Magtheridon
(17376, 0, 0, 1, 0, 0, NULL), -- Hellfire Raid Trigger
(18829, 0, 0, 1, 0, 0, NULL); -- Hellfire Warder

-- REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 15384, 544, 1, -2.59192, 83.3255, 22.6908, 4.57276, 7200, 7200, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+2, 15384, 544, 1, 3.16924, -63.2071, 22.8882, 2.14675, 7200, 7200, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+3, 17256, 544, 1, -55.6891, 2.17024, 0.71428, 0.0523599, 604800, 604800, 0, 0), -- Hellfire Channeler
(@CGUID+4, 17256, 544, 1, -31.9479, 40.2201, 0.714251, 4.93928, 604800, 604800, 0, 0), -- Hellfire Channeler
(@CGUID+5, 17256, 544, 1, 10.4777, 23.9914, 0.714224, 3.66519, 604800, 604800, 0, 0), -- Hellfire Channeler
(@CGUID+6, 17256, 544, 1, 10.3369, -19.7942, 0.714241, 2.53073, 604800, 604800, 0, 0), -- Hellfire Channeler
(@CGUID+7, 17256, 544, 1, -31.7645, -35.8374, 0.714268, 1.37881, 604800, 604800, 0, 0), -- Hellfire Channeler
(@CGUID+8, 17257, 544, 1, -18.7012, 2.24051, -0.320873, 3.00197, 604800, 604800, 0, 0), -- Magtheridon
(@CGUID+9, 17376, 544, 1, 8.79722, -19.4801, 2.43646, 3.07178, 7200, 7200, 0, 0), -- Hellfire Raid Trigger
(@CGUID+10, 17376, 544, 1, -31.471, -34.156, 2.2351, 1.06465, 7200, 7200, 0, 0), -- Hellfire Raid Trigger
(@CGUID+11, 17376, 544, 1, -54.2772, 2.34374, 2.30456, 1.3439, 7200, 7200, 0, 0), -- Hellfire Raid Trigger
(@CGUID+12, 17376, 544, 1, -31.8918, 38.4303, 2.18647, 5.07891, 7200, 7200, 0, 0), -- Hellfire Raid Trigger
(@CGUID+13, 17376, 544, 1, 9.3589, 23.2286, 2.24895, 3.89208, 7200, 7200, 0, 0), -- Hellfire Raid Trigger
-- 12x 17474
(@CGUID+14, 17474, 544, 1, 11.228307, 2.971979, -0.41251367, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+15, 17474, 544, 1, 10.228307, 1.971979, -0.41250548, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+16, 17474, 544, 1, -9.962881, 33.941803, -0.41248152, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+17, 17474, 544, 1, -10.962881, 32.941803, -0.41248414, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+18, 17474, 544, 1, -16.51662, 3.105175, -0.41209534, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+19, 17474, 544, 1, -12.212247, -26.231703, -0.41246638, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+20, 17474, 544, 1, -17.51662, 2.105175, -0.41206416, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+21, 17474, 544, 1, -13.212247, -27.231703, -0.4124659, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+22, 17474, 544, 1, -44.06629, 21.97305, -0.4124631, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+23, 17474, 544, 1, -30.28929, 23.930006, -0.41247347, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+24, 17474, 544, 1, -30.811903, -20.27129, -0.41245335, 0, 30, 30, 10, 1), -- Target Trigger
(@CGUID+25, 17474, 544, 1, -45.619953, -16.176882, -0.4124416, 0, 30, 30, 10, 1), -- Target Trigger
-- (@CGUID+26
-- (@CGUID+27
(@CGUID+28, 18829, 544, 1, 2.00162, -64.4008, 22.8575, 0.645772, 7200, 7200, 0, 2), -- Hellfire Warder
(@CGUID+29, 18829, 544, 1, 2.69777, -60.936, 22.8984, 4.95674, 7200, 7200, 0, 2), -- Hellfire Warder
(@CGUID+30, 18829, 544, 1, 5.55054, -64.0838, 22.9179, 2.86234, 7200, 7200, 0, 2), -- Hellfire Warder
(@CGUID+31, 18829, 544, 1, 34.5866, -3.04499, 45.1226, 0.069813, 7200, 7200, 0, 0), -- Hellfire Warder
(@CGUID+32, 18829, 544, 1, 36.4493, 2.02954, 45.1387, 0.034907, 7200, 7200, 0, 0), -- Hellfire Warder
(@CGUID+33, 18829, 544, 1, 34.3106, 6.95704, 45.1233, 0.017453, 7200, 7200, 0, 0), -- Hellfire Warder
(@CGUID+34, 18829, 544, 1, -74.59197, 46.55302, -0.30952165, 0.356661, 7200, 7200, 0, 0), -- Hellfire Warder
(@CGUID+35, 18829, 544, 1, -73.23551, 44.671085, -0.30858067, 0.173576, 7200, 7200, 0, 0), -- Hellfire Warder
(@CGUID+36, 18829, 544, 1, -74.59197, 46.55302, -0.30952165, 0.321231, 7200, 7200, 0, 0), -- Hellfire Warder
(@CGUID+37, 18829, 544, 1, -0.181343, 67.1853, 22.8294, 1.5708, 7200, 7200, 0, 2), -- Hellfire Warder
(@CGUID+38, 18829, 544, 1, 6.12531, 69.0678, 22.9075, 2.07694, 7200, 7200, 0, 2), -- Hellfire Warder
(@CGUID+39, 18829, 544, 1, -8.90767, 68.377, 22.6632, 1.16937, 7200, 7200, 0, 2), -- Hellfire Warder
(@CGUID+40, 21252, 544, 1, -16.683, 2.34519, -0.320923, 1.29154, 7200, 7200, 0, 0); -- World Trigger (Not Immune PC)

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 181713, 544, 1, 8.89169, -19.392, 0.630908, 2.44346, 0, 0, 0, 0, 900, 900), -- Manticron Cube
(@OGUID+2, 181713, 544, 1, -31.7948, 38.3964, 0.630919, -1.20428, 0, 0, 0, 0, 900, 900), -- Manticron Cube
(@OGUID+3, 181713, 544, 1, -31.4977, -34.0832, 0.630935, 1.22173, 0, 0, 0, 0, 900, 900), -- Manticron Cube
(@OGUID+4, 181713, 544, 1, -54.2302, 2.32818, 0.630945, 0.017453, 0, 0, 0, 0, 900, 900), -- Manticron Cube
(@OGUID+5, 181713, 544, 1, 9.39513, 23.2389, 0.630891, -2.49582, 0, 0, 0, 0, 900, 900), -- Manticron Cube
(@OGUID+6, 183847, 544, 1, -72.5866, 1.559, 0, 3.14159, 0, 0, 0, 0, 900, 900), -- Doodad_HF_Mag_door01
(@OGUID+7, 184634, 544, 1, 17.7522, 34.5464, 0.144816, 0.179666, 0, 0, 0, 0, 900, 900), -- Magtheridon Column 003
(@OGUID+8, 184635, 544, 1, 19.0966, -29.2772, 0.133036, -1.26399, 0, 0, 0, 0, 900, 900), -- Magtheridon Column 002
(@OGUID+9, 184636, 544, 1, -30.8852, 46.6723, -0.497104, 1.23468, 0, 0, 0, 0, 900, 900), -- Magtheridon Column 004
(@OGUID+10, 184637, 544, 1, -60.2491, 27.9361, -0.018443, 1.94711, 0, 0, 0, 0, 900, 900), -- Magtheridon Column 005
(@OGUID+11, 184638, 544, 1, -60.8202, -21.9269, -0.03026, 3.08278, 0, 0, 0, 0, 900, 900), -- Magtheridon Column 000
(@OGUID+12, 184639, 544, 1, -29.7699, -43.4445, -0.522461, -2.37604, 0, 0, 0, 0, 900, 900), -- Magtheridon Column 001
(@OGUID+13, 184653, 544, 1, 0, 0, 0, 3.14159, 0, 0, 0, 0, 900, 900); -- Doodad_Hellfire_Raid_FX01

-- INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- ============
-- SPAWN GROUPS
-- ============

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Magtheridon - Hellfire Warder (3) | Group 1', 0, 0, @SGGUID+1, 3),
(@SGGUID+2, 'Magtheridon - Hellfire Warder (3) | Group 2', 0, 0, @SGGUID+1, 3),
(@SGGUID+3, 'Magtheridon - Hellfire Warder (3) | Group 3', 0, 0, @SGGUID+1, 3),
(@SGGUID+4, 'Magtheridon - Hellfire Warder (3) | Patrol 1', 0, 0, @SGGUID+1, 3),
(@SGGUID+5, 'Magtheridon - Hellfire Channeler (5) | Group 4', 0, 0, @SGGUID+1, 1);

-- INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, @CGUID+32, -1), -- Hellfire Warder
(@SGGUID+1, @CGUID+31, -1), -- Hellfire Warder
(@SGGUID+1, @CGUID+33, -1), -- Hellfire Warder
(@SGGUID+2, @CGUID+37, -1), -- Hellfire Warder
(@SGGUID+2, @CGUID+38, -1), -- Hellfire Warder
(@SGGUID+2, @CGUID+39, -1), -- Hellfire Warder
(@SGGUID+3, @CGUID+28, -1), -- Hellfire Warder
(@SGGUID+3, @CGUID+29, -1), -- Hellfire Warder
(@SGGUID+3, @CGUID+30, -1), -- Hellfire Warder
(@SGGUID+4, @CGUID+34, 0), -- Hellfire Warder
(@SGGUID+4, @CGUID+35, 1), -- Hellfire Warder
(@SGGUID+4, @CGUID+36, 2), -- Hellfire Warder
(@SGGUID+5, @CGUID+3, 0), -- Hellfire Channeler
(@SGGUID+5, @CGUID+4, 1), -- Hellfire Channeler
(@SGGUID+5, @CGUID+5, 2), -- Hellfire Channeler
(@SGGUID+5, @CGUID+6, 3), -- Hellfire Channeler
(@SGGUID+5, @CGUID+7, 4); -- Hellfire Channeler

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+4, 2, 3, 0, @SGGUID+4, 2, 'Magtheridon - Hellfire Warder (3) | Patrol 1');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+4,'Magtheridon - Hellfire Warder (3) | Patrol 1');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+4,1,-73.72693,47.355293,-0.38537598,100,0,0),
(@SGGUID+4,2,-53.951275,58.999866,3.1846943,100,0,0),
(@SGGUID+4,3,-28.083755,65.604164,15.94728,100,0,0),
(@SGGUID+4,4,-3.498642,66.86735,22.654028,100,0,0),
(@SGGUID+4,5,14.21773,57.512276,22.968313,100,0,0),
(@SGGUID+4,6,29.301313,40.577045,33.289814,100,0,0),
(@SGGUID+4,7,44.670013,16.09524,45.009865,100,0,0),
(@SGGUID+4,8,44.010056,-11.347733,45.010532,100,0,0),
(@SGGUID+4,9,33.572083,-28.368456,37.985077,100,0,0),
(@SGGUID+4,10,14.805847,-53.501915,22.991356,100,0,0),
(@SGGUID+4,11,-11.261587,-62.130146,22.562366,100,0,0),
(@SGGUID+4,12,-37.538406,-59.60784,11.227191,100,0,0),
(@SGGUID+4,13,-70.55042,-44.39177,-0.3772414,100,0,0),
(@SGGUID+4,14,-37.538406,-59.60784,11.227191,100,0,0),
(@SGGUID+4,15,-11.261587,-62.130146,22.562366,100,0,0),
(@SGGUID+4,16,14.805847,-53.501915,22.991356,100,0,0),
(@SGGUID+4,17,33.572083,-28.368456,37.985077,100,0,0),
(@SGGUID+4,18,44.010056,-11.347733,45.010532,100,0,0),
(@SGGUID+4,19,44.670013,16.09524,45.009865,100,0,0),
(@SGGUID+4,20,29.301313,40.577045,33.289814,100,0,0),
(@SGGUID+4,21,14.21773,57.512276,22.968313,100,0,0),
(@SGGUID+4,22,-3.498642,66.86735,22.654028,100,0,0),
(@SGGUID+4,23,-28.083755,65.604164,15.94728,100,0,0),
(@SGGUID+4,24,-53.951275,58.999866,3.1846943,100,0,0);

DELETE FROM `worldstate_name` WHERE `Id` = 4805;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES
(4805, 'Magtheridon - Trash Respawn');

DELETE FROM `conditions` WHERE `condition_entry` = @SGGUID+1;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(@SGGUID+1, 42, 4805, 1, 0, 0, 0, 'Magtheridon - Trash Respawn');

INSERT INTO `spawn_group_linked_group` (`Id`, `LinkedId`) VALUES
(@SGGUID+5, @SGGUID+4), (@SGGUID+5, @SGGUID+3), (@SGGUID+5, @SGGUID+2), (@SGGUID+5, @SGGUID+1); -- All Groups should aggro when Magtheridon gets attacked.

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1882901,1882902);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1882901, 1000, 15, 33346, 0, 0, 15384, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Green Beam at Trigger'),
(1882901, 2000, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement changed to 0:idle'),
(1882902, 1000, 15, 33827, 0, 0, 15384, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Hellfire Warder Channel Visual at Trigger'),
(1882902, 2000, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement changed to 0:idle');

-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES


