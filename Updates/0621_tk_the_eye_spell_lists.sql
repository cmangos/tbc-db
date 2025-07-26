-- -----------
-- Tempest Keep : The Eye
-- SpellLists
-- -----------

-- Bloodwarder Legionnaire
DELETE FROM `creature_template_spells` WHERE `entry` = 20031;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003101, 'The Eye - Bloodwarder Legionnaire', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003101, 1, 15284, 0, -1, 1, 0, 100, 0, 7000, 13000, 17000, 20000, 'Bloodwarder Legionnaire - Cleave - current'),
(2003101, 2, 34984, 0, -1, 2, 0, 100, 0, 10000, 16000, 18000, 27000, 'Bloodwarder Legionnaire - Whirlwind - self'),
(2003101, 3, 34984, 0, -1, 2, 0, 100, 0, 8000, 18000, 22000, 24000, 'Bloodwarder Legionnaire - Bloodthirst - self');

UPDATE `creature_template` SET `SpellList` = 2003101 WHERE `entry` = 20031;

-- Bloodwarder Vindicator
DELETE FROM `creature_template_spells` WHERE `entry` = 20032;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003201, 'The Eye - Bloodwarder Vindicator', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003201, 1, 37251, 0, -1, 100, 0, 100, 0, 3000, 5000, 6000, 10000, 'Bloodwarder Legionnaire - Hammer of Wrath - random player'),
(2003201, 2, 37249, 0, -1, 201, 0, 100, 0, 9000, 17000, 9000, 17000, 'Bloodwarder Legionnaire - Flash of Light - missing 50% including self'),
(2003201, 3, 39078, 0, -1, 3, 0, 100, 0, 5000, 10000, 5000, 10000, 'Bloodwarder Legionnaire - Cleanse - eligible friendly dispel'),
(2003201, 4, 13005, 0, -1, 1, 0, 100, 0, 3000, 9000, 18000, 24000, 'Bloodwarder Legionnaire - Hammer of Justice - current');

UPDATE `creature_template` SET `SpellList` = 2003201 WHERE `entry` = 20032;


-- Astromancer
DELETE FROM `creature_template_spells` WHERE `entry` = 20033;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003301, 'The Eye - Astromancer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003301, 1, 37110, 0, -1, 1, 0, 100, 0, 14000, 19000, 18000, 28000, 'Astromancer - Fire Blast - current'),
(2003301, 2, 37109, 0, -1, 1, 0, 100, 0, 8000, 13000, 11000, 16000, 'Astromancer - Fireball Volley - current');

UPDATE `creature_template` SET `SpellList` = 2003301 WHERE `entry` = 20033;


-- Star Scryer
DELETE FROM `creature_template_spells` WHERE `entry` = 20034;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003401, 'The Eye - Star Scryer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003401, 1, 37124, 0, -1, 100, 0, 100, 0, 7000, 12000, 22000, 30000, 'Star Scryer - Starfall - random'),
(2003401, 2, 37126, 0, -1, 1, 0, 100, 0, 13000, 16000, 13000, 25000, 'Star Scryer - Arcane Blast - current'),
(2003401, 3, 37122, 0, -1, 101, 0, 100, 0, 8000, 16000, 21000, 36000, 'Star Scryer - Domination - random not tank');


UPDATE `creature_template` SET `SpellList` = 2003401 WHERE `entry` = 20034;


-- Bloodwarder Marshal
DELETE FROM `creature_template_spells` WHERE `entry` = 20035;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003501, 'The Eye - Bloodwarder Marshal', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003501, 1, 35949, 0, -1, 2, 0, 100, 0, 8000, 18000, 22000, 24000, 'Bloodwarder Marshal - Bloodthirst - self'),
(2003501, 2, 34996, 0, -1, 1, 0, 100, 0, 19000, 29000, 22000, 31000, 'Bloodwarder Marshal - Uppercut - current'),
(2003501, 3, 36132, 0, -1, 2, 0, 100, 0, 10000, 15000, 14000, 17000, 'Bloodwarder Marshal - Whirlwind - self');

UPDATE `creature_template` SET `SpellList` = 2003501 WHERE `entry` = 20035;

-- Bloodwarder Squire
DELETE FROM `creature_template_spells` WHERE `entry` = 20036;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003601, 'The Eye - Bloodwarder Squire', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003601, 1, 37255, 0, -1, 100, 0, 100, 0, 3000, 5000, 6000, 10000, 'Bloodwarder Squire - Hammer of Wrath - random player'),
(2003601, 2, 37254, 0, -1, 206, 0, 100, 0, 9000, 17000, 9000, 17000, 'Bloodwarder Squire - Flash of Light - missing 25% including self'),
(2003601, 3, 39078, 0, -1, 3, 0, 100, 0, 5000, 10000, 5000, 10000, 'Bloodwarder Squire - Cleanse - eligible friendly dispel'),
(2003601, 4, 39077, 0, -1, 1, 0, 100, 0, 3000, 9000, 18000, 24000, 'Bloodwarder Squire - Hammer of Justice - current');

UPDATE `creature_template` SET `SpellList` = 2003601 WHERE `entry` = 20036;


-- Tempest Falconer
DELETE FROM `creature_template_spells` WHERE `entry` = 20037;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003701, 'The Eye - Tempest Falconer', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003701, 1, 37317, 0, -1, 1, 0, 100, 0, 6000, 11000, 6000, 11000, 'Tempest Falconer - Knockback - current')
(2003701, 2, 37154, 0, -1, 101, 0, 100, 0, 14000, 18000, 18000, 28000, 'Tempest Falconer - Immolation Arrow - random not top aggro')
(2003701, 3, 39079, 0, -1, 1, 0, 100, 0, 0, 3000, 2000, 4000, 'Tempest Falconer - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 2003701 WHERE `entry` = 20037;


-- Phoenix-Hawk Hatchling
DELETE FROM `creature_template_spells` WHERE `entry` = 20038;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003801, 'The Eye - Phoenix-Hawk Hatchling', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003801, 1, 37160, 0, -1, 2, 0, 100, 0, 8000, 18000, 21000, 36000, 'Phoenix-Hawk Hatchling - Silence - self'),
(2003801, 2, 37319, 0, -1, 2, 0, 100, 0, 7000, 18000, 23000, 30000, 'Phoenix-Hawk Hatchling - Wing Buffet - self');

UPDATE `creature_template` SET `SpellList` = 2003801 WHERE `entry` = 20038;
