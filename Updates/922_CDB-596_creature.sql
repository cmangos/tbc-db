-- Added missing rare spawns
-- Source: PSDB and YTDB
-- Thanks Neotmiren for pointing. This closes #444 

SET @GUID := 160355;
SET @POOL := 1205;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 8;
INSERT INTO `creature` (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Zekkis
(@GUID + 0, 5400, 0, 1, 0, 0, -10250.9, -4006.4, -99.7118, 0.401091, 28800, 28800, 0, 0, 6352, 0, 0, 0),
(@GUID + 1, 5400, 0, 1, 0, 0, -10213.7, -4012.92, -99.7109, 3.16962, 28800, 28800, 0, 0, 6352, 0, 0, 0),
(@GUID + 2, 5400, 0, 1, 0, 0, -10229.9, -3997.75, -109.881, 4.61083, 28800, 28800, 0, 0, 6352, 0, 0, 0),
-- Veyzhak the Cannibal
(@GUID + 3, 5399, 0, 1, 0, 0, -10301, -4028.2, -74.8377, 2.79036, 28800, 28800, 0, 0, 6261, 0, 0, 0),
-- Trigore the Lasher
(@GUID + 4, 3652, 1, 1, 0, 0, -621.612, -2270.82, 18.8419, 2.67112, 172800, 259200, 0, 0, 1341, 0, 0, 0),
 -- Oozeworm
(@GUID + 5, 14237, 1, 1, 0, 0, -4240.73, -2866.63, 37.1291, 5.23007, 172800, 259200, 0, 0, 2508, 0, 0, 0),
(@GUID + 6, 14237, 1, 1, 0, 0, -4240.14, -3028.64, 44.0589, 4.23654, 172800, 259200, 5, 0, 2508, 0, 0, 1),
(@GUID + 7, 14237, 1, 1, 0, 0, -4513.47, -2809.81, 34.1713, 1.66829, 172800, 259200, 5, 0, 2508, 0, 0, 1),
-- Lord Angler
(@GUID + 8, 14236, 1, 1, 0, 0, -4190, -4011, -9, 4.337, 75600, 115200, 7, 0, 6455, 0, 0, 1);

-- Created pools for those rare creatures
DELETE FROM `pool_creature_template` WHERE `id` IN (5400,14237);
INSERT INTO `pool_creature_template` (id, pool_entry, chance, description) VALUES
(5400, @POOL, 0, 'Zekkis (5400)'),
(14237, @POOL + 1, 0, 'Oozeworm (14237)');
DELETE FROM `pool_template` WHERE `entry` IN (@POOL,@POOL+1);
INSERT INTO `pool_template` (entry, max_limit, description) VALUES
(@POOL, 1, 'Zekkis (5400)'),
(@POOL + 1, 1, 'Oozeworm (14237)');


