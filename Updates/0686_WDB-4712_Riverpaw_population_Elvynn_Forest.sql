-- Elvynn Forest

-- Fedfennel 472 -- tbcmangos differges from classic/wotlk, align.
DELETE FROM `creature` WHERE `id` = 472; -- 98752,98751,81122,98750
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(81122, 472, 0, -8978.21, -829.324, 70.1883, 3.29867, 5400, 9000, 5, 1),
(134000, 472, 0, -8886.04, -771.985, 69.2205, 4.98213, 5400, 9000, 5, 1),
(134001, 472, 0, -8855.48, -822.622, 71.5874, 0.598824, 5400, 9000, 5, 1),
(134002, 472, 0, -8839.13, -863.772, 75.6382, 4.52817, 5400, 9000, 5, 1);

UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 472;

UPDATE creature SET position_x = -8853.716, position_y = -822.9642, position_z = 71.87811, orientation = 3.927 WHERE guid = 134001;
-- moved to spawn GROUPS
DELETE FROM `pool_creature` WHERE `pool_entry` IN (1074);
DELETE FROM `pool_template` WHERE `entry` IN (1074); -- 1074	1	Fedfennel (472)
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (1074); -- 472	1074	0	Fedfennel (472)
DELETE FROM `spawn_group` WHERE id = 19985;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19985, 'Elvynn Forest - Stone Cairn Lake - Fedfennel 472', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19985;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19985, 81122, -1),
(19985, 134000, -1),
(19985, 134001, -1),
(19985, 134002, -1);

-- Gruff Swiftbite 100
-- tbcmangos static positions at the tents are wrong, made up - use classic/wotlk mangos versions
DELETE FROM `creature` WHERE `id` = 100; -- 99701,99698,99702,99699,99700,99703
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(134003, 100, 0, -10067.1, 629.856, 39.2659, 0.67265, 5400, 9000, 10, 1),
(86154, 100, 0, -10017, 654.089, 37.149, 5.412, 5400, 9000, 10, 1),
(134004, 100, 0, -9981.18, 566.13, 37.6634, 1.37087, 5400, 9000, 10, 1),
(134005, 100, 0, -9945.86, 620.999, 37.2259, 4.03808, 5400, 9000, 10, 1),
(134006, 100, 0, -9930.88, 573.464, 37.0119, 2.35969, 5400, 9000, 10, 1);

UPDATE creature SET position_x = -10082.844727, position_y = 635.379395, position_z = 39.253815, spawndist = 15, MovementType = 1 WHERE guid = 134003;
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 100;
-- moved to spawn GROUPS
DELETE FROM `pool_creature` WHERE `pool_entry` IN (1072);
DELETE FROM `pool_template` WHERE `entry` IN (1072); -- 1072	1	Gruff Swiftbite (100)
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (1072); -- 100	1072	0	Gruff Swiftbite (100)
DELETE FROM `spawn_group` WHERE id = 19984;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19984, 'Elvynn Forest - Forest\'s Edge - Gruff Swiftbite 100', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19984;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19984, 86154, -1),
(19984, 134003, -1),
(19984, 134004, -1),
(19984, 134005, -1),
(19984, 134006, -1);

-- Hogger 448
-- moved to spawn GROUPS (classic/tbc differ from wotlk, +1 spawn)
DELETE FROM `pool_creature` WHERE `pool_entry` IN (1265);
DELETE FROM `pool_template` WHERE `entry` IN (1265); -- 1265	1	Elwynn Forest - Forest's Edge - Hogger (448)
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (1265); -- 448	1265	0	Elwynn Forest - Forest's Edge - Hogger (448)
DELETE FROM `spawn_group` WHERE id = 19983;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19983, 'Elvynn Forest - Forest\'s Edge - Hogger 448', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19983;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19983, 80531, -1),
(19983, 81027, -1), -- 81016
(19983, 80731, -1),
(19983, 81028, -1),
(19983, 81029, -1),
(19983, 81064, -1);

DELETE FROM `creature` where `id` = 448 AND `guid` = 81064;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(81064, 448, 0, -9947.88, 594.773, 39.608, 5.19393, 180, 180, 8, 1);

UPDATE `creature` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180, `spawndist` = 8, `movementtype` = 1 WHERE `id` = 448 AND `guid` != 80731;
UPDATE `creature` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180 WHERE `id` = 448 AND `guid` = 80731;

-- Riverpaw Runt 97 & Riverpaw Outrunner 478 - tbcmangos differged from classic/wotlk
DELETE FROM `creature` WHERE `id` IN (97,478) AND `guid` IN (80538,80539,80530,80536,80533,80535,80534,80540,80537,80532,80520,80521,80519,80518,80511,80516,80517,80512,80514,80541,80513,80504,80503,80526,80523,80525,80527,80524,80528,80509,80501,80500,80499,80505,80507,80506,80508,80490,80545,80492,80493,80546,80551,80474,81111,81112,81113,81114,81115,81116,81117,81121,81119,81120,81118,81126,81124,81125,81138,81145,81141,81137,81144,81142,81140,81128,81143,81330,81129,81133,81134,81139,81131,81136,81149,81132,81146,81151,81148,81130,81152,81153,81338,81154);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(80534, 97, 0, -10106.6, 690.702, 32.0811, 3.9619, 180, 180, 5, 1),
(80519, 97, 0, -10062.3, 630.716, 39.4488, 2.68781, 180, 180, 5, 1),
(80518, 97, 0, -10062.1, 625.964, 39.4488, 1.93731, 180, 180, 5, 1),
(80512, 97, 0, -10007.6, 658.496, 36.2532, 0.436332, 180, 180, 5, 1),
(80541, 97, 0, -10002.6, 464.538, 32.4476, 1.95325, 180, 180, 5, 1),
(80504, 97, 0, -9996.68, 665.204, 36.6127, 3.76991, 180, 180, 5, 1),
(80523, 97, 0, -9983.9, 575.295, 37.7614, 5.39307, 180, 180, 5, 1),
(80524, 97, 0, -9961.96, 551.831, 37.5276, 5.43096, 180, 180, 5, 1),
(80499, 97, 0, -9945.14, 617.188, 37.2311, 2.77507, 180, 180, 5, 1),
(80505, 97, 0, -9944.83, 572.915, 37.6453, 2.37365, 180, 180, 5, 1),
(80506, 97, 0, -9933.14, 573.86, 37.027, 1.16937, 180, 180, 5, 1),
(80545, 97, 0, -9857.17, 467.822, 36.5601, 5.06952, 180, 180, 5, 1),
(80551, 97, 0, -9806.09, 438.606, 36.5553, 4.15031, 180, 180, 5, 1),
(81114, 97, 0, -9014.86, -845.351, 70.3914, 1.04126, 180, 180, 5, 1),
(81115, 97, 0, -9014.58, -818.75, 69.7591, 2.45992, 180, 180, 5, 1),
(81117, 97, 0, -8989.19, -837.573, 69.6341, 0.837758, 180, 180, 5, 1),
(81118, 97, 0, -8978.88, -838.899, 69.9902, 1.91986, 180, 180, 5, 1),
(81141, 97, 0, -8895.92, -769.232, 69.5663, 5.63741, 180, 180, 5, 1),
(81142, 97, 0, -8879.83, -766.896, 68.7156, 4.17134, 180, 180, 5, 1),
(81134, 97, 0, -8854.58, -853.312, 74.2394, 6.11634, 180, 180, 5, 1),
(81139, 97, 0, -8852.59, -777.225, 70.4306, 6.17223, 180, 180, 5, 1),
(81131, 97, 0, -8851.85, -827.879, 72.9202, 1.93731, 180, 180, 5, 1),
(81136, 97, 0, -8849.2, -753.343, 70.3534, 2.08604, 180, 180, 5, 1),
(81146, 97, 0, -8846.81, -922.26, 75.6918, 3.07364, 180, 180, 5, 1),
(81151, 97, 0, -8841.8, -867.743, 75.9984, 5.70723, 180, 180, 5, 1),
(81154, 97, 0, -8824.66, -848.258, 74.3457, 1.75243, 180, 180, 5, 1),
(80538, 478, 0, -10147.1, 616.176, 27.6083, 4.91395, 180, 180, 5, 1),
(80539, 478, 0, -10127, 573.715, 33.3096, 4.91898, 180, 180, 5, 1),
(80530, 478, 0, -10120.1, 653.327, 34.911, 3.04834, 180, 180, 5, 1),
(80536, 478, 0, -10117.8, 686.296, 31.9033, 6.17846, 180, 180, 5, 1),
(80533, 478, 0, -10117.3, 711.22, 31.4584, 5.6441, 180, 180, 5, 1),
(80535, 478, 0, -10110.2, 692.573, 31.9033, 4.55531, 180, 180, 5, 1),
(80540, 478, 0, -10092, 542.775, 25.9823, 3.31981, 180, 180, 5, 1),
(80537, 478, 0, -10089.9, 673.787, 34.2691, 4.1482, 180, 180, 5, 1),
(80532, 478, 0, -10085, 633.968, 39.1533, 2.38575, 180, 180, 5, 1),
(80520, 478, 0, -10071.4, 629.02, 39.4488, 6.12611, 180, 180, 5, 1),
(80521, 478, 0, -10071, 633.184, 39.4488, 6.07375, 180, 180, 5, 1),
(80511, 478, 0, -10033.9, 645.885, 38.4437, 2.35619, 180, 180, 5, 1),
(80516, 478, 0, -10027.2, 608.88, 38.7172, 3.758, 180, 180, 5, 1),
(80517, 478, 0, -10010.6, 581.321, 38.8676, 6.12969, 180, 180, 5, 1),
(80514, 478, 0, -10005.1, 662.883, 35.8841, 5.49779, 180, 180, 5, 1),
(80513, 478, 0, -10002, 657.114, 36.4221, 1.81514, 180, 180, 5, 1),
(80503, 478, 0, -9990.87, 653.904, 36.4184, 2.51737, 180, 180, 5, 1),
(80526, 478, 0, -9986.73, 571.913, 37.7614, 5.98648, 180, 180, 5, 1),
(80525, 478, 0, -9981.51, 562.627, 37.7605, 1.27409, 180, 180, 5, 1),
(80527, 478, 0, -9981.14, 547.836, 38.0105, 3.21327, 180, 180, 5, 1),
(80528, 478, 0, -9959.76, 544.444, 37.6965, 0.746743, 180, 180, 5, 1),
(80509, 478, 0, -9954.26, 663.252, 33.8692, 1.44037, 180, 180, 5, 1),
(80501, 478, 0, -9949.58, 621.918, 37.2311, 5.06145, 180, 180, 5, 1),
(80500, 478, 0, -9949.54, 615.613, 37.2311, 1.16937, 180, 180, 5, 1),
(80507, 478, 0, -9935.88, 583.854, 37.7703, 1.44862, 180, 180, 5, 1),
(80508, 478, 0, -9931.62, 578.899, 37.277, 2.3911, 180, 180, 5, 1),
(80490, 478, 0, -9906.72, 623.355, 40.2933, 4.03545, 180, 180, 5, 1),
(80492, 478, 0, -9847.56, 587.786, 40.311, 2.83187, 180, 180, 5, 1),
(80493, 478, 0, -9824.3, 620.795, 41.6051, 5.09522, 180, 180, 5, 1),
(80546, 478, 0, -9821.08, 562.099, 38.7323, 1.59273, 180, 180, 5, 1),
(80474, 478, 0, -9788.6, 582.644, 38.1564, 5.91138, 180, 180, 5, 1),
(81111, 478, 0, -9207.39, -846.818, 68.2408, 3.85824, 180, 180, 5, 1),
(81112, 478, 0, -9117.19, -830.729, 70.2657, 2.40939, 180, 180, 5, 1),
(81113, 478, 0, -9070.95, -831.316, 69.6163, 4.87625, 180, 180, 5, 1),
(81116, 478, 0, -8996.38, -817.691, 69.5901, 1.35894, 180, 180, 5, 1),
(81121, 478, 0, -8985.59, -854.958, 69.1153, 0.047932, 180, 180, 5, 1),
(81119, 478, 0, -8984.14, -828.167, 70.2784, 5.60251, 180, 180, 5, 1),
(81120, 478, 0, -8979.83, -818.941, 70.4679, 4.4855, 180, 180, 5, 1),
(81126, 478, 0, -8953.07, -780.752, 69.0888, 1.12163, 180, 180, 5, 1),
(81124, 478, 0, -8939.99, -853.295, 68.6805, 4.01473, 180, 180, 5, 1),
(81125, 478, 0, -8918.61, -814.389, 68.927, 0.370001, 180, 180, 5, 1),
(81138, 478, 0, -8914.71, -745.936, 70.2894, 4.47358, 180, 180, 5, 1),
(81145, 478, 0, -8895.99, -778.248, 69.3756, 0.380141, 180, 180, 5, 1),
(81137, 478, 0, -8888.63, -756.145, 69.4341, 3.1422, 180, 180, 5, 1),
(81144, 478, 0, -8887.32, -778.651, 69.7129, 0.855211, 180, 180, 5, 1),
(81140, 478, 0, -8879.58, -786.566, 70.0006, 2.84998, 180, 180, 5, 1),
(81128, 478, 0, -8874.23, -862.047, 74.7382, 1.85187, 180, 180, 5, 1),
(81143, 478, 0, -8873.52, -776.396, 69.3139, 3.1765, 180, 180, 5, 1),
(81330, 478, 0, -8869.96, -1130.14, 76.7842, 2.35896, 180, 180, 5, 1),
(81129, 478, 0, -8869.74, -819.372, 71.8887, 0.88304, 180, 180, 5, 1),
(81133, 478, 0, -8859.67, -824.284, 71.8228, 5.84685, 180, 180, 5, 1),
(81149, 478, 0, -8848.67, -882.444, 74.6828, 4.37717, 180, 180, 5, 1),
(81132, 478, 0, -8847.86, -811.561, 70.7121, 4.20624, 180, 180, 5, 1),
(81148, 478, 0, -8838.21, -854.256, 74.6843, 2.74352, 180, 180, 5, 1),
(81130, 478, 0, -8836.41, -831.326, 73.7589, 6.20071, 180, 180, 5, 1),
(81152, 478, 0, -8834.45, -880.661, 74.4284, 2.02458, 180, 180, 5, 1),
(81153, 478, 0, -8827.74, -867.454, 74.5929, 3.22886, 180, 180, 5, 1),
(81338, 478, 0, -8826.02, -995.49, 74.4831, 3.4065, 180, 180, 5, 1);

-- packs North from `Stone Cairn Lake`
-- Updates
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (81152,81132,81143,81141,81120,81119,81151,81153,81133,81131,81144,81142,81118,81117);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 81149;
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE guid IN (81111,81330);
UPDATE creature SET position_x = -8873.598633, position_y = -823.414246, position_z = 72.300377, spawndist = 7, MovementType = 1 WHERE guid = 81129; -- small area to cover
UPDATE creature SET position_x = -8835.293945, position_y = -853.991943, position_z = 74.286278, spawndist = 10, MovementType = 1 WHERE guid = 81148;
UPDATE creature SET position_x = -8852.494141, position_y = -924.767761, position_z = 75.609489, spawndist = 15, MovementType = 1 WHERE guid = 81146;
UPDATE creature SET position_x = -9010.752930, position_y = -810.284058, position_z = 68.867233, spawndist = 15, MovementType = 1 WHERE guid = 81115;
UPDATE creature SET position_x = -8983.671875, position_y = -859.671997, position_z = 68.817261, spawndist = 15, MovementType = 1 WHERE guid = 81121;
UPDATE creature SET position_x = -9111.220703, position_y = -822.764282, position_z = 70.639343, spawndist = 15, MovementType = 1 WHERE guid = 81112;
UPDATE creature SET position_x = -8936.508789, position_y = -857.085876, position_z = 69.104706, spawndist = 15, MovementType = 1 WHERE guid = 81124;
UPDATE creature SET position_x = -8818.851562, position_y = -855.922058, position_z = 74.332024, spawndist = 10, MovementType = 1 WHERE guid = 81154;
UPDATE creature SET position_x = -8851.617188, position_y = -850.918823, position_z = 73.574760, spawndist = 20, MovementType = 1 WHERE guid = 81134;
UPDATE creature SET position_x = -8846.536133, position_y = -785.257751, position_z = 70.646332, spawndist = 20, MovementType = 1 WHERE guid = 81139;
UPDATE creature SET position_x = -8854.874023, position_y = -752.945984, position_z = 70.090881, spawndist = 20, MovementType = 1 WHERE guid = 81136;
UPDATE creature SET position_x = -9013.491211, position_y = -853.273743, position_z = 69.480415, spawndist = 20, MovementType = 1 WHERE guid = 81114;
UPDATE creature SET position_x = -8835.158203, position_y = -990.737915, position_z = 74.202278, spawndist = 20, MovementType = 1 WHERE guid = 81338;
UPDATE creature SET position_x = -8888.418945, position_y = -854.928223, position_z = 73.087433, spawndist = 20, MovementType = 1 WHERE guid = 81128;
UPDATE creature SET position_x = -8918.245117, position_y = -815.591125, position_z = 68.922501, spawndist = 20, MovementType = 1 WHERE guid = 81125;
UPDATE creature SET position_x = -8962.441406, position_y = -778.068604, position_z = 70.829742, spawndist = 20, MovementType = 1 WHERE guid = 81126;
UPDATE creature SET position_x = -9065.135742, position_y = -835.249451, position_z = 69.747192, spawndist = 20, MovementType = 1 WHERE guid = 81113;

-- western part of Elvynn Forest
-- missing added - guids free in all 3 DBs
DELETE FROM creature_addon WHERE guid IN (11414);
DELETE FROM creature_movement WHERE id IN (11414);
DELETE FROM game_event_creature WHERE guid IN (11414);
DELETE FROM game_event_creature_data WHERE guid IN (11414);
DELETE FROM creature_battleground WHERE guid IN (11414);
DELETE FROM creature_linking WHERE guid IN (11414)
 OR master_guid IN (11414);
DELETE FROM creature WHERE guid IN (11414);
INSERT INTO creature (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(11414,97,0,1,-10045.1,575.56,35.1568,1.24577,180,180,15,1);
-- updates
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (80513,80523,80525,80526,80506,80508,80512,80513,80514,80519,80518,80520,80521,80501,80500,80499,80536,80534,80535);
UPDATE creature SET position_x = -9979.268555, position_y = 571.616882, position_z = 37.662552, orientation = 4.885448, spawndist = 0, MovementType = 0 WHERE guid = 80524;
UPDATE creature SET position_x = -9801.211914, position_y = 450.947693, position_z = 36.210129, spawndist = 15, MovementType = 1 WHERE guid = 80551;
UPDATE creature SET position_x = -9865.470703, position_y = 481.791443, position_z = 36.061237, spawndist = 15, MovementType = 1 WHERE guid = 80545;
UPDATE creature SET position_x = -9819.909180, position_y = 616.527954, position_z = 41.811504, spawndist = 15, MovementType = 1 WHERE guid = 80493;
UPDATE creature SET position_x = -9954.583008, position_y = 590.006592, position_z = 39.124107, spawndist = 15, MovementType = 1 WHERE guid = 80507;
UPDATE creature SET position_x = -9955.007812, position_y = 551.861206, position_z = 38.893646, spawndist = 15, MovementType = 1 WHERE guid = 80528;
UPDATE creature SET position_x = -9996.076172, position_y = 603.114319, position_z = 40.026615, spawndist = 15, MovementType = 1 WHERE guid = 80516; -- was inside tree
UPDATE creature SET position_x = -9984.117188, position_y = 638.761169, position_z = 37.906860, spawndist = 15, MovementType = 1 WHERE guid = 80503;
UPDATE creature SET position_x = -10041.0039, position_y = 663.382019, position_z = 37.741508, spawndist = 15, MovementType = 1 WHERE guid = 80511;
UPDATE creature SET position_x = -9982.490234, position_y = 541.011475, position_z = 36.716213, spawndist = 15, MovementType = 1 WHERE guid = 80527;
UPDATE creature SET position_x = -10095.650391, position_y = 621.112793, position_z = 38.581902, spawndist = 15, MovementType = 1 WHERE guid = 80532;
UPDATE creature SET position_x = -9947.733398, position_y = 654.047729, position_z = 34.258228, spawndist = 15, MovementType = 1 WHERE guid = 80509;
-- Riverpaw Runt 97 & Riverpaw Outrunner 478
-- share same spawn points
DELETE FROM creature_spawn_entry WHERE entry IN (97,478);
INSERT INTO creature_spawn_entry (guid,entry)
SELECT guid,id FROM creature
WHERE id in (97)
union
SELECT guid,478 FROM creature
WHERE id in (97)
union
SELECT guid,id FROM creature
WHERE id in (478)
union
SELECT guid,97 FROM creature
WHERE id in (478);
UPDATE creature SET id = 0 WHERE id IN (97,478);

-- Delete overlapping tbcmangos spawns
DELETE FROM creature_addon WHERE (guid BETWEEN 99704 AND 99790) AND `guid` NOT IN (99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788);
DELETE FROM creature_movement WHERE (id BETWEEN 99704 AND 99790) AND `id` NOT IN (99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788);
DELETE FROM game_event_creature WHERE (guid BETWEEN 99704 AND 99790) AND `guid` NOT IN (99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788);
DELETE FROM game_event_creature_data WHERE (guid BETWEEN 99704 AND 99790) AND `guid` NOT IN (99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788);
DELETE FROM creature_battleground WHERE (guid BETWEEN 99704 AND 99790) AND `guid` NOT IN (99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788);
DELETE FROM creature_linking WHERE (guid BETWEEN 99704 AND 99790) AND `guid` NOT IN (99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788);
DELETE FROM creature WHERE (guid BETWEEN 99704 AND 99790) AND `guid` NOT IN (99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788);
DELETE FROM creature_spawn_entry WHERE (guid BETWEEN 99704 AND 99790) AND `guid` NOT IN (99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788);

-- keeping 99727,99728,99730,99737,99740,99741,99748,99756,99757,99758,99759,99788 for now.

