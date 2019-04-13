-- Move creature_addon to creature_template_addon for Dragonmaw Bonewarder 1057
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1057);
DELETE FROM `creature_template_addon` WHERE `entry` = 1057;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`) VALUES
(1057, 1, 16);

