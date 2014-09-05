-- Correct Data for Overmaster Pyron 9026
UPDATE `creature` SET `modelid` = 0, `position_x` = -7291.86, `position_y` = -890.557, `position_z` = 165.617, `orientation` = 0.139794, `spawndist` = 0 WHERE `guid` = 4593;
DELETE FROM `creature_addon` WHERE `guid` = 4593;
UPDATE `creature_template` SET `DamageSchool`='2', `ResistanceHoly`='0', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `Entry`='9026';

-- Correct creature_template_addon
DELETE FROM `creature_template_addon` WHERE `entry` IN ('8924', '9026');
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
('8924', '0', '0', '1', '16', '0', '0', ''),
('9026', '0', '0', '1', '16', '0', '0', '');

-- Move Overmaster Pyron 9026 Path to creature_movement_template
DELETE FROM `creature_movement` WHERE `id` = 4593;
DELETE FROM `creature_movement_template`  WHERE `entry` = 9026;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES 
(9026, 01, -7262.899, -886.4813, 168.1458, 0, 0, 0, NULL),
(9026, 02, -7222.944, -879.4019, 165.4196, 0, 0, 0, NULL),
(9026, 03, -7220.158, -902.6326, 165.3774, 0, 0, 0, NULL),
(9026, 04, -7226.553, -929.5555, 166.0566, 0, 0, 0, NULL),
(9026, 05, -7255.601, -932.9393, 167.9259, 0, 0, 0, NULL),
(9026, 06, -7288.363, -938.7402, 165.5028, 0, 0, 0, NULL),
(9026, 07, -7255.601, -932.9393, 167.9259, 0, 0, 0, NULL),
(9026, 08, -7226.553, -929.5555, 166.0566, 0, 0, 0, NULL),
(9026, 09, -7220.158, -902.6326, 165.3774, 0, 0, 0, NULL),
(9026, 10, -7222.944, -879.4019, 165.4196, 0, 0, 0, NULL),
(9026, 11, -7262.899, -886.4813, 168.1458, 0, 0, 0, NULL),
(9026, 12, -7293.736, -891.8329, 165.5501, 0, 0, 0, NULL);

