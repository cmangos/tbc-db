-- Blasted Lands - Updates

-- Felguard Sentry 6011 & Felhound 6010
-- This is WOTLK (TDB - need to confirm) only update ... as data we had was from Classic era or.. custom made
-- IM going to use waypoint_path id = group id - to keep sync with all work i did before
-- group 149
UPDATE creature SET position_x = -11713.875, position_y = -3316.361, position_z = 16.61565, spawndist = 0, movementtype = 0 WHERE guid IN (140170,140171);
DELETE FROM `spawn_group_formation` WHERE id = 149;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(149, 2, 2, 0, 149, 4, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 000');
DELETE FROM `waypoint_path` WHERE PathId IN (11,149); -- 11 was the old id used for it...
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(149,1,-11713.875,-3316.361,16.61565,100,1000,0),
(149,2,-11725.975,-3297.165,10.215658,100,0,0),
(149,3,-11743.232,-3269.5693,4.1719513,100,0,0),
(149,4,-11729.091,-3237.4897,7.9173183,100,0,0),
(149,5,-11714.079,-3204.8657,4.5245056,100,0,0),
(149,6,-11711.223,-3188.678,7.798807,100,0,0),
(149,7,-11672.224,-3186.6577,15.417405,100,0,0),
(149,8,-11650.283,-3184.1926,22.234362,100,0,0),
(149,9,-11636.351,-3182.5903,15.465609,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (11,149);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(149,'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 000');

-- group 150
UPDATE creature SET position_x = -11667.275, position_y = -3096.5952, position_z = 23.351858, spawndist = 0, movementtype = 0 WHERE guid IN (140172,140173);
DELETE FROM `spawn_group_formation` WHERE id = 150;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(150, 2, 2, 0, 150, 4, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 001');
DELETE FROM `waypoint_path` WHERE PathId IN (12,150); -- 12 was the old id used for it...
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(150,1,-11667.275,-3096.5952,23.351858,100,1000,0),
(150,2,-11696.238,-3118.666,15.049856,100,0,0),
(150,3,-11719.27,-3139.0427,6.642433,100,0,0),
(150,4,-11712.286,-3150.5732,8.965675,100,0,0),
(150,5,-11680.816,-3148.0127,15.600914,100,0,0),
(150,6,-11651.765,-3144.145,22.745583,100,0,0),
(150,7,-11615.914,-3141.5088,8.29147,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (12,150);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(150,'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 001');

-- group 151
UPDATE creature SET position_x = -11743.354, position_y = -3330.1536, position_z = 13.737151, spawndist = 0, movementtype = 0 WHERE guid IN (140174,140175);
DELETE FROM `spawn_group_formation` WHERE id = 151;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(151, 2, 2, 0, 151, 4, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 002');
DELETE FROM `waypoint_path` WHERE PathId IN (13,151); -- 13 was the old id used for it...
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(151,1,-11743.354,-3330.1536,13.737151,100,1000,0),
(151,2,-11774.37,-3305.1074,6.0286484,100,0,0),
(151,3,-11809.05,-3316.8025,5.1097775,100,0,0),
(151,4,-11840.316,-3322.4348,4.960413,100,0,0),
(151,5,-11872.335,-3337.3516,8.405551,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (13,151);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(151,'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 002');

-- group 152
UPDATE creature SET position_x = -11642.356, position_y = -3196.1045, position_z = 17.316927, spawndist = 0, movementtype = 0 WHERE guid IN (140176,140177);
DELETE FROM `spawn_group_formation` WHERE id = 152;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(152, 2, 2, 0, 152, 4, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 003');
DELETE FROM `waypoint_path` WHERE PathId IN (14,152); -- 14 was the old id used for it...
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(152,1,-11642.356,-3196.1045,17.316927,100,1000,0),
(152,2,-11677.584,-3203.4863,14.12958,100,0,0),
(152,3,-11700.647,-3230.4153,9.514984,100,0,0),
(152,4,-11723.555,-3265.529,7.019369,100,0,0),
(152,5,-11711.625,-3299.9033,13.808676,100,0,0),
(152,6,-11706.173,-3313.6074,17.95354,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (14,152);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(152,'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 003');

-- group 153
UPDATE creature SET position_x = -11736.333, position_y = -3104.2048, position_z = 8.967831, spawndist = 0, movementtype = 0 WHERE guid IN (140178,140179);
DELETE FROM `spawn_group_formation` WHERE id = 153;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(153, 2, 2, 0, 153, 4, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 004');
DELETE FROM `waypoint_path` WHERE PathId IN (15,153); -- 15 was the old id used for it...
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(153,1,-11736.333,-3104.2048,8.967831,100,1000,0),
(153,2,-11766.208,-3093.6167,7.799446,100,0,0),
(153,3,-11799.612,-3076.197,7.269246,100,0,0),
(153,4,-11832.972,-3065.2288,6.261157,100,0,0),
(153,5,-11857.694,-3056.6926,10.374396,100,0,0),
(153,6,-11873.707,-3062.0813,19.33733,100,0,0),
(153,7,-11900.17,-3090.8584,33.558334,100,0,0),
(153,8,-11910.5,-3099.7747,41.182358,100,0,0),
(153,9,-11926.707,-3114.845,48.6341,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (15,153);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(153,'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 004');

-- group 19908 -- new group
-- missing added
DELETE FROM creature_addon WHERE guid IN (140996,140997);
DELETE FROM creature_movement WHERE id IN (140996,140997);
DELETE FROM game_event_creature WHERE guid IN (140996,140997);
DELETE FROM game_event_creature_data WHERE guid IN (140996,140997);
DELETE FROM creature_battleground WHERE guid IN (140996,140997);
DELETE FROM creature_linking WHERE guid IN (140996,140997);
DELETE FROM creature where guid IN (140996,140997);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(140996,6011,0,1,-11866.32,-3349.4456,18.78506,0,300,300,0,0),
(140997,6010,0,1,-11866.32,-3349.4456,18.78506,0,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 19908;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19908, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 005', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 19908;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19908, 140996, 0),
(19908, 140997, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19908;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19908, 2, 2, 0, 19908, 4, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 005');
DELETE FROM `waypoint_path_name` WHERE PathId = 19908;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19908,'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 005');
DELETE FROM `waypoint_path` WHERE PathId = 19908;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19908,1,-11866.32,-3349.4456,18.78506,100,1000,0),
(19908,2,-11848.551,-3343.8374,8.844874,100,0,0),
(19908,3,-11825.859,-3337.2573,4.623311,100,0,0),
(19908,4,-11821.784,-3330.3418,4.2901974,100,0,0),
(19908,5,-11782.065,-3313.4724,5.7300644,100,0,0),
(19908,6,-11758.47,-3336.0403,11.883939,100,1000,0);

-- group 19909 -- new group
-- missing added
DELETE FROM creature_addon WHERE guid IN (140998,140999);
DELETE FROM creature_movement WHERE id IN (140998,140999);
DELETE FROM game_event_creature WHERE guid IN (140998,140999);
DELETE FROM game_event_creature_data WHERE guid IN (140998,140999);
DELETE FROM creature_battleground WHERE guid IN (140998,140999);
DELETE FROM creature_linking WHERE guid IN (140998,140999);
DELETE FROM creature where guid IN (140998,140999);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(140998,6011,0,1,-11894.97,-3063.0215,22.201347,0,300,300,0,0),
(140999,6010,0,1,-11894.97,-3063.0215,22.201347,0,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 19909;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19909, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 006', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 19909;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19909, 140998, 0),
(19909, 140999, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19909;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19909, 2, 2, 0, 19909, 4, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 006');
DELETE FROM `waypoint_path_name` WHERE PathId = 19909;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19909,'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 006');
DELETE FROM `waypoint_path` WHERE PathId = 19909;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19909,1,-11894.97,-3063.0215,22.201347,100,1000,0),
(19909,2,-11866.677,-3044.5508,16.745777,100,0,0),
(19909,3,-11833.678,-3045.0664,7.403205,100,0,0),
(19909,4,-11799.552,-3061.1174,6.9248905,100,0,0),
(19909,5,-11766.537,-3075.3438,9.037727,100,0,0),
(19909,6,-11733.807,-3090.7356,11.729622,100,0,0),
(19909,7,-11697.68,-3072.0066,22.25619909,100,1000,0);

-- Helboar 5993
-- poss corrected
UPDATE creature SET position_x = -11759.515625, position_y = -3019.687988, position_z = 25.533550 WHERE guid = 3842;
UPDATE creature SET position_x = -11750.381836, position_y = -2905.866455, position_z = 5.561323 WHERE guid = 3843;

-- Servant of Grol 7669
UPDATE creature SET spawndist = 1, MovementType = 1 WHERE guid = 2671; -- confirmed
DELETE FROM creature_addon where guid = 2671;
UPDATE creature SET position_x = -11540.997, position_y = -2896.7283, position_z = 10.740564, spawndist = 0, MovementType = 4 WHERE guid = 3102;
DELETE FROM creature_movement WHERE id IN (3102);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(3102,1,-11540.997,-2896.7283,10.740564,100,0,0),
(3102,2,-11534.626,-2880.435,12.028532,100,0,0),
(3102,3,-11525.544,-2860.7937,8.775274,100,1000,0);

-- Dreadscorn 8304 - 140323 in classic/tbcmangos
-- https://github.com/cmangos/tbc-db/blob/e92c8e17ed3b626377a6b4a6ad4e5e952fcf6f47/Updates/0031_CDB-4370_blasted_lands_dreadscorn.sql#L7
-- debateable how going forward such things should be implemented. . .
DELETE FROM `spawn_group_entry` WHERE `id` = 267;
UPDATE `creature` SET `id` = 8304 WHERE `guid` = 140323;
DELETE FROM `creature_movement` WHERE (`id` = 140323);
DELETE FROM creature_movement_template WHERE entry = 8304;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(8304,1,-11316.973,-2552.8352,95.91068,100,1000,0),
(8304,2,-11335.366,-2554.8655,88.2449 ,100,0,0),
(8304,3,-11365.778,-2561.9358,79.450714,100,0,0),
(8304,4,-11384.299,-2576.9668,71.83986,100,0,0),
(8304,5,-11399.067,-2588.9163,63.19728,100,0,0),
(8304,6,-11409.63,-2600.8242,56.29765 ,100,0,0),
(8304,7,-11437.685,-2633.0461,33.58943,100,0,0),
(8304,8,-11459.067,-2666.5598,12.92333,100,0,0),
(8304,9,-11461.736,-2699.5422,6.892065,100,1000,0);

-- Dreadlord 8716
-- missing added
DELETE FROM creature_addon WHERE guid IN (3220,3641); -- free for all 3 dbs
DELETE FROM creature_movement WHERE id IN (3220,3641);
DELETE FROM game_event_creature WHERE guid IN (3220,3641);
DELETE FROM game_event_creature_data WHERE guid IN (3220,3641);
DELETE FROM creature_battleground WHERE guid IN (3220,3641);
DELETE FROM creature_linking WHERE guid IN (3220,3641);
DELETE FROM creature where guid IN (3220,3641);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(3220,8716,0,1,-12193.036,-2755.4004,22.25879,2.28638,900,900,0,0);

-- Felguard Elite 8717 & Manahound 8718
UPDATE creature SET position_x = -12049.108, position_y = -2688.916, position_z = -15.1847, spawndist = 0, movementtype = 0 WHERE guid IN (2652,2653,2654);
DELETE FROM `spawn_group` WHERE id IN (96,19907);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19907, 'Blasted Lands - Felguard Elite 8717 & Manahound 8718 x2 - Patrol 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id IN (96,19907);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19907, 2652, 0),
(19907, 2653, 1),
(19907, 2654, 2);
DELETE FROM `spawn_group_formation` WHERE id IN (96,19907);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19907, 3, 4, 0, 19907, 4, 'Blasted Lands - Felguard Elite 8717 & Manahound 8718 x2 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId IN (10,19907); -- 10	Blasted Lands - Felguard Elite (3) Patrol 001
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19907,'Blasted Lands - Felguard Elite 8717 & Manahound 8718 x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId IN (10,19907);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19907,1 ,-12049.108,-2688.916,-15.1847,100,1000,0), -- may not be first one - missing data
(19907,2 ,-12066.638,-2677.1897,-17.734993,100,0,0),
(19907,3 ,-12069.657,-2659.7883,-27.266823,100,0,0),
(19907,4 ,-12085.815,-2644.886,-30.504372 ,100,0,0),
(19907,5 ,-12092.525,-2621.2083,-31.583084,100,0,0),
(19907,6 ,-12108.282,-2596.691,-27.212606 ,100,0,0),
(19907,7 ,-12136.488,-2595.9531,-22.733866,100,0,0),
(19907,8 ,-12165.878,-2573.602,-19.353739 ,100,0,0),
(19907,9 ,-12190.698,-2563.4023,-11.425358,100,0,0),
(19907,10,-12209.847,-2563.6272,-9.187963 ,100,0,0),
(19907,11,-12246.797,-2564.6792,-4.8659587,100,0,0),
(19907,12,-12285.951,-2583.535,2.4066503  ,100,0,0),
(19907,13,-12311.38,-2600.5813,5.9698353  ,100,0,0),
(19907,14,-12313.063,-2630.3755,9.696398  ,100,0,0),
(19907,15,-12306.794,-2654.352,6.0152597  ,100,0,0),
(19907,16,-12295.419,-2673.4883,5.798772  ,100,0,0),
(19907,17,-12275.004,-2681.0186,3.3380785 ,100,0,0),
(19907,18,-12253.709,-2688.5603,5.1798754 ,100,0,0),
(19907,19,-12245.828,-2712.8213,9.152658  ,100,0,0),
(19907,20,-12197.875,-2730.1118,10.567487,100,1000,0);

-- Nethergarde Cleric 6000
UPDATE creature SET position_x = -10893.877, position_y = -3254.511, position_z = 67.38293, spawndist = 0, MovementType = 4 WHERE guid = 2976; -- linear
UPDATE creature SET position_x = -10970.400, position_y = -3362.6899, position_z = 65.6759, spawndist = 0, MovementType = 4 WHERE guid = 3666; -- linear
UPDATE creature SET position_x = -11108.942, position_y = -3356.9956, position_z = 55.209175, spawndist = 0, MovementType = 4 WHERE guid = 3690; -- linear
DELETE FROM creature_movement WHERE id IN (2976,3666,3690);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 2976
(2976,1,-10893.877,-3254.511,67.38293,100,1000,0),
(2976,2,-10907.401,-3269.2522,61.07353,100,0,0),
(2976,3,-10912.513,-3290.809,55.264935,100,0,0),
(2976,4,-10908.767,-3305.223,59.124935,100,0,0),
(2976,5,-10899.967,-3325.5134,64.99931,100,0,0),
(2976,6,-10884.459,-3322.227,70.676315,100,0,0),
(2976,7,-10875.254,-3309.6438,79.40434,100,0,0),
(2976,8,-10871.776,-3290.6006,88.20466,100,1000,0),
-- 3666 - corrected
(3666,1,-10970.400,-3362.6899,65.6759,100,1000,0),
(3666,2,-11017.309,-3451.6975,64.9648 ,100,0,0),
(3666,3,-10996.593,-3432.0933,62.11512,100,0,0),
(3666,4,-10997.302,-3402.636,61.99012 ,100,0,0),
(3666,5,-10997.425,-3372.1438,62.86281,100,0,0),
(3666,6,-11046.845,-3453.581,66.146164,100,0,0),
(3666,7,-11075.724,-3470.6775,65.03184,100,0,0),
(3666,8,-11089.165,-3467.7651,65.03184,100,0,0),
(3666,9,-11104.951,-3446.4133,65.07927,100,1000,0),
-- 3690 - corrected
(3690,1,-11108.942,-3356.9956,55.209175,100,1000,0),
(3690,2,-11100.467,-3338.871,54.469917 ,100,0,0),
(3690,3,-11087.349,-3323.8806,50.62861 ,100,0,0),
(3690,4,-11075.781,-3303.1804,48.95307 ,100,0,0),
(3690,5,-11064.932,-3301.4395,50.147663,100,0,0),
(3690,6,-11055.422,-3300.556,51.430134 ,100,0,0),
(3690,7,-11043.081,-3293.3396,53.24697 ,100,1000,0);

-- Nethergarde Engineer 5997 & Nethergarde Foreman 5998
UPDATE creature SET position_x = -10907.106, position_y = -3179.639, position_z = 49.09751, spawndist = 0, MovementType = 4 WHERE guid = 3863; -- linear
UPDATE creature SET position_x = -10766.128, position_y = -3124.3157, position_z = 36.469063, spawndist = 0, MovementType = 4 WHERE guid = 3878; -- linear
UPDATE creature SET position_x = -10708.568, position_y = -3294.3884, position_z = -7.9201093, spawndist = 0, MovementType = 4 WHERE guid = 3775; -- linear
UPDATE creature SET position_x = -10685.372, position_y = -3524.7156, position_z = -31.3056, spawndist = 0, MovementType = 4 WHERE guid = 3774; -- linear
UPDATE creature SET position_x = -10659.11, position_y = -3595.9583, position_z = -7.4565773, spawndist = 0, MovementType = 4 WHERE guid = 2831; -- linear
UPDATE creature SET position_x = -10809.995, position_y = -3580.722, position_z = -11.798237, spawndist = 0, MovementType = 4 WHERE guid = 3781; -- linear
UPDATE creature SET position_x = -10534.50, position_y = -3295, position_z = 2.344393, spawndist = 0, MovementType = 4 WHERE guid = 3786; -- linear
UPDATE creature SET position_x = -10597.946, position_y = -3300.626, position_z = 4.4919586, spawndist = 0, MovementType = 4 WHERE guid = 3713; -- linear
DELETE FROM creature_movement WHERE id IN (3863,3878,3775,3774,2831,3781,3786,3713);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 3863 - corrected
(3863,1 ,-10907.106,-3179.639,49.09751,100,1000,0),
(3863,2 ,-10891.712,-3176.916,49.452724 ,100,0,0),
(3863,3 ,-10858.604,-3173.4778,48.15338 ,100,0,0),
(3863,4 ,-10832.375,-3169.8516,43.579834,100,0,0),
(3863,5 ,-10807.046,-3155.2468,37.99383 ,100,0,0),
(3863,6 ,-10791.864,-3127.9133,40.25387 ,100,0,0),
(3863,7 ,-10794.367,-3102.3418,42.996094,100,0,0),
(3863,8 ,-10806.505,-3077.621,45.29592  ,100,0,0),
(3863,9 ,-10823.819,-3055.8965,47.029457,100,0,0),
(3863,10,-10839.575,-3034.816,48.925587 ,100,0,0),
(3863,11,-10854.795,-3030.3762,48.605743,100,1000,0),
-- 3878 - corrected
(3878,1 ,-10766.128,-3124.3157,36.469063,100,1000,0),
(3878,2 ,-10731.893,-3130.831,34.2597   ,100,0,0),
(3878,3 ,-10694.435,-3144.5034,23.221888,100,0,0),
(3878,4 ,-10667.884,-3173.2087,20.685173,100,0,0),
(3878,5 ,-10652.567,-3194.8425,23.740799,100,0,0),
(3878,6 ,-10662.423,-3201.6743,22.227491,100,0,0),
(3878,7 ,-10672.705,-3199.9275,21.233946,100,0,0),
(3878,8 ,-10693.39,-3169.2764,21.430164 ,100,0,0),
(3878,9 ,-10712.425,-3150.8499,29.727856,100,0,0),
(3878,10,-10728.997,-3124.7092,34.09694 ,100,0,0),
(3878,11,-10764.614,-3112.061,36.23918,100,1000,0),
-- 3775
(3775,1,-10708.568,-3294.3884,-7.9201093,100,1000,0),
(3775,2,-10703.488,-3335.2266,-7.583639 ,100,0,0),
(3775,3,-10740.072,-3332.619,-10.254399 ,100,0,0),
(3775,4,-10743.076,-3351.3782,-9.875658 ,100,0,0),
(3775,5,-10721.832,-3362.5537,-11.473009,100,0,0),
(3775,6,-10710.935,-3382.6335,-11.528957,100,0,0),
(3775,7,-10720.708,-3415.9504,-15.087488,100,0,0),
(3775,8,-10742.735,-3433.804,-17.875326,100,1000,0),
-- 3774
(3774,1,-10685.372,-3524.7156,-31.3056,100,1000,0),
(3774,2,-10696.927,-3558.1013,-32.26817 ,100,0,0),
(3774,3,-10721.146,-3562.9343,-29.296434,100,0,0),
(3774,4,-10741.92,-3549.3164,-31.492886 ,100,0,0),
(3774,5,-10755.646,-3528.3186,-29.961952,100,0,0),
(3774,6,-10761.886,-3495.7832,-23.744547,100,0,0),
(3774,7,-10761.249,-3458.3833,-20.172815,100,0,0),
(3774,8,-10778.485,-3448.5999,-20.23393,100,1000,0),
-- 2831
(2831,1,-10659.11,-3595.9583,-7.4565773,100,1000,0),
(2831,2,-10648.918,-3601.9312,-7.575261,100,0,0),
(2831,3,-10623.882,-3611.828,-11.034247,100,0,0),
(2831,4,-10610.732,-3595.9353,-13.190447,100,0,0),
(2831,5,-10605.161,-3566.4893,-12.28532,100,0,0),
(2831,6,-10588.46,-3527.6562,-6.807689,100,0,0),
(2831,7,-10595.714,-3508.7134,-0.98286813,100,0,0),
(2831,8,-10605.061,-3480.2493,2.7109523,100,1000,0),
-- 3781
(3781,1,-10809.995,-3580.722,-11.798237,100,1000,0),
(3781,2,-10768.241,-3598.697,-12.728107 ,100,0,0),
(3781,3,-10762.276,-3627.711,-11.737767 ,100,0,0),
(3781,4,-10736.123,-3636.6907,-11.798807,100,0,0),
(3781,5,-10691.554,-3639.069,-11.125942 ,100,0,0),
(3781,6,-10674.279,-3654.201,-12.713397 ,100,0,0),
(3781,7,-10649.498,-3627.0425,-11.002993,100,0,0),
(3781,8,-10628.709,-3632.1562,-13.05544,100,1000,0),
-- 3786
(3786,1 ,-10534.50,-3295,2.344393,100,1000,0),
(3786,2 ,-10556.396,-3302.8086,2.0840335 ,100,0,0),
(3786,3 ,-10564.22,-3336.0085,3.420667   ,100,0,0),
(3786,4 ,-10558.843,-3369.3357,-2.155574 ,100,0,0),
(3786,5 ,-10557.354,-3389.2852,-2.322438 ,100,0,0),
(3786,6 ,-10561.133,-3409.6477,-1.1932617,100,0,0),
(3786,7 ,-10564.332,-3435.7976,-2.0890288,100,0,0),
(3786,8 ,-10566.467,-3455.78,-2.188403   ,100,0,0),
(3786,9 ,-10551.718,-3475.8198,-5.1744204,100,0,0),
(3786,10,-10565.211,-3501.1973,-6.207753,100,1000,0),
-- 3713
(3713,1 ,-10597.946,-3300.626,4.4919586,100,1000,0),
(3713,2 ,-10596.802,-3282.3687,4.8780622,100,0,0),
(3713,3 ,-10577.827,-3281.6516,2.7242875,100,0,0),
(3713,4 ,-10549.464,-3273.902,0.5566197 ,100,0,0),
(3713,5 ,-10548.055,-3238.7231,5.5423594,100,0,0),
(3713,6 ,-10555.398,-3210.4087,7.2043467,100,0,0),
(3713,7 ,-10571.047,-3206.229,6.9450674 ,100,0,0),
(3713,8 ,-10584.643,-3185.2192,9.782501 ,100,0,0),
(3713,9 ,-10608.864,-3155.8135,16.152325,100,0,0),
(3713,10,-10633.101,-3128.157,22.372782 ,100,0,0),
(3713,11,-10642.776,-3106.1147,24.459536,100,1000,0);
