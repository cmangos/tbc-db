-- IRONFORGE

/* Adding spawns for Boar, Fruit and Fish for each location if missing */
-- Boar
DELETE FROM gameobject WHERE guid IN (1467, 1468, 1469);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(1467, 180372, 0, -5082.25, -800.448, 496.03, -0.191986, 0, 0, 0.095846, -0.995396, 10, 100, 1),
(1468, 180372, 0, -5085.64, -799.931, 496.03, -0.226893, 0, 0, 0.113203, -0.993572, 10, 100, 1),
(1469, 180372, 0, -5089.05, -799.469, 496.03, -2.11185, 0, 0, 0.870356, -0.492423, 10, 100, 1);

UPDATE gameobject SET position_x= -5080.8, position_y= -799.561, position_z= 496.03, orientation= 1.8675, rotation2= 0.803857, rotation3= 0.594823, spawntimesecs= 10 WHERE guid= 31391;

-- Fish
DELETE FROM gameobject WHERE guid IN (1470, 1471);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(1470, 180371, 0, -5077.29, -800.179, 496.03, 2.32129, 0, 0, 0.91706, 0.398749, 10, 100, 1),
(1471, 180371, 0, -5089.05, -799.469, 496.03, -2.11185, 0, 0, 0.870356, -0.492423, 10, 100, 1);

UPDATE gameobject SET position_x= -5075.2, position_y= -799.255, position_z= 496.038, orientation= -1.29154, rotation2= 0.601815, rotation3= -0.798635, spawntimesecs= 10 WHERE guid= 31965;

-- Fruit
UPDATE gameobject SET position_x= -5073.67, position_y= -799.944, position_z= 496.038, orientation= -0.15708, rotation2= 0.078459, rotation3= -0.996917, spawntimesecs= 10 WHERE guid= 29870;
UPDATE gameobject SET position_x= -5085.64, position_y= -799.931, position_z= 496.03, orientation= -0.226893, rotation2= 0.113203, rotation3= -0.993572, spawntimesecs= 10 WHERE guid= 31969;

DELETE FROM game_event_gameobject WHERE guid IN (1467, 1468, 1469, 1470, 1471);
INSERT INTO game_event_gameobject (guid, event) VALUES
(1467, 11),
(1468, 11),
(1469, 11),
(1470, 11),
(1471, 11);

/*Adding spawns to pools. 8 pools each with a chance of spawning either boar, fish or fruit */
DELETE FROM pool_gameobject WHERE guid IN (31388, 31967, 29870, 31968, 31965, 31389, 31392, 1470, 31393, 31391, 31395, 30875, 1467, 29868, 31396, 1468, 30362, 31969, 1469, 1471, 30364);
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(31388, 1709, 33.33, 'IF Harvest Boar 1'),
(31967, 1709, 33.33, 'IF Harvest Fish 1'),
(29870, 1709, 33.34, 'IF Harvest Fruit 1'),
(31968, 1710, 33.33, 'IF Harvest Boar 2'),
(31965, 1710, 33.33, 'IF Harvest Fish 2'),
(31389, 1710, 33.34, 'IF Harvest Fruit 2'),
(31392, 1711, 33.33, 'IF Harvest Boar 3'),
(1470, 1711, 33.33, 'IF Harvest Fish 3'),
(31393, 1711, 33.34, 'IF Harvest Fruit 3'),
(31391, 1712, 33.33, 'IF Harvest Boar 4'),
(31395, 1712, 33.33, 'IF Harvest Fish 4'),
(30875, 1712, 33.34, 'IF Harvest Fruit 4'),
(1467, 1713, 33.33, 'IF Harvest Boar 5'),
(29868, 1713, 33.33, 'IF Harvest Fish 5'),
(31396, 1713, 33.34, 'IF Harvest Fruit 5'),
(1468, 1714, 33.33, 'IF Harvest Boar 6'),
(30362, 1714, 33.33, 'IF Harvest Fish 6'),
(31969, 1714, 33.34, 'IF Harvest Fruit 6'),
(1469, 1715, 33.33, 'IF Harvest Boar 7'),
(1471, 1715, 33.33, 'IF Harvest Fish 7'),
(30364, 1715, 33.34, 'IF Harvest Fruit 7');

DELETE FROM pool_template WHERE entry BETWEEN 1709 AND 1715;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1709, 1, 'IF Harvest Food 1'),
(1710, 1, 'IF Harvest Food 2'),
(1711, 1, 'IF Harvest Food 3'),
(1712, 1, 'IF Harvest Food 4'),
(1713, 1, 'IF Harvest Food 5'),
(1714, 1, 'IF Harvest Food 6'),
(1715, 1, 'IF Harvest Food 7');

-- ORGRIMMAR

/*Changing respawn time to 10s for all harvest boar, fruit and fish */
UPDATE gameobject SET spawntimesecs= 10 WHERE id IN(180370, 180371, 180372, 180373, 180374);

/* Adding spawns for Boar, Fruit and Fish for each location if missing */
-- Boar
DELETE FROM gameobject WHERE guid=1511;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(1511, 180372, 1, 1326.97, -4416.36, 27.5984, -1.6057, 0, 0, 0.71934, -0.694658, 10, 100, 1);

-- Fish
DELETE FROM gameobject WHERE guid BETWEEN 1512 AND 1515;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(1512, 180371, 1, 1340.36, -4414.08, 28.0881, 1.98968, 0, 0, 0.838671, 0.544639, 10, 100, 1),
(1513, 180371, 1, 1341.04, -4421.81, 27.6249, 0.383972, 0, 0, 0.190809, 0.981627, 10, 100, 1),
(1514, 180371, 1, 1337.53, -4411.01, 28.0848, -0.680679, 0, 0, 0.333807, -0.942641, 10, 100, 1),
(1515, 180371, 1, 1329.31, -4413.13, 27.6023, 0.680678, 0, 0, 0.333807, 0.942641, 10, 100, 1);

UPDATE gameobject SET position_x= 1336.56, position_y= -4426.84, position_z= 27.6309, orientation= -2.9147, rotation2= 0.993572, rotation3= -0.113203, spawntimesecs= 10 WHERE guid= 35779;

-- Fruit
DELETE FROM gameobject WHERE guid IN (1516, 1517);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(1516, 180370, 1, 1327.37, -4423.33, 27.4349, 2.53073, 0, 0, 0.953717, 0.300706, 10, 100, 1),
(1517, 180370, 1, 1330.72, -4425.71, 27.4281, 0.750492, 0, 0, 0.366501, 0.930418, 10, 100, 1);

UPDATE gameobject SET position_x= 1326.97, position_y= -4416.36, position_z= 27.5984, orientation= -1.6057, rotation2= 0.71934, rotation3= -0.694658, spawntimesecs= 10 WHERE guid= 35788;

DELETE FROM game_event_gameobject WHERE guid BETWEEN 1511 AND 1517;
INSERT INTO game_event_gameobject (guid, event) VALUES
(1511, 11),
(1512, 11),
(1513, 11),
(1514, 11),
(1515, 11),
(1516, 11),
(1517, 11);

/*Adding spawns to pools. 8 pools each with a chance of spawning either boar, fish or fruit */
DELETE FROM pool_gameobject WHERE pool_entry BETWEEN 1701 AND 1708;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(35784, 1701, 33.33, 'Org Harvest Boar 1'),
(1512, 1701, 33.33, 'Org Harvest Fish 1'),
(35777, 1701, 33.34, 'Org Harvest Fruit 1'),
(35780, 1702, 33.33, 'Org Harvest Boar 2'),
(1513, 1702, 33.33, 'Org Harvest Fish 2'),
(35774, 1702, 33.34, 'Org Harvest Fruit 2'),
(35778, 1703, 33.33, 'Org Harvest Boar 3'),
(1514, 1703, 33.33, 'Org Harvest Fish 3'),
(35786, 1703, 33.34, 'Org Harvest Fruit 3'),
(35776, 1704, 33.33, 'Org Harvest Boar 4'),
(1515, 1704, 33.33, 'Org Harvest Fish 4'),
(35785, 1704, 33.34, 'Org Harvest Fruit 4'),
(35775, 1705, 33.33, 'Org Harvest Boar 5'),
(35779, 1705, 33.33, 'Org Harvest Fish 5'),
(35781, 1705, 33.34, 'Org Harvest Fruit 5'),
(34047, 1706, 33.33, 'Org Harvest Boar 6'),
(35783, 1706, 33.33, 'Org Harvest Fish 6'),
(1516, 1706, 33.34, 'Org Harvest Fruit 6'),
(35787, 1707, 33.33, 'Org Harvest Boar 7'),
(34046, 1707, 33.33, 'Org Harvest Fish 7'),
(1517, 1707, 33.34, 'Org Harvest Fruit 7'),
(1511, 1708, 33.33, 'Org Harvest Boar 8'),
(34048, 1708, 33.33, 'Org Harvest Fish 8'),
(35788, 1708, 33.34, 'Org Harvest Fruit 8');

DELETE FROM pool_template WHERE entry BETWEEN 1701 AND 1708;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1701, 1, 'Org Harvest Food 1'),
(1702, 1, 'Org Harvest Food 2'),
(1703, 1, 'Org Harvest Food 3'),
(1704, 1, 'Org Harvest Food 4'),
(1705, 1, 'Org Harvest Food 5'),
(1706, 1, 'Org Harvest Food 6'),
(1707, 1, 'Org Harvest Food 7'),
(1708, 1, 'Org Harvest Food 8');

-- TRIBUTE OBJECTS

/* Adding missing Tribute GO's for Gnomes, Night Elves, Orcs and Taurens */
DELETE FROM gameobject_template WHERE entry IN (180211, 180213, 180207, 180209);
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(180211, 5, 6314, 'Uther\'s Gnome Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180213, 5, 6315, 'Uther\'s Night Elf Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180207, 5, 665, 'Grom\'s Orc Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180209, 5, 6312, 'Grom\'s Tauren Tribute', 0, 0, 0.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

/* Adding missing model ID's for Honoured Heros and Ancestors */
UPDATE creature_template SET ModelId2= 15223, ModelId3= 15224, ModelId4= 15225 WHERE Entry= 15113;
UPDATE creature_template SET ModelId2= 15229, ModelId3= 15230, ModelId4= 15232 WHERE Entry= 15115;

/* Removing single model ID from spawns */
UPDATE creature SET modelid= 0 WHERE id= 15113;
UPDATE creature SET modelid= 0 WHERE id= 15115;

/* Removing temporary entries for Uther's Statue and Grom's Monument and adding correct entries (Thanks YTDB) */
DELETE FROM gameobject_template WHERE entry IN (300140, 300145, 1323, 1324);
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(1323, 8, 299, 'Uther\'s Tomb Statue', 0, 0, 1, 1323, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1324, 8, 299, 'Grom\'s Monument', 0, 0, 1.5, 1324, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE gameobject SET id= 1323 WHERE guid= 99865;
UPDATE gameobject SET id= 1324 WHERE guid= 99997;
