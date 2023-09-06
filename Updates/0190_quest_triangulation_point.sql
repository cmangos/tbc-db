-- Add missing Netherstorm Triangulation Point Two Trigger
DELETE FROM `creature` WHERE `guid` = 5304130;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES 
(5304130, 20114, 530, 1, 3923.1936, 3873.3762, 180.81671, 4.8171, 60, 60, 0, 0);

-- Add Hunter's Mark spells to both points
UPDATE `creature_template_addon` SET `auras`="34840 34832" WHERE `entry`=20086;
UPDATE `creature_template_addon` SET `auras`="34858 34832" WHERE `entry`=20114;


-- remove Extra Flags, invisibility handled by UnitFlag and spell 34858
-- [0] Flags: 33555200
UPDATE creature_template SET UnitFlags = 33555200, ExtraFlags = 0 WHERE entry IN (20086, 20114);