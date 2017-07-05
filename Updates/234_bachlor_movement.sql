-- ----------------------------------------------------------
-- Bach'lor (Entry 18258)
-- ----------------------------------------------------------

-- Linking
DELETE FROM `creature_linking_template` WHERE `master_entry`=18258;
INSERT INTO `creature_linking_template` (`entry`,`map`,`master_entry`,`flag`,`search_range`)VALUES
(17130,530,18258,512,25), -- Stag 
(18964,530,18258,512,35), -- Injured Talbuk
(17131,530,18258,512,20); -- Thorngrazer 

UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid` IN (59730,59728,68109,68110,59727,59729,59972,59974,59973);

-- Set the movement speed of Bach'lor to the same as his followers. Otherwise he will just run away from them
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=18258; -- Old value: 1.48
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=18964; -- Old value: 1.125

-- Update spawnpoints
UPDATE `creature` SET `position_x`=-1915,`position_y`=8854,`position_z`=30.885,`orientation`=0 WHERE `guid`=65528; -- Bach'lor
UPDATE `creature` SET `position_x`=-1925,`position_y`=8854,`position_z`=30.885,`orientation`=0 WHERE `guid`=59972; -- Thorngrazer 1
UPDATE `creature` SET `position_x`=-1925,`position_y`=8846,`position_z`=30.885,`orientation`=0 WHERE `guid`=59973; -- Thorngrazer 2
UPDATE `creature` SET `position_x`=-1925,`position_y`=8862,`position_z`=32.175,`orientation`=0 WHERE `guid`=59974; -- Thorngrazer 3
UPDATE `creature` SET `position_x`=-1931,`position_y`=8858,`position_z`=32.000,`orientation`=0 WHERE `guid`=59727; -- Talbuk Stag 1
UPDATE `creature` SET `position_x`=-1931,`position_y`=8850,`position_z`=30.885,`orientation`=0 WHERE `guid`=59728; -- Talbuk Stag 2
UPDATE `creature` SET `position_x`=-1937,`position_y`=8859,`position_z`=31.885,`orientation`=0 WHERE `guid`=59729; -- Talbuk Stag 3
UPDATE `creature` SET `position_x`=-1937,`position_y`=8849,`position_z`=30.885,`orientation`=0 WHERE `guid`=59730; -- Talbuk Stag 4
UPDATE `creature` SET `position_x`=-1943,`position_y`=8858,`position_z`=31.885,`orientation`=0 WHERE `guid`=68109; -- Injured Talbuk 1
UPDATE `creature` SET `position_x`=-1943,`position_y`=8850,`position_z`=30.885,`orientation`=0 WHERE `guid`=68110; -- Injured Talbuk 2

-- Random movement at some points
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(6552801,6552802,6552803);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
-- Currently can't be used because upon setting waypoint movement, Bach'lor will always reset to waypoint 1
-- (6552801,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Bachlor - Pause waypoints'),
-- (6552801,1,20,1,8,0,0,8,0,0,0,0,0,0,0,0,'Bachlor - Random movement around current position'),
-- (6552801,29,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'Bachlor - Waypoint movement'),
-- (6552801,30,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bachlor - UnPause waypoints'),
(6552802,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Bachlor - Set Run'),
(6552803,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Bachlor - Set Walk');

-- Pathing for  Entry: 18258 'TDB FORMAT' 
SET @ENTRY := 18258;
SET @GUID  := 65528;
SET @POINT := 0;
UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid`=@GUID;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=@ENTRY;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@ENTRY,@POINT := @POINT + '1',-1853.324,8843.785,30.09974,0,0,100), -- 13:07:17
(@ENTRY,@POINT := @POINT + '1',-1807.557,8834.994,29.25954,0,0,100), -- 13:07:30
(@ENTRY,@POINT := @POINT + '1',-1778.889,8832.211,28.83184,5000,0,100), -- 13:07:58 -- 6552801
-- ↓ Workaround instead of random movement ↓
(@ENTRY,@POINT := @POINT + '1',-1776.889,8837.211,28.83184,9000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1773.889,8833.211,28.83184,6000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1775.889,8828.211,28.83184,1000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1785.889,8830.211,28.83184,5000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1777.889,8835.211,28.83184,9000,0,100),
-- ↑
(@ENTRY,@POINT := @POINT + '1',-1722.28,8819.484,33.3289,0,0,100), -- 13:08:48
(@ENTRY,@POINT := @POINT + '1',-1702.276,8815.271,33.32148,0,0,100), -- 13:09:08
(@ENTRY,@POINT := @POINT + '1',-1679.725,8809.788,37.99786,0,0,100), -- 13:09:14
(@ENTRY,@POINT := @POINT + '1',-1665.328,8807.191,38.86504,0,0,100), -- 13:09:25
(@ENTRY,@POINT := @POINT + '1',-1627.726,8792.098,36.82252,5000,0,100), -- 13:09:33 -- 6552801
-- ↓ Workaround instead of random movement ↓
(@ENTRY,@POINT := @POINT + '1',-1625.726,8796.098,36.82252,9000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1622.726,8787.098,36.82252,6000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1631.726,8790.098,36.82252,1000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1622.726,8794.098,36.82252,5000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1629.726,8796.098,36.82252,9000,0,100),
-- ↑
(@ENTRY,@POINT := @POINT + '1',-1627.726,8792.098,36.82252,0,6552802,100),
(@ENTRY,@POINT := @POINT + '1',-1627.726,8792.098,36.82252,0,0,100), -- 13:09:33
(@ENTRY,@POINT := @POINT + '1',-1544.211,8763.725,33.05894,0,0,100), -- 13:10:33
(@ENTRY,@POINT := @POINT + '1',-1517.92,8760.383,28.72654,0,0,100),
(@ENTRY,@POINT := @POINT + '1',-1517.92,8760.383,28.72654,0,6552803,100), -- 13:10:41
(@ENTRY,@POINT := @POINT + '1',-1470.43,8750.481,28.02884,5000,0,100), -- 13:10:53 -- 6552801
-- ↓ Workaround instead of random movement ↓
(@ENTRY,@POINT := @POINT + '1',-1475.43,8755.481,28.02884,9000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1472.43,8748.481,28.02884,6000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1473.43,8759.481,28.02884,1000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1467.43,8751.481,28.02884,5000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1472.43,8753.481,28.02884,9000,0,100),
-- ↑
(@ENTRY,@POINT := @POINT + '1',-1425.195,8726.87,21.71577,0,0,100), -- 13:11:46
(@ENTRY,@POINT := @POINT + '1',-1395.229,8717.943,23.6657,0,0,100), -- 13:12:19
(@ENTRY,@POINT := @POINT + '1',-1365.803,8700.389,28.48817,0,6552802,100), -- 13:12:28
(@ENTRY,@POINT := @POINT + '1',-1365.803,8700.389,28.48817,0,0,100),
(@ENTRY,@POINT := @POINT + '1',-1347.923,8663.277,24.94011,0,0,100), -- 13:12:37
(@ENTRY,@POINT := @POINT + '1',-1352.986,8628.97,25.12338,0,0,100), -- 13:12:43
(@ENTRY,@POINT := @POINT + '1',-1345.75,8602.563,22.75222,0,0,100), -- 13:12:46
(@ENTRY,@POINT := @POINT + '1',-1332.214,8589.995,19.76134,0,0,100), -- 13:12:53
(@ENTRY,@POINT := @POINT + '1',-1288.517,8597.396,22.40537,0,0,100), -- 13:12:53
(@ENTRY,@POINT := @POINT + '1',-1247.689,8631.377,32.35799,0,0,100),
(@ENTRY,@POINT := @POINT + '1',-1247.689,8631.377,32.35799,0,6552803,100),
(@ENTRY,@POINT := @POINT + '1',-1247.689,8631.377,32.35799,5000,0,100), -- 13:12:57 -- 6552801
-- ↓ Workaround instead of random movement ↓
(@ENTRY,@POINT := @POINT + '1',-1240.689,8630.377,32.35799,9000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1242.689,8627.377,32.35799,6000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1252.689,8635.377,32.35799,1000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1250.689,8636.377,32.35799,5000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1245.689,8630.377,32.35799,9000,0,100),
-- ↑
(@ENTRY,@POINT := @POINT + '1',-1221.921,8669.443,38.759,0,0,100), -- 13:13:42
(@ENTRY,@POINT := @POINT + '1',-1230.986,8689.392,37.48727,0,0,100), -- 13:14:04
(@ENTRY,@POINT := @POINT + '1',-1246.518,8711.414,34.55711,0,0,100), -- 13:14:13
(@ENTRY,@POINT := @POINT + '1',-1264.723,8731.359,32.45301,0,0,100), -- 13:14:23
(@ENTRY,@POINT := @POINT + '1',-1283.211,8742.08,35.1921,0,0,100), -- 13:14:34
(@ENTRY,@POINT := @POINT + '1',-1302.945,8740.64,34.15536,0,0,100), -- 13:14:42
(@ENTRY,@POINT := @POINT + '1',-1328.931,8730.213,29.98804,0,0,100), -- 13:14:52
(@ENTRY,@POINT := @POINT + '1',-1359.769,8736.244,28.62923,0,0,100), -- 13:15:02
(@ENTRY,@POINT := @POINT + '1',-1374.585,8757.733,31.23441,5000,0,100), -- 13:15:15 -- 6552801
-- ↓ Workaround instead of random movement ↓
(@ENTRY,@POINT := @POINT + '1',-1370.585,8755.733,31.23441,9000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1376.585,8759.733,31.23441,6000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1373.585,8752.733,31.23441,1000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1368.585,8755.733,31.23441,5000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1377.585,8752.733,31.23441,9000,0,100),
-- ↑
(@ENTRY,@POINT := @POINT + '1',-1378.192017,8802.869141,34.409225,0,0,100), -- 13:16:06
(@ENTRY,@POINT := @POINT + '1',-1396.674,8830.664,29.17865,0,0,100), -- 13:16:11
(@ENTRY,@POINT := @POINT + '1',-1415.894,8849.027,32.91793,0,0,100), -- 13:16:42
(@ENTRY,@POINT := @POINT + '1',-1439.048,8862.957,37.71593,0,0,100), -- 13:16:51
(@ENTRY,@POINT := @POINT + '1',-1457.388,8872.232,37.3876,0,0,100), -- 13:17:01
(@ENTRY,@POINT := @POINT + '1',-1481.634,8894.106,41.19839,0,0,100), -- 13:02:37
(@ENTRY,@POINT := @POINT + '1',-1491.279,8909.655,43.60288,0,0,100), -- 13:02:49
(@ENTRY,@POINT := @POINT + '1',-1505.115,8929.373,42.08359,0,0,100), -- 13:02:59
(@ENTRY,@POINT := @POINT + '1',-1519.289,8943.564,38.27998,0,6552802,100), -- 13:03:14
(@ENTRY,@POINT := @POINT + '1',-1519.289,8943.564,38.27998,0,0,100),
(@ENTRY,@POINT := @POINT + '1',-1581.565,8968.285,39.17889,0,0,100), -- 13:03:25
(@ENTRY,@POINT := @POINT + '1',-1619.783,8971.953,41.27372,0,0,100), -- 13:03:30
(@ENTRY,@POINT := @POINT + '1',-1655.179,8964.685,43.4279,0,0,100), -- 13:03:33
(@ENTRY,@POINT := @POINT + '1',-1678.577,8957.195,39.42907,0,0,100), -- 13:03:43
(@ENTRY,@POINT := @POINT + '1',-1721.105,8963.633,48.24629,0,0,100), -- 13:03:43
(@ENTRY,@POINT := @POINT + '1',-1759.582,8971.582,58.49213,0,0,100), -- 13:03:47
(@ENTRY,@POINT := @POINT + '1',-1763.973,8972.37,58.62778,0,0,100), -- 13:03:59
(@ENTRY,@POINT := @POINT + '1',-1759.463,8944.176,58.30365,0,0,100),
(@ENTRY,@POINT := @POINT + '1',-1759.463,8944.176,58.30365,0,6552803,100),
(@ENTRY,@POINT := @POINT + '1',-1759.463,8944.176,58.30365,5000,0,100), -- 13:03:59 -- 6552801
-- ↓ Workaround instead of random movement ↓
(@ENTRY,@POINT := @POINT + '1',-1755.463,8942.176,58.30365,9000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1762.463,8940.176,58.30365,6000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1765.463,8945.176,58.30365,1000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1756.463,8948.176,58.30365,5000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1759.463,8949.176,58.30365,9000,0,100),
-- ↑
(@ENTRY,@POINT := @POINT + '1',-1782.382,8980.544,54.58898,0,0,100), -- 13:04:16
(@ENTRY,@POINT := @POINT + '1',-1794.694092,8981.319336,50.397305,0,0,100),
(@ENTRY,@POINT := @POINT + '1',-1809.132,8982.399,46.16508,0,0,100), -- 13:04:44
(@ENTRY,@POINT := @POINT + '1',-1815.578735,8976.117188,41.797672,0,0,100),
(@ENTRY,@POINT := @POINT + '1',-1830.365,8948.427,39.76588,0,0,100), -- 13:04:51
(@ENTRY,@POINT := @POINT + '1',-1849.443,8918.301,37.4994,0,0,100), -- 13:05:04
(@ENTRY,@POINT := @POINT + '1',-1853.802,8911.711,37.22044,0,0,100), -- 13:05:19
(@ENTRY,@POINT := @POINT + '1',-1900.892,8888.019,37.02385,0,0,100), -- 13:05:30
(@ENTRY,@POINT := @POINT + '1',-1904.156,8887.938,37.14519,0,0,100), -- 13:05:41
(@ENTRY,@POINT := @POINT + '1',-1947.176,8879.732,36.11081,5000,0,100), -- 13:06:04 -- 6552801
-- ↓ Workaround instead of random movement ↓
(@ENTRY,@POINT := @POINT + '1',-1945.176,8876.732,36.11081,9000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1943.176,8874.732,36.11081,6000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1950.176,8878.732,36.11081,1000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1951.176,8882.732,36.11081,5000,0,100),
(@ENTRY,@POINT := @POINT + '1',-1946.176,8884.732,36.11081,9000,0,100),
-- ↑
(@ENTRY,@POINT := @POINT + '1',-1875.973,8847.949,30.94032,0,0,100); -- 13:07:02


