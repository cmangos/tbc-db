-- ---------------------------
-- Movement Corrections
-- ---------------------------

-- -----------
-- SpellLists
-- -----------

-- Sethekk Guard
DELETE FROM `creature_template_spells` WHERE `entry` = 18323;
DELETE FROM `creature_template_spells` WHERE `entry` = 20692;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1832301, 2069201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1832301, 'Sethekk Halls - Sethekk Guard - Normal', 0, 0),
(2069201, 'Sethekk Halls - Sethekk Guard - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1832301, 2069201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1832301, 1, 33967, 0, -1, 2, 0, 100, 0, 6000, 19000, 10000, 22000, 'Sethekk Guard - Thunderclap - self'),
(2069201, 1, 33967, 0, -1, 2, 0, 100, 0, 6000, 19000, 10000, 22000, 'Sethekk Guard - Thunderclap - self');

UPDATE `creature_template` SET `SpellList` = 1832301 WHERE `entry` = 18323;
UPDATE `creature_template` SET `SpellList` = 2069201 WHERE `entry` = 20692;
