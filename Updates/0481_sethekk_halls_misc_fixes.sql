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

-- Sethekk Initiate
DELETE FROM `creature_template_spells` WHERE `entry` = 18318;
DELETE FROM `creature_template_spells` WHERE `entry` = 20693;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1831801, 2069301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1831801, 'Sethekk Halls - Sethekk Initiate - Normal', 0, 0),
(2069301, 'Sethekk Halls - Sethekk Initiate - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1831801, 2069301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1831801, 1, 33961, 0, -1, 2, 0, 100, 0, 11000, 28000, 20000, 40000, 'Sethekk Initiate - Spell Reflection - self'),
(1831801, 2, 16145, 0, -1, 1, 0, 100, 0, 5000, 22000, 11000, 28000, 'Sethekk Initiate - Sunder Armor - current'),
(2069301, 1, 33961, 0, -1, 2, 0, 100, 0, 11000, 28000, 20000, 40000, 'Sethekk Initiate - Spell Reflection - self'),
(2069301, 2, 16145, 0, -1, 1, 0, 100, 0, 5000, 22000, 11000, 28000, 'Sethekk Initiate - Sunder Armor - current');

UPDATE `creature_template` SET `SpellList` = 1831801 WHERE `entry` = 18318;
UPDATE `creature_template` SET `SpellList` = 2069301 WHERE `entry` = 20693;

-- Avian Darkhawk
DELETE FROM `creature_template_spells` WHERE `entry` = 19429;
DELETE FROM `creature_template_spells` WHERE `entry` = 20686;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1942901, 2068601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1942901, 'Sethekk Halls - Avian Darkhawk - Normal', 0, 0),
(2068601, 'Sethekk Halls - Avian Darkhawk - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1942901, 2068601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1942901, 1, 38059, 0, -1, 100, 0, 100, 0, 5000, 20000, 11000, 26000, 'Avian Darkhawk - Sonic Charge - random'),
(1942901, 2, 32901, 0, -1, 1, 0, 100, 0, 5000, 18000, 10000, 25000, 'Avian Darkhawk - Carnivorous Bite - current'),

(2068601, 1, 39197, 0, -1, 100, 0, 100, 0, 5000, 20000, 11000, 26000, 'Avian Darkhawk - Sonic Charge - random'),
(2068601, 2, 39198, 0, -1, 1, 0, 100, 0, 5000, 18000, 10000, 25000, 'Avian Darkhawk - Carnivorous Bite - current');

UPDATE `creature_template` SET `SpellList` = 1942901 WHERE `entry` = 19429;
UPDATE `creature_template` SET `SpellList` = 2068601 WHERE `entry` = 20686;

-- Time-Lost Controller
DELETE FROM `creature_template_spells` WHERE `entry` = 18327;
DELETE FROM `creature_template_spells` WHERE `entry` = 20691;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1832701, 2069101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1832701, 'Sethekk Halls - Time-Lost Controller - Normal', 0, 0),
(2069101, 'Sethekk Halls - Time-Lost Controller - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1832701, 2069101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1832701, 1, 32764, 0, -1, 2, 0, 100, 0, 11000, 21000, 30000, 40000, 'Time-Lost Controller - Summon Charming Totem - self'),
(1832701, 2, 35013, 0, -1, 1, 0, 100, 0, 5000, 16000, 8000, 19000, 'Time-Lost Controller - Shrink - current'),

(2069101, 1, 32764, 0, -1, 2, 0, 100, 0, 11000, 21000, 30000, 40000, 'Time-Lost Controller - Summon Charming Totem - self'),
(2069101, 2, 35013, 0, -1, 1, 0, 100, 0, 5000, 16000, 8000, 19000, 'Time-Lost Controller - Shrink - current');

UPDATE `creature_template` SET `SpellList` = 1832701 WHERE `entry` = 18327;
UPDATE `creature_template` SET `SpellList` = 2069101 WHERE `entry` = 20691;
