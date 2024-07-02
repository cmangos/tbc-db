-- SpellList for The Blood Furnace - The Maker
-- Some Infos:
-- Domination can also hit Tanks
DELETE FROM `creature_template_spells` WHERE `entry` IN (17381, 18621);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1738101, 1862101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1738101, 'Blood Furnance - The Maker', 0, 0),
(1862101, 'Blood Furnance - The Maker', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1738101, 1862101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1738101, 1, 30923, 0, -1, 100, 0, 100, 0, 15000, 26000, 20000, 30000, 'The Maker - Domination - random'),
(1738101, 2, 30925, 0, -1, 1, 0, 100, 0, 6000, 17000, 10000, 21000, 'The Maker - Exploding Beaker - current'),
(1862101, 1, 30923, 0, -1, 100, 0, 100, 0, 15000, 26000, 20000, 30000, 'The Maker - Domination - random'),
(1862101, 2, 40059, 0, -1, 1, 0, 100, 0, 6000, 17000, 10000, 21000, 'The Maker - Exploding Beaker - current');

UPDATE `creature_template` SET `SpellList` = 1738101 WHERE `entry` = 17381;
UPDATE `creature_template` SET `SpellList` = 1862101 WHERE `entry` = 18621;
