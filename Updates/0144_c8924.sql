-- Add missing Spawn for The Behemoth 8924
DELETE FROM `creature` WHERE `guid` = 191137 AND `id` = 8924;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191137, 8924, 0, 1, -7404.57, -894.073, 171.873, 4.7112, 172800, 259200, 0, 2);

