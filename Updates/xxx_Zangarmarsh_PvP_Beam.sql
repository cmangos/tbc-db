-- Zangarmarsh PvP Beam (Blue) / Zangarmarsh PvP Beam (Red) without Random Movement
DELETE FROM `creature` WHERE `id` IN (18757,18759);
SET @GUID := 84750;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID := @GUID + 0, 18757, 530, 1, 0, 0, 375.806, 7332.96, 63.1065, 2.94961, 300, 300, 0, 0, 4120, 0, 0, 0),
(@GUID := @GUID + 1, 18757, 530, 1, 0, 0, 340.453, 6833.1, 61.798, 3.01942, 300, 300, 0, 0, 4120, 0, 0, 0),
(@GUID := @GUID + 1, 18757, 530, 1, 0, 0, 273.866, 7082.68, 87.0635, 3.01942, 300, 300, 0, 0, 4120, 0, 0, 0),
(@GUID := @GUID + 1, 18759, 530, 1, 0, 0, 375.806, 7332.96, 63.1065, 2.94961, 300, 300, 0, 0, 4120, 0, 0, 0),
(@GUID := @GUID + 1, 18759, 530, 1, 0, 0, 340.453, 6833.1, 61.798, 3.01942, 300, 300, 0, 0, 4120, 0, 0, 0),
(@GUID := @GUID + 1, 18759, 530, 1, 0, 0, 273.866, 7082.68, 87.0635, 3.01942, 300, 300, 0, 0, 4120, 0, 0, 0);