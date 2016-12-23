-- chat between creatures

-- Guard Kurall + Horde Guard (Barrens)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 19412;
DELETE FROM creature_movement WHERE id = 19412;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(19412,1,55.2058,-2695.69,92.1666,10000,350102,4.34587,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 350102;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(350102,1,31,14893,10,0,0,0,0,0,0,0,0,0,0,0,'search for 14893'),
(350102,2,1,1,0,14893,13579,7 | 0x10,273,274,6,1,0,0,0,0,''),
(350102,6,1,1,0,0,0,0,273,274,6,1,0,0,0,0,'');

-- Horde Guard + Horde Guard (Barrens)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 19403;
DELETE FROM creature_movement WHERE id = 19403;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(19403,1,-638.53,-3245.05,98.5006,10000,350103,2.32129,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 350103;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(350103,1,31,3501,10,0,0,0,0,0,0,0,0,0,0,0,'search for 3501'),
(350103,2,1,1,0,3501,19428,7 | 0x10,273,274,6,1,0,0,0,0,''),
(350103,6,1,1,0,0,0,0,273,274,6,1,0,0,0,0,'');

-- Horde Guard + Horde Guard (Barrens)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 19361;
DELETE FROM creature_movement WHERE id = 19361;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES  
(19361,8,-39.0541,-2612.88,97.6059,15000,350104,0.314159,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 350104;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(350104,1,31,3501,10,0,0,0,0,0,0,0,0,0,0,0,'search for 3501'),
(350104,2,1,1,0,3501,19402,7 | 0x10,0,0,0,0,0,0,0,0,''),
(350104,6,1,1,0,0,0,0,11,1,0,0,0,0,0,0,''),
(350104,9,1,7,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Peon + Peon (Barrens)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 13751;
DELETE FROM creature_movement WHERE id = 13751;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(13751,1,-623.98,-3180.06,91.75,3000,1490105,2.40855,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1490105;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490105,1,31,14901,10,0,0,0,0,0,0,0,0,0,0,0,'search for 14901'),
(1490105,2,1,1,0,14901,13772,7 | 0x10,273,274,6,1,0,0,0,0,''),
(1490105,6,1,1,0,0,0,0,273,274,6,1,0,0,0,0,'');

-- Guard Taruc (Barrens)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 13170;
DELETE FROM creature_movement WHERE id = 13170;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(13170,1,-532.145,-2988.94,93.5285,20000,1485901,2.60054,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1485901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1485901,2,1,7,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Grub + Duhng (Barrens)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 14390;
DELETE FROM creature_movement WHERE id = 14390;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(14390,2,-534.982,-2982.22,93.0775,90000,344301,1.3439,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 344301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(344301,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(344301,4,31,8306,10,0,0,0,0,0,0,0,0,0,0,0,'search for 8306'),
(344301,5,1,0,0,8306,14389,3 | 0x10,0,0,0,0,0,0,0,0,''),
(344301,7,36,0,0,8306,14389,3 | 0x10,0,0,0,0,0,0,0,0,''),
(344301,10,1,1,0,8306,14389,7 | 0x10,0,0,0,0,0,0,0,0,''),
(344301,14,3,0,0,8306,14389,7 | 0x10,0,0,0,0,0,0,0,5.91667,''),
(344301,16,1,173,0,8306,14389,7 | 0x10,0,0,0,0,0,0,0,0,'');

-- Defias Thug + Defias Thug (Northshire Vineyards)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 80152;
DELETE FROM creature_movement WHERE id = 80152;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(80152,1,-9033.82,-301.611,74.7497,10000,3804,5.89921,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3804;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3804,1,31,38,10,0,0,0,0,0,0,0,0,0,0,0,'search for 38'),
(3804,2,1,1,0,38,80151,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3804,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Defias Thug + Defias Thug (Northshire Vineyards)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 80184;
DELETE FROM creature_movement WHERE id = 80184;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES  
(80184,1,-9083.31,-301.332,73.4003,3000,0,0.052364,0,0),
(80184,2,-9083.31,-301.332,73.4003,7000,3805,0.052364,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3805;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3805,1,31,38,10,0,0,0,0,0,0,0,0,0,0,0,'search for 38'),
(3805,2,1,1,0,38,80185,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3805,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Defias Thug + Defias Thug (Northshire Vineyards)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 80188;
DELETE FROM creature_movement WHERE id = 80188;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(80188,1,-9077.56,-334.076,73.5351,2000,0,1.29154,0,0),
(80188,2,-9077.56,-334.076,73.5351,8000,3806,1.29154,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3806;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3806,1,31,38,10,0,0,0,0,0,0,0,0,0,0,0,'search for 38'),
(3806,2,1,1,0,38,80189,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3806,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Defias Thug + Defias Thug (Northshire Vineyards)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 80201;
DELETE FROM creature_movement WHERE id = 80201;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES  
(80201,1,-9073.82,-376.869,73.5351,10000,3807,2.44346,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3807;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3807,1,31,38,10,0,0,0,0,0,0,0,0,0,0,0,'search for 38'),
(3807,2,1,1,0,38,80200,7 | 0x10,0,0,0,0,0,0,0,0,''),
(3807,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Hammerfall Guardian + Hammerfall Guardian (Hammerfall)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 11212;
DELETE FROM creature_movement WHERE id = 11212;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(11212,1,-830.753,-3541.73,72.5673,10000,262101,0.942478,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 262101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(262101,1,31,2621,10,0,0,0,0,0,0,0,0,0,0,0,'search for 2621'),
(262101,2,1,1,0,2621,11235,7 | 0x10,0,0,0,0,0,0,0,0,''),
(262101,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Nether Technician + Nether Technician (Gyro-Plank Bridge - Netherstorm)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 71811;
DELETE FROM creature_movement WHERE id = 71811;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(71811,1,3388.68,4331.53,122.722,10000,2020301,1.97222,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2020301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2020301,1,31,20203,10,0,0,0,0,0,0,0,0,0,0,0,'search for 20203'),
(2020301,2,1,1,0,20203,71812,7 | 0x10,6,0,0,0,0,0,0,0,''),
(2020301,6,1,1,0,0,0,0,6,0,0,0,0,0,0,0,'');

-- Warmaul Brute + Warmaul Warlock (Warmaul Hill - Nagrand)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 63899;
DELETE FROM creature_movement WHERE id = 63899;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(63899,1,-852.287,8888.33,182.986,10000,1806501,3.38964,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1806501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1806501,1,31,18037,10,0,0,0,0,0,0,0,0,0,0,0,'search for 18037'),
(1806501,2,1,1,0,18037,63755,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1806501,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Warmaul Warlock + Warmaul Warlock (Warmaul Hill - Nagrand)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 63756;
DELETE FROM creature_movement WHERE id = 63756;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(63756,1,-1011.45,8956.18,97.3646,10000,1803701,5.3058,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1803701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1803701,1,31,18037,10,0,0,0,0,0,0,0,0,0,0,0,'search for 18037'),
(1803701,2,1,1,0,18037,63757,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1803701,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');



