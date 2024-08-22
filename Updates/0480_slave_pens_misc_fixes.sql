-- ---------------------------
-- Various MovementCorrections
-- ---------------------------


-- Greater Bogstrok
-- Before: SpeedWalk = 2 SpeedRun = 1,1428
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 17817;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 19892;

-- Bogstrok
-- Before: SpeedWalk = 2 SpeedRun = 1,1428
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 17816;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 19884;

-- Coilfang Slavehandler
-- Before:  SpeedWalk = 1,48  SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 17959;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.1428' WHERE entry = 19889;

-- Wastewalker Worker
-- Before:  SpeedWalk = 1,125 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 17964;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 19904;


-- Wastewalker Slave
-- Before:  SpeedWalk = 1,125 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 17963;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 19902;

-- -----------
-- SpellLists
-- -----------

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



-- Coilfang Slavehandler
DELETE FROM `creature_template_spells` WHERE `entry` = 17959;
DELETE FROM `creature_template_spells` WHERE `entry` = 19889;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1795901, 1988901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1795901, 'Slave Pens - Coilfang Slavehandler - Normal', 0, 0),
(1988901, 'Slave Pens - Coilfang Slavehandler - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1795901, 1988901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1795901, 1, 9080, 0, -1, 130, 0, 100, 0, 5000, 15000, 10000, 20000, 'Coilfang Slavehandler - Hamstring - top aggro auro not present'),
(1795901, 1, 16172, 0, -1, 130, 0, 100, 0, 10000, 22000, 10000, 22000, 'Coilfang Slavehandler - Head Crack - top aggro auro not present'),

(1988901, 1, 9080, 0, -1, 130, 0, 100, 0, 5000, 15000, 10000, 20000, 'Coilfang Slavehandler - Hamstring - top aggro auro not present'),
(1988901, 1, 16172, 0, -1, 130, 0, 100, 0, 10000, 22000, 10000, 22000, 'Coilfang Slavehandler - Head Crack - top aggro auro not present');

UPDATE `creature_template` SET `SpellList` = 1795901 WHERE `entry` = 17959;
UPDATE `creature_template` SET `SpellList` = 1988901 WHERE `entry` = 19889;


-- Wastewalker Worker
DELETE FROM `creature_template_spells` WHERE `entry` = 17964;
DELETE FROM `creature_template_spells` WHERE `entry` = 19904;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1796401, 1990401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1796401, 'Slave Pens - Wastewalker Worker - Normal', 0, 0),
(1990401, 'Slave Pens - Wastewalker Worker - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1796401, 1990401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1796401, 1, 13738, 0, -1, 130, 0, 100, 0, 5000, 20000, 5000, 20000, 'Wastewalker Worker - Rend - top aggro auro not present'),
(1990401, 1, 37662, 0, -1, 130, 0, 100, 0, 5000, 20000, 5000, 20000, 'Wastewalker Worker - Rend - top aggro auro not present');

UPDATE `creature_template` SET `SpellList` = 1796401 WHERE `entry` = 17964;
UPDATE `creature_template` SET `SpellList` = 1988901 WHERE `entry` = 19904;

-- Wastewalker Slave
DELETE FROM `creature_template_spells` WHERE `entry` = 17963;
DELETE FROM `creature_template_spells` WHERE `entry` = 19902;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1796301, 1990201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1796301, 'Slave Pens - Wastewalker Slave - Normal', 0, 90),
(1990201, 'Slave Pens - Wastewalker Slave - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1796301, 1990201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1796301, 1, 32192, 0, -1, 109, 0, 100, 0, 4000, 21000, 14000, 25000, 'Wastewalker Slave - Frost Nova - random player in melee range'),
(1796301, 1, 15497, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Wastewalker Slave - Frostbolt - current'),

(1990201, 1, 15531, 0, -1, 109, 0, 100, 0, 4000, 21000, 14000, 25000, 'Wastewalker Slave - Frost Nova - random player in melee range'),
(1990201, 1, 12675, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Wastewalker Slave - Frostbolt - current');

UPDATE `creature_template` SET `SpellList` = 1796301 WHERE `entry` = 17963;
UPDATE `creature_template` SET `SpellList` = 1990201 WHERE `entry` = 19902;
