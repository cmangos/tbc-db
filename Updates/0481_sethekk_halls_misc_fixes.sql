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

-- Sethekk Oracle
DELETE FROM `creature_template_spells` WHERE `entry` = 18328;
DELETE FROM `creature_template_spells` WHERE `entry` = 20694;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1832801, 2069401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1832801, 'Sethekk Halls - Sethekk Oracle - Normal', 0, 0),
(2069401, 'Sethekk Halls - Sethekk Oracle - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1832801, 2069401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1832801, 1, 32129, 0, -1, 1, 0, 100, 0, 5000, 24000, 8000, 27000, 'Sethekk Oracle - Faerie Fire - current'),
(1832801, 2, 32690, 0, -1, 1, 0, 100, 0, 7000, 17000, 17000, 27000, 'Sethekk Oracle - Arcane Lightning - current'),

(2069401, 1, 32129, 0, -1, 1, 0, 100, 0, 5000, 24000, 8000, 27000, 'Sethekk Oracle - Faerie Fire - current'),
(2069401, 2, 38146, 0, -1, 1, 0, 100, 0, 7000, 17000, 17000, 27000, 'Sethekk Oracle - Arcane Lightning - current');

UPDATE `creature_template` SET `SpellList` = 1832801 WHERE `entry` = 18328;
UPDATE `creature_template` SET `SpellList` = 2069401 WHERE `entry` = 20694;


-- Cobalt Serpent
DELETE FROM `creature_template_spells` WHERE `entry` = 19428;
DELETE FROM `creature_template_spells` WHERE `entry` = 20688;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1942801, 2068801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1942801, 'Sethekk Halls - Cobalt Serpent - Normal', 0, 0),
(2068801, 'Sethekk Halls - Cobalt Serpent - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1942801, 2068801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1942801, 1, 38110, 0, -1, 1, 0, 100, 0, 6000, 19000, 12000, 25000, 'Cobalt Serpent - Wing Buffet - current'),
(1942801, 2, 17503, 0, -1, 1, 0, 100, 0, 8000, 25000, 12000, 29000, 'Cobalt Serpent - Frostbolt - current'),
(1942801, 3, 38193, 0, -1, 1, 0, 100, 0, 3000, 16000, 7000, 20000, 'Cobalt Serpent - Lightning Breath - current'),

(2068801, 1, 38110, 0, -1, 1, 0, 100, 0, 6000, 19000, 12000, 25000, 'Cobalt Serpent - Wing Buffet - current'),
(2068801, 2, 38238, 0, -1, 1, 0, 100, 0, 8000, 25000, 12000, 29000, 'Cobalt Serpent - Frostbolt - current'),
(2068801, 3, 38133, 0, -1, 1, 0, 100, 0, 3000, 16000, 7000, 20000, 'Cobalt Serpent - Lightning Breath - current');


UPDATE `creature_template` SET `SpellList` = 1942801 WHERE `entry` = 19428;
UPDATE `creature_template` SET `SpellList` = 2068801 WHERE `entry` = 20688;

-- Avian Ripper
DELETE FROM `creature_template_spells` WHERE `entry` = 21891;
DELETE FROM `creature_template_spells` WHERE `entry` = 21989;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2189101, 2198901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2189101, 'Sethekk Halls - Avian Ripper - Normal', 0, 0),
(2198901, 'Sethekk Halls - Avian Ripper - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (2189101, 2198901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2189101, 1, 38056, 0, -1, 1, 0, 100, 0, 5000, 18000, 8000, 21000, 'Avian Ripper - Flesh Rip - current'),
(2198901, 1, 38056, 0, -1, 1, 0, 100, 0, 5000, 18000, 8000, 21000, 'Avian Ripper - LFlesh Rip - current');


UPDATE `creature_template` SET `SpellList` = 2189101 WHERE `entry` = 21891;
UPDATE `creature_template` SET `SpellList` = 2198901 WHERE `entry` = 21989;

-- Sethekk Ravenguard 
DELETE FROM `creature_template_spells` WHERE `entry` = 18322;
DELETE FROM `creature_template_spells` WHERE `entry` = 20696;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1832201, 2069601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1832201, 'Sethekk Halls - Sethekk Ravenguard  - Normal', 0, 0),
(2069601, 'Sethekk Halls - Sethekk Ravenguard  - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1832201, 2069601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1832201, 1, 32651, 0, -1, 2, 0, 100, 0, 6000, 25000, 17000, 28000, 'Sethekk Ravenguard - Howling Screech - self'),
(1832201, 2, 33964, 0, -1, 1, 0, 100, 0, 5000, 17000, 11000, 25000, 'Sethekk Ravenguard - Bloodthirst - current'),

(2069601, 1, 32651, 0, -1, 2, 0, 100, 0, 6000, 25000, 17000, 28000, 'Sethekk Ravenguard - Howling Screech - self'),
(2069601, 2, 40423, 0, -1, 1, 0, 100, 0, 5000, 17000, 11000, 25000, 'Sethekk Ravenguard - Bloodthirst - current');

UPDATE `creature_template` SET `SpellList` = 1832201 WHERE `entry` = 18322;
UPDATE `creature_template` SET `SpellList` = 2069601 WHERE `entry` = 20696;

-- Time-Lost Scryer 
DELETE FROM `creature_template_spells` WHERE `entry` = 18319;
DELETE FROM `creature_template_spells` WHERE `entry` = 20696;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1831901, 2069701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1831901, 'Sethekk Halls - Time-Lost Scryer  - Normal', 0, 0),
(2069701, 'Sethekk Halls - Time-Lost Scryer  - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1831901, 2069701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1831901, 1, 12160, 0, -1, 201, 0, 100, 0, 2000, 12000, 10000, 22000, 'Time-Lost Scryer - Rejuvenation - Missing 50% including self'),
(1831901, 2, 17843, 0, -1, 206, 0, 100, 0, 4000, 14000, 8000, 18000, 'Time-Lost Scryer - Flash Heal - Missing 25% including self'),
(1831901, 3, 22272, 0, -1, 1, 0, 100, 0, 5000, 22000, 8000, 25000, 'Time-Lost Scryer - Arcane Missiles - current'),

(2069701, 1, 15981, 0, -1, 201, 0, 100, 0, 2000, 12000, 10000, 22000, 'Time-Lost Scryer - Rejuvenation - Missing 50% including self'),
(2069701, 2, 17138, 0, -1, 206, 0, 100, 0, 4000, 14000, 8000, 18000, 'Time-Lost Scryer - Flash Heal - Missing 25% including self'),
(2069701, 3, 33988, 0, -1, 1, 0, 100, 0, 5000, 22000, 8000, 25000, 'Time-Lost Scryer - Arcane Missiles - current');

UPDATE `creature_template` SET `SpellList` = 1831901 WHERE `entry` = 18319;
UPDATE `creature_template` SET `SpellList` = 2069701 WHERE `entry` = 20697;
