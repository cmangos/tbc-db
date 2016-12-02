-- Silvermoon City
-- Herald Amorlin -- gossip
UPDATE creature_template SET GossipMenuId = 5782 WHERE Entry = 20724;

-- Welethelon <Blunt Weapon Merchant>
UPDATE creature SET position_x = 9665.084, position_y = -7073.852, position_z = 14.32864, orientation = 4.869938, Spawndist = 0, MovementType = 2 WHERE guid = 57631;
DELETE FROM creature_movement WHERE id = 57631;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16637;
DELETE FROM creature_movement_template WHERE entry = 16637;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16637,1,9665.084,-7073.852,14.32864,30000,0,4.869938,0,0),(16637,2,9663.17,-7075.62,14.3327,0,0,4.51756,0,0),(16637,3,9662.24,-7078.38,14.3211,60000,0,4.83861,0,0),
(16637,4,9668.51,-7079.23,14.3343,0,0,6.24937,0,0),(16637,5,9668.51,-7079.23,14.3343,60000,0,4.62202,0,0),(16637,6,9666.14,-7076.94,14.3352,0,0,1.82958,0,0),
(16637,7,9665.084,-7073.852,14.32864,0,0,1.82958,0,0),(16637,8,9665.084,-7073.852,14.32864,30000,0,4.869938,0,0);

-- Noraelath <Leather Armor Merchant>
UPDATE creature SET position_x = 9651.68, position_y = -7070.56, position_z = 14.3104, orientation = 4.01189, Spawndist = 0, MovementType = 2 WHERE guid = 57680;
DELETE FROM creature_movement WHERE id = 57680;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16691;
DELETE FROM creature_movement_template WHERE entry = 16691;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16691,1,9651.68,-7070.56,14.3104,15000,0,4.01189,0,0),(16691,2,9650.83,-7073.55,14.3112,55000,0,4.28678,0,0),(16691,3,9649.54,-7070.92,14.3095,0,0,3.5163,0,0),
(16691,4,9648.21,-7071.54,14.3092,55000,0,4.22748,0,0),(16691,5,9651.68,-7070.56,14.3104,0,0,0.445533,0,0),(16691,6,9651.68,-7070.56,14.3104,40000,0,4.01189,0,0);

-- Rahein <Blade Vendor>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57668;
DELETE FROM creature_movement WHERE id = 57668;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16678;
DELETE FROM creature_movement_template WHERE entry = 16678;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16678,1,9630.69,-7032.97,15.2687,50000,0,4.7088,0,0),(16678,2,9636.05,-7031.66,15.2674,40000,1667801,0.794994,0,0),(16678,3,9630.66,-7032.19,15.2674,30000,0,3.27842,0,0),
(16678,4,9627.83,-7031.5,15.2674,40000,1667801,2.88416,0,0),(16678,5,9630.69,-7032.97,15.2687,0,0,5.94328,0,0),(16678,6,9630.69,-7032.97,15.2687,25000,0,4.7088,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1667801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1667801,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1667801,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Feledis <Axe Vendor>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57656;
DELETE FROM creature_movement WHERE id = 57656;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16666;
DELETE FROM creature_movement_template WHERE entry = 16666;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16666,1,9644.87,-7037.51,15.2466,20000,0,4.28557,0,0),(16666,2,9649.12,-7037.71,15.247,0,0,0.629723,0,0),(16666,3,9649.12,-7037.71,15.247,0,0,0.629723,0,0),
(16666,4,9649.84,-7036.01,15.2545,45000,1666601,2.92466,0,0),(16666,5,9650.34,-7034.34,15.2614,0,0,1.71671,0,0),(16666,6,9647.34,-7032.51,15.2673,0,0,3.22389,0,0),
(16666,7,9647.34,-7032.51,15.2673,30000,0,4.63133,0,0),(16666,8,9644.26,-7032.12,15.2673,0,0,3.60854,0,0),(16666,9,9643.18,-7034.19,15.2648,30000,0,4.48346,0,0),
(16666,10,9643.12,-7036.25,15.254,0,0,5.52961,0,0),(16666,11,9644.87,-7037.51,15.2466,0,0,5.52961,0,0),(16666,12,9644.87,-7037.51,15.2466,20000,0,4.28557,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1666601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1666601,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1666601,43,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

