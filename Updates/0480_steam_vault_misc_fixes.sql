-- ---------------------------
-- Various MovementCorrections
-- ---------------------------


-- Coilfang Warrior
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry = 17802;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry = 20626;


-- Coilfang Siren
-- Before: SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 7
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 17801;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 20623;

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

(1780101, 1, 38660, 0, -1, 100, 0, 100, 0, 8000, 24000, 18000, 34000, 'Coilfang Siren - Fear - random'),
(1780101, 2, 37856, 0, -1, 1, 0, 100, 0, 6000, 23000, 6000, 23000, 'Coilfang Siren - Arcane Flare - current'),
(1780101, 3, 37664, 0, -1, 1, 0, 100, 0, 3000, 10000, 3000, 10000, 'Coilfang Siren - Lightning Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1780101 WHERE `entry` = 17801;
UPDATE `creature_template` SET `SpellList` = 2062601 WHERE `entry` = 20623;