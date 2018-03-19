-- Grimtooth
DELETE FROM creature WHERE guid=1005682;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1005682', '603', '30', '1', '0', '0', '-1594.43', '-410.107', '81.4242', '0.945338', '300', '300', '0', '0', '0', '0', '0', '0');

-- Fizzles
DELETE FROM creature WHERE guid=1004844;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1004844', '1419', '0', '1', '0', '0', '-8994.47', '947.248', '118.17', '4.25684', '300', '300', '0', '0', '0', '0', '0', '0');

-- Lordaeron Citizen
DELETE FROM creature WHERE guid BETWEEN 156001 AND 156038;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('156001', '3617', '0', '1', '0', '0', '1837.95', '238.254', '60.5144', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156002', '3617', '0', '1', '0', '0', '1821.23', '239.487', '60.6478', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156003', '3617', '0', '1', '0', '0', '1784.68', '238.47', '60.4086', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156004', '3617', '0', '1', '0', '0', '1774.19', '238.088', '60.6982', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156005', '3617', '0', '1', '0', '0', '1779.74', '208.601', '60.3128', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156006', '3617', '0', '1', '0', '0', '1806.6', '337.597', '70.3977', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156007', '3617', '0', '1', '0', '0', '1806.57', '325.978', '70.3977', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156008', '3617', '0', '1', '0', '0', '1818.25', '324.754', '70.8132', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156009', '3617', '0', '1', '0', '0', '1816.09', '339.486', '70.8132', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156010', '3617', '0', '1', '0', '0', '1795.76', '336.788', '70.8146', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156011', '3617', '0', '1', '0', '0', '1797.38', '321.783', '70.8146', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156012', '3617', '0', '1', '0', '0', '1846.19', '271.665', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156013', '3617', '0', '1', '0', '0', '1805.22', '291.655', '70.3996', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156014', '3617', '0', '1', '0', '0', '1820.13', '250.549', '60.0474', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156015', '3617', '0', '1', '0', '0', '1817.45', '225.251', '59.528', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156016', '3617', '0', '1', '0', '0', '1830.29', '213.645', '60.389', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156017', '3617', '0', '1', '0', '0', '1836.37', '229.404', '60.2315', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156018', '3617', '0', '1', '0', '0', '1768.28', '193.266', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156019', '3617', '0', '1', '0', '0', '1788.09', '193.416', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156020', '3617', '0', '1', '0', '0', '1841.26', '196.939', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156021', '3617', '0', '1', '0', '0', '1819.39', '193.334', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156022', '3617', '0', '1', '0', '0', '1803.13', '192.819', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156023', '3617', '0', '1', '0', '0', '1805.75', '210.858', '65.3998', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156024', '3617', '0', '1', '0', '0', '1785.05', '210.563', '59.7069', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156025', '3617', '0', '1', '0', '0', '1782.66', '226.65', '59.3659', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156026', '3617', '0', '1', '0', '0', '1783.95', '251.046', '59.5074', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156027', '3617', '0', '1', '0', '0', '1782.72', '267.958', '59.6138', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156028', '3617', '0', '1', '0', '0', '1806.01', '254.011', '60.6559', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156029', '3617', '0', '1', '0', '0', '1769.92', '285.161', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156030', '3617', '0', '1', '0', '0', '1794.1', '284.269', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156031', '3617', '0', '1', '0', '0', '1843.58', '278.447', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156032', '3617', '0', '1', '0', '0', '1831.26', '282.122', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156033', '3617', '0', '1', '0', '0', '1816.99', '281.063', '70.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156034', '3617', '0', '1', '0', '0', '1806.35', '265.815', '65.3997', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156035', '3617', '0', '1', '0', '0', '1819.52', '264.184', '59.8956', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156036', '3617', '0', '1', '0', '0', '1829.43', '259.207', '59.5834', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156037', '3617', '0', '1', '0', '0', '1823.91', '252.862', '60.025', '0', '300', '300', '5', '0', '596', '0', '0', '1'),
('156038', '3617', '0', '1', '0', '0', '1834.21', '249.057', '59.8226', '0', '300', '300', '5', '0', '596', '0', '0', '1');

-- Brogun Stoneshield <Alterac Valley Battlemaster>
DELETE FROM creature WHERE guid=60105;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('60105', '5118', '1', '1', '0', '0', '9985.7', '2310.35', '1330.87', '1.48353', '600', '600', '0', '0', '9563', '0', '0', '0');

-- Fizzlebang Booms
DELETE FROM creature WHERE guid=1004635;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1004635', '5569', '0', '1', '0', '0', '-4850.88', '-1295.18', '501.868', '1.41864', '300', '300', '0', '0', '0', '0', '0', '0');

-- Kalin Windflight
DELETE FROM creature WHERE guid=104265;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('104265', '7772', '1', '1', '0', '0', '-3285.62', '2004.17', '245.867', '2.53433', '900', '900', '0', '0', '3857', '0', '0', '0');

-- Brannock <Fishing Trainer>
DELETE FROM creature WHERE guid=49999;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('49999', '7946', '1', '1', '0', '0', '-4294.42', '3199.97', '0.517903', '6.26573', '300', '300', '0', '0', '3748', '0', '0', '0');

-- Trainee Sinthar
DELETE FROM creature WHERE guid=1007119;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1007119', '18628', '530', '1', '0', '0', '9735.65', '-7357.74', '24.3316', '2.79582', '180', '180', '0', '0', '0', '0', '0', '2');

DELETE FROM creature_template_addon WHERE entry=18628;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('18628', '0', '0', '1', '0', '0', '0', '32615');

UPDATE creature_template SET MovementType=2 WHERE entry=18628;
DELETE FROM creature_movement_template WHERE entry=18628;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
('18628', '0', '1', '9735.65', '-7357.74', '24.3316', '2.79582', '1000', '0'),
('18628', '0', '2', '9735.65', '-7357.74', '24.3316', '2.79582', '5000', '0'),
('18628', '0', '3', '9734.19', '-7359.6', '24.3316', '3.53017', '0', '0'),
('18628', '0', '4', '9732.63', '-7360.24', '24.3316', '3.00238', '1000', '0'),
('18628', '0', '5', '9732.63', '-7360.24', '24.3316', '3.00238', '5000', '0'),
('18628', '0', '6', '9735.58', '-7360.2', '24.3316', '1.12135', '0', '0'),
('18628', '0', '7', '9737.62', '-7358.28', '24.3316', '1.88162', '0', '0');

-- Nova Terra
DELETE FROM creature WHERE guid=1006834;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1006834', '20297', '530', '1', '0', '0', '2383.96', '3198.54', '152.79', '5.24138', '300', '300', '0', '0', '0', '0', '0', '0');

DELETE FROM creature_template_addon WHERE entry=20297;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(20297, 0, 0, 0, 0, 0, 0, '22766');

-- Floating Skull
DELETE FROM creature WHERE guid=1002199;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1002199', '21365', '530', '1', '0', '0', '37.8761', '2122.28', '129.264', '2.7347', '120', '120', '0', '0', '0', '0', '0', '0');

DELETE FROM creature_template_addon WHERE entry=21365;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('21365', '0', '0', '0', '0', '0', '0', '36727 35847');

-- Corvax
DELETE FROM creature WHERE guid=1002287;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1002287', '22842', '530', '1', '0', '0', '-254.8032', '5443.792', '30.77559', '0.6263401', '300', '300', '0', '0', '0', '0', '0', '2');

UPDATE creature_template SET MovementType=2, InhabitType=4 WHERE entry=22842;
DELETE FROM creature_movement_template WHERE entry=22842;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(22842,0,1,-231.4784,5442.248,29.75438,100,0,0),
(22842,0,2,-231.9071,5441.805,29.40595,100,0,0),
(22842,0,3,-233.5468,5436.123,30.58605,100,0,0),
(22842,0,4,-235.9648,5433.313,31.33606,100,0,0),
(22842,0,5,-245.6634,5430.377,32.44696,100,0,0),
(22842,0,6,-254.214,5432.43,32.50253,100,0,0),
(22842,0,7,-257.6299,5440.645,31.36549,100,0,0),
(22842,0,8,-250.052,5446.799,30.14325,100,0,0),
(22842,0,9,-244.9603,5449.014,29.67106,100,0,0),
(22842,0,10,-237.6145,5448.882,29.75438,100,0,0);

-- Rook
DELETE FROM creature WHERE guid=1002286;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1002286', '22843', '530', '1', '0', '0', '-237.2198', '5444.96', '31.853', '2.59318', '300', '300', '0', '0', '0', '0', '0', '2');

UPDATE creature_template SET MovementType=2, InhabitType=4 WHERE entry=22843;
DELETE FROM creature_movement_template WHERE entry=22843;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(22843,0,1,-253.4223,5430.909,28.92926,100,0,0),
(22843,0,2,-252.2368,5429.647,28.75794,100,0,0),
(22843,0,3,-246.0865,5428.435,29.54239,100,0,0),
(22843,0,4,-239.4053,5431.095,29.54241,100,0,0),
(22843,0,5,-235.5483,5436.207,30.90352,100,0,0),
(22843,0,6,-235.0203,5442.249,30.87573,100,0,0),
(22843,0,7,-238.777,5445.627,32.07018,100,0,0),
(22843,0,8,-246.5504,5445.43,30.82018,100,0,0),
(22843,0,9,-254.3803,5440.281,29.67928,100,0,0),
(22843,0,10,-255.2896,5432.612,28.92926,100,0,0);

-- Challe
DELETE FROM creature WHERE guid=1006368;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1006368', '23101', '530', '1', '0', '0', '-480.652', '7499.15', '181.204', '3.58066', '300', '300', '0', '0', '0', '0', '0', '0');

-- Jara
DELETE FROM creature WHERE guid=1006369;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1006369', '23106', '530', '1', '0', '0', '-511.645', '7500.82', '183', '4.92684', '300', '300', '0', '0', '0', '0', '0', '0');

-- Chaddo
DELETE FROM creature WHERE guid=1006371;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1006371', '23107', '530', '1', '0', '0', '-494.073', '7472.15', '180.074', '4.14145', '300', '300', '0', '0', '0', '0', '0', '0');

-- Sa'rah
DELETE FROM creature WHERE guid=1006370;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1006370', '23108', '530', '1', '0', '0', '-495.808', '7469.44', '180.109', '4.14145', '300', '300', '0', '0', '0', '0', '0', '0');

-- Warpy
DELETE FROM creature WHERE guid=1002683;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('1002683', '24977', '530', '1', '0', '0', '3045.86', '3710.16', '145.47', '0.332712', '300', '300', '0', '0', '0', '0', '0', '0');


