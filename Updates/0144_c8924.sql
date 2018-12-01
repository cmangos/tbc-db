-- Add missing Spawn for The Behemoth 8924
DELETE FROM `creature` WHERE `guid` IN (151163,151162,151161,3757,3756,3755);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(3755, 8924, 0, -7435.55, -892.563, 172.306, 6.18023, 172800, 259200, 0, 2), -- classic-db duplicates 180506

(151161, 24819, 0, -7341.18, -1023.78, 179.282, 3.85718, 370, 370, 0, 0), -- reguid 3755 to 151161+ missing commit at 151164+?
(151162, 24819, 0, -7280.33, -879.17, 169.628, 0.034907, 370, 370, 0, 0), -- reguid 3756
(151163, 24818, 0, -7453.74, -919.423, 170.908, 3.12414, 370, 370, 0, 0); -- reguid 3757

