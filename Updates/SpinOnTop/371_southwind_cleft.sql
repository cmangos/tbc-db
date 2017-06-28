-- ---------------------------
-- Positions, MovementType etc
-- ---------------------------
-- ReGUID to keep all spawns in the same range

-- ----------
-- Outside
-- ----------
-- Boulderfist Warrior
UPDATE creature SET guid=151350, position_x=-1961.078, position_y=7632.57, position_z=-90.62363, MovementType=1, spawndist=10 WHERE guid=60090 AND id=17136;
UPDATE creature SET guid=151351, position_x=-1955.975, position_y=7581.932, position_z=-92.51428, MovementType=1, spawndist=10 WHERE guid=60091 AND id=17136;
UPDATE creature SET guid=151352, position_x=-2017.753, position_y=7581.163, position_z=-91.01728, MovementType=1, spawndist=10 WHERE guid=60092 AND id=17136;
UPDATE creature SET guid=151353, position_x=-2015.473, position_y=7626.635, position_z=-87.27016, MovementType=1, spawndist=10 WHERE guid=60093 AND id=17136;
UPDATE creature SET guid=151354, position_x=-2047.341, position_y=7533.066, position_z=-91.31624, MovementType=1, spawndist=2 WHERE guid=60095 AND id=17136;
UPDATE creature SET guid=151355, position_x=-1987.407, position_y=7550.85, position_z=-86.77856, MovementType=1, spawndist=10 WHERE guid=60096 AND id=17136;
UPDATE creature SET guid=151356, position_x=-2034.201, position_y=7560.351, position_z=-92.13758, MovementType=1, spawndist=10 WHERE guid=60099 AND id=17136; -- Pool 2

-- Boulderfist Mage
UPDATE creature SET guid=151400, position_x=-2034.201, position_y=7560.351, position_z=-92.13758, MovementType=1, spawndist=10 WHERE guid=60111 AND id=17137; -- Pool 2 ] Position: X: -2034.201 Y: 7560.351
UPDATE creature SET guid=151401, position_x=-1957.473, position_y=7608.787, position_z=-89.29819, orientation=2.261387, MovementType=2, spawndist=0 WHERE `guid`=60110;
UPDATE creature SET guid=151402, position_x=-2015.165, position_y=7547.221, position_z=-86.7942, MovementType=1, spawndist=10 WHERE guid=60113 AND id=17137; -- ] Position: X: -2034.201 Y: 7560.351
-- ----------
-- Inside
-- ----------
-- Boulderfist Warrior

UPDATE creature SET guid=151357, position_x=-2087.294, position_y=7454.575, position_z=-101.1569, MovementType=1, spawndist=2 WHERE guid=60094 AND id=17136; -- -2087.294 Y: 7454.575 Z: -101.1569
UPDATE creature SET guid=151358, position_x=-2056.911, position_y=7421.172, position_z=-102.4703, MovementType=1, spawndist=2 WHERE guid=60097 AND id=17136; -- Pool 6 ] Position: X: -2056.911 Y: 7421.172
UPDATE creature SET guid=151359, position_x=-2018.493, position_y=7403.437, position_z=-99.26112, MovementType=1, spawndist=2 WHERE guid=60098 AND id=17136; -- Pool 4 ] Position: X: -2018.493 Y: 7403.437
UPDATE creature SET guid=151360, position_x=-2068.464, position_y=7363.324, position_z=-103.5681, MovementType=1, spawndist=2 WHERE guid=60100 AND id=17136; -- ] Position: X: -2068.464 Y: 7363.324
UPDATE creature SET guid=151361, position_x=-2041.718, position_y=7441.398, position_z=-99.50359, MovementType=1, spawndist=2 WHERE guid=60101 AND id=17136; -- ] Position: X: -2041.718 Y: 7441.398
-- Missing spawns
DELETE FROM creature WHERE guid BETWEEN 151362 AND 151365;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151362,17136,530,1,0,0,-2045.898,7495.221,-97.14165,3.396696,300,300,2,0,5914,0,0,1), -- Pool 3 
(151363,17136,530,1,0,0,-2073.381,7449.663,-102.1604,0.7700983,300,300,2,0,5914,0,0,1), -- Pool 5
(151364,17136,530,1,0,0,-2085.155,7390.396,-102.5798,0.5601447,300,300,2,0,5914,0,0,1), -- Pool 1
(151365,17136,530,1,0,0,-2011.03,7460.325,-96.67013,1.103353,300,300,2,0,5914,0,0,1);

-- Boulderfist Mage
UPDATE creature SET guid=151403, position_x=-2059.163, position_y=7471.577, position_z=-101.4507, MovementType=1, spawndist=2 WHERE guid=60112 AND id=17137; -- ] Position: X: -2059.163 Y: 7471.577
UPDATE creature SET guid=151404, position_x=-2010.852, position_y=7418.417, position_z=-95.13519, MovementType=1, spawndist=2 WHERE guid=60114 AND id=17137; -- ] Position: X: -2010.852 Y: 7418.417
UPDATE creature SET guid=151405, position_x=-2050.859, position_y =7483.689, position_z=-100.6461, orientation=4.09472, MovementType=2, spawndist=0 WHERE `guid`=60115;
UPDATE creature SET guid=151406, position_x=-2073.381, position_y=7449.663, position_z=-102.1604, MovementType=1, spawndist=2 WHERE guid=60116 AND id=17137; -- Pool 5 ] Position: X: -2073.381 Y: 7449.663
UPDATE creature SET guid=151407, position_x=-2078.155, position_y=7372.563, position_z=-104.34, MovementType=1, spawndist=2 WHERE guid=60117 AND id=17137; -- ] Position: X: -2078.155 Y: 7372.563
-- Missing spawns
DELETE FROM creature WHERE guid BETWEEN 151408 AND 151413;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151408,17137,530,1,0,0,-2056.911,7421.172,-102.4703,2.844019,300,300,2,0,4731,2790,0,1), -- Pool 6
(151409,17137,530,1,0,0,-2018.493,7403.437,-99.26112,0.6494534,300,300,2,0,4731,2790,0,1), -- Pool 4
(151410,17137,530,1,0,0,-2085.155,7390.396,-102.5798,4.289667,300,300,2,0,4731,2790,0,1), -- Pool 1
(151411,17137,530,1,0,0,-2059.474,7441.144,-102.7499,3.826736,300,300,2,0,4731,2790,0,1),
(151412,17137,530,1,0,0,-2045.898,7495.221,-97.14165,0.2710992,300,300,2,0,4731,2790,0,1), -- Pool 3
(151413,17137,530,1,0,0,-2040.041,7543.131,-92.68992,3.396408,300,300,0,0,4731,2790,0,2); 


-- ---------------------------
-- Pools
-- ---------------------------

DELETE FROM `pool_template` WHERE `entry` BETWEEN 106 AND 111;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(106, 1, 'Southwind Cleft - Boulderfist Mage/Warrior 1'),
(107, 1, 'Southwind Cleft - Boulderfist Mage/Warrior 2'),
(108, 1, 'Southwind Cleft - Boulderfist Mage/Warrior 3'),
(109, 1, 'Southwind Cleft - Boulderfist Mage/Warrior 4'),
(110, 1, 'Southwind Cleft - Boulderfist Mage/Warrior 5'),
(111, 1, 'Southwind Cleft - Boulderfist Mage/Warrior 6');

DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 106 AND 111;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(151364, 106, 50, 'Southwind Cleft - Boulderfist Warrior 1'),
(151410, 106, 50, 'Southwind Cleft - Boulderfist Mage 1'),

(151356, 107, 50, 'Southwind Cleft - Boulderfist Warrior 2'),
(151400, 107, 50, 'Southwind Cleft - Boulderfist Mage 2'),

(151362, 108, 50, 'Southwind Cleft - Boulderfist Warrior 3'),
(151412, 108, 50, 'Southwind Cleft - Boulderfist Mage 3'),

(151359, 109, 50, 'Southwind Cleft - Boulderfist Warrior 4'),
(151409, 109, 50, 'Southwind Cleft - Boulderfist Mage 4'),

(151363, 110, 50, 'Southwind Cleft - Boulderfist Warrior 5'),
(151406, 110, 50, 'Southwind Cleft - Boulderfist Mage 5'),

(151358, 111, 50, 'Southwind Cleft - Boulderfist Warrior 6'),
(151408, 111, 50, 'Southwind Cleft - Boulderfist Mage 6');

-- ---------------------------
-- Waypoints
-- ---------------------------
-- Boulderfist Mage
DELETE FROM `creature_movement` WHERE `id`=151401;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151401,1,-1976.017,7631.224,-89.09834,0,0,0),
(151401,2,-2005.871,7626.85,-87.94933,0,0,0),
(151401,3,-2022.588,7600.871,-87.85545,0,0,0),
(151401,4,-2029.428,7569.76,-91.4135,0,0,0),
(151401,5,-2042.181,7554.997,-91.68507,0,0,0),
(151401,6,-2025.628,7535.711,-88.65942,0,0,0),
(151401,7,-2004.275,7546.659,-85.96338,0,0,0),
(151401,8,-1990.258,7555.304,-86.05388,0,0,0),
(151401,9,-1959.7,7560.661,-92.20189,0,0,0),
(151401,10,-1943.032,7586.108,-92.10487,0,0,0),
(151401,11,-1959.052,7601.854,-88.25187,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=151405;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151405,1,-2061.165,7469.185,-101.5739,0,0,0),
(151405,2,-2051.491,7483.792,-100.7333,0,0,0),
(151405,3,-2061.165,7469.185,-101.5739,0,0,0),
(151405,4,-2070.803,7463.966,-101.0752,0,0,0),
(151405,5,-2077.178,7449.864,-102.324,0,0,0),
(151405,6,-2063.263,7439.981,-103.152,0,0,0),
(151405,7,-2056.924,7420.983,-102.6009,0,0,0),
(151405,8,-2061.427,7403.774,-103.6628,0,0,0),
(151405,9,-2073.959,7385.379,-104.896,0,0,0),
(151405,10,-2060.594,7404.499,-103.6946,0,0,0),
(151405,11,-2056.328,7421.09,-102.5683,0,0,0),
(151405,12,-2042.336,7437.782,-99.96716,0,0,0),
(151405,13,-2006.002,7463.99,-97.16457,0,0,0),
(151405,14,-2007.286,7445.96,-92.8566,0,0,0),
(151405,15,-2011.336,7428.038,-94.72424,0,0,0),
(151405,16,-2016.899,7417.198,-95.76411,0,0,0),
(151405,17,-2011.336,7428.038,-94.72424,0,0,0),
(151405,18,-2007.286,7445.96,-92.8566,0,0,0),
(151405,19,-2006.002,7463.99,-97.16457,0,0,0),
(151405,20,-2042.336,7437.782,-99.96716,0,0,0),
(151405,21,-2056.328,7421.09,-102.5683,0,0,0),
(151405,22,-2060.594,7404.499,-103.6946,0,0,0),
(151405,23,-2073.959,7385.379,-104.896,0,0,0),
(151405,24,-2061.427,7403.774,-103.6628,0,0,0),
(151405,25,-2056.924,7420.983,-102.6009,0,0,0),
(151405,26,-2063.254,7439.975,-103.1504,0,0,0),
(151405,27,-2077.178,7449.864,-102.324,0,0,0),
(151405,28,-2070.803,7463.966,-101.0752,0,0,0);

DELETE FROM `creature_movement` WHERE `id`=151413;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151413,1,-2053.4,7516.408,-94.97845,0,0,0),
(151413,2,-2035.252,7542.944,-92.51344,0,0,0),
(151413,3,-2053.4,7516.408,-94.97845,0,0,0),
(151413,4,-2044.904,7492.291,-97.51755,0,0,0),
(151413,5,-2027.509,7484.807,-96.60913,0,0,0),
(151413,6,-2010.766,7482.359,-95.56999,0,0,0),
(151413,7,-2006.566,7464.631,-97.3194,0,0,0),
(151413,8,-2023.683,7451.592,-97.97118,0,0,0),
(151413,9,-2042.39,7440.874,-99.76013,0,0,0),
(151413,10,-2053.049,7446.877,-101.7927,0,0,0),
(151413,11,-2063.381,7441.156,-103.1919,0,0,0),
(151413,12,-2078.531,7454.267,-101.2974,0,0,0),
(151413,13,-2063.381,7441.156,-103.1919,0,0,0),
(151413,14,-2053.049,7446.877,-101.7927,0,0,0),
(151413,15,-2042.39,7440.874,-99.76013,0,0,0),
(151413,16,-2023.683,7451.592,-97.97118,0,0,0),
(151413,17,-2006.566,7464.631,-97.3194,0,0,0),
(151413,18,-2010.766,7482.359,-95.56999,0,0,0),
(151413,19,-2027.509,7484.807,-96.60913,0,0,0),
(151413,20,-2044.812,7492.251,-97.50994,0,0,0);

