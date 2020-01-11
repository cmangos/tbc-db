-- Add correct Stealth Aura for Daggerfen Assassin 18116
DELETE FROM `creature_template_addon` WHERE `entry` = 18116;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(18116, 0, 0, 1, 16, 0, 0, '22766');

