-- ---------------------------
-- Misc
-- ---------------------------
-- Delete Young Goretusk who got lost from Westfall
DELETE FROM creature WHERE guid=1449 AND id=454 AND map=530;

-- ---------------------------
-- Positions, MovementType etc
-- ---------------------------
-- ReGUID to keep all spawns in the same range
-- ----------
-- Outside
-- ----------
-- Boulderfist Warrior

UPDATE creature SET guid=151366, position_x=-1250.516, position_y=8017.893, position_z=-94.948, MovementType=1, spawndist=10 WHERE guid=60102 AND id=17136; -- ] Position: X: -1250.516 Y: 8017.893 Z: -94.948
UPDATE creature SET guid=151367, position_x=-1148.794, position_y=8049.226, position_z=-83.90626, MovementType=1, spawndist=10 WHERE guid=60103 AND id=17136; -- ] Position: X: -1148.794 Y: 8049.226 Z: -83.90626
UPDATE creature SET guid=151368, position_x=-1213.357, position_y=8018.376, position_z=-92.00548, MovementType=1, spawndist=10 WHERE guid=60104 AND id=17136; -- Pool 1 ] Position: X: -1213.357 Y: 8018.376 Z: -92.00548
-- Missing spawns
DELETE FROM creature WHERE guid BETWEEN 151369 AND 151374;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151369,17136,530,1,0,0,-1214.913,8056.291,-84.8416,2.321288,300,300,0,0,5914,0,0,0), -- Pool 2, Pair 2 ] Position: X: -1214.913 Y: 8056.291 Z: -84.8416
(151370,17136,530,1,0,0,-1218.711,8059.714,-84.69444,5.654867,300,300,0,0,5914,0,0,0), -- Pool 3, Pair 2 ] Position: X: -1218.711 Y: 8059.714 Z: -84.69444
(151371,17136,530,1,0,0,-1160.49,8011.358,-79.72826,5.183628,300,300,0,0,5914,0,0,0), -- Pool 4, Pair 1 ] Position: X: -1160.49 Y: 8011.358 Z: -79.72826
(151372,17136,530,1,0,0,-1158.97,8007.8,-79.800888,1.884956,300,300,0,0,5914,0,0,0), -- Pool 5, Pair 1 ] Position: X: -1158.97 Y: 8007.8 Z: -78.53827
(151373,17136,530,1,0,0,-1183.691,8056.318,-84.41176,3.675043,300,300,10,0,5914,0,0,1), -- Pool 6 ] Position: X: -1183.691 Y: 8056.318 Z: -84.41176
(151374,17136,530,1,0,0,-1260.411,8031.677,-94.67106,0.01661398,300,300,0,0,5914,0,0,2); -- Pool 7, Pat 1 ] Position: X: -1260.411 Y: 8031.677 Z: -94.67106

-- Boulderfist Mage
UPDATE creature SET guid=151414, position_x=-1254.023, position_y=8045.488, position_z=-95.56232, MovementType=0, spawndist=0 WHERE guid=60118 AND id=17137; -- ] Position: X: -1254.023 Y: 8045.488 Z: -95.56232
UPDATE creature SET guid=151415, position_x=-1214.913, position_y=8056.291, position_z=-84.8416, MovementType=0, spawndist=0 WHERE guid=60119 AND id=17137; -- Pool 2, Pair 2 ] Position: X: -1214.913 Y: 8056.291 Z: -84.8416
UPDATE creature SET guid=151416, position_x=-1218.711, position_y=8059.714, position_z=-84.69444, MovementType=0, spawndist=0 WHERE guid=60120 AND id=17137; -- Pool 3, Pair 2 ] Position: X: -1218.711 Y: 8059.714 Z: -84.69444
UPDATE creature SET guid=151417, position_x=-1160.49, position_y=8011.358, position_z=-79.72826, MovementType=0, spawndist=0 WHERE guid=60121 AND id=17137; -- Pool 4, Pair 1 ] Position: X: -1160.49 Y: 8011.358 Z: -79.72826
UPDATE creature SET guid=151418, position_x=-1158.97, position_y=8007.8, position_z=-79.800888, MovementType=0, spawndist=0 WHERE guid=60122 AND id=17137; -- Pool 5, Pair 1 ] Position: X: -1158.97 Y: 8007.8 Z: -78.53827
UPDATE creature SET guid=151419, position_x=-1184.809, position_y=8018.766, position_z=-92.91023, MovementType=1, spawndist=10 WHERE guid=60123 AND id=17137; -- ] Position: X: -1184.809 Y: 8018.766 Z: -92.91023
UPDATE creature SET guid=151420, position_x=-1183.691, position_y=8056.318, position_z=-84.41176, MovementType=1, spawndist=10 WHERE guid=60124 AND id=17137; -- Pool 6 ] Position: X: -1183.691 Y: 8056.318 Z: -84.41176
-- Missing spawns
DELETE FROM creature WHERE guid IN(151421,151422);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151421,17137,530,1,0,0,-1260.411,8031.677,-94.67106,0.01661398,300,300,0,0,4731,2790,0,2), -- Pool 7, Pat 1 ] Position: X: -1260.411 Y: 8031.677 Z: -94.67106
(151422,17137,530,1,0,0,-1213.357,8018.376,-92.00548,0.01661398,300,300,10,0,4731,2790,0,1); -- Pool 1 ] Position: X: -1213.357 Y: 8018.376 Z: -92.00548

-- ----------
-- Inside
-- ----------
-- Boulderfist Warrior
UPDATE creature SET guid=151375, position_x=-1091.971, position_y=8086.149, position_z=-87.37159, MovementType=1, spawndist=2 WHERE guid=60105 AND id=17136; -- ] Position: X: -1091.971 Y: 8086.149 Z: -87.37159
UPDATE creature SET guid=151376, position_x=-1065.724, position_y=8074.141, position_z=-92.04501, MovementType=1, spawndist=2 WHERE guid=60106 AND id=17136; -- Pool 12 ] Position: X: -1065.724 Y: 8074.141 Z: -92.04501
UPDATE creature SET guid=151377, position_x=-1038.612, position_y=8072.057, position_z=-92.14009, MovementType=1, spawndist=2 WHERE guid=60107 AND id=17136; -- Pool 8 ] Position: X: -1038.612 Y: 8072.057 Z: -92.14009
UPDATE creature SET guid=151378, position_x=-1053.318, position_y=8108.342, position_z=-89.53164, MovementType=1, spawndist=2 WHERE guid=60108 AND id=17136; -- ] Position: X: -1053.318 Y: 8108.342 Z: -89.53164
UPDATE creature SET guid=151379, position_x=-1029.142, position_y=8106.844, position_z=-92.76311, MovementType=1, spawndist=2 WHERE guid=60109 AND id=17136; -- ] Position: X: -1029.142 Y: 8106.844 Z: -92.76311
UPDATE creature SET guid=151380, position_x=-974.2335, position_y=8135.966, position_z=-93.81004, MovementType=1, spawndist=2 WHERE guid=60777 AND id=17136; -- ] Position: X: -974.2335 Y: 8135.966 Z: -93.81004
-- Missing spawns
DELETE FROM creature WHERE guid BETWEEN 151381 AND 151385;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151381,17136,530,1,0,0,-1053.719,8145.687,-85.71714,1.694214,300,300,2,0,5914,0,0,1), -- Pool 9 ] Position: X: -1053.719 Y: 8145.687 Z: -85.71714
(151382,17136,530,1,0,0,-1037.624,8149.927,-89.86308,2.509007,300,300,2,0,5914,0,0,1), -- ] Position: X: -1037.624 Y: 8149.927 Z: -89.86308
(151383,17136,530,1,0,0,-974.0775,8119.219,-94.81471,0.9870771,300,300,2,0,5914,0,0,1), -- Pool 10 ] Position: X: -974.0775 Y: 8119.219 Z: -94.81471
(151384,17136,530,1,0,0,-976.0233,8127.272,-94.35486,3.93982,300,300,0,0,5914,0,0,2), -- Pool 11, Pat 2 ] Position: X: -976.0233 Y: 8127.272 Z: -94.35486
(151385,17136,530,1,0,0,-1037.624,8149.927,-89.86308,2.509007,300,300,2,0,5914,0,0,1); -- ] Position: X: -1037.624 Y: 8149.927 Z: -89.86308

-- Boulderfist Mage
UPDATE creature SET guid=151423, position_x=-1101.717, position_y=8049.368, position_z=-85.80847, MovementType=1, spawndist=2 WHERE guid=60125 AND id=17137; -- ] Position: X: -1101.717 Y: 8049.368 Z: -85.80847
UPDATE creature SET guid=151424, position_x=-1088.45, position_y=8119.136, position_z=-87.34202, MovementType=1, spawndist=2 WHERE guid=60126 AND id=17137; -- ] Position: X: -1088.45 Y: 8119.136 Z: -87.34202
UPDATE creature SET guid=151425, position_x=-1033.548, position_y=8057.624, position_z=-92.34128, MovementType=1, spawndist=2 WHERE guid=60127 AND id=17137; -- ] Position: X: -1033.548 Y: 8057.624 Z: -92.34128
UPDATE creature SET guid=151426, position_x=-1040.609, position_y=8090.499, position_z=-93.52757, MovementType=1, spawndist=2 WHERE guid=60128 AND id=17137; -- ] Position: X: -1040.609 Y: 8090.499 Z: -93.52757
UPDATE creature SET guid=151427, position_x=-974.0775, position_y=8119.219, position_z=-94.81471, MovementType=1, spawndist=2 WHERE guid=60780 AND id=17137; -- Pool 10 ] Position: X: -974.0775 Y: 8119.219 Z: -94.81471
-- Missing spawns
DELETE FROM creature WHERE guid BETWEEN 151428 AND 151432;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151428,17137,530,1,0,0,-976.0233,8127.272,-94.35486,3.93982,300,300,0,0,4731,2790,0,2), -- Pool 11, Pat 2 ] Position: X: -976.0233 Y: 8127.272 Z: -94.35486
(151429,17137,530,1,0,0,-985.1443,8106.613,-93.15791,4.453781,300,300,2,0,4731,2790,0,1), -- ] Position: X: -985.1443 Y: 8106.613 Z: -93.15791
(151430,17137,530,1,0,0,-1065.724,8074.141,-92.04501,1.844028,300,300,2,0,4731,2790,0,1), -- Pool 12 ] Position: X: -1065.724 Y: 8074.141 Z: -92.04501
(151431,17137,530,1,0,0,-1038.612,8072.057,-92.14009,3.106686,300,300,2,0,4731,2790,0,1), -- Pool 8 ] Position: X: -1038.612 Y: 8072.057 Z: -92.14009
(151432,17137,530,1,0,0,-1053.719,8145.687,-85.71714,6.248279,300,300,2,0,4731,2790,0,1); -- Pool 9 ] Position: X: -1053.719 Y: 8145.687 Z: -85.71714

-- ---------------------------
-- Pools
-- ---------------------------

DELETE FROM `pool_template` WHERE `entry` BETWEEN 112 AND 123;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(112, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(113, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(114, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(115, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(116, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(117, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(118, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(119, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(120, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(121, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(122, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(123, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1');


DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 112 AND 123;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(151368, 112, 50, 'Northwind Cleft - Boulderfist Warrior 1'),
(151422, 112, 50, 'Northwind Cleft - Boulderfist Mage 1'),

(151369, 113, 50, 'Northwind Cleft - Boulderfist Warrior 2'),
(151415, 113, 50, 'Northwind Cleft - Boulderfist Mage 2'),

(151370, 114, 50, 'Northwind Cleft - Boulderfist Warrior 3'),
(151416, 114, 50, 'Northwind Cleft - Boulderfist Mage 3'),

(151371, 115, 50, 'Northwind Cleft - Boulderfist Warrior 4'),
(151417, 115, 50, 'Northwind Cleft - Boulderfist Mage 4'),

(151372, 116, 50, 'Northwind Cleft - Boulderfist Warrior 5'),
(151418, 116, 50, 'Northwind Cleft - Boulderfist Mage 5'),

(151373, 117, 50, 'Northwind Cleft - Boulderfist Warrior 6'),
(151420, 117, 50, 'Northwind Cleft - Boulderfist Mage 6'),

(151374, 118, 50, 'Northwind Cleft - Boulderfist Warrior 7'),
(151421, 118, 50, 'Northwind Cleft - Boulderfist Mage 7'),

(151377, 119, 50, 'Northwind Cleft - Boulderfist Warrior 8'),
(151431, 119, 50, 'Northwind Cleft - Boulderfist Mage 8'),

(151381, 120, 50, 'Northwind Cleft - Boulderfist Warrior 9'),
(151432, 120, 50, 'Northwind Cleft - Boulderfist Mage 9'),

(151383, 121, 50, 'Northwind Cleft - Boulderfist Warrior 10'),
(151427, 121, 50, 'Northwind Cleft - Boulderfist Mage 10'),

(151384, 122, 50, 'Northwind Cleft - Boulderfist Warrior 11'),
(151428, 122, 50, 'Northwind Cleft - Boulderfist Mage 11'),

(151376, 123, 50, 'Northwind Cleft - Boulderfist Warrior 12'),
(151430, 123, 50, 'Northwind Cleft - Boulderfist Mage 12');

-- ---------------------------
-- Waypoints
-- ---------------------------
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1713601;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1713601,0,35,6,0,0,0,0,0,0,0,0,0,'Boulderfist Warrior/Mage - Throw AI Event Type 6 (B)',0,0,0,0),
(1713601,0,20,0,0,0,0,0,0,0,0,0,0,'Boulderfist Warrior/Mage - Set Idle Movement',0,0,0,0);

UPDATE `creature` SET `MovementType`=2 WHERE `guid` IN(151369,151415,151370,151416,151371,151417,151372,151418);
DELETE FROM `creature_movement` WHERE `id` IN(151369,151415,151370,151416,151371,151417,151372,151418);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
-- 151369
(151369,1,-1214.91,8056.29,-84.8416,1000,1713601,2.32129),
-- 151415
(151415,1,-1214.91,8056.29,-84.8416,1000,1713601,2.32129),

-- 151370
(151370,1,-1218.71,8059.71,-84.6944,1000,1713601,5.65487),
-- 151416
(151416,1,-1218.71,8059.71,-84.6944,1000,1713601,5.65487),

-- 151371
(151371,1,-1160.49,8011.36,-79.7283,1000,1713601,5.18363),
-- 151417
(151417,1,-1160.49,8011.36,-79.7283,1000,1713601,5.18363),

-- 151372
(151372,1,-1158.97,8007.8,-79.800888,1000,1713601,1.88496),
-- 151418
(151418,1,-1158.97,8007.8,-79.800888,1000,1713601,1.88496);

DELETE FROM `creature_movement` WHERE `id`=151374;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151374,1,-1223.135,8032.314,-94.08955,0,0,0),
(151374,2,-1261.037,8033.37,-94.80727,0,0,0),
(151374,3,-1223.135,8032.314,-94.08955,0,0,0),
(151374,4,-1196.305,8023.011,-93.1621,0,0,0),
(151374,5,-1164.77,8035.224,-88.99334,0,0,0),
(151374,6,-1132.224,8043.066,-83.1275,0,0,0),
(151374,7,-1105.093,8045.477,-83.741,0,0,0),
(151374,8,-1095.761,8062.179,-87.76753,0,0,0),
(151374,9,-1090.441,8080.195,-87.54075,0,0,0),
(151374,10,-1102.059,8100.922,-86.45218,0,0,0),
(151374,11,-1099.039,8115.658,-88.04202,0,0,0),
(151374,12,-1082.514,8127.637,-85.10381,0,0,0),
(151374,13,-1056.677,8141.524,-85.80424,0,0,0),
(151374,14,-1082.514,8127.637,-85.10381,0,0,0),
(151374,15,-1099.039,8115.658,-88.04202,0,0,0),
(151374,16,-1102.059,8100.922,-86.45218,0,0,0),
(151374,17,-1090.441,8080.195,-87.54075,0,0,0),
(151374,18,-1095.761,8062.179,-87.76753,0,0,0),
(151374,19,-1105.027,8045.595,-83.74055,0,0,0),
(151374,20,-1132.291,8042.708,-83.19806,0,0,0),
(151374,21,-1164.77,8035.224,-88.99334,0,0,0),
(151374,22,-1196.305,8023.011,-93.1621,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=151421;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151421,1,-1223.135,8032.314,-94.08955,0,0,0),
(151421,2,-1261.037,8033.37,-94.80727,0,0,0),
(151421,3,-1223.135,8032.314,-94.08955,0,0,0),
(151421,4,-1196.305,8023.011,-93.1621,0,0,0),
(151421,5,-1164.77,8035.224,-88.99334,0,0,0),
(151421,6,-1132.224,8043.066,-83.1275,0,0,0),
(151421,7,-1105.093,8045.477,-83.741,0,0,0),
(151421,8,-1095.761,8062.179,-87.76753,0,0,0),
(151421,9,-1090.441,8080.195,-87.54075,0,0,0),
(151421,10,-1102.059,8100.922,-86.45218,0,0,0),
(151421,11,-1099.039,8115.658,-88.04202,0,0,0),
(151421,12,-1082.514,8127.637,-85.10381,0,0,0),
(151421,13,-1056.677,8141.524,-85.80424,0,0,0),
(151421,14,-1082.514,8127.637,-85.10381,0,0,0),
(151421,15,-1099.039,8115.658,-88.04202,0,0,0),
(151421,16,-1102.059,8100.922,-86.45218,0,0,0),
(151421,17,-1090.441,8080.195,-87.54075,0,0,0),
(151421,18,-1095.761,8062.179,-87.76753,0,0,0),
(151421,19,-1105.027,8045.595,-83.74055,0,0,0),
(151421,20,-1132.291,8042.708,-83.19806,0,0,0),
(151421,21,-1164.77,8035.224,-88.99334,0,0,0),
(151421,22,-1196.305,8023.011,-93.1621,0,0,0);


DELETE FROM `creature_movement` WHERE `id`=151384;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151384,1,-985.1895,8117.868,-95.33659,0,0,0),
(151384,2,-1014.167,8114.149,-94.21143,0,0,0),
(151384,3,-1029.322,8107.333,-92.93415,0,0,0),
(151384,4,-1054.723,8109.319,-89.3298,0,0,0),
(151384,5,-1087.885,8115.932,-88.18234,0,0,0),
(151384,6,-1055.289,8108.182,-89.30984,0,0,0),
(151384,7,-1051.73,8094.701,-92.11335,0,0,0),
(151384,8,-1063.125,8084.988,-91.62275,0,0,0),
(151384,9,-1065.03,8072.453,-91.92705,0,0,0),
(151384,10,-1079.593,8071.368,-91.32253,0,0,0),
(151384,11,-1082.857,8086.323,-87.87098,0,0,0),
(151384,12,-1079.227,8070.579,-91.32788,0,0,0),
(151384,13,-1062.193,8072.824,-92.02679,0,0,0),
(151384,14,-1038.218,8071.441,-92.23001,0,0,0),
(151384,15,-1038.748,8090.177,-93.8027,0,0,0),
(151384,16,-1026.982,8105.88,-93.05724,0,0,0),
(151384,17,-1014.283,8114.667,-94.26337,0,0,0),
(151384,18,-981.1702,8118.537,-95.24087,0,0,0),
(151384,19,-978.0334,8113.03,-95.13991,0,0,0),
(151384,20,-987.8517,8105.976,-93.55549,0,0,0),
(151384,21,-971.8125,8106.554,-91.57378,0,0,0),
(151384,22,-987.8517,8105.976,-93.55549,0,0,0),
(151384,23,-978.0681,8112.963,-95.13623,0,0,0),
(151384,24,-981.1702,8118.537,-95.24087,0,0,0),
(151384,25,-1014.283,8114.667,-94.26337,0,0,0),
(151384,26,-1026.875,8106.022,-93.08327,0,0,0),
(151384,27,-1038.751,8090.285,-93.78622,0,0,0),
(151384,28,-1038.218,8071.441,-92.23001,0,0,0),
(151384,29,-1062.193,8072.824,-92.02679,0,0,0),
(151384,30,-1079.227,8070.579,-91.32788,0,0,0),
(151384,31,-1082.857,8086.323,-87.87098,0,0,0),
(151384,32,-1079.593,8071.368,-91.32253,0,0,0),
(151384,33,-1065.03,8072.453,-91.92705,0,0,0),
(151384,34,-1063.125,8084.988,-91.62275,0,0,0),
(151384,35,-1051.73,8094.701,-92.11335,0,0,0),
(151384,36,-1055.032,8108.121,-89.37637,0,0,0),
(151384,37,-1087.885,8115.932,-88.18234,0,0,0),
(151384,38,-1054.723,8109.319,-89.3298,0,0,0),
(151384,39,-1029.322,8107.333,-92.93415,0,0,0),
(151384,40,-1014.167,8114.149,-94.21143,0,0,0),
(151384,41,-985.1895,8117.868,-95.33659,0,0,0),
(151384,42,-976.7285,8127.519,-94.49461,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=151428;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151428,1,-985.1895,8117.868,-95.33659,0,0,0),
(151428,2,-1014.167,8114.149,-94.21143,0,0,0),
(151428,3,-1029.322,8107.333,-92.93415,0,0,0),
(151428,4,-1054.723,8109.319,-89.3298,0,0,0),
(151428,5,-1087.885,8115.932,-88.18234,0,0,0),
(151428,6,-1055.289,8108.182,-89.30984,0,0,0),
(151428,7,-1051.73,8094.701,-92.11335,0,0,0),
(151428,8,-1063.125,8084.988,-91.62275,0,0,0),
(151428,9,-1065.03,8072.453,-91.92705,0,0,0),
(151428,10,-1079.593,8071.368,-91.32253,0,0,0),
(151428,11,-1082.857,8086.323,-87.87098,0,0,0),
(151428,12,-1079.227,8070.579,-91.32788,0,0,0),
(151428,13,-1062.193,8072.824,-92.02679,0,0,0),
(151428,14,-1038.218,8071.441,-92.23001,0,0,0),
(151428,15,-1038.748,8090.177,-93.8027,0,0,0),
(151428,16,-1026.982,8105.88,-93.05724,0,0,0),
(151428,17,-1014.283,8114.667,-94.26337,0,0,0),
(151428,18,-981.1702,8118.537,-95.24087,0,0,0),
(151428,19,-978.0334,8113.03,-95.13991,0,0,0),
(151428,20,-987.8517,8105.976,-93.55549,0,0,0),
(151428,21,-971.8125,8106.554,-91.57378,0,0,0),
(151428,22,-987.8517,8105.976,-93.55549,0,0,0),
(151428,23,-978.0681,8112.963,-95.13623,0,0,0),
(151428,24,-981.1702,8118.537,-95.24087,0,0,0),
(151428,25,-1014.283,8114.667,-94.26337,0,0,0),
(151428,26,-1026.875,8106.022,-93.08327,0,0,0),
(151428,27,-1038.751,8090.285,-93.78622,0,0,0),
(151428,28,-1038.218,8071.441,-92.23001,0,0,0),
(151428,29,-1062.193,8072.824,-92.02679,0,0,0),
(151428,30,-1079.227,8070.579,-91.32788,0,0,0),
(151428,31,-1082.857,8086.323,-87.87098,0,0,0),
(151428,32,-1079.593,8071.368,-91.32253,0,0,0),
(151428,33,-1065.03,8072.453,-91.92705,0,0,0),
(151428,34,-1063.125,8084.988,-91.62275,0,0,0),
(151428,35,-1051.73,8094.701,-92.11335,0,0,0),
(151428,36,-1055.032,8108.121,-89.37637,0,0,0),
(151428,37,-1087.885,8115.932,-88.18234,0,0,0),
(151428,38,-1054.723,8109.319,-89.3298,0,0,0),
(151428,39,-1029.322,8107.333,-92.93415,0,0,0),
(151428,40,-1014.167,8114.149,-94.21143,0,0,0),
(151428,41,-985.1895,8117.868,-95.33659,0,0,0),
(151428,42,-976.7285,8127.519,-94.49461,0,0,0);

