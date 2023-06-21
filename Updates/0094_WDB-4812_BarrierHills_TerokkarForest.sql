-- The Barrier Hills - Terokkar Forest

-- Slaag 22199
UPDATE creature SET position_x = -1634.9185, position_y = 5979.2266, position_z = 209.4375, orientation = 0.22689, spawndist = 0, MovementType = 0 WHERE id = 22199;

-- Gordunni Back-Breaker 22143
-- missing added
DELETE FROM creature_addon WHERE guid IN (5309068,5309069,5309070);
DELETE FROM creature_movement WHERE Id IN (5309068,5309069,5309070);
DELETE FROM game_event_creature WHERE guid IN (5309068,5309069,5309070);
DELETE FROM game_event_creature_data WHERE guid IN (5309068,5309069,5309070);
DELETE FROM creature_battleground WHERE guid IN (5309068,5309069,5309070);
DELETE FROM creature_linking WHERE guid IN (5309068,5309069,5309070)
 OR master_guid IN (5309068,5309069,5309070);
DELETE FROM creature WHERE guid IN (5309068,5309069,5309070);
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(5309068,22143,530,1,-1356.875,5565.4116,184.52736,4.886921882629394531,300,300,0,0),
(5309069,22143,530,1,-1292.7267,5747.1235,189.25443,0.523598790168762207,300,300,0,0),
(5309070,22143,530,1,-1528.3468,6032.4756,196.32149,0.157079637050628662,300,300,0,0);
UPDATE creature SET position_x = -1372.1552, position_y = 5757.3726, position_z = 190.11063, orientation = 5.42797, spawndist = 0, MovementType = 0 WHERE guid = 91736;
UPDATE creature SET position_x = -1475.997, position_y = 5947.097, position_z = 231.60321, orientation = 0.344486, spawndist = 0, MovementType = 0 WHERE guid = 91722;
UPDATE creature SET position_x = -1551.5098, position_y = 5916.1157, position_z = 199.85791, orientation = 2.251, spawndist = 0, MovementType = 0 WHERE guid = 91720;
UPDATE creature SET position_x = -1301.188, position_y = 5580.579, position_z = 195.54584, orientation = 5.42797, spawndist = 0, MovementType = 0 WHERE guid = 91746;
UPDATE creature SET position_x = -1269.066, position_y = 5649.2134, position_z = 216.55948, orientation = 5.550147, spawndist = 0, MovementType = 0 WHERE guid = 91747;
UPDATE creature SET position_x = -1335.2263, position_y = 5600.8413, position_z = 217.05421, orientation = 5.969026, spawndist = 0, MovementType = 0 WHERE guid = 91744;
UPDATE creature SET position_x = -1356.8674, position_y = 5780.091, position_z = 191.26201, orientation = 0.5236, spawndist = 0, MovementType = 0 WHERE guid = 91735;
UPDATE creature SET position_x = -1358.333984, position_y = 5629.166016, position_z = 181.563782, spawndist = 7, MovementType = 1 WHERE guid = 91743;
UPDATE creature SET position_x = -1316.876587, position_y = 5776.669922, position_z = 184.562225, spawndist = 7, MovementType = 1 WHERE guid = 91737;
UPDATE creature SET position_x = -1282.333496, position_y = 5836.356934, position_z = 185.744186, spawndist = 7, MovementType = 1 WHERE guid = 91733;
UPDATE creature SET position_x = -1324.417236, position_y = 5901.171875, position_z = 190.924500, spawndist = 7, MovementType = 1 WHERE guid = 91730;
UPDATE creature SET position_x = -1472.727051, position_y = 5925.054199, position_z = 195.575363, spawndist = 7, MovementType = 1 WHERE guid = 91721;
UPDATE creature SET position_x = -1517.035400, position_y = 5998.721191, position_z = 193.298889, spawndist = 7, MovementType = 1 WHERE guid = 91727;
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid = 91714;

-- Gordunni Elementalist 22144
-- missing added
DELETE FROM creature_addon WHERE guid IN (5309071);
DELETE FROM creature_movement WHERE Id IN (5309071);
DELETE FROM game_event_creature WHERE guid IN (5309071);
DELETE FROM game_event_creature_data WHERE guid IN (5309071);
DELETE FROM creature_battleground WHERE guid IN (5309071);
DELETE FROM creature_linking WHERE guid IN (5309071)  
 OR master_guid IN (5309071);
DELETE FROM creature WHERE guid IN (5309071);
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(5309071,22144,530,1,-1440.3005,5899.805,193.13968,0,300,300,7,1);
UPDATE creature SET position_x = -1389.1576, position_y = 5642.9985, position_z = 181.5571, orientation = 2.37364, spawndist = 0, MovementType = 0 WHERE guid = 91742;
UPDATE creature SET position_x = -1388.501, position_y = 5654.46, position_z = 181.5599, orientation = 3.45575, spawndist = 0, MovementType = 0 WHERE guid = 91740;
UPDATE creature SET position_x = -1401.078, position_y = 5650.161, position_z = 181.73259, orientation = 0, spawndist = 0, MovementType = 0 WHERE guid = 91741;
UPDATE creature SET position_x = -1285.5533, position_y = 5752.4204, position_z = 189.37166, orientation = 3.40339, spawndist = 0, MovementType = 0 WHERE guid = 91734;
UPDATE creature SET position_x = -1329.6309, position_y = 5853.3345, position_z = 222.52026, orientation = 0.64577, spawndist = 0, MovementType = 0 WHERE guid = 91731;
UPDATE creature SET position_x = -1465.0924, position_y = 5851.521, position_z = 200.14958, orientation = 2.61799, spawndist = 0, MovementType = 0 WHERE guid = 91717;
UPDATE creature SET position_x = -1469.7697, position_y = 5861.998, position_z = 199.18192, orientation = 4.014257, spawndist = 0, MovementType = 0 WHERE guid = 91716;
UPDATE creature SET position_x = -1539.9596, position_y = 6030.669, position_z = 196.47212, orientation = 3.3684, spawndist = 0, MovementType = 0 WHERE guid = 91726;
UPDATE creature SET position_x = -1393.633545, position_y = 5880.539551, position_z = 186.208633, spawndist = 7, MovementType = 1 WHERE guid = 91728;
UPDATE creature SET position_x = -1360.463135, position_y = 5847.374023, position_z = 187.209518, spawndist = 7, MovementType = 1 WHERE guid = 91729;
UPDATE creature SET position_x = -1529.314209, position_y = 5898.284180, position_z = 198.779236, spawndist = 7, MovementType = 1 WHERE guid = 91719;
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid = 91718;

-- Gordunni Head-Splitter 22148
UPDATE creature SET position_x = -1575.7747, position_y = 5997.138, position_z = 204.34544, orientation = 5.8294, spawndist = 0, MovementType = 0 WHERE guid = 91724;
UPDATE creature SET position_x = -1577.7799, position_y = 5976.894, position_z = 204.50618, orientation = 0.22689, spawndist = 0, MovementType = 0 WHERE guid = 91725;
UPDATE creature SET position_x = -1353.485, position_y = 5594.7017, position_z = 218.27502, orientation = 4.88692, spawndist = 0, MovementType = 0 WHERE guid = 91745;
UPDATE creature SET position_x = -1482.8422, position_y = 5852.8423, position_z = 200.70442, orientation = 0.38397, spawndist = 0, MovementType = 0 WHERE guid = 91715;
UPDATE creature SET position_x = -1225.8193, position_y = 5704.1787, position_z = 215.6892, orientation = 0.2094, spawndist = 0, MovementType = 0 WHERE guid = 91748;
UPDATE creature SET position_x = -1373.7693, position_y = 5599.164, position_z = 195.211645, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 91739; -- linear
UPDATE creature SET position_x = -1322.9941, position_y = 5859.077, position_z = 205.74423, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 101329; -- linear - 54870
UPDATE creature SET position_x = -1550.0046, position_y = 5984.9204, position_z = 193.84393, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 91723; -- linear
-- waypoints
DELETE FROM creature_movement WHERE Id IN (91739,101329,91723);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 91739
(91739,1,-1373.7693,5599.164,195.211645,100,1000,0),
(91739,2,-1366.7146,5604.9346,191.03488,100,0,0),
(91739,3,-1358.7052,5613.14,185.6946,100,0,0),
(91739,4,-1352.1925,5624.71,182.43411,100,0,0),
(91739,5,-1360.6525,5636.2173,181.30502,100,0,0),
(91739,6,-1357.3253,5652.495,181.3292,100,0,0),
(91739,7,-1343.7795,5658.4194,185.50021,100,0,0),
(91739,8,-1327.0345,5662.197,191.612,100,0,0),
(91739,9,-1311.6396,5665.0454,194.03656,100,0,0),
(91739,10,-1300.6411,5679.059,193.43634,100,0,0),
(91739,11,-1287.3041,5689.6924,190.55656,100,0,0),
(91739,12,-1279.0184,5699.8306,192.1027,100,0,0),
(91739,13,-1269.6617,5691.0854,204.40508,100,0,0),
(91739,14,-1258.8746,5680.8345,210.05325,100,0,0),
(91739,15,-1253.5874,5674.237,213.99051,100,0,0),
(91739,16,-1243.1036,5677.681,219.095,100,3000,0),
-- 101329 - 54870
(101329,1,-1322.9941,5859.077,205.74423,100,1000,0),
(101329,2,-1312.4825,5849.4907,199.87872,100,0,0),
(101329,3,-1316.0476,5845.3667,197.44382,100,0,0),
(101329,4,-1325.4635,5839.9575,192.44418,100,0,0),
(101329,5,-1340.9473,5827.587,185.28294,100,0,0),
(101329,6,-1333.0148,5812.51,184.88353,100,0,0),
(101329,7,-1325.6235,5797.9756,184.15146,100,0,0),
(101329,8,-1326.2097,5781.752,183.13657,100,0,0),
(101329,9,-1332.8027,5768.9365,183.09409,100,0,0),
(101329,10,-1332.6561,5753.9365,181.89757,100,0,0),
(101329,11,-1333.0829,5736.4556,180.56139,100,0,0),
(101329,12,-1334.5795,5720.6177,180.18018,100,1000,0),
-- 91723
(91723,1,-1550.0046,5984.9204,193.84393,100,1000,0),
(91723,2,-1535.7494,5985.677,192.82147,100,0,0),
(91723,3,-1528.1656,5971.6963,192.40155,100,0,0),
(91723,4,-1523.5214,5956.992,193.55644,100,0,0),
(91723,5,-1522.4642,5943.3984,194.69768,100,0,0),
(91723,6,-1525.1309,5930.6777,195.59897,100,0,0),
(91723,7,-1512.262,5917.6885,194.72397,100,0,0),
(91723,8,-1503.641,5905.1997,194.72397,100,0,0),
(91723,9,-1493.6573,5911.205,194.59872,100,0,0),
(91723,10,-1484.298,5917.734,194.59872,100,0,0),
(91723,11,-1487.2847,5928.231,194.59872,100,0,0),
(91723,12,-1496.1875,5936.9956,194.533,100,0,0),
(91723,13,-1495.8109,5944.1704,194.84819,100,0,0),
(91723,14,-1480.5841,5940.2046,199.67686,100,0,0),
(91723,15,-1468.0492,5937.2256,205.68356,100,0,0),
(91723,16,-1462.5131,5936.5127,208.22531,100,0,0),
(91723,17,-1461.0615,5944.1064,212.15076,100,0,0),
(91723,18,-1462.2545,5954.1064,217.4036,100,0,0),
(91723,19,-1462.0271,5963.0635,220.88971,100,1000,0);

-- Gordunni Soulreaper 23022
UPDATE creature SET position_x = -1337.0262, position_y = 5707.4595, position_z = 180.88647, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 91738; -- linear
UPDATE creature SET position_x = -1529.1022, position_y = 5971.2354, position_z = 192.32965, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 54645; -- linear
-- waypoints
DELETE FROM creature_movement WHERE Id IN (91738,54645);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 91738
(91738,1,-1337.0262,5707.4595,180.88647,100,1000,0),
(91738,2,-1333.2715,5731.0923,180.42444,100,0,0),
(91738,3,-1332.2416,5754.8022,182.02342,100,0,0),
(91738,4,-1330.8141,5779.441,182.90317,100,0,0),
(91738,5,-1324.8698,5800.5825,184.4934,100,0,0),
(91738,6,-1350.4838,5824.8813,186.40355,100,0,0),
(91738,7,-1385.0696,5843.7646,185.51933,100,1000,0),
-- 54645
(54645,1,-1529.1022,5971.2354,192.32965,100,1000,0),
(54645,2,-1521.5082,5957.255,193.6414,100,0,0),
(54645,3,-1515.2727,5940.264,194.59306,100,0,0),
(54645,4,-1501.0074,5922.7915,194.59897,100,0,0),
(54645,5,-1479.9641,5914.016,195.54355,100,0,0),
(54645,6,-1458.5493,5917.2524,194.74959,100,0,0),
(54645,7,-1437.5106,5908.632,193.41145,100,0,0),
(54645,8,-1413.0393,5889.397,187.32613,100,1000,0);

-- Let's kick them all To TBC guid RANGE (Free for Both TBC & WoTLKDB)
-- Gordunni Back-Breaker 22143
UPDATE creature SET guid = 5309072 WHERE guid = 91714;
UPDATE creature_addon SET guid = 5309072 WHERE guid = 91714;
UPDATE creature_movement SET id = 5309072 WHERE id = 91714;
UPDATE creature SET guid = 5309073 WHERE guid = 91720;
UPDATE creature_addon SET guid = 5309073 WHERE guid = 91720;
UPDATE creature_movement SET id = 5309073 WHERE id = 91720;
UPDATE creature SET guid = 5309074 WHERE guid = 91721;
UPDATE creature_addon SET guid = 5309074 WHERE guid = 91721;
UPDATE creature_movement SET id = 5309074 WHERE id = 91721;
UPDATE creature SET guid = 5309075 WHERE guid = 91722;
UPDATE creature_addon SET guid = 5309075 WHERE guid = 91722;
UPDATE creature_movement SET id = 5309075 WHERE id = 91722;
UPDATE creature SET guid = 5309076 WHERE guid = 91727;
UPDATE creature_addon SET guid = 5309076 WHERE guid = 91727;
UPDATE creature_movement SET id = 5309076 WHERE id = 91727;
UPDATE creature SET guid = 5309077 WHERE guid = 91730;
UPDATE creature_addon SET guid = 5309077 WHERE guid = 91730;
UPDATE creature_movement SET id = 5309077 WHERE id = 91730;
UPDATE creature SET guid = 5309078 WHERE guid = 91733;
UPDATE creature_addon SET guid = 5309078 WHERE guid = 91733;
UPDATE creature_movement SET id = 5309078 WHERE id = 91733;
UPDATE creature SET guid = 5309079 WHERE guid = 91735;
UPDATE creature_addon SET guid = 5309079 WHERE guid = 91735;
UPDATE creature_movement SET id = 5309079 WHERE id = 91735;
UPDATE creature SET guid = 5309080 WHERE guid = 91737;
UPDATE creature_addon SET guid = 5309080 WHERE guid = 91737;
UPDATE creature_movement SET id = 5309080 WHERE id = 91737;
UPDATE creature SET guid = 5309081 WHERE guid = 91743;
UPDATE creature_addon SET guid = 5309081 WHERE guid = 91743;
UPDATE creature_movement SET id = 5309081 WHERE id = 91743;
UPDATE creature SET guid = 5309082 WHERE guid = 91744;
UPDATE creature_addon SET guid = 5309082 WHERE guid = 91744;
UPDATE creature_movement SET id = 5309082 WHERE id = 91744;
UPDATE creature SET guid = 5309083 WHERE guid = 91746;
UPDATE creature_addon SET guid = 5309083 WHERE guid = 91746;
UPDATE creature_movement SET id = 5309083 WHERE id = 91746;
UPDATE creature SET guid = 5309084 WHERE guid = 91747;
UPDATE creature_addon SET guid = 5309084 WHERE guid = 91747;
UPDATE creature_movement SET id = 5309084 WHERE id = 91747;
UPDATE creature SET guid = 5309085 WHERE guid = 91736;
UPDATE creature_addon SET guid = 5309085 WHERE guid = 91736;
UPDATE creature_movement SET id = 5309085 WHERE id = 91736;

-- Gordunni Elementalist 22144
UPDATE creature SET guid = 5309086 WHERE guid = 91718;
UPDATE creature_addon SET guid = 5309086 WHERE guid = 91718;
UPDATE creature_movement SET id = 5309086 WHERE id = 91718;
UPDATE creature SET guid = 5309087 WHERE guid = 91719;
UPDATE creature_addon SET guid = 5309087 WHERE guid = 91719;
UPDATE creature_movement SET id = 5309087 WHERE id = 91719;
UPDATE creature SET guid = 5309088 WHERE guid = 91726;
UPDATE creature_addon SET guid = 5309088 WHERE guid = 91726;
UPDATE creature_movement SET id = 5309088 WHERE id = 91726;
UPDATE creature SET guid = 5309089 WHERE guid = 91728;
UPDATE creature_addon SET guid = 5309089 WHERE guid = 91728;
UPDATE creature_movement SET id = 5309089 WHERE id = 91728;
UPDATE creature SET guid = 5309090 WHERE guid = 91729;
UPDATE creature_addon SET guid = 5309090 WHERE guid = 91729;
UPDATE creature_movement SET id = 5309090 WHERE id = 91729;
UPDATE creature SET guid = 5309091 WHERE guid = 91731;
UPDATE creature_addon SET guid = 5309091 WHERE guid = 91731;
UPDATE creature_movement SET id = 5309091 WHERE id = 91731;
UPDATE creature SET guid = 5309092 WHERE guid = 91734;
UPDATE creature_addon SET guid = 5309092 WHERE guid = 91734;
UPDATE creature_movement SET id = 5309092 WHERE id = 91734;
UPDATE creature SET guid = 5309093 WHERE guid = 91740;
UPDATE creature_addon SET guid = 5309093 WHERE guid = 91740;
UPDATE creature_movement SET id = 5309093 WHERE id = 91740;
UPDATE creature SET guid = 5309094 WHERE guid = 91741;
UPDATE creature_addon SET guid = 5309094 WHERE guid = 91741;
UPDATE creature_movement SET id = 5309094 WHERE id = 91741;
UPDATE creature SET guid = 5309095 WHERE guid = 91742;
UPDATE creature_addon SET guid = 5309095 WHERE guid = 91742;
UPDATE creature_movement SET id = 5309095 WHERE id = 91742;
UPDATE creature SET guid = 5309096 WHERE guid = 91748;
UPDATE creature_addon SET guid = 5309096 WHERE guid = 91748;
UPDATE creature_movement SET id = 5309096 WHERE id = 91748;
UPDATE creature SET guid = 5309098 WHERE guid = 91716;
UPDATE creature_addon SET guid = 5309098 WHERE guid = 91716;
UPDATE creature_movement SET id = 5309098 WHERE id = 91716;
UPDATE creature SET guid = 5309099 WHERE guid = 91717;
UPDATE creature_addon SET guid = 5309099 WHERE guid = 91717;
UPDATE creature_movement SET id = 5309099 WHERE id = 91717;

-- Gordunni Head-Splitter 22148
UPDATE creature SET guid = 5309100 WHERE guid = 91723;
UPDATE creature_addon SET guid = 5309100 WHERE guid = 91723;
UPDATE creature_movement SET id = 5309100 WHERE id = 91723;
UPDATE creature SET guid = 5309101 WHERE guid = 91724;
UPDATE creature_addon SET guid = 5309101 WHERE guid = 91724;
UPDATE creature_movement SET id = 5309101 WHERE id = 91724;
UPDATE creature SET guid = 5309102 WHERE guid = 91725;
UPDATE creature_addon SET guid = 5309102 WHERE guid = 91725;
UPDATE creature_movement SET id = 5309102 WHERE id = 91725;
UPDATE creature SET guid = 5309103 WHERE guid = 91732;
UPDATE creature_addon SET guid = 5309103 WHERE guid = 91732;
UPDATE creature_movement SET id = 5309103 WHERE id = 91732;
UPDATE creature SET guid = 5309104 WHERE guid = 91739;
UPDATE creature_addon SET guid = 5309104 WHERE guid = 91739;
UPDATE creature_movement SET id = 5309104 WHERE id = 91739;
UPDATE creature SET guid = 5309105 WHERE guid = 91745;
UPDATE creature_addon SET guid = 5309105 WHERE guid = 91745;
UPDATE creature_movement SET id = 5309105 WHERE id = 91745;
UPDATE creature SET guid = 5309106 WHERE guid = 101329; -- 54870
UPDATE creature_addon SET guid = 5309106 WHERE guid = 101329;
UPDATE creature_movement SET id = 5309106 WHERE id = 101329;
UPDATE creature SET guid = 5309107 WHERE guid = 91715;
UPDATE creature_addon SET guid = 5309107 WHERE guid = 91715;
UPDATE creature_movement SET id = 5309107 WHERE id = 91715;

-- Gordunni Soulreaper 23022
UPDATE creature SET guid = 5309108 WHERE guid = 54645;
UPDATE creature_addon SET guid = 5309108 WHERE guid = 54645;
UPDATE creature_movement SET id = 5309108 WHERE id = 54645;
UPDATE creature SET guid = 5309109 WHERE guid = 91738;
UPDATE creature_addon SET guid = 5309109 WHERE guid = 91738;
UPDATE creature_movement SET id = 5309109 WHERE id = 91738;

-- Slaag 22199
UPDATE creature SET guid = 5309110 WHERE guid = 4222;
UPDATE creature_addon SET guid = 5309110 WHERE guid = 4222;
UPDATE creature_movement SET id = 5309110 WHERE id = 4222;

