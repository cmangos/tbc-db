-- Battered Chest - ID 2843 - spawn points & pools rework (start zones)
-- delete all old battered chest spawn points
-- delete old battered chest pool_gameobjects

-- Pool Handling
-- delete old battered chest master chest pool in starting locations
-- DELETE FROM pool_template WHERE entry=39900; -- Dun Morogh - Master Chest Pool (used for outside of coldridge valley)
DELETE FROM pool_template WHERE entry=16451; -- Elwynn Forest - Northshire Battered Chest Pool
UPDATE `pool_gameobject` SET `pool_entry` = 39902 WHERE `pool_entry` = 16452; -- 16452	3	Elwynn Forest - Battered Chest Pool -> 39902	3	Elwynn Forest (1-10) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 8 WHERE `entry` = 39902; -- (24 - 0) / 3 - (16452) Elwynn Forest - Battered Chest Pool
DELETE FROM `pool_template` WHERE `entry` = 16452;
-- Delete old battered chest pool_gameobjects
-- Implement new spawns & pools according to: https://classic.wowhead.com/object=2843/battered-chest
DELETE FROM `gameobject` WHERE `guid` BETWEEN 300000 AND 300029;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 300000 AND 300029;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 31000 AND 31007;
-- Tirisfal (Deathknell) 7 total spawns points packed in 2 chest spawn pools (-2 / + 7)
DELETE FROM gameobject WHERE guid IN (45106,45110); -- 39905 Tirisfal Glades (1-10) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 2 WHERE `entry` = 39905; -- (7 - 2) / 3
DELETE FROM pool_gameobject WHERE guid IN (45106,45110); -- Teldrassil - Battered Chest (2843)
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- cave spawns
(300000, 2843, 0, 2021.08, 1855.79, 102.886, 4.55772, 0, 0, 0.759624, -0.650363, 3600, 3600, 100, 1),
(300001, 2843, 0, 2036.59, 1916.59, 102.783, 6.23153, 0, 0, 0.025824, -0.999667, 3600, 3600, 100, 1),
(300002, 2843, 0, 2081.69, 1967.03, 101.193, 2.82743, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1),
-- other location spawns
(300003, 2843, 0, 1784.69, 1344.27, 89.4032, 5.77809, 0, 0, 0.249873, -0.968279, 3600, 3600, 100, 1),
(300004, 2843, 0, 1963.77, 1383.59, 64.1604, 5.77888, 0, 0, 0.249489, -0.968378, 3600, 3600, 100, 1),
(300005, 2843, 0, 1900.49, 1487.23, 93.9514, 1.44862, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1),
(300006, 2843, 0, 1966.76, 1617.83, 88.1989, 4.29629, 0, 0, 0.837914, -0.545803, 3600, 3600, 100, 1);

-- master pools
INSERT INTO pool_template (entry, max_limit, description) VALUES
(31000, 1, 'Tirisfal (Deathknell) - Battered Chest (2843)'),
(31001, 1, 'Tirisfal (Deathknell Cave) - Battered Chest (2843)');
-- linking chests with pool
INSERT INTO pool_gameobject (guid, pool_entry,chance, description) VALUES
(300000, 31001, 0, 'Tirisfal (Deathknell Cave) - Battered Chest (2843) #1'),
(300001, 31001, 0, 'Tirisfal (Deathknell Cave) - Battered Chest (2843) #2'),
(300002, 31001, 0, 'Tirisfal (Deathknell Cave) - Battered Chest (2843) #3'),
(300003, 31000, 0, 'Tirisfal (Deathknell) - Battered Chest (2843) #1'),
(300004, 31000, 0, 'Tirisfal (Deathknell) - Battered Chest (2843) #2'),
(300005, 31000, 0, 'Tirisfal (Deathknell) - Battered Chest (2843) #3'),
(300006, 31000, 0, 'Tirisfal (Deathknell) - Battered Chest (2843) #4');

-- Dun Morogh (Coldridge Valley) 6 total spawns points packed in 2 chest spawn pools (-2 / +6)
DELETE FROM gameobject WHERE guid IN (1397,1454,85816); -- 39900 Dun Morogh (1-10) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 39900; -- (20 - 2) / 3
DELETE FROM pool_gameobject WHERE guid IN (1397,1454,85816); -- Dun Morogh - Battered Chest (2843)
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- cave spawns
(300007, 2843, 0, -6538.18, 359.67, 371.134, 5.3418, 0, 0, 0.453505, -0.891254, 3600, 3600, 100, 1),
(300008, 2843, 0, -6541.69, 362.199, 384.464, 1.23852, 0, 0, 0.580434, 0.814307, 3600, 3600, 100, 1),
(300009, 2843, 0, -6516.55, 288.024, 372.061, 0.760217, 0, 0, 0.371021, 0.928624, 3600, 3600, 100, 1),
(300027, 2843, 0, -6484.93, 294.773, 372.653, 2.49582, 0, 0, 0, 0, 3600, 3600, 100, 1),	-- Dun Morogh - Caves
-- other location spawns
(300010, 2843, 0, -6396.81, 784.359, 386.216, 5.19288, 0, 0, 0.518547, -0.855049, 3600, 3600, 100, 1),
(300011, 2843, 0, -6520.52, 688.075, 387.612, 6.21242, 0, 0, 0.0353748, -0.999374, 3600, 3600, 100, 1),
(300012, 2843, 0, -6493.9, 502.314, 387.246, 0.977737, 0, 0, 0.469627, 0.882865, 3600, 3600, 100, 1),
(300026, 2843, 0, -6490.65, 512.377, 387.494, 0.925024, 0, 0, 0, 0, 3600, 3600, 100, 1),	-- Dun Morogh - outdoor
(85816, 2843, 0, -6507.27, 688.761, 387.274, -0.314158, 0, 0, -0.156434, 0.987688, 3600, 3600, 100, 1); -- missing wotlk-db

-- master pools
INSERT INTO pool_template (entry, max_limit, description) VALUES
(31002, 1, 'Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843)'),
(31003, 1, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843)');
-- linking chests with pool
INSERT INTO pool_gameobject (guid, pool_entry,chance, description) VALUES
(300007, 31002, 0, 'Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843) #1'),
(300008, 31002, 0, 'Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843) #2'),
(300009, 31002, 0, 'Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843) #3'),
(300027, 31002, 0, 'Dun Morogh (Coldridge Valley Cave) - Battered Chest (2843) #4'),
(300010, 31003, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843) #1'),
(300011, 31003, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843) #2'),
(300012, 31003, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843) #3'),
(300026, 31003, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843) #4'),
(85816, 31003, 0, 'Dun Morogh (Coldridge Valley) - Battered Chest (2843)');

--  Teldrassil (Shadowglen) 7 total spawns points packed in 2 chest spawn pools (-4 / +7)
DELETE FROM gameobject WHERE guid IN (49528,49529,55796,55797); -- 39904 Teldrassil (1-10) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry` = 39904; -- (13 - 4) / 3
DELETE FROM pool_gameobject WHERE guid IN (49528,49529,55796,55797); -- Teldrassil - Battered Chest (2843)
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- cave spawns
(300013, 2843, 1, 10942.8, 942.153, 1340.68, 5.62352, 0, 0, 0.323884, -0.946097, 3600, 3600, 100, 1),
(300014, 2843, 1, 10912.2, 977.162, 1338.64, 3.82496, 0, 0, 0.942192, -0.335074, 3600, 3600, 100, 1),
(300015, 2843, 1, 10911.3, 848.826, 1329.36, 2.04204, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1),
(300016, 2843, 1, 10812.8, 897.368, 1336.4, 0.444496, 0, 0, 0.220423, 0.975404, 3600, 3600, 100, 1),
-- other location spawns
(300017, 2843, 1, 10262.1, 961.428, 1340.93, 5.89251, 0, 0, 0.194099, -0.980982, 3600, 3600, 100, 1),
(300018, 2843, 1, 10328.0, 1033.01, 1339.31, 1.74533, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1),
(300019, 2843, 1, 10485.3, 1059.98, 1325.47, -1.0472, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1),
(300028, 2843, 1, 10504.8, 1064.71, 1325.83, -0.279252, 0, 0, 0, 0, 3600, 3600, 100, 1);	-- Teldrassil - outdoor
-- master pools
INSERT INTO pool_template (entry, max_limit, description) VALUES
(31004, 1, 'Teldrassil (Shadowglen Cave) - Battered Chest (2843)'),
(31005, 1, 'Teldrassil (Shadowglen) - Battered Chest (2843)');
-- linking chests with pool
INSERT INTO pool_gameobject (guid, pool_entry,chance, description) VALUES
(300013, 31004, 0, 'Teldrassil (Shadowglen Cave) - Battered Chest (2843) #1'),
(300014, 31004, 0, 'Teldrassil (Shadowglen Cave) - Battered Chest (2843) #2'),
(300015, 31004, 0, 'Teldrassil (Shadowglen Cave) - Battered Chest (2843) #3'),
(300016, 31004, 0, 'Teldrassil (Shadowglen Cave) - Battered Chest (2843) #4'),
(300017, 31005, 0, 'Teldrassil (Shadowglen) - Battered Chest (2843) #1'),
(300018, 31005, 0, 'Teldrassil (Shadowglen) - Battered Chest (2843) #2'),
(300019, 31005, 0, 'Teldrassil (Shadowglen) - Battered Chest (2843) #3'),
(300028, 31005, 0, 'Teldrassil (Shadowglen) - Battered Chest (2843) #4');

--  Elwynn Forest (Northshire) 6 total spawns points packed in 2 chest spawn pools (-5 / +6)
DELETE FROM gameobject WHERE guid IN (83061,83062,83063,83064,83065); -- 16451	Elwynn Forest - Northshire Battered Chest Pool 
DELETE FROM pool_gameobject WHERE guid IN (83061,83062,83063,83064,83065); -- Dun Morogh - Battered Chest (2843)
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- cave spawns
(300020, 2843, 0, -8556.58, -199.101, 85.8751, 1.93731, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1),
(300021, 2843, 0, -8613.8, -176.181, 86.2264, 0.830514, 0, 0, 0.403425, 0.915013, 3600, 3600, 100, 1),
(300029, 2843, 0, -8593.03, -169.743, 87.1218, 0.767945, 0, 0, 0, 0, 3600, 3600, 100, 1),	-- Northshire - Caves
-- other location spawns
(300022, 2843, 0, -9038.98, -303.642, 74.3616, 2.28638, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1),
(300023, 2843, 0, -9140.58, -282.026, 71.8892, 1.3439, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1),
(300024, 2843, 0, -9058.76, -459.731, 72.5574, 1.30176, 0, 0, 0.605886, 0.795551, 3600, 3600, 100, 1),
(300025, 2843, 0, -8955.38, -439.217, 64.7955, -2.86233, 0.0, 0.0, 0.0, 0.0, 3600, 3600, 100, 1);
-- master pools
INSERT INTO pool_template (entry, max_limit, description) VALUES
(31006, 1, 'Elwynn Forest (Northshire Cave) - Battered Chest (2843)'),
(31007, 1, 'Elwynn Forest (Northshire) - Battered Chest (2843)');
-- linking chests with pool
INSERT INTO pool_gameobject (guid, pool_entry,chance, description) VALUES
(300020, 31006, 0, 'Elwynn Forest (Northshire Cave) - Battered Chest (2843) #1'),
(300021, 31006, 0, 'Elwynn Forest (Northshire Cave) - Battered Chest (2843) #2'),
(300029, 31006, 0, 'Elwynn Forest (Northshire Cave) - Battered Chest (2843) #3'),
(300022, 31007, 0, 'Elwynn Forest (Northshire) - Battered Chest (2843) #1'),
(300023, 31007, 0, 'Elwynn Forest (Northshire) - Battered Chest (2843) #2'),
(300024, 31007, 0, 'Elwynn Forest (Northshire) - Battered Chest (2843) #3'),
(300025, 31007, 0, 'Elwynn Forest (Northshire) - Battered Chest (2843) #4');

