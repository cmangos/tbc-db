-- SELECT guid,id,position_x,position_y,position_z,map,orientation,rotation2,rotation3 FROM gameobject where id IN (2843,2844,2845,2847,2849,2850,2852,2855,2857,3660,3661,3689,3715,4096,4149,75293,105578,105579,105581,106318,106319,111095,153451,153453,153454,153463,153468,181798,181800,181802,181804) and map = 530 order by position_x,position_y;

-- Simplify description for Master Chest Pools as classic-db started
-- Rule for max_limit = SELECT ROUND(COUNT(guid)/4*1) FROM pool_gameobject where pool_entry = entry; -- 39940 - 39951
-- As we do not have enough spawns yet for area pooling
DELETE FROM `pool_template` WHERE `entry` BETWEEN 39940 AND 39951;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
-- TBC+												count
(39940, 3, 'Azuremyst Isle - Master Chest Pool'), -- 12
(39941, 4, 'Eversong Woods - Master Chest Pool'), -- 17
(39942, 1, 'Bloodmyst Isle - Master Chest Pool'), -- 3
(39943, 1, 'Ghostlands - Master Chest Pool'), -- 14
(39944, 8, 'Hellfire Peninsula - Master Chest Pool'), -- 32
(39945, 7, 'Zangarmarsh - Master Chest Pool'), -- 28
(39946, 9, 'Terokkar Forest - Master Chest Pool'), -- 34
(39947, 8, 'Nagrand - Master Chest Pool'), -- 30
(39948, 7, 'Blade\'s Edge Mountains - Master Chest Pool'), -- 27
(39949, 5, 'Netherstorm - Master Chest Pool'), -- 20
(39950, 6, 'Shadowmoon Valley - Master Chest Pool'), -- 22
(39951, 0, 'Isle of Quel\'Danas - Master Chest Pool'); -- 0
-- Wotlk+ Master Chest Pools

DELETE FROM `gameobject` WHERE `guid` IN (5411,99911); -- free 5411 for chest, move 181743
DELETE FROM `gameobject` WHERE `guid` IN (91359,85814,85716,91360,85615,85618,85616,85681,85685,85703,85870,85854,85868,85866,5411,190652) AND `id` IN (181743,2845,75293,2849,181798,181800,181804,2844,181802);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(99911, 181743, 530, 1, 191.16, 4150.19, 73.18, 0, 0, 0, 0, 1, 180, 180, 0, 1),
(5411, 2845, 530, 1, 8405.23, -7001.73, 93.7212, -1.81514, 0, 0, -0.78801, 0.615662, 7200, 7200, 255, 1),
(85615, 75293, 530, 1, -1910.23, -10731.4, 112.43, 1.39626, 0, 0, 0.642786, 0.766046, 5200, 5200, 255, 1),
(85616, 2849, 530, 1, -1134.31, -11093.9, -76.1351, -1.71042, 0, 0, -0.754709, 0.65606, 3600, 3600, 255, 1),
-- 85617 corrupted xyz
(85618, 2849, 530, 1, -1556.99, -11025.1, 48.1333, -0.663223, 0, 0, -0.325567, 0.945519, 3600, 3600, 255, 1),
(85681, 181798, 530, 1, -282.544, 2433.02, 44.4638, -2.426, 0, 0, -0.936671, 0.350211, 7200, 7200, 255, 1),
(85685, 181798, 530, 1, 85.4915, 3213.54, 32.5583, -2.35619, 0, 0, -0.923879, 0.382686, 7200, 7200, 255, 1),
(85703, 181800, 530, 1, 1470.81, 6577.31, -10.3136, 1.88495, 0, 0, 0.809015, 0.587788, 7200, 7200, 255, 1),
(85716, 181804, 530, 1, -3920.03, 375.76, 120.118, 2.51327, 0, 0, 0.951056, 0.309019, 7200, 7200, 255, 1),
(85814, 2844, 530, 1, -4755.04, -11546.2, -7.89114, -2.44346, 0, 0, -0.939692, 0.342021, 7200, 7200, 255, 1),
(85854, 181800, 530, 1, 3288.5, 5307.25, 148.892, 2.91469, 0, 0, 0.993571, 0.113208, 7200, 7200, 255, 1),
(85866, 181802, 530, 1, 3814.97, 3838.12, 103.495, 0.541051, 0, 0, 0.267238, 0.963631, 7200, 7200, 255, 1),
(85868, 181802, 530, 1, 3458.08, 3696.63, 148.641, 2.58308, 0, 0, 0.961261, 0.275641, 7200, 7200, 255, 1),
(85870, 181802, 530, 1, 3109.74, 2283.86, 150.655, -0.628317, 0, 0, -0.309016, 0.951057, 7200, 7200, 255, 1),
(91359, 2844, 530, 1, -4826.93, -11486.4, -37.0934, 2.32129, 0, 0, 0.91706, 0.398748, 7200, 7200, 255, 1),
(91360, 2844, 530, 1, -3371.13, -12716.5, 19.5785, -0.226892, 0, 0, -0.113203, 0.993572, 7200, 7200, 255, 1),
-- NEW
(190652, 181804, 530, 1, -2931.91, 1358.39, 8.38911, -2.60054, 0, 0, -0.96363, 0.267239, 7200, 7200, 255, 1);

-- Add wotlk-db GameObjects to existing pools
DELETE FROM `pool_gameobject` WHERE `guid` IN (91359,85814,85716,91360,85615,85618,85616,85681,85685,85703,85870,85854,85868,85866,5411,190652);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(5411, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(85615, 39942, 0, 'Bloodmyst Isle - Large Battered Chest (75293)'),
(85616, 39942, 0, 'Bloodmyst Isle - Battered Chest (2849)'),
(85618, 39942, 0, 'Bloodmyst Isle - Battered Chest (2849)'),
(85681, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(85685, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(85703, 39948, 0, 'Blade\'s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(85716, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)'),
(85814, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(85854, 39948, 0, 'Blade\'s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(85866, 39949, 0, 'Netherstorm - Adamantite Bound Chest (181802)'),
(85868, 39949, 0, 'Netherstorm - Adamantite Bound Chest (181802)'),
(85870, 39949, 0, 'Netherstorm - Adamantite Bound Chest (181802)'),
(91359, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(91360, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
-- NEW
(190652, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)');

-- Cleanup, Reduce Respawntime, use animprogress = 255 for tbc spawns
UPDATE `gameobject` SET `spawntimesecsmin` = 3600, `spawntimesecsmax` = 7200, `animprogress` = 255, `state` = 1 WHERE `id` IN (
2843,2844,2845,2847,2849,
2850,2852,2855,2857,
3660,3661,3689,3715,
4096,4149,75293,105578,
105579,105581,106318,106319,
111095,153451,153453,153454,153463,153468,
181798,181800,181802,181804) AND `map` = 530;

