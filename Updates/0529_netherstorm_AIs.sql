-- ----------------
-- Netherstorm 
-- Sout East Island with Area 52 AIs
-- ---------------

-- SpellLists
-- Phase Hunter
DELETE FROM `creature_template_spells` WHERE `entry` = 18879;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887901;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887901, 'Netherstorm - Phase Hunter', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Unit Condition HAS_HARMFUL_AURA_MECHANIC (Snared, Frozen, Rooted)
(1887901, 1, 36574, 0, 1200, 2, 0, 100, 0, 1000, 8000, 10000, 16000, 'Phase Hunter - Phase Slip - self - unitCondition'),
(1887901, 2, 13321, 0, -1, 105, 0, 100, 0, 8000, 16000, 20000, 31000, 'Phase Hunter - Mana Burn - Random Player Mana User');

UPDATE `creature_template` SET `SpellList` = 1887901 WHERE `entry` = 18879;

-- Mana Snapper
DELETE FROM `creature_template_spells` WHERE `entry` = 18883;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1888301;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1888301, 'Netherstorm - Mana Snapper', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1888301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Unit Condition HAS_HARMFUL_AURA_MECHANIC (Snared, Frozen, Rooted)
(1888301, 1, 36574, 0, 1200, 2, 0, 100, 0, 1000, 8000, 10000, 16000, 'Mana Snapper - Phase Slip - self - unitCondition'),
(1888301, 2, 37176, 0, -1, 105, 0, 100, 0, 8000, 16000, 20000, 31000, 'Mana Snapper - Mana Burn - Random Player Mana User');

UPDATE `creature_template` SET `SpellList` = 1888301 WHERE `entry` = 18883;


-- Disembodied Protector
DELETE FROM `creature_template_spells` WHERE `entry` = 18873;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887301;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887301, 'Netherstorm - Disembodied Protector', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1887301, 1, 36647, 0, -1, 1, 0, 100, 0, 5000, 12000, 15000, 18000, 'Disembodied Protector - Crusader Strike - current'),
(1887301, 2, 9734, 0, -1, 1, 0, 100, 0, 3000, 10000, 8000, 14000, 'Disembodied Protector - Holy Smite - current');

UPDATE `creature_template` SET `SpellList` = 1887301 WHERE `entry` = 18873;

-- Disembodied Vindicator
DELETE FROM `creature_template_spells` WHERE `entry` = 18872;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887201;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887201, 'Netherstorm - Disembodied Vindicator', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1887201, 1, 36002, 0, -1, 1, 0, 100, 0, 6000, 18000, 18000, 28000, 'Disembodied Vindicator - Vindication - current');

UPDATE `creature_template` SET `SpellList` = 1887201 WHERE `entry` = 18872;

-- Disembodied Exarch
DELETE FROM `creature_template_spells` WHERE `entry` = 21058;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2105801;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2105801, 'Netherstorm - Disembodied Exarch', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2105801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2105801, 1, 33910, 0, -1, 204, 0, 100, 0, 2000, 10000, 2000, 10000, 'Disembodied Exarch - Heal Other - friendly missing 50% excluding self');

UPDATE `creature_template` SET `SpellList` = 2105801 WHERE `entry` = 21058;


-- Felblade Doomguard
DELETE FROM `creature_template_spells` WHERE `entry` = 19853;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1985301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1985301, 'Netherstorm - Felblade Doomguard', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1985301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1985301, 1, 35238, 0, -1, 1, 0, 100, 0, 8000, 16000, 12000, 24000, 'Felblade Doomguard - War Stomp - current'),
(1985301, 2, 32736, 0, -1, 1, 0, 100, 0, 9000, 20000, 16000, 27000, 'Felblade Doomguard - Mortal Strike - current');

UPDATE `creature_template` SET `SpellList` = 1985301 WHERE `entry` = 19853;

-- Artifact Seeker
DELETE FROM `creature_template_spells` WHERE `entry` = 19852;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1985201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1985201, 'Netherstorm - Artifact Seeker', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1985201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1985201, 1, 30849, 0, -1, 134, 0, 100, 0, 1000, 15000, 10000, 25000, 'Artifact Seeker - Spell Lock - top aggro casting'),
(1985201, 2, 11981, 0, -1, 133, 0, 100, 0, 6000, 16000, 14000, 24000, 'Artifact Seeker - Mana Burn - top aggro mana user');

UPDATE `creature_template` SET `SpellList` = 1985201 WHERE `entry` = 19852;

DELETE FROM creature_spell_targeting WHERE Id IN (133,134);
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `Comments`) VALUES 
(133, 1, 1, 0, 4, 'Attack - top aggro mana user'),
(134, 1, 1, 0, 32768, 'Attack - top aggro casting');

-- Pentatharon
DELETE FROM `creature_template_spells` WHERE `entry` = 20215;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2021501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2021501, 'Netherstorm - Pentatharon', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2021501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2021501, 1, 20663, 0, -1, 101, 0, 100, 0, 1000, 15000, 10000, 25000, 'Pentatharon - Sleep - random player non tank'),
(2021501, 2, 36039, 0, -1, 1, 0, 100, 0, 6000, 16000, 14000, 24000, 'Pentatharon - Carrion Swarm - current');

UPDATE `creature_template` SET `SpellList` = 2021501 WHERE `entry` = 20215;

