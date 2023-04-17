/* DBScriptData
DBName: Gruul's Lair
DBScriptName: instance_gruuls_lair
DB%Complete: 80
DBComment:
* Maulgar default weapon size doesnt match prenerf animation
EndDBScriptData */

SET @CGUID := 5650000; -- creatures
SET @OGUID := 5650000; -- gameobjects
SET @SGGUID := 5650000; -- spawn_groups

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- Patrol 1
(@CGUID+7, 1, 70.0753, 120.545, -6.80067, 1.4318, 0, 0),
(@CGUID+7, 2, 74.2257, 138.495, -8.73136, 1.31713, 0, 0),
(@CGUID+7, 3, 83.3225, 147.722, -9.90084, 0.792486, 40000, 0),
(@CGUID+7, 4, 74.4423, 138.169, -8.68153, 4.25295, 0, 0),
(@CGUID+7, 5, 70.2707, 120.313, -6.85253, 4.52706, 0, 0),
(@CGUID+7, 6, 66.75, 87.7835, -4.95224, 4.63073, 25000, 0),
-- Patrol 2
(@CGUID+10, 1, 102.667, 285.111, 1.38343, 4.65193, 20000, 0),
(@CGUID+10, 2, 108.475, 311.023, 1.56459, 1.38938, 0, 0),
(@CGUID+10, 3, 107.422, 315.295, 1.25423, 2.00357, 0, 0),
(@CGUID+10, 4, 108.58, 325.27, 1.51976, 2.29494, 55000, 0),
(@CGUID+10, 5, 108.65, 310.837, 1.60571, 4.90954, 0, 0),
-- Patrol 3
(@CGUID+15, 1, 115.935, 345.887, 4.20579, 4.05816, 0, 0),
(@CGUID+15, 2, 111.508, 332.61, 2.11866, 4.41238, 0, 0),
(@CGUID+15, 3, 108.464, 331.853, 1.70997, 3.23349, 15000, 0),
(@CGUID+15, 4, 114.04, 339.619, 3.30773, 1.08229, 0, 0),
(@CGUID+15, 5, 117.389, 347.853, 4.67211, 1.05401, 0, 0),
(@CGUID+15, 6, 124.308, 356.517, 6.12483, 0.896932, 0, 0),
(@CGUID+15, 7, 132.508, 361.832, 6.57332, 0.68566, 0, 0),
(@CGUID+15, 8, 139.363, 365.026, 4.24833, 0.386423, 0, 0),
(@CGUID+15, 9, 148.868, 364.023, 3.74505, 6.14261, 0, 0),
(@CGUID+15, 10, 166.153, 366.321, 1.37914, 0.187717, 55000, 0),
(@CGUID+15, 11, 149.978, 364.845, 3.68824, 3.30496, 0, 0),
(@CGUID+15, 12, 139.991, 365.852, 4.06457, 3.04107, 0, 0),
(@CGUID+15, 13, 131.958, 361.136, 6.8412, 3.55001, 0, 0);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES

INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+13, 0, 1, 0, 0, 0, NULL), -- Group 3
(@CGUID+14, 0, 1, 0, 0, 0, NULL), -- Group 3
(@CGUID+16, 0, 0, 0, 375, 0, NULL), -- Group 4
(@CGUID+17, 0, 0, 0, 375, 0, NULL), -- Group 4
(@CGUID+18, 0, 0, 0, 375, 0, NULL); -- Group 4

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(19389, 0, 0, 1, 0, 0, NULL), -- Lair Brute
(21350, 0, 0, 1, 0, 0, NULL); -- Gronn-Priest

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(18847, 565, 18834, 12304, 0); -- Wild Fel Stalker -> Olm the Summoner

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 18831, 565, 1, 143.049, 192.726, -11.2147, 3.40339, 604800, 604800, 0, 0), -- High King Maulgar
(@CGUID+2, 18832, 565, 1, 149.823, 178.019, -10.5928, 3.10669, 7200, 7200, 0, 0), -- Krosh Firehand
(@CGUID+3, 18834, 565, 1, 146.521, 185.358, -10.8378, 3.22886, 7200, 7200, 0, 0), -- Olm the Summoner
(@CGUID+4, 18835, 565, 1, 145.96, 207.296, -8.6713, 3.57792, 7200, 7200, 0, 0), -- Kiggler the Crazed
(@CGUID+5, 18836, 565, 1, 144.731, 199.921, -9.97698, 3.47321, 7200, 7200, 0, 0), -- Blindeye the Seer
(@CGUID+6, 19044, 565, 1, 239.919, 359.057, -4.65222, 3.01282, 604800, 604800, 0, 0), -- Gruul the Dragonkiller
-- Patrol 1
(@CGUID+7, 19389, 565, 1, 67.1291, 99.4851, -5.41845, 1.4318, 3600, 3600, 0, 2), -- Lair Brute
-- Group 1
(@CGUID+8, 0, 565, 1, 65.635, 130.703, -6.20328, 6.14971, 3600, 3600, 0, 0), -- spawn_group_entry
(@CGUID+9, 0, 565, 1, 76.6184, 129.076, -7.02181, 3.0576, 3600, 3600, 0, 0), -- spawn_group_entry

(@CGUID+10, 19389, 565, 1, 102.559, 288.509, 1.11309, 4.65193, 3600, 3600, 0, 2), -- Lair Brute
-- Group 2
(@CGUID+11, 0, 565, 1, 95.9796, 283.051, 2.23278, 0.017294, 3600, 3600, 0, 0), -- spawn_group_entry
(@CGUID+12, 0, 565, 1, 109.359, 281.634, 1.95785, 2.94604, 3600, 3600, 0, 0), -- spawn_group_entry
-- Group 3
(@CGUID+13, 0, 565, 1, 101.226, 326.936, 1.57027, 1.28414, 3600, 3600, 0, 0), -- spawn_group_entry
(@CGUID+14, 0, 565, 1, 102.668, 335.433, 2.02522, 4.51134, 3600, 3600, 0, 0), -- spawn_group_entry
-- Patrol 3
(@CGUID+15, 19389, 565, 1, 121.425, 353.774, 5.57, 3.99279, 3600, 3600, 0, 2), -- Lair Brute
-- Group 4
(@CGUID+16, 0, 565, 1, 177.683, 371.957, 0.435013, 3.14632, 3600, 3600, 0, 0), -- spawn_group_entry
(@CGUID+17, 0, 565, 1, 175.194, 365.85, 0.046197, 2.95075, 3600, 3600, 0, 0), -- spawn_group_entry
(@CGUID+18, 0, 565, 1, 177.139, 358.69, -1.00116, 2.79996, 3600, 3600, 0, 0); -- spawn_group_entry

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 183817, 565, 1, 99.0729, 249.704, 18.3478, 3.14159, 0, 0, -1, 0, 180, 180), -- Doodad_Portcullis_Gronn01
(@OGUID+2, 184662, 565, 1, 166.897, 368.226, 16.9209, 4.71239, 0, 0, -0.707107, 0.707107, 180, 180); -- Doodad_Portcullis_Gronn02

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
(@SGGUID+1, 'Gruuls\'Lair - High King Maulgar | Group 1', 0, 0, 0, 7), -- aggro, respawn and evade together
(@SGGUID+2, 'Gruuls\'Lair - Gruul | Group 1', 0, 0, 0, 0),
(@SGGUID+3, 'Gruuls\'Lair - Lair Brute | Patrol', 0, 0, @SGGUID+1, 0),
(@SGGUID+4, 'Gruuls\'Lair - Lair Brute | Gronn-Priest | Group 2', 0, 0, @SGGUID+1, 3), -- aggro and respawn together
(@SGGUID+5, 'Gruuls\'Lair - Lair Brute | Patrol', 0, 0, @SGGUID+2, 0),
(@SGGUID+6, 'Gruuls\'Lair - Lair Brute | Gronn-Priest | Group 3', 0, 0, @SGGUID+2, 3), -- aggro and respawn together
(@SGGUID+7, 'Gruuls\'Lair - Lair Brute | Gronn-Priest | Group 4', 0, 0, @SGGUID+2, 3), -- aggro and respawn together
(@SGGUID+8, 'Gruuls\'Lair - Lair Brute | Patrol', 0, 0, @SGGUID+2, 0),
(@SGGUID+9, 'Gruuls\'Lair - Lair Brute | Gronn-Priest | Group 4', 0, 0, @SGGUID+2, 3); -- aggro and respawn together

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+4, 19389, 0, 0, 0), (@SGGUID+4, 21350, 0, 0, 0), -- Gronn-Priest, Lair Brute
(@SGGUID+6, 19389, 0, 0, 0), (@SGGUID+6, 21350, 0, 0, 0), -- Gronn-Priest, Lair Brute
(@SGGUID+7, 19389, 0, 0, 0), (@SGGUID+7, 21350, 0, 0, 0), -- Gronn-Priest, Lair Brute
(@SGGUID+9, 19389, 0, 0, 0), (@SGGUID+9, 21350, 0, 0, 0); -- Gronn-Priest, Lair Brute

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, @CGUID+1, -1), -- High King Maulgar 
(@SGGUID+1, @CGUID+2, -1), -- Krosh Firehand
(@SGGUID+1, @CGUID+3, -1), -- Olm the Summoner
(@SGGUID+1, @CGUID+4, -1), -- Kiggler the Crazed
(@SGGUID+1, @CGUID+5, -1), -- Blindeye the Seer
(@SGGUID+2, @CGUID+6, -1), -- Gruul the Dragonkiller
(@SGGUID+3, @CGUID+7, -1), -- Lair Brute
(@SGGUID+4, @CGUID+8, -1), -- spawn_group_entry
(@SGGUID+4, @CGUID+9, -1), -- spawn_group_entry
(@SGGUID+5, @CGUID+10, -1), -- Lair Brute
(@SGGUID+6, @CGUID+11, -1), -- spawn_group_entry
(@SGGUID+6, @CGUID+12, -1), -- spawn_group_entry
(@SGGUID+7, @CGUID+13, -1), -- spawn_group_entry
(@SGGUID+7, @CGUID+14, -1), -- spawn_group_entry
(@SGGUID+8, @CGUID+15, -1), -- Lair Brute
(@SGGUID+9, @CGUID+16, -1), -- spawn_group_entry
(@SGGUID+9, @CGUID+17, -1), -- spawn_group_entry
(@SGGUID+9, @CGUID+18, -1); -- spawn_group_entry

-- INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
-- INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
-- INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES

DELETE FROM worldstate_name WHERE Id IN (2778,4804);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(2778, 'Gruuls\'Lair - Highking Maulgar - Encounter completed'),
(4804, 'Gruuls\'Lair - Gruul the Dragonkiller - Encounter completed');

DELETE FROM conditions WHERE condition_entry IN (@SGGUID+1, @SGGUID+2);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@SGGUID+1, '42', 2778, '0', '0', '0', '0', 'Highking Maulgar - Trash Respawn'),
(@SGGUID+2, '42', 4804, '0', '0', '0', '0', 'Gruul the Dragonkiller - Trash Respawn');

-- =========
-- DBSCRIPTS
-- =========

-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
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


