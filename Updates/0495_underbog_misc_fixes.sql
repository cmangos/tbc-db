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

