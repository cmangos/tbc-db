-- Add missing 176589 from classic-db - classic-db/wotlk-db misses some from tbc-db
DELETE FROM `gameobject` WHERE `guid` IN (63727,87316,86504);
-- Add new ones from sniff
DELETE FROM `gameobject` WHERE `guid` IN (138610,138611,138613);
-- Delete Duplicates
DELETE FROM `gameobject` WHERE `guid` = 131397; -- duplicate 131391 Burning Steppes
DELETE FROM `gameobject` WHERE `guid` = 132230; -- duplicate 132222 Eastern Plaguelands
DELETE FROM `gameobject` WHERE `guid` = 131395; -- duplicate 131382 Burning Steppes
DELETE FROM `gameobject` WHERE `guid` = 131396; -- duplicate 131384 Burning Steppes

UPDATE `gameobject` SET `position_x` = -7620.868, `position_y` = -709.0798, `position_z` = 182.7417, `orientation` = 1.466076, `rotation2` = 0.6691303, `rotation3` = 0.743145 WHERE `guid` = 131391;
UPDATE `gameobject` SET `position_x` = 1663.371, `position_y` = -5585.613, `position_z` = 102.1935, `orientation` = -0.08726675 WHERE `guid` = 132222;
UPDATE `gameobject` SET `position_x` = -7940.996, `position_y` = -884.0559, `position_z` = 130.4031, `orientation` = -2.408554 WHERE `guid` = 131382;
UPDATE `gameobject` SET `position_x` = 6624.313, `position_y` = -4034.23, `position_z` = 658.5015, `orientation` = -0.06981307, `rotation2` = -0.03489876, `rotation3` = 0.9993908 WHERE `guid` = 141259;
UPDATE `gameobject` SET `position_x` = -6501.717, `position_y` = 1818.611, `position_z` = 3.574478, `orientation` = -0.7853982 WHERE `guid` = 139037;
UPDATE `gameobject` SET `position_x` = 2052.077, `position_y` = -4498.232, `position_z` = 74.77696, `orientation` = -1.762782 WHERE `guid` = 132229;
UPDATE `gameobject` SET `position_x` = 3151.597, `position_y` = -3727.875, `position_z` = -61.28984, `orientation` = 0.5410506 WHERE `guid` = 132224;
UPDATE `gameobject` SET `position_x` = -7776.301, `position_y` = -2699.337, `position_z` = 173.7873, `orientation` = -1.762782 WHERE `guid` = 131384;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- (20275, 176589, 0, -7620.87, -709.08, 182.742, 1.46608, 0, 0, 0.669132, 0.743144, 2700, 4500, 100, 1), -- duplicate 131391 - reuse for sniff
(63727, 176589, 0, 1601.522, -3254.442, 86.86393, -1.762782, 0, 0, -0.7716246, 0.6360782, 2700, 4500, 100, 1), -- Eastern Plaguelands
-- (86503, 176589, 0, 3151.6, -3727.88, -61.2898, 0.541051, 0, 0, 0.267238, 0.963631, 2700, 4500, 100, 1), -- duplicate 132224 with bad blizzard position_z
(86504, 176589, 1, 6571.79, -5104.69, 769.397, 2.86233, 0, 0, 0.990267, 0.139178, 2700, 4500, 100, 1), -- Winterspring
(87316, 176589, 0, 2495.06, -3827.97, 179.112, 3.07177, 0, 0, 0.999391, 0.0349043, 2700, 4500, 100, 1), -- Eastern Plaguelands
-- Reuse Duplicates for missing Spawns
(131397, 176589, 1, -7925.228, 1849.406, 5.347952, 0.2268928, 0, 0, 0, 0, 2700, 4500, 100, 1), -- Silithus
(132230, 176589, 1, 5487.68, -4936.528, 856.0865, -1.832596, 0, 0, 0, 0, 2700, 4500, 100, 1), -- Winterspring
(131395, 176589, 0, 2917.39, -3692.225, 114.8027, 0.01745246, 0, 0, 0.999391, 0.0349043, 2700, 4500, 100, 1), -- Eastern Plaguelands
(131396, 176589, 1, 5691.301, -4511.113, 764.5207, -2.91469, 0, 0, 0, 0, 2700, 4500, 100, 1), -- Winterspring

(138610, 176589, 1, -3774.214, 1081.148, 131.9418, 2.967041, 0, 0, 0.9961939, 0.08716504, 3600, 7200, 100, 1), -- Dire Maul
(138611, 176589, 1, -3715.259, 1084.904, 132.0633, -0.1919852, 0, 0, -0.09584522, 0.9953963, 3600, 7200, 100, 1), -- Dire Maul
(138613, 176589, 0, 2511.816, -5151.868, 74.3906, -2.44346, 0, 0, -0.9396925, 0.3420205, 2700, 4500, 100, 1); -- Eastern Plaguelands

UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 4500, `animprogress` = 100 WHERE `id` = 176589 AND `guid` NOT IN (138610,138611);

DELETE FROM `pool_template` WHERE `entry` IN (942,943,944,945,946);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(942, 1, 'Master Black Lotus (176589) Pool - Burning Steppes'),
(943, 1, 'Master Black Lotus (176589) Pool - Dire Maul - The Maul'),
(944, 1, 'Master Black Lotus (176589) Pool - Winterspring'),
(945, 1, 'Master Black Lotus (176589) Pool - Silithus'),
(946, 1, 'Master Black Lotus (176589) Pool - Eastern Plaguelands');

DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 176589);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(131382, 942, 0, 'Burning Steppes - Black Lotus'),
(131383, 942, 0, 'Burning Steppes - Black Lotus'),
(131384, 942, 0, 'Burning Steppes - Black Lotus'),
(131385, 942, 0, 'Burning Steppes - Black Lotus'),
(131386, 942, 0, 'Burning Steppes - Black Lotus'),
(131387, 942, 0, 'Burning Steppes - Black Lotus'),
(131388, 942, 0, 'Burning Steppes - Black Lotus'),
(131389, 942, 0, 'Burning Steppes - Black Lotus'),
(131390, 942, 0, 'Burning Steppes - Black Lotus'),
(131391, 942, 0, 'Burning Steppes - Black Lotus'),
(131392, 942, 0, 'Burning Steppes - Black Lotus'),
(131393, 942, 0, 'Burning Steppes - Black Lotus'),
(131394, 942, 0, 'Burning Steppes - Black Lotus'),
(131398, 942, 0, 'Burning Steppes - Black Lotus'),
(131399, 942, 0, 'Burning Steppes - Black Lotus'),
(131400, 942, 0, 'Burning Steppes - Black Lotus'),
(131401, 942, 0, 'Burning Steppes - Black Lotus'),
(131402, 942, 0, 'Burning Steppes - Black Lotus'),
(131403, 942, 0, 'Burning Steppes - Black Lotus'),

(138610, 943, 0, 'Dire Maul - The Maul - Black Lotus'),
(138611, 943, 0, 'Dire Maul - The Maul - Black Lotus'),

(86504, 944, 0, 'Winterspring - Black Lotus'),
(131396, 944, 0, 'Winterspring - Black Lotus'),
(132230, 944, 0, 'Winterspring - Black Lotus'),
(141246, 944, 0, 'Winterspring - Black Lotus'),
(141247, 944, 0, 'Winterspring - Black Lotus'),
(141248, 944, 0, 'Winterspring - Black Lotus'),
(141249, 944, 0, 'Winterspring - Black Lotus'),
(141250, 944, 0, 'Winterspring - Black Lotus'),
(141251, 944, 0, 'Winterspring - Black Lotus'),
(141252, 944, 0, 'Winterspring - Black Lotus'),
(141253, 944, 0, 'Winterspring - Black Lotus'),
(141254, 944, 0, 'Winterspring - Black Lotus'),
(141255, 944, 0, 'Winterspring - Black Lotus'),
(141256, 944, 0, 'Winterspring - Black Lotus'),
(141257, 944, 0, 'Winterspring - Black Lotus'),
(141258, 944, 0, 'Winterspring - Black Lotus'),
(141259, 944, 0, 'Winterspring - Black Lotus'),
(141260, 944, 0, 'Winterspring - Black Lotus'),
(141261, 944, 0, 'Winterspring - Black Lotus'),

(131397, 945, 0, 'Silithus - Black Lotus'),
(139032, 945, 0, 'Silithus - Black Lotus'),
(139033, 945, 0, 'Silithus - Black Lotus'),
(139034, 945, 0, 'Silithus - Black Lotus'),
(139035, 945, 0, 'Silithus - Black Lotus'),
(139036, 945, 0, 'Silithus - Black Lotus'),
(139037, 945, 0, 'Silithus - Black Lotus'),

(63727, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(87316, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(131395, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132220, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132221, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132222, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132223, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132224, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132225, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132226, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132227, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132228, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132229, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(132231, 946, 0, 'Eastern Plaguelands - Black Lotus'),
(138613, 946, 0, 'Eastern Plaguelands - Black Lotus');

