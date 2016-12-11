-- q.1147 'The Swarm Grows'
-- Source: Wowhead
-- The Invaders seem to share a spawn with the Hive Drones in the cave here. If you can't find any invaders, wipe out the whole cave and hopefully some should appear on the respawn :-)
DELETE FROM creature WHERE guid IN (160495,160496);
DELETE FROM creature_addon WHERE guid IN (160495,160496);
DELETE FROM creature_movement WHERE id IN (160495,160496);
DELETE FROM game_event_creature WHERE guid IN (160495,160496);
DELETE FROM game_event_creature_data WHERE guid IN (160495,160496);
DELETE FROM creature_battleground WHERE guid IN (160495,160496);
DELETE FROM creature_linking WHERE guid IN (160495,160496)
 OR master_guid IN (160495,160496);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Silithid Invader
(160495,4131,1,1,0,0,-6447.72,-3289.73,-105.453,3.86051,120,120,2,0,0,0,0,1),
-- Silithid Hive Drone
(160496,4133,1,1,0,0,-6447.95,-3290.05,-105.558,0.0576163,120,120,2,0,0,0,0,1);

-- Pool Templates -- Pool 10
DELETE FROM pool_template WHERE entry = 21326;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(21326, 1, 'The Rustmaul Dig Site - Silithid Invader/Silithid Hive Drone - Pool 10');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 21326;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(160495, 21326, 0, 'Silithid Invader 10'),
(160496, 21326, 0, 'Silithid Hive Drone 10');

-- Silithid Invader & Silithid Hive Drone
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id IN (4131,4133);

