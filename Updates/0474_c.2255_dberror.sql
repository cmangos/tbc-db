-- 2021-06-06 15:34:06 WaypointMovementGenerator::LoadPath: Creature (Entry: 2255 Guid: 17072) doesn't have waypoint path 0
-- 2021-06-06 15:34:06 void WaypointMovementGenerator<Creature>::InitializeWaypointPath> unable to intialize path for Creature (Entry: 2255 Guid: 17072)
-- 2021-06-06 15:34:06 WaypointMovementGenerator::LoadPath: Creature (Entry: 2255 Guid: 16807) doesn't have waypoint path 0
-- 2021-06-06 15:34:06 void WaypointMovementGenerator<Creature>::InitializeWaypointPath> unable to intialize path for Creature (Entry: 2255 Guid: 16807)
UPDATE `creature` SET `modelid` = 0, `spawndist` = 5, `MovementType` = 1 WHERE `id` = 2255; -- classic/wotlk-db

