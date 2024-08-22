-- ---------------------------
-- Various MovementCorrections
-- ---------------------------


-- Greater Bogstrok
-- Before: SpeedWalk = 2 SpeedRun = 1,1428
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 17817;

-- Bogstrok
-- Before: SpeedWalk = 2 SpeedRun = 1,1428
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 17816;




-- Bogstrok
DELETE FROM `creature_template_spells` WHERE `entry` = 17816;
DELETE FROM `creature_template_spells` WHERE `entry` = 19884;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1781601, 1988401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1781601, 'Slave Pens - Bogstrok - Normal', 0, 0),
(1988401, 'Slave Pens - Bogstrok - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1781601, 1988401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1781601, 1, 31551, 0, -1, 1, 0, 100, 0, 6000, 13000, 16000, 21000, 'Bogstrok - Piercing Jab - current'),
(1988401, 1, 31551, 0, -1, 1, 0, 100, 0, 6000, 13000, 16000, 21000, 'Bogstrok - Piercing Jab - current');

UPDATE `creature_template` SET `SpellList` = 1781601 WHERE `entry` = 17816;
UPDATE `creature_template` SET `SpellList` = 1988401 WHERE `entry` = 19884;

-- Greater Bogstrok
DELETE FROM `creature_template_spells` WHERE `entry` = 17817;
DELETE FROM `creature_template_spells` WHERE `entry` = 19892;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1781701, 1989201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1781701, 'Slave Pens - Greater Bogstrok - Normal', 0, 0),
(1989201, 'Slave Pens - Greater Bogstrok - Heroic', 0, 0);


DELETE FROM `creature_spell_list` WHERE `Id` IN (1781701, 1989201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1781701, 1, 35760, 0, -1, 121, 0, 100, 0, 5000, 15000, 11000, 17000, 'Greater Bogstrok - Decayed Strength - random aura not present'),
(1989201, 1, 35760, 0, -1, 121, 0, 100, 0, 5000, 15000, 11000, 17000, 'Greater Bogstrok - Decayed Strength - random aura not present');

UPDATE `creature_template` SET `SpellList` = 1781701 WHERE `entry` = 17817;
UPDATE `creature_template` SET `SpellList` = 1989201 WHERE `entry` = 19892;