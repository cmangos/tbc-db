-- ---------------------------------------------------------
-- CompleteScript for quest Suspicious Hoofprints q.1268
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=1268 WHERE entry=1268;

-- Add scripts
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=1268;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000020135, 0, 0, 0, 0, 0, 0, 0, 'Krog say'),
(1268, 50, 0, 10, 4972, 0, 0, 0, 0, 0, 1, 0, 0, 0, -3155.99, -2898.27, 33.9313, 0.501176, 'Spawn Kagaro'),
(1268, 300, 0, 20, 2, 1, 0, 4972, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Start moving Kagaro'),
(1268, 3500, 0, 0, 0, 0, 0, 0, 0, 0, 2000020136, 0, 0, 0, 0, 0, 0, 0, 'Krog say 2'),
(1268, 4900, 0, 0, 0, 0, 0, 4972, 20, 7, 2000020137, 0, 0, 0, 0, 0, 0, 0, 'Kagoro say'),
(1268, 5300, 0, 2, 66, 0, 0, 4972, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kagoro Salute'),
(1268, 6000, 0, 20, 2, 2, 0, 4972, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kagoro run away');

-- Add movement paths
DELETE FROM `creature_movement_template` WHERE `entry`=4972;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES 
(4972, 1, 0, -3150.74, -2895.39, 34.1223, 0, 0, 0, NULL),
(4972, 1, 1, -3145.96, -2890.87, 34.2473, 0, 0, 0, NULL),
(4972, 1, 2, -3147.34, -2888.67, 34.2473, 2.5199, 0, 0, NULL),
(4972, 1, 3, -3147.34, -2888.67, 34.2473, 2.5199, 300, 11625211, NULL),
(4972, 2, 0, -3142.56, -2882.04, 34.7061, 0, 0, 0, NULL),
(4972, 2, 1, -3140.06, -2878.79, 34.9561, 0, 0, 0, NULL),
(4972, 2, 2, -3140.74, -2879.63, 34.9187, 0, 0, 0, NULL),
(4972, 2, 3, -3145.74, -2863.88, 34.4187, 0, 0, 0, NULL),
(4972, 2, 4, -3146.1, -2863.93, 34.5875, 0, 0, 0, NULL),
(4972, 2, 5, -3152.85, -2861.43, 34.5875, 0, 0, 0, NULL),
(4972, 2, 6, -3156.09, -2860.36, 34.7205, 0, 0, 0, NULL),
(4972, 2, 7, -3163.84, -2859.11, 34.2205, 0, 0, 0, NULL),
(4972, 2, 8, -3164.22, -2858.86, 34.5724, 0, 0, 0, NULL),
(4972, 2, 9, -3179.65, -2855.16, 36.2173, 0, 0, 0, NULL),
(4972, 2, 10, -3182.4, -2854.91, 37.7173, 0, 0, 0, NULL),
(4972, 2, 11, -3183.9, -2854.41, 38.2173, 0, 0, 0, NULL),
(4972, 2, 12, -3186.9, -2853.66, 40.2173, 0, 0, 0, NULL),
(4972, 2, 13, -3188.9, -2853.16, 41.7173, 0, 0, 0, NULL),
(4972, 2, 14, -3190.31, -2852.53, 42.4347, 0, 0, 0, NULL),
(4972, 2, 15, -3192.81, -2851.28, 43.4347, 0, 0, 0, NULL),
(4972, 2, 16, -3199.31, -2848.78, 41.9347, 0, 0, 0, NULL),
(4972, 2, 17, -3202.06, -2847.78, 38.9347, 0, 0, 0, NULL),
(4972, 2, 18, -3202.06, -2847.78, 38.9347, 0, 300, 11625210, NULL);

-- Add movement scripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(11625210,11625211);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(11625210, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kagaro despawn'),
(11625211, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kagaro stop moving');

-- Add texts
DELETE FROM `dbscript_string` WHERE `entry` IN(2000020135,2000020136,2000020137);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `broadcast_text_id`, `comment`) VALUES 
(2000020135, 'Kagoro, I require your presence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 22, 0, NULL),
(2000020136, 'Go to the Shady Rest Inn and follow the tracks. See where they lead and report back to me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, NULL),
(2000020137, 'Understood. I will return shortly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, NULL);


