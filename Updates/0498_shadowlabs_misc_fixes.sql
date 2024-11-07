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