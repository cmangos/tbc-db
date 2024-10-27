-- ---------------------------
-- Movement Corrections
-- ---------------------------
-- Auchenai Soulpriest
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18493, 20301);

-- Auchenai Vindicator
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18495, 20302);

-- Auchenai Monk
UPDATE creature_template SET SpeedWalk = 4/2.5, SpeedRun = 12/7 WHERE entry IN (18497, 20299);

-- Unliving Sorcerer
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18499, 20322);

-- Unliving Soldier
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18498, 20321);

-- Unliving Cleric
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18500, 20320);

-- Unliving Stalker
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18501, 20323);

-- Phantasmal Possessor
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18503, 20309);

-- Phasing Stalker
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18559, 20313);

-- Raging Soul
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7, Detection = 5 WHERE entry IN (18506, 20316);


--Delete some old unused movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1855601, 1855701, 1855801, 1855901, 1877801);

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
DELETE FROM `creature_template_spells` WHERE `entry` = 18499;
DELETE FROM `creature_template_spells` WHERE `entry` = 20322;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1849901, 2032201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1849901, 'Auchenai Crypts - Unliving Sorcerer - Normal', 0, 90),
(2032201, 'Auchenai Crypts - Unliving Sorcerer - Heroic', 0, 90);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1849901, 2032201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1849901, 1, 15744, 0, -1, 109, 0, 100, 0, 5000, 14000, 5000, 14000, 'Unliving Sorcerer - Blast Wave - random player in melee range'),
(1849901, 2, 15043, 2, -1, 1, 0, 100, 0, 0, 2000, 0, 4000, 'Unliving Sorcerer - Frostbolt - current'),
(1849901, 3, 12466, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Unliving Sorcerer - Fireball - current'),

(2032201, 1, 22424, 0, -1, 109, 0, 100, 0, 5000, 14000, 5000, 14000, 'Unliving Sorcerer - Blast Wave - random player in melee range'),
(2032201, 2, 15530, 2, -1, 1, 0, 100, 0, 0, 2000, 0, 4000, 'Unliving Sorcerer - Frostbolt - current'),
(2032201, 3, 17290, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Unliving Sorcerer - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 1849901 WHERE `entry` = 18499;
UPDATE `creature_template` SET `SpellList` = 2032201 WHERE `entry` = 20322;

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
(1850101, 1, 32829, 0, -1, 2, 0, 100, 0, 2000, 8000, 4000, 11000, 'Unliving Stalker - Spirit Vengeance -  self'),
(1850101, 2, 31975, 0, -1, 1, 0, 100, 0, 6000, 12000, 8000, 16000, 'Unliving Stalker - Serpent Sting - current'),
(1850101, 3, 15547, 2, -1, 1, 0, 100, 0, 0, 2500, 2000, 5000, 'Unliving Stalker - Shoot - current'),

(2032301, 1, 32829, 0, -1, 2, 0, 100, 0, 2000, 8000, 4000, 11000, 'Unliving Stalker - Spirit Vengeance -  self'),
(2032301, 2, 37551, 0, -1, 105, 0, 100, 0, 5000, 11000, 12000, 22000, 'Unliving Stalker - Viper Sting - random mana user'),
(2032301, 3, 35511, 0, -1, 1, 0, 100, 0, 6000, 12000, 8000, 16000, 'Unliving Stalker - Serpent Sting - current'),
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
(1850301, 1, 33401, 0, -1, 7, 0, 100, 0, 5000, 10000, 15000, 25000, 'Phantasmal Possessor - Possess - current not alone'),
(2030901, 1, 33401, 0, -1, 7, 0, 100, 0, 5000, 10000, 15000, 25000, 'Phantasmal Possessor - Possess - current not alone');

UPDATE `creature_template` SET `SpellList` = 1850301 WHERE `entry` = 18503;
UPDATE `creature_template` SET `SpellList` = 2030901 WHERE `entry` = 20309;

-- Reanimated Bones
DELETE FROM `creature_template_spells` WHERE `entry` = 18700;
DELETE FROM `creature_template_spells` WHERE `entry` = 20317;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1870001, 2031701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1870001, 'Auchenai Crypts - Reanimated Bones - Normal', 0, 0),
(2031701, 'Auchenai Crypts - Reanimated Bones - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1870001, 2031701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1870001, 1, 13444, 0, -1, 1, 0, 100, 0, 4000, 18000, 10000, 24000, 'Reanimated Bones - Sunder Armor - current'),
(1870001, 2, 13584, 0, -1, 1, 0, 100, 0, 1000, 12000, 6000, 14000, 'Reanimated Bones - Strike - current'),

(2031701, 1, 13444, 0, -1, 1, 0, 100, 0, 4000, 18000, 10000, 24000, 'Reanimated Bones - Sunder Armor - current'),
(2031701, 2, 13584, 0, -1, 1, 0, 100, 0, 1000, 12000, 6000, 14000, 'Reanimated Bones - Strike - current');

UPDATE `creature_template` SET `SpellList` = 1870001 WHERE `entry` = 18700;
UPDATE `creature_template` SET `SpellList` = 2031701 WHERE `entry` = 20317;


-- Auchenai Necromancer
DELETE FROM `creature_template_spells` WHERE `entry` = 18702;
DELETE FROM `creature_template_spells` WHERE `entry` = 20300;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1870201, 2030001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1870201, 'Auchenai Crypts - Auchenai Necromancer - Normal', 0, 0),
(2030001, 'Auchenai Crypts - Auchenai Necromancer - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1870201, 2030001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1870201, 1, 33325, 0, -1, 204, 0, 100, 0, 10000, 22000, 12000, 24000, 'Auchenai Necromancer - Shadow Mend - friendly missing 50% excluding self'),
(1870201, 2, 32863, 0, -1, 1, 0, 100, 0, 12000, 22000, 17000, 27000, 'Auchenai Necromancer - Seed of Corruption - current'),
(1870201, 3, 35839, 0, -1, 1, 0, 100, 0, 0, 9000, 3000, 13000, 'Auchenai Necromancer - Drain Soul - current'),

(2030001, 1, 37367, 0, -1, 204, 0, 100, 0, 10000, 22000, 12000, 24000, 'Auchenai Necromancer - Shadow Mend - friendly missing 50% excluding self'),
(2030001, 2, 38252, 0, -1, 1, 0, 100, 0, 12000, 22000, 17000, 27000, 'Auchenai Necromancer - Seed of Corruption - current'),
(2030001, 3, 35839, 0, -1, 1, 0, 100, 0, 0, 9000, 3000, 13000, 'Auchenai Necromancer - Drain Soul - current');

UPDATE `creature_template` SET `SpellList` = 1870201 WHERE `entry` = 18702;
UPDATE `creature_template` SET `SpellList` = 2030001 WHERE `entry` = 20300;


-- Phasing Soldier
DELETE FROM `creature_template_spells` WHERE `entry` = 18556;
DELETE FROM `creature_template_spells` WHERE `entry` = 20311;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1855601, 2031101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1855601, 'Auchenai Crypts - Phasing Soldier - Normal', 0, 0),
(2031101, 'Auchenai Crypts - Phasing Soldier - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1855601, 2031101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1855601, 1, 11972, 0, -1, 122, 0, 100, 0, 6000, 18000, 10000, 22000, 'Phasing Soldier - Shield Bash - random player casting'),
(2031101, 1, 11972, 0, -1, 122, 0, 100, 0, 6000, 18000, 10000, 22000, 'Phasing Soldier - Shield Bash - random player casting');

UPDATE `creature_template` SET `SpellList` = 1855601 WHERE `entry` = 18556;
UPDATE `creature_template` SET `SpellList` = 2031101 WHERE `entry` = 20311;


-- Phasing Cleric
DELETE FROM `creature_template_spells` WHERE `entry` = 18557;
DELETE FROM `creature_template_spells` WHERE `entry` = 20310;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1855701, 2031001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1855701, 'Auchenai Crypts - Phasing Cleric - Normal', 0, 0),
(2031001, 'Auchenai Crypts - Phasing Cleric - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1855701, 2031001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1855701, 1, 25058, 0, -1, 201, 0, 100, 0, 1000, 10000, 9000, 18000, 'Phasing Cleric - Renew - friendly missing 50% including self'),
(1855701, 2, 33324, 0, -1, 201, 0, 100, 0, 2000, 12000, 8000, 16000, 'Phasing Cleric - Major Heal - friendly missing 50% including self'),

(2031001, 1, 38210, 0, -1, 201, 0, 100, 0, 1000, 10000, 9000, 18000, 'Phasing Cleric - Renew - friendly missing 50% including self'),
(2031001, 2, 22883, 0, -1, 201, 0, 100, 0, 2000, 12000, 8000, 16000, 'Phasing Cleric - Heal - friendly missing 50% including self');

UPDATE `creature_template` SET `SpellList` = 1850001 WHERE `entry` = 18557;
UPDATE `creature_template` SET `SpellList` = 2031001 WHERE `entry` = 20310;


-- Phasing Sorcerer
DELETE FROM `creature_template_spells` WHERE `entry` = 18558;
DELETE FROM `creature_template_spells` WHERE `entry` = 20312;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1855801, 2031201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1855801, 'Auchenai Crypts - Phasing Sorcerer - Normal', 0, 90),
(2031201, 'Auchenai Crypts - Phasing Sorcerer - Heroic', 0, 90);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1855801, 2031201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1855801, 1, 15744, 0, -1, 109, 0, 100, 0, 5000, 14000, 5000, 14000, 'Phasing Sorcerer - Blast Wave - random player in melee range'),
(1855801, 2, 15043, 2, -1, 1, 0, 100, 0, 0, 2000, 0, 4000, 'Phasing Sorcerer - Frostbolt - current'),
(1855801, 3, 12466, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Phasing Sorcerer - Fireball - current'),

(2031201, 1, 22424, 0, -1, 109, 0, 100, 0, 5000, 14000, 5000, 14000, 'Phasing Sorcerer - Blast Wave - random player in melee range'),
(2031201, 2, 15530, 2, -1, 1, 0, 100, 0, 0, 2000, 0, 4000, 'Phasing Sorcerer - Frostbolt - current'),
(2031201, 3, 17290, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Phasing Sorcerer - Fireball - current');

UPDATE `creature_template` SET `SpellList` = 1855801 WHERE `entry` = 18558;
UPDATE `creature_template` SET `SpellList` = 2031201 WHERE `entry` = 20312;


-- Phasing Stalker
DELETE FROM `creature_template_spells` WHERE `entry` = 18559;
DELETE FROM `creature_template_spells` WHERE `entry` = 20313;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1855901, 2031301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1855901, 'Auchenai Crypts - Phasing Stalker - Normal', 0, 90),
(2031301, 'Auchenai Crypts - Phasing Stalker - Heroic', 0, 90);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1855901, 2031301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1855901, 1, 32829, 0, -1, 2, 0, 100, 0, 2000, 8000, 4000, 11000, 'Phasing Stalker - Spirit Vengeance -  self'),
(1855901, 2, 31975, 0, -1, 1, 0, 100, 0, 6000, 12000, 8000, 16000, 'Phasing Stalker - Serpent Sting - current'),
(1855901, 3, 15547, 2, -1, 1, 0, 100, 0, 0, 2500, 2000, 5000, 'Phasing Stalker - Shoot - current'),

(2031301, 1, 32829, 0, -1, 2, 0, 100, 0, 2000, 8000, 4000, 11000, 'Phasing Stalker - Spirit Vengeance -  self'),
(2031301, 2, 37551, 0, -1, 105, 0, 100, 0, 5000, 11000, 12000, 22000, 'Phasing Stalker - Viper Sting - random mana user'),
(2031301, 3, 35511, 0, -1, 1, 0, 100, 0, 6000, 12000, 8000, 16000, 'Phasing Stalker - Serpent Sting - current'),
(2031301, 4, 16100, 2, -1, 1, 0, 100, 0, 0, 2500, 2000, 5000, 'Phasing Stalker - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 1855901 WHERE `entry` = 18559;
UPDATE `creature_template` SET `SpellList` = 2031301 WHERE `entry` = 20313;

-- Avatar of the Martyred
DELETE FROM `creature_template_spells` WHERE `entry` = 18478;
DELETE FROM `creature_template_spells` WHERE `entry` = 20303;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1847801, 2030301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1847801, 'Auchenai Crypts - Avatar of the Martyred - Normal', 0, 0),
(2030301, 'Auchenai Crypts - Avatar of the Martyred - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1847801, 2030301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
('1847801', '0', '16856', '0', '-1', '1', '0', '100', '1','8500','16800','10900','24100', 'Avatar of the Martyred - Mortal Strike on Current'),
('1847801', '1', '16145', '0', '-1', '1', '0', '100', '1','6500','11500','6200','15700', 'Avatar of the Martyred - Sunder Armor on Current'),

('2030301', '0', '15708', '0', '-1', '1', '0', '100', '1','8500','16800','10900','24100', 'Avatar of the Martyred - Mortal Strike on Current'),
('2030301', '1', '16145', '0', '-1', '1', '0', '100', '1','6500','11500','6200','15700', 'Avatar of the Martyred - Sunder Armor on Current');

UPDATE `creature_template` SET `SpellList` = 1847801 WHERE `entry` = 18478;
UPDATE `creature_template` SET `SpellList` = 2030301 WHERE `entry` = 20303;


-- Exarch Maladaar
DELETE FROM `creature_template_spells` WHERE `entry` = 18373;
DELETE FROM `creature_template_spells` WHERE `entry` = 20306;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1837301, 2030601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1837301, 'Auchenai Crypts - Exarch Maladaar - Normal', 0, 0),
(2030601, 'Auchenai Crypts - Exarch Maladaar - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1837301, 2030601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId2030601 `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
('1837301', '0', '32346', '0', '-1', '101', '0', '100', '5','19000','31000','35000','67000', 'Exarch Maladaar - Stolen Soul on random player non tank'),
('1837301', '1', '32422', '0', '-1', '1', '0', '100', '1','4000','8000','4000','18000', 'Exarch Maladaar - Ribbon of Souls on current'),
('1837301', '2', '32421', '0', '-1', '0', '0', '100', '2','11000','29000','13000','30000', 'Exarch Maladaar - Soul Scream'),

('2030601', '0', '32346', '0', '-1', '101', '0', '100', '5','19000','31000','35000','67000', 'Exarch Maladaar - Stolen Soul on random player non tank'),
('2030601', '1', '32422', '0', '-1', '1', '0', '100', '1','4000','8000','4000','18000', 'Exarch Maladaar - Ribbon of Souls on current'),
('2030601', '2', '32421', '0', '-1', '0', '0', '100', '2','11000','29000','13000','30000', 'Exarch Maladaar - Soul Scream');

UPDATE `creature_template` SET `SpellList` = 1837301 WHERE `entry` = 18373;
UPDATE `creature_template` SET `SpellList` = 2030601 WHERE `entry` = 20306;



