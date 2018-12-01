-- Heavy Fel Iron Chest 181800
UPDATE `gameobject_template` SET `data1` = 22342, `mingold` = 1515, `maxgold` = 2997 WHERE `entry` = 181800;
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (22342, 181800);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22342, 18300, 43, 0, 1, 4, 0, 'Hyjal Nectar'),
(22342, 27854, 16, 0, 1, 4, 0, 'Smoked Talbuk Venison'),
(22342, 27855, 23, 0, 1, 4, 0, 'Mag\'har Grainbread'),
(22342, 27856, 21.5, 0, 1, 4, 0, 'Skethyl Berries'),
(22342, 27857, 19.5, 0, 1, 4, 0, 'Garadar Sharp'),
(22342, 27859, 15, 0, 1, 4, 0, 'Zangar Caps'),
(22342, 30458, 14, 0, 1, 4, 0, 'Stromgarde Muenster'),
(22342, 25649, 12, 0, 2, 5, 0, 'Knothide Leather Scraps'),
(22342, 21887, 5, 0, 1, 3, 0, 'Knothide Leather'),
(22342, 23793, 2, 0, 1, 2, 0, 'Heavy Knothide Leather'),
(22342, 14047, 1, 0, 2, 3, 0, 'Runecloth'),
(22342, 21877, 4, 0, 1, 4, 0, 'Netherweave Cloth'),
(22342, 21840, 7, 0, 1, 1, 0, 'Bolt of Netherweave'),
(22342, 23424, 4, 0, 2, 3, 0, 'Fel Iron Ore'),
(22342, 23425, 4, 0, 2, 3, 0, 'Adamantite Ore'),
(22342, 23426, 2, 0, 2, 3, 0, 'Khorium Ore'),
(22342, 23427, 4, 0, 2, 3, 0, 'Eternium Ore'),
(22342, 23445, 4, 0, 1, 2, 0, 'Fel Iron Bar'),
(22342, 23446, 4, 0, 1, 2, 0, 'Adamantite Bar'),
(22342, 23447, 4, 0, 1, 2, 0, 'Eternium Bar'),
(22342, 23449, 2, 0, 1, 1, 0, 'Khorium Bar'),
(22342, 13468, 1, 0, 1, 1, 0, 'Black Lotus'),
(22342, 22785, 4, 0, 2, 3, 0, 'Felweed'),
(22342, 22786, 4, 0, 2, 3, 0, 'Dreaming Glory'),
(22342, 22787, 4, 0, 2, 3, 0, 'Ragveil'),
(22342, 22789, 5, 0, 2, 3, 0, 'Terocone'),
(22342, 22791, 4, 0, 2, 3, 0, 'Netherbloom'),
(22342, 22792, 2, 0, 2, 3, 0, 'Nightmare Vine'),
(22342, 22829, 30, 0, 2, 3, 0, 'Super Healing Potion'),
(22342, 22832, 10, 0, 2, 3, 0, 'Super Mana Potion'),
(22342, 61000, 4, 0, -61000, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 66-69) - (NPC Levels: 58-65) - TBC NPC ONLY'),
(22342, 42005, 2, 0, -42005, 1, 0, 'Solid Adamantite Chest and Bound Adamantite Chests - Green and Blue Items'),
(22342, 50604, 0.5, 0, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(22342, 4500, 0.1, 0, 1, 1, 0, 'Traveler''s Backpack');

UPDATE `gameobject` SET `position_x` = -3810.469, `position_y` = 4721.011, `position_z` = -24.41835, `orientation` = 3.141593 WHERE `id` = 181800 AND `guid` = 56082;
UPDATE `gameobject` SET `position_x` = -3669.574, `position_y` = 5720.745, `position_z` = -1.09585, `orientation` = 0.6806785 WHERE `id` = 181800 AND `guid` = 56093;
UPDATE `gameobject` SET `position_x` = -3574.235, `position_y` = 5807.426, `position_z` = -3.280509, `orientation` = -2.792527 WHERE `id` = 181800 AND `guid` = 56089;
UPDATE `gameobject` SET `position_x` = -3519.677, `position_y` = 4080.487, `position_z` = 93.65469, `orientation` = 1.727875 WHERE `id` = 181800 AND `guid` = 56086;
UPDATE `gameobject` SET `position_x` = -3334.198, `position_y` = 6060.146, `position_z` = 0.305057, `orientation` = -2.600541 WHERE `id` = 181800 AND `guid` = 56092;
UPDATE `gameobject` SET `position_x` = -3234.879, `position_y` = 6037.067, `position_z` = 5.632463, `orientation` = -1.745329 WHERE `id` = 181800 AND `guid` = 56088;
UPDATE `gameobject` SET `position_x` = -3014.029, `position_y` = 4963.834, `position_z` = -21.8549, `orientation` = 0.03490658 WHERE `id` = 181800 AND `guid` = 56087;
UPDATE `gameobject` SET `position_x` = -2916.902, `position_y` = 5600.67, `position_z` = 0.254220, `orientation` = -2.164208 WHERE `id` = 181800 AND `guid` = 56104; -- adjusted z due to offset
UPDATE `gameobject` SET `position_x` = -2914.831, `position_y` = 5412.838, `position_z` = -9.527784, `orientation` = 3.089233 WHERE `id` = 181800 AND `guid` = 56094;
UPDATE `gameobject` SET `position_x` = -2539.514, `position_y` = 6175.893, `position_z` = 59.93903, `orientation` = -0.6806787 WHERE `id` = 181800 AND `guid` = 56090;
UPDATE `gameobject` SET `position_x` = -2531.649, `position_y` = 6313.483, `position_z` = 14.16978, `orientation` = 3.071779 WHERE `id` = 181800 AND `guid` = 56083;
UPDATE `gameobject` SET `position_x` = -2525.108, `position_y` = 5412.031, `position_z` = 0.047578, `orientation` = 0.4363323 WHERE `id` = 181800 AND `guid` = 56097;
UPDATE `gameobject` SET `position_x` = -2514.768, `position_y` = 5483.627, `position_z` = 8.37023, `orientation` = 2.321288 WHERE `id` = 181800 AND `guid` = 56103;
UPDATE `gameobject` SET `position_x` = -2385.495, `position_y` = 4901.638, `position_z` = 36.00863, `orientation` = 3.124139 WHERE `id` = 181800 AND `guid` = 14107;
UPDATE `gameobject` SET `position_x` = -2353.759, `position_y` = 6100.979, `position_z` = 62.6204, `orientation` = 1.500983 WHERE `id` = 181800 AND `guid` = 56085;
UPDATE `gameobject` SET `position_x` = -2265.344, `position_y` = 6231.234, `position_z` = 41.8662, `orientation` = -1.43117 WHERE `id` = 181800 AND `guid` = 56095;
UPDATE `gameobject` SET `position_x` = -1964.708, `position_y` = 6291.577, `position_z` = 51.18034, `orientation` = 1.082104 WHERE `id` = 181800 AND `guid` = 56099;
UPDATE `gameobject` SET `position_x` = -1840.477, `position_y` = 6373.996, `position_z` = 46.06017, `orientation` = -1.291544 WHERE `id` = 181800 AND `guid` = 56091;
UPDATE `gameobject` SET `position_x` = -1797.586, `position_y` = 6279.114, `position_z` = 84.53513, `orientation` = 2.007129 WHERE `id` = 181800 AND `guid` = 56098;
UPDATE `gameobject` SET `position_x` = -1349.013, `position_y` = 4045.21, `position_z` = 117.1132, `orientation` = 0.1745321 WHERE `id` = 181800 AND `guid` = 56100;
UPDATE `gameobject` SET `position_x` = -1114.599, `position_y` = 5197.684, `position_z` = 57.19815, `orientation` = 0.4886912 WHERE `id` = 181800 AND `guid` = 56706;
UPDATE `gameobject` SET `position_x` = -742.7221, `position_y` = 5287.234, `position_z` = 18.38446, `orientation` = -3.089233 WHERE `id` = 181800 AND `guid` = 56080;
UPDATE `gameobject` SET `position_x` = -647.2672, `position_y` = 5693.741, `position_z` = 23.37572, `orientation` = 0.4537856 WHERE `id` = 181800 AND `guid` = 20368;
UPDATE `gameobject` SET `position_x` = -618.5861, `position_y` = 4863.844, `position_z` = 41.41806, `orientation` = -0.7853968 WHERE `id` = 181800 AND `guid` = 56102;
UPDATE `gameobject` SET `position_x` = -593.8377, `position_y` = 5864.862, `position_z` = 21.60666, `orientation` = 0.1570796 WHERE `id` = 181800 AND `guid` = 28317;
UPDATE `gameobject` SET `position_x` = -538.1702, `position_y` = 4736.446, `position_z` = 38.38036, `orientation` = 1.850049 WHERE `id` = 181800 AND `guid` = 56101;
UPDATE `gameobject` SET `position_x` = -386.2669, `position_y` = 2958.813, `position_z` = -60.63544, `orientation` = 1.134464 WHERE `id` = 181800 AND `guid` = 56078;
UPDATE `gameobject` SET `position_x` = -367.3854, `position_y` = 6363.375, `position_z` = 22.31656, `orientation` = -1.675516 WHERE `id` = 181800 AND `guid` = 56096;
UPDATE `gameobject` SET `position_x` = 527.2638, `position_y` = 8401.729, `position_z` = 22.14851, `orientation` = -2.687807 WHERE `id` = 181800 AND `guid` = 56081;
UPDATE `gameobject` SET `position_x` = 551.1581, `position_y` = 6208.141, `position_z` = 22.06146, `orientation` = 2.687807 WHERE `id` = 181800 AND `guid` = 56084;
UPDATE `gameobject` SET `position_x` = 1258.494, `position_y` = 8482.281, `position_z` = 22.92793, `orientation` = 2.373644 WHERE `id` = 181800 AND `guid` = 56079;
-- 27610

SET @GUID := 190577;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 190578 AND 190609;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@GUID := @GUID + 1, 181800, 530, 1, -3499.341, 4017.229, 113.1059, -0.7679451, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -3419.6, 4080.47, 62.6932, -2.094395, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -3162.386, 4974.781, -9.27432, -0.6457717, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -2938.529, 3414.769, 1.892746, 0.1570796, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -2917.009, 3605.677, -8.329537, -1.518436, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -2505.797, 4979.496, 35.24719, 0.7330382, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -2414.239, 3194.214, 2.195936, -1.518436, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -2249.106, 3220.461, -4.054502, -2.426008, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -2002.336, 6186.68, 79.7126, 0.5934119, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -1140.624, 4272.344, 14.05166, -1.675516, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -1124.779, 4196.2, 44.00535, -0.8028509, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -702.9363, 4794.074, 49.25713, 0.3316107, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -527.3281, 4869.166, 34.16287, 2.984499, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -263.1637, 2503.706, 15.12622, 0.9599311, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -233.7969, 7015.774, 24.36971, 0.3316126, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -224.7695, 2720.959, -19.15623, -0.1396264, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -218.9711, 2888.607, -48.49629, 0.4886912, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, -189.3454, 7341.242, 57.22829, -2.75762, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 524.2698, 8078.283, 22.77848, 1.169371, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 704.8595, 6452.58, 21.26678, 3.089233, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 1012.181, 8556.38, 22.26843, -0.4014257, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 1144.834, 8653.505, 22.20369, -1.16937, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 1571.416, 6276.401, 4.224143, 0.1919852, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 1700.119, 6259.637, 2.209909, 2.338741, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 2331.81, 6531.831, 3.460282, 0.1570796, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 2346.273, 6736.546, 17.57286, -0.9424779, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 2452.433, 6554.808, 2.599067, 1.082103, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 2520.62, 6697.792, 3.471218, -1.413717, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 2678.234, 6489.249, 3.469812, -1.53589, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 2723.072, 5417.983, 136.7792, 0.6806785, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 3200.037, 5687.275, -0.468241, 0.9599311, 7200, 7200, 100, 1),
(@GUID := @GUID + 1, 181800, 530, 1, 3418.599, 5825.098, 2.314087, -1.832595, 7200, 7200, 100, 1);

SET @GUID := 190577;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 190578 AND 190609;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39946, 0, 'Terokkar Forest - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39947, 0, 'Nagrand - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39944, 0, 'Hellfire Peninsula - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39945, 0, 'Zangarmarsh - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)'),
(@GUID := @GUID + 1, 39948, 0, 'Blade''s Edge Mountains - Heavy Fel Iron Chest (181800)');

-- Increase respective spawn limit
UPDATE `pool_template` SET `max_limit` = 11 WHERE `entry` = 39944; -- Hellfire Peninsula (TBC - 58-63) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 10 WHERE `entry` = 39945; -- Zangarmarsh (TBC - 60-64) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 12 WHERE `entry` = 39946; -- Terokkar Forest (TBC - 62-65) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 8 WHERE `entry` = 39947; -- Nagrand (TBC - 64-67) - Master Chest Pool
UPDATE `pool_template` SET `max_limit` = 5 WHERE `entry` = 39948; -- Blade's Edge Mountains (TBC - 65-68) - Master Chest Pool

