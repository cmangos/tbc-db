-- Arcatraz Warder
DELETE FROM `creature_template_spells` WHERE `entry` IN (20859, 21587);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2085901, 2158701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2085901, 'The Arcatraz - Arcatraz Warder - Normal', 0, 80),
(2158701, 'The Arcatraz - Arcatraz Warder - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2085901, 2158701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2085901, 1, 35963, 0, -1, 1, 0, 100, 0, 0, 6000, 6000, 12000, 'Bloodwarder Protector - Improved Wing Clip - current'),
(2085901, 2, 38808, 0, -1, 100, 0, 100, 0, 10000, 15000, 10000, 15000, 'Bloodwarder Protector - Charged Arcane - random'),
(2085901, 3, 36609, 0, -1, 1, 0, 100, 0, 1000, 5000, 5000, 10000, 'Bloodwarder Protector - Arcane Shot - current'),
(2085901, 4, 22907, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 3900, 'Bloodwarder Protector - Shoot - current'),
(2158701, 1, 35963, 0, -1, 1, 0, 100, 0, 0, 6000, 6000, 12000, 'Bloodwarder Protector - Improved Wing Clip - current'),
(2158701, 2, 38808, 0, -1, 100, 0, 100, 0, 10000, 15000, 10000, 15000, 'Bloodwarder Protector - Charged Arcane - random'),
(2158701, 3, 38807, 0, -1, 1, 0, 100, 0, 1000, 5000, 5000, 10000, 'Bloodwarder Protector - Arcane Shot - current'),
(2158701, 4, 38940, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 3900, 'Bloodwarder Protector - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 2085901 WHERE `entry` = 20859;
UPDATE `creature_template` SET `SpellList` = 2158701 WHERE `entry` = 21587;



