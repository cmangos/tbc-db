-- Add your query below.
-- https://github.com/vmangos/core/commit/1499327d186723f79256bcee27c806f4292abfe6
-- And additonal data from CCSDB

-- Missing spawns in Winterspring
-- 1074001 - 1076001	Winterspring - Mineral Nodes
-- 2060	22	Master Mineral Pool - Winterspring (Main Section)
-- 2061	8	Master Mineral Pool - Winterspring (West Section)
DELETE FROM `gameobject` where `guid` between 1074001 AND 1074008 AND `id` IN (175404,177388);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(1074001, 175404, 1, 4769.44, -4965.14, 895.611, 3.9619, 0, 0, -0.91706, 0.39875, 2700, 2700, 255, 1),
(1074002, 175404, 1, 5166.9, -4775.03, 701.027, 4.46804, 0, 0, -0.788011, 0.615662, 2700, 2700, 255, 1),
(1074003, 175404, 1, 6466.51, -3884.6, 663.217, 4.81711, 0, 0, -0.66913, 0.743145, 2700, 2700, 255, 1),
(1074004, 175404, 1, 6556.81, -5255.44, 754.396, 4.20625, 0, 0, -0.861628, 0.507539, 2700, 2700, 255, 1),
(1074005, 175404, 1, 5654.18, -4905.9, 806.267, 4.90438, 0, 0, -0.636078, 0.771625, 2700, 2700, 255, 1),
(1074006, 175404, 1, 5748.65, -4983.06, 809.087, 4.69494, 0, 0, -0.71325, 0.70091, 2700, 2700, 255, 1),
(1074007, 175404, 1, 5910.75, -4169.74, 606.879, 3.42085, 0, 0, -0.990268, 0.139175, 2700, 2700, 255, 1),
(1074008, 175404, 1, 7843.49, -4284.76, 690.4, 5.95157, 0, 0, -0.165047, 0.986286, 2700, 2700, 255, 1);

DELETE FROM `pool_gameobject` where `guid` between 1074001 AND 1074008;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(1074001, 2060, 'Winterspring - Rich Thorium Vein'),
(1074002, 2060, 'Winterspring - Rich Thorium Vein'),
(1074003, 9263, 'Winterspring - Rich Thorium Vein'), -- 2061 15%
(1074004, 2060, 'Winterspring - Rich Thorium Vein'),
(1074005, 2060, 'Winterspring - Rich Thorium Vein'),
(1074006, 2060, 'Winterspring - Rich Thorium Vein'),
(1074007, 2060, 'Winterspring - Rich Thorium Vein'),
(1074008, 2060, 'Winterspring - Rich Thorium Vein');

-- Missing spawns in Western Plaguelands
-- 1068001 - 1070001	Western Plaguelands - Mineral Nodes
-- UPDATE `pool_template` SET `description`='Rich Thorium Veins in Western Plaguelands' WHERE `entry`=1264; - we cant do this transition yet.
-- 2028	11	Master Mineral Pool - Western Plaguelands (South-West Section)
-- 2029	17	Master Mineral Pool - Western Plaguelands (East and North Sections)
DELETE FROM `gameobject` where `guid` between 1068001 AND 1068002 AND `id` IN (175404,177388);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(1068001, 175404, 0, 2285.39, -2334.25, 63.6795, 4.25861, 0, 0, -0.848047, 0.529921, 2700, 2700, 255, 1),
(1068002, 175404, 0, 2284.89, -2227.45, 56.8073, 4.95674, 0, 0, -0.615661, 0.788011, 2700, 2700, 255, 1);

DELETE FROM `pool_gameobject` where `guid` between 1068001 AND 1068002;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(1068001, 2029, 'Rich Thorium Vein'),
(1068002, 2029, 'Rich Thorium Vein');

-- Missing spawns in Eastern Plaguelands
-- 1072001 - 1074001	Eastern Plaguelands - Mineral Nodes
-- 2010	23	Master Mineral Pool - Eastern Plaguelands
DELETE FROM `gameobject` where `guid` between 1072001 AND 1072007 AND `id` IN (175404,177388);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(1072001, 175404, 0, 2864.45, -5423.49, 173.813, 5.3058, 0, 0, -0.469471, 0.882948, 2700, 2700, 255, 1),
(1072002, 175404, 0, 2733.85, -5332.87, 164.487, 2.53072, 0, 0, 0.953716, 0.300708, 2700, 2700, 255, 1),
(1072003, 175404, 0, 2636.65, -5313.67, 167.467, 4.25861, 0, 0, -0.848047, 0.529921, 2700, 2700, 255, 1),
(1072004, 175404, 0, 2482.73, -3862.86, 182.901, 4.79966, 0, 0, -0.67559, 0.737278, 2700, 2700, 255, 1),
(1072005, 175404, 0, 3116.54, -4833.71, 108.094, 1.06465, 0, 0, 0.507538, 0.861629, 2700, 2700, 255, 1),
(1072006, 175404, 0, 2233.68, -5041.2, 58.3313, 0.122173, 0, 0, 0.0610485, 0.998135, 2700, 2700, 255, 1),
(1072007, 175404, 0, 3027.03, -4576.48, 117.66, 5.20108, 0, 0, -0.515037, 0.857168, 2700, 2700, 255, 1);

DELETE FROM `pool_gameobject` where `guid` between 1072001 AND 1072007;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(1072001, 2010, 'Eastern Plaguelands - Rich Thorium Vein'),
(1072002, 2010, 'Eastern Plaguelands - Rich Thorium Vein'),
(1072003, 2010, 'Eastern Plaguelands - Rich Thorium Vein'),
(1072004, 2010, 'Eastern Plaguelands - Rich Thorium Vein'),
(1072005, 2010, 'Eastern Plaguelands - Rich Thorium Vein'),
(1072006, 2010, 'Eastern Plaguelands - Rich Thorium Vein'),
(1072007, 2010, 'Eastern Plaguelands - Rich Thorium Vein');

-- Missing spawns in Azshara
-- 1058001 - 1060001	Azshara - Mineral Nodes
-- 2035	22	Master Mineral Pool - Azshara
DELETE FROM `gameobject` where `guid` between 1058001 AND 1058003 AND `id` IN (175404,177388);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(1058001, 175404, 1, 3648.63, -6378.19, -52.0457, 3.94445, 0, 0, -0.920505, 0.390732, 2700, 2700, 255, 1),
(1058002, 175404, 1, 3741.3, -5366.5, 99.7494, 6.17847, 0, 0, -0.0523357, 0.99863, 2700, 2700, 255, 1),
(1058003, 175404, 1, 4458.91, -5549.51, 111.424, 0.506145, 0, 0, 0.25038, 0.968148, 2700, 2700, 255, 1);

DELETE FROM `pool_gameobject` where `guid` between 1058001 AND 1058003;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(1058001, 2035, 'Azshara - Rich Thorium Vein'),
(1058002, 2035, 'Azshara - Rich Thorium Vein'),
(1058003, 2035, 'Azshara - Rich Thorium Vein');

-- Missing spawns in Burning Steppes
-- 1066001 - 1068001	Burning Steppes - Mineral Nodes
-- 2007	61	Master Mineral Pool - Burning Steppes
DELETE FROM `gameobject` where `guid` between 1066001 AND 1066004 AND `id` IN (175404,177388);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(1066001, 175404, 0, -7832, -1379.85, 159.736, 5.2709, 0, 0, -0.484809, 0.87462, 2700, 2700, 255, 1), -- pool 6164
(1066002, 175404, 0, -8101.87, -1042.32, 141.002, 4.24115, 0, 0, -0.85264, 0.522499, 2700, 2700, 255, 1),
(1066003, 175404, 0, -7671.85, -2192.12, 140.339, 4.04917, 0, 0, -0.898793, 0.438373, 2700, 2700, 255, 1),
(1066004, 175404, 0, -7611.14, -2387.1, 137.676, 6.14356, 0, 0, -0.0697555, 0.997564, 2700, 2700, 255, 1);

DELETE FROM `pool_gameobject` where `guid` between 1066001 AND 1066004;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(1066001, 6164, 'Burning Steppes - Rich Thorium Vein'), -- 2007
(1066002, 2007, 'Burning Steppes - Rich Thorium Vein'),
(1066003, 2007, 'Burning Steppes - Rich Thorium Vein'),
(1066004, 2007, 'Burning Steppes - Rich Thorium Vein');

-- Missing spawns in Silithus
-- 1078001 - 1080001	Silithus - Mineral Nodes
-- 2049	21	Master Mineral Pool - Silithus (Ooze Covered Mineral GOs)
DELETE FROM `gameobject` where `guid` between 1078001 AND 1078005 AND `id` = 177388;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(1078001, 177388, 1, -8134.32, 382.409, -69.2152, 2.68781, 0, 0, 0.97437, 0.224951, 2700, 2700, 255, 1), -- Ooze Covered Rich Thorium Vein
(1078002, 177388, 1, -7574.46, 1753.05, -42.2235, 5.16618, 0, 0, -0.529919, 0.848048, 2700, 2700, 255, 1),
(1078003, 177388, 1, -7515.65, 1533.93, -54.6314, 1.16937, 0, 0, 0.551936, 0.833886, 2700, 2700, 255, 1),
(1078004, 177388, 1, -7414.58, 1333.6, -89.3359, 1.81514, 0, 0, 0.788011, 0.615662, 2700, 2700, 255, 1),
(1078005, 177388, 1, -7358.18, 1271.68, -85.4734, 5.93412, 0, 0, -0.173648, 0.984808, 2700, 2700, 255, 1);

DELETE FROM `pool_gameobject` where `guid` between 1078001 AND 1078005;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `description`) VALUES
(1078001, 2049, 'Silithus - Rich Thorium Vein'),
(1078002, 2049, 'Silithus - Rich Thorium Vein'),
(1078003, 2049, 'Silithus - Rich Thorium Vein'),
(1078004, 2049, 'Silithus - Rich Thorium Vein'),
(1078005, 2049, 'Silithus - Rich Thorium Vein');

-- End of migration.

