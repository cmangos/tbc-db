-- Reinsert Tool Kit 186272, Damaged Diving Gear 186273 & add pooling from wotlk-db (+5 spawns)
-- 8 needed for quest
DELETE FROM `gameobject` WHERE `id` IN (186272,186273);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(88221, 186273, 1, 1, -2693.99, -4247.18, 4.56663, -0.279252, 0, 0, -0.139173, 0.990268, 300, 300, 255, 1),
(40774, 186272, 1, 1, -2693.98, -4253.17, 3.63396, -2.11185, 0, 0, -0.870356, 0.492423, 900, 900, 100, 1),
(89248, 186272, 1, 1, -2691.44, -4279.76, 3.60655, 0.90757, 0, 0, 0.438371, 0.898794, 300, 300, 255, 1),
(88217, 186272, 1, 1, -2682.64, -4284.98, 3.60759, 2.1293, 0, 0, 0.874619, 0.48481, 300, 300, 255, 1),
(88218, 186272, 1, 1, -2680.95, -4276.83, 3.77467, 2.21656, 0, 0, 0.894933, 0.446202, 300, 300, 255, 1),
(40775, 186273, 1, 1, -2671.49, -4263.42, 3.59574, 1.46608, 0, 0, 0.669132, 0.743144, 900, 900, 100, 1),
(88222, 186273, 1, 1, -2669.98, -4213.22, 0.403449, 2.16421, 0, 0, 0.882948, 0.469471, 300, 300, 255, 1);

UPDATE `gameobject` SET `spawntimesecsmin` = 30, `spawntimesecsmax` = 60, `animprogress` = 100, `state` = 1 WHERE `id` IN (186272,186273);

DELETE FROM `pool_gameobject_template` WHERE `id` IN (186272,186273);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(186272, 13989, 0, 'Dustwallow Marsh - Tool Kit (186272)'),
(186273, 13990, 0, 'Dustwallow Marsh - Damaged Diving Gear (186273)');

DELETE FROM `pool_template` WHERE `entry` IN (13989,13990);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13989, 1, 'Dustwallow Marsh - Tool Kit (186272)'), -- 4 max
(13990, 1, 'Dustwallow Marsh - Damaged Diving Gear (186273)'); -- 3 max

