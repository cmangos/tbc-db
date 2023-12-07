-- Inspector Tarem 23567
UPDATE creature SET position_x = -3701.786, position_y = -2538.848, position_z = 69.40118, orientation = 0.9075712, spawndist = 0, MovementType = 2 WHERE id = 23567;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 23567;
DELETE FROM creature_movement WHERE Id IN (18594);
-- 18594	1	-3701.74	-2538.78	69.3945	0.90757	10000	0	
-- 18594	2	-3701.74	-2538.78	69.3945	0.90757	3000	2356701	
-- 18594	3	-3701.74	-2538.78	69.3945	0.90757	50000	0	
DELETE FROM creature_movement_template WHERE Entry = 23567;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(23567,1,-3701.74,-2538.78,69.3945,100,60000,0),
(23567,2,-3700.2078,-2536.303,69.23907,100,0,0),
(23567,3,-3700.2078,-2536.303,69.23907,2.44346,27000,2356701),
(23567,4,-3701.786,-2538.848,69.40118,100,0,0),
(23567,5,-3701.786,-2538.848,69.40118,0.9075712,180000,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2356701);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2356701,2000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'KNEEL'),
(2356701,4000,0,0,0,0,0,0,0x04,22038,0,0,0,0,0,0,0,'Say'), -- same
(2356701,25000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND');

