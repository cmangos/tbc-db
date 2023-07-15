-- Tzerak 17528
UPDATE creature SET position_x = -2542.0098, position_y = -11328.113, position_z = 22.951746, orientation = 0.7508, spawndist = 0, MovementType = 2 WHERE guid = 84399;
DELETE FROM creature_movement_template WHERE entry = 17528;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(17528,1 ,-2542.0098,-11328.113,22.951746,0.7508,1000,1752801),
(17528,2 ,-2528.0632,-11315.1,24.877623,100,0,0),
(17528,3 ,-2515.7463,-11301.56,30.764652,100,0,0),
(17528,4 ,-2494.1384,-11286.069,32.254124,100,0,0),
(17528,5 ,-2472.6758,-11269.668,30.238255,100,0,0),
(17528,6 ,-2449.1199,-11272.563,30.093317,100,0,0),
(17528,7 ,-2418.4824,-11277.227,30.320368,100,0,0),
(17528,8 ,-2407.791,-11286.277,33.320366,100,0,0),
(17528,9 ,-2390.107,-11294.747,30.031324,100,0,0),
(17528,10,-2378.3027,-11284.102,29.5782,100,0,0),
(17528,11,-2357.2349,-11270.58,28.90901,100,0,0),
(17528,12,-2339.6467,-11267.842,31.870926,100,0,0),
(17528,13,-2313.0842,-11266.615,35.94121,100,1000,0),
(17528,14,-2313.0842,-11266.615,35.94121,3.14159,120000,0),
(17528,15,-2313.0842,-11266.615,35.94121,3.14159,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1752801,1752802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1752801,1000,0,0,0,0,0,0,0x04,14070,0,0,0,0,0,0,0,'say');
