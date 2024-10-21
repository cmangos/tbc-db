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
