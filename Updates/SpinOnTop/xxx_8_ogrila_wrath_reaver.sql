
SET @CGUID := x; -- [-4/+3]

DELETE FROM `creature` WHERE `id` = 22196;

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID + 00, '22196', '530', '1', '0', '0', '2818.272', '6925.054', '364.0483', '0.8203048', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CGUID + 01, '22196', '530', '1', '0', '0', '3073.010', '6800.589', '365.5003', '2.9321530', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CGUID + 02, '22196', '530', '1', '0', '0', '3047.815', '7064.048', '365.3917', '3.5953780', '300', '300', '0', '0', '1', '0', '0', '0');

REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('22196', '19818 16245');
