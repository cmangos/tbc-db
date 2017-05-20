-- All Peasant Refugees should not have Bloody Cleavers. 
-- The only one who should have it is the one at the soup kitchen (http://www.wowhead.com/npc=19170/peasant-refugee#comments), and it should be unequiped once the NPC moves to despawn point
UPDATE creature_template SET EquipmentTemplateId=0,MovementType=2 WHERE entry=19170; -- Old: 55271

DELETE FROM `creature` WHERE `guid` IN(68578,68581,68579,68580); -- Should be a temporary spawn while soup kitchen is spawned

UPDATE `creature_template_addon` SET `emote`=0 WHERE entry=19170;
DELETE FROM `creature_addon` WHERE `guid` IN(68577,68578,68579,68580,68581,68584,68585);

-- Pathing for  Entry: 19170 'UDB FORMAT' 
UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid`=68584;
DELETE FROM `creature_movement` WHERE `id`=68584;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(68584,1,-2072.991,5283.551,-37.32356,0,0,0),
(68584,2,-2080.027,5298.799,-37.32355,0,0,0),
(68584,3,-2077.768,5323.051,-37.32356,0,0,0),
(68584,4,-2087.385,5326.358,-34.98595,0,0,0),
(68584,5,-2077.768,5323.051,-37.32356,0,0,0),
(68584,6,-2080.027,5298.799,-37.32355,0,0,0),
(68584,7,-2072.991,5283.551,-37.32356,0,0,0),
(68584,8,-2058.317,5268.787,-38.46506,0,0,0),
(68584,9,-2046.708,5257.053,-39.7482,0,0,0),
(68584,10,-2035.579,5240.765,-42.10738,0,0,0),
(68584,11,-2028.907,5218.79,-39.25506,0,0,0),
(68584,12,-2022.138,5207.945,-35.69619,0,0,0),
(68584,13,-2028.725,5218.19,-38.78204,0,0,0),
(68584,14,-2035.579,5240.765,-42.10738,0,0,0),
(68584,15,-2046.708,5257.053,-39.7482,0,0,0),
(68584,16,-2058.317,5268.787,-38.46506,0,0,0);

-- Pathing for  Entry: 19170 'UDB FORMAT' 
UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid`=68585;
DELETE FROM `creature_movement` WHERE `id`=68585;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(68585,1,-2050.592,5322.334,-40.88732,0,0,0),
(68585,2,-2060.579,5341.971,-41.31344,0,0,0),
(68585,3,-2062.226,5342.294,-40.85262,34000,0,100),
(68585,4,-2048.914,5316.468,-40.07982,0,0,0),
(68585,5,-2045.166,5305.524,-39.47564,0,0,0),
(68585,6,-2037.887,5286.919,-38.46542,0,0,0),
(68585,7,-2039.516,5279.421,-38.94726,33000,0,100),
(68585,8,-2039.528,5303.738,-39.81683,0,0,0),
(68585,9,-2048.365,5316.685,-40.18297,0,0,0),
(68585,10,-2049.547,5316.248,-39.96569,28000,0,100),
(68585,11,-2037.74,5294.831,-38.71366,0,0,0),
(68585,12,-2036.81,5285.057,-38.73196,0,0,0),
(68585,13,-2039.781,5279.237,-38.93132,33000,0,100),
(68585,14,-2038.868,5293.317,-38.61542,0,0,0),
(68585,15,-2045.668,5307.952,-39.6055,0,0,0);


UPDATE `gameobject` SET `spawntimesecsmin`=-3852,`spawntimesecsmax`=-3852 WHERE `guid`=24224;
-- This one should only be at the soup kitchen while the event is running. On normal spawnpoint he should move randomly
UPDATE `creature` SET `position_x`=-2074.216, `position_y`=5316.652, `position_z`=-37.32356, `MovementType`=2, `spawndist`=0 WHERE `guid`=68577;
DELETE FROM `creature_movement` WHERE `id`=68577;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(68577,1,-2080.913,5290.43,-37.32355,0,0,0),
(68577,2,-2060.495,5273.947,-38.46501,0,0,0),
(68577,3,-2041.92,5263.64,-39.82203,0,0,0),
(68577,4,-2024.709,5250.461,-43.74634,0,0,0),
(68577,5,-1989.924,5241.191,-45.88612,0,0,0),
(68577,6,-1956.249,5238.913,-43.63295,0,0,0),
(68577,7,-1938.983,5240.378,-42.72091,0,0,0),
(68577,8,-1933.321,5238.574,-41.81791,0,0,0),
(68577,9,-1929.502,5237.604,-41.81791,113000,1917001,100),

(68577,10,-1934.128,5238.561,-41.81791,0,0,0),
-- Entry: 19170 Low: 1441800
(68577,11,-1932.826,5239.141,-41.81791,105600,1917002,100),

(68577,12,-1933.799,5243.494,-41.81791,0,0,0),

(68577,13,-1931.935,5241.604,-41.81791,85000,1917003,100),

(68577,14,-1936.411,5240.464,-41.81791,0,0,0),
(68577,15,-1932.958,5238.352,-41.81791,0,0,0),
(68577,16,-1929.68,5237.738,-41.81791,81500,1917004,100),
(68577,17,-1929.68,5237.738,-41.81791,3378000,1917005,4.34587), -- 3378000
(68577,18,-1936.801,5239.364,-41.81791,0,0,0),
(68577,19,-1947.085,5241.049,-43.01661,0,0,0),
(68577,20,-1982.853,5241.942,-46.05104,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1917001 AND 1917007;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1917001,2,1,69,0,0,0,0,0,0,0,0,0,'Peasant Refugee - STATE_USESTANDING',0,0,0,0),
(1917001,97,9,0,3852,0,0,0,0,0,183355,10,0,'Peasant Refugee - Respawn Shattrath Soup Tent',0,0,0,0),
(1917001,101,10,19170,0,1,0,0,0,0,0,0,8,'Peasant Refugee - Spawn Peasant Refugee',-2024.149,5334.983,-38.64442,2.46452),
(1917001,113,1,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - ONESHOT_NONE',0,0,0,0),

(1917002,1,28,8,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(1917002,103,28,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_STAND',0,0,0,0),

(1917003,3,28,8,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(1917003,82,28,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_STAND',0,0,0,0),

(1917004,3,28,8,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(1917004,82,28,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - UNIT_STAND_STATE_STAND',0,0,0,0),

(1917005,0,1,69,0,0,0,0,0,0,0,0,0,'Peasant Refugee - STATE_USESTANDING',0,0,0,0),

(1917005,0,10,19120,0,0,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Broken Refugee',-1917.847,5223.277,-45.8255,1.797689),
(1917005,0,10,19170,0,2,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1932.707,5230.585,-43.11866,0.715585),
(1917005,0,10,19170,0,3,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1922.545,5225.516,-44.2592,1.658063),
(1917005,0,10,19170,0,4,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1937.682,5236.961,-42.48709,6.038839),
(1917005,0,21,1,0,0,0,0,0,0,19150,68482,16,'Orc Refugee - Set Active Object',0,0,0,0),
(1917005,0,32,0,0,0,0,0,0,0,19150,68482,16,'Orc Refugee - Resume Waypoints',0,0,0,0),
(1917005,0,21,1,0,0,0,0,0,0,19155,68524,16,'Sporeling Refugee - Set Active Object',0,0,0,0),
(1917005,0,20,2,1,0,0,0,0,0,19155,68524,16,'Sporeling Refugee - Set Waypoint Movement',0,0,0,0),

(1917005,11,10,19170,0,5,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1921.905,5222.219,-44.85762,1.832596),
(1917005,11,10,19170,0,6,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1931.493,5223.518,-45.4137,1.064651),
(1917005,11,10,19170,0,7,0,0,0,0,0,0,0,'Peasant Refugee - Spawn Peasant Refugee',-1923.905,5220.219,-46.12845,1.64061),
(1917005,11,20,2,1,0,0,0,0,0,19162,68560,16,'Lost one Refugee - Set Waypoint Movement',0,0,0,0),
(1917005,11,21,1,0,0,0,0,0,0,19144,68467,16,'Maghar Refugee - Set Active Object',0,0,0,0),
(1917005,11,32,0,0,0,0,0,0,0,19144,68467,16,'Maghar Refugee - Resume Waypoints',0,0,0,0),

(1917005,135,32,0,0,0,0,0,0,0,19120,68400,16,'Broken Refugee - Resume Waypoints',0,0,0,0),

(1917005,157,32,0,0,0,0,0,0,0,19162,68558,16,'Lost one Refugee - Resume Waypoints',0,0,0,0),

(1917005,181,32,0,0,0,0,0,0,0,19120,68399,16,'Broken Refugee - Resume Waypoints',0,0,0,0),

(1917005,248,32,0,0,0,0,0,0,0,19120,68398,16,'Broken Refugee - Resume Waypoints',0,0,0,0),

(1917005,3349,1,6,0,0,0,0,0,0,0,0,0,'Peasant Refugee - OneShotQuestion',0,0,0,0), -- 3349
(1917005,3349,32,0,0,0,0,0,0,0,19155,68524,16,'Sporeling Refugee - Resume Waypoints',0,0,0,0),
(1917005,3349,32,0,0,0,0,0,0,0,19150,68482,16,'Orc Refugee - Resume Waypoints',0,0,0,0),
(1917005,3366,1,0,0,0,0,0,0,0,0,0,0,'Peasant Refugee - ONESHOT_NONE',0,0,0,0), -- 3366
(1917005,3375,40,0,0,0,0,0,0,0,183355,10,1,'Peasant Refugee - Despawn Shattrath Soup Tent',0,0,0,0), -- 3375

(1917006,0,32,1,0,0,0,0,0,0,0,0,0,'Peasant Refugee - Pause Waypoints',0,0,0,0),
(1917006,0,42,0,0,0,2827,0,0,0,0,0,0,'Peasant Refugee - Update Equipment',0,0,0,0),
(1917006,0,1,69,0,0,0,0,0,0,0,0,0,'Peasant Refugee - STATE_USESTANDING',0,0,0,0),

(1917007,0,42,1,0,0,0,0,0,0,0,0,0,'Peasant Refugee - Update Equipment',0,0,0,0);

-- Peasant with bloody knife
DELETE FROM `creature_movement_template` WHERE `entry`=19170 AND `pathId`=1;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19170,1,1,-2040.664,5312.794,-39.99809,0,0,0),
(19170,2,1,-2033.636,5294.306,-38.52164,0,0,0),
(19170,3,1,-2014.738,5260.217,-44.18763,0,0,0),
(19170,4,1,-1991.026,5242.66,-45.94545,0,0,0),
(19170,5,1,-1959.991,5237.379,-44.75892,0,0,0),
(19170,6,1,-1935.066,5243.404,-41.81791,0,0,0),
(19170,7,1,-1931.885,5246.791,-41.81792,0,0,0),
(19170,8,1,-1928.475,5248.881,-41.81789,0,0,0),
(19170,9,1,-1921.047,5240.427,-41.81789,0,0,0),
(19170,10,1,-1919.995,5235.011,-41.81792,0,0,0),
(19170,11,1,-1921.561,5235.31,-41.81792,500,1917006,2.740167),
(19170,12,1,-1923.438,5227.604,-43.8158,0,1917007,0),
(19170,13,1,-1946.327,5232.099,-45.00704,0,0,0),
(19170,14,1,-1991.425,5248.515,-44.99781,0,0,0),
(19170,15,1,-2014.07,5261.001,-43.92688,0,0,0),
(19170,16,1,-2031.599,5288.22,-38.95396,0,0,0),
(19170,17,1,-2040.418,5317.36,-40.12309,0,0,0),
(19170,18,1,-2042.96,5336.785,-40.65192,0,0,0),
(19170,19,1,-2032.956,5342.394,-38.71989,0,0,0),
(19170,20,1,-2024.317,5337.025,-38.71989,0,0,0);

-- First pack of 3 peasant refugees
DELETE FROM `creature_movement_template` WHERE `entry`=19170 AND `pathId`=2;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19170,1,2,-1932.707,5230.585,-43.11866,3349000,0,0.715585), -- 3349000
(19170,2,2,-1994.696,5240.723,-46.06739,0,0,0),
(19170,3,2,-2032.456,5238.727,-42.60169,0,0,0),
(19170,4,2,-2047.974,5234.741,-38.85947,0,0,0),
(19170,5,2,-2070.629,5215.527,-36.23759,0,0,0),
(19170,6,2,-2085.554,5197.974,-32.45612,0,0,0),
(19170,7,2,-2097.983,5185.687,-29.57196,0,1,0);

DELETE FROM `creature_movement_template` WHERE `entry`=19170 AND `pathId`=3;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19170,1,3,-1922.545,5225.516,-44.2592,3349000,0,1.658063),
(19170,2,3,-1994.696,5240.723,-46.06739,0,0,0),
(19170,3,3,-2032.456,5238.727,-42.60169,0,0,0),
(19170,4,3,-2047.974,5234.741,-38.85947,0,0,0),
(19170,5,3,-2070.629,5215.527,-36.23759,0,0,0),
(19170,6,3,-2085.554,5197.974,-32.45612,0,0,0),
(19170,7,3,-2097.983,5185.687,-29.57196,0,1,0);

DELETE FROM `creature_movement_template` WHERE `entry`=19170 AND `pathId`=4;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19170,1,4,-1937.682,5236.961,-42.48709,3349000,0,6.038839),
(19170,2,4,-1994.696,5240.723,-46.06739,0,0,0),
(19170,3,4,-2032.456,5238.727,-42.60169,0,0,0),
(19170,4,4,-2047.974,5234.741,-38.85947,0,0,0),
(19170,5,4,-2070.629,5215.527,-36.23759,0,0,0),
(19170,6,4,-2085.554,5197.974,-32.45612,0,0,0),
(19170,7,4,-2097.983,5185.687,-29.57196,0,1,0);

-- Second pack of 3 peasant refugees
DELETE FROM `creature_movement_template` WHERE `entry`=19170 AND `pathId`=5;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19170,1,5,-1921.905,5222.219,-44.85762,3378000,0,1.832596), -- 3378000
(19170,2,5,-1882.44,5195.85,-50.43365,0,0,0),
(19170,3,5,-1864.935,5171.063,-49.68153,0,0,0),
(19170,4,5,-1856.105,5148.045,-44.25081,0,0,0),
(19170,5,5,-1853.181,5123.831,-38.85968,0,0,0),
(19170,6,5,-1853.672,5099.932,-37.14706,0,0,0),
(19170,7,5,-1854.229,5080.217,-33.89612,0,0,0),
(19170,8,5,-1857.239,5051.251,-29.09824,0,1,0);

DELETE FROM `creature_movement_template` WHERE `entry`=19170 AND `pathId`=6;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19170,1,6,-1931.493,5223.518,-45.4137,3378000,0,1.064651),
(19170,2,6,-1882.44,5195.85,-50.43365,0,0,0),
(19170,3,6,-1864.935,5171.063,-49.68153,0,0,0),
(19170,4,6,-1856.105,5148.045,-44.25081,0,0,0),
(19170,5,6,-1853.181,5123.831,-38.85968,0,0,0),
(19170,6,6,-1853.672,5099.932,-37.14706,0,0,0),
(19170,7,6,-1854.229,5080.217,-33.89612,0,0,0),
(19170,8,6,-1857.239,5051.251,-29.09824,0,1,0);

DELETE FROM `creature_movement_template` WHERE `entry`=19170 AND `pathId`=7;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19170,1,7,-1923.905,5220.219,-46.12845,3378000,0,1.64061),
(19170,2,7,-1882.44,5195.85,-50.43365,0,0,0),
(19170,3,7,-1864.935,5171.063,-49.68153,0,0,0),
(19170,4,7,-1856.105,5148.045,-44.25081,0,0,0),
(19170,5,7,-1853.181,5123.831,-38.85968,0,0,0),
(19170,6,7,-1853.672,5099.932,-37.14706,0,0,0),
(19170,7,7,-1854.229,5080.217,-33.89612,0,0,0),
(19170,8,7,-1857.239,5051.251,-29.09824,0,1,0);


