-- Add more copper/tin/silver ore nodes

-- add missing wotlk-db gameobjects (range 120000 to 121996 (129999)) as they include some copper nodes, to have complete nodes in tbc-db [DIFF]
DELETE FROM `gameobject` WHERE `guid` IN (120192,120319,120326,120337,120356,120361,120365,120368,120370,120389,120392,120393,120394,120395,120402,120494,120606,120611,120793,120795,120802,121692);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(120192, 175404, 1, 7855.66, -3815.99, 702.602, 3.07177, 0, 0, 0.999391, 0.0349043, 3600, 3600, 255, 1), -- leaving respawntime as is for now, its just about the nodes
(120319, 1731, 1, 7342.31, -1098.23, 47.9114, 0.558504, 0, 0, 0.275637, 0.961262, 3600, 3600, 255, 1),
(120326, 1731, 1, 7686.48, -446.749, -21.1478, 0.645772, 0, 0, 0.317305, 0.948324, 3600, 3600, 255, 1),
(120337, 1731, 1, 7513.76, -580.116, 0.446005, 0.401425, 0, 0, 0.199368, 0.979925, 3600, 3600, 255, 1),
(120356, 1731, 1, 5153.76, 458.863, 26.0669, 1.43117, 0, 0, 0.656058, 0.75471, 3600, 3600, 255, 1),
(120361, 1731, 1, 7517.69, -725.736, 3.49451, 2.00713, 0, 0, 0.843392, 0.537299, 3600, 3600, 255, 1),
(120365, 1732, 1, 7248.41, 412.611, -2.72741, -1.71042, 0, 0, -0.754709, 0.65606, 3600, 3600, 255, 1),
(120368, 1732, 1, 3525.08, 495.375, 9.41899, -0.191985, 0, 0, -0.0958451, 0.995396, 3600, 3600, 255, 1),
(120370, 1732, 1, 7555.8, 54.8934, -2.61125, 0.575957, 0, 0, 0.284015, 0.95882, 3600, 3600, 255, 1),
(120389, 1732, 1, 3104.31, 397.07, 14.2702, -3.07177, 0, 0, -0.999391, 0.0349043, 3600, 3600, 255, 1),
(120392, 1732, 1, 7508.31, -1102.54, 50.2059, -1.90241, 0, 0, -0.814116, 0.580702, 3600, 3600, 255, 1),
(120393, 1732, 1, 7447.99, -140.624, 3.34259, 1.81514, 0, 0, 0.78801, 0.615662, 3600, 3600, 255, 1),
(120394, 1732, 1, 7441.33, -1006.91, -5.89542, 2.44346, 0, 0, 0.939692, 0.342021, 3600, 3600, 255, 1),
(120395, 1732, 1, 7432.04, -1000.82, 4.36965, 1.46608, 0, 0, 0.669132, 0.743144, 3600, 3600, 255, 1),
(120402, 1733, 1, 7392.54, -1088.89, 42.2422, -0.663223, 0, 0, -0.325567, 0.945519, 36, 36, 255, 1), -- tin confirmed too
(120494, 2040, 1, 7252.51, -4223.3, 732.848, 1.02974, 0, 0, 0.492422, 0.870357, 3600, 3600, 255, 1),
(120606, 1731, 1, 3457.16, -345.804, 136.905, -1.15192, 0, 0, -0.54464, 0.83867, 3600, 3600, 255, 1),
(120611, 1731, 1, 3049.16, -221.964, 124.717, 1.22173, 0, 0, 0.573576, 0.819152, 3600, 3600, 255, 1),
(120793, 1732, 1, 4600.01, 333.36, 32.1979, 2.21656, 0, 0, 0.894933, 0.446202, 3600, 3600, 255, 1),
(120795, 1732, 1, 2912.34, -1019.34, 188.138, -3.05433, 0, 0, -0.999048, 0.0436174, 3600, 3600, 255, 1),
(120802, 1734, 1, 3033.79, -1933.04, 190.559, 2.54818, 0, 0, 0.956305, 0.292372, 3600, 3600, 255, 1),
(121692, 1731, 1, 3209.08, 104.121, 25.2081, 2.19912, 0, 0, 0.891006, 0.453991, 7200, 7200, 255, 1);

-- Add basic pooling or these (not in wotlk-db), so they are not always up, can be improved later
DELETE FROM `pool_gameobject` WHERE `guid` IN (120192,120319,120326,120337,120356,120361,120365,120368,120370,120389,120392,120393,120394,120395,120402,120494,120606,120611,120793,120795,120802,121692);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(120192, 2060, 0, 'Winterspring - Mineral Node'),
(120319, 2039, 0, 'Darkshore - Mineral Node'),
(120326, 2039, 0, 'Darkshore - Mineral Node'),
(120337, 2039, 0, 'Darkshore - Mineral Node'),
(120356, 2039, 0, 'Darkshore - Mineral Node'),
(120361, 2039, 0, 'Darkshore - Mineral Node'),
(120365, 2039, 0, 'Darkshore - Mineral Node'),
(120368, 2033, 0, 'Ashenvale (West Section) - Mineral Node'),
(120370, 2039, 0, 'Darkshore - Mineral Node'),
(120389, 2033, 0, 'Ashenvale (West Section) - Mineral Node'),
(120392, 2039, 0, 'Darkshore - Mineral Node'),
(120393, 2039, 0, 'Darkshore - Mineral Node'),
(120394, 2039, 0, 'Darkshore - Mineral Node'),
(120395, 2039, 0, 'Darkshore - Mineral Node'),
(120402, 2039, 0, 'Darkshore - Mineral Node'),
(120494, 8964, 0, 'Mineral Spawn Point 29 - Mithril Deposit'),
(120606, 2033, 0, 'Ashenvale (West Section) - Mineral Node'),
(120611, 2033, 0, 'Ashenvale (West Section) - Mineral Node'),
(120793, 2039, 0, 'Darkshore - Mineral Node'),
(120795, 2033, 0, 'Ashenvale (West Section) - Mineral Node'),
(120802, 2034, 0, 'Ashenvale (East Section) - Mineral Node'),
(121692, 2033, 0, 'Ashenvale (West Section) - Mineral Node');

-- duplicates

DELETE FROM `pool_gameobject` WHERE `guid` = 101273; -- d.o.101264 (.go xyz -4774.76	-11635.7	-36.7166	530)
DELETE FROM `gameobject` WHERE `guid` = 101273;

DELETE FROM `pool_gameobject` WHERE `guid` = 103233; -- d.o.103124 (.go xyz 418.566	-4941	36.963	1)
DELETE FROM `gameobject` WHERE `guid` = 103233;

DELETE FROM `pool_gameobject` WHERE `guid` = 103237; -- d.o.103890 (.go xyz 837.491	-4754	11.956	1)
DELETE FROM `gameobject` WHERE `guid` = 103237;

-- 8453	Mineral Spawn Point 136 - The Barrens (Main Section)
-- 8473	Mineral Spawn Point 156 - The Barrens (Main Section)
DELETE FROM `pool_gameobject` WHERE `guid` IN (112041,112042,112043,112044,112045); -- d.pool.8453 (o.111941)
DELETE FROM `gameobject` WHERE `guid` IN (112041,112042,112043,112044,112045);
DELETE FROM `pool_template` WHERE `entry` = 8473;
DELETE FROM `pool_pool` WHERE `pool_id` = 8473;

-- 8403	Mineral Spawn Point 86 - The Barrens (Main Section)
-- 8439	Mineral Spawn Point 122 - The Barrens (Main Section)
DELETE FROM `pool_gameobject` WHERE `guid` IN (111871,111872,111873,111874,111875); -- d.pool.8403 (o.111691)
DELETE FROM `gameobject` WHERE `guid` IN (111871,111872,111873,111874,111875);
DELETE FROM `pool_template` WHERE `entry` = 8439;
DELETE FROM `pool_pool` WHERE `pool_id` = 8439;

-- 8374	Mineral Spawn Point 57 - The Barrens (Main Section)
-- 8482	Mineral Spawn Point 165 - The Barrens (Main Section)
-- 9073	Mineral Spawn Point 209 - The Barrens (Main Section)
DELETE FROM `pool_gameobject` WHERE `guid` IN (112306,112307,112308,112309,112310,112086,112087,112088,112089,112090); -- d.pool.8374 (o.111546)
DELETE FROM `gameobject` WHERE `guid` IN (112306,112307,112308,112309,112310,112086,112087,112088,112089,112090);
DELETE FROM `pool_template` WHERE `entry` IN (9073,8482);
DELETE FROM `pool_pool` WHERE `pool_id` IN (9073,8482);

-- 8381	Mineral Spawn Point 64 - The Barrens (Main Section)
-- 8489	Mineral Spawn Point 172 - The Barrens (Main Section)
DELETE FROM `pool_gameobject` WHERE `guid` IN (112121,112122,112123,112124,112125); -- d.pool.8381 (o.111581)
DELETE FROM `gameobject` WHERE `guid` IN (112121,112122,112123,112124,112125);
DELETE FROM `pool_template` WHERE `entry` = 8489;
DELETE FROM `pool_pool` WHERE `pool_id` = 8489;

-- 8359	Mineral Spawn Point 42 - The Barrens (Main Section)
-- 8454	Mineral Spawn Point 137 - The Barrens (Main Section)
DELETE FROM `pool_gameobject` WHERE `guid` IN (111946,111947,111948,111949,111950); -- d.pool.8359 (o.111471)
DELETE FROM `gameobject` WHERE `guid` IN (111946,111947,111948,111949,111950);
DELETE FROM `pool_template` WHERE `entry` = 8454;
DELETE FROM `pool_pool` WHERE `pool_id` = 8454;

-- 4407	Mineral Spawn Point 8 - Duskwood
-- 4509	Mineral Spawn Point 110 - Duskwood
DELETE FROM `pool_gameobject` WHERE `guid` IN (74145,74146,74147,74148,74149); -- d.pool.4407 (o.73635)
DELETE FROM `gameobject` WHERE `guid` IN (74145,74146,74147,74148,74149);
DELETE FROM `pool_template` WHERE `entry` = 4509;
DELETE FROM `pool_pool` WHERE `pool_id` = 4509;

-- Jangolode Mine
-- 6724	Mineral Spawn Point 24 - Westfall
-- 6803	Mineral Spawn Point 103 - Westfall
-- 6846	Mineral Spawn Point 146 - Westfall
-- 6848	Mineral Spawn Point 148 - Westfall
-- 3579	Mineral Spawn Point 165 - Westfall (78973,78974,78975 unreachable)
-- 6726	Mineral Spawn Point 26 - Westfall (105193,105194,105195 unreachable)
-- 6802	Mineral Spawn Point 102 - Westfall (offset)
DELETE FROM `pool_gameobject` WHERE `guid` IN (79204,79205,79206,79333,79334,79335,79339,79340,79341,78973,78974,78975,105193,105194,105195,79201,79202,79203); -- d.pool.6724 (o.78967)
DELETE FROM `gameobject` WHERE `guid` IN (79204,79205,79206,79333,79334,79335,79339,79340,79341,78973,78974,78975,105193,105194,105195,79201,79202,79203);
DELETE FROM `pool_template` WHERE `entry` IN (6803,6846,6848,3579,6726,6802);
DELETE FROM `pool_pool` WHERE `pool_id` IN (6803,6846,6848,3579,6726,6802);

-- 4897	Mineral Spawn Point 18 - Loch Modan
-- 4929	Mineral Spawn Point 50 - Loch Modan
DELETE FROM `pool_gameobject` WHERE `guid` IN (75747,75748,75749); -- d.pool.4897 (o.75651)
DELETE FROM `gameobject` WHERE `guid` IN (75747,75748,75749);
DELETE FROM `pool_template` WHERE `entry` = 4929;
DELETE FROM `pool_pool` WHERE `pool_id` = 4929;

-- 4884	Mineral Spawn Point 5 - Loch Modan
-- 4954	Mineral Spawn Point 75 - Loch Modan
DELETE FROM `pool_gameobject` WHERE `guid` IN (75822,75823,75824); -- d.pool.4884 (o.75612)
DELETE FROM `gameobject` WHERE `guid` IN (75822,75823,75824);
DELETE FROM `pool_template` WHERE `entry` = 4954;
DELETE FROM `pool_pool` WHERE `pool_id` = 4954;

DELETE FROM `pool_gameobject` WHERE `guid` IN (103536,103537,103538); -- d.o.48494 in classic/wotlk-db
DELETE FROM `gameobject` WHERE `guid` IN (103536,103537,103538);
UPDATE `gameobject` SET `id` = 1731 WHERE `guid` = 103535;
DELETE FROM `pool_template` WHERE `entry` = 7624;
DELETE FROM `pool_pool` WHERE `pool_id` = 7624;
UPDATE `pool_gameobject` SET `pool_entry` = 2039, `description` = 'Darkshore (Blackwood Den) - Copper Vein (1731)' WHERE `guid` = 103535; -- 2039	27	Master Mineral Pool - Darkshore

-- .go xyz 2445.04, 1097.22, 338.232 1
DELETE FROM `pool_gameobject` WHERE `guid` IN (106080,106083); -- Mithril, Truesilver
DELETE FROM `gameobject` WHERE `guid` IN (106080,106083); -- Mithril, Truesilver

-- .go xyz 2230.46, 1374.31, 297.579 1
DELETE FROM `pool_gameobject` WHERE `guid` IN (106395,106398); -- Mithril, Truesilver
DELETE FROM `gameobject` WHERE `guid` IN (106395,106398); -- Mithril, Truesilver

-- .go xyz 2290.5, 1648.7, 325.965 1
DELETE FROM `pool_gameobject` WHERE `guid` IN (106388,106391); -- Mithril, Truesilver
DELETE FROM `gameobject` WHERE `guid` IN (106388,106391); -- Mithril, Truesilver

DELETE FROM `pool_gameobject` WHERE `guid` = 103183; -- d.o.103162
DELETE FROM `gameobject` WHERE `guid` = 103183;

-- .go xyz -4014.75, 1942.18, 104.72 1 - corrupted Z
UPDATE `gameobject` SET `position_z` = 115.85 WHERE `guid` IN (104291,104292,104293,104294,104295,104296);

UPDATE `gameobject` SET `position_x` = -8776.79, `position_y` = -2043.35, `position_z` = 128.049, `orientation` = 3.50812, `rotation2` = -0.983254, `rotation3` = 0.182238 WHERE `guid` IN (76205,76206);

UPDATE `gameobject` SET `position_x` = -11216.8, `position_y` = 1537.08, `position_z` = 36.0322, `orientation` = 6.14356, `rotation2` = -0.0697555, `rotation3` = 0.997564 WHERE `guid` IN (105205,105206,105207);

-- 3583	Mineral Spawn Point 169 - Westfall
-- 6747	Mineral Spawn Point 47 - Westfall
DELETE FROM `pool_gameobject` WHERE `guid` IN (79036,79037,79038); -- d.pool.3583 (o.105205)
DELETE FROM `gameobject` WHERE `guid` IN (79036,79037,79038);
DELETE FROM `pool_template` WHERE `entry` = 6747;
DELETE FROM `pool_pool` WHERE `pool_id` = 6747;

DELETE FROM `pool_gameobject` WHERE `guid` IN (79051,79052,79053); -- d.pool.6720 (o.78955)
DELETE FROM `gameobject` WHERE `guid` IN (79051,79052,79053);
DELETE FROM `pool_template` WHERE `entry` = 6752;
DELETE FROM `pool_pool` WHERE `pool_id` = 6752;

DELETE FROM `pool_gameobject` WHERE `guid` IN (76931,76932,76933); -- d.o.1016006
DELETE FROM `gameobject` WHERE `guid` IN (76931,76932,76933);
DELETE FROM `pool_template` WHERE `entry` = 6264;
DELETE FROM `pool_pool` WHERE `pool_id` = 6264;

DELETE FROM `pool_gameobject` WHERE `guid` = 78587; -- d.pool.6756 (o.79063)
DELETE FROM `gameobject` WHERE `guid` = 78587;

DELETE FROM `pool_gameobject` WHERE `guid` = 103230; -- d.o.103148
DELETE FROM `gameobject` WHERE `guid` = 103230;

DELETE FROM `pool_gameobject` WHERE `guid` = 103108; -- d.o.103161
DELETE FROM `gameobject` WHERE `guid` = 103108;

DELETE FROM `pool_gameobject` WHERE `guid` IN (111436,111437,111438,111439,111440,111441,111442,111443,111444,111445); -- d.pool.8351 (o.111431)
DELETE FROM `gameobject` WHERE `guid` IN (111436,111437,111438,111439,111440,111441,111442,111443,111444,111445);
DELETE FROM `pool_template` WHERE `entry` IN (8352,8353);
DELETE FROM `pool_pool` WHERE `pool_id` IN (8352,8353);

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76029 AND 76031; -- unreachable
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76029 AND 76031;
DELETE FROM `pool_pool` WHERE `pool_id` = 6030;
DELETE FROM `pool_template` WHERE `entry` = 6030;

DELETE FROM `pool_gameobject` WHERE `guid` IN (73680,73681,73682,73683,73684,74030,74031,74032,74033,74034); -- d.pool.4466 (o.73930)
DELETE FROM `gameobject` WHERE `guid` IN (73680,73681,73682,73683,73684,74030,74031,74032,74033,74034);
DELETE FROM `pool_template` WHERE `entry` IN (4416,4486);
DELETE FROM `pool_pool` WHERE `pool_id` IN (4416,4486);

DELETE FROM `gameobject` WHERE `guid` BETWEEN 68542 AND 68546; -- d.pool.3023 (o.68115)
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 68542 AND 68546; -- d.pool.3023 (o.68115)
DELETE FROM `pool_pool` WHERE `pool_id` = 3124;
DELETE FROM `pool_template` WHERE `entry` = 3124;

DELETE FROM `pool_gameobject` WHERE `guid` IN (77389,77390,77391,77392,77393,77204,77205,77206,77207,77208); -- d.pool.6325 (o.77144)
DELETE FROM `gameobject` WHERE `guid` IN (77389,77390,77391,77392,77393,77204,77205,77206,77207,77208);
DELETE FROM `pool_template` WHERE `entry` IN (6374,6337);
DELETE FROM `pool_pool` WHERE `pool_id` IN (6374,6337);

DELETE FROM `pool_gameobject` WHERE `guid` IN (77374,77375,77376,77377,77378,77484,77485,77486,77487,77488,77159,77160,77161,77162,77163); -- d.pool.6319 (o.77114)
DELETE FROM `gameobject` WHERE `guid` IN (77374,77375,77376,77377,77378,77484,77485,77486,77487,77488,77159,77160,77161,77162,77163);
DELETE FROM `pool_template` WHERE `entry` IN (6328,6371,6393);
DELETE FROM `pool_pool` WHERE `pool_id` IN (6328,6371,6393);

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 68642 AND 68647; -- d.pool.3201 (o.68606)
DELETE FROM `gameobject` WHERE `guid` BETWEEN 68642 AND 68647;
DELETE FROM `pool_pool` WHERE `pool_id` = 3207;
DELETE FROM `pool_template` WHERE `entry` = 3207;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76553 AND 76557; -- d.pool.6103 (o.76238)
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76553 AND 76557;
DELETE FROM `pool_pool` WHERE `pool_id` = 6166;
DELETE FROM `pool_template` WHERE `entry` = 6166;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 76528 AND 76532; -- d.pool.6104 (o.76243)
DELETE FROM `gameobject` WHERE `guid` BETWEEN 76528 AND 76532;
DELETE FROM `pool_pool` WHERE `pool_id` = 6161;
DELETE FROM `pool_template` WHERE `entry` = 6161;

DELETE FROM `pool_gameobject` WHERE `guid` IN (76393,76394,76395,76396,76397,76523,76524,76525,76526,76527); -- d.pool.6132 (o.76383)
DELETE FROM `gameobject` WHERE `guid` IN (76393,76394,76395,76396,76397,76523,76524,76525,76526,76527);
DELETE FROM `pool_template` WHERE `entry` IN (6134,6160);
DELETE FROM `pool_pool` WHERE `pool_id` IN (6134,6160);

-- darkshore = copper,tin,silver
DELETE FROM `gameobject` WHERE `guid` IN (103540,103541,103542,103544,103545,103546,103548,103549,103550);
DELETE FROM `pool_gameobject` WHERE `guid` IN (103540,103541,103542,103544,103545,103546,103548,103549,103550);
UPDATE `pool_gameobject` SET `description` = 'Darkshore - Mineral Node' WHERE `pool_entry` IN (7625,7626,7627);
UPDATE `pool_pool` SET `mother_pool` = 2039, `Description` = 'Darkshore - Mineral Node' WHERE `pool_id` IN (7625,7626,7627);
UPDATE `gameobject` SET `id` = 1732 WHERE `guid` IN (103539,103543,103547);

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74284 AND 74289; -- should also have copper/tin -> reinsert
DELETE FROM `gameobject` WHERE `guid` BETWEEN 74284 AND 74289;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74254 AND 74256;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 74254 AND 74256;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 74275 AND 74280;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 74275 AND 74280;
DELETE FROM `pool_pool` WHERE `pool_id` IN (3163,3164,3151,3159,3160);
DELETE FROM `pool_template` WHERE `entry` IN (3163,3164,3151,3159,3160);

-- pool_gameobject saying "Tin / Iron" when there is no such go type pooled here, so its missing and another ore comes up twice
UPDATE `gameobject` SET `id` = 1735 WHERE `guid` IN (71270,108299);
UPDATE `gameobject` SET `id` = 1732 WHERE `guid` = 70102;
UPDATE `gameobject` SET `id` = 1733 WHERE `guid` = 70103;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 77939 AND 77942; -- d.pool.6473 (o.77859)
DELETE FROM `gameobject` WHERE `guid` BETWEEN 77939 AND 77942;
DELETE FROM `pool_pool` WHERE `pool_id` = 6493;
DELETE FROM `pool_template` WHERE `entry` = 6493;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71345 AND 71349; -- d.pool.3645 (o.70825)
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71345 AND 71349;
DELETE FROM `pool_pool` WHERE `pool_id` = 3749;
DELETE FROM `pool_template` WHERE `entry` = 3749;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70795 AND 70799; -- d.pool.3603 (o.70615)
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70795 AND 70799;
DELETE FROM `pool_pool` WHERE `pool_id` = 3639;
DELETE FROM `pool_template` WHERE `entry` = 3639;

UPDATE `gameobject` SET `id` = 1733 WHERE `guid` = 75536;
UPDATE `pool_gameobject` SET `description` = 'Mineral Spawn Point 100 - Silver' WHERE `guid` = 75536; -- Instead of Truesilver

UPDATE `gameobject` SET `position_x` = -11150.4, `position_y` = 1547.24, `position_z` = 22.634, `orientation` = 0.942477, `rotation2` = 0.45399, `rotation3` = 0.891007 WHERE `guid` IN (79123,79124,79125);

UPDATE `gameobject` SET `position_x` = -11080.3, `position_y` = 1519.16, `position_z` = 31.9193, `orientation` = 5.95157, `rotation2` = -0.165047, `rotation3` = 0.986286 WHERE `guid` IN (78904,78905,78906);

UPDATE `gameobject` SET `position_x` = -9901.18, `position_y` = -204.867, `position_z` = 38.77, `orientation` = 0.994837, `rotation2` = 0.477158, `rotation3` = 0.878817 WHERE `guid` = 74837;

UPDATE `gameobject` SET `position_x` = 1730.53, `position_y` = 993.143, `position_z` = 56.7983, `orientation` = 1.46608, `rotation2` = 0.66913, `rotation3` = 0.743145 WHERE `guid` = 78589;

UPDATE `gameobject` SET `position_x` = -2762.56, `position_y` = -633.859, `position_z` = 21.2799, `orientation` = 0.541051, `rotation2` = 0.267238, `rotation3` = 0.963631 WHERE `guid` = 104579;

UPDATE `gameobject` SET `position_x` = -1789.58, `position_y` = -1929.02, `position_z` = 122.134, `orientation` = 4.67748, `rotation2` = -0.719339, `rotation3` = 0.694659 WHERE `guid` IN (111851,111852,111853,111854,111855);

UPDATE `gameobject` SET `position_x` = -1708.53, `position_y` = -3470.65, `position_z` = 96.6088, `orientation` = 4.90438, `rotation2` = -0.636078, `rotation3` = 0.771625 WHERE `guid` IN (112001,112002,112003,112004,112005);

UPDATE `gameobject` SET `position_x` = -1595.03, `position_y` = -873.919, `position_z` = 36.7227, `orientation` = 2.72271, `rotation2` = 0.978148, `rotation3` = 0.207912 WHERE `guid` = 104574;

UPDATE `gameobject` SET `position_x` = -548.849, `position_y` = -4909.94, `position_z` = 45.4167, `orientation` = 0, `rotation2` = 0, `rotation3` = 1 WHERE `guid` = 103211;

UPDATE `gameobject` SET `position_x` = 46.2267, `position_y` = -1724.99, `position_z` = 113.622, `orientation` = 5.0091, `rotation2` = -0.594823, `rotation3` = 0.803857 WHERE `guid` IN (112136,112137,112138,112139,112140);

UPDATE `gameobject` SET `position_x` = 764.682, `position_y` = 1364.49, `position_z` = -2.69456, `orientation` = 5.77704, `rotation2` = -0.25038, `rotation3` = 0.968148 WHERE `guid` IN (106623,106624,106625,106626,106627,106628,106629);

UPDATE `gameobject` SET `position_x` = 924.899, `position_y` = -3979.97, `position_z` = 26.1475, `orientation` = 3.97936, `rotation2` = -0.913545, `rotation3` = 0.406738 WHERE `guid` = 103213;

UPDATE `gameobject` SET `position_x` = 1467.48, `position_y` = -4778.02, `position_z` = 8.51495, `orientation` = 0.244346, `rotation2` = 0.121869, `rotation3` = 0.992546 WHERE `guid` = 103194;

UPDATE `gameobject` SET `position_x` = 1509.96, `position_y` = -4862.17, `position_z` = 8.72121, `orientation` = 1.85005, `rotation2` = 0.798635, `rotation3` = 0.601815 WHERE `guid` = 103132;

UPDATE `gameobject` SET `position_x` = 2067.76, `position_y` = 1119.08, `position_z` = 268.521, `orientation` = 4.31097, `rotation2` = -0.833885, `rotation3` = 0.551938 WHERE `guid` IN (106035,106036,106037,106038,106039,106040,106041);
DELETE FROM `pool_gameobject` WHERE `guid` IN (106038,106041); -- Mithril, Truesilver
DELETE FROM `gameobject` WHERE `guid` IN (106038,106041); -- Mithril, Truesilver

UPDATE `gameobject` SET `position_x` = 2546.06, `position_y` = -1335.72, `position_z` = 161.544, `orientation` = 1.55334, `rotation2` = 0.700909, `rotation3` = 0.713251 WHERE `guid` IN (100424,100425,100426,100427,100428);

UPDATE `gameobject` SET `position_x` = 3199.7, `position_y` = -121.156, `position_z` = 110.164, `orientation` = 4.62512, `rotation2` = -0.737277, `rotation3` = 0.675591 WHERE `guid` IN (100232,100233,100234);

UPDATE `gameobject` SET `position_x` = 5214.69, `position_y` = 316.013, `position_z` = 43.3236, `orientation` = 0.750491, `rotation2` = 0.366501, `rotation3` = 0.930418 WHERE `guid` IN (101877,101878,101879);

UPDATE `gameobject` SET `position_x` = -11246.14, `position_y` = 1494.83, `position_z` = 25.8256, `orientation` = 4.93928, `rotation2` = -0.622514, `rotation3` = 0.782609 WHERE `guid` IN (79213,79214,79215);

UPDATE `gameobject` SET `position_x` = -11107.3, `position_y` = -1089.97, `position_z` = 63.3644, `orientation` = 3.99681, `rotation2` = -0.909961, `rotation3` = 0.414694 WHERE `guid` IN (73870,73871,73872,73873,73874);

UPDATE `gameobject` SET `position_x` = -10533.9, `position_y` = 1938.48, `position_z` = 5.95517, `orientation` = 0.523598, `rotation2` = 0.258819, `rotation3` = 0.965926 WHERE `guid` IN (79048,79049,79050);

UPDATE `gameobject` SET `position_x` = -10120.7, `position_y` = -551.013, `position_z` = 70.454, `orientation` = 4.88692, `rotation2` = -0.642787, `rotation3` = 0.766045 WHERE `guid` IN (73925,73926,73927,73928,73929);

UPDATE `gameobject` SET `position_x` = -1734.98, `position_y` = -3102.7, `position_z` = 25.0462, `orientation` = 2.42601, `rotation2` = 0.936672, `rotation3` = 0.350207 WHERE `guid` IN (68612,68613,68614,68615,68616,68617);

UPDATE `gameobject` SET `position_x` = -567.708, `position_y` = 813.416, `position_z` = 91.6254, `orientation` = 1.83259, `rotation2` = 0.793353, `rotation3` = 0.608762 WHERE `guid` IN (75359,75360,75361);

UPDATE `gameobject` SET `position_x` = -267.566, `position_y` = -217.9, `position_z` = 85.3977, `orientation` = 3.35105, `rotation2` = -0.994521, `rotation3` = 0.104535 WHERE `guid` IN (75350,75351,75352);

UPDATE `gameobject` SET `position_x` = 188.268, `position_y` = -1064.92, `position_z` = 73.355, `orientation` = 1.02974, `rotation2` = 0.492423, `rotation3` = 0.870356 WHERE `guid` IN (75326,75327,75328);

UPDATE `gameobject` SET `position_x` = -1873.53, `position_y` = 2182.41, `position_z` = 81.0751, `orientation` = 0.837758, `rotation2` = 0.406736, `rotation3` = 0.913545 WHERE `guid` IN (102711,102712,102713,102714,102715,102716);

UPDATE `gameobject` SET `position_x` = 2507.28, `position_y` = -1447.08, `position_z` = 171.929, `orientation` = 4.53786, `rotation2` = -0.766044, `rotation3` = 0.642789 WHERE `guid` IN (100469,100470,100471,100472,100473);

UPDATE `gameobject` SET `position_x` = 3308.45, `position_y` = -676.181, `position_z` = 163.165, `orientation` = 0.820303, `rotation2` = 0.398748, `rotation3` = 0.91706 WHERE `guid` IN (100292,100293,100294);

UPDATE `gameobject` SET `position_x` = -9892.9140, `position_y` = 1446.7878, `position_z` = 45.7610 WHERE `guid` IN (79246,79247,79248);

UPDATE `gameobject` SET `position_x` = -9892.8955, `position_y` = 1420.1342, `position_z` = 41.2554 WHERE `guid` IN (79219,79220,79221);

UPDATE `gameobject` SET `position_x` = -156.347, `position_y` = -135.198, `position_z` = 114.634, `orientation` = 0.750491, `rotation2` = 0.366501, `rotation3` = 0.930418 WHERE `guid` IN (75395,75396,75397);

UPDATE `gameobject` SET `position_x` = -5689.62, `position_y` = -2554.05, `position_z` = -50.765, `orientation` = 5.5676, `rotation2` = -0.350207, `rotation3` = 0.936672 WHERE `guid` IN (109864,109865,109866,109867,109868,109869);

UPDATE `gameobject` SET `position_x` = -5061.47, `position_y` = -2103.62, `position_z` = -37.6556, `orientation` = 5.79449, `rotation2` = -0.241921, `rotation3` = 0.970296 WHERE `guid` IN (109810,109811,109812,109813,109814,109815);

UPDATE `gameobject` SET `position_x` = 2530.58, `position_y` = 1762.06, `position_z` = 355.937, `orientation` = 2.67035, `rotation2` = 0.972369, `rotation3` = 0.233448 WHERE `guid` IN (106343,106344,106345,106346,106347,106348,106349);

-- UPDATE `gameobject` SET `position_x` = XXX, `position_y` = YYY, `position_z` = ZZZ, `orientation` = OOO, `rotation2` = RRRR, `rotation3` = RRRR WHERE `guid` IN (XXX);

-- Z-Level
UPDATE `gameobject` SET `position_z` = 150.974106 WHERE `guid` BETWEEN 76101 AND 76103;
UPDATE `gameobject` SET `position_z` = 299.610809 WHERE `guid` BETWEEN 76213 AND 76217;

-- VMangos
UPDATE `gameobject` SET `position_x` = -9200.89, `position_y` = -2441.78, `position_z` = 60.0945, `orientation` = 0.538, `rotation2` = 0.266006, `rotation3` = 0.963971 WHERE `guid` IN (76065,76066,76067);
UPDATE `gameobject` SET `position_x` = -9045.17, `position_y` = -2379.82, `position_z` = 135.04, `orientation` = 0.117, `rotation2` = 0.058555, `rotation3` = 0.998284 WHERE `guid` IN (76059,76060,76061);

-- =====
-- CCSDB
-- =====

-- add missing 1731,3763,181248,2055,103713 "copper" nodes
-- add missing 1732,2054,3764,103711,181249 "tin" nodes
-- instance files start at map 109 which starts at 1090001, lowest instance file guid, as lower maps got another 0 added to them for safety
SET @ODURNMOROGH	:= 1000000;
SET @ODUROTAR		:= 1002000;
SET @OELWYNN		:= 1004000;
SET @OMULGORE		:= 1006000;
SET @OTIRISFAL		:= 1010000;
SET @ODARKSHORE		:= 1012000;
SET @OLOCHMODAN		:= 1014000;
SET @OSILVERPINE	:= 1016000;
SET @OWESTFALL		:= 1018000;
SET @OBARRENS		:= 1020000;
SET @OREDRIDGE		:= 1022000;
SET @OSTONETALON	:= 1024000;
SET @OASHENVALE		:= 1026000;
SET @ODUSKWOOD		:= 1028000;
SET @OHILLSBRAD		:= 1030000;
SET @OWETLANDS		:= 1032000;
SET @OTNEEDLES		:= 1034000;
SET @OALTERAC		:= 1036000;
SET @OARATHI		:= 1038000;
SET @ODESOLACE		:= 1040000;
SET @OSTRANGLETHORN	:= 1042000;
SET @ODUSTWALLOW	:= 1044000;
SET @OBADLANDS		:= 1046000;

SET @OFERALAS		:= 1050000;

-- i know this is not 100% correct, but better then only adding these as copper/tin for now, will be converted to spawn_groups anyways when we have all (more) nodes aligned.
DELETE FROM `gameobject` WHERE `guid` BETWEEN 1000000 AND 1090000; -- Insert Copper/Tin for Node Locations
DELETE FROM `gameobject` WHERE `guid` BETWEEN 101452 AND 101454; -- already uses other range
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- 1000001 - 1002001	Dun Morogh - Mineral Nodes
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -6099.44, -341.376, 439.957, 0.261798, 0, 0, 0.130526, 0.991445, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -6011.58, -114.691, 412.603, 2.56563, 0, 0, 0.958819, 0.284016, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5892.93, -1004.22, 411.382, 3.10665, 0, 0, 0.999847, 0.0174693, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5888.64, -318.246, 373.329, 5.32326, 0, 0, -0.461748, 0.887011, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5828.81, -1682.51, 364.491, 1.43117, 0, 0, 0.656058, 0.75471, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5763.37, -1213.98, 386.301, 1.0472, 0, 0, 0.5, 0.866025, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5756.99, -1462.85, 407.367, 6.03884, 0, 0, -0.121869, 0.992546, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5716.87, -162.426, 374.256, 3.08918, 0, 0, 0.999657, 0.0262017, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5706.74, -2259.01, 445.328, 6.05629, 0, 0, -0.113203, 0.993572, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5644.32, -2362.95, 424.935, 2.30383, 0, 0, 0.913545, 0.406738, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5644.12, 655.195, 385.571, 4.81711, 0, 0, -0.66913, 0.743145, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5633.08, -1957.88, 372.963, 2.93214, 0, 0, 0.994521, 0.104535, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5628.65, -1651.85, 365.856, 2.07694, 0, 0, 0.861628, 0.507539, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5614.62, -1665.83, 351.188, 4.86947, 0, 0, -0.649447, 0.760406, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5605.4, -252.373, 367.83, 3.57793, 0, 0, -0.976295, 0.216442, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5587.96, 642.125, 385.477, 3.33359, 0, 0, -0.995396, 0.0958512, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5586.85, -1674.53, 345.407, 1.55334, 0, 0, 0.700909, 0.713251, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5552.77, -285.159, 364.495, 5.46288, 0, 0, -0.398748, 0.91706, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5543.01, -345.275, 359.952, 5.91667, 0, 0, -0.182235, 0.983255, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5520.07, -828.794, 413.923, 1.85005, 0, 0, 0.798635, 0.601815, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5504.02, -275.01, 354.252, 6.00393, 0, 0, -0.139173, 0.990268, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5482.73, -94.8129, 346.902, 3.15906, 0, 0, -0.999962, 0.00873464, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5481.05, -1555.31, 444.87, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5432.38, -2023.23, 427.529, 4.50295, 0, 0, -0.777145, 0.629321, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5387.72, -282.724, 358.948, 3.54302, 0, 0, -0.979924, 0.19937, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5382.82, 605.27, 400.618, 3.05433, 0, 0, 0.999048, 0.0436193, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5351.83, -309.17, 417.621, 6.02139, 0, 0, -0.130526, 0.991445, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5341.9, 483.555, 390.603, 5.07891, 0, 0, -0.566406, 0.824126, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5247.1, -186.158, 442.975, 2.63544, 0, 0, 0.968147, 0.250381, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -5016.47, 5.45768, 395.013, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -4885.96, 150.787, 404.716, 6.10865, 0, 0, -0.0871553, 0.996195, 45, 90, 255, 1),
(@ODURNMOROGH := @ODURNMOROGH + 1, 1731, 0, -4855.66, -104.338, 407.57, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 255, 1),
-- 1002001 - 1004001	Durotar - Mineral Nodes
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, -996.959, -4816.75, 13.0821, 0.366518, 0, 0, 0.182235, 0.983255, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, -834.234, -4838.99, 21.76, 3.73501, 0, 0, -0.956305, 0.292372, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, -398.531, -4747.13, 38.928, 5.09636, 0, 0, -0.559193, 0.829038, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, -341.065, -5100.17, 28.9194, 1.88495, 0, 0, 0.809016, 0.587786, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 87.6491, -4941.56, 19.3904, 5.8294, 0, 0, -0.224951, 0.97437, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 134.77, -4134.01, 54.8472, 2.23402, 0, 0, 0.898793, 0.438373, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 593.889, -4185.87, 19.861, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 1266.67, -3991.47, 23.3678, 6.00393, 0, 0, -0.139173, 0.990268, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 1416.13, -4773.18, 4.92753, 4.10152, 0, 0, -0.887011, 0.461749, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 1460.43, -4691.54, -3.10957, 2.25147, 0, 0, 0.902585, 0.430512, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 1489.51, -4668.87, 3.7799, 2.9845, 0, 0, 0.996917, 0.0784664, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 1509.23, -4802.94, 8.99069, 5.75959, 0, 0, -0.258819, 0.965926, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 1518.04, -4753.08, 14.9666, 2.82743, 0, 0, 0.987688, 0.156436, 45, 90, 255, 1),
(@ODUROTAR := @ODUROTAR + 1, 1731, 1, 1519.99, -4687.98, 9.02939, 0.925024, 0, 0, 0.446198, 0.894934, 45, 90, 255, 1),
-- 1004001 - 1006001	Elwynn Forest - Mineral Nodes
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -9835.27, 205.609, 14.5273, 2.58308, 0, 0, 0.961261, 0.27564, 45, 90, 255, 1),
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -9541.09, 652.099, 49.707, 0.226893, 0, 0, 0.113203, 0.993572, 45, 90, 255, 1),
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -9222.35, -918.638, 60.2758, 2.53072, 0, 0, 0.953716, 0.300708, 45, 90, 255, 1),
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -9153.03, -599.311, 60.2455, 3.21142, 0, 0, -0.999391, 0.0349061, 45, 90, 255, 1),
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -9151.22, -623.095, 78.4092, 5.77704, 0, 0, -0.25038, 0.968148, 45, 90, 255, 1),
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -9106.09, -560.421, 61.66, 0.331611, 0, 0, 0.165047, 0.986286, 45, 90, 255, 1),
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -9030.82, -723.776, 111.017, 1.27409, 0, 0, 0.594822, 0.803857, 45, 90, 255, 1),
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -8843.56, -713.05, 82.6709, 5.09636, 0, 0, -0.559193, 0.829038, 45, 90, 255, 1),
(@OELWYNN:= @OELWYNN + 1, 1731, 0, -8801.88, -883.678, 82.6097, 3.35105, 0, 0, -0.994521, 0.104535, 45, 90, 255, 1),
-- 1006001 - 1008001	Mulgore - Mineral Nodes
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -2832.31, -719.423, 36.6097, 3.28124, 0, 0, -0.997563, 0.0697661, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -2764.18, -1390.74, 63.256, 5.79449, 0, 0, -0.241921, 0.970296, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -2706.93, -1273.01, 38.5069, 4.53786, 0, 0, -0.766044, 0.642789, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -2351.13, 366.964, 64.8289, 6.26573, 0, 0, -0.00872612, 0.999962, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -2321.38, 376.604, 68.9614, 4.7822, 0, 0, -0.681998, 0.731354, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -2305.67, 463.42, 47.8758, 4.7473, 0, 0, -0.694658, 0.71934, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -2102.07, -1112.8, 33.3685, 3.94445, 0, 0, -0.920505, 0.390732, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1902.6, 411.649, 134.422, 1.83259, 0, 0, 0.793353, 0.608762, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1734.81, -1271.49, 115.614, 0.994837, 0, 0, 0.477158, 0.878817, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1723.8, -1171.47, 114.257, 5.84685, 0, 0, -0.216439, 0.976296, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1656.59, -857.758, 42.3553, 2.02458, 0, 0, 0.848047, 0.529921, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1495.55, -951.971, 144.255, 2.74016, 0, 0, 0.979924, 0.19937, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1466.25, 320.241, 56.9725, 2.26892, 0, 0, 0.906307, 0.422619, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1439.97, -977.927, 145.568, 3.82227, 0, 0, -0.942641, 0.333808, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1158.87, -1189.76, 67.4503, 3.61284, 0, 0, -0.972369, 0.233448, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -1037.59, -1101.76, 45.8684, 4.24115, 0, 0, -0.85264, 0.522499, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -973.593, -1207.51, 104.673, 2.18166, 0, 0, 0.887011, 0.461749, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -948.007, -1154.67, 93.4486, 4.03171, 0, 0, -0.902585, 0.430512, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -917.607, -1080.39, 77.0898, 1.16937, 0, 0, 0.551936, 0.833886, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -887.394, -970.533, 31.9752, 3.26377, 0, 0, -0.998135, 0.0610518, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -864.57, -1157.19, 118.865, 4.90438, 0, 0, -0.636078, 0.771625, 45, 90, 255, 1),
(@OMULGORE:= @OMULGORE + 1, 1731, 1, -738.586, -825.43, 52.3338, 6.19592, 0, 0, -0.0436192, 0.999048, 45, 90, 255, 1),
-- 1008001 - 1010001	Teldrassil - Mineral Nodes
-- 1010001 - 1012001	Tirisfal Glades - Mineral Nodes
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 1744.57, 1164.62, 75.0946, 4.4855, 0, 0, -0.782608, 0.622515, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 1779.62, -287.058, 42.0114, 3.01941, 0, 0, 0.998135, 0.0610518, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 1845.71, 778.281, 31.2142, 2.32129, 0, 0, 0.91706, 0.39875, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 1889.28, -681.401, 50.7889, 5.68977, 0, 0, -0.292372, 0.956305, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 1897.42, -749.906, 64.4441, 1.39626, 0, 0, 0.642787, 0.766045, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 1904.54, -803.336, 71.4108, 1.02974, 0, 0, 0.492423, 0.870356, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 1908.19, 1077.63, 31.1444, 0.209439, 0, 0, 0.104528, 0.994522, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2084.35, -290.538, 48.3615, 2.05949, 0, 0, 0.857167, 0.515038, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2101.47, -319.793, 52.2458, 0.0523589, 0, 0, 0.0261765, 0.999657, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2109.25, -590.871, 65.8331, 3.01941, 0, 0, 0.998135, 0.0610518, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2221.54, 616.308, 27.6591, 4.53786, 0, 0, -0.766044, 0.642789, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2270.86, 649.895, 25.2218, 1.97222, 0, 0, 0.833885, 0.551938, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2410.51, 846.121, 62.4501, 1.0821, 0, 0, 0.515037, 0.857168, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2416.76, 1470.06, 39.4758, 0.890117, 0, 0, 0.43051, 0.902586, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2421.14, 1762.29, 36.7975, 3.61284, 0, 0, -0.972369, 0.233448, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2440.95, 266.685, 29.7319, 3.73501, 0, 0, -0.956305, 0.292372, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2448.6, 672.04, 36.6997, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2454.74, -1084.52, 103.86, 4.69494, 0, 0, -0.71325, 0.70091, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2473.59, -476.253, 79.8804, 2.56563, 0, 0, 0.958819, 0.284016, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2475.6, 482.201, 44.1396, 5.68977, 0, 0, -0.292372, 0.956305, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2489.14, -1011.01, 80.4089, 3.29869, 0, 0, -0.996917, 0.0784664, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2489.71, 1485.08, 8.52363, 5.49779, 0, 0, -0.382683, 0.92388, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2505.24, 745.556, 120.932, 3.14159, 0, 0, -1, 0, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2510.7, -376.824, 85.8907, 5.70723, 0, 0, -0.284015, 0.95882, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2585.97, -307.915, 72.41, 1.46608, 0, 0, 0.66913, 0.743145, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2620.32, 1454.64, -8.52259, 4.71239, 0, 0, -0.707107, 0.707107, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2698.05, 576.933, 18.7021, 0.733038, 0, 0, 0.358368, 0.933581, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2756.54, 1079.45, 110.497, 3.52557, 0, 0, -0.981627, 0.190812, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2764.11, -473.161, 100.833, 5.63741, 0, 0, -0.317305, 0.948324, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2783.56, 504.424, 27.0137, 2.63544, 0, 0, 0.968147, 0.250381, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2889.69, 1104.54, 115.668, 4.17134, 0, 0, -0.870356, 0.492424, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2892.56, -712.691, 143.279, 1.97222, 0, 0, 0.833885, 0.551938, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2896.04, 541.865, 93.0305, 4.01426, 0, 0, -0.906307, 0.422619, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2896.65, -399.971, 84.3644, 5.5676, 0, 0, -0.350207, 0.936672, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 2983.78, -474.167, 83.9406, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 255, 1),
(@OTIRISFAL:= @OTIRISFAL + 1, 1731, 0, 3059.6, 460.269, 10.4857, 5.51524, 0, 0, -0.374606, 0.927184, 45, 90, 255, 1),
-- 1012001 - 1014001	Darkshore - Mineral Nodes
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 4612.88, 634.874, 6.40536, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 5200.01, 116.131, 61.4818, 0.59341, 0, 0, 0.292371, 0.956305, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 6335.66, -169.052, 47.5812, 6.0912, 0, 0, -0.0958452, 0.995396, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 6585.01, 291.717, 39.6147, 3.15906, 0, 0, -0.999962, 0.00873464, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 6704.14, -426.594, 74.9637, 2.11185, 0, 0, 0.870356, 0.492424, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 6866.71, -659.674, 83.6733, 5.3058, 0, 0, -0.469471, 0.882948, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 6872.02, -628.109, 84.8797, 3.194, 0, 0, -0.999657, 0.0262017, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 6884.74, -458.588, 41.7223, 4.50295, 0, 0, -0.777145, 0.629321, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 7245.04, 151.198, 5.61268, 3.50812, 0, 0, -0.983254, 0.182238, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1731, 1, 7346.2, -35.5666, 11.517, 2.68781, 0, 0, 0.97437, 0.224951, 45, 90, 255, 1),

(@ODARKSHORE:= @ODARKSHORE + 1, 1732, 1, 5393.58, 149.119, 41.419, 0.820303, 0, 0, 0.398748, 0.91706, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1732, 1, 6985.49, 189.042, -0.514565, 3.64774, 0, 0, -0.968147, 0.250381, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1732, 1, 7010.48, -421.742, 47.4607, 4.39823, 0, 0, -0.809016, 0.587786, 45, 90, 255, 1),
(@ODARKSHORE:= @ODARKSHORE + 1, 1732, 1, 7483.28, -315.342, -8.16802, 3.927, 0, 0, -0.923879, 0.382686, 45, 90, 255, 1),

(@ODARKSHORE:= @ODARKSHORE + 1, 1733, 1, 6899.86, -190.798, 50.7708, 1.20428, 0, 0, 0.566406, 0.824126, 45, 90, 255, 1),
-- 1014001 - 1016001	Loch Modan - Mineral Nodes
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -6161.33, -3029.14, 392.284, 5.96903, 0, 0, -0.156434, 0.987688, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -6111.96, -2923.7, 401.062, 1.69297, 0, 0, 0.748956, 0.66262, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -6093.14, -3050.13, 400.793, 5.70723, 0, 0, -0.284015, 0.95882, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5930.48, -3610.93, 355.29, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5919.37, -4147.32, 403.105, 4.15388, 0, 0, -0.874619, 0.48481, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5815.49, -3477.51, 313.627, 0.244346, 0, 0, 0.121869, 0.992546, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5815.2, -3610.52, 356.486, 3.24635, 0, 0, -0.998629, 0.0523532, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5474.6, -3864.09, 331.252, 1.29154, 0, 0, 0.601814, 0.798636, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5302.34, -3377.92, 286.355, 5.20108, 0, 0, -0.515037, 0.857168, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5268.53, -2691.13, 351.273, 2.04204, 0, 0, 0.85264, 0.522499, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5162.66, -2647.23, 354.12, 5.41052, 0, 0, -0.422618, 0.906308, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -5116.83, -3976.2, 319.844, 4.17134, 0, 0, -0.870356, 0.492424, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -4907.81, -2994.97, 318.189, 2.67035, 0, 0, 0.972369, 0.233448, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -4863.07, -3003.43, 317.635, 6.16101, 0, 0, -0.0610485, 0.998135, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -4835.49, -2962.1, 321.342, 1.93731, 0, 0, 0.824125, 0.566408, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -4789.87, -3009.63, 307.927, 0.994837, 0, 0, 0.477158, 0.878817, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1731, 0, -4661.44, -2844.7, 326.785, 3.82227, 0, 0, -0.942641, 0.333808, 45, 90, 255, 1),

(@OLOCHMODAN:= @OLOCHMODAN + 1, 1732, 0, -6088.7, -2908.38, 419.217, 1.11701, 0, 0, 0.529919, 0.848048, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1732, 0, -5766.73, -3573.74, 337.774, 5.39307, 0, 0, -0.43051, 0.902586, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1732, 0, -5361.27, -2695.27, 386.191, 2.68781, 0, 0, 0.97437, 0.224951, 45, 90, 255, 1),
(@OLOCHMODAN:= @OLOCHMODAN + 1, 1732, 0, -4958.92, -4036.67, 302.923, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 255, 1),
-- 1016001 - 1018001	Silverpine Forest - Mineral Nodes
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, -522.009, 1252.89, 68.4464, 3.82227, 0, 0, -0.942641, 0.333808, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, 310.01, 1083.07, 105.552, 0.296705, 0, 0, 0.147809, 0.989016, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, 396.622, 1014.3, 110.456, 1.78023, 0, 0, 0.777145, 0.629321, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, 416.263, 1036.77, 106.968, 2.04204, 0, 0, 0.85264, 0.522499, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, 815.299, 1506.07, 47.6115, 5.35816, 0, 0, -0.446198, 0.894934, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, 848.075, 368.491, 22.9007, 3.22886, 0, 0, -0.999048, 0.0436193, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, 1051.6, 742.094, 59.4798, 1.64061, 0, 0, 0.731353, 0.681999, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, 1196.38, 1447.38, 44.417, 3.194, 0, 0, -0.999657, 0.0262017, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1731, 0, 1324.64, 1969.28, 14.6851, 0.331611, 0, 0, 0.165047, 0.986286, 45, 90, 255, 1),

(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, -548.759, 1018.47, 105.532, 5.79449, 0, 0, -0.241921, 0.970296, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, -312.241, 1036.87, 115.711, 1.41372, 0, 0, 0.649447, 0.760406, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, -309.482, 971.346, 133.761, 3.927, 0, 0, -0.923879, 0.382686, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, -293.892, 1008, 113.602, 5.95157, 0, 0, -0.165047, 0.986286, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, -282.336, 1030.51, 115.62, 3.54302, 0, 0, -0.979924, 0.19937, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 136.547, 539.18, 49.9037, 4.39823, 0, 0, -0.809016, 0.587786, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 215.092, 1457.74, 121.133, 4.03171, 0, 0, -0.902585, 0.430512, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 368.115, 604.431, 48.3461, 3.89209, 0, 0, -0.930417, 0.366502, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 394.553, 1004.06, 108.397, 4.81711, 0, 0, -0.66913, 0.743145, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 415.897, 996.533, 109.065, 5.0091, 0, 0, -0.594823, 0.803857, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 520.041, 882.857, 135.329, 4.66003, 0, 0, -0.725374, 0.688355, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 625.231, 874.411, 37.9086, 1.48353, 0, 0, 0.67559, 0.737278, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 1075.68, 860.883, 18.6506, 1.11701, 0, 0, 0.529919, 0.848048, 45, 90, 255, 1),
(@OSILVERPINE:= @OSILVERPINE + 1, 1732, 0, 1221.43, 1728.9, 34.2743, 1.79769, 0, 0, 0.782608, 0.622515, 45, 90, 255, 1),
-- 1018001 - 1020001	Westfall - Mineral Nodes
(@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -11400, 1979.35, 5.21146, 2.32129, 0, 0, 0.91706, 0.39875, 45, 90, 255, 1),
-- (@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -11324, 1599.41, 37.1515, 3.14159, 0, 0, -1, 0, 45, 90, 255, 1), -- recheck -> bad node
-- (@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -11320, 1603.41, 37.1515, 3.14159, 0, 0, -1, 0, 45, 90, 255, 1), -- recheck -> bad node
(@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -11201.5, 1520.96, 21.3151, 5.14872, 0, 0, -0.537299, 0.843392, 45, 90, 255, 1),
(@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -11175.3, 1637.78, 27.8243, 4.83456, 0, 0, -0.66262, 0.748956, 45, 90, 255, 1),
(@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -11158.7, 1562.7, 23.7935, 4.45059, 0, 0, -0.793353, 0.608762, 45, 90, 255, 1),
(@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -11151.8, 1017.99, 39.6759, 2.26892, 0, 0, 0.906307, 0.422619, 45, 90, 255, 1),
(@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -11113.2, 1484.9, 25.8984, 3.28124, 0, 0, -0.997563, 0.0697661, 45, 90, 255, 1),
(@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -10446.2, 1932.18, 13.1237, 3.05433, 0, 0, 0.999048, 0.0436193, 45, 90, 255, 1),
(@OWESTFALL:= @OWESTFALL + 1, 1731, 0, -9815.68, 1416.98, 38.3897, 1.3439, 0, 0, 0.622514, 0.782609, 45, 90, 255, 1),

(@OWESTFALL:= @OWESTFALL + 1, 1732, 0, -11239.2, 1564.08, 72.4693, 1.0821, 0, 0, 0.515037, 0.857168, 45, 90, 255, 1),
(@OWESTFALL:= @OWESTFALL + 1, 1732, 0, -10588.3, 2009.15, -3.67554, 1.46608, 0, 0, 0.66913, 0.743145, 45, 90, 255, 1),
-- 1020001 - 1022001	Barrens - Mineral Nodes
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -3439.51, -2399.7, 97.3195, 2.04204, 0, 0, 0.85264, 0.522499, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -2912.52, -1925.08, 92.8999, 0.0349062, 0, 0, 0.0174522, 0.999848, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -2635.87, -2400.89, 95.7149, 0.558504, 0, 0, 0.275637, 0.961262, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -2494.99, -2542.07, 96.1752, 3.99681, 0, 0, -0.909961, 0.414694, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1987.63, -2931.69, 94.5732, 5.98648, 0, 0, -0.147809, 0.989016, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1874.66, -3107.28, 106.662, 0.523598, 0, 0, 0.258819, 0.965926, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1593.09, -1622.81, 116.249, 4.67748, 0, 0, -0.719339, 0.694659, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1566.68, -2692.2, 90.0199, 3.82227, 0, 0, -0.942641, 0.333808, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1548.2, -3675.97, 101.596, 6.23083, 0, 0, -0.0261765, 0.999657, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1470.98, -3785.21, 35.7294, 2.53072, 0, 0, 0.953716, 0.300708, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1447.37, -2373.73, 112.527, 3.42085, 0, 0, -0.990268, 0.139175, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1180.05, -2749.38, 102.568, 5.34071, 0, 0, -0.45399, 0.891007, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1175.11, -2532.84, 123.906, 3.01941, 0, 0, 0.998135, 0.0610518, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -1086.62, -1575, 166.013, 3.56047, 0, 0, -0.978148, 0.207912, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -724.941, -2151.03, 138.44, 2.63544, 0, 0, 0.968147, 0.250381, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -720.831, -2347.2, 137.162, 2.65289, 0, 0, 0.970295, 0.241925, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -648.439, -1595.35, 114.387, 4.31097, 0, 0, -0.833885, 0.551938, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -566.826, -1441.67, 97.7237, 3.90954, 0, 0, -0.927183, 0.374608, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -501.907, -1354.49, 92.7284, 2.00713, 0, 0, 0.843391, 0.5373, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -344.821, -1543.51, 101.365, 3.42085, 0, 0, -0.990268, 0.139175, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -100.367, -1315.26, 97.9216, 5.88176, 0, 0, -0.199367, 0.979925, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, -25.0396, -2447.36, 126.414, 1.69297, 0, 0, 0.748956, 0.66262, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 155.229, -2527.16, 108.985, 2.72271, 0, 0, 0.978148, 0.207912, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 182.288, -1926.24, 100.09, 3.80482, 0, 0, -0.945518, 0.325568, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 183.748, -1734.99, 97.5922, 5.95157, 0, 0, -0.165047, 0.986286, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 255.976, -2246.03, 220.337, 0.663223, 0, 0, 0.325567, 0.945519, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 272.095, -2466.54, 102.545, 1.11701, 0, 0, 0.529919, 0.848048, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 420.65, -3565.02, 56.9573, 2.93214, 0, 0, 0.994521, 0.104535, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 428.281, -1788.9, 115.552, 4.08407, 0, 0, -0.891007, 0.453991, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 630.384, -3078.95, 101.372, 1.53589, 0, 0, 0.694658, 0.71934, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 639.388, -3394.1, 168.933, 6.14356, 0, 0, -0.0697555, 0.997564, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 814.091, -3138.75, 174.867, 3.29869, 0, 0, -0.996917, 0.0784664, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 865.913, -3474.46, 96.8132, 1.50098, 0, 0, 0.681998, 0.731354, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 868.723, -3359.76, 175.461, 3.50812, 0, 0, -0.983254, 0.182238, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 935.746, -2715.83, 103.601, 5.21854, 0, 0, -0.507538, 0.861629, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 973.186, -3225.1, 101.245, 0.401425, 0, 0, 0.199367, 0.979925, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1731, 1, 1303.93, -3200.05, 96.2165, 4.43314, 0, 0, -0.798635, 0.601815, 45, 90, 255, 1),

(@OBARRENS:= @OBARRENS + 1, 1732, 1, -3822.94, -2313.46, 105.104, 1.76278, 0, 0, 0.771625, 0.636078, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -3675.34, -1822.64, 102.655, 0.0174525, 0, 0, 0.00872612, 0.999962, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -3219.37, -2291.98, 95.301, 4.24115, 0, 0, -0.85264, 0.522499, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -2716.05, -2332.41, 97.1788, 5.72468, 0, 0, -0.275637, 0.961262, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -2109.26, -3677.45, 62.0206, 0.0174525, 0, 0, 0.00872612, 0.999962, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -1857.84, -2606.39, 95.3395, 1.91986, 0, 0, 0.819152, 0.573577, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -1831.51, -3678.28, 28.8826, 5.96903, 0, 0, -0.156434, 0.987688, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -1823.01, -3776.37, 14.0085, 2.09439, 0, 0, 0.866025, 0.500001, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -1674.1, -2413.88, 85.6577, 4.93928, 0, 0, -0.622514, 0.782609, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -1645.21, -2619.43, 86.5365, 1.06465, 0, 0, 0.507538, 0.861629, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -1425.03, -2045.83, 83.8641, 5.86431, 0, 0, -0.207912, 0.978148, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -1232.93, -1900.2, 83.0397, 5.5676, 0, 0, -0.350207, 0.936672, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -452.804, -2149.09, 97.2853, 5.16618, 0, 0, -0.529919, 0.848048, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -395.093, -1589.36, 101.445, 3.4383, 0, 0, -0.989016, 0.147811, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, -185.128, -1833.16, 99.0415, 3.73501, 0, 0, -0.956305, 0.292372, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 117.095, -1436.41, 95.928, 5.14872, 0, 0, -0.537299, 0.843392, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 303.017, -1412.02, 93.3997, 5.95157, 0, 0, -0.165047, 0.986286, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 443.844, -2996.4, 103.127, 3.12412, 0, 0, 0.999962, 0.00873464, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 521.879, -3235.76, 118.281, 2.84488, 0, 0, 0.989016, 0.147811, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 543.106, -2348.81, 93.3756, 6.24828, 0, 0, -0.0174522, 0.999848, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 564.967, -2091.1, 100.963, 0.261798, 0, 0, 0.130526, 0.991445, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 790.214, -1955.62, 96.0057, 2.30383, 0, 0, 0.913545, 0.406738, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 804.16, -2154.34, 113.395, 2.25147, 0, 0, 0.902585, 0.430512, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 1732, 1, 1024.2, -3380.53, 97.7864, 0.383971, 0, 0, 0.190808, 0.981627, 45, 90, 255, 1),
--
(@OBARRENS:= @OBARRENS + 1, 1733, 1, 797.905, -1798.65, 92.4391, 1.65806, 0, 0, 0.737277, 0.675591, 45, 90, 255, 1),
-- 3763
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -3991.88, -1883.89, 97.9145, 5.41052, 0, 0, -0.422618, 0.906308, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -3672.36, -1631.22, 95.3799, 2.33874, 0, 0, 0.920505, 0.390732, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -2102.36, -1711.07, 93.8962, 1.50098, 0, 0, 0.681998, 0.731354, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -1994.19, -2817.67, 95.5165, 2.87979, 0, 0, 0.991445, 0.130528, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -1970.99, -2801.34, 91.8729, 3.12412, 0, 0, 0.999962, 0.00873464, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -1874.54, -2720.51, 95.3035, 1.06465, 0, 0, 0.507538, 0.861629, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -1462.52, -1464.5, 102.557, 0.750491, 0, 0, 0.366501, 0.930418, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -1397.27, -1521.42, 117.744, 3.73501, 0, 0, -0.956305, 0.292372, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -1252.58, -2998.96, 76.7928, 1.81514, 0, 0, 0.788011, 0.615662, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, -223.339, -3348.09, 91.6667, 0.331611, 0, 0, 0.165047, 0.986286, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, 52.788, -1923.76, 80.1537, 0.90757, 0, 0, 0.438371, 0.898794, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, 299.283, -1414.12, 93.4663, 3.90954, 0, 0, -0.927183, 0.374608, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, 669.423, -1542.82, 106.891, 5.60251, 0, 0, -0.333807, 0.942641, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3763, 1, 697.511, -1628.27, 92.4118, 2.42601, 0, 0, 0.936672, 0.350207, 45, 90, 255, 1),
-- 3764
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -4077.24, -1776.9, 110.37, 4.45059, 0, 0, -0.793353, 0.608762, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -3654.05, -1691.23, 113.43, 1.98967, 0, 0, 0.83867, 0.54464, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -2277.64, -2507.73, 93.9827, 3.28124, 0, 0, -0.997563, 0.0697661, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -2266.12, -2536.62, 92.2936, 0.663223, 0, 0, 0.325567, 0.945519, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -2117.74, -2794.77, 92.5652, 1.23918, 0, 0, 0.580703, 0.814116, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -2086.99, -1738.18, 96.4682, 3.42085, 0, 0, -0.990268, 0.139175, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -2062.72, -1949.56, 91.6667, 1.71042, 0, 0, 0.754709, 0.656059, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -2060.78, -2801.24, 91.6667, 1.01229, 0, 0, 0.484809, 0.87462, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -1890.14, -2710.69, 96.0801, 6.12611, 0, 0, -0.0784588, 0.996917, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -1314.38, -3040.59, 83.7026, 6.03884, 0, 0, -0.121869, 0.992546, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -1227.88, -2986.31, 81.0746, 4.06662, 0, 0, -0.894934, 0.446199, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, -221.384, -3283.85, 92.1272, 4.76475, 0, 0, -0.688354, 0.725375, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, 108.502, -1971.98, 86.3208, 3.7001, 0, 0, -0.961261, 0.27564, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, 643.704, -1276.92, 98.4661, 3.52557, 0, 0, -0.981627, 0.190812, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, 884.066, -1317.24, 104.393, 4.01426, 0, 0, -0.906307, 0.422619, 45, 90, 255, 1),
(@OBARRENS:= @OBARRENS + 1, 3764, 1, 1364.33, -3495.35, 94.4066, 0.488691, 0, 0, 0.241921, 0.970296, 45, 90, 255, 1),
(101452, 103711, 1, -4189.95, -2273.66, 52.2812, 1.69297, 0, 0, 0.748956, 0.66262, 300, 300, 255, 1),
(101453, 105569, 1, -4224.98, -2266.66, 52.3942, 0.95993, 0, 0, 0.461748, 0.887011, 45, 90, 255, 1),
(101454, 105569, 1, -4204.59, -2201.6, 56.1207, 5.72468, 0, 0, -0.275637, 0.961262, 45, 90, 255, 1),
-- 1022001 - 1024001	Redridge Mountains - Mineral Nodes
(@OREDRIDGE:= @OREDRIDGE + 1, 1731, 0, -9821.69, -3219.74, 64.2859, 2.32129, 0, 0, 0.91706, 0.39875, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1731, 0, -9638.75, -3028.55, 60.2563, 2.30383, 0, 0, 0.913545, 0.406738, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1731, 0, -9590.31, -2733.05, 57.7435, 0.209439, 0, 0, 0.104528, 0.994522, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1731, 0, -9093.26, -3355.02, 102.589, 4.71239, 0, 0, -0.707107, 0.707107, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1731, 0, -9086.08, -3267.75, 102.72, 1.22173, 0, 0, 0.573576, 0.819152, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1731, 0, -9256, -3097, 100.701, 1.972, 0, 0, 0.833886, 0.551937, 45, 90, 255, 1), -- vmangos

(@OREDRIDGE:= @OREDRIDGE + 1, 1732, 0, -9782.66, -3158.25, 71.5411, 2.75761, 0, 0, 0.981627, 0.190812, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1732, 0, -9632.27, -2965.74, 59.3339, 2.86233, 0, 0, 0.990268, 0.139175, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1732, 0, -9254.29, -2734.14, 89.1034, 0.436332, 0, 0, 0.216439, 0.976296, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1732, 0, -9114.75, -2195.5, 125.289, 3.54302, 0, 0, -0.979924, 0.19937, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1732, 0, -8879.81, -2286.95, 138.31, 5.67232, 0, 0, -0.300705, 0.953717, 45, 90, 255, 1),

(@OREDRIDGE:= @OREDRIDGE + 1, 1733, 0, -9317.58, -3472.81, 118.905, 4.29351, 0, 0, -0.83867, 0.54464, 45, 90, 255, 1),
(@OREDRIDGE:= @OREDRIDGE + 1, 1733, 0, -8671.02, -2353.16, 163.042, 4.03171, 0, 0, -0.902585, 0.430512, 45, 90, 255, 1),
-- Renders Rock
(1023980, 1731, 0, -8718.69, -2251.12, 157.443, 5.09636, 0, 0, -0.559193, 0.829038, 45, 90, 255, 1),
(1023981, 1731, 0, -8702.09, -2153.17, 156.936, 1.62316, 0, 0, 0.725374, 0.688355, 45, 90, 255, 1),

(1023982, 1732, 0, -8827.17, -2188.08, 179.982, 1.78023, 0, 0, 0.777145, 0.629321, 45, 90, 255, 1),
(1023983, 1732, 0, -8805.3, -2146, 154.329, 0.85521, 0, 0, 0.414693, 0.909962, 45, 90, 255, 1),
(1023984, 1732, 0, -8756.82, -2241.76, 152.626, 4.41568, 0, 0, -0.803857, 0.594823, 45, 90, 255, 1),
(1023985, 1732, 0, -8750, -2144, 156.404, 5.86431, 0, 0, -0.207912, 0.978148, 45, 90, 255, 1),
(1023986, 1732, 0, -8749.71, -2186.82, 163.259, 5.21854, 0, 0, -0.507538, 0.861629, 45, 90, 255, 1),
(1023987, 1732, 0, -8709.11, -2189.67, 154.599, 3.12412, 0, 0, 0.999962, 0.00873464, 45, 90, 255, 1),
(1023988, 1732, 0, -8704.96, -2174.29, 151.974, 4.86947, 0, 0, -0.649447, 0.760406, 45, 90, 255, 1),
(1023989, 1732, 0, -8649.48, -2259.47, 156.491, 1.19794, 0, 0, 0.563793, 0.825916, 45, 90, 255, 1),
-- Rethban
-- 2055
(1023996, 2055, 0, -8891.01, -1986.15, 136.204, 0.401425, 0, 0, 0.199367, 0.979925, 45, 90, 255, 1),
-- 2054
(1023997, 2054, 0, -8901.02, -2016.14, 126.447, 1.46608, 0, 0, 0.66913, 0.743145, 45, 90, 255, 1),
(1023998, 2054, 0, -8786.52, -2028.94, 130.408, 3.05433, 0, 0, 0.999048, 0.0436193, 45, 90, 255, 1),
(1023999, 2054, 0, -8759.31, -2013.18, 130.801, 5.5676, 0, 0, -0.350207, 0.936672, 45, 90, 255, 1),
-- 1024001 - 1026001	Stonetalon Mountains - Mineral Nodes
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, -197.107, -537.874, 20.8429, 0.733038, 0, 0, 0.358368, 0.933581, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, -102.327, -575.467, -22.7587, 0.575957, 0, 0, 0.284015, 0.95882, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, -8.1365, 15.9418, 53.3904, 3.35105, 0, 0, -0.994521, 0.104535, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 29.4685, -512.114, -15.0884, 1.25664, 0, 0, 0.587785, 0.809017, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 67.2039, -513.643, 39.1255, 5.49779, 0, 0, -0.382683, 0.92388, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 577.224, 427.996, 64.4729, 4.50295, 0, 0, -0.777145, 0.629321, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 808.304, 157.392, 53.6267, 3.76991, 0, 0, -0.951056, 0.309017, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 951.668, 335.818, 33.3591, 5.89921, 0, 0, -0.190808, 0.981627, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 979.869, -500.204, 18.4638, 3.54302, 0, 0, -0.979924, 0.19937, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 985.175, 430.589, 82.1604, 1.29154, 0, 0, 0.601814, 0.798636, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 1493.05, -277.715, 26.7762, 0.453785, 0, 0, 0.224951, 0.97437, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 1864.1, 849.441, 166.562, 2.72271, 0, 0, 0.978148, 0.207912, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1731, 1, 1872.95, 740.133, 162.041, 2.04204, 0, 0, 0.85264, 0.522499, 45, 90, 255, 1),

(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, -41.746, 246.04, 85.9696, 4.38078, 0, 0, -0.814116, 0.580703, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 124.152, -217.584, 25.9676, 4.08407, 0, 0, -0.891007, 0.453991, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 792.672, 1546.45, -20.5975, 3.68265, 0, 0, -0.96363, 0.267241, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 939.367, -364.76, 17.9968, 6.19592, 0, 0, -0.0436192, 0.999048, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 1332.36, -467.888, 43.0343, 3.85718, 0, 0, -0.936671, 0.35021, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 1616.15, 950.318, 126.069, 2.54818, 0, 0, 0.956305, 0.292372, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 1626.51, -62.433, 78.6646, 5.68977, 0, 0, -0.292372, 0.956305, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 1658.01, 785.485, 141.008, 0.994837, 0, 0, 0.477158, 0.878817, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 1914.61, 837.69, 169.293, 3.63029, 0, 0, -0.970295, 0.241925, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 2420.78, 1084.96, 339.115, 2.33874, 0, 0, 0.920505, 0.390732, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 2471.98, 1237.88, 317.664, 2.67035, 0, 0, 0.972369, 0.233448, 45, 90, 255, 1),
(@OSTONETALON:= @OSTONETALON + 1, 1732, 1, 2552.11, 1558.34, 276.763, 0.785397, 0, 0, 0.382683, 0.92388, 45, 90, 255, 1),

(@OSTONETALON:= @OSTONETALON + 1, 1733, 1, 2241.39, 1505.45, 313.59, 1.41372, 0, 0, 0.649447, 0.760406, 45, 90, 255, 1),
-- 1026001 - 1028001	Ashenvale - Mineral Nodes
-- West 1026001 - 1027000
(@OASHENVALE:= @OASHENVALE + 1, 1731, 1, 2372.44, -259.678, 103.681, 3.75246, 0, 0, -0.953716, 0.300708, 45, 90, 255, 1),

(@OASHENVALE:= @OASHENVALE + 1, 1732, 1, 3246.52, -340.965, 162.653, 2.91469, 0, 0, 0.993571, 0.113208, 45, 90, 255, 1),
(@OASHENVALE:= @OASHENVALE + 1, 1732, 1, 3278.95, 381.677, 10.9859, 5.18363, 0, 0, -0.522498, 0.852641, 45, 90, 255, 1),
(@OASHENVALE:= @OASHENVALE + 1, 1732, 1, 3305.86, 679.983, 17.2698, 1.65806, 0, 0, 0.737277, 0.675591, 45, 90, 255, 1),
(@OASHENVALE:= @OASHENVALE + 1, 1732, 1, 3496.51, 160.563, 11.7161, 5.46288, 0, 0, -0.398748, 0.91706, 45, 90, 255, 1),
(@OASHENVALE:= @OASHENVALE + 1, 1732, 1, 3633.34, 1033.18, 5.18991, 4.13643, 0, 0, -0.878817, 0.47716, 45, 90, 255, 1),
(@OASHENVALE:= @OASHENVALE + 1, 1732, 1, 3914.48, -42.4635, 12.8071, 3.56047, 0, 0, -0.978148, 0.207912, 45, 90, 255, 1),
-- East 1027001 - 1028000
(1027001, 1731, 1, 2264.69, -2416.11, 120.281, 3.59538, 0, 0, -0.97437, 0.224951, 45, 90, 255, 1),
(1027002, 1731, 1, 2970.24, -2967.93, 213.904, 4.20625, 0, 0, -0.861628, 0.507539, 45, 90, 255, 1),

(1027003, 1732, 1, 1697.17, -3224.84, 132.26, 3.15906, 0, 0, -0.999962, 0.00873464, 45, 90, 255, 1),
(1027004, 1732, 1, 1835.21, -3164.55, 93.6548, 5.49779, 0, 0, -0.382683, 0.92388, 45, 90, 255, 1),
(1027005, 1732, 1, 1858.93, -1305.12, 92.4798, 1.88495, 0, 0, 0.809016, 0.587786, 45, 90, 255, 1),
(1027006, 1732, 1, 2095.29, -2912.89, 118.858, 6.07375, 0, 0, -0.104528, 0.994522, 45, 90, 255, 1),
(1027007, 1732, 1, 2331.05, -3524.71, 53.3985, 1.16937, 0, 0, 0.551936, 0.833886, 45, 90, 255, 1),
(1027008, 1732, 1, 2535.7, -3647.75, 64.2268, 5.25344, 0, 0, -0.492423, 0.870356, 45, 90, 255, 1),

(1027009, 1733, 1, 2185.05, -2803.73, 128.734, 1.16937, 0, 0, 0.551936, 0.833886, 45, 90, 255, 1),
(1027010, 1733, 1, 2368.51, -2093.07, 134.69, 3.47321, 0, 0, -0.986285, 0.16505, 45, 90, 255, 1),
-- 1028001 - 1030001	Duskwood - Mineral Nodes
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -11200, -833.442, 77.4169, 4.45059, 0, 0, -0.793353, 0.608762, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -11185.4, -756.179, 62.4482, 4.17134, 0, 0, -0.870356, 0.492424, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -11166.4, 188.423, 36.8217, 4.32842, 0, 0, -0.829037, 0.559194, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -11151.1, -1153.09, 46.036, 0.174532, 0, 0, 0.0871553, 0.996195, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -11148, -513.184, 41.4328, 0.506145, 0, 0, 0.25038, 0.968148, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -11136.9, -124.765, 9.87703, 5.93412, 0, 0, -0.173648, 0.984808, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -10991.6, -1399.99, 71.7657, 4.99164, 0, 0, -0.601814, 0.798636, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -10820.8, -729.183, 46.4459, 3.4383, 0, 0, -0.989016, 0.147811, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -10568.9, -1506.51, 95.3776, 4.15388, 0, 0, -0.874619, 0.48481, 45, 90, 255, 1),
(@ODUSKWOOD:= @ODUSKWOOD + 1, 1732, 0, -10466.3, -120.787, 62.3164, 4.45059, 0, 0, -0.793353, 0.608762, 45, 90, 255, 1),
-- 1030001 - 1032001	Hillsbrad Foothills - Mineral Nodes
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1731, 0, -1151.24, 112.54, 8.40114, 5.88176, 0, 0, -0.199367, 0.979925, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1731, 0, -1048.94, -13.9949, 17.3759, 0.331611, 0, 0, 0.165047, 0.986286, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1731, 0, -526.157, 480.685, 86.8847, 4.20625, 0, 0, -0.861628, 0.507539, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1731, 0, -435.648, 303.569, 99.0216, 1.0472, 0, 0, 0.5, 0.866025, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1731, 0, -357.374, -456.945, 57.1996, 1.6057, 0, 0, 0.719339, 0.694659, 45, 90, 255, 1),

(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, -1158.79, -888.728, 27.8112, 4.64258, 0, 0, -0.731354, 0.681998, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, -952.32, -242.296, 59.7072, 5.42798, 0, 0, -0.414693, 0.909962, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, -927.094, -374.569, 30.9798, 5.48033, 0, 0, -0.390731, 0.920505, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, -923.453, -1098.07, 51.5852, 4.46804, 0, 0, -0.788011, 0.615662, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, -817.666, -795.958, 27.6031, 1.51844, 0, 0, 0.688354, 0.725375, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, -510.097, -1169.06, 63.0074, 3.7001, 0, 0, -0.961261, 0.27564, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, -318.377, -365.531, 68.8522, 1.27409, 0, 0, 0.594822, 0.803857, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, -206.104, -92.2563, 88.0968, 5.02655, 0, 0, -0.587785, 0.809017, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, 113.881, -836.672, 82.0067, 5.86431, 0, 0, -0.207912, 0.978148, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, 154.879, -1004.65, 77.9133, 6.23083, 0, 0, -0.0261765, 0.999657, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, 194.473, -948.311, 83.2584, 5.55015, 0, 0, -0.358368, 0.933581, 45, 90, 255, 1),
(@OHILLSBRAD:= @OHILLSBRAD + 1, 1732, 0, 222.156, -1110.72, 71.7815, 5.11382, 0, 0, -0.551936, 0.833886, 45, 90, 255, 1),
-- Hillsbrad Foothills (Azurelode Mine)
(1031994, 103711, 0, -814.69, 61.7938, 7.22033, 3.76991, 0, 0, -0.951056, 0.309017, 45, 90, 255, 1),
(1031995, 103711, 0, -802.309, 104.239, 8.29598, 0.872664, 0, 0, 0.422618, 0.906308, 45, 90, 255, 1),
(1031996, 103711, 0, -791.245, 147.029, 4.00136, 5.41052, 0, 0, -0.422618, 0.906308, 45, 90, 255, 1),
(1031997, 103711, 0, -786.916, 36.4646, 15.6267, 5.93412, 0, 0, -0.173648, 0.984808, 45, 90, 255, 1),
(1031998, 103711, 0, -772.421, 158.365, 21.1145, 5.41052, 0, 0, -0.422618, 0.906308, 45, 90, 255, 1),
(1031999, 103711, 0, -753.013, 60.5743, 13.9019, 4.18879, 0, 0, -0.866025, 0.500001, 45, 90, 255, 1),
-- 1032001 - 1034001	Wetlands - Mineral Nodes
(@OWETLANDS:= @OWETLANDS + 1, 1731, 0, -4341.22, -2511.06, 256.408, 0.471238, 0, 0, 0.233445, 0.97237, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1731, 0, -4271.32, -3020.73, 10.5367, 4.18879, 0, 0, -0.866025, 0.500001, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1731, 0, -2951.17, -1806.75, 3.60814, 4.76475, 0, 0, -0.688354, 0.725375, 45, 90, 255, 1),

(@OWETLANDS:= @OWETLANDS + 1, 1732, 0, -4247.21, -2627.36, 65.4306, 5.70723, 0, 0, -0.284015, 0.95882, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1732, 0, -4233.31, -2766.75, 46.313, 2.51327, 0, 0, 0.951056, 0.309017, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1732, 0, -4218.68, -3083.5, 9.42818, 5.20108, 0, 0, -0.515037, 0.857168, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1732, 0, -4209.78, -3200.41, 39.9346, 3.68265, 0, 0, -0.96363, 0.267241, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1732, 0, -3858.7, -2624.47, 63.9141, 4.45059, 0, 0, -0.793353, 0.608762, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1732, 0, -3766.69, -2633.3, 75.8543, 4.88692, 0, 0, -0.642787, 0.766045, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1732, 0, -3683.25, -2596.19, 63.3477, 0.471238, 0, 0, 0.233445, 0.97237, 45, 90, 255, 1),
(@OWETLANDS:= @OWETLANDS + 1, 1732, 0, -3533.25, -2533.37, 66.5472, 6.21337, 0, 0, -0.0348988, 0.999391, 45, 90, 255, 1),
-- Thelgen Rock
(1033999, 1733, 0, -3766.71, -2700.05, 38.3341, 4.24115, 0, 0, -0.85264, 0.522499, 120, 300, 255, 1),
-- 1034001 - 1036001	Thousand Needles - Mineral Nodes
(@OTNEEDLES:= @OTNEEDLES + 1, 1731, 1, -5553.85, -2075.2, -58.7253, 1.16937, 0, 0, 0.551936, 0.833886, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1731, 1, -5038.51, -2016.74, -46.3377, 3.47321, 0, 0, -0.986285, 0.16505, 45, 90, 255, 1),

(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -6333.72, -4334.12, -57.0247, 3.85718, 0, 0, -0.936671, 0.35021, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5487.45, -2996.18, -28.7473, 0.139625, 0, 0, 0.0697555, 0.997564, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5409.89, -3339.75, -36.7815, 0.698131, 0, 0, 0.34202, 0.939693, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5405.83, -1634.32, -50.4901, 0.90757, 0, 0, 0.438371, 0.898794, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5404.32, -3212.83, -24.5899, 2.07694, 0, 0, 0.861628, 0.507539, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5332.29, -1845.28, -38.8503, 3.07177, 0, 0, 0.999391, 0.0349061, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5326.55, -2659.52, -40.025, 3.28124, 0, 0, -0.997563, 0.0697661, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5210.62, -2515.15, -40.6858, 1.50098, 0, 0, 0.681998, 0.731354, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5170.76, -2468.92, -50.2186, 3.4034, 0, 0, -0.991445, 0.130528, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5107.07, -1449.59, -31.6964, 0.401425, 0, 0, 0.199367, 0.979925, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5102.58, -2206.2, -45.4434, 0.349065, 0, 0, 0.173648, 0.984808, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -5026.32, -2294.76, -49.7846, 2.84488, 0, 0, 0.989016, 0.147811, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1732, 1, -4948.66, -2009.09, -42.2582, 4.59022, 0, 0, -0.748956, 0.66262, 45, 90, 255, 1),

(@OTNEEDLES:= @OTNEEDLES + 1, 1733, 1, -5696.34, -3242.83, -35.4584, 0.85521, 0, 0, 0.414693, 0.909962, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1733, 1, -5127.78, -2299.17, -52.9949, 5.75959, 0, 0, -0.258819, 0.965926, 45, 90, 255, 1),
(@OTNEEDLES:= @OTNEEDLES + 1, 1733, 1, -4823.91, -1644.61, -42.987, 4.88692, 0, 0, -0.642787, 0.766045, 45, 90, 255, 1),
-- 1036001 - 1038001	Alterac Mountains - Mineral Nodes
(@OALTERAC:= @OALTERAC + 1, 1731, 0, -291.258, 293.587, 118.587, 0.767944, 0, 0, 0.374606, 0.927184, 45, 90, 255, 1),

(@OALTERAC:= @OALTERAC + 1, 1732, 0, -185.258, 375.062, 116.572, 1.02974, 0, 0, 0.492423, 0.870356, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, -161.117, 398.667, 105.474, 4.08407, 0, 0, -0.891007, 0.453991, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, -130.354, -149.858, 120.737, 1.97222, 0, 0, 0.833885, 0.551938, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, -41.0918, 415.415, 62.6462, 4.27606, 0, 0, -0.843391, 0.5373, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, -19.4989, -33.674, 106.887, 5.3058, 0, 0, -0.469471, 0.882948, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, 12.0793, -148.168, 130.97, 3.3685, 0, 0, -0.993571, 0.113208, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, 75.6466, -78.375, 114.581, 2.02458, 0, 0, 0.848047, 0.529921, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, 225.675, -72.2974, 110.061, 1.95477, 0, 0, 0.829038, 0.559193, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, 244.997, -10.5061, 83.3397, 0.209439, 0, 0, 0.104528, 0.994522, 45, 90, 255, 1),
(@OALTERAC:= @OALTERAC + 1, 1732, 0, 642.53, 266.969, 22.9494, 3.89209, 0, 0, -0.930417, 0.366502, 45, 90, 255, 1),

(@OALTERAC:= @OALTERAC + 1, 1733, 0, -16.5498, 463.366, 53.6286, 5.11382, 0, 0, -0.551936, 0.833886, 45, 90, 255, 1),
-- 1038001 - 1040001	Arathi Highlands - Mineral Nodes
(@OARATHI:= @OARATHI + 1, 1732, 0, -1568.49, -2074.03, 37.9544, 2.26892, 0, 0, 0.906307, 0.422619, 45, 90, 255, 1),
(@OARATHI:= @OARATHI + 1, 1732, 0, -1539.82, -2277.77, 34.7815, 4.59022, 0, 0, -0.748956, 0.66262, 45, 90, 255, 1),
(@OARATHI:= @OARATHI + 1, 1732, 0, -1391.16, -2574.25, 84.4007, 5.44543, 0, 0, -0.406736, 0.913545, 45, 90, 255, 1),
(@OARATHI:= @OARATHI + 1, 1732, 0, -1114.41, -2361.25, 51.8908, 6.14356, 0, 0, -0.0697555, 0.997564, 45, 90, 255, 1),

(@OARATHI:= @OARATHI + 1, 1733, 0, -2119.26, -1633.36, -26.2676, 4.2237, 0, 0, -0.857167, 0.515038, 45, 90, 255, 1),
(@OARATHI:= @OARATHI + 1, 1733, 0, -1966.82, -2875.04, 78.3628, 2.89724, 0, 0, 0.992546, 0.12187, 45, 90, 255, 1),
(@OARATHI:= @OARATHI + 1, 1733, 0, -1892.92, -2863.2, 69.9444, 1.48353, 0, 0, 0.67559, 0.737278, 45, 90, 255, 1),
(@OARATHI:= @OARATHI + 1, 1733, 0, -915.477, -1973.57, 53.7444, 1.71042, 0, 0, 0.754709, 0.656059, 45, 90, 255, 1),
(@OARATHI:= @OARATHI + 1, 1733, 0, -809.747, -2334.22, 71.9745, 4.71239, 0, 0, -0.707107, 0.707107, 45, 90, 255, 1),
(@OARATHI:= @OARATHI + 1, 1733, 0, -681.161, -2014.56, 57.8267, 2.32129, 0, 0, 0.91706, 0.39875, 45, 90, 255, 1),
-- 1040001 - 1042001	Desolace - Mineral Nodes
(@ODESOLACE:= @ODESOLACE + 1, 1731, 1, -151.837, 1466.23, 102.198, 5.55015, 0, 0, -0.358368, 0.933581, 45, 90, 255, 1),

(@ODESOLACE:= @ODESOLACE + 1, 1732, 1, -1737.01, 2171.06, 89.2184, 6.07375, 0, 0, -0.104528, 0.994522, 45, 90, 255, 1),
(@ODESOLACE:= @ODESOLACE + 1, 1732, 1, -1623.51, 1472.56, 65.1219, 0.698131, 0, 0, 0.34202, 0.939693, 45, 90, 255, 1),
(@ODESOLACE:= @ODESOLACE + 1, 1732, 1, -688.839, 2700.32, 37.8741, 3.7001, 0, 0, -0.961261, 0.27564, 45, 90, 255, 1),
(@ODESOLACE:= @ODESOLACE + 1, 1732, 1, -649.171, 2845.33, -11.483, 5.95157, 0, 0, -0.165047, 0.986286, 45, 90, 255, 1),
(@ODESOLACE:= @ODESOLACE + 1, 1732, 1, -508.031, 859.585, 94.608, 0, 0, 0, 0, 1, 45, 90, 255, 1),
(@ODESOLACE:= @ODESOLACE + 1, 1732, 1, -222.367, 843.651, 91.3909, 3.6652, 0, 0, -0.965925, 0.258821, 45, 90, 255, 1),
(@ODESOLACE:= @ODESOLACE + 1, 1732, 1, -169.338, 1786.57, 155.518, 4.72984, 0, 0, -0.700909, 0.713251, 45, 90, 255, 1),

(@ODESOLACE:= @ODESOLACE + 1, 1733, 1, -1256.88, 886.57, 113.211, 4.06662, 0, 0, -0.894934, 0.446199, 45, 90, 255, 1),
-- 1042001 - 1044001	Stranglethorn Vale - Mineral Nodes
(@OSTRANGLETHORN:= @OSTRANGLETHORN + 1, 1732, 0, -11717.2, -139.426, 19.3768, 0.122173, 0, 0, 0.0610485, 0.998135, 45, 90, 255, 1),
(@OSTRANGLETHORN:= @OSTRANGLETHORN + 1, 1732, 0, -11437.8, 25.9817, 35.6237, 1.88495, 0, 0, 0.809016, 0.587786, 45, 90, 255, 1),
-- 1044001 - 1046001	Dustwallow Marsh - Mineral Nodes
(@ODUSTWALLOW:= @ODUSTWALLOW +1, 1732, 1, -3770.91, -3715.19, 48.8535, 3.12412, 0, 0, 0.999962, 0.00873464, 45, 90, 255, 1),
(@ODUSTWALLOW:= @ODUSTWALLOW +1, 1732, 1, -2512.52, -2842.59, 63.2461, 2.61799, 0, 0, 0.965925, 0.258821, 45, 90, 255, 1),
-- 1046001 - 1048001	Badlands - Mineral Nodes
(@OBADLANDS:= @OBADLANDS + 1, 1733, 0, -6484.9, -3383.26, 261.872, 1.44862, 0, 0, 0.66262, 0.748956, 45, 90, 255, 1),
-- 1048001 - 1050001	Swamp of Sorrows - Mineral Nodes
-- 1050001 - 1052001	Feralas - Mineral Nodes
(@OFERALAS:= @OFERALAS + 1, 1733, 1, -4493.3, 761.976, 69.7072, 5.42798, 0, 0, -0.414693, 0.909962, 45, 90, 255, 1);
-- 1052001 - 1054001	The Hinterlands - Mineral Nodes
-- 1054001 - 1056001	Tanaris - Mineral Nodes
-- 1056001 - 1058001	Searing Gorge - Mineral Nodes
-- 1058001 - 1060001	Azshara - Mineral Nodes
-- 1060001 - 1062001	Blasted Lands - Mineral Nodes
-- 1062001 - 1064001	Un'goro Crater - Mineral Nodes
-- 1064001 - 1066001	Felwood - Mineral Nodes
-- 1066001 - 1068001	Burning Steppes - Mineral Nodes
-- 1068001 - 1070001	Western Plaguelands - Mineral Nodes
-- 1070001 - 1072001	Deadwind Pass - Mineral Nodes
-- 1072001 - 1074001	Eastern Plaguelands - Mineral Nodes
-- 1074001 - 1076001	Winterspring - Mineral Nodes
-- 1076001 - 1078001	Moonglade - Mineral Nodes
-- 1078001 - 1080001	Silithus - Mineral Nodes

-- 1080001 - 1090000	free, tbc nodes go into 5300001 range, wotlk nodes go into 5710001 range

-- 1090001				map 109 range
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 1000000 AND 1090000;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 101452 AND 101454; -- already uses other range

UPDATE `pool_template` SET `description` = 'Master Mineral Pool - Stonetalon Mountains' WHERE `entry` = 2050;

-- UPDATE `gameobject` SET `id` = 0 WHERE `guid` BETWEEN 1012001 AND 1090000; -- level zones up to 1012001 only have copper, no spawn_entry needed

SET @ODURNMOROGH	:= 1000000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2008 /*Master Mineral Pool - Dun Morogh*/, 0, 'Dun Morogh - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1000001 AND 1002000;
SET @ODUROTAR		:= 1002000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2041 /*Master Mineral Pool - Durotar*/, 0, 'Durotar - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1002001 AND 1004000;
SET @OELWYNN		:= 1004000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2011 /*Master Mineral Pool - Elwynn Forest*/, 0, 'Elwynn Forest - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1004001 AND 1006000;
SET @OMULGORE		:= 1006000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2047 /*Master Mineral Pool - Mulgore*/, 0, 'Mulgore - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1006001 AND 1008000;
SET @OTIRISFAL		:= 1010000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2027 /*Master Mineral Pool - Tirisfal Glades*/, 0, 'Tirisfal Glades - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1010001 AND 1012000;

SET @ODARKSHORE		:= 1012000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2039 /*Master Mineral Pool - Darkshore*/, 0, 'Darkshore - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1012001 AND 1014000;

SET @OLOCHMODAN		:= 1014000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2018 /*Master Mineral Pool - Loch Modan*/, 0, 'Loch Modan - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1014001 AND 1016000;

SET @OSILVERPINE	:= 1016000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2023 /*Master Mineral Pool - Silverpine Forest*/, 0, 'Silverpine Forest - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1016001 AND 1018000;

SET @OWESTFALL		:= 1018000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2030 /*Master Mineral Pool - Westfall*/, 0, 'Westfall - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1018001 AND 1020000;

SET @OBARRENS		:= 1020000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2052 /*Master Mineral Pool - The Barrens (Main Section)*/, 0, 'The Barrens - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1020001 AND 1022000;

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2053 /*Master Mineral Pool - The Barrens (Bael Modan)*/, 0, 'The Barrens (Bael Modan) - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 101452 AND 101454;

SET @OREDRIDGE		:= 1022000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2019 /*Master Mineral Pool - Redridge Mountains*/, 0, 'Redridge Mountains - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1022001 AND 1024000;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 1023980 AND 1023999;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 1999 /*Master Mineral Pool - Redridge Mountains (Render's Rock)*/, 0, 'Redridge Mountains (Render''s Rock) - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1023980 AND 1023989; -- also normal gos, but already has unique pool_template
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2020 /*Master Mineral Pool - Redridge Mountains (Rethban Caverns)*/, 0, 'Redridge Mountains (Rethban Caverns) - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1023991 AND 1023999;

SET @OSTONETALON	:= 1024000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2050 /*Master Mineral Pool - Stonetalon Mountains*/, 0, 'Stonetalon Mountains - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1024001 AND 1026000;

SET @OASHENVALE		:= 1026000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2033 /*Master Mineral Pool - Ashenvale (West Section)*/, 0, 'Ashenvale (West Section) - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1026001 AND 1027000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2034 /*Master Mineral Pool - Ashenvale (East Section)*/, 0, 'Ashenvale (East Section) - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1027001 AND 1028000;

SET @ODUSKWOOD		:= 1028000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2009 /*Master Mineral Pool - Duskwood*/, 0, 'Duskwood - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1028001 AND 1030000;

SET @OHILLSBRAD		:= 1030000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2014 /*Master Mineral Pool - Hillsbrad Foothills (Main Section)*/, 0, 'Hillsbrad Foothills - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1030001 AND 1032000;
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2015 /*Master Mineral Pool - Hillsbrad Foothills (Higher Level Sections)*/, 0, 'Hillsbrad Foothills (Higher Level Sections) - Mineral Node' FROM `gameobject` WHERE `guid` IN ();
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 1031994 AND 1031999;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2016 /*Master Mineral Pool - Hillsbrad Foothills (Azurelode Mine)*/, 0, 'Hillsbrad Foothills (Azurelode Mine) - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1031994 AND 1031999;

SET @OWETLANDS		:= 1032000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2031 /*Master Mineral Pool - Wetlands (Main Section)*/, 0, 'Wetlands - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1032001 AND 1033998;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2032 /*Master Mineral Pool - Wetlands (Thelgen Rock)*/, 0, 'Wetlands (Thelgen Rock) - Mineral Node' FROM `gameobject` WHERE `guid` IN (1033999);

SET @OTNEEDLES		:= 1034000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2055 /*Master Mineral Pool - Thousand Needles*/, 0, 'Thousand Needles - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1034001 AND 1036000;
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2056 /*Master Mineral Pool - Thousand Needles (Ooze Covered Mineral GOs)*/, 0, 'Thousand Needles (Ooze Covered Mineral GOs) - Mineral Node' FROM `gameobject` WHERE `guid` IN ();

SET @OALTERAC		:= 1036000;
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2000 /*Master Mineral Pool - Alterac Mountains (Inner Section)*/, 0, 'Alterac Mountains (Inner Section) - Mineral Node' FROM `gameobject` WHERE `guid` IN ();
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2001 /*Master Mineral Pool - Alterac Mountains (Outer Section)*/, 0, 'Alterac Mountains (Outer Section) - Mineral Node' FROM `gameobject` WHERE `guid` = 1036001;

SET @OARATHI		:= 1038000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2002 /*Master Mineral Pool - Arathi Highlands (Main Section)*/, 0, 'Arathi Highlands (Main Section) - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1038001 AND 1040000;
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2003 /*Master Mineral Pool - Arathi Highlands (Drywhisker Gorge)*/, 0, 'Arathi Highlands (Drywhisker Gorge) - Mineral Node' FROM `gameobject` WHERE `guid` IN ();

SET @ODESOLACE		:= 1040000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2040 /*Master Mineral Pool - Desolace*/, 0, 'Desolace - Mineral Node' FROM `gameobject` WHERE `guid` = 1040001;

SET @OSTRANGLETHORN	:= 1042000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2024 /*Master Mineral Pool - Stranglethorn Vale*/, 0, 'Stranglethorn Vale - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1042001 AND 1044000;

SET @ODUSTWALLOW	:= 1044000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2042 /*Master Mineral Pool - Dustwallow Marsh*/, 0, 'Dustwallow Marsh - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1044001 AND 1046000;

SET @OBADLANDS		:= 1046000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2004 /*Master Mineral Pool - Badlands*/, 0, 'Badlands - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1046001 AND 1048000;

SET @OFERALAS		:= 1050000;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2045 /*Master Mineral Pool - Feralas*/, 0, 'Feralas - Mineral Node' FROM `gameobject` WHERE `guid` BETWEEN 1050001 AND 1052000;
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) SELECT `guid` as `guid`, 2046 /*Master Mineral Pool - Feralas (Ooze Covered Mineral GOs)*/, 0, 'Feralas (Ooze Covered Mineral GOs) - Mineral Node' FROM `gameobject` WHERE `guid` IN ();

-- tbc-db
-- 2005	Master Mineral Pool - Blasted Lands
-- 2006	Master Mineral Pool - Blasted Lands (Garrison Armory) - Special Mineral GOs ONLY
-- 2007	Master Mineral Pool - Burning Steppes	
-- 2010	Master Mineral Pool - Eastern Plaguelands
-- 2021	Master Mineral Pool - Searing Gorge (West Section)
-- 2022	Master Mineral Pool - Searing Gorge (East Section)
-- 2025	Master Mineral Pool - Swamp of Sorrows
-- 2026	Master Mineral Pool - The Hinterlands
-- 2028	Master Mineral Pool - Western Plaguelands (South-West Section)
-- 2029	Master Mineral Pool - Western Plaguelands (East and North Sections)
-- 2035	Master Mineral Pool - Azshara
-- 2043	Master Mineral Pool - Felwood
-- 2048	Master Mineral Pool - Silithus
-- 2049	Master Mineral Pool - Silithus (Ooze Covered Mineral GOs)
-- 2051	Master Mineral Pool - Tanaris
-- 2058	Master Mineral Pool - Un'Goro Crater
-- 2059	Master Mineral Pool - Un'Goro Crater (Ooze Covered Mineral GOs)
-- 2060	Master Mineral Pool - Winterspring (Main Section)
-- 2061	Master Mineral Pool - Winterspring (West Section)

-- Westfall (Jangolode Mine)
DELETE FROM `pool_template` WHERE `entry` = 1998;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1998, 4, 'Master Mineral Pool - Westfall (Jangolode Mine)'); -- max_limit guessed
UPDATE `pool_pool` SET `mother_pool` = 1998, `description` = 'Westfall (Jangolode Mine) - Mineral Node' WHERE `pool_id` IN (6714,6723,6860,6852,6853,6796,6856,6811,6810,6711,6749,6814,6815,6813,6808,6727,6812,6809,6817,6823,6851,6822,6807,6804,6820,6805,6821,6710,6799,6839,6834,6802,6816,6724,6833,6826,6836,6843,6835,6831,6845,3580,6828,6847,6837,6832,6780,6829,6830,6827,6818,6819);
UPDATE `pool_gameobject` SET `pool_entry` = 1998 WHERE `guid` = 1018008;

-- Elwynn Forest (Jasperlode Mine)
DELETE FROM `pool_template` WHERE `entry` = 1997;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1997, 4, 'Master Mineral Pool - Elwynn Forest (Jasperlode Mine)'); -- max_limit guessed
UPDATE `pool_gameobject` SET `pool_entry` = 1997 WHERE `guid` IN (1004005,74819,74861,74822,1004004,74885,74820,74879,1004006,74875,74887,75314,74886,74876,105256,74821,74830);

-- Elwynn Forest (Fargodeep Mine)
DELETE FROM `pool_template` WHERE `entry` = 1996;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1996, 5, 'Master Mineral Pool - Elwynn Forest (Fargodeep Mine)'); -- max_limit guessed
UPDATE `pool_gameobject` SET `pool_entry` = 1996 WHERE `guid` IN (74839,74862,74825,1004001,74846,74815,74827,74852,74812,74818,74814,74811,74854,74808,74824,74810,74853,74817,74813,74900,74850);

-- Durotar (Skull Rock)
DELETE FROM `pool_template` WHERE `entry` = 1995;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1995, 5, 'Master Mineral Pool - Durotar (Skull Rock)'); -- max_limit guessed
UPDATE `pool_gameobject` SET `pool_entry` = 1995 WHERE `guid` IN (103916,103165,103132,103917,1002012,103915,1002013,103142,1002014,1002011,1002010,103914,103162,1002009,103194,103174);

-- =========================================
-- ToDo: Create Single Pools for these Areas
-- The Greizzled Den
-- Gol'Bolar Quarry
-- Palemane Rock
-- The Venture Co. Mine
-- Remtravel's Excavation
-- Cliffspring Falls
-- Silver Stream Mine
-- Deep Elem Mine
-- The Skittering Dark
-- The Deadmines (Westfall)
-- Gold Coast Quarry
-- =========================================

-- Shorten ".gob tar" string
UPDATE `mangos_string` SET `content_default` = 'Selected object: |cffffffff|Hgameobject:%d|h[%s]|h|r GUID: %u ID: %u
XYZ Map: %f %f %f %u Orientation: %f' WHERE `entry` = 524;

-- Correct Size for Felwood Truesilver Deposit, Gold Vein 181108,181109
UPDATE `gameobject_template` SET `size` = 0.5 WHERE `entry` IN (181108,181109);

-- Readjust some Master Mineral Pool max_limit for heavily adjusted pools (others will be adjusted as we go)
UPDATE `pool_template` SET `max_limit` = 40 /* 80/2 */ WHERE `entry` = 2011; -- 55	Master Mineral Pool - Elwynn Forest (Mine Pooling)
UPDATE `pool_template` SET `max_limit` = 30 /* (7+112) / 4 */ WHERE `entry` = 2030; -- 43	Master Mineral Pool - Westfall (Mine Pooling)

