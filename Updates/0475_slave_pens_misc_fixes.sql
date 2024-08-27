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
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 17963;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 19902;


-- Coilfang Champion
-- Before:  SpeedWalk = 1,48 SpeedRun = 1
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 17957;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 19885;

-- Coilfang Enchantress
-- Before:  SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 17961;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 19887;

-- Coilfang Ray
-- Before:  SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 21128;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 21841;


-- Coilfang Soothsayer
-- Before:  SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 7
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 17958;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 19890;

-- Coilfang Defender
-- Before:  SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 7
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 17960;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1' WHERE entry = 19886;


-- Coilfang Technician
-- Before:  SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 17940;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 19891;

-- Coilfang Collaborator
-- Before:  SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
--  WalkSpeed: 2.5
-- RunSpeed: 6.944439888000488281
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 17962;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '0.9920628' WHERE entry = 19903;

-- Coilfang Tempest
-- Before:  SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 2.5
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 21127;
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.142' WHERE entry = 21843;

-- Rokmar the Crackler
-- Before:  SpeedWalk = 1,48 SpeedRun = 1,14286
-- Sniff:
-- WalkSpeed: 4
-- RunSpeed: 8
UPDATE creature_template SET SpeedWalk = '1.6', SpeedRun = '1.142' WHERE entry = 17991;
UPDATE creature_template SET SpeedWalk = '1.6', SpeedRun = '1.142' WHERE entry = 19895;

-- Correct some broadcast_text
UPDATE broadcast_text SET ChatTypeID = '1' WHERE Id = '15108';

-- Delete some unused randomdb script
DELETE FROM dbscript_random_templates WHERE id = 12003;


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
(1795901, 2, 16172, 0, -1, 130, 0, 100, 0, 10000, 22000, 10000, 22000, 'Coilfang Slavehandler - Head Crack - top aggro auro not present'),

(1988901, 1, 9080, 0, -1, 130, 0, 100, 0, 5000, 15000, 10000, 20000, 'Coilfang Slavehandler - Hamstring - top aggro auro not present'),
(1988901, 2, 16172, 0, -1, 130, 0, 100, 0, 10000, 22000, 10000, 22000, 'Coilfang Slavehandler - Head Crack - top aggro auro not present');

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
(1796301, 2, 15497, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Wastewalker Slave - Frostbolt - current'),

(1990201, 1, 15531, 0, -1, 109, 0, 100, 0, 4000, 21000, 14000, 25000, 'Wastewalker Slave - Frost Nova - random player in melee range'),
(1990201, 2, 12675, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Wastewalker Slave - Frostbolt - current');

UPDATE `creature_template` SET `SpellList` = 1796301 WHERE `entry` = 17963;
UPDATE `creature_template` SET `SpellList` = 1990201 WHERE `entry` = 19902;

-- Coilfang Champion
DELETE FROM `creature_template_spells` WHERE `entry` = 17957;
DELETE FROM `creature_template_spells` WHERE `entry` = 19885;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1795701, 1988501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1795701, 'Slave Pens - Coilfang Champion - Normal', 0, 0),
(1988501, 'Slave Pens - Coilfang Champion - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1795701, 1988501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1795701, 1, 19134, 0, -1, 1, 0, 100, 0, 14000, 24000, 22000, 32000, 'Coilfang Champion - Frightening Shout - current'),
(1795701, 2, 16145, 0, -1, 1, 0, 100, 0, 8000, 11000, 14000, 24000, 'Coilfang Champion - Sunder Armor - current'),
(1795701, 3, 15284, 0, -1, 1, 0, 100, 0, 6000, 19000, 10000, 22000, 'Coilfang Champion - Cleave - current'),

(1988501, 1, 19134, 0, -1, 1, 0, 100, 0, 14000, 24000, 22000, 32000, 'Coilfang Champion - Frightening Shout - current'),
(1988501, 2, 16145, 0, -1, 1, 0, 100, 0, 8000, 11000, 14000, 24000, 'Coilfang Champion - Sunder Armor - current'),
(1988501, 3, 15284, 0, -1, 1, 0, 100, 0, 6000, 19000, 10000, 22000, 'Coilfang Champion - Cleave - current');

UPDATE `creature_template` SET `SpellList` = 1795701 WHERE `entry` = 17957;
UPDATE `creature_template` SET `SpellList` = 1988501 WHERE `entry` = 19885;


-- Coilfang Observer
DELETE FROM `creature_template_spells` WHERE `entry` = 17938;
DELETE FROM `creature_template_spells` WHERE `entry` = 19888;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1793801, 1988801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1793801, 'Slave Pens - Coilfang Observer - Normal', 0, 0),
(1988801, 'Slave Pens - Coilfang Observer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1793801, 1988801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1793801, 2, 17883, 0, -1, 130, 0, 100, 0, 10000, 25000, 10000, 25000, 'Coilfang Observer - Immolate - top aggro aura not present'),
(1793801, 1, 32191, 0, -1, 1, 0, 100, 0, 12000, 28000, 20000, 30000, 'Coilfang Observer - Heavy Dynamite - current'),

(1988801, 2, 37668, 0, -1, 130, 0, 100, 0, 10000, 25000, 10000, 25000, 'Coilfang Observer - Immolate - top aggro aura not present'),
(1988801, 1, 37666, 0, -1, 1, 0, 100, 0, 12000, 28000, 20000, 30000, 'Coilfang Observer - Heavy Dynamite - current');

UPDATE `creature_template` SET `SpellList` = 1793801 WHERE `entry` = 17938;
UPDATE `creature_template` SET `SpellList` = 1988801 WHERE `entry` = 19888;



-- Coilfang Scale-Healer
DELETE FROM `creature_template_spells` WHERE `entry` = 21126;
DELETE FROM `creature_template_spells` WHERE `entry` = 21842;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2112601, 2184201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2112601, 'Slave Pens - Coilfang Scale-Healer - Normal', 0, 0),
(2184201, 'Slave Pens - Coilfang Scale-Healer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2112601, 2184201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2112601, 1, 34945, 0, -1, 206, 0, 100, 0, 2000, 8000, 6000, 12000, 'Coilfang Scale-Healer - Heal - friendly missing 25% incl self'),
(2112601, 2, 17139, 0, -1, 5, 0, 100, 0, 5000, 16000, 6000, 18000, 'Coilfang Scale-Healer - Power Word: Shield - friendly missing bugg incl self'),
(2112601, 3, 34944, 0, -1, 2, 0, 100, 0, 3000, 12000, 10000, 21000, 'Coilfang Scale-Healer - Holy Nova - self'),

(2184201, 1, 39378, 0, -1, 206, 0, 100, 0, 2000, 8000, 6000, 12000, 'Coilfang Scale-Healer - Heal - friendly missing 25% incl self'),
(2184201, 2, 36052, 0, -1, 5, 0, 100, 0, 5000, 16000, 6000, 18000, 'Coilfang Scale-Healer - Power Word: Shield - friendly missing bugg incl self'),
(2184201, 3, 37669, 0, -1, 2, 0, 100, 0, 3000, 12000, 10000, 21000, 'Coilfang Scale-Healer - Holy Nova - self');


UPDATE `creature_template` SET `SpellList` = 2112601 WHERE `entry` = 21126;
UPDATE `creature_template` SET `SpellList` = 2184201 WHERE `entry` = 21842; 


-- Coilfang Ray 
DELETE FROM `creature_template_spells` WHERE `entry` = 21128;
DELETE FROM `creature_template_spells` WHERE `entry` = 21841;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2112801, 2184101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2112801, 'Slave Pens - Coilfang Ray - Normal', 0, 0),
(2184101, 'Slave Pens - Coilfang Ray - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2112801, 2184101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2112801, 1, 34984, 0, -1, 101, 0, 100, 0, 5000, 15000, 6000, 16000, 'Coilfang Ray - Psychic Horror - Attack - random player non tank'),
(2184101, 1, 34984, 0, -1, 101, 0, 100, 0, 5000, 15000, 6000, 16000, 'Coilfang Ray - Psychic Horror - Attack - random player non tank');


UPDATE `creature_template` SET `SpellList` = 2112801 WHERE `entry` = 21128;
UPDATE `creature_template` SET `SpellList` = 2184101 WHERE `entry` = 21841; 

-- Coilfang Enchantress 
DELETE FROM `creature_template_spells` WHERE `entry` = 17961;
DELETE FROM `creature_template_spells` WHERE `entry` = 19887;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1796101, 1988701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1796101, 'Slave Pens - Coilfang Enchantress - Normal', 0, 0),
(1988701, 'Slave Pens - Coilfang Enchantress - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1796101, 1988701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1796101, 1, 32173, 0, -1, 1, 0, 100, 0, 12000, 23000, 19000, 28000, 'Coilfang Enchantress - Entangling Roots - current'),
(1796101, 2, 15234, 0, -1, 1, 0, 100, 0, 8000, 18000, 20000, 26000, 'Coilfang Enchantress - Lightning Bolt - current'),

(1988701, 1, 32173, 0, -1, 1, 0, 100, 0, 12000, 23000, 19000, 28000, 'Coilfang Enchantress - Entangling Roots - current'),
(1988701, 2, 37664, 0, -1, 1, 0, 100, 0, 8000, 18000, 20000, 26000, 'Coilfang Enchantress - Lightning Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1796101 WHERE `entry` = 17961;
UPDATE `creature_template` SET `SpellList` = 1988701 WHERE `entry` = 19887; 

-- Coilfang Soothsayer 
DELETE FROM creature_spell_targeting WHERE Id = 131;
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `Comments`) VALUES ('131', '1', '0', '0', '518', 'Attack - random player mana user aura not present');

DELETE FROM `creature_template_spells` WHERE `entry` = 17960;
DELETE FROM `creature_template_spells` WHERE `entry` = 19890;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1796001, 1989001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1796001, 'Slave Pens - Coilfang Soothsayer - Normal', 0, 0),
(1989001, 'Slave Pens - Coilfang Soothsayer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1796001, 1989001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1796001, 1, 35280, 0, -1, 101, 0, 100, 0, 15000, 45000, 26500, 60000, 'Coilfang Soothsayer - Domination - random player non tank'),
(1796001, 2, 31555, 0, -1, 131, 0, 100, 0, 11000, 24000, 21000, 35000, 'Coilfang Soothsayer - Decayed Intellect - random player mana user aura not present'),
(1796001, 3, 15790, 0, -1, 1, 0, 100, 0, 5000, 22000, 16000, 32000, 'Coilfang Soothsayer - Arcane Missiles - current'),

(1989001, 1, 35280, 0, -1, 101, 0, 100, 0, 15000, 45000, 26500, 60000, 'Coilfang Soothsayer - Domination - random player non tank'),
(1989001, 2, 31555, 0, -1, 131, 0, 100, 0, 11000, 24000, 21000, 35000, 'Coilfang Soothsayer - Decayed Intellect - random player mana user aura not present'),
(1989001, 3, 15790, 0, -1, 1, 0, 100, 0, 5000, 22000, 16000, 32000, 'Coilfang Soothsayer - Arcane Missiles - current');

UPDATE `creature_template` SET `SpellList` = 1796001 WHERE `entry` = 17960;
UPDATE `creature_template` SET `SpellList` = 1989001 WHERE `entry` = 19890; 


-- Coilfang Defender 
DELETE FROM `creature_template_spells` WHERE `entry` = 17958;
DELETE FROM `creature_template_spells` WHERE `entry` = 19886;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1795801, 1988601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1795801, 'Slave Pens - Coilfang Defender - Normal', 0, 0),
(1988601, 'Slave Pens - Coilfang Defender - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1795801, 1988601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1795801, 1, 15655, 0, -1, 1, 0, 100, 0, 6000, 16000, 11000, 25000, 'Coilfang Defender - Shield Slam - current'),
(1795801, 2, 31554, 0, -1, 2, 0, 100, 0, 10000, 24000, 16000, 30000, 'Coilfang Defender - Spell Reflection - self'),

(1988601, 1, 15655, 0, -1, 1, 0, 100, 0, 6000, 16000, 11000, 25000, 'Coilfang Defender - Shield Slam - current'),
(1988601, 2, 31554, 0, -1, 2, 0, 100, 0, 10000, 24000, 16000, 30000, 'Coilfang Defender - Spell Reflection - self');


UPDATE `creature_template` SET `SpellList` = 1795801 WHERE `entry` = 17958;
UPDATE `creature_template` SET `SpellList` = 1988601 WHERE `entry` = 19886; 

-- Coilfang Technician 
DELETE FROM `creature_template_spells` WHERE `entry` = 17940;
DELETE FROM `creature_template_spells` WHERE `entry` = 19891;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1794001, 1989101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1794001, 'Slave Pens - Coilfang Technician - Normal', 0, 0),
(1989101, 'Slave Pens - Coilfang Technician - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1794001, 1989101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1794001, 1, 16005, 0, -1, 100, 0, 100, 0, 10000, 24000, 21000, 33000, 'Coilfang Technician - Rain of Fire - random'),
(1989101, 2, 39376, 0, -1, 100, 0, 100, 0, 10000, 24000, 21000, 33000, 'Coilfang Technician - Rain of Fire - random');


UPDATE `creature_template` SET `SpellList` = 1794001 WHERE `entry` = 17940;
UPDATE `creature_template` SET `SpellList` = 1989101 WHERE `entry` = 19891; 


-- Coilfang Collaborator 
DELETE FROM `creature_template_spells` WHERE `entry` = 17962;
DELETE FROM `creature_template_spells` WHERE `entry` = 19903;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1796201, 1990301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1796201, 'Slave Pens - Coilfang Collaborator - Normal', 0, 0),
(1990301, 'Slave Pens - Coilfang Collaborator - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1796201, 1989101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1796201, 1, 19130, 0, -1, 1, 0, 100, 0, 3000, 17000, 3000, 17000, 'Coilfang Collaborator - Revenge - current'),
(1796201, 2, 33787, 0, -1, 1, 0, 100, 0, 13000, 25000, 14000, 26000, 'Coilfang Collaborator - Cripple - current'),

(1990301, 1, 19130, 0, -1, 1, 0, 100, 0, 3000, 17000, 3000, 17000, 'Coilfang Collaborator - Revenge - current'),
(1990301, 2, 33787, 0, -1, 1, 0, 100, 0, 13000, 25000, 14000, 26000, 'Coilfang Collaborator - Cripple - current');

UPDATE `creature_template` SET `SpellList` = 1796201 WHERE `entry` = 17962;
UPDATE `creature_template` SET `SpellList` = 1990301 WHERE `entry` = 19903; 

-- Coilfang Tempest 
DELETE FROM `creature_template_spells` WHERE `entry` = 21127;
DELETE FROM `creature_template_spells` WHERE `entry` = 21843;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2112701, 2184301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2112701, 'Slave Pens - Coilfang Tempest - Normal', 0, 0),
(2184301, 'Slave Pens - Coilfang Tempest - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2112701, 2184301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2112701, 1, 36872, 0, -1, 130, 0, 100, 0, 10000, 22000, 10000, 22000, 'Coilfang Tempest - Deadly Poison - top aggro aura not present'),
(2112701, 2, 15667, 0, -1, 1, 0, 100, 0, 6000, 21000, 6000, 21000, 'Coilfang Tempest - Sinister Strike - current'),

(2184301, 1, 36872, 0, -1, 130, 0, 100, 0, 10000, 22000, 10000, 22000, 'Coilfang Tempest - Deadly Poison - top aggro aura not present'),
(2184301, 2, 15667, 0, -1, 1, 0, 100, 0, 6000, 21000, 6000, 21000, 'Coilfang Tempest - Sinister Strike - current');

UPDATE `creature_template` SET `SpellList` = 2112701 WHERE `entry` = 21127;
UPDATE `creature_template` SET `SpellList` = 2184301 WHERE `entry` = 21843; 
