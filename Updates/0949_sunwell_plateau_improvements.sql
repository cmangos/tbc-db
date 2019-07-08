-- Sunwell Plateau

-- Triggers
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` IN (
25357, -- Felmyst Flight Target - Left
25358, -- Felmyst Flight Target - Right
25770, -- M'uru Portal Target
25953 -- Fel Crystal Spell Target
);

-- Spells
DELETE FROM `spell_script_target` WHERE `entry` IN (46245);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(46245, 1, 25848, 0); -- Summon Shadowsword Deathbringer

-- Trash

-- Boss 1-3

-- Boss 4-6

-- Shadowsword Deathbringer 25485
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 25485;

-- Volatile Fiend 25851
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 25851;

-- Bosses

-- 24850	Kalecgos
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 24850;
UPDATE `creature_model_info` SET `bounding_radius` = 1.75, `combat_reach` = 10.5 WHERE `modelid` = 23345;

-- 24882	Brutallus
UPDATE `creature_template` SET `SpeedWalk` = (7 / 2.5), `SpeedRun` = (20 / 7) WHERE `entry` = 24882;
UPDATE `creature_model_info` SET `bounding_radius` = 6, `combat_reach` = 18 WHERE `modelid` = 22711;

-- 24891	Kalecgos
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 24891;
UPDATE `creature_model_info` SET `bounding_radius` = 0.612, `combat_reach` = 3 WHERE `modelid` = 23350;

-- 24892	Sathrovarr the Corruptor
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 24892;
UPDATE `creature_model_info` SET `bounding_radius` = 0.612, `combat_reach` = 3 WHERE `modelid` = 6686;

-- 24895	Madrigosa
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (20 / 7), `UnitFlags` = 33600 WHERE `entry` = 24895;
UPDATE `creature_model_info` SET `bounding_radius` = 1.75, `combat_reach` = 17.5 WHERE `modelid` = 22965;

-- 25038	Felmyst - s.45069
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (20 / 7), `UnitFlags` = 32832 WHERE `entry` = 25038;
UPDATE `creature_model_info` SET `bounding_radius` = 0.48, `combat_reach` = 11.2 WHERE `modelid` = 22838;
UPDATE `creature_model_info` SET `bounding_radius` = 0.8, `combat_reach` = 1.6 WHERE `modelid` = 23830;

-- 25165	Lady Sacrolash
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (12 / 7), `Faction` = 16, `UnitFlags` = 32832 WHERE `entry` = 25165;
UPDATE `creature_model_info` SET `bounding_radius` = 0.8893, `combat_reach` = 2.5 WHERE `modelid` = 23177;

-- 25166	Grand Warlock Alythess
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (12 / 7), `Faction` = 16, `UnitFlags` = 32832 WHERE `entry` = 25166;
UPDATE `creature_model_info` SET `bounding_radius` = 0.8893, `combat_reach` = 2.5 WHERE `modelid` = 23334;

-- 25267	Demonic Vapor (Trail) - s.45410
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (4 / 7), `UnitFlags` = 33554432 WHERE `entry` = 25267;
UPDATE `creature_model_info` SET `bounding_radius` = 0.5, `combat_reach` = 1 WHERE `modelid` = 11686;

-- 25268	Unyielding Dead - s.45400
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `Faction` = 16, `UnitFlags` = 32832 WHERE `entry` = 25268;
UPDATE `creature_model_info` SET `bounding_radius` = 0.694444, `combat_reach` = 3 WHERE `modelid` = 17970;
UPDATE `creature_model_info` SET `bounding_radius` = 0.694444, `combat_reach` = 3 WHERE `modelid` = 17990;

-- 25315	Kil'jaeden
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (12 / 7), `Faction` = 16, `UnitFlags` = 34113600 WHERE `entry` = 25315;
UPDATE `creature_model_info` SET `bounding_radius` = 6, `combat_reach` = 15 WHERE `modelid` = 23200;

-- 25319	Kalecgos
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (12 / 7), `UnitFlags` = 32832 WHERE `entry` = 25319;
UPDATE `creature_model_info` SET `bounding_radius` = 1.75, `combat_reach` = 10.5 WHERE `modelid` = 23345;

-- 25502	Shield Orb
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (4 / 7) WHERE `entry` = 25502;
UPDATE `creature_model_info` SET `bounding_radius` = 1, `combat_reach` = 1 WHERE `modelid` = 18996;

-- 25588	Hand of the Deceiver
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7), `Faction` = 16, `UnitFlags` = 32832 WHERE `entry` = 25588;
UPDATE `creature_model_info` SET `bounding_radius` = 0.76389, `combat_reach` = 2.5 WHERE `modelid` = 19294;

-- 25598	Volatile Felfire Fiend - s.45781 -> s.47067 (altering unitflags?)
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7), `Faction` = 16, `UnitFlags` = 32768 WHERE `entry` = 25598;
UPDATE `creature_model_info` SET `bounding_radius` = 1, `combat_reach` = 2 WHERE `modelid` = 19611;

-- 25603	Felfire Portal - s.46875
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (7 / 7), `Faction` = 16, `UnitFlags` = 33555200 WHERE `entry` = 25603;
UPDATE `creature_model_info` SET `bounding_radius` = 2, `combat_reach` = 2 WHERE `modelid` = 23422;

-- 25608	Kil'jaeden
UPDATE `creature_template` SET `MinLevel` = 60, `MaxLevel` = 60, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 25608;
UPDATE `creature_model_info` SET `bounding_radius` = 0.5, `combat_reach` = 1 WHERE `modelid` = 11686;

-- 25640	Orb Target
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 25640;
UPDATE `creature_model_info` SET `bounding_radius` = 0.5, `combat_reach` = 1 WHERE `modelid` = 11686;

-- 25708	Sinister Reflection - s.45891
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 25708;
UPDATE `creature_model_info` SET `bounding_radius` = 0.354, `combat_reach` = 2.25 WHERE `modelid` = 18069;

-- 25741	M'uru
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (7 / 7), `Faction` = 16 WHERE `entry` = 25741;
UPDATE `creature_model_info` SET `bounding_radius` = 0.61, `combat_reach` = 6 WHERE `modelid` = 23404;

-- 25744	Dark Fiend - s.46000
UPDATE `creature_template` SET `SpeedWalk` = (3 / 2.5), `SpeedRun` = (3 / 7) WHERE `entry` = 25744;
UPDATE `creature_model_info` SET `bounding_radius` = 1, `combat_reach` = 2 WHERE `modelid` = 23842;

-- 25772	Void Sentinel - s.45988
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6.94444 / 7) WHERE `entry` = 25772;
UPDATE `creature_model_info` SET `bounding_radius` = 3, `combat_reach` = 3 WHERE `modelid` = 23372;

-- 25782	Void Sentinal Summoner - s.45978
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 25782;
UPDATE `creature_model_info` SET `bounding_radius` = 1.5, `combat_reach` = 3 WHERE `modelid` = 23377;

-- 25798	Shadowsword Berserker - s.46040
UPDATE `creature_template` SET `SpeedWalk` = (2.22222 / 2.5), `SpeedRun` = (10 / 7), `Faction` = 16, `UnitFlags` = 32832, `MeleeBaseAttackTime` = 1500 WHERE `entry` = 25798;
UPDATE `creature_model_info` SET `bounding_radius` = 0.435, `combat_reach` = 2.175 WHERE `modelid` = 23225;

-- 25799	Shadowsword Fury Mage - s.46039
UPDATE `creature_template` SET `SpeedWalk` = (2.22222 / 2.5), `SpeedRun` = (10 / 7), `Faction` = 16, `UnitFlags` = 32832 WHERE `entry` = 25799;
UPDATE `creature_model_info` SET `bounding_radius` = 0.435, `combat_reach` = 2.175 WHERE `modelid` = 23226;

-- 25824	Void Spawn - s.46071
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 25824;
UPDATE `creature_model_info` SET `bounding_radius` = 0.9995355, `combat_reach` = 2.5 WHERE `modelid` = 1130;

-- 25840	Entropius - s.46217
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (10 / 7), `Faction` = 16, `MeleeBaseAttackTime` = 1500 WHERE `entry` = 25840;
UPDATE `creature_model_info` SET `bounding_radius` = 6, `combat_reach` = 6 WHERE `modelid` = 23428;

-- 25855	Singularity - s.46282
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (5 / 7) WHERE `entry` = 25855;
UPDATE `creature_model_info` SET `bounding_radius` = 0.75, `combat_reach` = 1.5 WHERE `modelid` = 17612;

-- 25879	Darkness - s.46268
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 25879;
UPDATE `creature_model_info` SET `bounding_radius` = 0.5, `combat_reach` = 1 WHERE `modelid` = 11686;

