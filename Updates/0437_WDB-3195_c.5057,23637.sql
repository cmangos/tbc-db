-- Theramore Deserter 5057
-- Deserter Lieutenant 23637
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid IN (30744,30769,30770,30772,30773,30774,30776,30777);
UPDATE creature SET position_x = -4023.718994, position_y = -4988.398926, position_z = 13.189892, spawndist = 7, MovementType = 1 WHERE guid = 30771;

-- Additional Updates

-- Theramore Deserter 5057
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 5057;
UPDATE `creature` SET `position_x` = -3930.13, `position_y` = -2860.24, `position_z` = 46.47, spawndist = 3, MovementType = 1 WHERE `id` = 5057 AND `guid` = 31596;
UPDATE `creature` SET `position_x` = -3920.28, `position_y` = -2867.57, `position_z` = 46.48, spawndist = 3, MovementType = 1 WHERE `id` = 5057 AND `guid` = 31601;

-- Deserter Lieutenant 23637
UPDATE `creature_template` SET `ModelId1` = 21639, `ModelId2` = 21640 WHERE `entry` = 23637; -- as per sniff
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 23637;
UPDATE `creature` SET `position_x` = -4019.24, `position_y` = -4984.57, `position_z` = 8.13, spawndist = 3, MovementType = 1 WHERE `id` = 23637 AND `guid` = 30778;

-- path1
UPDATE `creature` SET `position_x` = -3909.3005, `position_y` = -2856.9355, `position_z` = 46.41275, spawndist = 0, MovementType = 2 WHERE `id` = 23637 AND `guid` = 31597;
DELETE FROM `creature_movement` WHERE `id` = 31597;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(31597, 01, -3909.3005, -2856.9355, 46.41275, 100, 0, 0, ''),
(31597, 02, -3906.187, -2867.874, 46.41446, 100, 0, 0, ''),
(31597, 03, -3909.3196, -2874.797, 46.39367, 100, 0, 0, ''),
(31597, 04, -3914.744, -2881.5515, 46.496876, 100, 0, 0, ''),
(31597, 05, -3926.162, -2886.2568, 46.444557, 100, 0, 0, ''),
(31597, 06, -3938.5088, -2879.9492, 46.47544, 100, 0, 0, ''),
(31597, 07, -3945.682, -2873.5781, 46.35539, 100, 0, 0, ''),
(31597, 08, -3944.7664, -2860.962, 46.425735, 100, 0, 0, ''),
(31597, 09, -3938.0845, -2851.2046, 46.40167, 100, 0, 0, ''),
(31597, 10, -3929.1172, -2846.212, 46.545048, 100, 0, 0, ''),
(31597, 11, -3916.8933, -2848.7935, 46.485435, 100, 0, 0, '');

-- path2
UPDATE `creature` SET `position_x` = -3946.4036, `position_y` = -2836.2786, `position_z` = 41.08114, spawndist = 0, MovementType = 2 WHERE `id` = 23637 AND `guid` = 30934;
DELETE FROM `creature_movement` WHERE `id` = 30934;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(30934, 01, -3946.4036, -2836.2786, 41.08114, 100, 0, 0, ''),
(30934, 02, -3951.7878, -2844.3376, 42.45614, 100, 0, 0, ''),
(30934, 03, -3956.1008, -2849.0186, 42.95614, 100, 0, 0, ''),
(30934, 04, -3959.5422, -2858.741, 42.95614, 100, 0, 0, ''),
(30934, 05, -3963.6611, -2870.6353, 42.03979, 100, 0, 0, ''),
(30934, 06, -3963.165, -2879.7202, 42.41479, 100, 0, 0, ''),
(30934, 07, -3957.4705, -2887.4875, 41.16479, 100, 0, 0, ''),
(30934, 08, -3949.28, -2890.755, 40.41479, 100, 0, 0, ''),
(30934, 09, -3957.4705, -2887.4875, 41.16479, 100, 0, 0, ''),
(30934, 10, -3963.165, -2879.7202, 42.41479, 100, 0, 0, ''),
(30934, 11, -3963.6611, -2870.6353, 42.03979, 100, 0, 0, ''),
(30934, 12, -3959.5422, -2858.741, 42.95614, 100, 0, 0, ''),
(30934, 13, -3956.1008, -2849.0186, 42.95614, 100, 0, 0, ''),
(30934, 14, -3951.7878, -2844.3376, 42.45614, 100, 0, 0, '');

-- path3
-- 30400 NEW - free wotlk-db
DELETE FROM `creature` WHERE `guid` = 30400 AND `id` = 23637;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(30400, 23637, 1, 1, 0, 0, -3920.3186, -2808.2334, 37.33238, 2.635447263717651367, 120, 240, 0, 0, 0, 0, 0, 2);
DELETE FROM `creature_movement` WHERE `id` = 30400;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(30400, 01, -3920.3186, -2808.2334, 37.33238, 100, 0, 0, ''),
(30400, 02, -3928.622, -2796.3804, 36.05622, 100, 0, 0, ''),
(30400, 03, -3937.8652, -2785.8535, 34.772415, 100, 0, 0, ''),
(30400, 04, -3938.9775, -2776.9534, 34.147415, 100, 5000, 0, ''),
(30400, 05, -3938.0022, -2785.6926, 34.772415, 100, 0, 0, ''),
(30400, 06, -3928.7598, -2796.2207, 36.05622, 100, 0, 0, ''),
(30400, 07, -3921.4016, -2811.4963, 37.721928, 100, 0, 0, ''),
(30400, 08, -3923.3804, -2857.1501, 46.476215, 100, 5000, 0, '');

