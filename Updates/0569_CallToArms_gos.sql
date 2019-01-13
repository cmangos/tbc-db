-- based on https://github.com/cmangos/classic-db/commit/87f2fbb12831cf16795db1629d865d566ac7b143

-- Add two missing Emissary Locations, ToDo Add Npcs
DELETE FROM `gameobject` WHERE `guid` BETWEEN 190325 AND 190332;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(190325, 180395, 1, 1, -1034.77, -227.402, 160.276, 3.06603, 0, 0, 0.999286, 0.0377723, 180, 180, 255, 1),
(190326, 180394, 1, 1, -1034.77, -227.402, 160.276, 3.06603, 0, 0, 0.999286, 0.0377723, 180, 180, 255, 1),
(190327, 180396, 1, 1, -1034.77, -227.402, 160.276, 3.06603, 0, 0, 0.999286, 0.0377723, 180, 180, 255, 1),
(190328, 185106, 1, 1, -1034.77, -227.402, 160.276, 3.06603, 0, 0, 0.999286, 0.0377723, 180, 180, 255, 1),

(190329, 180395, 0, 1, 1781.56, 235.419, -62.1757, 3.08603, 0, 0, 0.999614, 0.0277778, 180, 180, 255, 1),
(190330, 180394, 0, 1, 1781.56, 235.419, -62.1757, 3.08603, 0, 0, 0.999614, 0.0277778, 180, 180, 255, 1),
(190331, 180396, 0, 1, 1781.56, 235.419, -62.1757, 3.08603, 0, 0, 0.999614, 0.0277778, 180, 180, 255, 1),
(190332, 185106, 0, 1, 1781.56, 235.419, -62.1757, 3.08603, 0, 0, 0.999614, 0.0277778, 180, 180, 255, 1);

-- Linked gameobjects with related events
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 190325 AND 190332;
INSERT INTO `game_event_gameobject` VALUES
(190325, 18),
(190329, 18),
(190326, 19),
(190330, 19),
(190327, 20),
(190331, 20),
(190328, 21),
(190332, 21);

