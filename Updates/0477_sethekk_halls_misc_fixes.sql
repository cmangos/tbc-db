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
(2198901, 1, 38056, 0, -1, 1, 0, 100, 0, 5000, 18000, 8000, 21000, 'Avian Ripper - Flesh Rip - current');


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
(1831901, 1, 32689, 0, -1, 5, 0, 100, 0, 0, 5000, 5000, 10000, 'Time-Lost Scryer - Arcane Destruction - eligible friendly missing buff'),
(1831901, 2, 12160, 0, -1, 201, 0, 100, 0, 2000, 12000, 10000, 22000, 'Time-Lost Scryer - Rejuvenation - Missing 50% including self'),
(1831901, 3, 17843, 0, -1, 206, 0, 100, 0, 4000, 14000, 8000, 18000, 'Time-Lost Scryer - Flash Heal - Missing 25% including self'),
(1831901, 4, 22272, 0, -1, 1, 0, 100, 0, 5000, 22000, 8000, 25000, 'Time-Lost Scryer - Arcane Missiles - current'),

(2069701, 1, 32689, 0, -1, 5, 0, 100, 0, 0, 5000, 5000, 10000, 'Time-Lost Scryer - Arcane Destruction - eligible friendly missing buff'),
(2069701, 2, 15981, 0, -1, 201, 0, 100, 0, 2000, 12000, 10000, 22000, 'Time-Lost Scryer - Rejuvenation - Missing 50% including self'),
(2069701, 3, 17138, 0, -1, 206, 0, 100, 0, 4000, 14000, 8000, 18000, 'Time-Lost Scryer - Flash Heal - Missing 25% including self'),
(2069701, 4, 33988, 0, -1, 1, 0, 100, 0, 5000, 22000, 8000, 25000, 'Time-Lost Scryer - Arcane Missiles - current');

UPDATE `creature_template` SET `SpellList` = 1831901 WHERE `entry` = 18319;
UPDATE `creature_template` SET `SpellList` = 2069701 WHERE `entry` = 20697;


-- Avian Warhawk
DELETE FROM `creature_template_spells` WHERE `entry` = 21904;
DELETE FROM `creature_template_spells` WHERE `entry` = 21990;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2190401, 2199001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2190401, 'Sethekk Halls - Avian Warhawk - Normal', 0, 0),
(2199001, 'Sethekk Halls - Avian Warhawk - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (2190401, 2199001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2190401, 1, 38059, 0, -1, 100, 0, 100, 0, 5000, 23000, 12000, 30000, 'Avian Warhawk - Sonic Charge - random'),
(2190401, 2, 32901, 0, -1, 1, 0, 100, 0, 6000, 24000, 11000, 26000, 'Avian Warhawk - Carnivorous Bite - current'),
(2190401, 3, 18144, 0, -1, 1, 0, 100, 0, 7000, 26000, 12000, 32000, 'Avian Warhawk - Swoop - current'),

(2199001, 1, 39197, 0, -1, 100, 0, 100, 0, 5000, 23000, 12000, 30000, 'Avian Warhawk - Sonic Charge - random'),
(2199001, 2, 39198, 0, -1, 1, 0, 100, 0, 6000, 24000, 11000, 26000, 'Avian Warhawk - Carnivorous Bite - current'),
(2199001, 3, 18144, 0, -1, 1, 0, 100, 0, 7000, 26000, 12000, 32000, 'Avian Warhawk - Swoop - current');

UPDATE `creature_template` SET `SpellList` = 2190401 WHERE `entry` = 21904;
UPDATE `creature_template` SET `SpellList` = 2199001 WHERE `entry` = 21990;

-- Sethekk Prophet
DELETE FROM `creature_template_spells` WHERE `entry` = 18325;
DELETE FROM `creature_template_spells` WHERE `entry` = 20695;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1832501, 2069501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1832501, 'Sethekk Halls - Sethekk Prophet - Normal', 0, 0),
(2069501, 'Sethekk Halls - Sethekk Prophet - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1832501, 2069501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1832501, 1, 27641, 0, -1, 100, 0, 100, 0, 10000, 30000, 10000, 30000, 'Sethekk Prophet - Fear - random'),
(2069501, 1, 27641, 0, -1, 100, 0, 100, 0, 10000, 30000, 10000, 30000, 'Sethekk Prophet - Fear - random');

UPDATE `creature_template` SET `SpellList` = 1832501 WHERE `entry` = 18325;
UPDATE `creature_template` SET `SpellList` = 2069501 WHERE `entry` = 20695;

-- Sethekk Talon Lord
DELETE FROM `creature_template_spells` WHERE `entry` = 18321;
DELETE FROM `creature_template_spells` WHERE `entry` = 20701;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1832101, 2070101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1832101, 'Sethekk Halls - Sethekk Talon Lord - Normal', 0, 0),
(2070101, 'Sethekk Halls - Sethekk Talon Lord - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1832101, 2070101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1832101, 1, 32674, 0, -1, 132, 0, 100, 0, 0, 5000, 11000, 21000, 'Sethekk Talon Lord - Avengers Shield - top aggro not in melee range'),
(1832101, 2, 32654, 0, -1, 1, 0, 100, 0, 6000, 21000, 11000, 26000, 'Sethekk Talon Lord - Talon of Justice - current'),

(2070101, 1, 32674, 0, -1, 132, 0, 100, 0, 0, 5000, 11000, 21000, 'Sethekk Talon Lord - Avengers Shield - top aggro not in melee range'),
(2070101, 2, 32654, 0, -1, 1, 0, 100, 0, 6000, 21000, 11000, 26000, 'Sethekk Talon Lord - Talon of Justice - current');

UPDATE `creature_template` SET `SpellList` = 1832101 WHERE `entry` = 18321;
UPDATE `creature_template` SET `SpellList` = 2070101 WHERE `entry` = 20701;


DELETE FROM creature_spell_targeting WHERE Id = 132;
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `Comments`) VALUES ('132', '1', '1', '0', '128', 'Attack - top aggro not in melee range');



-- Sethekk Shaman
DELETE FROM `creature_template_spells` WHERE `entry` = 18326;
DELETE FROM `creature_template_spells` WHERE `entry` = 20699;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1832601, 2069901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1832601, 'Sethekk Halls - Sethekk Shaman - Normal', 0, 0),
(2069901, 'Sethekk Halls - Sethekk Shaman - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1832601, 2069901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1832601, 1, 32663, 0, -1, 0, 0, 100, 0, 11000, 16000, 90000, 90000, 'Sethekk Shaman - Summon Dark Vortex - none'),
(1832601, 2, 15501, 0, -1, 1, 0, 100, 0, 6000, 16000, 6000, 16000, 'Sethekk Shaman - Earth Shock - current'),

(2069901, 1, 32663, 0, -1, 0, 0, 100, 0, 11000, 16000, 90000, 90000, 'Sethekk Shaman - Summon Dark Vortex - none'),
(2069901, 2, 22885, 0, -1, 1, 0, 100, 0, 6000, 16000, 6000, 16000, 'Sethekk Shaman - Earth Shock - current');

UPDATE `creature_template` SET `SpellList` = 1832601 WHERE `entry` = 18326;
UPDATE `creature_template` SET `SpellList` = 2069901 WHERE `entry` = 20699;

-- Dark Vortex
DELETE FROM `creature_template_spells` WHERE `entry` = 18701;
DELETE FROM `creature_template_spells` WHERE `entry` = 20689;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1870101, 2068901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1870101, 'Sethekk Halls - Dark Vortex - Normal', 0, 0),
(2068901, 'Sethekk Halls - Dark Vortex - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1870101, 2068901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1870101, 1, 12471, 0, -1, 1, 0, 100, 0, 8000, 18000, 8000, 18000, 'Dark Vortex - Shadow Bolt - current'),
(2068901, 1, 12471, 0, -1, 1, 0, 100, 0, 8000, 18000, 8000, 18000, 'Dark Vortex - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1870101 WHERE `entry` = 18701;
UPDATE `creature_template` SET `SpellList` = 2068901 WHERE `entry` = 20689;


-- Time-Lost Shadowmage
DELETE FROM `creature_template_spells` WHERE `entry` = 18320;
DELETE FROM `creature_template_spells` WHERE `entry` = 20698;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1832001, 2069801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1832001, 'Sethekk Halls - Time-Lost Shadowmage - Normal', 0, 0),
(2069801, 'Sethekk Halls - Time-Lost Shadowmage - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1832001, 2069801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1832001, 1, 32682, 0, -1, 130, 0, 100, 0, 10000, 30000, 10000, 30000, 'Time-Lost Shadowmage - Curse of the Dark Talon -  top aggro aura not present'),
(1832001, 2, 32675, 0, -1, 100, 0, 100, 0, 6000, 24000, 10000, 28000, 'Time-Lost Shadowmage - Shadow Missiles - random'),

(2069801, 1, 38149, 0, -1, 130, 0, 100, 0, 10000, 30000, 10000, 30000, 'Time-Lost Shadowmage - Curse of the Dark Talon -  top aggro aura not present'),
(2069801, 2, 32675, 0, -1, 100, 0, 100, 0, 6000, 24000, 10000, 28000, 'Time-Lost Shadowmage - Shadow Missiles - random');

UPDATE `creature_template` SET `SpellList` = 1832001 WHERE `entry` = 18320;
UPDATE `creature_template` SET `SpellList` = 2069801 WHERE `entry` = 20698;


-- Syth Fire Elemental
DELETE FROM `creature_template_spells` WHERE `entry` = 19203;
DELETE FROM `creature_template_spells` WHERE `entry` = 20703;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1920301, 2070301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1920301, 'Sethekk Halls - Syth Fire Elemental - Normal', 0, 0),
(2070301, 'Sethekk Halls - Syth Fire Elemental - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1920301, 2070301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1920301, 1, 33526, 0, -1, 1, 0, 100, 0, 2000, 11000, 2000, 11000, 'Syth Fire Elemental - Flame Buffet - current'),
(2070301, 1, 38141, 0, -1, 1, 0, 100, 0, 2000, 11000, 2000, 11000, 'Syth Fire Elemental - Flame Buffet - current');


UPDATE `creature_template` SET `SpellList` = 1920301 WHERE `entry` = 19203;
UPDATE `creature_template` SET `SpellList` = 2070301 WHERE `entry` = 20703;

-- Syth Frost Elemental
DELETE FROM `creature_template_spells` WHERE `entry` = 19204;
DELETE FROM `creature_template_spells` WHERE `entry` = 20704;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1920401, 2070401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1920401, 'Sethekk Halls - Syth Frost Elemental - Normal', 0, 0),
(2070401, 'Sethekk Halls - Syth Frost Elemental - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1920401, 2070401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1920401, 1, 33528, 0, -1, 1, 0, 100, 0, 5000, 18000, 6000, 20000, 'Syth Frost Elemental - Frost Buffet - current'),
(2070401, 1, 38142, 0, -1, 1, 0, 100, 0, 5000, 18000, 6000, 20000, 'Syth Frost Elemental - Frost Buffet - current');


UPDATE `creature_template` SET `SpellList` = 1920401 WHERE `entry` = 19204;
UPDATE `creature_template` SET `SpellList` = 2070401 WHERE `entry` = 20704;

-- Syth Arcane Elemental
DELETE FROM `creature_template_spells` WHERE `entry` = 19205;
DELETE FROM `creature_template_spells` WHERE `entry` = 20702;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1920501, 2070201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1920501, 'Sethekk Halls - Syth Arcane Elemental - Normal', 0, 0),
(2070201, 'Sethekk Halls - Syth Arcane Elemental - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1920501, 2070201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1920501, 1, 33527, 0, -1, 1, 0, 100, 0, 5000, 14000, 8000, 17000, 'Syth Arcane Elemental - Arcane Buffet - current'),
(2070201, 1, 38138, 0, -1, 1, 0, 100, 0, 5000, 14000, 8000, 17000, 'Syth Arcane Elemental - Arcane Buffet - current');

UPDATE `creature_template` SET `SpellList` = 1920501 WHERE `entry` = 19205;
UPDATE `creature_template` SET `SpellList` = 2070201 WHERE `entry` = 20702;

-- Syth Shadow Elemental
DELETE FROM `creature_template_spells` WHERE `entry` = 19206;
DELETE FROM `creature_template_spells` WHERE `entry` = 20705;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1920601, 2070501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1920601, 'Sethekk Halls - Syth Shadow Elemental - Normal', 0, 0),
(2070501, 'Sethekk Halls - Syth Shadow Elemental - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1920601, 2070501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1920601, 1, 33529, 0, -1, 1, 0, 100, 0, 5000, 15000, 6000, 16000, 'Syth Shadow Elemental - Shadow Buffet - current'),
(2070501, 1, 38143, 0, -1, 1, 0, 100, 0, 5000, 15000, 6000, 16000, 'Syth Shadow Elemental - Shadow Buffet - current');

UPDATE `creature_template` SET `SpellList` = 1920601 WHERE `entry` = 19206;
UPDATE `creature_template` SET `SpellList` = 2070501 WHERE `entry` = 20705;



-- Fix Gossip from Lakka
DELETE FROM npc_text_broadcast_text WHERE Id IN (16052, 16053);
INSERT INTO npc_text_broadcast_text (`Id`, `Prob0`, `BroadcastTextId0`) VALUES 
(16052, 1, 16052), -- Please, $r, get me out of here! Unlocking the cage will surely attract my brother's attention. Kill Darkweaver Syth!
(16053, 1, 16053); -- Now's our chance! Let me out of this cage!

-- Sniffed Values
-- GossipID: 6953
-- GossipID: 6952
DELETE FROM gossip_menu WHERE entry IN (7867, 7868);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7867, 16052, 0, 0), -- Gossip when Darkweaver Syth is alive
(7868, 16053, 0, 0); -- Gossip when Darkweaver Syth is Dead changed via db script

UPDATE creature_template SET GossipMenuId = 7867 WHERE entry = 18956;

-- Confirmed from ptr: player dont need to have Quest to free Lakka
UPDATE gossip_menu_option SET condition_id = '0' WHERE menu_id = '7868' AND id = '0';
DELETE FROM conditions WHERE condition_entry = 1013;
