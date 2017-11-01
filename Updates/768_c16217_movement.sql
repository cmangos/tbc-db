-- Lieutenant Tomathren c.16217 Movement
UPDATE creature SET MovementType=2, spawndist=0 WHERE id=16217;
DELETE FROM `creature_movement_template` WHERE `entry`=16217;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(16217,1,7939.313,-7570.184,145.0861,0,0,0),
(16217,2,7936.692,-7573.077,144.9864,0,0,0),
(16217,3,7933.509,-7571.933,145.5872,0,0,0),
(16217,4,7932.492,-7568.667,145.6822,0,0,0),
(16217,5,7935.133,-7565.319,145.5467,0,0,0),
(16217,6,7938.384,-7566.494,145.521,0,0,0);

