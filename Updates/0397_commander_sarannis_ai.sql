-- Summoned Adds
-- Summoned Bloodwarder Mender 20083
DELETE FROM `creature_template_spells` WHERE `entry` IN (20083, 21568);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2008301, 2156801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2008301, 'Botanica - Summoned Bloodwarder Mender - Normal', 90, 0),
(2156801, 'Botanica - Summoned Bloodwarder Mender - Heroic', 90, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2008301, 2156801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2008301, 1, 35096, 0, -1, 201, 0, 100, 0, 5000, 10000, 17000, 21000, 'Summoned Bloodwarder Mender - Greater Heal - friendly under 50% include self'),
(2008301, 2, 34809, 0, -1, 5, 0, 100, 0, 9600, 16900, 14500, 22900, 'Summoned Bloodwarder Mender - Holy Fury - friendly missing buff'),
(2008301, 3, 17194, 0, -1, 1, 0, 100, 0, 2500, 3500, 2500, 3500, 'Summoned Bloodwarder Mender - Mind Blast - current'),
(2156801, 1, 35096, 0, -1, 201, 0, 100, 0, 5000, 10000, 17000, 21000, 'Summoned Bloodwarder Mender - Greater Heal - friendly under 50% include self'),
(2156801, 2, 34809, 0, -1, 5, 0, 100, 0, 9600, 16900, 14500, 22900, 'Summoned Bloodwarder Mender - Holy Fury - friendly missing buff'),
(2156801, 3, 17287, 0, -1, 1, 0, 100, 0, 2500, 3500, 2500, 3500, 'Summoned Bloodwarder Mender - Mind Blast - current');


UPDATE `creature_template` SET `SpellList` = 2008301 WHERE `entry` = 20083;
UPDATE `creature_template` SET `SpellList` = 2156801 WHERE `entry` = 21568;


-- Summoned Bloodwarder Reservist 20083
DELETE FROM `creature_template_spells` WHERE `entry` IN (20078, 21569);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2007801, 2156901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2007801, 'Botanica - Summoned Bloodwarder Reservist - Normal', 0, 0),
(2156901, 'Botanica - Summoned Bloodwarder Reservist - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2007801, 2156901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2007801, 1, 34820, 0, -1, 1, 0, 100, 0, 12400, 16400, 8100, 16200, 'Summoned Bloodwarder Reservist - Arcane Strike - current'),
(2156901, 1, 34820, 0, -1, 1, 0, 100, 0, 12400, 16400, 8100, 16200, 'Summoned Bloodwarder Reservist - Arcane Strike - current');

UPDATE `creature_template` SET `SpellList` = 2007801 WHERE `entry` = 20078;
UPDATE `creature_template` SET `SpellList` = 2156901 WHERE `entry` = 21569;