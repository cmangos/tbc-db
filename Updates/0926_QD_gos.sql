-- Confirm more gos for https://github.com/cmangos/tbc-db/commit/590d16ab22c3368f299f5253b727d1a2303f04cb
-- Remove remaining go duplicates from Quel'danas
DELETE FROM `gameobject` WHERE `guid` IN (
26381, -- 5300027
75570, -- 5300068
75571, -- 5300069
75572 -- 5300070
);

-- Update 0898_IsleofQueldanas with more accurate data
UPDATE `gameobject` SET `position_x` = 12792.77, `position_y` = -6965.978, `position_z` = 15.40067, `orientation` = 2.251473, `rotation2` = 0.902585, `rotation3` = 0.4305117 WHERE `guid` = 5300006 AND `id` = 187113;
UPDATE `gameobject` SET `position_x` = 12848.29, `position_y` = -7011.708, `position_z` = 18.59269, `orientation` = 4.834563, `rotation2` = -0.6626196, `rotation3` = 0.7489561 WHERE `guid` = 5300007 AND `id` = 187114;
UPDATE `gameobject` SET `position_x` = 12806.65, `position_y` = -6911.556, `position_z` = 41.11527, `orientation` = 2.216565, `rotation2` = 0.8949337, `rotation3` = 0.4461992 WHERE `guid` = 5300013 AND `id` = 187335;
UPDATE `gameobject` SET `position_x` = 12939.99, `position_y` = -6973.434, `position_z` = 18.68799, `orientation` = 0.8901166, `rotation2` = 0.4305105, `rotation3` = 0.9025856 WHERE `guid` = 5300014 AND `id` = 187345;
UPDATE `gameobject` SET `position_x` = 12780.55, `position_y` = -6887.463, `position_z` = 19.20861, `orientation` = 1.239183, `rotation2` = 0.5807028, `rotation3` = 0.8141156 WHERE `guid` = 5300024 AND `id` = 188081;
UPDATE `gameobject` SET `position_x` = 12895.3, `position_y` = -7300.82, `position_z` = 65.6166, `orientation` = 6.248281, `rotation2` = -0.01745129, `rotation3` = 0.9998477 WHERE `guid` = 5300025 AND `id` = 188171;
UPDATE `gameobject` SET `position_x` = 12882.49, `position_y` = -7341.705, `position_z` = 65.53025, `orientation` = 1.090953, `rotation2` = 0.5188255, `rotation3` = 0.8548802 WHERE `guid` = 5300027 AND `id` = 188178; -- Retail: 214501
UPDATE `gameobject` SET `position_x` = 12783.99, `position_y` = -6919.932, `position_z` = 13.53104, `orientation` = 3.211419, `rotation2` = -0.9993906, `rotation3` = 0.03490613 WHERE `guid` = 5300038 AND `id` = 187078;
UPDATE `gameobject` SET `position_x` = 12822.2, `position_y` = -6967.069, `position_z` = 10.21349, `orientation` = 1.308995, `rotation2` = 0.6087608, `rotation3` = 0.7933538 WHERE `guid` = 5300039 AND `id` = 187078;
UPDATE `gameobject` SET `position_x` = 12784.02, `position_y` = -6919.919, `position_z` = 13.53162, `orientation` = 5.358162, `rotation2` = -0.4461975, `rotation3` = 0.8949345 WHERE `guid` = 5300050 AND `id` = 187080;
UPDATE `gameobject` SET `position_x` = 12822.23, `position_y` = -6967.072, `position_z` = 10.21053, `orientation` = 3.752462, `rotation2` = -0.9537163, `rotation3` = 0.3007079 WHERE `guid` = 5300051 AND `id` = 187080;
UPDATE `gameobject` SET `position_x` = 12857.28, `position_y` = -6989.207, `position_z` = 3.419124, `orientation` = 0.8203033, `rotation2` = 0.3987484, `rotation3` = 0.9170604 WHERE `guid` = 5300056 AND `id` = 187357;
UPDATE `gameobject` SET `position_x` = 12781.59, `position_y` = -6977.775, `position_z` = 15.68273, `orientation` = 2.216565, `rotation2` = 0.8949337, `rotation3` = 0.4461992 WHERE `guid` = 5300059 AND `id` = 187357;
UPDATE `gameobject` SET `position_x` = 12794.9, `position_y` = -6965.875, `position_z` = 15.95476, `orientation` = 2.268925, `rotation2` = 0.9063072, `rotation3` = 0.4226195 WHERE `guid` = 5300067 AND `id` = 187356;
UPDATE `gameobject` SET `position_x` = 12695.68, `position_y` = -7066.044, `position_z` = 19.29465, `orientation` = 2.635444, `rotation2` = 0.9681473, `rotation3` = 0.2503814 WHERE `guid` = 5300127 AND `id` = 181281;
UPDATE `gameobject` SET `position_x` = 12893.02, `position_y` = -7228.854, `position_z` = 7.591717, `orientation` = 3.106652, `rotation2` = 0.9998474, `rotation3` = 0.01746928 WHERE `guid` = 5300269 AND `id` = 187333;
UPDATE `gameobject` SET `position_x` = 12879.79, `position_y` = -7225.833, `position_z` = 8.256817, `orientation` = 2.82743, `rotation2` = 0.9876881, `rotation3` = 0.1564362 WHERE `guid` = 5300270 AND `id` = 187333;
UPDATE `gameobject` SET `position_x` = 12866.57, `position_y` = -7307.028, `position_z` = 67.27674, `orientation` = 1.06465, `rotation2` = 0.5075378, `rotation3` = 0.8616294 WHERE `guid` = 5300271 AND `id` = 187333;

-- Add additional missing gos
DELETE FROM `gameobject` WHERE `guid` BETWEEN 5300288 AND 5300290;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5300288, 187363, 530, 1, 12792.67, -6977.705, 36.24656, 5.445428, 0, 0, -0.4067364, 0.9135455, 0, 0, 100, 1), -- Shattered Sun Banner (Hanging scale x3.00)
(5300289, 187363, 530, 1, 12851.1, -6984.563, 23.49058, 0.9075702, 0, 0, 0.4383707, 0.8987942, 0, 0, 100, 1), -- Shattered Sun Banner (Hanging scale x3.00)
(5300290, 187115, 530, 1, 12848.53, -7011.696, 19.52325, 0.1745321, 0, 0, 0.08715534, 0.9961947, 0, 0, 100, 1); -- Alchemy Lab

