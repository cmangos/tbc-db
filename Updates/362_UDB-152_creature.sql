-- Silvermoon City

-- Mirvedon <Apprentice Blacksmith>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57661;
DELETE FROM creature_movement WHERE id = 57661;
UPDATE creature_template SET NpcFlags = 0, MovementType = 2 WHERE entry = 16671;
DELETE FROM creature_movement_template WHERE entry = 16671;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16671,1,9859.67,-7361.79,18.5932,30000,0,4.66003,0,0),
(16671,2,9858.73,-7363.12,18.5903,60000,1667101,3.02245,0,0),
(16671,3,9859.67,-7361.79,18.5932,1000,0,1.31107,0,0),
(16671,4,9859.67,-7361.79,18.5932,240000,0,4.66003,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1667101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1667101,2,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1667101,58,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Gloresse <Apprentice Engineer>
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 16668;

-- Danwe <Engineering Trainer>
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57657;
DELETE FROM creature_movement WHERE id = 57657;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16667;
DELETE FROM creature_movement_template WHERE entry = 16667;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16667,1,9822.16,-7333.16,26.3,30000,0,0.8303,0,0),
(16667,2,9822.35,-7331.03,26.2814,0,0,2.14044,0,0),
(16667,3,9820.39,-7329.52,26.2814,0,0,3.48268,0,0),
(16667,4,9819.43,-7330.37,26.2814,30000,1666701,4.24059,0,0),
(16667,5,9820.59,-7329.88,26.2814,0,0,5.83102,0,0),
(16667,6,9821.49,-7331.48,26.2814,0,0,5.17521,0,0),
(16667,7,9821.25,-7331.97,26.2814,30000,1666702,3.97591,0,0),
(16667,8,9822.16,-7333.16,26.3,0,0,5.81059,0,0),
(16667,9,9822.16,-7333.16,26.3,200000,0,0.8303,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1666701,1666702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1666701,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1666701,28,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1666702,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1666702,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Dolothos <Apprentice Enchanter>
UPDATE creature_template SET GossipMenuId = 8828 WHERE entry = 16634;

-- Razia <Apprentice Alchemist>
UPDATE creature SET position_x = 10013.35, position_y = -7214.863, position_z = 32.07484, orientation = 2.042035, Spawndist = 0, MovementType = 2 WHERE guid = 57637;
DELETE FROM creature_movement WHERE id = 57637;
UPDATE creature_template SET NpcFlags = 0, MovementType = 2 WHERE entry = 16643;
DELETE FROM creature_movement_template WHERE entry = 16643;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16643,1,10013.35,-7214.863,32.07484,30000,0,2.042035,0,0),
(16643,2,10013.5,-7217.56,32.0748,0,0,5.5705,0,0),
(16643,3,10016.2,-7218.02,32.0748,20000,1664301,0.0218375,0,0),
(16643,4,10014.7,-7217.3,32.0764,0,0,2.13927,0,0),
(16643,5,10017.5,-7213.64,32.0764,0,0,1.15909,0,0),
(16643,6,10017.7,-7210.42,32.0756,6000,1664302,1.274931,0,0),
(16643,7,10017.5,-7213.48,32.0764,0,0,3.7964,0,0),
(16643,8,10013.35,-7214.863,32.07484,0,0,3.30946,0,0),
(16643,9,10013.35,-7214.863,32.07484,240000,0,2.042035,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1664301,1664302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1664301,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1664302,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- [DND]Spirit 1 -- removed spawned by event?
DELETE FROM creature WHERE guid = 84939;
DELETE FROM creature_addon WHERE guid = 84939;


