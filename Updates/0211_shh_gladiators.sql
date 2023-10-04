-- Shattered Hand Gladiator spell_list
-- RP handled via CoreScript

DELETE FROM `creature_template_spells` WHERE `entry` IN (17464, 20586);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1746401, 2058601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1746401, 'Shattered Halls - Shattered Hand Gladiator - Normal', 0, 0),
(2058601, 'Shattered Halls - Shattered Hand Gladiator - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1746401, 2058601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1746401, 1, 16856, 0, -1, 1, 0, 100, 0, 6000, 18000, 11000, 20000, 'Shattered Hand Gladiator - Mortal Strike - On Current'),
(2058601, 1, 16856, 0, -1, 1, 0, 100, 0, 9000, 9000, 9000, 15000, 'Shattered Hand Gladiator - Mortal Strike - On Current');


UPDATE `creature_template` SET `SpellList` = 1746401 WHERE `entry` = 17464;
UPDATE `creature_template` SET `SpellList` = 2058601 WHERE `entry` = 20586;


-- Shattered Hand Centurion
DELETE FROM `creature_template_spells` WHERE `entry` IN (17465, 20583);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1746501, 2058301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1746501, 'Shattered Halls - Shattered Hand Centurion - Normal', 0, 0),
(2058301, 'Shattered Halls - Shattered Hand Centurion - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1746501, 2058301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1746501, 1, 31403, 0, -1, 2, 0, 100, 0, 3000, 7000, 17000, 21000, 'Shattered Hand Centurion - Battle Shout - On self'),
(1746501, 2, 15572, 0, -1, 1, 0, 100, 0, 5000, 7000, 9000, 9000, 'Shattered Hand Centurion - Sunder Armor - On Current'),
(2058301, 1, 31403, 0, -1, 2, 0, 100, 0, 3000, 7000, 17000, 21000, 'Shattered Hand Centurion - Battle Shout - On self'),
(2058301, 2, 16145, 0, -1, 1, 0, 100, 0, 5000, 7000, 9000, 9000, 'Shattered Hand Centurion - Sunder Armor - On Current');

UPDATE `creature_template` SET `SpellList` = 1746501 WHERE `entry` = 17465;
UPDATE `creature_template` SET `SpellList` = 2058301 WHERE `entry` = 20583;
