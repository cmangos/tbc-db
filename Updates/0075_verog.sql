-- Verog the Dervish
DELETE FROM creature WHERE guid = 180850;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(180850, 3395, 1, 0, -1210.5857, -2725.839, 106.782524, 4.956735134124755859, 5, 5, 0, 2);

DELETE FROM creature_movement_template WHERE Entry = 3395;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(3395, 0, 1, -1210.5857, -2725.839, 106.782524, 100, 0, 0),
(3395, 0, 2, -1209.9082, -2731.1567, 105.828186, 100, 0, 0),
(3395, 0, 3, -1209.5896, -2736.3755, 103.224785, 100, 0, 0),
(3395, 0, 4, -1209.0471, -2739.1501, 102.63545, 100, 100, 3);

DELETE FROM spawn_group WHERE id = 18014;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(18014, 'The Barrens - Verog the Dervish', 0, 1, 0, 0, 0);

DELETE FROM spawn_group_spawn WHERE ID = 18014;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(18014, 180850, -1, 0); -- Verog the Dervish

-- SpecialActive Flag to make sure we can reach him with dbscript
UPDATE creature_template SET ExtraFlags = 64 WHERE entry IN (3395);

-- SpawnScript
DELETE FROM `dbscripts_on_relay` WHERE `id` = 9005;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(9005, 0, 0, 31, 3395, 100000, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate Script if Verog the Dervish 3395 IS found alife in range'),
(9005, 1, 1, 58, 18014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Verog the Dervish 3395'),
(9005, 1, 2, 0, 0, 0, 0, 0, 0, 0, 1191, 0, 0, 0, 0, 0, 0, 0, 'Say Text');
