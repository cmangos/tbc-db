-- Add more Blade''s Edge Mountains Chests via Video Evidence
-- Video verfied as some spawns match sniff positions
-- https://www.youtube.com/watch?v=5dXO-Lp5_qk
-- pooling should be more complex though
DELETE FROM `gameobject` WHERE `guid` IN (190644,190645,190646,190647,190648,190649,190650,190651);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(190644, 181802, 530, 1, 1687.83, 4947.29, 170.35, 5.32, 7200, 7200, 100, 1),
(190645, 181802, 530, 1, 1654.40, 5083, 174.02, 4.94, 7200, 7200, 100, 1),
(190646, 181802, 530, 1, 2437.33, 5740.92, 272.20, 3.33, 7200, 7200, 100, 1),
(190647, 181802, 530, 1, 2250.71, 6325.58, 2.15, 2.09, 7200, 7200, 100, 1),
(190648, 181802, 530, 1, 3604.21, 7248.53, 137.03, 0.20, 7200, 7200, 100, 1),
(190649, 181802, 530, 1, 3418.78, 6703.97, 204.37, 0.33, 7200, 7200, 100, 1),
(190650, 181802, 530, 1, 3534.93, 6641.96, 175.87, 4.13, 7200, 7200, 100, 1),
(190651, 181802, 530, 1, 3784.55, 6743.84, 170.42, 1.31, 7200, 7200, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (190644,190645,190646,190647,190648,190649,190650,190651);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `Chance`, `description`) VALUES
(190644, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
(190645, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
(190646, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
(190647, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
(190648, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
(190649, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
(190650, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
(190651, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)');

-- Increase respective spawn limit
UPDATE `pool_template` SET `max_limit` = 8 WHERE `entry` = 39948; -- Blade's Edge Mountains (TBC - 65-68) - Master Chest Pool

