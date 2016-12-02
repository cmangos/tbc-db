-- The Steamvault
-- Tidal Surger #1
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 12695;
DELETE FROM creature_movement WHERE id = 12695;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12695,1,27.0136,-145.039,-22.3968,0,0,4.2748,0,0),(12695,2,21.4739,-159.21,-22.4082,0,0,4.6832,0,0),(12695,3,26.7279,-177.709,-22.3997,0,0,5.36256,0,0),
(12695,4,21.8476,-158.618,-22.4052,0,0,1.39002,0,0),(12695,5,30.8925,-138.629,-22.5491,0,0,0.720856,0,0),(12695,6,57.7822,-114.87,-22.6239,0,0,0.591266,0,0),
(12695,7,38.5541,-130.114,-22.6439,0,0,3.84281,0,0);
-- Steam Surgers
UPDATE creature SET position_x = 38.004841, position_y = -130.148880, position_z = -22.624664, orientation = 3.122529 WHERE guid = 12704;
UPDATE creature SET position_x = 38.839870, position_y = -126.107468, position_z = -22.576244, orientation = 3.196008 WHERE guid = 12688;
UPDATE creature SET position_x = 38.736404, position_y = -133.644135, position_z = -22.719330, orientation = 3.160665 WHERE guid = 12694;
-- Links
DELETE FROM creature_linking WHERE guid IN (12704, 12688, 12694, 12696);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(12704, 12695, 1+4+128+512),
(12688, 12695, 1+4+128+512),
(12694, 12695, 1+4+128+512),
(12696, 12695, 1+4+128+512);

-- Tidal Surger #2
UPDATE creature SET position_x = 1.503358, position_y = -176.132187, position_z = -22.362617, orientation = 6.039896, Spawndist = 0, MovementType = 2 WHERE guid = 12700;
DELETE FROM creature_movement WHERE id = 12700;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12700,1,13.0123,-180.845,-22.3747,0,0,5.74062,0,0),(12700,2,17.6451,-189.086,-22.4312,0,0,4.86726,0,0),(12700,3,18.475,-205.289,-22.3882,0,0,4.74945,0,0),
(12700,4,17.0985,-188.306,-22.4238,0,0,1.99428,0,0),(12700,5,9.53988,-180.075,-22.4403,0,0,2.69328,0,0),(12700,6,-7.20501,-173.28,-23.2732,0,0,2.88963,0,0),
(12700,7,2.36385,-176.577,-22.3011,0,0,5.97624,0,0);
-- Steam Surgers
UPDATE creature SET position_x = 2.846399, position_y = -176.441040, position_z = -22.290167, orientation = 6.016719 WHERE guid = 12701;
UPDATE creature SET position_x = 0.480689, position_y = -173.216721, position_z = -22.139637, orientation = 6.068146 WHERE guid = 12703;
UPDATE creature SET position_x = -0.120366, position_y = -177.977997, position_z = -22.869598, orientation = 6.175745 WHERE guid = 12702;
UPDATE creature SET position_x = -0.890754, position_y = -175.418060, position_z = -22.789379, orientation = 6.043005 WHERE guid = 12684;
DELETE FROM creature_linking WHERE guid IN (12703, 12703, 12702, 12684);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(12701, 12700, 1+4+128+512),
(12703, 12700, 1+4+128+512),
(12702, 12700, 1+4+128+512),
(12684, 12700, 1+4+128+512);

-- Tidal Surger #3
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 12679;
DELETE FROM creature_movement WHERE id = 12679;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12679,1,22.672,-223.202,-22.536,0,0,0.814135,0,0),(12679,2,39.0578,-210.222,-22.6133,0,0,0.594223,0,0),(12679,3,22.1297,-224.366,-22.5328,0,0,4.12852,0,0),
(12679,4,8.45932,-247.386,-23.3366,0,0,4.29345,0,0);
DELETE FROM creature_linking WHERE guid IN (12680, 12681, 12682, 12683);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(12680, 12679, 1+4+128+512),
(12681, 12679, 1+4+128+512),
(12682, 12679, 1+4+128+512),
(12683, 12679, 1+4+128+512);

