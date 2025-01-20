-- ----------------
-- Stormwind
-- Quest - The Attack (id 434) new script 
-- ---------------

-- Tyrion's Spybot
-- Correct spawn points to sniffed ones. Always spawning in the back and running to Tyrion
DELETE FROM creature WHERE guid = 45707;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(45707, 8856, 0, 1, -8430.7021484375, 442.3575439453125, 122.3577651977539062, 0.856539845466613769, 120, 120, 0, 2);

-- Also set him as active object all the time, to make sure he stays next to tyrion after respawn
-- ExtraFlags before change: 65538 (CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT, CREATURE_EXTRA_FLAG_CIVILIAN)
UPDATE creature_template SET ExtraFlags = 69634 WHERE entry = 8856;

-- Tyrion's Spybot
DELETE FROM `creature_movement_template` WHERE `entry` IN (8856);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Waypoints after spawn
(8856, 0, 1, -8430.70, 442.358, 122.35777, 100, 0, 0), 
(8856, 0, 2, -8425.42,450.03125,122.39285, 100, 0, 0),
(8856, 0, 3, -8411.389,454.83572,123.78348, 100, 0, 0),
(8856, 0, 4, -8408.254,451.89584,123.783485, 100, 1000, 885601);

-- Movement Script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (885601);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Tyrion\'s Spybot after waypoints to Tyrion
(885601, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion\'s Spybot -  Change Movement To 0 - Idle'),
(885601, 4000, 0, 36, 0, 0, 0, 7766, 10, 515, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Face Tyrion\'s Spybot'),
(885601, 4000, 1, 1, 4, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Emote OneShotCheer'),
(885601, 4000, 2, 0, 0, 0, 0, 7766, 10, 0, 4612, 0, 0, 0, 0, 0, 0, 0, 'Tyrion - Say Text'),
(885601, 8000, 0, 36, 1, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Reset Orientation'),
(885601, 8000, 1, 29, 3, 1, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Add QuestGiver Flag'),
(885601, 8000, 3, 21, 0, 0, 0, 7766, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Attack: Tyrion - Remove ActiveObject');
