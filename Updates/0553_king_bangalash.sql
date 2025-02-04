-- King Bangalash spawns correction
DELETE FROM creature WHERE guid = 2169;
-- 2 possible spawn positions
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(158025, 731, 0, 1, -12759.518, -200.82161, 37.733055, 0, 240, 360, 0, 2),
(158026, 731, 0, 1, -12613.841, -220.06966, 37.91396, 0, 240, 360, 0, 2);

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- Position 1, has 11 waypoints, on point 11 changee to random movement for 1 minute before going next waypoints
(158025,1,-12747.689,-220.34148,37.66327, 100, 0, 0),
(158025,2,-12741.059,-235.2079,34.316406, 100, 0, 0),
(158025,3,-12729.513,-250.6491,40.087223, 100, 0, 0),
(158025,4,-12715.489,-250.11394,38.179924, 100, 0, 0),
(158025,5,-12703.97,-245.33638,36.665325, 100, 0, 0),
(158025,6,-12690.362,-246.3737,37.572098, 100, 0, 0),
(158025,7,-12672.014,-243.87305,37.73226, 100, 0, 0),
(158025,8,-12661.518,-234.26237,36.36481, 100, 0, 0),
(158025,9,-12635.311,-227.72548,39.29583, 100, 0, 0),
(158025,10,-12619.174,-218.44553,37.71941, 100, 0, 0),
(158025,11,-12611.393,-217.53233,37.611263, 100, 1000, 73101), -- rnd movement 
-- spawn posistion 2, recheck this path, maybe its only a linear wp between points 1-16 with a chance to change movement to rnd on point 6-9
(158026,1,-12747.689,-220.34148,37.66327, 100, 0, 0),
(158026,2,-12741.059,-235.2079,34.316406, 100, 0, 0),
(158026,3,-12729.513,-250.6491,40.087223, 100, 0, 0),
(158026,4,-12715.489,-250.11394,38.179924, 100, 0, 0),
(158026,5,-12703.97,-245.33638,36.665325, 100, 0, 0),
(158026,6,-12690.362,-246.3737,37.572098, 100, 0, 0),
(158026,7,-12672.014,-243.87305,37.73226, 100, 0, 0),
(158026,8,-12661.518,-234.26237,36.36481, 100, 0, 0),
(158026,9,-12635.311,-227.72548,39.29583, 100, 0, 0),
(158026,10,-12619.174,-218.44553,37.71941, 100, 0, 0),
(158026,11,-12611.393,-217.53233,37.611263, 100, 0, 0),
(158026,12,-12611.588,-216.92267,37.555183, 100, 0, 0),
(158026,13,-12615.962,-215.67291,37.593266, 100, 0, 0),
(158026,14,-12611.278,-217.01324,37.573093, 100, 0, 0),
(158026,15,-12611.622,-216.91489,37.571655, 100, 0, 0),
(158026,16,-12610.643,-214.79297,37.495434, 100, 0, 0),
(158026,17,-12610.689,-217.42136,37.625732, 100, 0, 0),
(158026,18,-12611.374,-216.7646,37.549717, 100, 0, 0),
(158026,19,-12611.759,-217.545,37.59991, 100, 0, 0),
(158026,20,-12611.308,-216.42918,37.534992, 100, 0, 0),
(158026,21,-12613.173,-216.93634,37.524036, 100, 0, 0),
(158026,22,-12612.157,-216.47641,37.508358, 100, 0, 0),
(158026,23,-12615.908,-217.42397,37.58154, 100, 0, 0),
(158026,24,-12614.094,-218.12064,37.582855, 100, 0, 0),
(158026,25,-12611.586,-216.84753,37.549328, 100, 1000, 73102);

DELETE FROM `creature_movement_template` WHERE `entry` IN (731);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- GUID 158025, waypoints before changing to random movement
(731, 1, 1,-12623.782,-216.59929,38.23529, 100, 0, 0),
(731, 1, 2,-12633.291,-221.45117,38.71875, 100, 0, 0),
(731, 1, 3,-12650.664,-220.10428,38.284187, 100, 0, 0),
(731, 1, 4,-12668.223,-217.64432,37.22922, 100, 0, 0),
(731, 1, 5,-12680.479,-218.00456,37.44067, 100, 1000, 73102); -- rnd movement


-- Waypoint scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (73101, 73102);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- King Bagalash
(73101, 0, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'King Bagalash - Send EventAI A to self'), -- inform self to change phase to 2
(73101, 0, 1, 20, 1, 10, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'King Bagalash - move random around point - 10y'), 
(73102, 0, 1, 20, 1, 20, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'King Bagalash - move random around point - 20y');

-- Spawn group for King Bangalash
SET @SGGUID := 19940; -- spawn_groups
DELETE FROM spawn_group WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+1, 'STV - King Bangalash', 0, 1, 0, 0, 0);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, 158025, -1, 0), -- King Bangalash
(@SGGUID+1, 158026, -1, 0); -- King Bangalash