-- Teldrassil 'Escort' - NPC Mist 3568
-- Correct UnitStats based on TBC Anni sniff
-- NpcFlags: 2
-- FactionTemplate: 80
-- Flags: 768 (ImmunePC, ImmuneNPC)
-- Before change: UnitFlags 4864
UPDATE creature_template SET UnitFlags = 768 WHERE entry = 3568;

-- Changes when accepting Quest (Core) to:
-- NpcFlags: 0
-- FactionTemplate: 10
-- Flags: 0 (None)

-- Sentinel Arynia Cloudsbreak
DELETE FROM dbscripts_on_relay WHERE id = 351901;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(351901, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Set ActiveState'),
(351901, 0, 1, 37, 0, 0, 2, 3568, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Mist Move to Sentinel'),
(351901, 0, 3, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Remove NPC Flags'), 
(351901, 3000, 0, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - StandState Kneel'), -- 15:13:34.196
(351901, 6000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Emote OneShotTalk'),-- 15:13:37.438
(351901, 6000, 1, 0, 0, 0, 0, 0, 0, 0, 1330, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Say Text'),
(351901, 8000, 1, 20, 2, 0, 0, 3568, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Mist Start Moving'),
(351901, 9000, 1, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Reset Facing'), -- 15:13:40.689
(351901, 9000, 2, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Add NPC Flags'),
(351901, 9000, 3, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Remove StateKneel'),
(351901, 9000, 4, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sentinel Arynia Cloudsbreak - Remove ActiveState');

DELETE FROM dbscripts_on_creature_movement WHERE id = 356801;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(356801, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mist - Set ActiveState'),
(356801, 0, 1, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mist - Set RunMode'),
(356801, 0, 2, 48, 512, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mist - Set UnitFlag ImmuneNPC'),
(356801, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1340, 0, 0, 0, 0, 0, 0, 0, 'Mist - EmotedText');

DELETE FROM creature WHERE guid = 49625;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(49625, 3568, 1, 1, 10758.365, 2208.9033, 1331.6393, 4.22369, 300, 300, 0, 0);

DELETE FROM creature_movement_template WHERE entry = 3568;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(3568, 0,  1, 10662.255, 1862.1868, 1324.1066, 100, 1000, 356801),
(3568, 0,  2, 10653.317, 1831.3973, 1324.4674, 100, 0, 0),
(3568, 0,  3, 10650.06, 1812.1946, 1326.8092, 100, 0, 0),
(3568, 0,  4, 10651.633, 1797.6052, 1326.1343, 100, 0, 0),
(3568, 0,  5, 10657.637, 1783.8049, 1323.5095, 100, 0, 0),
(3568, 0,  6, 10661.854, 1772.8386, 1322.886, 100, 0, 0),
(3568, 0,  7, 10673.114, 1766.3516, 1320.6752, 100, 0, 0),
(3568, 0,  8, 10699.169, 1758.2799, 1318.6066, 100, 0, 0),
(3568, 0,  9, 10725.821, 1752.2094, 1314.3503, 100, 100, 1);

-- Emoted Text
UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 1340;