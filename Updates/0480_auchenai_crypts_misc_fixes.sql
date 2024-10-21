-- ---------------------------
-- Movement Corrections
-- ---------------------------

-- -----------
-- SpellLists
-- -----------

-- Auchenai Soulpriest
DELETE FROM `creature_template_spells` WHERE `entry` = 18493;
DELETE FROM `creature_template_spells` WHERE `entry` = 20301;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1849301, 2030101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1849301, 'Auchenai Crypts - Auchenai Soulpriest - Normal', 0, 90),
(2030101, 'Auchenai Crypts - Auchenai Soulpriest - Heroic', 0, 90);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1849301, 2030101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1849301, 1, 32859, 0, -1, 109, 0, 100, 0, 11000, 27000, 20000, 30000, 'Auchenai Soulpriest - Falter - random player melee range'),
(1849301, 2, 32858, 0, -1, 121, 0, 100, 0, 7000, 23000, 17000, 30000, 'Auchenai Soulpriest - Touch of the Forgotten - random player aura not present'),
(1849301, 3, 32860, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Auchenai Soulpriest - Shadow Bolt - current'),

(2030101, 1, 32859, 0, -1, 109, 0, 100, 0, 11000, 27000, 20000, 30000, 'Auchenai Soulpriest - Falter - random player melee range'),
(2030101, 2, 38377, 0, -1, 121, 0, 100, 0, 7000, 23000, 17000, 30000, 'Auchenai Soulpriest - Touch of the Forgotten - random player aura not present'),
(2030101, 3, 38378, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Auchenai Soulpriest - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1849301 WHERE `entry` = 18493;
UPDATE `creature_template` SET `SpellList` = 2030101 WHERE `entry` = 20301;

-- Auchenai Vindicator
DELETE FROM `creature_template_spells` WHERE `entry` = 18495;
DELETE FROM `creature_template_spells` WHERE `entry` = 20302;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1849501, 2030201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1849501, 'Auchenai Crypts - Auchenai Vindicator - Normal', 0, 0),
(2030201, 'Auchenai Crypts - Auchenai Vindicator - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1849501, 2030201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1849501, 1, 17439, 0, -1, 1, 0, 100, 0, 6000, 18000, 17000, 24000, 'Auchenai Vindicator - Shadow Shock - current'),
(2030201, 1, 17289, 0, -1, 1, 0, 100, 0, 6000, 18000, 17000, 24000, 'Auchenai Vindicator - Shadow Shock - current');

UPDATE `creature_template` SET `SpellList` = 1849501 WHERE `entry` = 18495;
UPDATE `creature_template` SET `SpellList` = 2030201 WHERE `entry` = 20302;

-- Auchenai Monk
DELETE FROM `creature_template_spells` WHERE `entry` = 18497;
DELETE FROM `creature_template_spells` WHERE `entry` = 20299;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1849701, 2029901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1849701, 'Auchenai Crypts - Auchenai Monk - Normal', 0, 0),
(2029901, 'Auchenai Crypts - Auchenai Monk - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1849701, 2029901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1849701, 1, 32846, 0, -1, 122, 0, 100, 0, 6000, 18000, 10000, 22000, 'Auchenai Monk - Counter Kick - random player casting'),
(1849701, 2, 37321, 0, -1, 1, 0, 100, 0, 9000, 22000, 11000, 24000, 'Auchenai Monk - Overpower - current'),
(1849701, 3, 32849, 0, -1, 1, 0, 100, 0, 10000, 24000, 12000, 26000, 'Auchenai Monk - Cyclone Strike - current'),

(2029901, 1, 32846, 0, -1, 122, 0, 100, 0, 6000, 18000, 10000, 22000, 'Auchenai Monk - Counter Kick - random player casting'),
(2029901, 2, 37321, 0, -1, 1, 0, 100, 0, 9000, 22000, 11000, 24000, 'Auchenai Monk - Overpower - current'),
(2029901, 3, 32849, 0, -1, 1, 0, 100, 0, 10000, 24000, 12000, 26000, 'Auchenai Monk - Cyclone Strike - current');

UPDATE `creature_template` SET `SpellList` = 1849701 WHERE `entry` = 18497;
UPDATE `creature_template` SET `SpellList` = 2029901 WHERE `entry` = 20299;


-- Unliving Soldier
DELETE FROM `creature_template_spells` WHERE `entry` = 18498;
DELETE FROM `creature_template_spells` WHERE `entry` = 20321;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1849801, 2032101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1849801, 'Auchenai Crypts - Unliving Soldier - Normal', 0, 0),
(2032101, 'Auchenai Crypts - Unliving Soldier - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1849801, 2032101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1849801, 1, 32828, 0, -1, 122, 0, 100, 0, 6000, 18000, 10000, 22000, 'Unliving Soldier - Shield Bash - random player casting'),
(2032101, 1, 32828, 0, -1, 122, 0, 100, 0, 6000, 18000, 10000, 22000, 'Unliving Soldier - Shield Bash - random player casting');

UPDATE `creature_template` SET `SpellList` = 1849801 WHERE `entry` = 18498;
UPDATE `creature_template` SET `SpellList` = 2032101 WHERE `entry` = 20321;


-- Unliving Sorcerer
DELETE FROM `creature_template_spells` WHERE `entry` = 18498;
DELETE FROM `creature_template_spells` WHERE `entry` = 20321;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1849801, 2032101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1849801, 'Auchenai Crypts - Unliving Sorcerer - Normal', 0, 90),
(2032101, 'Auchenai Crypts - Unliving Sorcerer - Heroic', 0, 90);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1849801, 2032101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1849801, 1, 15744, 0, -1, 109, 0, 100, 0, 5000, 14000, 5000, 14000, 'Unliving Sorcerer - Blast Wave - random player in melee range'),
(1849801, 2, 15043, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Unliving Sorcerer - Frostbolt - current'),
(1849801, 3, 12466, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Unliving Sorcerer - Fireball - current'),

(1849801, 1, 22424, 0, -1, 109, 0, 100, 0, 5000, 14000, 5000, 14000, 'Unliving Sorcerer - Blast Wave - random player in melee range'),
(1849801, 2, 15530, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Unliving Sorcerer - Frostbolt - current'),
(1849801, 3, 17290, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Unliving Sorcerer - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 1849801 WHERE `entry` = 18498;
UPDATE `creature_template` SET `SpellList` = 2032101 WHERE `entry` = 20321;

-- Unliving Cleric
DELETE FROM `creature_template_spells` WHERE `entry` = 18500;
DELETE FROM `creature_template_spells` WHERE `entry` = 20320;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1850001, 2032001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1850001, 'Auchenai Crypts - Unliving Cleric - Normal', 0, 0),
(2032001, 'Auchenai Crypts - Unliving Cleric - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1850001, 2032001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1850001, 1, 25058, 0, -1, 201, 0, 100, 0, 1000, 10000, 9000, 18000, 'Unliving Cleric - Renew - friendly missing 50% including self'),
(1850001, 2, 33324, 0, -1, 201, 0, 100, 0, 2000, 12000, 8000, 16000, 'Unliving Cleric - Major Heal - friendly missing 50% including self'),

(2032001, 1, 38210, 0, -1, 201, 0, 100, 0, 1000, 10000, 9000, 18000, 'Unliving Cleric - Renew - friendly missing 50% including self'),
(2032001, 2, 22883, 0, -1, 201, 0, 100, 0, 2000, 12000, 8000, 16000, 'Unliving Cleric - Heal - friendly missing 50% including self');

UPDATE `creature_template` SET `SpellList` = 1850001 WHERE `entry` = 18500;
UPDATE `creature_template` SET `SpellList` = 2032001 WHERE `entry` = 20320;


-- Unliving Stalker
DELETE FROM `creature_template_spells` WHERE `entry` = 18501;
DELETE FROM `creature_template_spells` WHERE `entry` = 20323;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1850101, 2032301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1850101, 'Auchenai Crypts - Unliving Stalker - Normal', 0, 90),
(2032301, 'Auchenai Crypts - Unliving Stalker - Heroic', 0, 90);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1850101, 2032301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1850101, 1, 32829, 0, -1, 2, 0, 100, 0, 2000, 8000, 4000, 11000, 'Unliving Cleric - Spirit Vengeance -  self'),
(1850101, 2, 31975, 0, -1, 1, 0, 100, 0, 6000, 12000, 8000, 16000, 'Unliving Cleric - Serpent Sting - current'),
(1850101, 3, 15547, 2, -1, 1, 0, 100, 0, 0, 2500, 2000, 5000, 'Unliving Stalker - Shoot - current'),

(2032301, 1, 32829, 0, -1, 2, 0, 100, 0, 2000, 8000, 4000, 11000, 'Unliving Cleric - Spirit Vengeance -  self'),
(2032301, 2, 37551, 0, -1, 105, 0, 100, 0, 5000, 11000, 12000, 22000, 'Unliving Cleric - Viper Sting - random mana user'),
(2032301, 3, 35511, 0, -1, 1, 0, 100, 0, 6000, 12000, 8000, 16000, 'Unliving Cleric - Serpent Sting - current'),
(2032301, 4, 16100, 2, -1, 1, 0, 100, 0, 0, 2500, 2000, 5000, 'Unliving Stalker - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 1850101 WHERE `entry` = 18501;
UPDATE `creature_template` SET `SpellList` = 2032301 WHERE `entry` = 20323;

-- Phantasmal Possessor
DELETE FROM `creature_template_spells` WHERE `entry` = 18503;
DELETE FROM `creature_template_spells` WHERE `entry` = 20309;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1850301, 2030901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1850301, 'Auchenai Crypts - Phantasmal Possessor - Normal', 0, 0),
(2030901, 'Auchenai Crypts - Phantasmal Possessor - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1850301, 2030901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1850301, 1, 33401, 0, -1, 121, 0, 100, 0, 5000, 10000, 15000, 25000, 'Phantasmal Possessor - Possess - random player aura not present'),
(2030901, 1, 33401, 0, -1, 121, 0, 100, 0, 5000, 10000, 15000, 25000, 'Phantasmal Possessor - Possess - random player aura not present');

UPDATE `creature_template` SET `SpellList` = 1850301 WHERE `entry` = 18503;
UPDATE `creature_template` SET `SpellList` = 2030901 WHERE `entry` = 20309;
