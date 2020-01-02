-- [PH]Knockdown Fel Cannon Dummy 23077
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 23077;
DELETE FROM `creature_template_addon` WHERE `entry` = 23077;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (23077, 0, 0, 0, 0, 0, 0, 40113);

-- Legion Flak Cannon 23082
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 23082;

