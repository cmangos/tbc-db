-- ---------------------------
-- Movement Corrections
-- ---------------------------

-- Cabal Acolyte
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18633, 20638);
-- Cabal Deathsworn
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18635, 20641);

-- Cabal Familiar
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18641, 20643);

-- Fel Guardhound
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18642, 20651);

-- Fel Overseer
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18796, 20652);

-- Malicious Instructor
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18848, 20656);

-- Cabal Zealot
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18638, 20650);

-- Cabal Fanatic
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18830, 20644);


-- -----------
-- SpellLists
-- -----------

-- Cabal Acolyte
DELETE FROM `creature_template_spells` WHERE `entry` IN (18633, 20638);
DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1863301, 2063801);

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1863301, 'Shadow Labyrinth - Cabal Acolye - Normal', 0, 0),
(2063801, 'Shadow Labyrinth - Cabal Acolye - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1863301, 2063801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1863301, 1, 12039, 0, -1, 201, 0, 100, 0, 4000, 12000, 12000, 22000, 'Cabal Acolyte - Heal - missing 50% incl self'),
(1863301, 2, 25058, 0, -1, 201, 0, 100, 0, 6000, 14000, 14000, 24000, 'Cabal Acolyte - Renew - missing 50% incl self'),
(2063801, 1, 38209, 0, -1, 201, 0, 100, 0, 4000, 12000, 12000, 22000, 'Cabal Acolyte - Heal - missing 50% incl self'),
(2063801, 2, 38210, 0, -1, 201, 0, 100, 0, 6000, 14000, 14000, 24000, 'Cabal Acolyte - Renew - missing 50% incl self');

UPDATE `creature_template` SET `SpellList` = 1863301 WHERE `entry` = 18633;
UPDATE `creature_template` SET `SpellList` = 2063801 WHERE `entry` = 20638;

-- Cabal Deathsworn
DELETE FROM `creature_template_spells` WHERE `entry` IN (18635, 20641);
DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1863501, 2064101);

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1863501, 'Shadow Labyrinth - Cabal Deathsworn - Normal', 0, 0),
(2064101, 'Shadow Labyrinth - Cabal Deathsworn - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1863501, 2064101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1863501, 1, 11428, 0, -1, 1, 0, 100, 0, 10000, 23000, 11000, 25000, 'Cabal Deathsworn - Knockdown - current'),
(1863501, 2, 33480, 0, -1, 1, 0, 100, 0, 7000, 19000, 10000, 24000, 'Cabal Deathsworn - Black Cleave - current'),
(2064101, 1, 11428, 0, -1, 1, 0, 100, 0, 10000, 23000, 11000, 25000, 'Cabal Deathsworn - Knockdown - current'),
(2064101, 2, 38226, 0, -1, 1, 0, 100, 0, 7000, 19000, 10000, 24000, 'Cabal Deathsworn - Black Cleave - current');

UPDATE `creature_template` SET `SpellList` = 1863501 WHERE `entry` = 18635;
UPDATE `creature_template` SET `SpellList` = 2064101 WHERE `entry` = 20641;

-- Cabal Warlock
DELETE FROM `creature_template_spells` WHERE `entry` IN (18640, 20649);
DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1864001, 2064901);

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1864001, 'Shadow Labyrinth - Cabal Warlock - Normal', 0, 80),
(2064901, 'Shadow Labyrinth - Cabal Warlock - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1864001, 2064901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1864001, 1, 32863, 0, -1, 100, 0, 100, 0, 11000, 27000, 19000, 36000, 'Cabal Warlock - Seed of Corruption - random'),
(1864001, 2, 12471, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Warlock - Shadow Bolt - current'),
(2064901, 1, 38252, 0, -1, 100, 0, 100, 0, 11000, 27000, 19000, 36000, 'Cabal Warlock - Seed of Corruption - random'),
(2064901, 2, 15232, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Warlock - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1864001 WHERE `entry` = 18640;
UPDATE `creature_template` SET `SpellList` = 2064901 WHERE `entry` = 20649;

-- Cabal Familiar
DELETE FROM `creature_template_spells` WHERE `entry` IN (18641, 20643);
DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1864101, 2064301);

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1864101, 'Shadow Labyrinth - Cabal Familiar - Normal', 0, 90),
(2064301, 'Shadow Labyrinth - Cabal Familiar - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1864101, 2064301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1864101, 2, 20801, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Familiar - Firebolt - current'),
(2064301, 2, 38239, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Familiar - Firebolt - current');

UPDATE `creature_template` SET `SpellList` = 1864101 WHERE `entry` = 18641;
UPDATE `creature_template` SET `SpellList` = 2064301 WHERE `entry` = 20643;

-- Fel Guardhound
DELETE FROM `creature_template_spells` WHERE `entry` IN (18642, 20651);
DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1864201, 2065101);

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1864201, 'Shadow Labyrinth - Fel Guardhound - Normal', 0, 0),
(2065101, 'Shadow Labyrinth - Fel Guardhound - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1864201, 2065101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1864201, 2, 30849, 0, -1, 122, 0, 100, 0, 10000, 20000, 10000, 20000, 'Fel Guardhound - Spell Lock - random casting'),
(2065101, 2, 30849, 0, -1, 122, 0, 100, 0, 10000, 20000, 10000, 20000, 'Fel Guardhound - Spell Lock - random casting');

UPDATE `creature_template` SET `SpellList` = 1864201 WHERE `entry` = 18642;
UPDATE `creature_template` SET `SpellList` = 2065101 WHERE `entry` = 20651;


-- Cabal Ritualist
DELETE FROM `creature_template_spells` WHERE `entry` = 18794;
DELETE FROM `creature_template_spells` WHERE `entry` = 20645;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1879401, 1879402, 1879403, 1879404, 2064501, 2064502, 2064503, 2064504);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1879401, 'Shadow Labyrinth - Cabal Ritualist (Frost) - Normal', 0, 70),
(1879402, 'Shadow Labyrinth - Cabal Ritualist (Arcane) - Normal', 0, 70),
(1879403, 'Shadow Labyrinth - Cabal Ritualist (Fire) - Normal', 0, 0),
(1879404, 'Shadow Labyrinth - Cabal Ritualist (Melee) - Normal', 0, 0),
-- Heroic
(2064501, 'Shadow Labyrinth - Cabal Ritualist (Frost) - Heroic', 0, 70),
(2064502, 'Shadow Labyrinth - Cabal Ritualist (Arcane) - Heroic', 0, 70),
(2064503, 'Shadow Labyrinth - Cabal Ritualist (Fire) - Heroic', 0, 0),
(2064504, 'Shadow Labyrinth - Cabal Ritualist (Melee) - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1879401, 1879402, 1879403, 1879404, 2064501, 2064502, 2064503, 2064504);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Normal Frost
(1879401, 1, 17201, 0, -1, 6, 0, 100, 0, 2000, 12000, 8000, 18000, 'Cabal Ritualist - Dispel Magic - eligible friendly dispel not self'),
(1879401, 2, 15532, 0, -1, 109, 0, 100, 0, 11000, 18000, 11000, 18000, 'Cabal Ritualist - Frost Nova - random player in melee'),
(1879401, 3, 15497, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Ritualist - Frost Bolt - current'),
-- Heroic Frost
(2064501, 1, 17201, 0, -1, 6, 0, 100, 0, 2000, 12000, 8000, 18000, 'Cabal Ritualist - Dispel Magic - eligible friendly dispel not self'),
(2064501, 2, 15063, 0, -1, 109, 0, 100, 0, 11000, 18000, 11000, 18000, 'Cabal Ritualist - Frost Nova - random player in melee'),
(2064501, 3, 12675, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Ritualist - Frost Bolt - current'),
-- Normal Arcane
(1879402, 1, 17201, 0, -1, 6, 0, 100, 0, 2000, 12000, 8000, 18000, 'Cabal Ritualist - Dispel Magic - eligible friendly dispel not self'),
(1879402, 2, 33487, 0, -1, 100, 0, 100, 0, 4000, 16000, 6000, 18000, 'Cabal Ritualist - Addle Humanoid - random player'),
(1879402, 3, 33832, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Ritualist - Arcane Missiles - current'),
-- Heroic Arcane
(2064502, 1, 17201, 0, -1, 6, 0, 100, 0, 2000, 12000, 8000, 18000, 'Cabal Ritualist - Dispel Magic - eligible friendly dispel not self'),
(2064502, 2, 33487, 0, -1, 100, 0, 100, 0, 4000, 16000, 6000, 18000, 'Cabal Ritualist - Addle Humanoid - random player'),
(2064502, 3, 38263, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Ritualist - Arcane Missiles - current'),
-- Normal Fire
(1879403, 1, 17201, 0, -1, 6, 0, 100, 0, 2000, 12000, 8000, 18000, 'Cabal Ritualist - Dispel Magic - eligible friendly dispel not self'),
(1879403, 2, 20795, 0, -1, 1, 0, 100, 0, 9000, 23000, 10000, 24000, 'Cabal Ritualist - Fire Blast - current'),
(1879403, 3, 9574, 0, -1, 1, 0, 100, 0, 2000, 18000, 3000, 21000, 'Cabal Ritualist - Flame Buffet - current'),
-- Heroic Fire
(2064503, 1, 17201, 0, -1, 6, 0, 100, 0, 2000, 12000, 8000, 18000, 'Cabal Ritualist - Dispel Magic - eligible friendly dispel not self'),
(2064503, 2, 14145, 0, -1, 1, 0, 100, 0, 9000, 23000, 10000, 24000, 'Cabal Ritualist - Fire Blast - current'),
(2064503, 3, 9574, 0, -1, 2, 0, 100, 0, 0, 0, 0, 0, 'Cabal Ritualist - Flame Buffet - current'),
-- Normal Melee
(1879404, 1, 17201, 0, -1, 6, 0, 100, 0, 2000, 12000, 8000, 18000, 'Cabal Ritualist - Dispel Magic - eligible friendly dispel not self'),
(1879404, 2, 12540, 0, -1, 100, 0, 100, 0, 6000, 16000, 10000, 18000, 'Cabal Ritualist - Gouge - random player'),
-- Heroic Melee
(2064504, 1, 17201, 0, -1, 6, 0, 100, 0, 2000, 12000, 8000, 18000, 'Cabal Ritualist - Dispel Magic - eligible friendly dispel not self'),
(2064504, 2, 12540, 0, -1, 100, 0, 100, 0, 6000, 16000, 10000, 18000, 'Cabal Ritualist - Gouge - random player');


-- Fel Overseer
DELETE FROM `creature_template_spells` WHERE `entry` IN (18796, 20652);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1879601, 2065201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1879601, 'Shadow Labyrinth - Fel Overseer - Normal', 0, 0),
(2065201, 'Shadow Labyrinth - Fel Overseer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1879601, 2065201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1879601, 1, 27577, 0, -1, 132, 0, 100, 0, 3000, 9000, 12000, 25000, 'Fel Overseer - Intercept - top aggro not in melee range'),
(1879601, 2, 29544, 0, -1, 1, 0, 100, 0, 6000, 16000, 21000, 28000, 'Fel Overseer - Frightening Shout - current'),
(1879601, 3, 30471, 0, -1, 1, 0, 100, 0, 10000, 26000, 16000, 28000, 'Fel Overseer - Uppercut - current'),

(2065201, 1, 16856, 0, -1, 1, 0, 100, 0, 10000, 16000, 16000, 21000, 'Fel Overseer - Mortal Strike - current'),
(2065201, 2, 29544, 0, -1, 1, 0, 100, 0, 6000, 16000, 21000, 28000, 'Fel Overseer - Frightening Shout - current'),
(2065201, 3, 30471, 0, -1, 1, 0, 100, 0, 10000, 26000, 16000, 28000, 'Fel Overseer - Uppercut - current');

UPDATE `creature_template` SET `SpellList` = 1879601 WHERE `entry` = 18796;
UPDATE `creature_template` SET `SpellList` = 2065201 WHERE `entry` = 20652;

-- Cabal Cultist
DELETE FROM `creature_template_spells` WHERE `entry` IN (18631, 20640);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1863101, 2064001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1863101, 'Shadow Labyrinth - Cabal Cultist - Normal', 0, 0),
(2064001, 'Shadow Labyrinth - Cabal Cultist - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1863101, 2064001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1863101, 1, 15614, 0, -1, 122, 0, 100, 0, 2000, 10000, 10000, 18000, 'Cabal Cultist - Kick - target casting'),
(2064001, 1, 15614, 0, -1, 122, 0, 100, 0, 2000, 10000, 10000, 18000, 'Cabal Cultist - Kick - target casting');

UPDATE `creature_template` SET `SpellList` = 1863101 WHERE `entry` = 18631;
UPDATE `creature_template` SET `SpellList` = 2064001 WHERE `entry` = 20640;


-- Cabal Shadow Priest
DELETE FROM `creature_template_spells` WHERE `entry` IN (18637, 20646);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1863701, 2064601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1863701, 'Shadow Labyrinth - Cabal Shadow Priest - Normal', 0, 0),
(2064601, 'Shadow Labyrinth - Cabal Shadow Priest - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1863701, 2064601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1863701, 1, 14032, 0, -1, 130, 0, 100, 0, 2000, 18000, 2000, 18000, 'Cabal Shadow Priest - Shadow Word: Pain - top aggro aura not present'),
(1863701, 2, 17165, 0, -1, 122, 0, 100, 0, 3000, 20000, 3000, 20000, 'Cabal Shadow Priest - Mind Flay - current'),

(2064601, 1, 17146, 0, -1, 130, 0, 100, 0, 2000, 18000, 2000, 18000, 'Cabal Shadow Priest - Shadow Word: Pain - top aggro aura not present'),
(2064601, 2, 38243, 0, -1, 122, 0, 100, 0, 3000, 20000, 3000, 20000, 'Cabal Shadow Priest - Mind Flay - current');

UPDATE `creature_template` SET `SpellList` = 1863101 WHERE `entry` = 18637;
UPDATE `creature_template` SET `SpellList` = 2064601 WHERE `entry` = 20646;

-- Maiden of Discipline
DELETE FROM `creature_template_spells` WHERE `entry` IN (18663, 20655);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1866301, 2065501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1866301, 'Shadow Labyrinth - Maiden of Discipline - Normal', 0, 0),
(2065501, 'Shadow Labyrinth - Maiden of Discipline - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1866301, 2065501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1866301, 1, 31865, 0, -1, 101, 0, 100, 0, 6000, 16000, 11000, 22000, 'Maiden of Discipline - Seduction - random player non tank'),
(1866301, 2, 32202, 0, -1, 1, 0, 100, 0, 3000, 15000, 9000, 21000, 'Maiden of Discipline - Lash of Pain - current'),

(2065501, 1, 31865, 0, -1, 101, 0, 100, 0, 6000, 16000, 11000, 22000, 'Maiden of Discipline - Shadow Word: Pain - top aggro aura not present'),
(2065501, 2, 32202, 0, -1, 1, 0, 100, 0, 3000, 15000, 9000, 21000, 'Maiden of Discipline - Mind Flay - current');

UPDATE `creature_template` SET `SpellList` = 1866301 WHERE `entry` = 18663;
UPDATE `creature_template` SET `SpellList` = 2065501 WHERE `entry` = 20655;


-- Malicious Instructor
DELETE FROM `creature_template_spells` WHERE `entry` IN (18848, 20656);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1884801, 2065601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1884801, 'Shadow Labyrinth - Malicious Instructor - Normal', 0, 0),
(2065601, 'Shadow Labyrinth - Malicious Instructor - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1884801, 2065601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1884801, 1, 33493, 0, -1, 1, 0, 100, 0, 6000, 21000, 17000, 28000, 'Malicious Instructor - Mark of Malice - current'),
(1884801, 2, 33501, 0, -1, 2, 0, 100, 0, 7000, 22000, 8000, 23000, 'Malicious Instructor - Shadow Nova - self'),

(2065601, 1, 6713, 0, -1, 101, 0, 100, 0, 11000, 27000, 11000, 27000, 'Malicious Instructor - Disarm - top aggro aura not present'),
(2065601, 2, 33493, 0, -1, 1, 0, 100, 0, 6000, 21000, 17000, 28000, 'Malicious Instructor - Mark of Malice - current'),
(2065601, 3, 33501, 0, -1, 2, 0, 100, 0, 7000, 22000, 8000, 23000, 'Malicious Instructor - Shadow Nova - self');

UPDATE `creature_template` SET `SpellList` = 1884801 WHERE `entry` = 18848;
UPDATE `creature_template` SET `SpellList` = 2065601 WHERE `entry` = 20656;

-- Cabal Zealot
DELETE FROM `creature_template_spells` WHERE `entry` IN (18638, 20650);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1863801, 2065001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1863801, 'Shadow Labyrinth - Cabal Zealot - Normal', 0, 90),
(2065001, 'Shadow Labyrinth - Cabal Zealot - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1863801, 2065001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1863801, 1, 12471, 2, 1034, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Zealot - Shadow Bolt - current'),
(2065001, 1, 15472, 2, 1034, 1, 0, 100, 0, 0, 0, 0, 0, 'Cabal Zealot - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1863801 WHERE `entry` = 18638;
UPDATE `creature_template` SET `SpellList` = 2065001 WHERE `entry` = 20650;

-- Cabal Fanatic
DELETE FROM `creature_template_spells` WHERE `entry` IN (18830, 20644);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1883001, 2064401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1883001, 'Shadow Labyrinth - Cabal Fanatic - Normal', 0, 0),
(2064401, 'Shadow Labyrinth - Cabal Fanatic - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1883001, 2064401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1883001, 1, 12021, 0, -1, 100, 0, 100, 0, 8000, 16000, 12000, 25000, 'Cabal Fanatic - Fixate - random player'),
(2064401, 1, 12021, 0, -1, 100, 0, 100, 0, 8000, 16000, 12000, 25000, 'Cabal Fanatic - Fixate - random player');

UPDATE `creature_template` SET `SpellList` = 1883001 WHERE `entry` = 18830;
UPDATE `creature_template` SET `SpellList` = 2064401 WHERE `entry` = 20644;
