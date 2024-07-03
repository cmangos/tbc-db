-- Broggok
DELETE FROM `creature_template_spells` WHERE `entry` IN (17380, 18601);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1738001, 1860101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1738001, 'The Blood Furnance - Broggok - Normal', 0, 0),
(1860101, 'The Blood Furnance - Broggok - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1738001, 1860101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1738001, 1, 30916, 0, -1, 0, 0, 100, 0, 8000, 17000, 11000, 20000, 'Broggok - Poison Cloud - self'),
(1738001, 2, 30913, 0, -1, 0, 0, 100, 0, 6000, 15000, 11000, 15000, 'Broggok - Slime Spray - self'),
(1738001, 3, 30917, 0, -1, 0, 0, 100, 0, 1000, 7000, 10000, 16000, 'Broggok - Poison Bolt - self'),

(1860101, 1, 30916, 0, -1, 0, 0, 100, 0, 8000, 17000, 11000, 20000, 'Broggok - Poison Cloud - self'),
(1860101, 2, 38458, 0, -1, 0, 0, 100, 0, 6000, 15000, 11000, 15000, 'Broggok - Slime Spray - self'),
(1860101, 3, 38459, 0, -1, 0, 0, 100, 0, 1000, 7000, 10000, 16000, 'Broggok - Poison Bolt - self');

UPDATE `creature_template` SET `SpellList` = 1738001 WHERE `entry` = 17380;
UPDATE `creature_template` SET `SpellList` = 1860101 WHERE `entry` = 18601;
