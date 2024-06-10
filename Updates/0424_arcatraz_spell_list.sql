-- Arcatraz Warder
DELETE FROM `creature_template_spells` WHERE `entry` IN (20859, 21587);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2085901, 2158701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2085901, 'The Arcatraz - Arcatraz Warder - Normal', 0, 80),
(2158701, 'The Arcatraz - Arcatraz Warder - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2085901, 2158701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2085901, 1, 35963, 0, -1, 1, 0, 100, 0, 0, 6000, 6000, 12000, 'Arcatraz Warder - Improved Wing Clip - current'),
(2085901, 2, 38808, 0, -1, 100, 0, 100, 0, 10000, 15000, 10000, 15000, 'Arcatraz Warder - Charged Arcane - random'),
(2085901, 3, 36609, 0, -1, 1, 0, 100, 0, 1000, 5000, 5000, 10000, 'Arcatraz Warder - Arcane Shot - current'),
(2085901, 4, 22907, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 3900, 'Arcatraz Warder - Shoot - current'),
(2158701, 1, 35963, 0, -1, 1, 0, 100, 0, 0, 6000, 6000, 12000, 'Arcatraz Warder - Improved Wing Clip - current'),
(2158701, 2, 38808, 0, -1, 100, 0, 100, 0, 10000, 15000, 10000, 15000, 'Arcatraz Warder - Charged Arcane - random'),
(2158701, 3, 38807, 0, -1, 1, 0, 100, 0, 1000, 5000, 5000, 10000, 'Arcatraz Warder - Arcane Shot - current'),
(2158701, 4, 38940, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 3900, 'Arcatraz Warder - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 2085901 WHERE `entry` = 20859;
UPDATE `creature_template` SET `SpellList` = 2158701 WHERE `entry` = 21587;


-- Protean Nightmare
DELETE FROM `creature_template_spells` WHERE `entry` IN (20864, 21608);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2086401, 2160801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2086401, 'The Arcatraz - Protean Nightmare - Normal', 0, 0),
(2160801, 'The Arcatraz - Protean Nightmare - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2086401, 2160801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2086401, 1, 36617, 0, -1, 1, 0, 1, 0, 16000, 25000, 18000, 27000, 'Protean Nightmare - Gaping Maw - current'),
(2086401, 2, 36619, 0, -1, 100, 0, 1, 0, 11000, 16000, 12000, 21000, 'Protean Nightmare - Infectious Poison - random'),
(2086401, 3, 36622, 0, -1, 1, 0, 121, 0, 10000, 19000, 14000, 23000, 'Protean Nightmare - Incubation - random aura not present'),
(2160801, 1, 38810, 0, -1, 1, 0, 1, 0, 16000, 25000, 18000, 27000, 'Protean Nightmare - Gaping Maw - current'),
(2160801, 2, 38811, 0, -1, 100, 0, 1, 0, 11000, 16000, 12000, 21000, 'Protean Nightmare - Infectious Poison - random'),
(2160801, 3, 36622, 0, -1, 1, 0, 121, 0, 10000, 19000, 14000, 23000, 'Protean Nightmare - Incubation - random aura not present');


UPDATE `creature_template` SET `SpellList` = 2086401 WHERE `entry` = 20864;
UPDATE `creature_template` SET `SpellList` = 2160801 WHERE `entry` = 21608;


-- Protean Horror
DELETE FROM `creature_template_spells` WHERE `entry` IN (20865, 21607);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2086501, 2160701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2086501, 'The Arcatraz - Protean Horror - Normal', 0, 0),
(2160701, 'The Arcatraz - Protean Horror - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2086501, 2160701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2086501, 1, 36612, 0, -1, 1, 0, 1, 0, 3000, 5000, 3000, 5000, 'Protean Horror - Toothy Bite - current'),
(2160701, 1, 36612, 0, -1, 1, 0, 1, 0, 3000, 5000, 3000, 5000, 'Protean Horror - Toothy Bite - current');

UPDATE `creature_template` SET `SpellList` = 2086501 WHERE `entry` = 20865;
UPDATE `creature_template` SET `SpellList` = 2160701 WHERE `entry` = 21607;


-- Soul Devourer
DELETE FROM `creature_template_spells` WHERE `entry` IN (20866, 21614);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2086601, 2161401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2086601, 'The Arcatraz - Soul Devourer - Normal', 0, 0),
(2161401, 'The Arcatraz - Soul Devourer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2086601, 2161401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2086601, 1, 36644, 0, -1, 0, 0, 1, 0, 9000, 20000, 10000, 21000, 'Soul Devourer - Sightless Eye - self'),
(2086601, 2, 36654, 0, -1, 0, 0, 1, 0, 12000, 13000, 12000, 13000, 'Soul Devourer - Fel Breath - self'),
(2161401, 1, 36644, 0, -1, 0, 0, 1, 0, 9000, 20000, 10000, 21000, 'Soul Devourer - Sightless Eye - self'),
(2161401, 2, 38813, 0, -1, 0, 0, 1, 0, 12000, 13000, 12000, 13000, 'Soul Devourer - Fel Breath - self');


UPDATE `creature_template` SET `SpellList` = 2086601 WHERE `entry` = 20866;
UPDATE `creature_template` SET `SpellList` = 2161401 WHERE `entry` = 21614;


-- Entropic Eye
DELETE FROM `creature_template_spells` WHERE `entry` IN (20868, 21593);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2086801, 2159301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2086801, 'The Arcatraz - Entropic Eye - Normal', 0, 0),
(2159301, 'The Arcatraz - Entropic Eye - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2086801, 2159301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2086801, 1, 36677, 0, -1, 100, 0, 1, 0, 7000, 19000, 15000, 26000, 'Entropic Eye - Chaos Breath - random'),
(2086801, 2, 36664, 0, -1, 100, 0, 1, 0, 9000, 14000, 10000, 15000, 'Entropic Eye - Tentacle Cleave - random'),
(2159301, 1, 36677, 0, -1, 100, 0, 1, 0, 7000, 19000, 15000, 26000, 'Entropic Eye - Chaos Breath - random'),
(2159301, 2, 38816, 0, -1, 100, 0, 1, 0, 9000, 14000, 10000, 15000, 'Entropic Eye - Tentacle Cleave - random');

UPDATE `creature_template` SET `SpellList` = 2086801 WHERE `entry` = 20868;
UPDATE `creature_template` SET `SpellList` = 2159301 WHERE `entry` = 21593;


-- Protean Spawn
DELETE FROM `creature_template_spells` WHERE `entry` IN (21395, 21609);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2139501, 2160901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2139501, 'The Arcatraz - Protean Spawn - Normal', 0, 0),
(2160901, 'The Arcatraz - Protean Spawn - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2139501, 2160901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2139501, 1, 36796, 0, -1, 1, 0, 1, 0, 3000, 15000, 3000, 15000, 'Protean Spawn - Acidic Biteh - current'),
(2160901, 1, 36796, 0, -1, 1, 0, 1, 0, 3000, 15000, 3000, 15000, 'Protean Spawn - Acidic Biteh - current');

UPDATE `creature_template` SET `SpellList` = 2139501 WHERE `entry` = 21395;
UPDATE `creature_template` SET `SpellList` = 2160901 WHERE `entry` = 21609;