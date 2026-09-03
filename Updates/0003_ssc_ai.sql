-- -----------
-- Serpentshrine Cavern
-- SpellLists
-- -----------

-- Vashj'ir Honor Guard
DELETE FROM `creature_template_spells` WHERE `entry` = 21218;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2121801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2121801, 'Serpentshrine Cavern - Vashj''ir Honor Guard', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2121801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Cant reproduce Execute being cast on tank ever
-- (2121801, 1, 38959, 0, -1, 1, 0, 100, 0, 5000, 15000, 5000, 15000, 'Vashj''ir Honor Guard - Execute - current'),
-- Condition self - under 50%
(2121801, 2, 38945, 0, 281, 1, 0, 100, 0, 2000, 10000, 22000, 36000, 'Vashj''ir Honor Guard - Frightening Shout - current'),
(2121801, 3, 38576, 0, -1, 0, 0, 100, 0, 12000, 22000, 16000, 25000, 'Vashj''ir Honor Guard - Knockback - none'),
(2121801, 4, 38572, 0, -1, 1, 0, 100, 0, 5000, 16000, 9000, 18000, 'Vashj''ir Honor Guard - Mortal Cleave - current');

UPDATE `creature_template` SET `SpellList` = 2121801 WHERE `entry` = 21218;


-- Coilfang Priestess
DELETE FROM `creature_template_spells` WHERE `entry` = 21220;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2122001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2122001, 'Serpentshrine Cavern - Coilfang Priestess', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2122001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2122001, 1, 38580, 0, -1, 206, 0, 100, 100, 6000, 14000, 6000, 14000, 'Coilfang Priestess - Greater Heal - Missing 25% including self'),
(2122001, 2, 38582, 0, -1, 1, 0, 100, 1, 2000, 12000, 2000, 12000, 'Coilfang Priestess - Holy Smite - random'),
(2122001, 3, 38585, 0, -1, 100, 0, 100, 10, 5000, 15000, 6000, 18000, 'Coilfang Priestess - Holy Fire - random player');

UPDATE `creature_template` SET `SpellList` = 2122001 WHERE `entry` = 21220;


-- Greyheart Technician
DELETE FROM `creature_template_spells` WHERE `entry` = 21263;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2126301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2126301, 'Serpentshrine Cavern - Greyheart Technician', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2126301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2126301, 1, 38995, 0, -1, 1, 0, 100, 100, 6000, 12000, 6000, 12000, 'Greyheart Technician - Hamstring - current');

UPDATE `creature_template` SET `SpellList` = 2126301 WHERE `entry` = 21263;


-- Coilfang Shatterer
DELETE FROM `creature_template_spells` WHERE `entry` = 21301;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2130101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2130101, 'Serpentshrine Cavern - Coilfang Shatterer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2130101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2130101, 1, 38591, 0, -1, 1, 0, 100, 100, 7000, 15000, 17000, 25000, 'Coilfang Shatterer - Shatter Armor - current');

UPDATE `creature_template` SET `SpellList` = 2130101 WHERE `entry` = 21301;