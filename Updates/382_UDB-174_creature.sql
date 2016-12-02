-- Silvermoon City
-- Tiny Arcane Construct & Trayanise
UPDATE creature SET position_x = 9885.396484, position_y = -7178.180664, position_z = 31.035252, orientation = 2.174400, spawndist = 0, MovementType = 2 WHERE guid = 65505;
UPDATE creature SET position_x = 9885.396484, position_y = -7178.180664, position_z = 31.035252, orientation = 2.174400, spawndist = 0, MovementType = 0 WHERE guid = 65501;
DELETE FROM creature_movement WHERE id = 65505;
UPDATE creature_template SET SpeedRun = 2.14286 WHERE entry = 18230;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18237;
DELETE FROM creature_movement_template WHERE entry = 18237;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18237,1,9885.396484,-7178.180664,31.035252,0,1823701,2.174400,0,0),(18237,2,9874.66,-7162.49,30.9883,0,0,1.6849,0,0),(18237,3,9867.27,-7139.41,30.8761,0,0,2.7067,0,0),
(18237,4,9854.31,-7131.54,30.8761,0,0,4.5838,0,0),(18237,5,9847.64,-7157.88,30.872,0,0,5.76032,0,0),(18237,6,9861.9,-7170.87,31.0189,0,0,6.05249,0,0),
(18237,7,9873.74,-7173.99,31.0397,0,0,0.00492287,0,0),(18237,8,9890.37,-7171.11,32.1895,0,0,5.43674,0,0),(18237,9,9895.02,-7175.49,31.958,0,0,4.46547,0,0),
(18237,10,9893.36,-7182.49,31.0275,0,0,4.92022,0,0),(18237,11,9895.51,-7193.74,31.0417,0,0,5.16841,0,0),(18237,12,9906.69,-7211.17,30.8854,0,0,5.81557,0,0),
(18237,13,9931.21,-7214.64,30.862,0,0,5.76216,0,0),(18237,14,9940.99,-7221.3,30.864,0,0,0.741898,0,0),(18237,15,9954.58,-7211.49,30.8713,0,0,2.46271,0,0),
(18237,16,9942.29,-7198.26,30.8727,0,0,2.97636,0,0),(18237,17,9926.37,-7194.28,30.8702,0,0,2.64256,0,0),(18237,18,9915.16,-7187.84,30.9266,0,0,3.17113,0,0),
(18237,19,9897.61,-7190.49,31.0442,0,0,2.35529,0,0),(18237,20,9885.35,-7178.22,31.0347,0,0,2.32702,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1823701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1823701,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- link
DELETE FROM creature_linking WHERE guid = 65501;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(65501, 65505, 512);


