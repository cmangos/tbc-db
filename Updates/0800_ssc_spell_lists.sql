-- -----------
-- Serpentshrine Cavern
-- SpellLists
-- -----------

-- Coilfang Beast-Tamer
DELETE FROM `creature_template_spells` WHERE `entry` = 21221;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2122101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2122101, 'Serpentshrine Cavern - Coilfang Beast-Tamer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2122101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2122101, 1, 38484, 0, -1, 0, 0, 100, 0, 6000, 10000, 18000, 22000, 'Coilfang Beast-Tamer - Bestial Wrath - none'),
(2122101, 2, 38474, 0, -1, 1, 0, 100, 0, 6000, 14000, 6000, 21000, 'Coilfang Beast-Tamer - Cleave - current');

UPDATE `creature_template` SET `SpellList` = 2122101 WHERE `entry` = 21221;
