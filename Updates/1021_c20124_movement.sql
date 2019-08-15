-- Improve Movement for Kradu Grimblade 20124
-- Still glitches due to 2 walkable layers stacked on each other, resolved by exiting and reentering render range
SET @ENTRY := 20124;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1850.47,`position_y`=5229.92,`position_z`=-38.04539 WHERE `id`= @ENTRY;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@ENTRY, 1, -1850.47, 5229.92, -38.04539, 100, 0, 0),
(@ENTRY, 2, -1848.114, 5231.408, -38.04539, 100, 0, 0),
(@ENTRY, 3, -1847.755, 5230.351, -38.04538, 4.77226, 25000, 2012402),
(@ENTRY, 4, -1847.761, 5231.14, -38.04539, 100, 0, 0),
(@ENTRY, 5, -1850.892, 5229.098, -38.04539, 100, 0, 0),
(@ENTRY, 6, -1850.955, 5228.034, -38.04538, 4.65294, 110000, 2012401);
-- 0xF130004E9C000763 .go xyz -1850.47 5229.92 -38.04539

