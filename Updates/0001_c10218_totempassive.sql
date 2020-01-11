-- Add missing Superior Healing Ward Passive 15872 for Superior Healing Ward 10218
DELETE FROM `creature_template_spells` WHERE `entry` = 10218;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES
(10218,15872);

