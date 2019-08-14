-- Respawn Dead Clefthoof 21313 (-1/+2)
DELETE FROM `creature` WHERE `id` = 21313; -- guid 74621
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5301395, 21313, 530, -2811.898, 5094.105, -12.88484, 3.874631, 300, 300, 0, 0),
(5301396, 21313, 530, -2872.576, 5014.88, -20.54536, 3.01942, 300, 300, 0, 0);

