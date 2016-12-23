-- Araga
-- missing creatures
-- empty guids reused -- UDB ONLY
DELETE FROM creature WHERE guid IN (61236,61237);
DELETE FROM creature_addon WHERE guid IN (61236,61237);
DELETE FROM creature_movement WHERE id IN (61236,61237);
DELETE FROM game_event_creature WHERE guid IN (61236,61237);
DELETE FROM game_event_creature_data WHERE guid IN (61236,61237);
DELETE FROM creature_battleground WHERE guid IN (61236,61237);
DELETE FROM creature_linking WHERE guid IN (61236,61237) OR 
master_guid IN (61236,61237);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(61236,14222,0,1,0,0,-112.044,-58.7176,144.919,2.62536,86400,15,0,1342,0,0,1),
(61237,14222,0,1,0,0,-242.918,-306.493,164.816,2.8492,86400,15,0,1342,0,0,1);
-- 1st spawn corrected, spawntime corrected to 24hrs
UPDATE creature SET position_x = 157.716125, position_y = -77.213684, position_z = 106.692421, spawntimesecs = 86400, spawndist = 15, MovementType = 1 WHERE guid = 17066;

-- Only one can be spawned at at the same time
DELETE FROM pool_template WHERE entry = 1005;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(1005,1,'Araga');
DELETE FROM pool_creature_template WHERE pool_entry = 1005;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(14222, 1005, 0, 'Araga - 14222');

-- Drop corrected
DELETE FROM creature_loot_template WHERE  entry = 14222;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(14222,1686,13.4615,0,1,1,0),
(14222,1687,7.6923,0,1,1,0),
(14222,1746,0.04,0,1,1,0),
(14222,1772,0.18,0,1,1,0),
(14222,1775,0.2,0,1,1,0),
(14222,1777,0.2,0,1,1,0),
(14222,1783,0.18,0,1,1,0),
(14222,1797,0.5,0,1,1,0),
(14222,1799,0.5,0,1,1,0),
(14222,1818,0.04,0,1,1,0),
(14222,1819,0.2,0,1,1,0),
(14222,1820,0.2,0,1,1,0),
(14222,1824,0.2,0,1,1,0),
(14222,3065,0.04,0,1,1,0),
(14222,3379,0.3,0,1,1,0),
(14222,4414,1.36,0,1,1,0),
(14222,4715,1.1,0,1,1,0),
(14222,4865,73,0,1,1,0),
(14222,5137,26,0,1,1,0),
(14222,5637,1.9231,0,1,1,0),
(14222,6567,0.9,0,1,1,0),
(14222,6568,8,0,1,1,0),
(14222,6569,1.4,0,1,1,0),
(14222,6573,3,0,1,1,0),
(14222,6577,3,0,1,1,0),
(14222,6578,3,0,1,1,0),
(14222,6580,3,0,1,1,0),
(14222,6584,1.2,0,1,1,0),
(14222,6586,3,0,1,1,0),
(14222,6587,8,0,1,1,0),
(14222,6591,0.8,0,1,1,0),
(14222,6593,1.2,0,1,1,0),
(14222,6600,1.2,0,1,1,0),
(14222,6602,0.8,0,1,1,0),
(14222,6604,2,0,1,1,0),
(14222,8146,1.36,0,1,1,0),
(14222,9773,2,0,1,1,0),
(14222,9774,2,0,1,1,0),
(14222,9782,3,0,1,1,0),
(14222,9792,1.7,0,1,1,0),
(14222,9793,1.3,0,1,1,0),
(14222,9794,1.1,0,1,1,0),
(14222,9795,1.5,0,1,1,0),
(14222,9796,0.8,0,1,1,0),
(14222,9799,1.9,0,1,1,0),
(14222,9801,3,0,1,1,0),
(14222,9802,3,0,1,1,0),
(14222,9803,1.7,0,1,1,0),
(14222,9805,9,0,1,1,0),
(14222,9806,0.6,0,1,1,0),
(14222,9807,0.7,0,1,1,0),
(14222,9810,1.4,0,1,1,0),
(14222,9811,8,0,1,1,0),
(14222,9813,1.8,0,1,1,0),
(14222,9814,9,0,1,1,0),
(14222,9815,1.5,0,1,1,0),
(14222,9817,2,0,1,1,0),
(14222,9818,1.8,0,1,1,0);

