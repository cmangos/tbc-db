-- q.9805 'Blessing of Incineratus'
DELETE FROM dbscripts_on_spell WHERE id = 31927; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(31927,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');
-- Part 1: Windyreed Quest Credit (Big Hut)
UPDATE creature_template SET MovementType = 0 WHERE entry = 18110; -- movement will be changed by quest script
DELETE FROM creature_movement_template WHERE entry = 18110;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18110,1,-1809.12,6294.08,59.3563,20000,1811001,5.72468,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1811001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1811001,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1811001,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1811001,2,21,1,0,18109,20,7,0,0,0,0,0,0,0,0,'active'),
(1811001,2,3,0,700,18109,25,7,0,0,0,0,-1818.2,6290.04,59.2684,5.24503,''),
(1811001,3,3,0,700,18109,25,7,0,0,0,0,-1808.07,6282.27,59.2715,6.06969,''),
(1811001,5,3,0,700,18109,25,7,0,0,0,0,-1796.79,6285.82,59.2715,0.905697,''),
(1811001,6,3,0,700,18109,25,7,0,0,0,0,-1794.28,6296.44,59.2715,1.89216,''),
(1811001,8,3,0,700,18109,25,7,0,0,0,0,-1803.14,6305.21,59.2715,2.77887,''),
(1811001,9,3,0,700,18109,25,7,0,0,0,0,-1811.29,6303.09,59.2715,4.00724,''),
(1811001,10,3,0,700,18109,25,7,0,0,0,0,-1811.29,6303.09,59.2715,4.00724,''),
(1811001,11,3,0,700,18109,25,7,0,0,0,0,-1809.12,6294.08,59.2715,5.33141,''),
(1811001,13,9,22611,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,13,9,22612,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,13,9,22613,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,14,9,22614,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,14,9,22615,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,14,9,22616,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1811001,17,18,1,0,18109,20,7,0,0,0,0,0,0,0,0,'desp'),
(1811001,17,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Part 2: Windyreed Quest Credit (Hut 01)
UPDATE creature_template SET MovementType = 0 WHERE entry = 18142; -- movement will be changed by quest script
DELETE FROM creature_movement_template WHERE entry = 18142;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18142,1,-1840.96,6387.75,52.945,8000,1814201,4.38078,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1814201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1814201,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1814201,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1814201,2,21,1,0,18109,20,7,0,0,0,0,0,0,0,0,'active'),
(1814201,3,15,24646,0,18109,20,7,0,0,0,0,0,0,0,0,''),
(1814201,5,9,56716,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814201,5,9,56717,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814201,5,9,56718,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814201,6,18,1,0,18109,20,7,0,0,0,0,0,0,0,0,'desp'),
(1814201,7,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Part 3: Windyreed Quest Credit (Hut 02)
UPDATE creature_template SET MovementType = 0 WHERE entry = 18143; -- movement will be changed by quest script
DELETE FROM creature_movement_template WHERE entry = 18143;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18143,1,-1920.43,6362.44,56.116,8000,1814301,2.11185,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1814301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1814301,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1814301,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1814301,2,21,1,0,18109,20,7,0,0,0,0,0,0,0,0,'active'),
(1814301,3,15,24646,0,18109,20,7,0,0,0,0,0,0,0,0,''),
(1814301,5,9,56712,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814301,5,9,56711,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814301,5,9,56710,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814301,6,18,1,0,18109,20,7,0,0,0,0,0,0,0,0,'desp'),
(1814301,7,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- Part 4: Windyreed Quest Credit (Hut 03) 
UPDATE creature_template SET MovementType = 0 WHERE entry = 18144; -- movement will be changed by quest script
DELETE FROM creature_movement_template WHERE entry = 18144;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18144,1,-1974.11,6275.41,56.994,8000,1814401,0.017453,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1814401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1814401,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1814401,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1814401,2,21,1,0,18109,20,7,0,0,0,0,0,0,0,0,'active'),
(1814401,3,15,24646,0,18109,20,7,0,0,0,0,0,0,0,0,''),
(1814401,5,9,56713,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814401,5,9,56714,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814401,5,9,56715,120,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(1814401,6,18,1,0,18109,20,7,0,0,0,0,0,0,0,0,'desp'),
(1814401,7,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');

-- objects
-- Hut Fire (Large)
UPDATE gameobject SET spawntimesecs = -120 WHERE guid IN (22611,22612,22613,22614,22615,22616);
-- missing added - UDB free guids reused
DELETE FROM gameobject WHERE guid IN (56710,56711,56712,56713,56714,56715,56716,56717,56718);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(56710, 182146, 530, 1,-1917.804, 6362.598, 70.96107, 0, 0, 0, 0.8746195, 0.4848101, -120, 100, 1),
(56711, 182146, 530, 1,-1914.794, 6352.145, 58.35398, 0, 0, 0, -0.3583679, 0.9335805, -120, 100, 1),
(56712, 182146, 530, 1,-1920.396, 6362.225, 56.03167, 0, 0, 0, 0.8433914, 0.5372996, -120, 100, 1),
(56713, 182146, 530, 1,-1971.461, 6273.495, 63.36858, 0, 0, 0, 0.9986286, 0.05235322, -120, 100, 1),
(56714, 182146, 530, 1,-1971.571, 6282.98, 54.21309, 0, 0, 0, -0.06975555, 0.9975641, -120, 100, 1),
(56715, 182146, 530, 1,-1974.024, 6275.625, 56.90597, 0, 0, 0, -0.8910065, 0.4539906, -120, 100, 1),
(56716, 182146, 530, 1,-1839.88, 6387.97, 52.8597, 0, 0, 0, 0.9986286, 0.05235322, -120, 100, 1),
(56717, 182146, 530, 1,-1836.8, 6389.96, 57.0647, 0, 0, 0, 0.9986286, 0.05235322, -120, 100, 1),
(56718, 182146, 530, 1,-1845.25, 6383.97, 56.5082, 0, 0, 0, 0.9986286, 0.05235322, -120, 100, 1);

-- Living Fire
UPDATE creature_template SET MovementType = 0 WHERE entry = 18109;
-- Duplicates removed
DELETE FROM creature WHERE guid=86628;
DELETE FROM creature_addon WHERE guid=86628;
DELETE FROM creature_movement WHERE id=86628;
DELETE FROM game_event_creature WHERE guid=86628;
DELETE FROM game_event_creature_data WHERE guid=86628;
DELETE FROM creature_battleground WHERE guid=86628;
DELETE FROM creature_linking WHERE guid=86628 OR master_guid=86628;

-- Windyreed Wretch
UPDATE creature SET position_x = -1929.178101, position_y = 6334.593262, position_z = 48.385132 WHERE guid = 60171;
UPDATE creature SET position_x = -1813.437256, position_y = 6384.998047, position_z = 43.795441 WHERE guid = 60179;
UPDATE creature SET position_x = -1869.904419, position_y = 6393.945313, position_z = 43.191776 WHERE guid = 60174;
UPDATE creature SET position_x = -1900.012451, position_y = 6378.280273, position_z = 50.573761 WHERE guid = 60175;
UPDATE creature SET position_x = -1971.317017, position_y = 6295.283203, position_z = 50.260643 WHERE guid = 60173;
UPDATE creature SET position_x = -2013.241943, position_y = 6220.623535, position_z = 78.896729 WHERE guid = 60168;
UPDATE creature SET position_x = -1973.284058, position_y = 6275.926758, position_z = 56.900406, spawndist = 2, movementType = 1 WHERE guid = 60157;


