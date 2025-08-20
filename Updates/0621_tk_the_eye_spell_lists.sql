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
(2003101, 1, 15284, 0, -1, 1, 0, 100, 0, 6000, 22000, 11000, 25000, 'Bloodwarder Legionnaire - Cleave - current'),
(2003101, 2, 33500, 0, -1, 2, 0, 100, 0, 6000, 14000, 16000, 28000, 'Bloodwarder Legionnaire - Whirlwind - self'),
(2003101, 3, 35949, 0, -1, 2, 0, 100, 0, 6000, 22000, 16000, 30000, 'Bloodwarder Legionnaire - Bloodthirst - self');

UPDATE `creature_template` SET `SpellList` = 2003101 WHERE `entry` = 20031;

-- Bloodwarder Vindicator
DELETE FROM `creature_template_spells` WHERE `entry` = 20032;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003201, 'The Eye - Bloodwarder Vindicator', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003201, 1, 37251, 0, -1, 100, 0, 100, 0, 3000, 7000, 6000, 10000, 'Bloodwarder Vindicator - Hammer of Wrath - random player'),
(2003201, 2, 37249, 0, -1, 201, 0, 100, 0, 2000, 8000, 8000, 16000, 'Bloodwarder Vindicator - Flash of Light - missing 50% including self'),
(2003201, 3, 39078, 0, -1, 3, 0, 100, 0, 4000, 12000, 6000, 14000, 'Bloodwarder Vindicator - Cleanse - eligible friendly dispel'),
(2003201, 4, 13005, 0, -1, 1, 0, 100, 0, 6000, 19000, 9000, 24000, 'Bloodwarder Vindicator - Hammer of Justice - current');

UPDATE `creature_template` SET `SpellList` = 2003201 WHERE `entry` = 20032;

-- Astromancer
DELETE FROM `creature_template_spells` WHERE `entry` = 20033;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003301, 'The Eye - Astromancer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003301, 1, 37110, 0, -1, 1, 0, 100, 0, 10000, 21000, 10000, 25000, 'Astromancer - Fire Blast - current'),
(2003301, 2, 37109, 0, -1, 1, 0, 100, 0, 6000, 16000, 11000, 20000, 'Astromancer - Fireball Volley - current');

UPDATE `creature_template` SET `SpellList` = 2003301 WHERE `entry` = 20033;


-- Star Scryer
DELETE FROM `creature_template_spells` WHERE `entry` = 20034;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003401, 'The Eye - Star Scryer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003401, 1, 37124, 0, -1, 100, 0, 100, 0, 6000, 15000, 22000, 35000, 'Star Scryer - Starfall - random'),
(2003401, 2, 37126, 0, -1, 1, 0, 100, 0, 11000, 22000, 11000, 25000, 'Star Scryer - Arcane Blast - current'),
(2003401, 3, 37122, 0, -1, 101, 0, 100, 0, 5000, 18000, 16000, 28000, 'Star Scryer - Domination - random not tank');

UPDATE `creature_template` SET `SpellList` = 2003401 WHERE `entry` = 20034;


-- Bloodwarder Marshal
DELETE FROM `creature_template_spells` WHERE `entry` = 20035;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003501, 'The Eye - Bloodwarder Marshal', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003501, 1, 35949, 0, -1, 2, 0, 100, 0, 6000, 25000, 16000, 32000, 'Bloodwarder Marshal - Bloodthirst - self'),
(2003501, 2, 36132, 0, -1, 2, 0, 100, 0, 6000, 17000, 16000, 32000, 'Bloodwarder Marshal - Whirlwind - self'),
(2003501, 3, 34996, 0, -1, 1, 0, 100, 0, 17000, 32000, 16000, 30000, 'Bloodwarder Marshal - Uppercut - current');

UPDATE `creature_template` SET `SpellList` = 2003501 WHERE `entry` = 20035;

-- Bloodwarder Squire
DELETE FROM `creature_template_spells` WHERE `entry` = 20036;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003601, 'The Eye - Bloodwarder Squire', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003601, 1, 37255, 0, -1, 100, 0, 100, 0, 3000, 8000, 6000, 10000, 'Bloodwarder Squire - Hammer of Wrath - random player'),
(2003601, 2, 37254, 0, -1, 206, 0, 100, 0, 2000, 8000, 8000, 14000, 'Bloodwarder Squire - Flash of Light - missing 25% including self'),
(2003601, 3, 39078, 0, -1, 3, 0, 100, 0, 6000, 18000, 6000, 18000, 'Bloodwarder Squire - Cleanse - eligible friendly dispel'),
(2003601, 4, 39077, 0, -1, 1, 0, 100, 0, 8000, 20000, 14000, 24000, 'Bloodwarder Squire - Hammer of Justice - current');

UPDATE `creature_template` SET `SpellList` = 2003601 WHERE `entry` = 20036;


-- Tempest Falconer
DELETE FROM `creature_template_spells` WHERE `entry` = 20037;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003701, 'The Eye - Tempest Falconer', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003701, 1, 37317, 0, 721, 101, 0, 100, 0, 4000, 14000, 4000, 14000, 'Tempest Falconer - Knockback - If one target in melee at least'),
(2003701, 2, 37154, 0, -1, 100, 0, 100, 0, 6000, 21000, 11000, 26000, 'Tempest Falconer - Immolation Arrow - random'),
(2003701, 3, 39079, 2, -1, 1, 0, 100, 0, 0, 5000, 3000, 5000, 'Tempest Falconer - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 2003701 WHERE `entry` = 20037;


-- Phoenix-Hawk Hatchling
DELETE FROM `creature_template_spells` WHERE `entry` = 20038;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003801, 'The Eye - Phoenix-Hawk Hatchling', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003801, 1, 37160, 0, -1, 2, 0, 100, 0, 6000, 20000, 20000, 32000, 'Phoenix-Hawk Hatchling - Silence - self'),
(2003801, 2, 37319, 0, -1, 2, 0, 100, 0, 7000, 16000, 11000, 26000, 'Phoenix-Hawk Hatchling - Wing Buffet - self');

UPDATE `creature_template` SET `SpellList` = 2003801 WHERE `entry` = 20038;


-- Phoenix-Hawk
DELETE FROM `creature_template_spells` WHERE `entry` = 20039;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2003901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2003901, 'The Eye - Phoenix-Hawk', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2003901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2003901, 1, 37156, 0, -1, 111, 0, 100, 0, 6000, 24000, 16000, 30000, 'Phoenix-Hawk - Dive - farthest player'),
(2003901, 2, 37159, 0, -1, 105, 0, 100, 0, 5000, 14000, 16000, 26000, 'Phoenix-Hawk - Mana Burn - random mana user');

UPDATE `creature_template` SET `SpellList` = 2003901 WHERE `entry` = 20039;

-- Crystalcore Devastator
DELETE FROM `creature_template_spells` WHERE `entry` = 20040;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004001, 'The Eye - Crystalcore Devastator', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004001, 1, 37102, 0, -1, 1, 0, 100, 0, 16000, 26000, 16000, 26000, 'Crystalcore Devastator - Knock Away - current'),
(2004001, 1, 35039, 0, 1189, 122, 0, 100, 0, 2000, 20000, 2000, 20000, 'Crystalcore Devastator - Countercharge - random casting'),
(2004001, 2, 35035, 0, 1190, 0, 0, 100, 0, 17000, 28000, 30000, 40000, 'Crystalcore Devastator - Countercharge - self');

UPDATE `creature_template` SET `SpellList` = 2004001 WHERE `entry` = 20040;

-- Crystalcore Sentinel
DELETE FROM `creature_template_spells` WHERE `entry` = 20041;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004101, 'The Eye - Crystalcore Sentinel', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004101, 1, 37106, 0, -1, 2, 0, 100, 0, 24000, 35000, 24000, 35000, 'Crystalcore Sentinel - Arcane Explosion - self'),
(2004101, 2, 37104, 0, -1, 1, 0, 100, 0, 18000, 26000, 16000, 23000, 'Crystalcore Sentinel - Overcharge - current');

UPDATE `creature_template` SET `SpellList` = 2004101 WHERE `entry` = 20041;

-- Tempest-Smith
DELETE FROM `creature_template_spells` WHERE `entry` = 20042;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004201, 'The Eye - Tempest-Smith', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004201, 1, 37112, 0, -1, 6, 0, 100, 0, 12000, 20000, 16000, 24000, 'Tempest-Smith - Power Up - friendly missing buff skip self'),
(2004201, 2, 37118, 0, -1, 101, 0, 100, 0, 4000, 12000, 4000, 12000, 'Tempest-Smith - Shell Shock - random non tank'),
(2004201, 3, 37120, 0, -1, 100, 0, 100, 0, 0, 7000, 1000, 8000, 'Tempest-Smith - Fragmentation Bomb - random');

UPDATE `creature_template` SET `SpellList` = 2004201 WHERE `entry` = 20042;


-- Crystalcore Mechanic
DELETE FROM `creature_template_spells` WHERE `entry` = 20052;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2005201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2005201, 'The Eye - Crystalcore Mechanic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2005201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2005201, 1, 37121, 0, -1, 207, 0, 100, 0, 10000, 10000, 10000, 10000, 'Crystalcore Mechanic - Recharge - friendly missing 25% exclude self'),
(2005201, 2, 37123, 0, -1, 100, 0, 100, 0, 8000, 14000, 9000, 13000, 'Crystalcore Mechanic - Saw Blade - random');

UPDATE `creature_template` SET `SpellList` = 2005201 WHERE `entry` = 20052;


-- Astromancer Lord
DELETE FROM `creature_template_spells` WHERE `entry` = 20046;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004601, 'The Eye - Astromancer Lord', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004601, 1, 37289, 0, -1, 1, 0, 100, 0, 7000, 18000, 19000, 28000, 'Astromancer Lord - Dragon''s Breath - current'),
(2004601, 2, 37110, 0, -1, 1, 0, 100, 0, 12000, 22000, 14000, 24000, 'Astromancer Lord - Fire Blast - current'),
(2004601, 3, 37109, 0, -1, 1, 0, 100, 0, 6000, 18000, 11000, 24000, 'Astromancer Lord - Fireball Volley - current');

UPDATE `creature_template` SET `SpellList` = 2004601 WHERE `entry` = 20046;

-- Apprentice Star Scryer
DELETE FROM `creature_template_spells` WHERE `entry` = 20043;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004301, 'The Eye - Apprentice Star Scryer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004301, 1, 37133, 0, -1, 1, 0, 100, 0, 11000, 20000, 11000, 20000, 'Apprentice Star Scryer - Arcane Buffet - current'),
(2004301, 2, 37132, 0, -1, 100, 0, 100, 0, 10000, 18000, 10000, 18000, 'Apprentice Star Scryer - Arcane Shock - random'),
(2004301, 3, 38725, 0, -1, 2, 0, 100, 0, 5000, 13000, 11000, 21000, 'Apprentice Star Scryer - Arcane Explosion - self'),
(2004301, 4, 37129, 0, -1, 1, 0, 100, 0, 6000, 12000, 11000, 17000, 'Apprentice Star Scryer - Arcane Volley - current');

UPDATE `creature_template` SET `SpellList` = 2004301 WHERE `entry` = 20043;


-- Novice Astromancer
DELETE FROM `creature_template_spells` WHERE `entry` = 20044;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004401, 'The Eye - Novice Astromancer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004401, 1, 37279, 0, -1, 100, 0, 100, 0, 6000, 14000, 11000, 17000, 'Novice Astromancer - Rain of Fire - random'),
(2004401, 2, 38728, 0, -1, 1, 0, 100, 0, 11000, 20000, 11000, 20000, 'Novice Astromancer - Fire Nova - current'),
(2004401, 3, 37111, 0, -1, 12, 0, 100, 0, 6000, 12000, 6000, 12000, 'Novice Astromancer - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 2004401 WHERE `entry` = 20044;

-- Nether Scryer
DELETE FROM `creature_template_spells` WHERE `entry` = 20045;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004501, 'The Eye - Nether Scryer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004501, 1, 37135, 0, -1, 100, 0, 100, 0, 6000, 12000, 16000, 22000, 'Nether Scryer - Domination - random'),
(2004501, 2, 37126, 0, -1, 100, 0, 100, 0, 5000, 14000, 5000, 14000, 'Nether Scryer - Arcane Blast - random');

UPDATE `creature_template` SET `SpellList` = 2004501 WHERE `entry` = 20045;

-- Crimson Hand Battle Mage
DELETE FROM `creature_template_spells` WHERE `entry` = 20047;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004701, 'The Eye - Crimson Hand Battle Mage', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004701, 1, 37265, 0, -1, 1, 0, 100, 0, 5000, 18000, 9000, 24000, 'Crimson Hand Battle Mage - Cone of Cold - current'),
(2004701, 2, 37263, 0, -1, 1, 0, 100, 0, 5000, 16000, 10000, 25000, 'Crimson Hand Battle Mage - Blizzard - current'),
(2004701, 3, 37262, 0, -1, 1, 0, 100, 0, 11000, 23000, 12000, 27000, 'Crimson Hand Battle Mage - Frostbolt Volley - current');

UPDATE `creature_template` SET `SpellList` = 2004701 WHERE `entry` = 20047;

-- Crimson Hand Centurion
DELETE FROM `creature_template_spells` WHERE `entry` = 20048;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004801, 'The Eye - Crimson Hand Centurion', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004801, 1, 37268, 0, -1, 2, 0, 100, 0, 8000, 22000, 11000, 28000, 'Crimson Hand Centurion - Arcane Flurry - self');

UPDATE `creature_template` SET `SpellList` = 2004801 WHERE `entry` = 20048;

-- Crimson Hand Blood Knight
DELETE FROM `creature_template_spells` WHERE `entry` = 20049;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2004901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2004901, 'The Eye - Crimson Hand Blood Knight', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2004901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2004901, 1, 37259, 0, -1, 100, 0, 100, 0, 2000, 8000, 4000, 14000, 'Crimson Hand Blood Knight - Hammer of Wrath - random'),
(2004901, 2, 37257, 0, -1, 201, 0, 100, 0, 3000, 12000, 3000, 12000, 'Crimson Hand Blood Knight - Flash of Light - missing 50% including self'),
(2004901, 3, 37260, 0, -1, 200, 0, 100, 0, 1000, 8000, 2000, 10000, 'Crimson Hand Blood Knight - Renew - missing 10% including self'),
(2004901, 4, 39078, 0, -1, 3, 0, 100, 0, 2000, 12000, 2000, 12000, 'Crimson Hand Blood Knight - Cleanse - eligible friendly dispel'),
(2004901, 5, 39077, 0, -1, 1, 0, 100, 0, 3000, 13000, 7000, 18000, 'Crimson Hand Blood Knight - Hammer of Justice - current');

UPDATE `creature_template` SET `SpellList` = 2004901 WHERE `entry` = 20049;


-- Crimson Hand Inquisitor
DELETE FROM `creature_template_spells` WHERE `entry` = 20050;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2005001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2005001, 'The Eye - Crimson Hand Inquisitor', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2005001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2005001, 1, 37274, 0, -1, 2, 0, 100, 0, 16000, 28000, 21000, 32000, 'Crimson Hand Inquisitor - Power Infusion - self'),
(2005001, 2, 37275, 0, -1, 100, 0, 100, 0, 3000, 18000, 3000, 18000, 'Crimson Hand Inquisitor - Shadow Word: Pain - random'),
(2005001, 3, 37276, 0, -1, 1, 0, 100, 0, 0, 8000, 1000, 9000, 'Crimson Hand Inquisitor - Mind Flay - current');

UPDATE `creature_template` SET `SpellList` = 2005001 WHERE `entry` = 20050;
