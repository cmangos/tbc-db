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
(2086401, 1, 36617, 0, -1, 1, 0, 100, 0, 16000, 25000, 18000, 27000, 'Protean Nightmare - Gaping Maw - current'),
(2086401, 2, 36619, 0, -1, 100, 0, 100, 0, 11000, 16000, 12000, 21000, 'Protean Nightmare - Infectious Poison - random'),
(2086401, 3, 36622, 0, -1, 121, 0, 100, 0, 10000, 19000, 14000, 23000, 'Protean Nightmare - Incubation - random aura not present'),
(2160801, 1, 38810, 0, -1, 1, 0, 100, 0, 16000, 25000, 18000, 27000, 'Protean Nightmare - Gaping Maw - current'),
(2160801, 2, 38811, 0, -1, 100, 0, 100, 0, 11000, 16000, 12000, 21000, 'Protean Nightmare - Infectious Poison - random'),
(2160801, 3, 36622, 0, -1, 121, 0, 100, 0, 10000, 19000, 14000, 23000, 'Protean Nightmare - Incubation - random aura not present');


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
(2086501, 1, 36612, 0, -1, 1, 0, 100, 0, 3000, 5000, 3000, 5000, 'Protean Horror - Toothy Bite - current'),
(2160701, 1, 36612, 0, -1, 1, 0, 100, 0, 3000, 5000, 3000, 5000, 'Protean Horror - Toothy Bite - current');

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
(2086601, 1, 36644, 0, -1, 0, 0, 100, 0, 9000, 20000, 10000, 21000, 'Soul Devourer - Sightless Eye - self'),
(2086601, 2, 36654, 0, -1, 0, 0, 100, 0, 12000, 13000, 12000, 13000, 'Soul Devourer - Fel Breath - self'),
(2161401, 1, 36644, 0, -1, 0, 0, 100, 0, 9000, 20000, 10000, 21000, 'Soul Devourer - Sightless Eye - self'),
(2161401, 2, 38813, 0, -1, 0, 0, 100, 0, 12000, 13000, 12000, 13000, 'Soul Devourer - Fel Breath - self');


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
(2086801, 1, 36677, 0, -1, 100, 0, 100, 0, 7000, 19000, 15000, 26000, 'Entropic Eye - Chaos Breath - random'),
(2086801, 2, 36664, 0, -1, 100, 0, 100, 0, 9000, 14000, 10000, 15000, 'Entropic Eye - Tentacle Cleave - random'),
(2159301, 1, 36677, 0, -1, 100, 0, 100, 0, 7000, 19000, 15000, 26000, 'Entropic Eye - Chaos Breath - random'),
(2159301, 2, 38816, 0, -1, 100, 0, 100, 0, 9000, 14000, 10000, 15000, 'Entropic Eye - Tentacle Cleave - random');

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
(2139501, 1, 36796, 0, -1, 1, 0, 100, 0, 3000, 15000, 3000, 15000, 'Protean Spawn - Acidic Bite - current'),
(2160901, 1, 36796, 0, -1, 1, 0, 100, 0, 3000, 15000, 3000, 15000, 'Protean Spawn - Acidic Bite - current');

UPDATE `creature_template` SET `SpellList` = 2139501 WHERE `entry` = 21395;
UPDATE `creature_template` SET `SpellList` = 2160901 WHERE `entry` = 21609;

--  Negaton Warp-Master
DELETE FROM `creature_template_spells` WHERE `entry` IN (20873, 21605);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2087301, 2160501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2087301, 'The Arcatraz - Negaton Warp-Master - Normal', 0, 0),
(2160501, 'The Arcatraz - Negaton Warp-Master - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2087301, 2160501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2087301, 1, 36813, 0, -1, 0, 0, 100, 0, 5000, 16000, 10000, 24000, 'Negaton Warp-Master - Summon Negaton Field - self'),
(2160501, 1, 36813, 0, -1, 0, 0, 100, 0, 5000, 16000, 10000, 24000, 'Negaton Warp-Master - Summon Negaton Field - self');

UPDATE `creature_template` SET `SpellList` = 2087301 WHERE `entry` = 20873;
UPDATE `creature_template` SET `SpellList` = 2160501 WHERE `entry` = 21605;


-- Eredar Soul-Eater
DELETE FROM `creature_template_spells` WHERE `entry` IN (20879, 21595);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2087901, 2159501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2087901, 'The Arcatraz - Eredar Soul-Eater - Normal', 0, 0),
(2159501, 'The Arcatraz - Eredar Soul-Eater - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2087901, 2159501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2087901, 1, 36786, 0, -1, 0, 0, 100, 0, 6000, 19000, 16000, 24000, 'Eredar Soul-Eater - Soul Chill - self'),
(2087901, 2, 36778, 0, -1, 0, 0, 100, 0, 14000, 21000, 14000, 14000, 'Eredar Soul-Eater - Soul Steal - self'),
(2159501, 1, 38843, 0, -1, 0, 0, 100, 0, 6000, 19000, 16000, 24000, 'Eredar Soul-Eater - Soul Chill - self'),
(2159501, 2, 36778, 0, -1, 0, 0, 100, 0, 14000, 21000, 14000, 14000, 'Eredar Soul-Eater - Soul Steal - self');

UPDATE `creature_template` SET `SpellList` = 2087901 WHERE `entry` = 20879;
UPDATE `creature_template` SET `SpellList` = 2159501 WHERE `entry` = 21595;

-- Eredar Deathbringer
DELETE FROM `creature_template_spells` WHERE `entry` IN (20880, 21594);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2088001, 2159401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2088001, 'The Arcatraz - Eredar Deathbringer - Normal', 0, 0),
(2159401, 'The Arcatraz - Eredar Deathbringer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2088001, 2159401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2088001, 1, 36787, 0, -1, 1, 0, 100, 0, 10000, 20000, 12000, 22000, 'Eredar Deathbringer - Soul Chill - current'),
(2159401, 1, 38846, 0, -1, 1, 0, 100, 0, 10000, 20000, 12000, 22000, 'Eredar Deathbringer - Soul Chill - current');

UPDATE `creature_template` SET `SpellList` = 2088001 WHERE `entry` = 20880;
UPDATE `creature_template` SET `SpellList` = 2159401 WHERE `entry` = 21594;


-- Unbound Devastator
DELETE FROM `creature_template_spells` WHERE `entry` IN (20881, 21619);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2088101, 2161901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2088101, 'The Arcatraz - Unbound Devastator - Normal', 0, 0),
(2161901, 'The Arcatraz - Unbound Devastator - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2088101, 2161901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2088101, 1, 36891, 0, -1, 1, 0, 100, 0, 14000, 21000, 14000, 21000, 'Unbound Devastator - Devastate - current'),
(2088101, 2, 36887, 0, -1, 0, 0, 100, 0, 5000, 12000, 12000, 19000, 'Unbound Devastator - Deafening Roar - self'),
(2161901, 1, 38849, 0, -1, 1, 0, 100, 0, 14000, 21000, 14000, 21000, 'Unbound Devastator - Devastate - current'),
(2161901, 2, 38850, 0, -1, 0, 0, 100, 0, 5000, 12000, 12000, 19000, 'Unbound Devastator - Deafening Roar - self');

UPDATE `creature_template` SET `SpellList` = 2088101 WHERE `entry` = 20881;
UPDATE `creature_template` SET `SpellList` = 2161901 WHERE `entry` = 21619;

-- Spiteful Temptress
DELETE FROM `creature_template_spells` WHERE `entry` IN (20883, 21615);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2088301, 2161501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2088301, 'The Arcatraz - Spiteful Temptress - Normal', 0, 0),
(2161501, 'The Arcatraz - Spiteful Temptress - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2088301, 2161501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2088301, 1, 36866, 0, -1, 101, 0, 100, 0, 7000, 14000, 12000, 19000, 'Spiteful Temptress - Domination - random not tank'),
(2088301, 2, 36868, 0, -1, 1, 0, 100, 0, 6000, 14000, 12000, 20000, 'Spiteful Temptress - Shadow Bolt - current'),
(2088301, 3, 36886, 0, -1, 100, 0, 100, 0, 1000, 5000, 12000, 16000, 'Spiteful Temptress - Spiteful Fury - random'),

(2161501, 1, 36866, 0, -1, 101, 0, 100, 0, 7000, 14000, 12000, 19000, 'Spiteful Temptress - Domination - random not tank'),
(2161501, 2, 38892, 0, -1, 1, 0, 100, 0, 6000, 14000, 12000, 20000, 'Spiteful Temptress - Shadow Bolt - current'),
(2161501, 3, 36886, 0, -1, 100, 0, 100, 0, 1000, 5000, 12000, 16000, 'Spiteful Temptress - Spiteful Fury - random');

UPDATE `creature_template` SET `SpellList` = 2088301 WHERE `entry` = 20883;
UPDATE `creature_template` SET `SpellList` = 2161501 WHERE `entry` = 21615;
