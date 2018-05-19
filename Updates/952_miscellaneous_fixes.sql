-- checked in sniff, have no IMMUNE_TO_NPC flag before or after starting escort
UPDATE creature_template SET UnitFlags=UnitFlags&~512 WHERE entry IN(10427,10646);

-- Teleport 20682 used by Lady Jaina Proudmoore 4968
DELETE FROM `spell_target_position` WHERE `id` = 20682;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(20682, 1, -3891.8, -4609.97, 9.50106, 0.764318);

-- Doomsaw 21119 summoned by 16944
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 21119;

