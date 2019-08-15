-- Improve Telaar Pathing

-- Add Pathing for Telaari Watcher 18488
SET @GUID1 := 66629;
SET @GUID2 := 66631;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2566.851,`position_y`=7382.413,`position_z`=11.00087 WHERE `guid`= @GUID1;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-2566.497,`position_y`=7379.325,`position_z`=11.3430 WHERE `guid`= @GUID2;
DELETE FROM `creature_movement` WHERE `id` IN (@GUID1,@GUID2);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID1, 1, -2566.851, 7382.413, 11.00087, 100, 0, 0),
(@GUID1, 2, -2566.736, 7378.661, 11.39806, 100, 0, 0),
(@GUID1, 3, -2569.962, 7418.315, 1.559742, 100, 0, 0),
(@GUID1, 4, -2572.815, 7445.869, 4.340359, 100, 0, 0),
(@GUID1, 5, -2573.675, 7460.542, 10.15329, 100, 0, 0),
(@GUID1, 6, -2573.956, 7464.917, 11.24331, 100, 0, 0),
(@GUID1, 7, -2573.675, 7460.542, 10.15329, 100, 0, 0),
(@GUID1, 8, -2572.815, 7445.869, 4.340359, 100, 0, 0),
(@GUID1, 9, -2569.962, 7418.315, 1.559742, 100, 0, 0),
(@GUID1, 10, -2566.736, 7378.661, 11.39806, 100, 0, 0);
-- 0xF130004838005438 .go xyz -2566.851 7382.413 11.00087

DELETE FROM `creature_linking` WHERE `master_guid` = @GUID1;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (@GUID2, @GUID1, 515);

-- Add Pathing for Telaari Watcher 18488
SET @GUID3 := 66640;
SET @GUID4 := 66639;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2480.649,`position_y`=7336.6,`position_z`=-17.79866 WHERE `guid`= @GUID3;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-2482.878,`position_y`=7335.6,`position_z`=-17.5687 WHERE `guid`= @GUID4;
DELETE FROM `creature_movement` WHERE `id` IN (@GUID3,@GUID4);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID3, 1, -2480.649, 7336.6, -17.79866, 100, 0, 0),
(@GUID3, 2, -2448.015, 7352.907, -28.20224, 100, 0, 0),
(@GUID3, 3, -2405.728, 7372.271, -32.07449, 100, 0, 0);
-- 0xF1300048380041E1 .go xyz -2480.649 7336.6 -17.79866

DELETE FROM `creature_linking` WHERE `master_guid` = @GUID3;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (@GUID4, @GUID3, 515);

-- Add Pathing for Telaari Elekk Rider 19071
SET @GUID5 := 68372;
SET @GUID6 := 68373;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2550.231,`position_y`=7280.92,`position_z`=14.70347 WHERE `guid`= @GUID5;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-2548.456,`position_y`=7277.18,`position_z`=14.7779 WHERE `guid`= @GUID6;

DELETE FROM `creature_movement` WHERE `id`=@GUID5;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID5, 1, -2550.231, 7280.92, 14.70347, 100, 0, 0),
(@GUID5, 2, -2555.593, 7292.204, 14.20347, 100, 0, 0),
(@GUID5, 3, -2563.061, 7307.253, 13.76042, 100, 0, 0),
(@GUID5, 4, -2583.113, 7320.264, 13.70477, 100, 0, 0),
(@GUID5, 5, -2596.285, 7330.887, 18.32977, 100, 0, 0),
(@GUID5, 6, -2606.457, 7337.029, 23.06847, 100, 0, 0),
(@GUID5, 7, -2618.704, 7329.77, 24.38335, 100, 0, 0),
(@GUID5, 8, -2618.74, 7326.01, 24.12334, 100, 0, 0),
(@GUID5, 9, -2619.849, 7303.307, 20.95547, 100, 0, 0),
(@GUID5, 10, -2620.372, 7300.563, 20.75835, 100, 0, 0),
(@GUID5, 11, -2629.007, 7284.644, 21.54023, 100, 0, 0),
(@GUID5, 12, -2645.07, 7281.11, 26.7065, 100, 0, 0),
(@GUID5, 13, -2656.06, 7280.93, 30.9492, 100, 0, 0),
(@GUID5, 14, -2657.39, 7261.71, 28.2527, 100, 0, 0),
(@GUID5, 15, -2657.79, 7246.68, 24.2768, 100, 0, 0),
(@GUID5, 16, -2650.86, 7221.78, 21.33, 100, 0, 0),
(@GUID5, 17, -2638.61, 7218.82, 21.0795, 100, 0, 0),
(@GUID5, 18, -2615.29, 7226.15, 18.9528, 100, 0, 0),
(@GUID5, 19, -2594.59, 7237.52, 13.1738, 100, 0, 0),
(@GUID5, 20, -2569.41, 7256.47, 14.2541, 100, 0, 0),
(@GUID5, 21, -2550.31, 7268.91, 14.9022, 100, 0, 0);
-- 0xF130004A7F0041E5 .go xyz -2550.231, 7280.92, 14.70347

DELETE FROM `creature_linking` WHERE `master_guid` = @GUID5;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (@GUID6, @GUID5, 515);

