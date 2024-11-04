/* DBScriptData
DBName: Hellfire Citadel - Hellfire Ramparts
DBScriptName: instance_ramparts
DB%Complete: 90
DBComment:
* CGUID+92 is probably a pre nerf thing or just pserver imagination
EndDBScriptData */

SET @CGUID := 5430000; -- creatures
SET @OGUID := 5430000; -- gameobjects
SET @PGUID := 48200; -- pools
SET @SGGUID := 5430000;

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+17, 1, -1278.8485, 1635.3927, 91.69746, 100, 1, 1000),
(@CGUID+17, 2, -1275.3717, 1637.425, 91.674934, 100, 0, 0),
(@CGUID+17, 3, -1274.4514, 1641.7346, 91.65861, 100, 0, 0),
(@CGUID+17, 4, -1277.1711, 1645.7096, 91.660934, 3.298672199249267578, 22000, 1173),
(@CGUID+17, 5, -1274.5774, 1639.5049, 91.66535, 100, 1, 1000),
(@CGUID+17, 6, -1277.2129, 1635.1791, 91.69008, 100, 0, 0),
(@CGUID+17, 7, -1282.0494, 1636.7952, 91.7092, 100, 0, 0),
(@CGUID+17, 8, -1283.092, 1639.5751, 91.70664, 0.907571196556091308, 26000, 1173),
(@CGUID+21, 1, -1334.42, 1660.69, 68.7547, 3.5409, 0, 0),
(@CGUID+21, 2, -1326.84, 1663.61, 68.8289, 0.341192, 0, 0),
(@CGUID+21, 3, -1313.2, 1668.25, 66.2427, 0.20846, 0, 0),
(@CGUID+21, 4, -1290.07, 1673.45, 68.5136, 6.26309, 0, 0),
(@CGUID+21, 5, -1279.85, 1671.76, 68.6955, 5.967, 0, 0),
(@CGUID+21, 6, -1288.67, 1672.97, 68.656, 2.98955, 0, 0),
(@CGUID+21, 7, -1306.05, 1669.69, 65.6492, 3.2668, 0, 0),
(@CGUID+21, 8, -1324.36, 1664.25, 68.4431, 3.34927, 0, 0),
(@CGUID+24, 1, -1238.3069, 1451.4617, 68.58898, 0, 0, 0), 
(@CGUID+24, 2, -1226.0465, 1446.7372, 68.58976, 0, 0, 0), 
(@CGUID+24, 3, -1207.0695, 1450.5236, 68.5435, 0, 0, 0), 
(@CGUID+24, 4, -1188.2057, 1444.8236, 68.47277, 0, 0, 0), 
(@CGUID+24, 5, -1181.6246, 1438.734, 68.45864, 4.799655437469482421, 30000, 1173), 
(@CGUID+24, 6, -1185.3306, 1448.2402, 68.44072, 0, 0, 0), 
(@CGUID+24, 7, -1202.0348, 1456.1368, 68.50629, 0, 0, 0), 
(@CGUID+24, 8, -1222.9464, 1452.4801, 68.58176, 0, 0, 0), 
(@CGUID+24, 9, -1236.7776, 1455.8868, 68.58315, 0, 0, 0), 
(@CGUID+24, 10, -1240.8739, 1452.2563, 68.58904, 0, 0, 0), 
(@CGUID+24, 11, -1240.3761, 1447.158, 68.59488, 5.113814830780029296, 30000, 1173),
(@CGUID+25, 1, -1184.5756, 1472.6062, 68.45441, 0, 0, 0), 
(@CGUID+25, 2, -1180.1951, 1465.7266, 68.44291, 0, 0, 0), 
(@CGUID+25, 3, -1173.5157, 1462.2576, 68.43075, 0, 0, 0), 
(@CGUID+25, 4, -1167.0419, 1463.8895, 68.422775, 0, 0, 0), 
(@CGUID+25, 5, -1161.6201, 1472.373, 68.42154, 0, 0, 0), 
(@CGUID+25, 6, -1157.7557, 1475.3325, 68.4183, 0.191986218094825744, 27000, 1173),
(@CGUID+25, 7, -1164.9305, 1463.3613, 68.419365, 0, 0, 0), 
(@CGUID+25, 8, -1175.4362, 1456.6539, 68.42852, 0, 0, 0), 
(@CGUID+25, 9, -1183.7673, 1461.038, 68.44533, 0, 0, 0), 
(@CGUID+25, 10, -1183.5156, 1471.1752, 68.451805, 0, 0, 0), 
(@CGUID+25, 11, -1185.3466, 1473.9941, 68.456566, 0, 0, 0), 
(@CGUID+25, 12, -1190.7657, 1474.8738, 68.46495, 2.338741064071655273, 27000, 1173);

INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(17307, 0, 1, -1363.894, 1728.0319, 105.86549, 100, 0, 0),
(17307, 0, 2, -1354.9723, 1777.879, 104.56, 100, 0, 0),
(17307, 0, 3, -1385.5059, 1798.4401, 108.83773, 100, 0, 0),
(17307, 0, 4, -1419.1029, 1788.7205, 104.56522, 100, 0, 0),
(17307, 0, 5, -1443.861, 1776.3774, 105.23187, 100, 0, 0),
(17307, 0, 6, -1463.9537, 1736.0446, 111.84299, 100, 0, 0),
(17307, 0, 7, -1437.8225, 1705.5374, 104.95408, 100, 0, 0),
(17307, 0, 8, -1410.6858, 1693.4484, 104.06523, 100, 0, 0),
(17307, 0, 9, -1378.4606, 1698.2485, 104.06523, 100, 0, 0);

INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+16, 0, 0, 1, 173, 0, NULL), -- Bonechewer Hungerer
(@CGUID+46, 0, 0, 0, 0, 0, NULL), -- Bleeding Hollow Archer
(@CGUID+47, 0, 0, 0, 0, 0, NULL), -- Bleeding Hollow Archer
(@CGUID+91, 0, 0, 1, 0, 0, '8734'), -- Bleeding Hollow Scryer
-- (@CGUID+92, 0, 0, 1, 0, 0, '8734'), -- Bleeding Hollow Scryer
(@CGUID+93, 0, 0, 1, 0, 0, '8734'), -- Bleeding Hollow Scryer
(@CGUID+94, 0, 0, 1, 0, 0, '8734'), -- Bleeding Hollow Scryer
(@CGUID+95, 0, 0, 1, 0, 0, '8734'), -- Bleeding Hollow Scryer
(@CGUID+96, 0, 0, 1, 0, 0, '8734'), -- Bleeding Hollow Scryer
(@CGUID+97, 0, 0, 1, 0, 0, '8734'), -- Bleeding Hollow Scryer
(@CGUID+98, 0, 0, 1, 0, 0, '8734'); -- Bleeding Hollow Scryer

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(17259, 0, 0, 1, 0, 0, NULL), -- Bonechewer Hungerer
(17264, 0, 0, 1, 0, 0, '18950'), -- Bonechewer Ravener
(17269, 0, 0, 0, 0, 0, NULL), -- Bleeding Hollow Darkcaster
(17270, 0, 0, 2, 0, 0, NULL), -- Bleeding Hollow Archer
(17271, 0, 0, 1, 0, 0, NULL), -- Bonechewer Destroyer
(17280, 0, 0, 1, 0, 0, '18950'), -- Shattered Hand Warhound
(17306, 0, 0, 1, 0, 0, NULL), -- Watchkeeper Gargolmar
(17307, 0, 0, 1, 0, 0, NULL), -- Vazruden the Herald
(17308, 0, 0, 1, 0, 0, NULL), -- Omor the Unscarred
(17309, 0, 0, 1, 0, 0, NULL), -- Hellfire Watcher
(17455, 0, 0, 1, 0, 0, '18950'), -- Bonechewer Beastmaster
(17517, 0, 0, 1, 0, 0, NULL); -- Hellfire Sentry

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(17517, 543, 17536, 133, 0), -- Hellfire Sentry -> Nazan
(17540, 543, 17308, 12304, 0); -- Fiendish Hound -> Omor the Unscarred

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 17259, 543, 3, -1295.73, 1585.1, 91.8061, 1.69297, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+2, 17259, 543, 3, -1264.72, 1645, 92.2821, 3.58973, 7200, 7200, 0, 2), -- Bonechewer Hungerer
(@CGUID+3, 17259, 543, 3, -1263.24, 1641.83, 92.1805, 3.58973, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+4, 17259, 543, 3, -1324.93, 1661.38, 93.0835, 5.34654, 7200, 7200, 0, 2), -- Bonechewer Hungerer
(@CGUID+5, 17259, 543, 3, -1328.64, 1658.68, 93.0325, 5.43294, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+6, 17259, 543, 3, -1329.57, 1667.08, 68.7185, 3.63028, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+7, 17259, 543, 3, -1326.74, 1659.26, 69.0985, 3.49066, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+8, 17259, 543, 3, -1285.47, 1678.21, 68.6203, 6.14356, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+9, 17259, 543, 3, -1252.19, 1596.7, 68.6478, 5.75314, 7200, 7200, 3, 1), -- Bonechewer Hungerer
(@CGUID+10, 17259, 543, 3, -1257.59, 1579.4, 68.6652, 5.88977, 7200, 7200, 3, 1), -- Bonechewer Hungerer
(@CGUID+11, 17259, 543, 3, -1232.975, 1475.3254, 68.56, 3.747, 7200, 7200, 3, 1), -- Bonechewer Hungerer
(@CGUID+12, 17259, 543, 3, -1218.142, 1464.134, 68.565, 4.171, 7200, 7200, 3, 1), -- Bonechewer Hungerer
(@CGUID+13, 17259, 543, 3, -1206.08, 1440.92, 68.6282, 2.16421, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+14, 17259, 543, 3, -1207.7, 1533.9, 68.6406, 0.680678, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+15, 17259, 543, 3, -1216.89, 1545.05, 68.6415, 0.488692, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+16, 17259, 543, 3, -1293.2, 1493.8, 68.6832, 3.50811, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+17, 17259, 543, 3, -1276.92, 1640.51, 91.6726, 2.69189, 7200, 7200, 0, 2), -- Bonechewer Hungerer
(@CGUID+18, 17259, 543, 3, -1286.73, 1669.91, 68.9444, 6.10865, 7200, 7200, 0, 0), -- Bonechewer Hungerer
(@CGUID+19, 17264, 543, 3, -1309.77, 1619.39, 91.7513, 4.32237, 7200, 7200, 0, 2), -- Bonechewer Ravener
(@CGUID+20, 17264, 543, 3, -1257.71, 1651, 67.9137, 1.8753, 7200, 7200, 0, 2), -- Bonechewer Ravener
(@CGUID+21, 17264, 543, 3, -1323.23, 1663.07, 68.4011, 3.48722, 7200, 7200, 0, 2), -- Bonechewer Ravener
(@CGUID+22, 17264, 543, 3, -1172.88, 1442.51, 68.4986, 2.1293, 7200, 7200, 0, 0), -- Bonechewer Ravener
(@CGUID+23, 17455, 543, 3, -1282.9, 1546.56, 68.6685, 0.991133, 7200, 7200, 9, 1), -- Bonechewer Beastmaster
(@CGUID+24, 17264, 543, 3, -1240.97, 1446.21, 68.5984, 5.1549, 7200, 7200, 0, 2), -- Bonechewer Ravener
(@CGUID+25, 17264, 543, 3, -1157.34, 1475.44, 68.4187, 0.224954, 7200, 7200, 0, 2), -- Bonechewer Ravener
(@CGUID+26, 0, 543, 3, -1241.07, 1623.38, 68.575, 2.40855, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+27, 0, 543, 3, -1273.19, 1654.71, 69.2056, 1.0472, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+28, 17269, 543, 3, -1298.65, 1638.98, 91.8292, 3.9968, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+29, 17269, 543, 3, -1288.11, 1637.25, 91.816, 4.95674, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+30, 17269, 543, 3, -1283.74, 1486.18, 68.676, 0.0698132, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+31, 17269, 543, 3, -1197.73, 1433.35, 68.6011, 0.994838, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+32, 17269, 543, 3, -1295.73, 1585.1, 91.8061, 1.69297, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+33, 17269, 543, 3, -1164.29, 1516.02, 68.5104, 2.52918, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+34, 17269, 543, 3, -1162.44, 1688.87, 91.7811, 3.54302, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+35, 17269, 543, 3, -1288.01, 1486.65, 68.6805, 1.27409, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+36, 17269, 543, 3, -1179.86, 1482.07, 68.5401, 1.41372, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+37, 17269, 543, 3, -1179.07, 1488.26, 68.5438, 3.52557, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster
(@CGUID+38, 0, 543, 3, -1242.22, 1649.36, 67.5017, 2.02458, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+39, 0, 543, 3, -1245.98, 1643.12, 68.0523, 3.52557, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+40, 0, 543, 3, -1268.79, 1650.25, 69.0301, 0.488692, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+41, 17270, 543, 3, -1314.25, 1622.67, 91.8317, 6.23083, 7200, 7200, 0, 0), -- Bleeding Hollow Archer
(@CGUID+42, 17270, 543, 3, -1270.92, 1627.81, 91.7535, 3.1765, 7200, 7200, 0, 0), -- Bleeding Hollow Archer
(@CGUID+43, 17270, 543, 3, -1270.05, 1622.27, 91.7561, 3.29867, 7200, 7200, 0, 0), -- Bleeding Hollow Archer
(@CGUID+44, 0, 543, 3, -1238.36, 1612.97, 68.5569, 4.10152, 7200, 7200, 0, 0), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+45, 17270, 543, 3, -1317.64, 1614.6, 91.8313, 5.34071, 7200, 7200, 0, 0), -- Bleeding Hollow Archer
(@CGUID+46, 17270, 543, 3, -1148.55, 1497.48, 68.4854, 3.08923, 7200, 7200, 0, 0), -- Bleeding Hollow Archer
(@CGUID+47, 17270, 543, 3, -1148.28, 1511.81, 68.4805, 0.0349066, 7200, 7200, 0, 0), -- Bleeding Hollow Archer
(@CGUID+48, 17271, 543, 3, -1244.97, 1646.42, 67.7663, 2.51327, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+49, 17271, 543, 3, -1242.73, 1616.46, 68.5907, 3.35103, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+50, 17271, 543, 3, -1297.74, 1588.57, 91.8306, 4.7473, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+51, 17271, 543, 3, -1269.61, 1653.95, 69.0822, 0.785398, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+52, 17271, 543, 3, -1276.78, 1537.09, 68.6495, 1.67552, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+53, 17271, 543, 3, -1270.76, 1538.25, 68.64, 0.802851, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+54, 17271, 543, 3, -1280.52, 1479.58, 68.6807, 6.07375, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+55, 17271, 543, 3, -1199.85, 1440.53, 68.5998, 0.715585, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+56, 17271, 543, 3, -1184.12, 1485.16, 68.5488, 6.02139, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+57, 17271, 543, 3, -1149.79, 1503.79, 68.4842, 2.82743, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+58, 17271, 543, 3, -1264.97, 1589, 92.4668, 5.68977, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+59, 17271, 543, 3, -1259.32, 1597.83, 92.1066, 5.49779, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+60, 17271, 543, 3, -1273.85, 1624.12, 91.7765, 3.33, 7200, 7200, 3, 1), -- Bonechewer Destroyer
(@CGUID+61, 17271, 543, 3, -1314.38, 1618.02, 91.8325, 5.25344, 7200, 7200, 3, 1), -- Bonechewer Destroyer
(@CGUID+62, 17280, 543, 3, -1311.65, 1620.14, 91.7513, 4.32394, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+63, 17280, 543, 3, -1301.86, 1587.45, 91.8652, 1.37881, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+64, 17280, 543, 3, -1254.69, 1651.98, 67.6227, 1.89886, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+65, 17280, 543, 3, -1261.15, 1649.92, 68.245, 1.80854, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+66, 17280, 543, 3, -1296.52, 1636.16, 91.8307, 0.506145, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+67, 17280, 543, 3, -1307.94, 1618.83, 91.7515, 4.36804, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+68, 17280, 543, 3, -1254.85, 1590.79, 68.6466, 0.244346, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+69, 17280, 543, 3, -1256.33, 1585.519, 68.6399, 5.75958, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+70, 17280, 543, 3, -1228.74, 1472.23, 68.6445, 3.7001, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+71, 17280, 543, 3, -1223.48, 1468.29, 68.6485, 4.08407, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+72, 17280, 543, 3, -1202.69, 1436.53, 68.6192, 1.36136, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+73, 17280, 543, 3, -1194.79, 1437.5, 68.5809, 2.02458, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+74, 17280, 543, 3, -1155.09, 1492.17, 68.5042, 2.96706, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+75, 17280, 543, 3, -1154.35, 1486.25, 68.5058, 3.4383, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+76, 17280, 543, 3, -1294.45, 1589.44, 91.829, 2.25147, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+77, 17280, 543, 3, -1292.06, 1637.09, 91.8287, 4.79966, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+78, 17280, 543, 3, -1177.96, 1444.13, 68.5071, 3.00197, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+79, 17280, 543, 3, -1173.8, 1448.45, 68.5043, 2.1293, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+80, 17280, 543, 3, -1290.56, 1536.05, 68.5896, 1.85287, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+81, 17280, 543, 3, -1297.28, 1534.1, 68.6081, 1.85287, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+82, 17281, 543, 3, -1265.78, 1562.26, 68.6645, 0.628319, 7200, 7200, 0, 0), -- Bonechewer Ripper
(@CGUID+83, 17281, 543, 3, -1240.25, 1564.98, 91.1801, 5.044, 7200, 7200, 0, 0), -- Bonechewer Ripper
(@CGUID+84, 17306, 543, 3, -1165.06262, 1515.9311, 68.5005, 3.07122, 86400, 86400, 0, 0), -- Watchkeeper Gargolmar
(@CGUID+85, 17307, 543, 3, -1363.894, 1728.0319, 105.86549, 0, 86400, 86400, 0, 3), -- Vazruden the Herald
(@CGUID+86, 17308, 543, 3, -1122.34, 1718.41, 89.4315, 3.75246, 86400, 86400, 0, 0), -- Omor the Unscarred
(@CGUID+87, 17309, 543, 3, -1158.8267, 1512.1246, 68.4998, 3.2404, 7200, 7200, 0, 0), -- Hellfire Watcher
(@CGUID+88, 17309, 543, 3, -1169.3240, 1518.8388, 68.520, 0.9921, 7200, 7200, 0, 0), -- Hellfire Watcher
(@CGUID+89, 17264, 543, 3, -1294.11, 1535.6, 68.5949, 1.86208, 7200, 7200, 0, 2), -- Bonechewer Ravener
(@CGUID+90, 22515, 543, 3, -1453.2988, 1733.9381, 87.31018, 0.76794, 300, 300, 0, 0), -- World Trigger
(@CGUID+91, 17478, 543, 3, -1263.35, 1559.4, 68.6672, 2.40855, 7200, 7200, 0, 0), -- Bleeding Hollow Scryer
-- (@CGUID+92, 17478, 543, 3, -1271.47, 1555.48, 68.5755, 0.812823, 7200, 7200, 0, 0), -- Bleeding Hollow Scryer
(@CGUID+93, 17478, 543, 3, -1268.01, 1565.41, 68.6676, 5.34071, 7200, 7200, 0, 0), -- Bleeding Hollow Scryer
(@CGUID+94, 17478, 543, 3, -1262.52, 1564.9, 68.7313, 3.735, 7200, 7200, 0, 0), -- Bleeding Hollow Scryer
(@CGUID+95, 17478, 543, 3, -1239.34, 1561.17, 91.1172, 1.72788, 7200, 7200, 0, 0), -- Bleeding Hollow Scryer
(@CGUID+96, 17478, 543, 3, -1236.29, 1565.66, 91.2082, 3.22886, 7200, 7200, 0, 0), -- Bleeding Hollow Scryer
(@CGUID+97, 17478, 543, 3, -1241.73, 1569.56, 91.3745, 4.99164, 7200, 7200, 0, 0), -- Bleeding Hollow Scryer
(@CGUID+98, 17478, 543, 3, -1244.17, 1563.01, 91.1261, 0.261799, 7200, 7200, 0, 0), -- Bleeding Hollow Scryer
(@CGUID+99, 17517, 543, 3, -1383.39, 1711.82, 82.7961, 5.67232, 7200, 7200, 0, 0), -- Hellfire Sentry
(@CGUID+100, 17517, 543, 3, -1372.56, 1724.31, 82.967, 5.3058, 7200, 7200, 0, 0), -- Hellfire Sentry
(@CGUID+101, 17271, 543, 3, -1159.4, 1458.33, 68.4912, 2.42601, 7200, 7200, 0, 0), -- Bonechewer Destroyer
(@CGUID+102, 17271, 543, 3, -1155.61, 1464.45, 68.4906, 2.98451, 7200, 7200, 0, 0), -- Bonechewer Destroyer
-- Spawned by Bonechewer Beastmaster
(@CGUID+103, 17280, 543, 3, -1254.019, 1475.32, 68.657, 1.727, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+104, 17280, 543, 3, -1256.654, 1470.34, 68.666, 1.762, 7200, 7200, 0, 0), -- Shattered Hand Warhound
(@CGUID+105, 17280, 543, 3, -1251.409, 1479.62, 68.649, 2.578, 7200, 7200, 0, 0); -- Shattered Hand Warhound

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CGUID+26, 17269), (@CGUID+26, 17270), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+27, 17269), (@CGUID+27, 17270), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+38, 17269), (@CGUID+38, 17270), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+39, 17269), (@CGUID+39, 17270), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+40, 17269), (@CGUID+40, 17270), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@CGUID+44, 17269), (@CGUID+44, 17270); -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer

-- Worker Equipment
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`, `Name`) VALUES (1725901, 1725901, 'Bonechewer Hungerer (17259) - RelayScript (1725901)'); -- Bonechewer Hungerer
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1725901 FROM `creature` WHERE `guid` IN (@CGUID+16,@CGUID+17);
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`, `Name`) VALUES (1726401, 1726401, 'Bonechewer Ravener (17264) - RelayScript (1726401)'); -- Bonechewer Ravener
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1726401 FROM `creature` WHERE `guid` IN (@CGUID+24,@CGUID+25);

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 184179, 543, 3, -1357.3939208984375, 1636.751220703125, 65.54296112060546875, 1.015863299369812011, 0, 0, 0.486371040344238281, 0.873752415180206298, 0, 0), -- Doodad_InstancePortal_PurpleDifficulty01
(@OGUID+2, 184180, 543, 3, -1357.395263671875, 1636.7169189453125, 65.55643463134765625, 1.018955588340759277, 0, 0, 0.487721443176269531, 0.872999310493469238, 0, 0), -- Doodad_InstancePortal_PurpleDifficultyIcon01
(@OGUID+3, 181734, 543, 3, -1166.271728515625, 1453.705322265625, 68.51827239990234375, 1.05222487449645996, 0, 0, 0.502175331115722656, 0.864765822887420654, 300, 300), -- Campfire
(@OGUID+4, 181735, 543, 3, -1189.482177734375, 1437.6258544921875, 68.46414947509765625, 1.05222487449645996, 0, 0, 0.502175331115722656, 0.864765822887420654, 300, 300), -- Bonfire
(@OGUID+5, 181736, 543, 3, -1218.089111328125, 1441.197265625, 68.64153289794921875, 2.497955560684204101, 0, 0, 0.94866180419921875, 0.316292256116867065, 300, 300), -- Campfire
(@OGUID+6, 181737, 543, 3, -1143.0716552734375, 1508.3218994140625, 68.58931732177734375, 1.41679239273071289, 0, 0, 0.650616645812988281, 0.759406328201293945, 300, 300), -- Campfire
(@OGUID+7, 181738, 543, 3, -1136.573974609375, 1507.018310546875, 68.37244415283203125, 1.41679239273071289, 0, 0, 0.650616645812988281, 0.759406328201293945, 300, 300), -- Meat Rack
(@OGUID+8, 185168, 543, 1, -1429.809814453125, 1772.9158935546875, 82.07649993896484375, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, -600, -600), -- Reinforced Fel Iron Chest
(@OGUID+9, 185169, 543, 2, -1429.809814453125, 1772.9158935546875, 82.07649993896484375, 5.044002056121826171, 0, 0, -0.58070278167724609, 0.814115643501281738, -600, -600), -- Reinforced Fel Iron Chest
(@OGUID+10, 0, 543, 1, -1203.0924072265625, 1430.3885498046875, 68.547271728515625, 1.518436193466186523, 0, 0, 0.6883544921875, 0.725374460220336914, 86400, 86400), -- Solid Fel Iron Chest, Bound Fel Iron Chest
(@OGUID+11, 0, 543, 2, -1203.0924072265625, 1430.3885498046875, 68.547271728515625, 1.518436193466186523, 0, 0, 0.6883544921875, 0.725374460220336914, 86400, 86400), -- Bound Adamantite Chest, Solid Adamantite Chest
(@OGUID+12, 0, 543, 1, -1297.5025634765625, 1582.3319091796875, 91.78211212158203125, 0.907570183277130126, 0, 0, 0.438370704650878906, 0.898794233798980712, 86400, 86400), -- Solid Fel Iron Chest, Bound Fel Iron Chest
(@OGUID+13, 0, 543, 2, -1297.5025634765625, 1582.3319091796875, 91.78211212158203125, 0.907570183277130126, 0, 0, 0.438370704650878906, 0.898794233798980712, 86400, 86400); -- Bound Adamantite Chest, Solid Adamantite Chest

INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES
(@OGUID+1, 0, 0), -- Doodad_InstancePortal_PurpleDifficulty01
(@OGUID+2, 0, 0); -- Doodad_InstancePortal_PurpleDifficultyIcon01

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- ============
-- SPAWN GROUPS
-- ============

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Hellfire Ramparts - Bonechewer Hungerer (2)', 0, 0, 0, 1),
(@SGGUID+2, 'Hellfire Ramparts - Bonechewer Hungerer (2)', 0, 0, 0, 1),
(@SGGUID+3, 'Hellfire Ramparts - Bonechewer Destroyer | Bleeding Hollow Darkcaster | Bleeding Hollow Archer (3)', 0, 0, 0, 1),
(@SGGUID+4, 'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 000', 0, 0, 0, 1),
(@SGGUID+5, 'Hellfire Ramparts - Bonechewer Destroyer | Bleeding Hollow Darkcaster | Bleeding Hollow Archer (3)', 0, 0, 0, 1),
(@SGGUID+6, 'Hellfire Ramparts - Bonechewer Destroyer | Bleeding Hollow Darkcaster | Bleeding Hollow Archer (3)', 0, 0, 0, 1),
(@SGGUID+7, 'Hellfire Ramparts - Bonechewer Hungerer | Shattered Hand Warhound (4)', 0, 0, 0, 1),
(@SGGUID+8, 'Hellfire Ramparts - Bonechewer Ripper | Bleeding Hollow Scryer (5)', 0, 0, 0, 1),
(@SGGUID+9, 'Hellfire Ramparts - Bonechewer Beastmaster | Bonechewer Destroyer (3)', 0, 0, 0, 1),
(@SGGUID+10, 'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 001', 0, 0, 0, 1),
(@SGGUID+11, 'Hellfire Ramparts - Bonechewer Hungerer | Bleeding Hollow Darkcaster | Bonechewer Destroyer (4)', 0, 0, 0, 1),
(@SGGUID+12, 'Hellfire Ramparts - Bonechewer Hungerer | Shattered Hand Warhound (4)', 0, 0, 0, 1),
(@SGGUID+13, 'Hellfire Ramparts - Bonechewer Destroyer | Bonechewer Hungerer | Bleeding Hollow Darkcaster | Shattered Hand Warhound (5)', 0, 0, 0, 1),
(@SGGUID+14, 'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 002', 0, 0, 0, 1),
(@SGGUID+15, 'Hellfire Ramparts - Watchkeeper Gargolmar | Hellfire Watcher (3)', 0, 0, @SGGUID+1, 3),
(@SGGUID+16, 'Hellfire Ramparts - Bonechewer Destroyer (2)', 0, 0, 0, 1),
(@SGGUID+17, 'Hellfire Ramparts - Bonechewer Destroyer | Bleeding Hollow Darkcaster (3)', 0, 0, 0, 1),
(@SGGUID+18, 'Hellfire Ramparts - Bonechewer Destroyer | Bleeding Hollow Archer | Shattered Hand Warhound (5)', 0, 0, 0, 1),
(@SGGUID+19, 'Hellfire Ramparts - Bonechewer Hungerer (2)', 0, 0, 0, 1),
(@SGGUID+20, 'Hellfire Ramparts - Bonechewer Ripper | Bleeding Hollow Scryer (5)', 0, 0, 0, 1),
(@SGGUID+21, 'Hellfire Ramparts - Bonechewer Destroyer (2)', 0, 0, 0, 1),
(@SGGUID+22, 'Hellfire Ramparts - Bonechewer Destroyer | Bonechewer Hungerer | Bleeding Hollow Darkcaster | Shattered Hand Warhound (5)', 0, 0, 0, 1),
(@SGGUID+23, 'Hellfire Ramparts - Bonechewer Destroyer | Bleeding Hollow Archer (3)', 0, 0, 0, 1),
(@SGGUID+24, 'Hellfire Ramparts - Bonechewer Destroyer | Bleeding Hollow Archer (3)', 0, 0, 0, 1),
(@SGGUID+25, 'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 003', 0, 0, 0, 1),
(@SGGUID+26, 'Hellfire Ramparts - Bonechewer Hungerer | Bleeding Hollow Darkcaster | Shattered Hand Warhound (5)', 0, 0, 0, 1),
(@SGGUID+27, 'Hellfire Ramparts - Bonechewer Hungerer (2) Patrol 000', 0, 0, 0, 1),
(@SGGUID+28, 'Hellfire Ramparts - Bleeding Hollow Darkcaster (2)', 0, 0, 0, 1),
(@SGGUID+29, 'Hellfire Ramparts - Bonechewer Hungerer (2) Patrol 001', 0, 0, 0, 1),
(@SGGUID+30, 'Hellfire Ramparts - Hellfire Sentry (2)', 0, 0, 0, 1),
(@SGGUID+31, 'Hellfire Ramparts - Bonechewer Ravener (1) Patrol 000', 0, 0, 0, 1),
(@SGGUID+32, 'Hellfire Ramparts - Bonechewer Ravener (1) Patrol 001', 0, 0, 0, 1),
(@SGGUID+33, 'Hellfire Ramparts - Bonechewer Ravener (1) Patrol 002', 0, 0, 0, 1),
(@SGGUID+34, 'Hellfire Ramparts - Omor the Unscarred (1)', 0, 0, 0, 1),
(@SGGUID+35, 'Hellfire Ramparts - Vazruden the Herald (1)', 0, 0, 0, 1),
(@SGGUID+36, 'Hellfire Ramparts (Normal) - Solid Fel Iron Chest, Bound Fel Iron Chest (2)', 1, 1, 0, 0),
(@SGGUID+37, 'Hellfire Ramparts (Heroic) - Bound Adamantite Chest, Solid Adamantite Chest (2)', 1, 1, 0, 0),
-- Spawned by Bonechewer Beast Master
(@SGGUID+38, 'Hellfire Ramparts - Shattered Hand Warhound (3) | Patrol 003', 0, 3, @SGGUID+2, 9);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+36, 184930, 0, 0, 60), -- Solid Fel Iron Chest
(@SGGUID+36, 184931, 0, 0, 40), -- Bound Fel Iron Chest
(@SGGUID+37, 184940, 0, 0, 60), -- Bound Adamantite Chest
(@SGGUID+37, 184941, 0, 0, 40); -- Solid Adamantite Chest

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, @CGUID+7, 0), -- Bonechewer Hungerer
(@SGGUID+1, @CGUID+6, 1), -- Bonechewer Hungerer
(@SGGUID+2, @CGUID+18, 0), -- Bonechewer Hungerer
(@SGGUID+2, @CGUID+8, 1), -- Bonechewer Hungerer
(@SGGUID+3, @CGUID+51, 0), -- Bonechewer Destroyer
(@SGGUID+3, @CGUID+27, 1), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@SGGUID+3, @CGUID+40, 2), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@SGGUID+4, @CGUID+20, 0), -- Bonechewer Ravener
(@SGGUID+4, @CGUID+64, 1), -- Shattered Hand Warhound
(@SGGUID+4, @CGUID+65, 2), -- Shattered Hand Warhound
(@SGGUID+5, @CGUID+48, 0), -- Bonechewer Destroyer
(@SGGUID+5, @CGUID+38, 1), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@SGGUID+5, @CGUID+39, 2), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@SGGUID+6, @CGUID+49, 0), -- Bonechewer Destroyer
(@SGGUID+6, @CGUID+26, 1), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@SGGUID+6, @CGUID+44, 2), -- Bleeding Hollow Darkcaster, Bleeding Hollow Archer
(@SGGUID+7, @CGUID+9, 0), -- Bonechewer Hungerer
(@SGGUID+7, @CGUID+10, 1), -- Bonechewer Hungerer
(@SGGUID+7, @CGUID+68, 2), -- Shattered Hand Warhound
(@SGGUID+7, @CGUID+69, 3), -- Shattered Hand Warhound
(@SGGUID+8, @CGUID+82, 0), -- Bonechewer Ripper
(@SGGUID+8, @CGUID+91, 1), -- Bleeding Hollow Scryer
-- (@SGGUID+8, @CGUID+92, 2), -- Bleeding Hollow Scryer
(@SGGUID+8, @CGUID+93, 2), -- Bleeding Hollow Scryer
(@SGGUID+8, @CGUID+94, 3), -- Bleeding Hollow Scryer
(@SGGUID+9, @CGUID+23, 0), -- Bonechewer Beastmaster
(@SGGUID+9, @CGUID+52, 1), -- Bonechewer Destroyer
(@SGGUID+9, @CGUID+53, 2), -- Bonechewer Destroyer
(@SGGUID+10, @CGUID+89, 0), -- Bonechewer Ravener
(@SGGUID+10, @CGUID+81, 1), -- Shattered Hand Warhound
(@SGGUID+10, @CGUID+80, 2), -- Shattered Hand Warhound
(@SGGUID+11, @CGUID+16, 0), -- Bonechewer Hungerer
(@SGGUID+11, @CGUID+35, 1), -- Bleeding Hollow Darkcaster
(@SGGUID+11, @CGUID+30, 2), -- Bleeding Hollow Darkcaster
(@SGGUID+11, @CGUID+54, 3), -- Bonechewer Destroyer
(@SGGUID+12, @CGUID+11, 0), -- Bonechewer Hungerer
(@SGGUID+12, @CGUID+12, 1), -- Bonechewer Hungerer
(@SGGUID+12, @CGUID+70, 2), -- Shattered Hand Warhound
(@SGGUID+12, @CGUID+71, 3), -- Shattered Hand Warhound
(@SGGUID+13, @CGUID+55, 0), -- Bonechewer Destroyer
(@SGGUID+13, @CGUID+13, 1), -- Bonechewer Hungerer
(@SGGUID+13, @CGUID+31, 2), -- Bleeding Hollow Darkcaster
(@SGGUID+13, @CGUID+72, 3), -- Shattered Hand Warhound
(@SGGUID+13, @CGUID+73, 4), -- Shattered Hand Warhound
(@SGGUID+14, @CGUID+22, 0), -- Bonechewer Ravener
(@SGGUID+14, @CGUID+78, 1), -- Shattered Hand Warhound
(@SGGUID+14, @CGUID+79, 2), -- Shattered Hand Warhound
(@SGGUID+15, @CGUID+84, 0), -- Watchkeeper Gargolmar
(@SGGUID+15, @CGUID+87, 1), -- Hellfire Watcher
(@SGGUID+15, @CGUID+88, 2), -- Hellfire Watcher
(@SGGUID+16, @CGUID+101, 0), -- Bonechewer Destroyer
(@SGGUID+16, @CGUID+102, 1), -- Bonechewer Destroyer
(@SGGUID+17, @CGUID+56, 0), -- Bonechewer Destroyer
(@SGGUID+17, @CGUID+36, 1), -- Bleeding Hollow Darkcaster
(@SGGUID+17, @CGUID+37, 2), -- Bleeding Hollow Darkcaster
(@SGGUID+18, @CGUID+57, 0), -- Bonechewer Destroyer 
(@SGGUID+18, @CGUID+46, 1), -- Bleeding Hollow Archer
(@SGGUID+18, @CGUID+75, 2), -- Shattered Hand Warhound
(@SGGUID+18, @CGUID+74, 3), -- Shattered Hand Warhound
(@SGGUID+18, @CGUID+47, 4), -- Bleeding Hollow Archer
(@SGGUID+19, @CGUID+14, 0), -- Bonechewer Hungerer
(@SGGUID+19, @CGUID+15, 1), -- Bonechewer Hungerer
(@SGGUID+20, @CGUID+83, 0), -- Bonechewer Ripper
(@SGGUID+20, @CGUID+95, 1), -- Bleeding Hollow Scryer
(@SGGUID+20, @CGUID+96, 2), -- Bleeding Hollow Scryer
(@SGGUID+20, @CGUID+97, 3), -- Bleeding Hollow Scryer
(@SGGUID+20, @CGUID+98, 4), -- Bleeding Hollow Scryer
(@SGGUID+21, @CGUID+58, 0), -- Bonechewer Destroyer
(@SGGUID+21, @CGUID+59, 1), -- Bonechewer Destroyer
(@SGGUID+22, @CGUID+50, 0), -- Bonechewer Destroyer
(@SGGUID+22, @CGUID+76, 1), -- Shattered Hand Warhound
(@SGGUID+22, @CGUID+1, 2), -- Bonechewer Hungerer
(@SGGUID+22, @CGUID+32, 3), -- Bleeding Hollow Darkcaster
(@SGGUID+22, @CGUID+63, 4), -- Shattered Hand Warhound
(@SGGUID+23, @CGUID+60, 0), -- Bonechewer Destroyer
(@SGGUID+23, @CGUID+42, 1), -- Bleeding Hollow Archer
(@SGGUID+23, @CGUID+43, 2), -- Bleeding Hollow Archer
(@SGGUID+24, @CGUID+61, 0), -- Bonechewer Destroyer
(@SGGUID+24, @CGUID+41, 1), -- Bleeding Hollow Archer
(@SGGUID+24, @CGUID+45, 2), -- Bleeding Hollow Archer
(@SGGUID+25, @CGUID+19, 0), -- Bonechewer Ravener
(@SGGUID+25, @CGUID+62, 1), -- Shattered Hand Warhound
(@SGGUID+25, @CGUID+67, 2), -- Shattered Hand Warhound
(@SGGUID+26, @CGUID+17, 0), -- Bonechewer Hungerer (Moving)
(@SGGUID+26, @CGUID+28, 1), -- Bleeding Hollow Darkcaster
(@SGGUID+26, @CGUID+29, 2), -- Bleeding Hollow Darkcaster
(@SGGUID+26, @CGUID+66, 3), -- Shattered Hand Warhound
(@SGGUID+26, @CGUID+77, 4), -- Shattered Hand Warhound
(@SGGUID+27, @CGUID+2, 0), -- Bonechewer Hungerer
(@SGGUID+27, @CGUID+3, 1), -- Bonechewer Hungerer
(@SGGUID+28, @CGUID+33, 0), -- Bleeding Hollow Darkcaster
(@SGGUID+28, @CGUID+34, 1), -- Bleeding Hollow Darkcaster
(@SGGUID+29, @CGUID+4, 0), -- Bonechewer Hungerer
(@SGGUID+29, @CGUID+5, 1), -- Bonechewer Hungerer
(@SGGUID+30, @CGUID+99, 0), -- Hellfire Sentry
(@SGGUID+30, @CGUID+100, 1), -- Hellfire Sentry
(@SGGUID+31, @CGUID+24, 0), -- Bonechewer Ravener
(@SGGUID+32, @CGUID+21, 0), -- Bonechewer Ravener
(@SGGUID+33, @CGUID+25, 0), -- Bonechewer Ravener
(@SGGUID+34, @CGUID+86, 0), -- Omor the Unscarred
(@SGGUID+35, @CGUID+85, 0), -- Vazruden the Herald
(@SGGUID+36, @OGUID+10, -1), -- Solid Fel Iron Chest, Bound Fel Iron Chest
(@SGGUID+36, @OGUID+12, -1), -- Solid Fel Iron Chest, Bound Fel Iron Chest
(@SGGUID+37, @OGUID+11, -1), -- Bound Adamantite Chest, Solid Adamantite Chest
(@SGGUID+37, @OGUID+13, -1), -- Bound Adamantite Chest, Solid Adamantite Chest
-- Spawned by Bonechewer Beast Master
(@SGGUID+38, @CGUID+103, 0), -- Shattered Hand Warhound
(@SGGUID+38, @CGUID+104, 1), -- Shattered Hand Warhound
(@SGGUID+38, @CGUID+105, 2); -- Shattered Hand Warhound

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+4, 2, 3.5, 0, @SGGUID+4, 2, 'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 000'),
(@SGGUID+10, 2, 3.5, 0, @SGGUID+10, 2, 'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 001'),
(@SGGUID+15, 2, 3, 0, @SGGUID+15, 2, 'Hellfire Ramparts - Watchkeeper Gargolmar | Hellfire Watcher (3)'),
(@SGGUID+25, 2, 4, 0, @SGGUID+25, 2, 'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 003'),
(@SGGUID+27, 2, 3.5, 0, @SGGUID+27, 2, 'Hellfire Ramparts - Bonechewer Hungerer (2) Patrol 000'),
(@SGGUID+29, 2, 4, 0, @SGGUID+29, 2, 'Hellfire Ramparts - Bonechewer Hungerer (2) Patrol 001'),
(@SGGUID+38, 3, 3, 0, @SGGUID+38, 2, 'Hellfire Ramparts - Shattered Hand Warhound (3) Patrol 003');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+4,'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 000'),
(@SGGUID+10,'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 001'),
(@SGGUID+15,'Hellfire Ramparts - Watchkeeper Gargolmar | Hellfire Watcher (3)'),
(@SGGUID+25,'Hellfire Ramparts - Bonechewer Ravener | Shattered Hand Warhound (3) Patrol 003'),
(@SGGUID+27,'Hellfire Ramparts - Bonechewer Hungerer (2) Patrol 000'),
(@SGGUID+29,'Hellfire Ramparts - Bonechewer Hungerer (2) Patrol 001'),
(@SGGUID+38,'Hellfire Ramparts - Shattered Hand Warhound (3) Patrol 003');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+4, 1, -1257.71, 1651, 67.9137, 1.8753, 5000, 0),
(@SGGUID+4, 2, -1267.74, 1662.96, 68.787, 2.40937, 0, 0),
(@SGGUID+4, 3, -1249, 1629.44, 68.5386, 4.67525, 0, 0),
(@SGGUID+4, 4, -1246.77, 1593.07, 68.5191, 4.23935, 0, 0),
(@SGGUID+10, 1, -1292.36, 1540.43, 68.5946, 1.10731, 0, 0),
(@SGGUID+10, 2, -1282.12, 1555.41, 68.5931, 0.937666, 0, 0),
(@SGGUID+10, 3, -1269.72, 1570.64, 68.613, 0.862268, 0, 0),
(@SGGUID+10, 4, -1283.81, 1552.44, 68.5924, 4.09497, 0, 0),
(@SGGUID+10, 5, -1293.9, 1538.24, 68.5943, 4.09497, 0, 0),
(@SGGUID+10, 6, -1293.64, 1523.46, 68.5913, 4.72957, 0, 0),
(@SGGUID+10, 7, -1285.84, 1503.83, 68.5807, 5.11127, 0, 0),
(@SGGUID+10, 8, -1263.85, 1479.5, 68.5757, 5.44742, 0, 0),
(@SGGUID+10, 9, -1247.75, 1466.51, 68.5773, 5.59272, 0, 0),
(@SGGUID+10, 10, -1232.82, 1458.5, 68.5782, 5.79064, 0, 0),
(@SGGUID+10, 11, -1210.74, 1453.07, 68.5486, 6.04197, 0, 0),
(@SGGUID+10, 12, -1228.86, 1458.19, 68.5776, 2.953, 0, 0),
(@SGGUID+10, 13, -1244.22, 1466.45, 68.5761, 2.64827, 0, 0),
(@SGGUID+10, 14, -1260.87, 1481.05, 68.5715, 2.3883, 0, 0),
(@SGGUID+10, 15, -1275.45, 1494.73, 68.5715, 2.3883, 0, 0),
(@SGGUID+10, 16, -1283.63, 1505.74, 68.5756, 2.35453, 0, 0),
(@SGGUID+10, 17, -1289.75, 1518.26, 68.5811, 2.10791, 0, 0),
(@SGGUID+10, 18, -1294.24, 1535.83, 68.5937, 1.85266, 0, 0),
(@SGGUID+15, 1, -1167.933, 1476.051, 68.425514,100,0,0),
(@SGGUID+15, 2, -1183.732, 1453.0009, 68.43121,100,0,0),
(@SGGUID+15, 3, -1167.933, 1476.051, 68.425514,100,0,0),
(@SGGUID+15, 4, -1171.5144, 1516.3859, 68.44176,100,0,0),
(@SGGUID+15, 5, -1195.6259, 1538.036, 68.482254,100,0,0),
(@SGGUID+15, 6, -1171.5144, 1516.3859, 68.44176,100,0,0),
(@SGGUID+25, 1, -1309.4183, 1623.6088, 91.74948, 100, 0, 0),
(@SGGUID+25, 2, -1314.9015, 1608.3201, 91.75011, 100, 0, 0),
(@SGGUID+25, 3, -1310.7594, 1595.7067, 91.759705, 100, 0, 0),
(@SGGUID+25, 4, -1291.9258, 1595.945, 91.76623, 100, 0, 0),
(@SGGUID+25, 5, -1278.6345, 1605.2025, 91.76536, 100, 0, 0),
(@SGGUID+25, 6, -1277.678, 1621.9059, 91.76021, 100, 0, 0),
(@SGGUID+25, 7, -1285.1504, 1630.3379, 91.74205, 100, 7000, 1726401),
(@SGGUID+25, 8, -1301.7946, 1634.162, 91.74684, 100, 0, 0),
(@SGGUID+27, 1, -1255.8479, 1649.2667, 93.13297, 100, 0, 0),
(@SGGUID+27, 2, -1232.7164, 1663.3473, 92.40615, 100, 0, 0),
(@SGGUID+27, 3, -1255.7458, 1649.3158, 93.13299, 100, 0, 0),
(@SGGUID+27, 4, -1269.8956, 1642.5133, 91.60827, 100, 0, 0),
(@SGGUID+29, 1, -1324.969, 1660.7915, 93.00998, 0, 0, 0), 
(@SGGUID+29, 2, -1345.5702, 1685.6698, 89.944595, 0, 0, 0),
(@SGGUID+38,1,-1254.019, 1475.32, 68.657,100,100,5),
(@SGGUID+38,2,-1262.1562,1484.3203,68.557724,100,0,0),
(@SGGUID+38,3,-1270.4551,1489.5599,68.560844,100,0,0),
(@SGGUID+38,4,-1278.5851,1494.693,68.56402,100,0,0),
(@SGGUID+38,5,-1284.7661,1501.9167,68.56972,100,0,0),
(@SGGUID+38,6,-1290.1835,1509.6271,68.57712,100,0,0),
(@SGGUID+38,7,-1293.6478,1519.2853,68.580696,100,0,0),
(@SGGUID+38,8,-1295.187,1528.9119,68.58099,100,100,1728001);

DELETE FROM worldstate_name WHERE Id IN (4698,4699,4700, @SGGUID+2);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(4698, 'Hellfire Ramparts - Watchkeeper Gargolmar - Encounter completed'),
(4699, 'Hellfire Ramparts - Omor the Unscarred - Encounter completed'),
(4700, 'Hellfire Ramparts - Vazruden the Herald - Encounter completed'),
(@SGGUID+2, 'Hellfire Ramparts - Bonechewer Beastmaster');

DELETE FROM conditions WHERE condition_entry IN (@SGGUID+1, @SGGUID+2);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@SGGUID+1, 42, 4698, 1, 0, 0, 0, 'Watchkeeper Gargolmar - Encounter completed'),
(@SGGUID+2, 42, @SGGUID+2, 1, 1, 0, 0, 'Bonechewer Beastmaster - Warhound spawn');

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1726401, 1728001);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1726401, 0, 0, 0, 0, 0, 0, 17269, @CGUID+29, 17, 13695, 0, 0, 0, 0, 0, 0, 0, 'Bonechewer Ravener (Hellfire Ramparts) - Yell At Bleeding Hollow Darkcaster'),
(1726401, 0, 0, 36, 0, 0, 0, 17269, @CGUID+29, 17, 0, 0, 0, 0, 0, 0, 0, 0, 'Bonechewer Ravener (Hellfire Ramparts) - Face Bleeding Hollow Darkcaster'),
(1726401, 4000, 0, 0, 0, 0, 0, 17269, @CGUID+29, 19, 13989, 0, 0, 0, 0, 0, 0, 0, 'Bleeding Hollow Darkcaster (Hellfire Ramparts) - Yell At Bonechewer Ravener'),
(1728001, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Hand Warhound - Change Movement'),
(1728001, 0, 1, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Hand Warhound - Combat Zone Pulse');

-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES

DELETE FROM `dbscripts_on_relay` WHERE `id` IN (1725901,1726401, 1745501, 1745502);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1725901, 0, 42, 0, 0, 0, 0, 0, 0, 2028, 11589, 0, 0, 0, 0, 0, 0, '17259 - EquipSet 2'),
(1726401, 0, 42, 0, 0, 0, 0, 0, 0, 2028, 22215, 0, 0, 0, 0, 0, 0, '17264 - EquipSet 2'),
(1745501, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 0, 0, 0, 0, 0, 0, 0, 'Bonechewer Beastmaster - Activate WorldState'),
(1745502, 0, 0, 0, 0, 0, 0, 0, 0, 14001, 0, 0, 0, 0, 0, 0, 0, 'Bonechewer Beastmaster - Yell for Summon'),
(1745502, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 1, 0, 0, 0, 0, 0, 0, 'Bonechewer Beastmaster - Activate WorldState');

-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES


