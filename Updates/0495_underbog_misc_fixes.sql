-- ---------------------------
-- Movement Corrections
-- ---------------------------
-- Underbat
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 9/7 WHERE entry IN (17724, 20185);

-- Underbog Lurker
UPDATE creature_template SET SpeedWalk = 2/2.5, SpeedRun = 8/7 WHERE entry IN (17725, 20188);

-- Underbog Shambler
UPDATE creature_template SET SpeedWalk = 2/2.5, SpeedRun = 8/7 WHERE entry IN (17871, 20190);

-- Bog Giant
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17723, 20164);

-- Wrathfin Myrmidon
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17726, 20191);

-- Wrathfin Sentry
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17727, 20192);

-- Murkblood Tribesman
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 6.944439888000488281/7 WHERE entry IN (17728, 20181);

-- Murkblood Spearman
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 6.944439888000488281/7 WHERE entry IN (17729, 20180);

-- Murkblood Healer
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 6.944439888000488281/7 WHERE entry IN (17730, 20177);

-- Wrathfin Warrior
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17735, 20193);

-- Murkblood Oracle
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 6.944439888000488281/7 WHERE entry IN (17771, 20179);

-- Fen Ray
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17731, 20173);

-- Lykul Wasp
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17732, 20175);

-- Underbog Lord
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17734, 20187);

-- Lykul Stinger
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (19632, 20174);

-- Gha'zan
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (18105, 20168);

-- Swamplord Musel'ek
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 6.944439888000488281/7 WHERE entry IN (17826, 20183);

-- Claw
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 6.944439888000488281/7, StaticFlags1 = 76 WHERE entry IN (17827, 20165);

-- The Black Stalker
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry IN (17882, 20184);

-- -----------
-- SpellLists
-- -----------

-- Bog Giant
DELETE FROM `creature_template_spells` WHERE `entry` = 17723;
DELETE FROM `creature_template_spells` WHERE `entry` = 20164;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1772301, 2016401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1772301, 'The Underbog - Bog Giant - Normal', 0, 0),
(2016401, 'The Underbog - Bog Giant - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1772301, 2016401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1772301, 1, 15550, 0, -1, 2, 0, 100, 0, 6000, 16000, 16000, 26000, 'Bog Giant - Trample - self'),
(1772301, 2, 32065, 0, -1, 1, 0, 100, 0, 5000, 20000, 20000, 30000, 'Bog Giant - Fungal Decay - current'),

(2016401, 1, 40318, 0, -1, 2, 0, 100, 0, 10000, 10000, 10000, 10000, 'Bog Giant - Growth - self'),
(2016401, 2, 15550, 0, -1, 2, 0, 100, 0, 6000, 16000, 16000, 26000, 'Bog Giant - Trample - self'),
(2016401, 3, 32065, 0, -1, 1, 0, 100, 0, 5000, 20000, 20000, 30000, 'Bog Giant - Fungal Decay - current');

UPDATE `creature_template` SET `SpellList` = 1772301 WHERE `entry` = 17723;
UPDATE `creature_template` SET `SpellList` = 2016401 WHERE `entry` = 20164;


-- Underbog Shambler
DELETE FROM `creature_template_spells` WHERE `entry` = 17871;
DELETE FROM `creature_template_spells` WHERE `entry` = 20190;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1787101, 2019001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1787101, 'The Underbog - Underbog Shambler - Normal', 0, 0),
(2019001, 'The Underbog - Underbog Shambler - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1787101, 2019001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1787101, 1, 34163, 0, -1, 206, 0, 100, 0, 2000, 10000, 8000, 24000, 'Underbog Shambler - Fungal Regrowth - Missing 25% including self'),
(1787101, 2, 32329, 0, -1, 100, 0, 100, 0, 7000, 18000, 14000, 25000, 'Underbog Shambler - Itchy Spores - random player'),
(1787101, 3, 31427, 0, -1, 101, 0, 100, 0, 1000, 5000, 14000, 18000, 'Underbog Shambler - Allergies - random player non tank'),

(2019001, 1, 37967, 0, -1, 206, 0, 100, 0, 2000, 10000, 8000, 24000, 'Underbog Shambler - Fungal Regrowth - Missing 25% including self'),
(2019001, 2, 37965, 0, -1, 100, 0, 100, 0, 7000, 18000, 14000, 25000, 'Underbog Shambler - Itchy Spores - random player'),
(2019001, 3, 31427, 0, -1, 101, 0, 100, 0, 1000, 5000, 14000, 18000, 'Underbog Shambler - Allergies - random player non tank');

UPDATE `creature_template` SET `SpellList` = 1787101 WHERE `entry` = 17871;
UPDATE `creature_template` SET `SpellList` = 2019001 WHERE `entry` = 20190;


-- Underbat
DELETE FROM `creature_template_spells` WHERE `entry` = 17724;
DELETE FROM `creature_template_spells` WHERE `entry` = 20185;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1772401, 2018501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1772401, 'The Underbog - Underbat - Normal', 0, 0),
(2018501, 'The Underbog - Underbat - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1772401, 2018501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1772401, 1, 34171, 0, -1, 1, 0, 100, 0, 2000, 16000, 4000, 20000, 'Underbat - Tentacle Lash - current'),
(2018501, 1, 37956, 0, -1, 1, 0, 100, 0, 2000, 16000, 4000, 20000, 'Underbat - Tentacle Lash - current');

UPDATE `creature_template` SET `SpellList` = 1772401 WHERE `entry` = 17724;
UPDATE `creature_template` SET `SpellList` = 2018501 WHERE `entry` = 20185;


-- Wrathfin Myrmidon
DELETE FROM `creature_template_spells` WHERE `entry` = 17726;
DELETE FROM `creature_template_spells` WHERE `entry` = 20191;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1772601, 2019101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1772601, 'The Underbog - Wrathfin Myrmidon - Normal', 0, 0),
(2019101, 'The Underbog - Wrathfin Myrmidon - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1772601, 2019101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1772601, 1, 31410, 0, -1, 130, 0, 100, 0, 1000, 12000, 4000, 15000, 'Wrathfin Myrmidon - Coral Cut - top aggro aura not present'),
(2019101, 1, 37973, 0, -1, 130, 0, 100, 0, 1000, 12000, 4000, 15000, 'Wrathfin Myrmidon - Coral Cut - top aggro aura not present');

UPDATE `creature_template` SET `SpellList` = 1772601 WHERE `entry` = 17726;
UPDATE `creature_template` SET `SpellList` = 2019101 WHERE `entry` = 20191;

-- Wrathfin Sentry
DELETE FROM `creature_template_spells` WHERE `entry` = 17727;
DELETE FROM `creature_template_spells` WHERE `entry` = 20192;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1772701, 2019201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1772701, 'The Underbog - Wrathfin Sentry - Normal', 0, 0),
(2019201, 'The Underbog - Wrathfin Sentry - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1772701, 2019201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1772701, 1, 11972, 0, -1, 122, 0, 100, 0, 6000, 12000, 6000, 15000, 'Wrathfin Sentry - Shield Bash - random target casting'),
(1772701, 2, 11976, 0, -1, 1, 0, 100, 0, 4000, 12000, 10000, 18000, 'Wrathfin Sentry - Strike - current'),

(2019201, 1, 11972, 0, -1, 122, 0, 100, 0, 6000, 12000, 6000, 15000, 'Wrathfin Sentry - Shield Bash - random target casting'),
(2019201, 2, 11976, 0, -1, 1, 0, 100, 0, 4000, 12000, 10000, 18000, 'Wrathfin Sentry - Strike - current');

UPDATE `creature_template` SET `SpellList` = 1772701 WHERE `entry` = 17727;
UPDATE `creature_template` SET `SpellList` = 2019201 WHERE `entry` = 20192;

-- Murkblood Tribesman
DELETE FROM `creature_template_spells` WHERE `entry` = 17728;
DELETE FROM `creature_template_spells` WHERE `entry` = 20181;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1772801, 2018101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1772801, 'The Underbog - Murkblood Tribesman - Normal', 0, 0),
(2018101, 'The Underbog - Murkblood Tribesman - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1772801, 2018101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1772801, 1, 12057, 0, -1, 1, 0, 100, 0, 3000, 16000, 8000, 21000, 'Murkblood Tribesman - Strike - current'),
(2018101, 1, 12057, 0, -1, 1, 0, 100, 0, 3000, 16000, 8000, 21000, 'Murkblood Tribesman - Strike - current');

UPDATE `creature_template` SET `SpellList` = 1772801 WHERE `entry` = 17728;
UPDATE `creature_template` SET `SpellList` = 2018101 WHERE `entry` = 20181;

-- Murkblood Spearman
DELETE FROM `creature_template_spells` WHERE `entry` = 17729;
DELETE FROM `creature_template_spells` WHERE `entry` = 20180;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1772901, 2018001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1772901, 'The Underbog - Murkblood Spearman - Normal', 0, 80),
(2018001, 'The Underbog - Murkblood Spearman - Heroic', 0, 80);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1772901, 2018001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1772901, 1, 31407, 0, -1, 105, 0, 100, 0, 1000, 15000, 8000, 22000, 'Murkblood Spearman - Viper Strong - random mana user'),
(1772901, 2, 22887, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Murkblood Spearman - Throw - current'),

(2018001, 1, 39413, 0, -1, 105, 0, 100, 0, 1000, 15000, 8000, 22000, 'Murkblood Spearman - Viper Strong - random mana user'),
(2018001, 2, 40317, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Murkblood Spearman - Throw - current');

UPDATE `creature_template` SET `SpellList` = 1772901 WHERE `entry` = 17729;
UPDATE `creature_template` SET `SpellList` = 2018001 WHERE `entry` = 20180;


-- Murkblood Healer
DELETE FROM `creature_template_spells` WHERE `entry` = 17730;
DELETE FROM `creature_template_spells` WHERE `entry` = 20177;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1773001, 2017701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1773001, 'The Underbog - Murkblood Healer - Normal', 0, 0),
(2017701, 'The Underbog - Murkblood Healer - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1773001, 2017701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1773001, 1, 34423, 0, -1, 201, 0, 100, 0, 3000, 12000, 9000, 18000, 'Murkblood Healer - Renew - 50% missing including self'),
(1773001, 2, 29427, 0, -1, 201, 5460001, 100, 0, 4000, 15000, 8000, 21000, 'Murkblood Healer - Holy Light - 50% missing including self'),
(1773001, 3, 15585, 0, -1, 206, 0, 100, 0, 5000, 15000, 15000, 25000, 'Murkblood Healer - Prayer of Healing - missing 25% including self'),

(2017701, 1, 37978, 0, -1, 201, 0, 100, 0, 3000, 12000, 9000, 18000, 'Murkblood Healer - Renew - 50% missing including self'),
(2017701, 2, 37979, 0, -1, 201, 5460001, 100, 0, 4000, 15000, 8000, 21000, 'Murkblood Healer - Holy Light - 50% missing including self'),
(2017701, 3, 35943, 0, -1, 206, 0, 100, 0, 5000, 15000, 15000, 25000, 'Murkblood Healer - Prayer of Healing - missing 25% including self');

UPDATE `creature_template` SET `SpellList` = 1773001 WHERE `entry` = 17730;
UPDATE `creature_template` SET `SpellList` = 2017701 WHERE `entry` = 20177;


-- Wrathfin Warrior 
DELETE FROM `creature_template_spells` WHERE `entry` = 17735;
DELETE FROM `creature_template_spells` WHERE `entry` = 20193;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1773501, 2019301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1773501, 'The Underbog - Wrathfin Warrior  - Normal', 0, 0),
(2019301, 'The Underbog - Wrathfin Warrior  - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1773501, 2019301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1773501, 1, 11972, 0, -1, 122, 0, 100, 0, 8000, 18000, 12000, 22000, 'Wrathfin Warrior - Shield Bash - random casting'),
(1773501, 2, 11976, 0, -1, 1, 0, 100, 0, 5000, 16000, 9000, 18000, 'Wrathfin Warrior - Strike - current'),

(2019301, 1, 11972, 0, -1, 122, 0, 100, 0, 8000, 18000, 12000, 22000, 'Wrathfin Warrior - Shield Bash - random casting'),
(2019301, 2, 11976, 0, -1, 1, 0, 100, 0, 5000, 16000, 9000, 18000, 'Wrathfin Warrior - Strike - current');

UPDATE `creature_template` SET `SpellList` = 1773501 WHERE `entry` = 17735;
UPDATE `creature_template` SET `SpellList` = 2019301 WHERE `entry` = 20193;


-- Murkblood Oracle
DELETE FROM `creature_template_spells` WHERE `entry` = 17771;
DELETE FROM `creature_template_spells` WHERE `entry` = 20179;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1777101, 1777102, 1777103, 2017901, 2017902, 2017903);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1777101, 'The Underbog - Murkblood Oracle (Frost) - Normal', 0, 90),
(1777102, 'The Underbog - Murkblood Oracle (Shadow) - Normal', 0, 90),
(1777103, 'The Underbog - Murkblood Oracle (Fire) - Normal', 0, 90),
(2017901, 'The Underbog - Murkblood Oracle (Frost) - Heroic', 0, 90),
(2017902, 'The Underbog - Murkblood Oracle (Shadow) - Heroic', 0, 90),
(2017903, 'The Underbog - Murkblood Oracle (Fire) - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1777101, 1777102, 1777103, 2017901, 2017902, 2017903);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Normal Frost
(1777101, 1, 32192, 0, -1, 109, 0, 100, 0, 4000, 15000, 10000, 25000, 'Murkblood Oracle - Frost Nova - random mana user'),
(1777101, 2, 15497, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Murkblood Oracle - Frost Bolt - current'),
-- Normal Shadow
(1777102, 1, 31405, 0, -1, 121, 0, 100, 0, 5000, 14000, 10000, 20000, 'Murkblood Oracle - Corruption - random player aura not present'),
(1777102, 2, 12471, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Murkblood Oracle - Shadowbolt - current'),
-- Normal Fire
(1777103, 1, 15241, 0, -1, 1, 0, 100, 0, 9000, 15000, 9000, 15000, 'Murkblood Oracle - Scorch - current'),
(1777103, 2, 12248, 0, -1, 121, 0, 100, 0, 10000, 17000, 12000, 20000, 'Murkblood Oracle - Amplify Damage - random player aura aura not present'),
(1777103, 3, 14034, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Murkblood Oracle - Fireball - current'),
-- Heroic Frost
(2017901, 1, 15531, 0, -1, 109, 0, 100, 0, 4000, 15000, 10000, 25000, 'Murkblood Oracle - Frost Nova - random mana user'),
(2017901, 2, 12675, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Murkblood Oracle - Frost Bolt - current'),
-- Heroic Shadow
(2017902, 1, 31405, 0, -1, 121, 0, 100, 0, 5000, 14000, 10000, 20000, 'Murkblood Oracle - Corruption - random player aura aura not present'),
(2017902, 2, 15232, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Murkblood Oracle - Shadowbolt - current'),
-- Heroic Fire
(2017903, 1, 36807, 0, -1, 1, 0, 100, 0, 9000, 15000, 9000, 15000, 'Murkblood Oracle - Scorch - current'),
(2017903, 2, 12248, 0, -1, 121, 0, 100, 0, 10000, 17000, 12000, 20000, 'Murkblood Oracle - Amplify Damage - random player aura aura not present'),
(2017903, 3, 15228, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Murkblood Oracle - Fireball - current');


-- Fen Ray
DELETE FROM `creature_template_spells` WHERE `entry` = 17731;
DELETE FROM `creature_template_spells` WHERE `entry` = 20173;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1773101, 2017301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1773101, 'The Underbog - Fen Ray - Normal', 0, 0),
(2017301, 'The Underbog - Fen Ray - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1773101, 2017301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1773101, 1, 34984, 0, -1, 101, 0, 100, 0, 5000, 18000, 11000, 23000, 'Fen Ray - Psychic Horror - random player non tank'),
(2017301, 1, 34984, 0, -1, 101, 0, 100, 0, 5000, 18000, 11000, 23000, 'Fen Ray - Psychic Horror - random player non tank');

UPDATE `creature_template` SET `SpellList` = 1773101 WHERE `entry` = 17731;
UPDATE `creature_template` SET `SpellList` = 2017301 WHERE `entry` = 20173;


-- Lykul Wasp
DELETE FROM `creature_template_spells` WHERE `entry` = 17732;
DELETE FROM `creature_template_spells` WHERE `entry` = 20175;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1773201, 2017501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1773201, 'The Underbog - Lykul Wasp - Normal', 0, 80),
(2017501, 'The Underbog - Lykul Wasp - Heroic', 0, 80);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1773201, 2017501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1773201, 2, 32330, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Lykul Wasp - Poison Spit - current'),
(2017501, 2, 32330, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Lykul Wasp - Poison Spit - current');

UPDATE `creature_template` SET `SpellList` = 1773201 WHERE `entry` = 17732;
UPDATE `creature_template` SET `SpellList` = 2017501 WHERE `entry` = 20175;


-- Underbog Lord
DELETE FROM `creature_template_spells` WHERE `entry` = 17734;
DELETE FROM `creature_template_spells` WHERE `entry` = 20187;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1773401, 2018701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1773401, 'The Underbog - Underbog Lord - Normal', 0, 0),
(2018701, 'The Underbog - Underbog Lord - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1773401, 2018701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1773401, 1, 25778, 0, -1, 1, 0, 100, 0, 5000, 22000, 25000, 40000, 'Underbog Lord - Knock Away - current'),
(1773401, 2, 32065, 0, -1, 1, 0, 100, 0, 5000, 16000, 12000, 25000, 'Underbog Lord - Fungal Decay - current'),

(2018701, 1, 40318, 0, -1, 2, 0, 100, 0, 10000, 10000, 10000, 10000, 'Underbog Lord - Growth - self'),
(2018701, 2, 25778, 0, -1, 1, 0, 100, 0, 5000, 22000, 25000, 40000, 'Underbog Lord - Knock Away - current'),
(2018701, 3, 32065, 0, -1, 1, 0, 100, 0, 5000, 16000, 12000, 25000, 'Underbog Lord - Fungal Decay - current');

UPDATE `creature_template` SET `SpellList` = 1773401 WHERE `entry` = 17734;
UPDATE `creature_template` SET `SpellList` = 2018701 WHERE `entry` = 20187;

-- Lykul Stinger
DELETE FROM `creature_template_spells` WHERE `entry` = 19632;
DELETE FROM `creature_template_spells` WHERE `entry` = 20173;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1963201, 2017401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1963201, 'The Underbog - Lykul Stinger - Normal', 0, 0),
(2017401, 'The Underbog - Lykul Stinger - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1963201, 2017401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1963201, 1, 34392, 0, -1, 2, 0, 100, 0, 11000, 21000, 14000, 23000, 'Lykul Stinger - Stinger Frenzy - self'),
(2017401, 1, 34392, 0, -1, 2, 0, 100, 0, 11000, 21000, 14000, 23000, 'Lykul Stinger - Stinger Frenzy - self');

UPDATE `creature_template` SET `SpellList` = 1963201 WHERE `entry` = 19632;
UPDATE `creature_template` SET `SpellList` = 2017401 WHERE `entry` = 20174;


-- Ghaz'an
DELETE FROM `creature_template_spells` WHERE `entry` = 18105;
DELETE FROM `creature_template_spells` WHERE `entry` = 20168;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1810501, 2016801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1810501, 'The Underbog - Ghaz''an - Normal', 0, 0),
(2016801, 'The Underbog - Ghaz''an - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1810501, 2016801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1810501, 1, 34267, 0, -1, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 'Ghaz''an - Tail Sweep - none'),
(1810501, 2, 34290, 0, -1, 0, 0, 100, 0, 8000, 10000, 8000, 10000, 'Ghaz''an - Acid Spit - self'),
(1810501, 3, 34268, 0, -1, 0, 0, 100, 0, 2000, 4000, 4000, 8000, 'Ghaz''an - Acid Breath - self'),

(2016801, 1, 38737, 0, -1, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 'Ghaz''an - Tail Sweep - none'),
(2016801, 2, 34290, 0, -1, 0, 0, 100, 0, 8000, 10000, 8000, 10000, 'Ghaz''an - Acid Spit - self'),
(2016801, 3, 34268, 0, -1, 0, 0, 100, 0, 2000, 4000, 4000, 8000, 'Ghaz''an - Acid Breath - self');

UPDATE `creature_template` SET `SpellList` = 1810501 WHERE `entry` = 18105;
UPDATE `creature_template` SET `SpellList` = 2016801 WHERE `entry` = 20168;

-- Claw
DELETE FROM `creature_template_spells` WHERE `entry` = 17827;
DELETE FROM `creature_template_spells` WHERE `entry` = 20165;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1782701, 2016501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1782701, 'The Underbog - Claw - Normal', 0, 0),
(2016501, 'The Underbog - Claw - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1782701, 2016501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1782701, 1, 39435, 0, -1, 100, 0, 100, 0, 10000, 14000, 20000, 30000, 'Claw - Feral Charge - random player'),
(1782701, 2, 31429, 0, -1, 2, 0, 100, 0, 6000, 10000, 20000, 35000, 'Claw - Echoing Roar - self'),
(1782701, 3, 34298, 0, -1, 1, 0, 100, 0, 4000, 8000, 12000, 30000, 'Claw - Maul - current'),

(2016501, 1, 39435, 0, -1, 100, 0, 100, 0, 10000, 14000, 10000, 12000, 'Claw - Feral Charge - random player'),
(2016501, 2, 31429, 0, -1, 2, 0, 100, 0, 6000, 10000, 20000, 35000, 'Claw - Echoing Roar - self'),
(2016501, 3, 34298, 0, -1, 1, 0, 100, 0, 4000, 8000, 12000, 30000, 'Claw - Maul - current');


UPDATE `creature_template` SET `SpellList` = 1782701 WHERE `entry` = 17827;
UPDATE `creature_template` SET `SpellList` = 2016501 WHERE `entry` = 20165;



-- Spore Strider (Heroic Only)
DELETE FROM `creature_template_spells` WHERE `entry` = 22299;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2229901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2229901, 'The Underbog - Spore Strider - Heroic', 0, 100);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2229901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2229901, 2, 20824, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Spore Strider - Lightning Bolt - current');

UPDATE `creature_template` SET `SpellList` = 2229901 WHERE `entry` = 22299;

