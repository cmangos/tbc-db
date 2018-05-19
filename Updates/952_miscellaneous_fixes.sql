-- checked in sniff, have no IMMUNE_TO_NPC flag before or after starting escort
UPDATE creature_template SET UnitFlags=UnitFlags&~512 WHERE entry IN(10427,10646);

-- Teleport 20682 used by Lady Jaina Proudmoore 4968
DELETE FROM `spell_target_position` WHERE `id` = 20682;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(20682, 1, -3891.8, -4609.97, 9.50106, 0.764318);

-- Doomsaw 21119 summoned by 16944
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 21119;

-- Booty Bay Bruiser 4624
UPDATE `creature_template` SET `Scale` = 1.05, `UnitFlags` = 32768 WHERE `entry` = 4624;

-- Ratchet Bruiser 3502, Gadgetzan Bruiser 9460, Everlook Bruiser 11190
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` IN (3502, 9460, 11190);

-- Gadgetzan Sniper 21448
UPDATE `creature_template` SET `UnitFlags` = 32768, `MinLevel` = 67, `MaxLevel` = 67, `MinLevelHealth` = 3914, `MaxLevelHealth` = 3914 WHERE `entry` = 21448;

-- Area 52 Big Bruiser 20484, Area 52 Bruiser 20485
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|32768 WHERE `entry` IN (20484, 20485);

