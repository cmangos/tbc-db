-- ---------------------------
-- Various MovementCorrections
-- ---------------------------


-- Coilfang Warrior
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 17802;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 20626;


-- Coilfang Siren
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 7
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 17801;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 20623;

-- Coilfang Engineer
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 17721;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 20620;

-- Bog Overlord
-- Before: SpeedWalk = 1,71 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 21694;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 21914;

-- Coilfang Oracle
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 7
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 17803;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 20622;


-- Tidal Surger
-- Before: SpeedWalk = 1 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry = 21695;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry = 21917;

-- Tidal Surger
-- Before: SpeedWalk = 1 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry = 21696;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry = 21916;

-- -----------
-- SpellLists
-- -----------

-- Coilfang Warrior
DELETE FROM `creature_template_spells` WHERE `entry` = 17802;
DELETE FROM `creature_template_spells` WHERE `entry` = 20626;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1780201, 2062601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1780201, 'Steam Vault - Coilfang Warrior - Normal', 0, 0),
(2062601, 'Steam Vault - Coilfang Warrior - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1780201, 2062601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1780201, 1, 35105, 0, -1, 1, 0, 100, 0, 6000, 16000, 13000, 19000, 'Coilfang Warrior - Mortal Blow - current'),
(2062601, 1, 35105, 0, -1, 1, 0, 100, 0, 6000, 16000, 13000, 19000, 'Coilfang Warrior - Mortal Blow - current');

UPDATE `creature_template` SET `SpellList` = 1780201 WHERE `entry` = 17802;
UPDATE `creature_template` SET `SpellList` = 2062601 WHERE `entry` = 20626;


-- Coilfang Siren
DELETE FROM `creature_template_spells` WHERE `entry` = 17801;
DELETE FROM `creature_template_spells` WHERE `entry` = 20623;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1780101, 2062301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1780101, 'Steam Vault - Coilfang Siren - Normal', 0, 0),
(2062301, 'Steam Vault - Coilfang Siren - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1780101, 2062301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1780101, 1, 38660, 0, -1, 100, 0, 100, 0, 8000, 24000, 18000, 34000, 'Coilfang Siren - Fear - random'),
(1780101, 2, 35106, 0, -1, 1, 0, 100, 0, 6000, 23000, 6000, 23000, 'Coilfang Siren - Arcane Flare - current'),
(1780101, 3, 15234, 0, -1, 1, 0, 100, 0, 3000, 10000, 3000, 10000, 'Coilfang Siren - Lightning Bolt - current'),

(2062301, 1, 38660, 0, -1, 100, 0, 100, 0, 8000, 24000, 18000, 34000, 'Coilfang Siren - Fear - random'),
(2062301, 2, 37856, 0, -1, 1, 0, 100, 0, 6000, 23000, 6000, 23000, 'Coilfang Siren - Arcane Flare - current'),
(2062301, 3, 37664, 0, -1, 1, 0, 100, 0, 3000, 10000, 3000, 10000, 'Coilfang Siren - Lightning Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1780101 WHERE `entry` = 17801;
UPDATE `creature_template` SET `SpellList` = 2062301 WHERE `entry` = 20623;


-- Coilfang Engineer
DELETE FROM `creature_template_spells` WHERE `entry` = 17721;
DELETE FROM `creature_template_spells` WHERE `entry` = 20620;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1772101, 2062001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1772101, 'Steam Vault - Coilfang Engineer - Normal', 0, 0),
(2062001, 'Steam Vault - Coilfang Engineer - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1772101, 2062001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1772101, 1, 6533, 0, -1, 1, 0, 100, 0, 11000, 24000, 11000, 24000, 'Coilfang Engineer - Throw Net - current'),
(1772101, 2, 40331, 0, -1, 1, 0, 100, 0, 8000, 16000, 8000, 16000, 'Coilfang Engineer - Bomb - current'),

(2062001, 1, 6533, 0, -1, 1, 0, 100, 0, 11000, 24000, 11000, 24000, 'Coilfang Engineer - Throw Net - current'),
(2062001, 2, 40332, 0, -1, 1, 0, 100, 0, 8000, 16000, 8000, 16000, 'Coilfang Engineer - Bomb - current');

UPDATE `creature_template` SET `SpellList` = 1772101 WHERE `entry` = 17721;
UPDATE `creature_template` SET `SpellList` = 2062001 WHERE `entry` = 20620;

-- Bog Overlord
DELETE FROM `creature_template_spells` WHERE `entry` = 21694;
DELETE FROM `creature_template_spells` WHERE `entry` = 21914;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2169401, 2191401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2169401, 'Steam Vault - Bog Overlord - Normal', 0, 0),
(2191401, 'Steam Vault - Bog Overlord - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (2169401, 2191401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2169401, 1, 40340, 0, -1, 2, 0, 100, 0, 7000, 20000, 15000, 28000, 'Bog Overlord - Trample - self'),
(2169401, 2, 32065, 0, -1, 1, 0, 100, 0, 6000, 22000, 12000, 19000, 'Bog Overlord - Fungal Decay - current'),
(2169401, 3, 37272, 0, -1, 1, 0, 100, 0, 5000, 18000, 5000, 18000, 'Bog Overlord - Poison Bolt- current'),

(2191401, 1, 40340, 0, -1, 2, 0, 100, 0, 7000, 20000, 15000, 28000, 'Bog Overlord - Trample - self'),
(2191401, 2, 32065, 0, -1, 1, 0, 100, 0, 6000, 22000, 12000, 19000, 'Bog Overlord - Fungal Decay - current'),
(2191401, 3, 37862, 0, -1, 1, 0, 100, 0, 5000, 18000, 5000, 18000, 'Bog Overlord - Poison Bolt- current');

UPDATE `creature_template` SET `SpellList` = 2169401 WHERE `entry` = 21694;
UPDATE `creature_template` SET `SpellList` = 2191401 WHERE `entry` = 21914;


-- Coilfang Oracle
DELETE FROM `creature_template_spells` WHERE `entry` = 17803;
DELETE FROM `creature_template_spells` WHERE `entry` = 20622;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1780301, 2062201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1780301, 'Steam Vault - Coilfang Oracle - Normal', 0, 0),
(2062201, 'Steam Vault - Coilfang Oracle - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1780301, 2062201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1780301, 1, 22883, 0, -1, 201, 0, 100, 0, 2000, 10000, 10000, 20000, 'Coilfang Oracle - Heal - Missing 50% including self'),
(1780301, 2, 8281, 0, -1, 201, 0, 100, 0, 11000, 19000, 15000, 23000, 'Coilfang Oracle -  Sonic Burst - self'),
(1780301, 3, 22582, 0, -1, 1, 0, 100, 0, 6000, 15000, 6000, 15000, 'Coilfang Oracle - Frost Shock - current'),

(2062201, 1, 31730, 0, -1, 201, 0, 100, 0, 2000, 10000, 10000, 20000, 'Coilfang Oracle - Heal - Missing 50% including self'),
(2062201, 2, 8281, 0, -1, 201, 0, 100, 0, 11000, 19000, 15000, 23000, 'Coilfang Oracle -  Sonic Burst - self'),
(2062201, 3, 37865, 0, -1, 1, 0, 100, 0, 6000, 15000, 6000, 15000, 'Coilfang Oracle - Frost Shock - current');

UPDATE `creature_template` SET `SpellList` = 1780301 WHERE `entry` = 17803;
UPDATE `creature_template` SET `SpellList` = 2062201 WHERE `entry` = 20622;


-- Tidal Surger 
DELETE FROM `creature_template_spells` WHERE `entry` = 21695;
DELETE FROM `creature_template_spells` WHERE `entry` = 21917;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2169501, 2191701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2169501, 'Steam Vault - Tidal Surger  - Normal', 0, 0),
(2191701, 'Steam Vault - Tidal Surger  - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (2169501, 2191701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2169501, 1, 15531, 0, -1, 2, 0, 100, 0, 8000, 15000, 12000, 22000, 'Tidal Surger - Frost Nova - self'),
(2169501, 2, 37250, 0, -1, 100, 0, 100, 0, 4000, 12000, 6000, 14000, 'Tidal Surger - Water Spout - random'),

(2191701, 1, 15531, 0, -1, 2, 0, 100, 0, 8000, 15000, 12000, 22000, 'Tidal Surger - Frost Nova - self'),
(2191701, 2, 37250, 0, -1, 100, 0, 100, 0, 4000, 12000, 6000, 14000, 'Tidal Surger - Water Spout - random');

UPDATE `creature_template` SET `SpellList` = 2169501 WHERE `entry` = 21695;
UPDATE `creature_template` SET `SpellList` = 2191701 WHERE `entry` = 21917;

-- Steam Surger
DELETE FROM `creature_template_spells` WHERE `entry` = 21696;
DELETE FROM `creature_template_spells` WHERE `entry` = 21916;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2169601, 2191601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2169601, 'Steam Vault - Steam Surger - Normal', 0, 0),
(2191601, 'Steam Vault - Steam Surger - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (2169601, 2191601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2169601, 1, 37252, 0, -1, 1, 0, 100, 0, 4000, 14000, 4000, 14000, 'Steam Surger - Water Bolt - current'),
(2191601, 2, 39412, 0, -1, 1, 0, 100, 0, 4000, 14000, 4000, 14000, 'Steam Surger - Water Bolt - current');

UPDATE `creature_template` SET `SpellList` = 2169601 WHERE `entry` = 21696;
UPDATE `creature_template` SET `SpellList` = 2191601 WHERE `entry` = 21916;
