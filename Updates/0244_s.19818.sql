-- Add missing Double Attack 19818
UPDATE `creature_template_addon` SET `auras` = '19818' WHERE `entry` = 1045; -- Red Dragonspawn
UPDATE `creature_template_addon` SET `auras` = '19818' WHERE `entry` = 8717; -- Felguard Elite
UPDATE `creature_template_addon` SET `auras` = '19818' WHERE `entry` = 14887; -- Ysondre
DELETE FROM `creature_template_addon` WHERE `entry` = 14888;  -- Lethon
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(14888, 0, 0, 1, 16, 0, 0, '19818');
UPDATE `creature_template_addon` SET `auras` = '19818' WHERE `entry` = 14889; -- Emeriss
UPDATE `creature_template_addon` SET `auras` = '19818' WHERE `entry` = 14890; -- Taerar

