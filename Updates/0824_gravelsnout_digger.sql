DELETE FROM `creature` WHERE `guid` IN (170332,170333,170334);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(170332, 4113, 1, 1, 0, 0, -4591.86, -954.699, -50.8179, 0.260602, 180, 180, 10, 1),
(170333, 4113, 1, 1, 0, 0, -4377.69, -979.477, -55.7554, 4.59051, 180, 180, 10, 1),
(170334, 4113, 1, 1, 0, 0, -5660.22, -3085.08, -46.5834, 3.70496, 180, 180, 10, 1);


