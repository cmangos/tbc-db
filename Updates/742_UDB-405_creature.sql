-- Blood Elf Bandit
-- wrong spawns removed
DELETE FROM creature WHERE id = 17591; 
-- Correct spawn locations - should be 20 in total
-- missing added - UDB free guids reused
-- small note - modelid had to be set (reason: seting female model = client crash)
DELETE FROM creature WHERE guid IN (84104,84105,84106,84107,84108,84109,84110,84111,84112,84113,84114,84115,84116,84117,84118,84119,84120,84121,84122,84123);
DELETE FROM creature_addon WHERE guid IN (84104,84105,84106,84107,84108,84109,84110,84111,84112,84113,84114,84115,84116,84117,84118,84119,84120,84121,84122,84123);
DELETE FROM creature_movement WHERE id IN (84104,84105,84106,84107,84108,84109,84110,84111,84112,84113,84114,84115,84116,84117,84118,84119,84120,84121,84122,84123);
DELETE FROM game_event_creature WHERE guid IN (84104,84105,84106,84107,84108,84109,84110,84111,84112,84113,84114,84115,84116,84117,84118,84119,84120,84121,84122,84123);
DELETE FROM game_event_creature_data WHERE guid IN (84104,84105,84106,84107,84108,84109,84110,84111,84112,84113,84114,84115,84116,84117,84118,84119,84120,84121,84122,84123);
DELETE FROM creature_battleground WHERE guid IN (84104,84105,84106,84107,84108,84109,84110,84111,84112,84113,84114,84115,84116,84117,84118,84119,84120,84121,84122,84123);
DELETE FROM creature_linking WHERE guid IN (84104,84105,84106,84107,84108,84109,84110,84111,84112,84113,84114,84115,84116,84117,84118,84119,84120,84121,84122,84123)
OR master_guid IN (84104,84105,84106,84107,84108,84109,84110,84111,84112,84113,84114,84115,84116,84117,84118,84119,84120,84121,84122,84123);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(84104,17591,530,1,17115,0,-4210.5,-11623.5,7.85861,6.14483,60,0,0,103,0,0,0),  -- 27.6, 52.1 - Between a large tree and a lit pillar on side of the road.
(84105,17591,530,1,17115,0,-4494.68,-11815.3,14.658,4.0476,60,0,0,103,0,0,0),   -- 32.3, 62.7 - Next to a large broken pillar.
(84106,17591,530,1,17115,0,-4715.08,-11881,26.6153,1.01286,60,0,0,103,0,0,0),   -- 33.8, 70.7 - Next to a large tree on side of the road.
(84107,17591,530,1,17115,0,-4554.34,-11935.9,28.3687,5.84462,60,0,0,103,0,0,0), -- 35.3, 64.8 - Next to a lit pillar at fork in the road.
(84108,17591,530,1,17115,0,-4516.35,-12253.7,17.1639,5.9114,60,0,0,103,0,0,0),  -- 43.1, 63.5 - Next to a patch of bushes slightly off side of the road.
(84109,17591,530,1,17115,0,-3866.65,-12392.6,0.681576,4.271,60,0,0,103,0,0,0),  -- 46.6, 39.5 - Next to a purple street light on side of the road.
(84110,17591,530,1,17115,0,-3585.97,-12555.32,20.059,1.152,60,0,0,103,0,0,0),   -- 50.4, 29.2 - Next to a small broken pillar on side of the road.
(84111,17591,530,1,17115,0,-3269.36,-12607.73,39.8177,4.22,60,0,0,103,0,0,0),   -- 51.9, 17.6 - Next to a lit pillar on southwest corner of a small bridge.
(84112,17591,530,1,17115,0,-3362.6,-11999.4,19.2218,4.15353,60,0,0,103,0,0,0),  -- 36.8, 21.0 - Next to a large tree just off side of the road.
(84113,17591,530,1,17115,0,-3680.197,-11994.037,3.650,1.752,60,0,0,103,0,0,0),  -- 36.7, 32.7 - Next to a small broken pillar and large tree on side of the road.
(84114,17591,530,1,17115,0,-3505.55,-11876.9,1.1271,4.62558,60,5,0,103,0,0,1),
(84115,17591,530,1,17115,0,-3303.55,-11888.2,1.89806,0.239125,60,5,0,103,0,0,1),
(84116,17591,530,1,17115,0,-3297.17,-12906.9,12.6549,1.88904,60,5,0,103,0,0,1),
(84117,17591,530,1,17115,0,-3381.75,-12714.2,18.2806,2.0088,60,5,0,103,0,0,1),
(84118,17591,530,1,17115,0,-3902.06,-12693.2,90.2984,2.47924,60,0,0,103,0,0,0),
(84119,17591,530,1,17115,0,-3859.88,-13150,6.93565,1.96873,60,5,0,103,0,0,1),
(84120,17591,530,1,17115,0,-4466.65,-12664.5,18.3855,2.47923,60,5,0,103,0,0,1),
(84121,17591,530,1,17115,0,-4448.51,-11976.3,30.7217,0.986974,60,5,0,103,0,0,1),
(84122,17591,530,1,17115,0,-4926.19,-11658.2,11.9022,3.3628,60,5,0,103,0,0,1),
(84123,17591,530,1,17115,0,-4612.64,-11566.9,18.6056,3.37537,60,5,0,103,0,0,1);

-- Only one can be spawned at at the same time
DELETE FROM pool_template WHERE entry = 25520;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25520,1,'Blood Elf Bandit');
DELETE FROM pool_creature_template WHERE pool_entry = 25520;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(17591, 25520, 0, 'Blood Elf Bandit - 17591');


