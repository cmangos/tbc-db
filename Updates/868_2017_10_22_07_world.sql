-- Add waypoints of Dr. Whitherlimb 22062
SET @GUID := 98757;
UPDATE `creature` SET `MovementType`= 2, `spawndist` = 0 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID, 1, 7160.109, -6607.731, 60.658,0,0,100),
(@GUID, 2, 7157.843, -6617.142, 60.658,0,0,100),
(@GUID, 3, 7162.991, -6624.500, 60.658,0,0,100),
(@GUID, 4, 7171.727, -6626.077, 60.864,0,0,100),
(@GUID, 5, 7176.713, -6622.445, 63.658,0,0,100),
(@GUID, 6, 7179.540, -6610.650, 63.658,0,0,100),
(@GUID, 7, 7175.270, -6604.530, 60.658,0,0,100),
(@GUID, 8, 7167.625, -6603.202, 60.658,0,0,100);

SET @GUID := 98758;
UPDATE `creature` SET `MovementType`= 2, `spawndist` = 0 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID, 1, 7224.314, -6404.754, 56.166,0,0,100),
(@GUID, 2, 7215.937, -6405.194, 56.166,0,0,100),
(@GUID, 3, 7211.889, -6409.292, 59.166,0,0,100),
(@GUID, 4, 7212.473, -6421.642, 59.166,0,0,100),
(@GUID, 5, 7216.754, -6426.262, 56.166,0,0,100),
(@GUID, 6, 7225.599, -6425.639, 56.166,0,0,100),
(@GUID, 7, 7231.386, -6419.246, 56.166,0,0,100),
(@GUID, 8, 7230.532, -6411.129, 56.166,0,0,100);

SET @GUID := 98756;
UPDATE `creature` SET `MovementType`= 2, `spawndist` = 0 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID, 1, 6294.176, -6468.075, 83.011,0,0,100),
(@GUID, 2, 6301.176, -6475.325, 83.011,0,0,100),
(@GUID, 3, 6309.716, -6475.180, 83.011,0,0,100),
(@GUID, 4, 6315.844, -6468.936, 83.197,0,0,100),
(@GUID, 5, 6315.235, -6462.805, 86.010,0,0,100),
(@GUID, 6, 6306.685, -6453.575, 86.010,0,0,100),
(@GUID, 7, 6300.742, -6453.973, 83.010,0,0,100),
(@GUID, 8, 6294.723, -6459.484, 83.010,0,0,100);

SET @GUID := 98755;
UPDATE `creature` SET `MovementType`= 2, `spawndist` = 0 WHERE `guid` = @GUID;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID, 1, 6305.395, -6258.748, 77.813,0,0,100),
(@GUID, 2, 6312.150, -6258.673, 80.813,0,0,100),
(@GUID, 3, 6319.655, -6250.082, 80.813,0,0,100),
(@GUID, 4, 6320.900, -6243.770, 77.942,0,0,100),
(@GUID, 5, 6314.049, -6237.902, 77.813,0,0,100),
(@GUID, 6, 6305.433, -6238.323, 77.813,0,0,100),
(@GUID, 7, 6299.604, -6244.360, 77.813,0,0,100),
(@GUID, 8, 6299.698, -6253.437, 77.813,0,0,100);

