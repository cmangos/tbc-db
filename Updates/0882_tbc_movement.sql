-- Add Movement for Humphry 16823
SET @ENTRY := 16823;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = -708.30505,`position_y` = 2609.6428,`position_z` = 91.01124, `orientation` = 0.224904835224151611 WHERE `id` = @ENTRY;
UPDATE `creature_template_addon` SET `emote` = 0 WHERE `entry` = @ENTRY;
DELETE FROM `creature_movement_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@ENTRY, 1, -708.30505, 2609.6428, 91.01124, 100, 10000, 1682303),
(@ENTRY, 2, -715.83636, 2596.8953, 91.011246, 100, 0, 0),
(@ENTRY, 3, -715.83636, 2596.8953, 91.011246, 3.543018341064453125, 45000, 1682301),
(@ENTRY, 4, -718.71124, 2599.0332, 91.01114, 100, 0, 0),
(@ENTRY, 5, -718.71124, 2599.0332, 91.01114, 4.014257431030273437, 70000, 1682302),
(@ENTRY, 6, -708.30505, 2609.6428, 91.01124, 100, 10000, 1682303),
(@ENTRY, 7, -717.3172, 2607.5818, 91.01123, 100, 0, 0),
(@ENTRY, 8, -717.3172, 2607.5818, 91.01123, 2.042035102844238281, 45000, 1682301),
(@ENTRY, 9, -708.30505, 2609.6428, 91.01124, 100, 10000, 1682303),
(@ENTRY, 10, -715.83636, 2596.8953, 91.011246, 100, 0, 0),
(@ENTRY, 11, -715.83636, 2596.8953, 91.011246, 3.543018341064453125, 45000, 1682301),
(@ENTRY, 12, -708.30505, 2609.6428, 91.01124, 100, 10000, 1682303),
(@ENTRY, 13, -718.71124, 2599.0332, 91.01114, 100, 0, 0),
(@ENTRY, 14, -718.71124, 2599.0332, 91.01114, 4.014257431030273437, 70000, 1682302);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1682301,1682302,1682303);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `data_flags`, `comments`) VALUES
(1682301, 0, 1, 233, 0, 4, 'Humphry 16823 - EMOTE_STATE_WORK_NOSHEATHE_MINING'),
(1682301, 44000, 1, 0, 0, 4, 'Humphry 16823 - EMOTE_ONESHOT_NONE'),

(1682302, 0, 1, 69, 0, 4, 'Humphry 16823 - EMOTE_STATE_USESTANDING'),
(1682302, 69000, 1, 0, 0, 4, 'Humphry 16823 - EMOTE_ONESHOT_NONE'),

(1682303, 0, 28, 8, 0, 0, 'Humphry 16823 - UNIT_STAND_STATE_KNEEL'),
(1682303, 9000, 28, 0, 0, 0, 'Humphry 16823 - UNIT_STAND_STATE_STAND');

-- Readd Path for Warboss Nekrogg 19263
SET @ENTRY := 19263;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = -1169.1476,`position_y` = 3247.6526,`position_z` = 115.8963 WHERE `id` = @ENTRY;
DELETE FROM `creature_movement_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@ENTRY, 0, 1, -1169.1476, 3247.6526, 115.8963, 100, 0, 0),
(@ENTRY, 0, 2, -1176.5558, 3243.1106, 114.60441, 100, 0, 0),
(@ENTRY, 0, 3, -1183.971, 3239.4177, 113.42218, 100, 0, 0),
(@ENTRY, 0, 4, -1192.425, 3234.1707, 111.9446, 100, 0, 0),
(@ENTRY, 0, 5, -1201.2584, 3229.8494, 108.41278, 100, 0, 0),
(@ENTRY, 0, 6, -1192.425, 3234.1707, 111.9446, 100, 0, 0),
(@ENTRY, 0, 7, -1183.971, 3239.4177, 113.42218, 100, 0, 0),
(@ENTRY, 0, 8, -1176.5558, 3243.1106, 114.60441, 100, 0, 0);
-- 0x2030A0424012CFC0002A8C00001F408F .go xyz -1169.1476 3247.6526 115.8963

-- Add Pathing for Cabal Skirmisher 21661 on Horses
-- Pathing for Cabal Skirmisher Entry: 21661 'TBCDB FORMAT'
DELETE FROM `creature_linking` WHERE `master_guid` IN (75689);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (75690,75689,128+512+1024+8192);
SET @GUID := 75689;
UPDATE `creature` SET `spawndist`=0, `MovementType`=2, `position_x`=-3049.762, `position_y`=4943.09, `position_z`=-22.1865, `spawntimesecsmin` = 120, `spawntimesecsmax` = 300 WHERE `guid`=@GUID;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0, `position_x`=-3059.272, `position_y`=4938.409, `position_z`=-21.7935, `spawntimesecsmin` = 120, `spawntimesecsmax` = 300 WHERE `guid`=75690;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@GUID, 1, -2962.236, 4952.288, -22.08331, 100, 0, 5),
(@GUID, 2, -2944.132, 4971.261, -21.78384, 100, 0, 0),
(@GUID, 3, -2929.484, 5005.881, -22.49984, 100, 0, 0),
(@GUID, 4, -2924.161, 5036.944, -22.4646, 100, 0, 0),
(@GUID, 5, -2922.276, 5072.281, -21.42675, 100, 0, 0),
(@GUID, 6, -2925.618, 5106.624, -20.76781, 100, 0, 0),
(@GUID, 7, -2927.495, 5137.858, -19.21931, 100, 0, 0),
(@GUID, 8, -2928.035, 5168.68, -16.60786, 100, 0, 0),
(@GUID, 9, -2926.693, 5201.45, -14.76146, 100, 0, 0),
(@GUID, 10, -2918.594, 5234.244, -14.88584, 100, 0, 0),
(@GUID, 11, -2918.92, 5264.158, -13.34385, 100, 0, 0),
(@GUID, 12, -2900.583, 5298.258, -12.42828, 100, 0, 0),
(@GUID, 13, -2900.292, 5332.079, -12.08662, 100, 0, 0),
(@GUID, 14, -2903.338, 5338.838, -12.46162, 100, 117000, 0), -- path probably incomplete
(@GUID, 15, -2906.685, 5302.494, -12.83662, 100, 0, 0),
(@GUID, 16, -2918.92, 5264.158, -13.26084, 100, 0, 0),
(@GUID, 17, -2941.166, 5238.661, -15.6436, 100, 0, 0),
(@GUID, 18, -2959.861, 5217.088, -17.18541, 100, 0, 0),
(@GUID, 19, -2980.556, 5181.067, -20.77648, 100, 0, 0),
(@GUID, 20, -2995.009, 5137.199, -21.44526, 100, 0, 0),
(@GUID, 21, -3003.47, 5088.14, -21.66907, 100, 0, 0),
(@GUID, 22, -2986.967, 5049.639, -23.80055, 100, 0, 0),
(@GUID, 23, -2944.132, 4971.261, -21.78384, 100, 0, 0),
(@GUID, 24, -2962.236, 4952.288, -22.08331, 100, 0, 0),
(@GUID, 25, -3049.76, 4943.09, -22.1865, 100, 1000, 1);
-- 0x2016FC424015274000002C0000313092 .go xyz -2962.236, 4952.288, -22.08331

-- Add Pathing for Kirrik the Awakened 22272
DELETE FROM `creature_linking` WHERE `master_guid` IN (78290);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (78554,78290,512),(78555,78290,512);
UPDATE `creature` SET `spawndist`=0, `MovementType`=0, `position_x`=-2858.28 , `position_y`=5059.72, `position_z`=-19.37, `spawntimesecsmin` = 120, `spawntimesecsmax` = 300 WHERE `guid`=78554;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0, `position_x`=-2854.46 , `position_y`=5057.92, `position_z`=-19.15, `spawntimesecsmin` = 120, `spawntimesecsmax` = 300 WHERE `guid`=78555;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2855.576,`position_y`=5060.972,`position_z`=-19.11174 WHERE `guid`= 78290;
DELETE FROM `creature_movement` WHERE `id` = 78290;
DELETE FROM `creature_movement_template` WHERE `entry`= 22272;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(22272, 1, -2855.576, 5060.972, -19.11174, 100, 0, 0),
(22272, 2, -2846.081, 5070.058, -18.10468, 100, 0, 0),
(22272, 3, -2838.776, 5074.004, -17.35468, 100, 0, 0),
(22272, 4, -2832.487, 5076.416, -16.55785, 100, 0, 0),
(22272, 5, -2829.693, 5070.368, -16.05785, 100, 0, 0),
(22272, 6, -2833.903, 5065.055, -16.61174, 100, 0, 0),
(22272, 7, -2840.068, 5058.869, -17.48674, 100, 0, 0),
(22272, 8, -2845.244, 5056.755, -18.11174, 100, 0, 0),
(22272, 9, -2851.184, 5053.049, -18.98674, 100, 0, 0),
(22272, 10, -2855.667, 5055.453, -19.23674, 100, 0, 0);
-- 0xF13000570000261C .go xyz -2855.576 5060.972 -19.11174

-- Add Pathing for Mok'Nathal Hunter 21081 (74096/74097)
SET @GUID := 74096;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2091.0728,`position_y`=4737.275,`position_z`=143.78003 WHERE `guid`= @GUID;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=2094.6752,`position_y`=4735.022,`position_z`=143.7814 WHERE `guid`= 74097;
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (74097, 74096, 512);
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID, 1, 2091.0728, 4737.275, 143.78003, 100, 0, 0),
(@GUID, 2, 2121.3452, 4779.1426, 143.98746, 100, 0, 0),
(@GUID, 3, 2152.2275, 4755.893, 153.68098, 100, 0, 0);
-- 0x203AF04240149640006D8C0005960001 .go xyz 2091.0728 4737.275 143.78003

-- Readd Pathing for Kor'kron Wyvern Rider 21153 (74219,74220)
DELETE FROM `creature_movement` WHERE `id` IN (SELECT guid from creature where id IN (21153)) ORDER BY id,point;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 2115301;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(74219, 1, -3014.28, 2567.43, 141.622, 100, 0, 9, 'GENERIC - Set Active Object On'),
(74219, 2, -2997.18, 2547.18, 141.622, 100, 0, 0, NULL),
(74219, 3, -2975.06, 2527.35, 141.622, 100, 0, 0, NULL),
(74219, 4, -2944.82, 2526, 141.622, 100, 0, 0, NULL),
(74219, 5, -2925.33, 2546.51, 141.622, 100, 0, 0, NULL),
(74219, 6, -2919.25, 2565.87, 141.622, 100, 0, 0, NULL),
(74219, 7, -2920.08, 2589.36, 141.622, 100, 0, 0, NULL),
(74219, 8, -2931.99, 2608.76, 141.622, 100, 0, 0, NULL),
(74219, 9, -2955.63, 2618.87, 141.622, 100, 0, 0, NULL),
(74219, 10, -2977.5, 2619.67, 141.622, 100, 0, 0, NULL),
(74219, 11, -3014.67, 2609.54, 141.622, 100, 0, 0, NULL),
(74219, 12, -3055.04, 2590.46, 141.622, 100, 0, 0, NULL),
(74219, 13, -3085.54, 2571.63, 141.622, 100, 0, 0, NULL),
(74219, 14, -3114.72, 2555.92, 141.622, 100, 0, 0, NULL),
(74219, 15, -3143.01, 2552.03, 141.622, 100, 0, 0, NULL),
(74219, 16, -3176.69, 2560.46, 141.622, 100, 0, 0, NULL),
(74219, 17, -3190.57, 2587.82, 141.622, 100, 0, 0, NULL),
(74219, 18, -3187.1, 2615.27, 141.622, 100, 0, 0, NULL),
(74219, 19, -3164.5, 2634.34, 141.622, 100, 0, 0, NULL),
(74219, 20, -3137.51, 2639.93, 141.622, 100, 0, 0, NULL),
(74219, 21, -3099.44, 2633.7, 141.622, 100, 0, 0, NULL),
(74219, 22, -3074.34, 2622.92, 141.622, 100, 0, 0, NULL),
(74219, 23, -3057.4, 2608.77, 141.622, 100, 0, 0, NULL),
(74219, 24, -3045.57, 2592.94, 140.845, 100, 0, 0, NULL),
(74219, 25, -3028.98, 2582, 141.622, 100, 0, 0, NULL),

(74220, 1, -3045.57, 2592.94, 140.845, 100, 0, 9, 'GENERIC - Set Active Object On'),
(74220, 2, -3028.98, 2582, 141.622, 100, 0, 0, NULL),
(74220, 3, -3014.28, 2567.43, 141.622, 100, 0, 0, NULL),
(74220, 4, -2997.18, 2547.18, 141.622, 100, 0, 0, NULL),
(74220, 5, -2975.06, 2527.35, 141.622, 100, 0, 0, NULL),
(74220, 6, -2944.82, 2526, 141.622, 100, 0, 0, NULL),
(74220, 7, -2925.33, 2546.51, 141.622, 100, 0, 0, NULL),
(74220, 8, -2919.25, 2565.87, 141.622, 100, 0, 0, NULL),
(74220, 9, -2920.08, 2589.36, 141.622, 100, 0, 0, NULL),
(74220, 10, -2931.99, 2608.76, 141.622, 100, 0, 0, NULL),
(74220, 11, -2955.63, 2618.87, 141.622, 100, 0, 0, NULL),
(74220, 12, -2977.5, 2619.67, 141.622, 100, 0, 0, NULL),
(74220, 13, -3014.67, 2609.54, 141.622, 100, 0, 0, NULL),
(74220, 14, -3055.04, 2590.46, 141.622, 100, 0, 0, NULL),
(74220, 15, -3085.54, 2571.63, 141.622, 100, 0, 0, NULL),
(74220, 16, -3114.72, 2555.92, 141.622, 100, 0, 0, NULL),
(74220, 17, -3143.01, 2552.03, 141.622, 100, 0, 0, NULL),
(74220, 18, -3176.69, 2560.46, 141.622, 100, 0, 0, NULL),
(74220, 19, -3190.57, 2587.82, 141.622, 100, 0, 0, NULL),
(74220, 20, -3187.1, 2615.27, 141.622, 100, 0, 0, NULL),
(74220, 21, -3164.5, 2634.34, 141.622, 100, 0, 0, NULL),
(74220, 22, -3137.51, 2639.93, 141.622, 100, 0, 0, NULL),
(74220, 23, -3099.44, 2633.7, 141.622, 100, 0, 0, NULL),
(74220, 24, -3074.34, 2622.92, 141.622, 100, 0, 0, NULL),
(74220, 25, -3057.4, 2608.77, 141.622, 100, 0, 0, NULL);

-- Honor Hold Defender 16842 'cmangos FORMAT'
SET @GUID := 57951;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = -700.562,`position_y` = 2712.6985,`position_z` = 94.734665 WHERE `guid` = @GUID;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0, `position_x` = -698.546,`position_y` = 2713.9548,`position_z` = 94.734665 WHERE `guid` = 57952;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@GUID, 1, -700.562, 2712.6985, 94.734665, 100, 0, 0),
(@GUID, 2, -703.22766, 2713.1536, 94.73219, 100, 0, 0),
(@GUID, 3, -710.5607, 2711.432, 94.721115, 100, 0, 0),
(@GUID, 4, -710.79285, 2700.6575, 94.516945, 100, 0, 0),
(@GUID, 5, -706.7723, 2686.2712, 93.964874, 100, 0, 0),
(@GUID, 6, -701.7746, 2680.8767, 93.88321, 100, 0, 0),
(@GUID, 7, -692.6484, 2678.5547, 92.92016, 100, 0, 0),
(@GUID, 8, -678.9325, 2668.6587, 89.750725, 100, 0, 0),
(@GUID, 9, -669.2742, 2676.0159, 89.25097, 100, 0, 0),
(@GUID, 10, -655.8466, 2692.6614, 88.344505, 100, 0, 0),
(@GUID, 11, -645.4816, 2707.8762, 87.32305, 100, 0, 0),
(@GUID, 12, -641.12823, 2717.0642, 86.32305, 100, 0, 0),
(@GUID, 13, -638.90027, 2724.104, 86.05352, 100, 0, 0),
(@GUID, 14, -629.575, 2742.1858, 84.83964, 100, 0, 0),
(@GUID, 15, -615.359, 2751.7605, 82.71122, 100, 0, 0),
(@GUID, 16, -603.9297, 2766.9385, 77.52836, 100, 0, 0),
(@GUID, 17, -596.2506, 2785.2695, 71.469315, 100, 0, 0),
(@GUID, 18, -591.23364, 2805.4658, 65.7934, 100, 0, 0),
(@GUID, 19, -593.68524, 2829.543, 60.444527, 100, 0, 0),
(@GUID, 20, -599.9888, 2844.7542, 58.006996, 100, 0, 0),
(@GUID, 21, -609.4898, 2857.1965, 55.4446, 100, 0, 0),
(@GUID, 22, -625.80664, 2864.2744, 51.998066, 100, 0, 0),
(@GUID, 23, -642.6576, 2874.412, 49.88688, 100, 0, 0),
(@GUID, 24, -642.6576, 2874.412, 49.88688, 100, 0, 0),
(@GUID, 25, -657.786, 2869.014, 49.068275, 100, 0, 0),
(@GUID, 26, -653.80676, 2865.1497, 49.282, 100, 0, 0),
(@GUID, 27, -625.80664, 2864.2744, 51.998066, 100, 0, 0),
(@GUID, 28, -609.4898, 2857.1965, 55.4446, 100, 0, 0),
(@GUID, 29, -599.9888, 2844.7542, 58.006996, 100, 0, 0),
(@GUID, 30, -593.68524, 2829.543, 60.444527, 100, 0, 0),
(@GUID, 31, -592.8177, 2812.6936, 64.13447, 100, 0, 0),
(@GUID, 32, -598.3761, 2790.3599, 70.37776, 100, 0, 0),
(@GUID, 33, -607.27185, 2765.8972, 78.34794, 100, 0, 0),
(@GUID, 34, -615.6845, 2755.0952, 82.07499, 100, 0, 0),
(@GUID, 35, -628.7704, 2740.4817, 84.80802, 100, 0, 0),
(@GUID, 36, -639.1848, 2727.1667, 85.87554, 100, 0, 0),
(@GUID, 37, -643.4325, 2712.7217, 86.82305, 100, 0, 0),
(@GUID, 38, -651.19336, 2700.5476, 87.73565, 100, 0, 0),
(@GUID, 39, -659.485, 2689.2383, 88.65627, 100, 0, 0),
(@GUID, 40, -669.38135, 2677.8386, 89.29211, 100, 0, 0),
(@GUID, 41, -679.88477, 2668.0981, 89.90734, 100, 0, 0),
(@GUID, 42, -691.22266, 2677.9268, 92.625725, 100, 0, 0),
(@GUID, 43, -699.1629, 2681.3674, 93.750725, 100, 0, 0),
(@GUID, 44, -705.65753, 2690.0686, 93.964874, 100, 0, 0),
(@GUID, 45, -709.8926, 2703.1475, 94.43452, 100, 0, 0),
(@GUID, 46, -710.4089, 2710.8113, 94.720474, 100, 0, 0);

-- Honor Hold Defender 16842 'cmangos FORMAT'
SET @GUID := 57943;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = -774.9339,`position_y` = 2639.4988,`position_z` = 107.93347 WHERE `guid` = @GUID;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0, `position_x` = -774.5711,`position_y` = 2638.5059,`position_z` = 107.93347 WHERE `guid` = 57944;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@GUID, 01, -774.9339, 2639.4988, 107.93347, 100, 0, 0),
(@GUID, 02, -774.5711, 2638.5059, 107.93347, 100, 0, 0),
(@GUID, 03, -760.7536, 2645.9062, 107.93347, 100, 0, 0),
(@GUID, 04, -751.00226, 2652.9587, 103.41084, 100, 0, 0),
(@GUID, 05, -746.0137, 2657.4404, 100.11507, 100, 0, 0),
(@GUID, 06, -733.59357, 2658.2456, 95.844315, 100, 0, 0),
(@GUID, 07, -725.91833, 2657.5305, 94.139946, 100, 0, 0),
(@GUID, 08, -723.99835, 2648.1777, 93.62615, 100, 0, 0),
(@GUID, 09, -709.90643, 2634.656, 91.19378, 100, 0, 0),
(@GUID, 10, -693.7531, 2632.6523, 89.8397, 100, 0, 0),
(@GUID, 11, -678.7925, 2642.3447, 89.0248, 100, 0, 0),
(@GUID, 12, -676.47833, 2655.4265, 89.45071, 100, 0, 0),
(@GUID, 13, -678.8166, 2666.256, 89.45754, 100, 0, 0),
(@GUID, 14, -688.0372, 2676.03, 91.938835, 100, 0, 0),
(@GUID, 15, -701.7712, 2680.0586, 93.78458, 100, 0, 0),
(@GUID, 16, -718.51495, 2675.2246, 95.17825, 100, 0, 0),
(@GUID, 17, -724.94885, 2663.038, 94.25115, 100, 0, 0),
(@GUID, 18, -726.4642, 2658.9475, 94.11443, 100, 0, 0),
(@GUID, 19, -734.31805, 2660.0774, 95.899, 100, 0, 0),
(@GUID, 20, -746.0137, 2657.4404, 100.11507, 100, 0, 0),
(@GUID, 21, -754.7546, 2652.107, 105.13338, 100, 0, 0),
(@GUID, 22, -763.63336, 2646.0845, 107.93347, 100, 0, 0);

-- Honor Hold Defender 16842 'cmangos FORMAT'
SET @GUID := 57948;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = -660.2137,`position_y` = 2763.4387,`position_z` = 90.42306 WHERE `guid` = @GUID;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0, `position_x` = -657.5147,`position_y` = 2762.2771,`position_z` = 89.2967 WHERE `guid` = 151000;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@GUID, 1, -660.2137, 2763.4387, 90.42306, 100, 0, 0),
(@GUID, 2, -675.24036, 2770.6475, 93.3978, 100, 0, 0),
(@GUID, 3, -694.93475, 2767.0405, 95.037445, 100, 0, 0),
(@GUID, 4, -675.24036, 2770.6475, 93.3978, 100, 0, 0);

-- Honor Hold Defender 16842 'cmangos FORMAT'
SET @GUID := 57923;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `position_x` = -874.9681,`position_y` = 2770.691,`position_z` = 35.034378 WHERE `guid` = @GUID;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0, `position_x` = -877.9042,`position_y` = 2772.1533,`position_z` = 32.89001 WHERE `guid` = 57937;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@GUID, 1, -874.9681, 2770.691, 35.034378, 100, 0, 0),
(@GUID, 2, -867.01086, 2766.6047, 40.72687, 100, 0, 0),
(@GUID, 3, -865.31287, 2738.136, 57.46007, 100, 0, 0),
(@GUID, 4, -868.03516, 2715.8672, 70.03114, 100, 0, 0),
(@GUID, 5, -867.54364, 2697.8672, 79.70108, 100, 0, 0),
(@GUID, 6, -857.10724, 2685.2126, 88.77041, 100, 0, 0),
(@GUID, 7, -840.1565, 2677.686, 95.94839, 100, 0, 0),
(@GUID, 8, -821.4662, 2681.8105, 102.59011, 100, 0, 0),
(@GUID, 9, -812.12415, 2684.998, 103.76125, 100, 0, 0),
(@GUID, 10, -821.4662, 2681.8105, 102.59011, 100, 0, 0),
(@GUID, 11, -840.1565, 2677.686, 95.94839, 100, 0, 0),
(@GUID, 12, -857.10724, 2685.2126, 88.77041, 100, 0, 0),
(@GUID, 13, -867.54364, 2697.8672, 79.70108, 100, 0, 0),
(@GUID, 14, -868.03516, 2715.8672, 70.03114, 100, 0, 0),
(@GUID, 15, -865.31287, 2738.136, 57.46007, 100, 0, 0),
(@GUID, 16, -867.01086, 2766.6047, 40.72687, 100, 0, 0);

-- Improve Linking for Ghostrider of Karabor 21784
UPDATE `creature` SET `MovementType` = 0, `spawndist` = 0 WHERE `guid` IN (76082,76083,76085) AND `id` = 21784;
DELETE FROM `creature_linking` WHERE `master_guid` IN (SELECT guid FROM creature WHERE id = 21784) OR guid IN (SELECT guid FROM creature WHERE id = 21784);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (76082, 76084, 1667),(76083, 76084, 1667),(76085, 76084, 1667);

-- statics
UPDATE `creature` SET `position_x` = -530.684, `position_y` = 4867.858, `position_z` = 34.206795, `orientation` = 2.356194496154785156 WHERE `guid` = 86006 AND `id` = 20679; -- Aylaan the Waterwaker
UPDATE `creature` SET `position_x` = -541.78754, `position_y` = 4734.3203, `position_z` = 38.79606, `orientation` = 1.466076612472534179 WHERE `guid` = 86008 AND `id` = 20678; -- Akoru the Firecaller
UPDATE `creature` SET `position_x` = -620.888, `position_y` = 4861.6294, `position_z` = 41.500984, `orientation` = 0.366519153118133544 WHERE `guid` = 86007 AND `id` = 20677; -- Morod the Windstirrer

-- dbscripts_on_creature_movement
-- Improve Autmatic Despawn for Goliathon <King of the Colossi>
UPDATE `dbscripts_on_creature_movement` SET `datalong2` = 60000 WHERE `id` = 2150401 AND `datalong` = 19305; -- 600000