-- Add Pathing for Netherstorm Trigger 19656
SET @GUID := 70095;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=205.615,`position_y`=2591.421,`position_z`=102.9591 WHERE `guid`= @GUID AND `id` = 19656;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID, 1, 205.615, 2591.421, 102.9591, 100, 0, 0),
(@GUID, 2, 180.8384, 2590.947, 103.7108, 100, 0, 0),
(@GUID, 3, 205.615, 2591.421, 102.9591, 100, 0, 0),
(@GUID, 4, 213.0309, 2614.569, 103.4186, 100, 0, 0);
-- 0x203AE042401332000000050000128900 .go xyz 205.615 2591.421 102.9591

-- Add Pathing for Netherstorm Trigger 19656
SET @GUID := 70105;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=241.0069,`position_y`=2674.378,`position_z`=120.358 WHERE `guid`= @GUID AND `id` = 19656; 
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID, 1, 241.0069, 2674.378, 120.358, 100, 0, 0),
(@GUID, 2, 232.3445, 2675.197, 119.8104, 100, 0, 0),
(@GUID, 3, 239.9991, 2681.322, 122.4962, 100, 0, 0),
(@GUID, 4, 234.4069, 2681.456, 122.0156, 100, 0, 0),
(@GUID, 5, 232.3445, 2675.197, 119.8104, 100, 0, 0),
(@GUID, 6, 241.0069, 2674.378, 120.358, 100, 0, 0),
(@GUID, 7, 254.2483, 2681.023, 120.3007, 100, 0, 0),
(@GUID, 8, 261.4088, 2673.288, 116.7954, 100, 0, 0),
(@GUID, 9, 241.1759, 2665.131, 117.4034, 100, 0, 0),
(@GUID, 10, 227.3763, 2666.546, 116.5616, 100, 0, 0);
-- 0x203AE042401332000000050001928900 .go xyz 241.0069 2674.378 120.358

