-- Hellfire Warder
DELETE FROM `creature_template_spells` WHERE `entry` = 18829;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1882901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1882901, 'Magtheridon\'s Lair - Hellfire Warder', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 1882901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1882901, 1, 34435, 0, -1, 100, 0, 100, 0, 5000, 19000, 11000, 21000, 'Hellfire Warder - Rain of Fire - random'),
(1882901, 2, 34436, 0, -1, 2, 0, 100, 0, 4000, 18000, 16000, 27000, 'Hellfire Warder - Shadow Burst - self'),
(1882901, 3, 34437, 0, -1, 101, 0, 100, 0, 8000, 28000, 8000, 28000, 'Hellfire Warder - Death Coil - random not tank'),
(1882901, 4, 34439, 0, -1, 121, 0, 100, 0, 3000, 15000, 3000, 15000, 'Hellfire Warder - Unstable Affliction - random aura not present'),
(1882901, 5, 34441, 0, -1, 121, 0, 100, 0, 9000, 18000, 25000, 40000, 'Hellfire Warder - Shadow Word Pain - random aura not present'),
(1882901, 6, 39175, 0, -1, 2, 0, 100, 0, 7000, 18000, 14000, 25000, 'Hellfire Warder - Shadow Bolt Volley - self');

UPDATE `creature_template` SET `SpellList` = 1882901 WHERE `entry` = 18829;
