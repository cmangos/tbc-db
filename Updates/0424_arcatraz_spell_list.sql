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


-- Ethereum Slayer
DELETE FROM `creature_template_spells` WHERE `entry` IN (20896, 21596);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2089601, 2159601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2089601, 'The Arcatraz - Ethereum Slayer - Normal', 0, 0),
(2159601, 'The Arcatraz - Ethereum Slayer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2089601, 2159601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2089601, 1, 36839, 0, -1, 100, 0, 100, 0, 6000, 18000, 6000, 18000, 'Ethereum Slayer - Impairing Poison - random'),
(2089601, 2, 36838, 0, -1, 1, 0, 100, 0, 11000, 22000, 11000, 22000, 'Ethereum Slayer - Slaying Strike - current'),
(2159601, 1, 36839, 0, -1, 100, 0, 100, 0, 6000, 18000, 6000, 18000, 'Ethereum Slayer - Impairing Poison - random'),
(2159601, 2, 38894, 0, -1, 1, 0, 100, 0, 11000, 22000, 11000, 22000, 'Ethereum Slayer - Slaying Strike - current');

UPDATE `creature_template` SET `SpellList` = 2089601 WHERE `entry` = 20896;
UPDATE `creature_template` SET `SpellList` = 2159601 WHERE `entry` = 21596;

-- Ethereum Wave-Caster 20897
DELETE FROM `creature_template_spells` WHERE `entry` IN (20897, 21597);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2089701, 2159701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2089701, 'The Arcatraz - Ethereum Wave-Caster - Normal', 0, 0),
(2159701, 'The Arcatraz - Ethereum Wave-Caster - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2089701, 2159701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2089701, 1, 38897, 0, -1, 105, 0, 100, 0, 8000, 16000, 8000, 16000, 'Ethereum Wave-Caster - Sonic Boom - random mana user'),
(2089701, 2, 36840, 0, -1, 101, 0, 100, 0, 9000, 13000, 16000, 20000, 'Ethereum Wave-Caster - Polymorph - random not tank'),

(2159701, 1, 38897, 0, -1, 105, 0, 100, 0, 8000, 16000, 8000, 16000, 'Ethereum Wave-Caster - Sonic Boom - random mana user'),
(2159701, 2, 38896, 0, -1, 101, 0, 100, 0, 9000, 13000, 16000, 20000, 'Ethereum Wave-Caster - Polymorph - random not tank');

UPDATE `creature_template` SET `SpellList` = 2089701 WHERE `entry` = 20897;
UPDATE `creature_template` SET `SpellList` = 2159701 WHERE `entry` = 21597;


-- Gargantuan Abyssal
DELETE FROM `creature_template_spells` WHERE `entry` IN (20898, 21598);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2089801, 2159801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2089801, 'The Arcatraz - Gargantuan Abyssal - Normal', 0, 0),
(2159801, 'The Arcatraz - Gargantuan Abyssal - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2089801, 2159801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2089801, 1, 36837, 0, -1, 100, 0, 100, 0, 9000, 16000, 16000, 22000, 'Gargantuan Abyssal - Meteor - random'),
(2159801, 1, 38903, 0, -1, 100, 0, 100, 0, 9000, 16000, 16000, 22000, 'Gargantuan Abyssal - Meteor - random');

UPDATE `creature_template` SET `SpellList` = 2089801 WHERE `entry` = 20898;
UPDATE `creature_template` SET `SpellList` = 2159801 WHERE `entry` = 21598;


-- Unchained Doombringer
DELETE FROM `creature_template_spells` WHERE `entry` IN (20900, 21621);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2090001, 2162101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2090001, 'The Arcatraz - Unchained Doombringer - Normal', 0, 0),
(2162101, 'The Arcatraz - Unchained Doombringer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2090001, 2162101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2090001, 1, 36833, 0, -1, 1, 0, 100, 0, 12000, 18000, 16000, 24000, 'Unchained Doombringer - Berserker Charge - current'),
(2090001, 2, 36835, 0, -1, 1, 0, 100, 0, 10000, 18000, 18000, 24000, 'Unchained Doombringer - War Stomp - current'),
(2090001, 3, 36836, 0, -1, 1, 0, 100, 0, 7000, 12000, 12000, 20000, 'Unchained Doombringer - Agonizing Armor - current'),

(2162101, 1, 36833, 0, -1, 1, 0, 100, 0, 12000, 18000, 16000, 24000, 'Unchained Doombringer - Berserker Charge - current'),
(2162101, 2, 38911, 0, -1, 1, 0, 100, 0, 10000, 18000, 18000, 24000, 'Unchained Doombringer - War Stomp - current'),
(2162101, 3, 36836, 0, -1, 1, 0, 100, 0, 7000, 12000, 12000, 20000, 'Unchained Doombringer - Agonizing Armor - current');


UPDATE `creature_template` SET `SpellList` = 2090001 WHERE `entry` = 20900;
UPDATE `creature_template` SET `SpellList` = 2162101 WHERE `entry` = 21621;



-- Sargeron Archer
DELETE FROM `creature_template_spells` WHERE `entry` IN (20901, 21610);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2090101, 2161001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2090101, 'The Arcatraz - Sargeron Archer - Normal', 0, 80),
(2161001, 'The Arcatraz - Sargeron Archer - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2090101, 2161001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2090101, 1, 36828, 0, -1, 0, 0, 100, 0, 15000, 25000, 16000, 26000, 'Sargeron Archer - Rapid Fire - self'),
(2090101, 2, 23601, 0, -1, 1, 0, 100, 0, 12000, 22000, 17000, 27000, 'Sargeron Archer - Scatter Shot - current'),
(2090101, 3, 36827, 0, -1, 1, 0, 100, 0, 10000, 20000, 15000, 25000, 'Sargeron Archer - Hooked Net - current'),
(2090101, 4, 36984, 0, -1, 1, 0, 100, 0, 12000, 15000, 17000, 23000, 'Sargeron Archer - Serpent Sting - current'),
(2090101, 5, 35964, 0, -1, 1, 0, 50, 0, 12000, 15000, 17000, 23000, 'Sargeron Archer - Frost Arrow - current'),
(2090101, 6, 35932, 0, -1, 1, 0, 50, 0, 12000, 15000, 17000, 23000, 'Sargeron Archer - Immolation Arrow - current'),
(2090101, 7, 22907, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Sargeron Archer - Shoot - current'),

(2161001, 1, 36828, 0, -1, 0, 0, 100, 0, 15000, 25000, 16000, 26000, 'Sargeron Archer - Rapid Fire - self'),
(2161001, 2, 23601, 0, -1, 0, 0, 100, 0, 12000, 22000, 17000, 27000, 'Sargeron Archer - Scatter Shot - current'),
(2161001, 3, 38912, 0, -1, 0, 0, 100, 0, 10000, 20000, 15000, 25000, 'Sargeron Archer - Hooked Net - current'),
(2161001, 4, 38942, 0, -1, 1, 0, 100, 0, 12000, 15000, 17000, 23000, 'Sargeron Archer - Serpent Sting - current'),
(2161001, 5, 38943, 0, -1, 1, 0, 50, 0, 12000, 15000, 17000, 23000, 'Sargeron Archer - Frost Arrow - current'),
(2161001, 6, 38914, 0, -1, 1, 0, 50, 0, 12000, 15000, 17000, 23000, 'Sargeron Archer - Immolation Arrow - current'),
(2161001, 7, 38940, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Sargeron Archer - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 2090101 WHERE `entry` = 20901;
UPDATE `creature_template` SET `SpellList` = 2161001 WHERE `entry` = 21610;

-- Sargeron Hellcaller
DELETE FROM `creature_template_spells` WHERE `entry` IN (20902, 21611);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2090201, 2161101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2090201, 'The Arcatraz - Sargeron Hellcaller - Normal', 0, 0),
(2161101, 'The Arcatraz - Sargeron Hellcaller - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2090201, 2161101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2090201, 1, 36833, 0, -1, 121, 0, 100, 0, 8000, 16000, 17000, 25000, 'Sargeron Hellcaller - Curse of Elements - current'),
(2090201, 2, 36829, 0, -1, 103, 0, 100, 0, 11000, 19000, 18000, 25000, 'Sargeron Hellcaller - Hell Rain - aoe'),
(2090201, 3, 36832, 0, -1, 1, 0, 100, 0, 7000, 15000, 15000, 21000, 'Sargeron Hellcaller - Incinerate - current'),

(2161101, 1, 36833, 0, -1, 121, 0, 100, 0, 8000, 16000, 17000, 25000, 'Sargeron Hellcaller - Curse of Elements - current'),
(2161101, 2, 38917, 0, -1, 103, 0, 100, 0, 11000, 19000, 18000, 25000, 'Sargeron Hellcaller - Hell Rain - current'),
(2161101, 3, 38918, 0, -1, 1, 0, 100, 0, 7000, 15000, 15000, 21000, 'Sargeron Hellcaller - Incinerate - current');

UPDATE `creature_template` SET `SpellList` = 2090201 WHERE `entry` = 20902;
UPDATE `creature_template` SET `SpellList` = 2161101 WHERE `entry` = 21611;



-- Ethereum Life-Binder
DELETE FROM `creature_template_spells` WHERE `entry` IN (21702, 22346);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2170201, 2234601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2170201, 'The Arcatraz - Ethereum Life-Binder - Normal', 0, 0),
(2234601, 'The Arcatraz - Ethereum Life-Binder - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2170201, 2234601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2170201, 1, 37480, 0, -1, 1, 0, 100, 0, 12000, 18000, 12000, 18000, 'Ethereum Life-Binder - Bind - current'),
(2170201, 2, 37479, 0, -1, 210, 0, 100, 0, 2000, 8000, 8000, 16000, 'Ethereum Life-Binder - Shadow Mend - friendly missing 50% including self'),
(2170201, 3, 15654, 0, -1, 1, 0, 100, 0, 7000, 11000, 8000, 12000, 'Ethereum Life-Binder - Shadow Word: Pain - current'),

(2234601, 1, 38900, 0, -1, 1, 0, 100, 0, 12000, 18000, 12000, 18000, 'Ethereum Life-Binder - Bind - current'),
(2234601, 2, 38899, 0, -1, 210, 0, 100, 0, 2000, 8000, 8000, 16000, 'Ethereum Life-Binder - Shadow Mend - friendly missing 50% including self'),
(2234601, 3, 34941, 0, -1, 1, 0, 100, 0, 7000, 11000, 8000, 12000, 'Ethereum Life-Binder - Shadow Word: Pain - current');


UPDATE `creature_template` SET `SpellList` = 2170201 WHERE `entry` = 21702;
UPDATE `creature_template` SET `SpellList` = 2234601 WHERE `entry` = 22346;
