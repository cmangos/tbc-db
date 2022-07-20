-- Fix gizzletone Caravan Escort Quests
SET @SGUID := 19010; -- spawn_group
SET @PATH := 19010; -- Normal Waypoints 
SET @CORKESCORTPATH := 11625; -- Escort 1 Waypoints ScriptDev waypoint_path will always use creature entry as pathid
SET @RIGGERESCORTPATH := 11626; -- Escort 2 Waypoints ScriptDev waypoint_path will always use creature entry as pathid.

-- Update spawn positions
-- Cork Gizelton
UPDATE `creature` SET `position_x`='-691.4602', `position_y`='1520.0903', `position_z`='90.361115', `orientation`='0.506145',`MovementType`='0' WHERE (`guid`='28714');
-- Rigger Gizelton
UPDATE `creature` SET `position_x`='-694.267', `position_y`='1524.2072', `position_z`='90.361115', `orientation`='0.261799' WHERE (`guid`='28728');
-- Gizelton Caravan Kodo - 1
UPDATE `creature` SET `position_x`='-694.2854', `position_y`='1513.5524', `position_z`='90.4186', `orientation`='5.585053' WHERE (`guid`='27290');
-- Gizelton Caravan Kodo - 2
UPDATE `creature` SET `position_x`='-700.3834', `position_y`='1522.3862', `position_z`='90.37961', `orientation`='4.642575' WHERE (`guid`='27289');

-- On Respawn script, timers based on ptr tests
-- On respawn Rigger Gizleton doesnt have any npc flags, only gets added when on Southside point or at escort.
UPDATE `creature_template` SET `NpcFlags`='0' WHERE (`Entry`='11626');

-- On respawn Cork Gizleton movement gets added after 10 minutes
UPDATE `creature_template` SET MovementType='0' WHERE (`Entry`='11625');

-- Delete old Group Setting
DELETE FROM `creature_linking` WHERE (`master_guid`='27290');
DELETE FROM `creature_linking_template` WHERE (`entry`='11626');

-- Add them into spawn_group
DELETE FROM `spawn_group` WHERE `Id` = @SGUID;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES 
(@SGUID, 'Desolace - Gizelton Caravan', '0', '4', '0', '2');

-- Don't create that formation in db as its temporary formation
DELETE FROM `spawn_group_formation` WHERE `Id` = @SGUID;

DELETE FROM `spawn_group_spawn` WHERE `Id` = @SGUID;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES 
(@SGUID, '28714', '0'),
(@SGUID, '28728', '1'),
(@SGUID, '27290', '2'),
(@SGUID, '27289', '3');

-- Start Script after respawning. Maybe add this to creature_ai_scripts
DELETE FROM creature_spawn_data_template WHERE Entry = '11625';
INSERT INTO `creature_spawn_data_template` (`Entry`, `RelayId`) VALUES ('11625', '11625');
DELETE FROM creature_spawn_data WHERE Guid = '28714';
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES ('28714', '11625');

-- Start Script
DELETE FROM `dbscripts_on_relay` WHERE id = '11625';
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(11625,0,0,10,12245,613000,0,0,0,0,0,0,0,0,0,-692.7433,1522.2029,90.361115,0.558505,0,0,'Cork Gizelton - Spawn Vendor Tron'),
(11625,0,0,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Remove Quest Flag'),
(11625,604000,0,29,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Remove Gossip Flag'),
(11625,604000,0,0,0,0,0,0,0,0,7505,7,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
(11625,615000,1,51,150,@SGUID,0,0,0,0,1,0,0,0,0,10,0,0,0,0,0,'Cork Gizelton - Create Formation'),
(11625,616000,0,20,2,@PATH,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0, 'Cork Gizelton - Change Movement');

-- Delete old Waypoints
DELETE FROM creature_movement_template WHERE `Entry` = '28714';
DELETE FROM creature_movement WHERE `Id` = '11625';

-- Normal Waypoints when not escorting
DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,-675.7278,1517.9236,88.49945,100,0,0),
(@PATH,2,-648.4431,1503.3954,88.49945,100,0,0),
(@PATH,3,-624.2618,1493.4584,88.45714,100,0,0),
(@PATH,4,-593.75134,1483.4001,88.49945,100,0,0),
(@PATH,5,-562.1685,1471.6372,88.94281,100,0,0),
(@PATH,6,-533.4119,1449.5094,88.49945,100,0,0),
(@PATH,7,-520.6191,1421.216,89.20639,100,0,0),
(@PATH,8,-518.6611,1395.0962,89.20639,100,0,0),
(@PATH,9,-519.00665,1369.6803,89.20639,100,0,0),
(@PATH,10,-525.37054,1341.5006,89.20639,100,0,0),
(@PATH,11,-537.02905,1312.3337,89.216896,100,0,0),
(@PATH,12,-550.9216,1293.5024,89.354774,100,0,0),
(@PATH,13,-575.20264,1280.1959,89.229774,100,0,0),
(@PATH,14,-600.5682,1272.9078,89.229774,100,0,0),
(@PATH,15,-628.5193,1261.6598,89.25135,100,0,0),
-- Escort quest 1 22:13:06.217 4min wait time
(@PATH,16,-672.38104,1241.8248,89.29438,100,24000,@PATH+1),
(@PATH,17,-702.0911,1222.1292,90.12284,100,0,0),
(@PATH,18,-744.7477,1200.8258,95.18287,100,0,0),
(@PATH,19,-771.4321,1187.901,98.25634,100,0,0),
(@PATH,20,-803.5311,1179.235,99.54547,100,0,0),
(@PATH,21,-832.5382,1181.3547,99.67047,100,0,0),
(@PATH,22,-862.2913,1184.0946,98.876144,100,0,0),
(@PATH,23,-891.7814,1182.3727,96.35499,100,0,0),
(@PATH,24,-922.99176,1182.1969,92.99359,100,0,0),
(@PATH,25,-952.1483,1182.7887,89.773994,100,0,0),
(@PATH,26,-988.48364,1181.9297,89.788155,100,0,0),
(@PATH,27,-1020.989,1180.2745,89.864685,100,0,0),
(@PATH,28,-1060.42,1186.0337,89.86469,100,0,0), 
(@PATH,29,-1098.744,1188.7026,89.86469,100,0,0),
(@PATH,30,-1138.0618,1191.7788,90.572914,100,0,0),
(@PATH,31,-1182.8483,1200.1156,96.34984,100,0,0),
(@PATH,32,-1226.5039,1205.4863,103.83428,100,0,0),
(@PATH,33,-1268.4879,1222.5908,108.49134,100,0,0),
(@PATH,34,-1313.0289,1233.3356,110.09187,100,0,0),
(@PATH,35,-1356.9825,1227.0181,111.38581,100,0,0),
(@PATH,36,-1391.0237,1212.1951,111.57016,100,0,0),
(@PATH,37,-1426.4119,1195.9067,112.0422,100,0,0),
(@PATH,38,-1463.2031,1182.9951,111.01453,100,0,0),
(@PATH,39,-1501.3677,1191.339,103.48702,100,0,0),
(@PATH,40,-1520.6208,1226.1102,90.0666,100,0,0),
(@PATH,41,-1519.9893,1271.3883,72.58256,100,0,0),
(@PATH,42,-1513.6914,1313.9268,62.165665,100,0,0),
(@PATH,43,-1498.1573,1357.5411,59.049915,100,0,0),
(@PATH,44,-1487.2424,1404.9263,59.049915,100,0,0),
(@PATH,45,-1487.8236,1453.8169,59.049915,100,0,0),
(@PATH,46,-1478.8551,1496.243,59.049915,100,0,0),
(@PATH,47,-1457.328,1537.5143,59.049915,100,0,0),
(@PATH,48,-1444.2316,1576.5026,59.049915,100,0,0),
(@PATH,49,-1454.3466,1618.543,59.049915,100,0,0),
(@PATH,50,-1486.6782,1650.2642,59.049915,100,0,0),
(@PATH,51,-1522.2386,1671.6531,59.04992,100,0,0),
(@PATH,52,-1556.2389,1705.9105,59.04992,100,0,0),
(@PATH,53,-1591.8552,1736.8423,59.049908,100,0,0),
(@PATH,54,-1624.5104,1772.0619,59.049908,100,0,0),
(@PATH,55,-1651.5245,1811.2767,59.015537,100,0,0),
(@PATH,56,-1677.7819,1850.1833,59.051758,100,0,0),
(@PATH,57,-1689.2744,1890.9397,60.205524,100,0,0),
(@PATH,58,-1710.7275,1913.2617,60.63419,100,0,0),
(@PATH,59,-1751.2269,1919.9458,59.05458,100,0,0),
(@PATH,60,-1794.5868,1943.3805,61.032635,100,0,0),
(@PATH,61,-1814.2975,1983.7235,59.057068,100,0,0),
(@PATH,62,-1821.6091,2027.4595,60.435993,100,0,0),
(@PATH,63,-1812.5547,2071.5815,63.22072,100,0,0),
(@PATH,64,-1802.8966,2119.6067,63.560505,100,0,0),
(@PATH,65,-1801.3325,2165.161,60.226727,100,0,0),
(@PATH,66,-1812.3639,2205.6545,59.94646,100,0,0),
(@PATH,67,-1836.678,2242.988,59.94646,100,0,0),
(@PATH,68,-1847.6487,2281.6836,59.94646,100,0,0),
(@PATH,69,-1868.8641,2323.522,59.911495,100,0,0),
(@PATH,70,-1891.9938,2367.3472,60.173267,100,0,0),
(@PATH,71,-1900.2064,2407.6367,59.918755,100,0,0),
(@PATH,72,-1896.8755,2428.1907,59.94646,100,0,0),
(@PATH,73,-1912.046,2443.871,59.94646,100,0,0),
(@PATH,74,-1933.0764,2445.4846,59.94646,100,0,0),
(@PATH,75,-1942.031,2435.7446,60.367874,100,0,0),
(@PATH,76,-1938.1177,2419.8853,60.81385,100,0,0),
-- Southside wait
(@PATH,77,-1924.2578,2408.5117,60.668755,100,616000,@PATH+2),
(@PATH,78,-1904.0231,2395.005,59.857014,100,0,0),
(@PATH,79,-1889.7224,2362.4868,59.929607,100,0,0),
(@PATH,80,-1876.6744,2333.6284,59.929607,100,0,0),
(@PATH,81,-1857.4191,2306.642,59.94646,100,0,0),
(@PATH,82,-1844.5028,2263.2466,59.94646,100,0,0),
(@PATH,83,-1829.3954,2225.2505,59.94646,100,0,0),
(@PATH,84,-1806.38,2200.0608,59.94646,100,0,0),
-- Escort 2
(@PATH,85,-1803.0452,2183.6484,59.94646,100,24000,@PATH+3),
(@PATH,86,-1802.5979,2105.9092,63.560505,100,0,0),
(@PATH,87,-1810.5092,2075.089,63.224747,100,0,0),
(@PATH,88,-1821.3414,2042.4484,61.039787,100,0,0),
(@PATH,89,-1817.6213,2006.4366,59.560993,100,0,0),
(@PATH,90,-1813.1588,1972.1124,59.182068,100,0,0),
(@PATH,91,-1794.0317,1942.0751,60.907635,100,0,0),
(@PATH,92,-1764.0632,1920.613,59.05458,100,0,0),
(@PATH,93,-1723.565,1916.7148,59.593906,100,0,0),
(@PATH,94,-1695.7418,1904.3505,61.188652,100,0,0),
(@PATH,95,-1683.8158,1869.5513,59.07967,100,0,0),
(@PATH,96,-1666.9686,1833.8961,59.051758,100,0,0),
(@PATH,97,-1646.0853,1804.0592,59.015537,100,0,0),
(@PATH,98,-1619.1812,1765.5859,59.049908,100,0,0),
(@PATH,99,-1587.1548,1734.1973,59.049908,100,0,0),
(@PATH,100,-1551.1473,1701.2848,59.04992,100,0,0),
(@PATH,101,-1515.6584,1667.2366,59.04992,100,0,0),
(@PATH,102,-1472.0985,1642.029,59.049915,100,0,0),
(@PATH,103,-1451.7255,1606.0592,59.049915,100,0,0),
(@PATH,104,-1442.3729,1572.0759,59.049915,100,0,0),
(@PATH,105,-1459.1107,1529.909,59.049915,100,0,0),
(@PATH,106,-1478.3303,1491.1677,59.049915,100,0,0),
(@PATH,107,-1490.0026,1454.6869,59.049915,100,0,0),
(@PATH,108,-1486.0092,1416.9645,59.049915,100,0,0),
(@PATH,109,-1490.9955,1379.0923,59.049915,100,0,0),
(@PATH,110,-1508.8787,1333.4902,59.843616,100,0,0),
(@PATH,111,-1516.7701,1289.3403,67.27836,100,0,0),
(@PATH,112,-1522.9729,1246.2924,82.34855,100,0,0),
(@PATH,113,-1517.8191,1215.1322,93.64741,100,0,0),
(@PATH,114,-1491.792,1186.5,106.449196,100,0,0),
(@PATH,115,-1456.9713,1186.4501,111.32605,100,0,0),
(@PATH,116,-1419.738,1199.8627,112.1672,100,0,0),
(@PATH,117,-1374.7692,1217.6118,111.47116,100,0,0),
(@PATH,118,-1330.6395,1231.1997,110.704414,100,0,0),
(@PATH,119,-1290.5557,1230.9615,109.361824,100,0,0),
(@PATH,120,-1257.5111,1216.885,107.94812,100,0,0),
(@PATH,121,-1228.2058,1206.8599,104.103325,100,0,0),
(@PATH,122,-1182.9585,1201.6763,96.363266,100,0,0),
(@PATH,123,-1137.4589,1192.5616,90.44279,100,0,0),
(@PATH,124,-1100.8073,1188.0914,89.8647,100,0,0),
(@PATH,125,-1055.1915,1184.5875,89.86469,100,0,0),
(@PATH,126,-1008.0901,1178.2202,89.864685,100,0,0),
(@PATH,127,-970.0092,1183.06,89.788155,100,0,0),
(@PATH,128,-922.1035,1180.7637,93.01398,100,0,0),
(@PATH,129,-878.18225,1184.7477,97.80909,100,0,0),
(@PATH,130,-841.5321,1184.3195,99.751144,100,0,0),
(@PATH,131,-803.15393,1177.4624,99.54547,100,0,0),
(@PATH,132,-764.5057,1188.0039,97.64086,100,0,0),
(@PATH,133,-729.5117,1209.4248,92.434364,100,0,0),
(@PATH,134,-689.8377,1229.2766,89.51298,100,0,0),
(@PATH,135,-655.1121,1249.859,89.29437,100,0,0),
(@PATH,136,-620.4518,1263.4858,89.25135,100,0,0),
(@PATH,137,-586.466,1274.8987,89.229774,100,0,0),
(@PATH,138,-549.01215,1293.3293,89.229774,100,0,0),
(@PATH,139,-530.92426,1322.5577,89.216896,100,0,0),
(@PATH,140,-520.4021,1351.5944,89.20639,100,0,0),
(@PATH,141,-517.1392,1380.641,89.20639,100,0,0),
(@PATH,142,-517.5762,1420.5201,89.20639,100,0,0),
(@PATH,143,-531.42255,1453.1138,88.49945,100,0,0),
(@PATH,144,-558.45746,1471.7168,88.99945,100,0,0),
(@PATH,145,-601.5401,1483.0059,88.45714,100,0,0),
(@PATH,146,-640.8963,1497.6324,88.49945,100,0,0),
(@PATH,147,-666.75806,1526.0831,88.49945,100,0,0),
(@PATH,148,-684.5291,1542.2109,88.44154,100,0,0),
(@PATH,149,-696.062,1542.2239,90.02724,100,0,0),
(@PATH,150,-698.582,1525.7721,90.37445,100,0,0),
(@PATH,151,-691.2446,1516.9963,90.48822,100,0,0),
(@PATH,152,-691.2446,1516.9963,90.48822,5.707226753234863281,619000,@PATH+4);

DELETE FROM waypoint_path_name WHERE PathId IN (@PATH, @CORKESCORTPATH, @RIGGERESCORTPATH);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
(@PATH, 'Kalimdor - Desolace - Cork Gizelton - Normal Path');

-- Movement Scripts
-- Normal Waypoints
DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (@PATH+1, @PATH+2, @PATH+3, @PATH+4);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
-- Escort 1 stop
(@PATH+1,1000,0,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Add QuestGiver Flag'),
(@PATH+1,1000,0,0,0,0,0,0,0,0,7474,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
-- No player took quest, remove QuestGiver flag and start waypoints again.
(@PATH+1,23000,0,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Remove QuestGiver Flag'),
-- Southside stop
(@PATH+2,5000,0,29,1,1,0,11626,20,0,0,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Add Gossip Flag'),
(@PATH+2,6000,0,10,12246,609000,0,0,0,0,0,0,0,0,0,-1926.6038,2412.7925,60.695602,0.1745329,0,0,'Cork Gizelton - Spawn Super-Seller 680'),
(@PATH+2,605000,0,29,1,0,0,11626,20,0,0,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Remove Gossip Flag'),
(@PATH+2,605000,1,0,0,0,0,11626,20,0,7506,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
-- Escort 2 stop
(@PATH+3,0,0,29,2,1,0,11626,20,0,0,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Add QuestGiver Flag'),
(@PATH+3,1000,0,0,0,0,0,11626,20,0,7475,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Say Text'),
-- No player took quest, remove QuestGiver flag and start waypoints again.
(@PATH+3,23000,0,29,2,0,0,11626,20,0,0,0,0,0,0,0,0,0,0,0,0,'Rigger Gizelton - Remove QuestGiver Flag'),
-- Northside Stop
(@PATH+4,5000,0,28,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Add QuestGiver Flag'),
(@PATH+4,5000,0,10,12245,613000,0,0,0,0,0,0,0,0,0,-692.7433,1522.2029,90.361115,0.55850,0,0,'Cork Gizelton - Spawn Super-Seller 680'),
(@PATH+4,609000,0,0,0,0,0,0,0,0,7505,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Say Text'),
(@PATH+4,609000,1,29,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cork Gizelton - Remove QuestGiver Flag');

-- Vendor-Tron 1000 vendor list with correct slots
DELETE FROM npc_vendor WHERE entry = '12245';
UPDATE creature_template SET VendorTemplateId = 0 WHERE entry = 12245;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES 
('12245', '7005', '0', '0', '1', '0', '0', 'Vendor-Tron 1000 - Skinning Knife'),
('12245', '6256', '0', '0', '2', '0', '0', 'Vendor-Tron 1000 - Fishing Pole'),
('12245', '6217', '0', '0', '3', '0', '0', 'Vendor-Tron 1000 - Copper Rod'),
('12245', '5956', '0', '0', '4', '0', '0', 'Vendor-Tron 1000 - Blacksmith Hammer'),
('12245', '2901', '0', '0', '5', '0', '0', 'Vendor-Tron 1000 - Mining Pick'),
('12245', '2320', '0', '0', '6', '0', '0', 'Vendor-Tron 1000 - Coarse Thread'),
('12245', '2321', '0', '0', '7', '0', '0', 'Vendor-Tron 1000 - Fine Thread'),
('12245', '4291', '0', '0', '8', '0', '0', 'Vendor-Tron 1000 - Silken Thred'),
('12245', '8343', '0', '0', '9', '0', '0', 'Vendor-Tron 1000 - Heavy Silken Thread'),
('12245', '14341', '0', '0', '10', '0', '0', 'Vendor-Tron 1000 - Rune Thread'),
('12245', '2678', '0', '0', '11', '0', '0', 'Vendor-Tron 1000 - Mild Spices'),
('12245', '2692', '0', '0', '12', '0', '0', 'Vendor-Tron 1000 - Hot Spices'),
('12245', '3713', '0', '0', '13', '0', '0', 'Vendor-Tron 1000 - Soothing Spices'),
('12245', '2880', '0', '0', '14', '0', '0', 'Vendor-Tron 1000 - Weak Flux'),
('12245', '3466', '0', '0', '15', '0', '0', 'Vendor-Tron 1000 - Strong Flux'),
('12245', '3857', '0', '0', '16', '0', '0', 'Vendor-Tron 1000 - Coal'),
('12245', '2928', '0', '0', '17', '0', '0', 'Vendor-Tron 1000 - Dust of Decay'),
('12245', '2604', '0', '0', '18', '0', '0', 'Vendor-Tron 1000 - Red Dye'),
('12245', '2325', '0', '0', '19', '0', '0', 'Vendor-Tron 1000 - Black Dye'),
('12245', '4341', '0', '0', '20', '0', '0', 'Vendor-Tron 1000 - Yellow Dye'),
('12245', '4342', '0', '0', '21', '0', '0', 'Vendor-Tron 1000 - Purple Dye'),
('12245', '4340', '0', '0', '22', '0', '0', 'Vendor-Tron 1000 - Gray Dye'),
('12245', '3371', '0', '0', '23', '0', '0', 'Vendor-Tron 1000 - Empty Vial'), 
('12245', '3372', '0', '0', '24', '0', '0', 'Vendor-Tron 1000 - Leaded Vial'),
('12245', '8925', '0', '0', '25', '0', '0', 'Vendor-Tron 1000 - Crystal Vial'),
('12245', '18256', '0', '0', '26', '0', '0', 'Vendor-Tron 1000 - Imbued Vial'),
('12245', '4289', '0', '0', '27', '0', '0', 'Vendor-Tron 1000 - Salt'),
('12245', '4399', '0', '0', '28', '0', '0', 'Vendor-Tron 1000 - Wooden Stock'),
('12245', '4400', '0', '0', '29', '0', '0', 'Vendor-Tron 1000 - Heavy Stock'),
('12245', '6530', '0', '0', '30', '0', '0', 'Vendor-Tron 1000 - Nightcrawlers'),
('12245', '6532', '0', '0', '31', '0', '0', 'Vendor-Tron 1000 - Bright baubles'),
('12245', '1710', '2', '7200', '32', '0', '0', 'Vendor-Tron 1000 - Greater Healing Potion'),
('12245', '3827', '2', '7200', '33', '0', '0', 'Vendor-Tron 1000 - Mana Potion'),
('12245', '12240', '1', '7200', '34', '0', '0', 'Vendor-Tron 1000 - Recipe: Heavy Kodo Stew'),
('12245', '12228', '1', '7200', '35', '0', '0', 'Vendor-Tron 1000 - Recipe: Roast Raptor'),
('12245', '12231', '1', '7200', '36', '0', '0', 'Vendor-Tron 1000 - Recipe: Jungle stew'),
('12245', '12232', '1', '7200', '37', '0', '0', 'Vendor-Tron 1000 - Recipe: Carrion Surprise'),
('12245', '5489', '1', '7200', '38', '0', '0', 'Vendor-Tron 1000 - Recipe: Lean Venison'),
('12245', '3735', '1', '7200', '39', '0', '0', 'Vendor-Tron 1000 - Recipe: Hot lion Chops');