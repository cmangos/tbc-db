-- Kraator 18696
DELETE FROM `creature_template_addon` WHERE `entry` = 18696;
INSERT INTO `creature_template_addon` (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('18696', '0', '0', '1', '16', '0', '0', '12743');

-- Infernal Invader 19259
DELETE FROM `creature_template_addon` WHERE `entry` = 19259;
INSERT INTO `creature_template_addon` (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('19259', '0', '0', '1', '16', '0', '0', '12743');

-- Infernal Warbringer 19261
UPDATE `creature_template_addon` SET `auras` = '12743' WHERE `entry` = 19261;

-- Newly Crafted Infernal 19759
DELETE FROM `creature_template_addon` WHERE `entry` = 19759;
INSERT INTO `creature_template_addon` (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('19759', '0', '0', '1', '16', '0', '0', '12743');

-- Cooling Infernal 19760
UPDATE `creature_template_addon` SET `auras` = '12743' WHERE `entry` = 19760;

-- Abyssal Flamebringer 19973
UPDATE `creature_template_addon` SET `auras` = '12743' WHERE `entry` = 19973;

-- Dormant Infernal 21080 - ACID Script requires in Script solution

-- Infernal Defender 20160
DELETE FROM `creature_template_addon` WHERE `entry` = 20160;
INSERT INTO `creature_template_addon` (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('20160', '0', '0', '1', '16', '0', '0', '12743');

-- Deathforged Infernal 21316
UPDATE `creature_template_addon` SET `auras` = '12743 16245' WHERE `entry` = 21316;

-- Karabor Infernal 23044
DELETE FROM `creature_template_addon` WHERE `entry` = 23044;
INSERT INTO `creature_template_addon` (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('23044', '0', '0', '1', '16', '0', '0', '12743');

-- Abyssal Flamewalker 25001
DELETE FROM `creature_template_addon` WHERE `entry` = 25001;
INSERT INTO `creature_template_addon` (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
('25001', '0', '0', '1', '16', '0', '0', '12743');

