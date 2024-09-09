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

-- Coilfang Myrmidon
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 17800;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 20621;


-- Coilfang Sorceress
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 7
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 17722;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 20625;


-- Coilfang Slavemaster
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 17805;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 20624;

-- Dreghood Slave
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.992' WHERE entry = 17799;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.992' WHERE entry = 20628;
-- Also add CREATURE_EXTRA_FLAG_NO_CALL_ASSIST to slave
UPDATE creature_template SET ExtraFlags = 2048 WHERE entry = 17799;
UPDATE creature_template SET ExtraFlags = 2048 WHERE entry = 20628;

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
(1780101, 'Steam Vault - Coilfang Siren - Normal', 0, 80),
(2062301, 'Steam Vault - Coilfang Siren - Heroic', 0, 80);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1780101, 2062301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1780101, 1, 38660, 0, -1, 100, 0, 100, 0, 8000, 24000, 18000, 34000, 'Coilfang Siren - Fear - random'),
(1780101, 2, 35106, 0, -1, 1, 0, 100, 0, 6000, 23000, 6000, 23000, 'Coilfang Siren - Arcane Flare - current'),
(1780101, 3, 15234, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Coilfang Siren - Lightning Bolt - current'),

(2062301, 1, 38660, 0, -1, 100, 0, 100, 0, 8000, 24000, 18000, 34000, 'Coilfang Siren - Fear - random'),
(2062301, 2, 37856, 0, -1, 1, 0, 100, 0, 6000, 23000, 6000, 23000, 'Coilfang Siren - Arcane Flare - current'),
(2062301, 3, 37664, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Coilfang Siren - Lightning Bolt - current');

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
(1780301, 2, 8281, 0, -1, 2, 0, 100, 0, 11000, 19000, 15000, 23000, 'Coilfang Oracle -  Sonic Burst - self'),
(1780301, 3, 22582, 0, -1, 1, 0, 100, 0, 6000, 15000, 6000, 15000, 'Coilfang Oracle - Frost Shock - current'),

(2062201, 1, 31730, 0, -1, 201, 0, 100, 0, 2000, 10000, 10000, 20000, 'Coilfang Oracle - Heal - Missing 50% including self'),
(2062201, 2, 8281, 0, -1, 2, 0, 100, 0, 11000, 19000, 15000, 23000, 'Coilfang Oracle -  Sonic Burst - self'),
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
(2169501, 1, 15531, 0, 1071, 2, 0, 100, 0, 8000, 15000, 12000, 22000, 'Tidal Surger - Frost Nova - self'),
(2169501, 2, 37250, 0, -1, 100, 0, 100, 0, 4000, 12000, 6000, 14000, 'Tidal Surger - Water Spout - random'),

(2191701, 1, 15531, 0, 1071, 2, 0, 100, 0, 8000, 15000, 12000, 22000, 'Tidal Surger - Frost Nova - self'),
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

-- Coilfang Myrmidon
DELETE FROM `creature_template_spells` WHERE `entry` = 17800;
DELETE FROM `creature_template_spells` WHERE `entry` = 20621;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1780001, 2062101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1780001, 'Steam Vault - Coilfang Myrmidon - Normal', 0, 0),
(2062101, 'Steam Vault - Coilfang Myrmidon - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1780001, 2062101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1780001, 1, 7160, 0, -1, 1, 0, 100, 0, 5000, 15000, 30000, 40000, 'Coilfang Myrmidon - Execute - current'),
(1780001, 2, 18765, 0, -1, 2, 0, 100, 0, 6000, 15000, 10000, 26000, 'Coilfang Myrmidon - Sweeping Strikes - self'),
(1780001, 3, 15496, 0, -1, 1, 0, 100, 0, 6000, 16000, 8000, 18000, 'Coilfang Myrmidon - Cleave - current'),

(2062101, 1, 7160, 0, -1, 1, 0, 100, 0, 5000, 15000, 30000, 40000, 'Coilfang Myrmidon - Execute - current'),
(2062101, 2, 18765, 0, -1, 2, 0, 100, 0, 6000, 15000, 10000, 26000, 'Coilfang Myrmidon - Sweeping Strikes - self'),
(2062101, 3, 15496, 0, -1, 1, 0, 100, 0, 6000, 16000, 8000, 18000, 'Coilfang Myrmidon - Cleave - current');

UPDATE `creature_template` SET `SpellList` = 1780001 WHERE `entry` = 17800;
UPDATE `creature_template` SET `SpellList` = 2062101 WHERE `entry` = 20621;


-- Coilfang Sorceress
DELETE FROM `creature_template_spells` WHERE `entry` = 17722;
DELETE FROM `creature_template_spells` WHERE `entry` = 20625;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1772201, 2062501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1772201, 'Steam Vault - Coilfang Sorceress - Normal', 0, 0),
(2062501, 'Steam Vault - Coilfang Sorceress - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1772201, 2062501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1772201, 1, 15063, 0, -1, 2, 0, 100, 0, 6000, 18000, 18000, 30000, 'Coilfang Sorceress - Frost Nova - self'),
(1772201, 2, 31581, 0, -1, 100, 0, 100, 0, 12000, 24000, 20000, 32000, 'Coilfang Sorceress - Blizzard - random'),
(1772201, 3, 12675, 0, -1, 1, 0, 100, 0, 0, 8000, 7000, 210000, 'Coilfang Sorceress - Frostbolt - current'),

(2062501, 1, 15531, 0, -1, 2, 0, 100, 0, 6000, 18000, 18000, 30000, 'Coilfang Sorceress - Frost Nova - self'),
(2062501, 2, 39416, 0, -1, 100, 0, 100, 0, 12000, 24000, 20000, 32000, 'Coilfang Sorceress - Blizzard - random'),
(2062501, 3, 37930, 0, -1, 1, 0, 100, 0, 0, 8000, 7000, 210000, 'Coilfang Sorceress - Frostbolt - current');

UPDATE `creature_template` SET `SpellList` = 1772201 WHERE `entry` = 17722;
UPDATE `creature_template` SET `SpellList` = 2062501 WHERE `entry` = 20625;


-- Coilfang Water Elemental
DELETE FROM `creature_template_spells` WHERE `entry` = 17917;
DELETE FROM `creature_template_spells` WHERE `entry` = 20627;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1791701, 2062701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1791701, 'Steam Vault - Coilfang Water Elemental - Normal', 0, 0),
(2062701, 'Steam Vault - Coilfang Water Elemental - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1791701, 2062701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1791701, 1, 34449, 0, -1, 2, 0, 100, 0, 7000, 16000, 9000, 18000, 'Coilfang Water Elemental - Water Bolt Volley - self'),
(2062701, 1, 37924, 0, -1, 2, 0, 100, 0, 7000, 16000, 9000, 18000, 'Coilfang Water Elemental - Water Bolt Volley - self');

UPDATE `creature_template` SET `SpellList` = 1791701 WHERE `entry` = 17917;
UPDATE `creature_template` SET `SpellList` = 2062701 WHERE `entry` = 20627;

-- Coilfang Slavemaster
DELETE FROM `creature_template_spells` WHERE `entry` = 17805;
DELETE FROM `creature_template_spells` WHERE `entry` = 20624;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1780501, 2062401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1780501, 'Steam Vault - Coilfang Slavemaster - Normal', 0, 0),
(2062401, 'Steam Vault - Coilfang Slavemaster - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1780501, 2062401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1780501, 1, 6713, 0, -1, 130, 0, 100, 0, 7000, 16000, 7000, 16000, 'Coilfang Slavemaster - Disarm - top aggro aura not present'),
(1780501, 2, 10987, 0, -1, 2, 0, 100, 0, 6000, 15000, 12000, 20000, 'Coilfang Slavemaster - Geyser - self'),

(2062401, 1, 6713, 0, -1, 130, 0, 100, 0, 7000, 16000, 7000, 16000, 'Coilfang Slavemaster - Disarm - top aggro aura not present'),
(2062401, 2, 10987, 0, -1, 2, 0, 100, 0, 6000, 15000, 12000, 20000, 'Coilfang Slavemaster - Geyser - self');

UPDATE `creature_template` SET `SpellList` = 1780501 WHERE `entry` = 17805;
UPDATE `creature_template` SET `SpellList` = 2062401 WHERE `entry` = 20624;

