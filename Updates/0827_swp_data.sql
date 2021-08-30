-- ===================================================================================================
-- Sunwell Plateau
-- ===================================================================================================

-- Kalecgos 24850
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|32 WHERE `entry` = 24850;
-- Sathrovarr the Corruptor 24892
-- Kalecgos 24891
-- Brutallus 24882
-- Felmyst 25038
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|32 WHERE `entry` = 25038;
-- Unyielding Dead 25268
-- Lady Sacrolash 25165
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` = 25165;
-- Grand Warlock Alythess 25166
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` = 25166;
-- Shadow Image 25214 - npc_shadow_image
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 25214;
-- M'uru 25741
UPDATE `creature_template` SET `Detection` = 32 WHERE `entry` = 25741;
DELETE FROM `creature_linking_template` WHERE `master_entry` = 25741; -- Handled in Core
-- Entropius 25840
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|32 WHERE `entry` = 25840; -- Needs some more confirmation on nocrush
DELETE FROM `creature_linking_template` WHERE `master_entry` = 25840; -- Handled in Core
-- Shadowsword Berserker 25798
-- Shadowsword Fury Mage 25799
-- Void Sentinal 25772
-- Void Sentinal Summoner 25782
-- Void Spawn 25824
-- Dark Fiend 25744
-- Darkness 25879
-- Kil'jaeden <The Deceiver> 25315
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|32 WHERE `entry` = 25315;
DELETE FROM `creature_linking_template` WHERE `master_entry` = 25315; -- Handled in Core
-- Hand of the Deceiver 25588
UPDATE `creature_template` SET `UnitClass` = 2, `PowerMultiplier` = 50  WHERE `entry` = 25588;
DELETE FROM `creature_linking_template` WHERE `master_entry` = 25588; -- Handled in ACID
-- Felfire Portal 25603
-- Volatile Felfire Fiend 25598
-- Sinister Reflection 25708
-- Shield Orb 25502
-- Kalecgos 25319

-- Trash Mobs

-- Sunblade Cabalist 25363
UPDATE `creature_template` SET `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25363';
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = '25363';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23537';
-- Sunblade Arch Mage 25367
UPDATE `creature_template` SET `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25367';
-- Sunblade Slayer 25368
UPDATE `creature_template` SET `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25368';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23531';
-- Sunblade Vindicator 25369
UPDATE `creature_template` SET `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25369';
-- Sunblade Dusk Priest 25370
UPDATE `creature_template` SET `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25370';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23545';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23546';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23547';
-- Sunblade Dawn Priest 25371
UPDATE `creature_template` SET `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25371';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23542';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23543';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23544';
-- Sunblade Scout 25372
UPDATE `creature_template` SET `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25372';
UPDATE `creature_model_info` SET `bounding_radius` = 0.51704997, `combat_reach` = 2.025 WHERE `modelid` = '23533';
-- Shadowsword Soulbinder 25373
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (20 / 7), `InhabitType` = 3 WHERE `entry` = '25373';
UPDATE `creature_model_info` SET `bounding_radius` = 0.6, `combat_reach` = 3 WHERE `modelid` = '23476';
-- Shadowsword Manafiend 25483
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (19 / 7), `InhabitType` = 3 WHERE `entry` = '25483';
UPDATE `creature_model_info` SET `bounding_radius` = 0.6, `combat_reach` = 3 WHERE `modelid` = '23478';
-- Shadowsword Assassin 25484
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (8 / 2.5), `SpeedRun` = (19 / 7), `InhabitType` = 3 WHERE `entry` = '25484';
UPDATE `creature_model_info` SET `bounding_radius` = 0.6, `combat_reach` = 3 WHERE `modelid` = '23474';
-- Shadowsword Deathbringer 25485
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (16 / 7), `InhabitType` = 3 WHERE `entry` = '25485';
UPDATE `creature_model_info` SET `bounding_radius` = 0.6, `combat_reach` = 3 WHERE `modelid` = '23475';
-- Shadowsword Vanquisher 25486
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (20 / 7), `InhabitType` = 3 WHERE `entry` = '25486';
UPDATE `creature_model_info` SET `bounding_radius` = 0.754676, `combat_reach` = 3 WHERE `modelid` = '23479';
-- Shadowsword Lifeshaper 25506
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (19 / 7), `InhabitType` = 3 WHERE `entry` = '25506';
UPDATE `creature_model_info` SET `bounding_radius` = 0.6, `combat_reach` = 3 WHERE `modelid` = '23477';
-- Sunblade Protector 25507
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (5 / 2.5), `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25507';
-- Shadowsword Guardian 25508
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (5 / 2.5), `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25508';
UPDATE `creature_model_info` SET `bounding_radius` = 6.8024626, `combat_reach` = 12 WHERE `modelid` = '17205';
-- Priestess of Torment 25509
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = '25509';
-- Painbringer 25591
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25591';
UPDATE `creature_model_info` SET `combat_reach` = 3.75 WHERE `modelid` = '22811'; -- doublecheck 25005	Emissary of Dread
-- Doomfire Destroyer 25592
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25592';
-- Apocalypse Guard 25593
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25593';
-- Chaos Gazer 25595
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25595';
-- Oblivion Mage 25597
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25597';
-- Cataclysm Hound 25599
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25599';
-- Shadowsword Commander 25837
UPDATE `creature_template` SET `UnitFlags` = 32832, `SpeedWalk` = (2.22221994400024414 / 2.5), `SpeedRun` = (10 / 7), `InhabitType` = 3 WHERE `entry` = '25837';
UPDATE `creature_model_info` SET `bounding_radius` = 0.75, `combat_reach` = 3.75 WHERE `modelid` = '23473';
 -- Gauntlet Imp Trigger 25848
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 25848;
-- Volatile Fiend 25851
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25851';
-- Blazing Infernal 25860
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7), `HealthMultiplier` = '12', `MinLevelHealth` = '83832', `MaxLevelHealth` = '83832', `DamageMultiplier` = '12' WHERE `entry` = '25860';
-- Felguard Slayer 25864
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7), `HealthMultiplier` = '12', `MinLevelHealth` = '83832', `MaxLevelHealth` = '83832', `DamageMultiplier` = '18', `MinLevel` = '70', `MaxLevel` = '70', `Expansion` = '1' WHERE `entry` = '25864';
-- Sunblade Dragonhawk 25867
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25867';
-- Doomfire Shard 25948
UPDATE `creature_template` SET `Faction` = 16, `UnitFlags` = 32768, `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '25948';
-- Fire Fiend 26101
UPDATE `creature_template` SET `SpeedWalk` = (6 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = '26101';

-- Loot

DELETE FROM `creature_loot_template` WHERE `entry` IN (25165,25166);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Eredar Twins - Lady Sacrolash 25165 & Grand Warlock Alythess 25166
-- The Eredar Twins will now award the same items regardless of which order they are killed in. - https://wowwiki-archive.fandom.com/wiki/Patch_2.4.3
(25165, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'),
(25165, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(25165, 34664, 100, 0, 4, 4, 0, 'Sunmote'), -- unsure if 100% or 75% for 1-4 as befor
(25165, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(25165, 36176, 100, 1, -36176, 4, 0, 'Sunwell Plateau (Boss Loot) - Eredar Twins - Lady Sacrolash 25165 & Grand Warlock Alythess 25166 - Epic Items'),
(25165, 34848, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Conqueror'),
(25165, 34851, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Protector'),
(25165, 34852, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Vanquisher'),
(25165, 34853, 0, 1, 1, 1, 0, 'Belt of the Forgotten Conqueror'),
(25165, 34854, 0, 1, 1, 1, 0, 'Belt of the Forgotten Protector'),
(25165, 34855, 0, 1, 1, 1, 0, 'Belt of the Forgotten Vanquisher'),
(25165, 34856, 0, 1, 1, 1, 0, 'Boots of the Forgotten Conqueror'),
(25165, 34857, 0, 1, 1, 1, 0, 'Boots of the Forgotten Protector'),
(25165, 34858, 0, 1, 1, 1, 0, 'Boots of the Forgotten Vanquisher'),
(25165, 35290, 0, 2, 1, 1, 0, 'Sin''dorei Pendant of Conquest'),
(25165, 35291, 0, 2, 1, 1, 0, 'Sin''dorei Pendant of Salvation'),
(25165, 35292, 0, 2, 1, 1, 0, 'Sin''dorei Pendant of Triumph'),

(25166, 34544, -100, 0, 1, 1, 10333, 'Essence of the Immortals'),
(25166, 29434, 100, 0, 2, 2, 0, 'Badge of Justice'),
(25166, 34664, 100, 0, 4, 4, 0, 'Sunmote'),
(25166, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(25166, 36176, 100, 1, -36176, 4, 0, 'Sunwell Plateau (Boss Loot) - Eredar Twins - Lady Sacrolash 25165 & Grand Warlock Alythess 25166 - Epic Items'),
(25166, 34848, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Conqueror'),
(25166, 34851, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Protector'),
(25166, 34852, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Vanquisher'),
(25166, 34853, 0, 1, 1, 1, 0, 'Belt of the Forgotten Conqueror'),
(25166, 34854, 0, 1, 1, 1, 0, 'Belt of the Forgotten Protector'),
(25166, 34855, 0, 1, 1, 1, 0, 'Belt of the Forgotten Vanquisher'),
(25166, 34856, 0, 1, 1, 1, 0, 'Boots of the Forgotten Conqueror'),
(25166, 34857, 0, 1, 1, 1, 0, 'Boots of the Forgotten Protector'),
(25166, 34858, 0, 1, 1, 1, 0, 'Boots of the Forgotten Vanquisher'),
(25166, 35290, 0, 2, 1, 1, 0, 'Sin''dorei Pendant of Conquest'),
(25166, 35291, 0, 2, 1, 1, 0, 'Sin''dorei Pendant of Salvation'),
(25166, 35292, 0, 2, 1, 1, 0, 'Sin''dorei Pendant of Triumph');

-- Improve Loot for Entropius 25840
-- https://www.wowhead.com/npc=25840/entropius
DELETE FROM `reference_loot_template` WHERE `entry` = 36188 AND `item` IN (34427,34428,34429,34430); -- Muru Trinkets ("Sliver")
DELETE FROM `reference_loot_template` WHERE `entry` = 36191; -- Sin'dorei Band
DELETE FROM `reference_loot_template_names` WHERE `entry` = 36191; -- Sin'dorei Band
DELETE FROM `creature_loot_template` WHERE `entry` = 25840 AND `item` IN (34427,34428,34429,34430,36191); -- Muru Trinkets "Sliver" & "Sin'dorei Band"
UPDATE `creature_loot_template` SET `groupid` = 2 WHERE `entry` = 25840 AND `item` IN (35282,35283,35284);
UPDATE `creature_loot_template` SET `maxcount` = 2 WHERE `entry` = 25840 AND `item` = 36188; -- Sunwell Plateau (Boss Loot) - Entropius (25840) - Epic Items (Group 1)
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(25840, 34427, 0, 1, 1, 1, 0, 'Blackened Naaru Sliver'),
(25840, 34428, 0, 1, 1, 1, 0, 'Steely Naaru Sliver'),
(25840, 34429, 0, 1, 1, 1, 0, 'Shifting Naaru Sliver'),
(25840, 34430, 0, 1, 1, 1, 0, 'Glimmering Naaru Sliver');

UPDATE `reference_loot_template_names` SET `name` = 'Sunwell Plateau (Boss Loot) - Eredar Twins - Lady Sacrolash 25165 & Grand Warlock Alythess 25166 - Epic Items' WHERE `entry` = 36176; 
DELETE FROM `reference_loot_template` WHERE `entry` = 36178;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 36178;

-- Improve Loot for Kil'jaeden 25315
DELETE FROM `creature_loot_template` WHERE `entry` = 25315;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(25315, 12005, 33, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(25315, 29434, 100, 0, 3, 3, 0, 'Badge of Justice'),
(25315, 34334, 5, 1, 1, 1, 0, 'Thori\'dal, the Stars\' Fury'),
(25315, 34664, 100, 0, 3, 3, 0, 'Sunmote'),
(25315, 36192, 100, 1, -36192, 1, 0, 'Sunwell Plateau (Boss Loot) - Kil\'jaeden (25315) - Epic Items (Group 1)'),
(25315, 36193, 100, 1, -36193, 1, 0, 'Sunwell Plateau (Boss Loot) - Kil\'jaeden (25315) - Epic Items (Group 2)'),
(25315, 36195, 100, 1, -36195, 2, 0, 'Sunwell Plateau (Boss Loot) - Kil\'jaeden (25315) - Epic Items (Weapons)');

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (36192,36193,36194,36195);
INSERT INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(36192, 'Sunwell Plateau (Boss Loot) - Kil\'jaeden (25315) - Epic Items (Group 1)'),
(36193, 'Sunwell Plateau (Boss Loot) - Kil\'jaeden (25315) - Epic Items (Group 2)'),
(36195, 'Sunwell Plateau (Boss Loot) - Kil\'jaeden (25315) - Epic Items (Weapons)');
DELETE FROM `reference_loot_template` WHERE `entry` IN (36192,36193,36194,36195);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Cloth
(36192, 34339, 0, 1, 1, 1, 0, 'Cowl of Light\'s Purity'),
(36192, 34340, 0, 1, 1, 1, 0, 'Dark Conjuror\'s Collar'),
(36192, 34342, 0, 1, 1, 1, 0, 'Handguards of the Dawn'),
(36192, 34344, 0, 1, 1, 1, 0, 'Handguards of Defiled Worlds'),
-- Leather
(36192, 34245, 0, 1, 1, 1, 0, 'Cover of Ursol the Wise'),
(36192, 34244, 0, 1, 1, 1, 0, 'Duplicitous Guise'),
-- Mail
(36193, 34332, 0, 1, 1, 1, 0, 'Cowl of Gul\'dan'),
(36193, 34333, 0, 1, 1, 1, 0, 'Coif of Alleria'),
(36193, 34343, 0, 1, 1, 1, 0, 'Thalassian Ranger Gauntlets'),
-- Plate
(36193, 34341, 0, 1, 1, 1, 0, 'Borderland Paingrips'),
(36193, 34345, 0, 1, 1, 1, 0, 'Crown of Anasterian'),
(36193, 34243, 0, 1, 1, 1, 0, 'Helm of Burning Righteousness'),
-- Misc
(36193, 34241, 0, 1, 1, 1, 0, 'Cloak of Unforgivable Sin'), -- Physical
(36192, 34242, 0, 1, 1, 1, 0, 'Tattered Cape of Antonidas'), -- Caster
-- Weapons
(36195, 34247, 0, 1, 1, 1, 0, 'Apolyon, the Soul-Render'),
(36195, 34329, 0, 1, 1, 1, 0, 'Crux of the Apocalypse'),
(36195, 34331, 0, 1, 1, 1, 0, 'Hand of the Deceiver'),
(36195, 34335, 0, 1, 1, 1, 0, 'Hammer of Sanctification'),
(36195, 34336, 0, 1, 1, 1, 0, 'Sunflare'),
(36195, 34337, 0, 1, 1, 1, 0, 'Golden Staff of the Sin\'dorei');

-- 36200 - Sunwell Plateau (Trash Loot) - Epic Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25363; -- Sunblade Cabalist (1.7)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25367; -- Sunblade Arch Mage (2.2)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25368; -- Sunblade Slayer (1.6)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25369; -- Sunblade Vindicator (1.8)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25370; -- Sunblade Dusk Priest (1.7)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25371; -- Sunblade Dawn Priest (2.0)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25483; -- Shadowsword Manafiend (1.8)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25484; -- Shadowsword Assassin (0.7)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25486; -- Shadowsword Vanquisher (2.2)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25506; -- Shadowsword Lifeshaper (1.1)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25507; -- Sunblade Protector (1.8)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25508; -- Shadowsword Guardian (1.9)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25509; -- Priestess of Torment (1.4)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25591; -- Painbringer (1.7)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25592; -- Doomfire Destroyer (0.6)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25593; -- Apocalypse Guard (1.7)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25595; -- Chaos Gazer (0.5)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25597; -- Oblivion Mage (1.7)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25599; -- Cataclysm Hound (1.5)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25837; -- Shadowsword Commander (0.4)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `mincountOrRef` = -36200 AND `entry` = 25867; -- Sunblade Dragonhawk (1.7)

-- 36201 - Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,-Schematic) - 33 items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3.3 WHERE `item` = 36201 AND `mincountOrRef` = -36201; -- up from 2
UPDATE `reference_loot_template_names` SET `name` = 'Sunwell Plateau (Trash Loot) - Profession (-Design,-Pattern,-Plans,-Schematic)' WHERE `entry` = 36200; -- Study of Advanced Smelting was moved to creature_loot_template
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 0 WHERE `entry` = 36201 AND `item` IN (35186,35187,35189,35190,35191,35192,35193,35194,35195,35196,35197); -- Reduce Chance for Schematics
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 3.0 WHERE `entry` = 36201 AND `item` IN (35198,35199,35200,35204,35205,35208,35209,35212,35213,35214,35215); -- Reduce Chance for BOP Patterns
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 4.5 WHERE `entry` = 36201 AND `item` IN (35216,35217,35218,35211,35210,35207,35206,35203,35202,35201,35219); -- explicit chanced are rolled first, then 0 chanced

-- https://web.archive.org/web/20111227125843if_/http://www.wowhead.com/npc=25867
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` = -36201 AND `entry` = 25867; -- Sunblade Dragonhawk (No SWP Patterns)
DELETE FROM `creature_loot_template` WHERE `item` = -34664 AND `entry` = 25867; -- Sunblade Dragonhawk (No Sunmote)

-- https://www.wowhead.com/item=35273/study-of-advanced-smelting#comments:id=3144482
-- Correct Dropchance for Study of Advanced Smelting 35273
DELETE FROM `reference_loot_template` WHERE `entry` = 36201 AND `item` = 35273; -- Study of Advanced Smelting
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
SELECT `entry` AS `entry`, 35273, 5, 0, 1, 1, 10989, 'Study of Advanced Smelting' FROM `creature_loot_template` WHERE `item` = 36201 AND `entry` != 25867; -- Sunblade Dragonhawk does not drop it

DELETE FROM `conditions` WHERE `condition_entry` = 10989;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(10989, 28, 46353, 35273, 0, 0, 0, '(Player can learn Ability from Spell ID 46353 AND NOT has Item ID 35273 in Inventory or Bank)');

-- ===================================================================================================
-- Magisters' Terrace
-- ===================================================================================================

UPDATE `areatrigger_teleport` SET `required_quest_done_heroic` = 11492 WHERE `id` = 4887; -- s.46591

-- Selin Fireheart 24723,25562
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 25562;
-- Fel Crystal 24722,25552
-- Vexallus 24744,25573
UPDATE `creature_template` SET `InhabitType` = 3, `UnitFlags` = 32832 WHERE `entry` = 25573;
-- Pure Energy 24745
-- Priestess Delrissa (Priest) 24560,25560
UPDATE `creature_template` SET `SpeedRun` = (7.22221994400024414 / 7) WHERE `entry` = 24560;
UPDATE `creature_template` SET `SpeedRun` = (7.22221994400024414 / 7) WHERE `entry` = 25560;
-- Apoko (Shaman) 24553,25541
-- Eramas Brightblaze (Monk) 24554,25550
-- Garaxxas (Hunter) 24555,25555
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 25555;
-- Sliver (Ravager) 24552,25564
UPDATE `creature_template` SET `SpeedRun` = (10 / 7) WHERE `entry` = 24552;
UPDATE `creature_template` SET `SpeedRun` = (10 / 7) WHERE `entry` = 25564;
-- Zelfan (Engineer) 24556,25579
-- High Explosive Sheep 24715
-- Kagani Nightstrike (Rogue) 24557,25556
-- Ellrys Duskhallow (Warlock) 24558,25549
UPDATE `creature_template` SET `InhabitType` = 3, `UnitFlags` = 32768 WHERE `entry` = 24558;
UPDATE `creature_template` SET `InhabitType` = 3, `UnitFlags` = 32768 WHERE `entry` = 25549;
-- Fizzle (Imp) 24656,25553
UPDATE `creature_template` SET `InhabitType` = 3, `UnitFlags` = 32768, `SpeedRun` = (6 / 7) WHERE `entry` = 24656;
UPDATE `creature_template` SET `InhabitType` = 3, `UnitFlags` = 32768, `SpeedRun` = (6 / 7) WHERE `entry` = 25553;
-- Warlord Salaris (Warrior) 24559,25574
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 25574;
-- Yazzai (Mage) 24561,25578
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 24561;
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 25578;
-- Kael'thas Sunstrider 24664,24857
UPDATE `creature_template` SET  `InhabitType` = 3, `UnitFlags` = 32768 WHERE `entry` = 24857;
-- Phoenix 24674
-- Phoenix Egg 24675
-- Arcane Sphere 24708
UPDATE `creature_template` SET  `InhabitType` = 4 WHERE `entry` = 24708;

-- ============================
-- Trash
-- ============================

-- Sunblade Mage Guard 24683,25568
-- Sunblade Blood Knight 24684,25565
-- Sunblade Magister 24685,25569
-- Sunblade Warlock 24686,25572
-- Sunblade Physician 24687,25570
-- Wretched Skuller 24688,25577
-- Wretched Bruiser 24689,25575
-- Wretched Husk 24690,25576
-- Coilskar Witch 24696,25547
-- Sister of Torment 24697,25563
-- Ethereum Smuggler 24698,25551
-- Brightscale Wyrm 24761,25545
-- Sunblade Keeper 24762,25567
-- Sunblade Sentinel 24777,25571
-- Sunblade Imp 24815,25566

-- ===================================================================================================
-- Isle of Quel'Danas
-- ===================================================================================================

-- WRONG (non sniff)
-- DELETE FROM `creature` WHERE `guid` = 5300779;

-- XYZO
UPDATE `creature` SET `position_x` = 11626.5107421875, `position_y` = -7073.9921875, `position_z` = 2.712812662124633789, `orientation` = 6.021971702575683593 WHERE `id` = 25030 AND `guid` = 5300749;
UPDATE `creature` SET `position_x` = 11630.875, `position_y` = -7117.623046875, `position_z` = 6.894469261169433593, `orientation` = 3.760479927062988281 WHERE `id` = 25030 AND `guid` = 5300750;
UPDATE `creature` SET `position_x` = 11658.474609375, `position_y` = -7113.1357421875, `position_z` = 11.50380897521972656, `orientation` = 1.152571916580200195 WHERE `id` = 25030 AND `guid` = 5300751;
UPDATE `creature` SET `position_x` = 11669.025390625, `position_y` = -7047.7265625, `position_z` = 13.49603652954101562, `orientation` = 3.572772979736328125 WHERE `id` = 25030 AND `guid` = 5300752;
UPDATE `creature` SET `position_x` = 11679.9267578125, `position_y` = -7100.35986328125, `position_z` = 14.86358261108398437, `orientation` = 3.669751644134521484 WHERE `id` = 25030 AND `guid` = 5300753;
UPDATE `creature` SET `position_x` = 11723.0263671875, `position_y` = -7078.2177734375, `position_z` = 25.08501052856445312, `orientation` = 4.607665538787841796 WHERE `id` = 25030 AND `guid` = 5300754;
UPDATE `creature` SET `position_x` = 11852.2568359375, `position_y` = -7082.07275390625, `position_z` = 28.617401123046875, `orientation` = 0.714703738689422607 WHERE `id` = 25030 AND `guid` = 5300756;
UPDATE `creature` SET `position_x` = 11896.625, `position_y` = -7078.75634765625, `position_z` = 28.47940635681152343, `orientation` = 4.310963153839111328 WHERE `id` = 25030 AND `guid` = 5300757;
UPDATE `creature` SET `position_x` = 12048.426758, `position_y` = -7061.363281, `position_z` = 33.068935, `orientation` = 6.1857 WHERE `id` = 25030 AND `guid` = 5300759;
UPDATE `creature` SET `position_x` = 12036.818359, `position_y` = -7078.717285, `position_z` = 34.644596, `orientation` = 6.2563 WHERE `id` = 25030 AND `guid` = 5300760;
UPDATE `creature` SET `position_x` = 11807.84765625, `position_y` = -7128.720703125, `position_z` = 66.81720733642578125, `orientation` = 3.193952560424804687, `spawndist` = 0, `MovementType` = 0 WHERE `id` = 25031 AND `guid` = 5300766;

-- More Missing Spawns
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
-- Shattered Sun Marksman 24938
(5301587, 24938, 530, 12684.8056640625, -6984.76220703125, 36.3132781982421875, 4.782238, 300, 300, 0, 0), -- missing probably often dead
-- Invisible Stalker 15214
(5301588, 15214, 530, -1935.84765625, 5246.478515625, -41.73455810546875, 1.274090290069580078, 300, 300, 0, 0), -- related to some shattrath RP event?
(5301589, 15214, 530, -1735.416259765625, 5137.3095703125, -35.8305740356445312, 0.541052043437957763, 300, 300, 0, 0), -- related to some shattrath RP event?
-- Invisible Stalker (Floating) 23033
(5301590, 23033, 530, -3579.408935546875, 657.4119873046875, 1.42434239387512207, 3.263765573501586914, 300, 300, 0, 0), -- Missing Storming Black Temple Event RP Triggers
(5301591, 23033, 530, -3562.166748046875, 604.38543701171875, 37.3909912109375, 4.450589656829833984, 300, 300, 0, 0),
(5301592, 23033, 530, -3578.644775390625, 610.9322509765625, 8.955431938171386718, 0.279252678155899047, 300, 300, 0, 0),
(5301593, 23033, 530, -3582.7900390625, 639.8367919921875, 35.18475723266601562, 0.645771801471710205, 300, 300, 0, 0),
(5301594, 23033, 530, -3559.2900390625, 665.6336669921875, 26.61489105224609375, 0.802851438522338867, 300, 300, 0, 0),
(5301595, 23033, 530, -3538.1923828125, 630.6912841796875, 34.41205596923828125, 0.226892799139022827, 300, 300, 0, 0),
(5301596, 23033, 530, -3538.884521484375, 608.685302734375, 7.275150299072265625, 2.373647689819335937, 300, 300, 0, 0),
(5301597, 23033, 530, -3541.794189453125, 656.456298828125, 3.087849140167236328, 2.932153224945068359, 300, 300, 0, 0),
-- Wretched Devourer
(5301598, 24960, 530, 12774.4658203125, -6481.71142578125, 1.126944422721862792, 4.415682792663574218, 300, 300, 0, 0),
(5301599, 24960, 530, 12817.9853515625, -6522.2255859375, 7.81253671646118164, 1.274090290069580078, 300, 300, 0, 0),
(5301600, 24960, 530, 12703.3408203125, -6529.11962890625, 5.877449512481689453, 1.029744267463684082, 300, 300, 0, 0),
(5301601, 24960, 530, 12597.896484375, -6612.70654296875, 10.47235298156738281, 2.0245819091796875, 300, 300, 0, 0),
(5301602, 24960, 530, 12600, -6510.41650390625, 2.640850543975830078, 1.815142393112182617, 300, 300, 0, 0),
(5301603, 24960, 530, 12735.7763671875, -6402.4482421875, 8.51434326171875, 4.799655437469482421, 300, 300, 0, 0),
-- Wretched Fiend
(5301604, 24966, 530, 12977.8466796875, -6793.74609375, 8.050838470458984375, 0.890117883682250976, 300, 300, 0, 0),
(5301605, 24966, 530, 12741.2626953125, -6442.15478515625, 10.81521987915039062, 6.143558979034423828, 300, 300, 0, 0),
-- Wrath Enforcer
(5301606, 25030, 530, 11691.9365234375, -7039.8857421875, 18.48112869262695312, 1.902509093284606933, 10, 10, 3, 1),
(5301607, 25030, 530, 11749.2451171875, -7086.330078125, 24.66402053833007812, 6.242959499359130859, 10, 10, 3, 1),
(5301608, 25030, 530, 11733.39453125, -7052.546875, 25.85833549499511718, 0.104719758033752441, 10, 10, 3, 1),
(5301609, 25030, 530, 11927.1171875, -7053.08984375, 31.94779586791992187, 1.530069947242736816, 10, 10, 3, 1),
(5301610, 25030, 530, 11826.589844, -7035.327637, 23.055058, 6.2642, 10, 10, 3, 1),
(5301611, 25030, 530, 11820.414062, -7065.470215, 25.505358, 0.1616, 10, 10, 3, 1),
(5301612, 25030, 530, 11842.191406, -7048.076660, 24.893797, 0.0085, 10, 10, 3, 1),
(5301613, 25030, 530, 12065.599609, -7070.180176, 34.024101, 3.1462, 10, 10, 3, 1),
(5301614, 25030, 530, 12237.738281, -7139.776367, 26.502625, 5.2746, 10, 10, 3, 1);

DELETE FROM `creature_addon` WHERE `guid` IN (5301072,5301085,5301086,5301087,5301088);
REPLACE INTO `creature_addon` (`guid`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `auras`) VALUES
-- Wretched Devourer
(5301598, 1, 1, 16, 0, NULL),(5301599, 1, 1, 16, 0, NULL),(5301600, 1, 1, 16, 0, NULL),(5301601, 1, 1, 16, 0, NULL),
(5301602, 1, 1, 16, 0, NULL),(5301603, 1, 1, 16, 0, NULL),
-- Wretched Fiend
(5301604, 1, 1, 16, 0, NULL),(5301605, 1, 1, 16, 0, NULL),
-- Shattered Sun Warrior
(5301073, 0, 0, 16, 0, NULL),(5301074, 0, 0, 16, 0, NULL),(5301075, 0, 0, 16, 0, NULL),(5301076, 0, 0, 16, 0, NULL),
(5301077, 0, 0, 16, 0, NULL),(5301082, 0, 0, 16, 0, NULL),(5301098, 0, 0, 16, 0, NULL),(5301099, 0, 0, 16, 0, NULL),(5301100, 0, 0, 16, 0, NULL),
-- Shattered Sun Marksma
(5300086, 0, 2, 16, 0, NULL),(5300087, 0, 2, 16, 0, NULL),(5300088, 0, 2, 16, 0, NULL),(5300127, 0, 2, 16, 0, NULL);

REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `auras`) VALUES
-- Shattered Sun Recruit
(5301125, 22840, 0, 1, 16, 0, NULL),(5301126, 22840, 0, 1, 16, 0, NULL),(5301127, 22840, 0, 1, 16, 0, NULL);

-- Dynamic Respawn Timer (Needs Testing)
UPDATE `creature` SET `spawntimesecsmin` = 200, `spawntimesecsmax` = 300 WHERE `id` IN (
24960, -- Wretched Devourer 		300 300
24966, -- Wretched Fiend 			300 300
24972, -- Erratic Sentry			300 300

24976, -- Dawnblade Blood Knight	300 300
24978, -- Dawnblade Summoner		300 300
24979, -- Dawnblade Marksman		300 300

24999, -- Irespeaker				300 300
25001, -- Abyssal Flamewalker		300 300
25002, -- Unleashed Hellion			300 300
25003, -- Emissary of Hate			60 60

25060, -- Darkspine Myrmidon		300 300
25073, -- Darkspine Siren			300 300
25084, -- Greengill Slave			300 300

22323, -- Incandescent Fel Spark	120	300
24918, -- Felblood Initiate			120	300
24919, -- Wrath Herald				120	300

25087 -- Dawnblade Reservist		300 300

-- 25063, -- Dawnblade Hawkrider	25 25

-- 25132 -- Sunblade Lookout		300 300
);

-- The Dead Scar
UPDATE `creature` SET `spawntimesecsmin` = 15, `spawntimesecsmax` = 45 WHERE `id` IN (
25027, -- Frenzied Ghoul			90 90
25028 -- Skeletal Ravager			90 90
-- 25030, -- Wrath Enforcer			10 10
-- 25031, -- Pit Overlord			10 10
-- 25033, -- Eredar Sorcerer		10 10
);

REPLACE INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`) VALUES
(24813, 0, 16), -- Exarch Larethor
(24960, 1, 16), -- Wretched Devourer
(24965, 0, 16), -- Vindicator Xayann
(24966, 1, 16), -- Wretched Fiend
(24967, 0, 16), -- Captain Theris Dawnhearth
(24972, 1, 16), -- Erratic Sentry
(24975, 0, 16), -- Mar'nah
(24981, 1, 40), -- Converted Sentry
(25027, 1, 16), -- Frenzied Ghoul
(25028, 1, 16), -- Skeletal Ravager
(25030, 1, 16), -- Wrath Enforcer
(25031, 1, 16), -- Pit Overlord
(25032, 0, 16), -- Eldara Dawnrunner
(25034, 0, 16), -- Tradesman Portanuus
(25035, 0, 16), -- Tyrael Flamekissed
(25057, 1, 16), -- Battlemage Arynna
(25059, 0, 16), -- Ayren Cloudbreaker
(25061, 1, 16), -- Harbinger Inuuro
(25069, 1, 16), -- Magister Ilastar
(25087, 1, 16), -- Dawnblade Reservist
(25133, 1, 16), -- Astromancer Darnarian
(25162, 0, 16), -- Drill Sergeant Bahduum
(25170, 1, 16), -- Shattered Sun Archmage
(25175, 1, 16), -- Shattered Sun Dragonhawk
(25115, 1, 16), -- Shattered Sun Warrior
(25169, 1, 16), -- Archmage Ne'thul
(25976, 1, 16), -- Theremis
(25977, 1, 16), -- Yrma
(26089, 1, 16), -- Kayri
(26090, 1, 16), -- Karynna
(26091, 1, 16), -- Olus
(26092, 1, 16), -- Soryn
(26560, 0, 16); -- Ohura

-- https://youtu.be/nCibpNB44f8?t=90
-- These should also no longer spawn after Sun''s Reach Armory is reclaimed, Demons only in Portal Area afterwards
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES
(5300472, -307),
(5300473, -307),
(5300474, -307),
(5300502, -307),
(5300503, -307),
(5300857, 307), -- Magister Ilastar
(5301587, 307); -- Suns Reach Reclamation Phase 3 Permanent

-- Emissary Mordin 19202

-- Incandescent Fel Spark 22323

-- Exarch Larethor 24813

-- Wretched Devourer 24960
UPDATE `creature_template` SET `RegenerateStats` = 2, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `UnitFlags` = 32768 /*Some UNIT_FLAG_Feing_Death dynamically?*/ WHERE `entry` = 24960;
DELETE FROM `creature_loot_template` WHERE `entry` = 24960; -- https://web.archive.org/web/20080330171521/http://wow.allakhazam.com/db/mob.html?wmob=24960
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24960, 21877, 40, 0, 1, 3, 0, 'Netherweave Cloth'),
(24960, 27859, 4, 0, 1, 1, 0, 'Zangar Caps'),
(24960, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(24960, 34338, -40, 0, 1, 1, 0, 'Mana Remnants'),
(24960, 31952, 0.1, 0, 1, 1, 0, 'Khorium Lockbox'),
(24960, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24960, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(24960, 50500, 0.05, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(24960, 50501, 0.02, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24960, 50604, 0.8, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24960, 61001, 3, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24960, 61122, 2, 0, -61122, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 108-114) - (NPC Levels: 69) - TBC NPC ONLY'),
(24960, 61222, 0.05, 0, -61222, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69) - TBC NPC ONLY');

-- Wretched Fiend 24966
UPDATE `creature_template` SET `RegenerateStats` = 2 WHERE `entry` = 24966;
UPDATE `creature_template` SET `LootId` = 24966 WHERE `entry` = 24966;
DELETE FROM `creature_loot_template` WHERE `entry` = 24966; -- https://web.archive.org/web/20080330171526/http://wow.allakhazam.com/db/mob.html?wmob=24966
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24966, 21877, 40, 0, 1, 3, 0, 'Netherweave Cloth'),
(24966, 27859, 4, 0, 1, 1, 0, 'Zangar Caps'),
(24966, 27860, 2, 0, 1, 1, 0, 'Purified Draenic Water'),
(24966, 34338, -40, 0, 1, 1, 0, 'Mana Remnants'),
(24966, 31952, 0.1, 0, 1, 1, 0, 'Khorium Lockbox'),
(24966, 42009, 2, 0, -42009, 1, 0, 'Super Healing/Mana Potion (75%)(25%) - TBC'),
(24966, 49002, 0.1, 0, -49002, 1, 0, 'Darkmoon Cards (Blessings, Storms, Furies, Lunacy 2-4) - Not In Dungeons and Raids'),
(24966, 50500, 0.05, 1, -50500, 1, 0, 'NPC LOOT (World Drop) - (Level: 70 Book / Codex / Tome) - (Item Levels: 70) - NPC Levels 70+ (WORLD CLASS LOOT DROP)'),
(24966, 50501, 0.02, 0, -50501, 1, 0, 'NPC LOOT - Profession (-Design,-Formula,-Pattern,-Plans,-Recipe,-Schematic)(Non-BoP) - NPC Level 64+ Non-Elite/Level 58+ Elite - TBC NPC ONLY!'),
(24966, 50604, 0.8, 1, -50604, 1, 0, 'Scrolls V - (NPC Levels 58-72) - TBC'),
(24966, 61001, 3, 0, -61001, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
(24966, 61122, 2, 0, -61122, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 108-114) - (NPC Levels: 69) - TBC NPC ONLY'),
(24966, 61222, 0.05, 0, -61222, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 109-115) - (NPC Levels: 69) - TBC NPC ONLY');

-- Erratic Sentry 24972
UPDATE `creature_template` SET `RegenerateStats` = 12, `MechanicImmuneMask` = `MechanicImmuneMask`|2 + 4 + 16 + 8388608 WHERE `entry` = 24972;

-- Abyssal Flamewalker 25001
-- UPDATE `creature_template` SET `UnitFlags` = 33555200 WHERE `entry` = 25001; -- Visual Spell Scripting to work

-- Converted Sentry 24981
UPDATE `creature_template` SET `UnitFlags` = 776 WHERE `entry` = 24981; -- Faction 5/6 depending on "summoner" faction

-- Eldara Dawnrunner 25032

-- Tradesman Portanuus 25034

-- Tyrael Flamekissed 25035

-- Kaalif <Reagent Vendor> 25039
UPDATE `game_event_creature` SET `event` = 314 WHERE `guid` = 5300784; -- Spawns when Alchemy Lab is complete

-- Wretched Hungerer 25047 - seemingly no loot only flavor mob - https://web.archive.org/web/20080330171626/http://wow.allakhazam.com/db/mob.html?wmob=25047

-- Dawnblade Hawkrider 25063
UPDATE `creature` SET `MovementType` = 3 WHERE `guid` IN (5300851,5300852,5300853,5300854,5300855,5300856);
UPDATE `creature_movement` SET `script_id` = 5 WHERE `id` IN (5300851,5300852,5300853,5300854,5300855,5300856) AND `point` = 1;
REPLACE INTO `creature_spawn_data` (`guid`, `id`) VALUES (5300851, 3),(5300852, 3),(5300853, 3),(5300854, 3),(5300855, 3),(5300856, 3);

-- Dawnblade Reservist 25087
UPDATE `creature_template` SET `UnitFlags` = 32768, `InhabitType` =  3, `Detection` = 13, `CallForHelp` = 5 WHERE `entry` = 25087;

-- Sunblade Lookout 25132
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (45172, 1, 24921); -- Sunblade Lookout 25132 Generic Cosmetic Trigger - LAB 24921

-- Shattered Sun Sentry 24994
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 24994;

-- Greengill Slave 25084
UPDATE `creature_template` SET `InhabitType` = 3, `UnitFlags` = 32768 WHERE `entry` = 25084;

-- Freed Greengill Slave 25085
UPDATE `creature_template` SET `InhabitType` = 3, `UnitFlags` = 32768 WHERE `entry` = 25085;

-- Frenzied Ghoul 25027
UPDATE `creature_template` SET `UnitFlags` = 0 WHERE `entry` = 25027;

-- Skeletal Ravager 25028
UPDATE `creature_template` SET `UnitFlags` = 0 WHERE `entry` = 25028;

-- Wrath Enforcer 25030
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` = 25030;

-- Smith Hauthaa 25046
UPDATE `creature_template` SET `Faction` = 1960 WHERE `entry` = 25046;
UPDATE `creature_template_addon` SET `b2_0_sheath` = 1, `b2_1_flags` = 16, `emote` = 233 WHERE `entry` = 25046;
UPDATE `game_event_creature_data` SET `equipment_id` = 25046 WHERE `guid` = 5300787; -- emote should be 0 when anvil is not ready
DELETE FROM game_event_creature_data WHERE guid = 5300787;
INSERT INTO game_event_creature_data(guid,vendor_id,event) VALUES -- game_event not implemented yet in Wotlk
(5300787,505,309); -- game_event not implemented yet in Wotlk

-- Battlemage Arynna 25057

-- Ayren Cloudbreaker 25059

-- Harbinger Inuuro 25061

-- Magister Ilastar 25069
UPDATE `creature_template` SET `Faction` = 1960 WHERE `entry` = 25069;

-- Shattered Sun Warrior 25115
UPDATE `creature_template` SET `UnitFlags` = 37632 WHERE `entry` = 25115; -- UnitFlags=33536 in recent sniffs

-- Astromancer Darnarian 25133

-- Lord Torvos 25140

-- Brutallus 25158
UPDATE `creature_template` SET `SpeedWalk` = (8 / 2.5), `SpeedRun` = (20 / 7) WHERE `entry` = 25158;
REPLACE INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES (25158, 1, 16, NULL);

-- Madrigosa 25160
UPDATE `creature` SET `MovementType` = 3 WHERE `id` = 25160;
UPDATE `creature_template` SET `SpeedWalk` = (5 / 2.5), `SpeedRun` = (20 / 7), `MovementType` = 3, `HealthMultiplier` = 100, `MinLevelHealth` = 607000, `MaxLevelHealth` = 607000 WHERE `entry` = 25160;
REPLACE INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES (25160, 1, 16, '47127');
REPLACE INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(25160, 0, 01, 12218.013, -7070.4165, 76.84208, 100, 0, 0, NULL),
(25160, 0, 02, 12223.296, -7120.8047, 71.9255, 100, 0, 0, NULL),
(25160, 0, 03, 12209.405, -7173.1426, 68.592094, 100, 0, 0, NULL),
(25160, 0, 04, 12178.285, -7169.3623, 68.11987, 100, 0, 0, NULL),
(25160, 0, 05, 12164.209, -7091.185, 71.9255, 100, 0, 0, NULL),
(25160, 0, 06, 12166.738, -7059.9595, 71.9255, 100, 0, 0, NULL),
(25160, 0, 07, 12178.466, -7042.4907, 71.9255, 100, 0, 0, NULL),
(25160, 0, 08, 12207.859, -7028.1704, 71.9255, 100, 0, 0, NULL),
(25160, 0, 09, 12251.93, -7016.064, 71.9255, 100, 0, 0, NULL),
(25160, 0, 10, 12271.614, -6995.239, 71.9255, 100, 0, 0, NULL),
(25160, 0, 11, 12265.81, -6961.2705, 71.9255, 100, 0, 0, NULL),
(25160, 0, 12, 12218.625, -6954.599, 71.9255, 100, 0, 0, NULL),
(25160, 0, 13, 12201.72, -6960.3384, 71.9255, 100, 0, 0, NULL),
(25160, 0, 14, 12197.316, -7000.858, 78.008804, 100, 0, 0, NULL),
(25160, 0, 15, 12207.886, -7032.0923, 77.28656, 100, 0, 0, NULL);

-- Shattered Sun Recruit 25164
UPDATE `creature` SET `position_x` = 13135.925, `position_y` = -6784.517, `position_z` = 30.567154, `MovementType` = 3, `spawntimesecsmin` = 180, `spawntimesecsmax` = 180 WHERE `guid` IN (5301125,5301126,5301127) AND `id` = 25164;
UPDATE `creature_template` SET `InhabitType` = 1, `UnitFlags` = 37632, `SpeedWalk` = (2.5/*7.125*/ / 2.5), `SpeedRun` = (20 / 7), `ExtraFlags` = `ExtraFlags`|4096 WHERE `entry` = 25164;
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(5301125, 5301126, 128+1024+8192),
(5301127, 5301126, 128+1024+8192);

-- Shattered Sun Archmage 25170

-- Shattered Sun Dragonhawk 25175

-- Felblood Initiate 24918

-- Wrath Herald 24919

-- Unstable Living Flare 24958 (speed)

-- Magistrix Seyla 24937 (gossip)

-- Hauthaa's Anvil Bunny 25114
UPDATE `creature_template` SET `InhabitType` = 4, `UnitFlags` = 33554944 WHERE `entry` = 25114;

-- Archmage Ne'thul 25169

-- Unrestrained Dragonhawk 25236

-- Multiphase Disturbance 25882 - 27
UPDATE `creature` SET `spawntimesecsmin` = 30, `spawntimesecsmax` = 120 WHERE `id` = 25882; -- 180 180

-- Shaani <Jewelcrafting Supplies> 25950
DELETE FROM game_event_creature_data WHERE guid = 5301172;
INSERT INTO game_event_creature_data(guid,vendor_id,event) VALUES -- game_event not implemented yet in Wotlk
(5301172,514,314); -- game_event not implemented yet in Wotlk

-- Theremis 25976

-- Yrma 25977

-- Kayri 26089
UPDATE `creature_template` SET `Faction` = 1960, `VendorTemplateId` = 554 WHERE `entry` = 26089;
DELETE FROM `npc_vendor_template` WHERE `entry` = 554;
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(554, 32785, 0, 0, 2347),(554, 32786, 0, 0, 2347),(554, 32787, 0, 0, 2347),(554, 32788, 0, 0, 2347),
(554, 32789, 0, 0, 2347),(554, 32790, 0, 0, 2347),(554, 32791, 0, 0, 2347),(554, 32792, 0, 0, 2347),
(554, 32793, 0, 0, 2347),(554, 32794, 0, 0, 2347),(554, 32795, 0, 0, 2347),(554, 32796, 0, 0, 2347),
(554, 32797, 0, 0, 2347),(554, 32798, 0, 0, 2347),(554, 32799, 0, 0, 2347),(554, 32800, 0, 0, 2347),
(554, 32801, 0, 0, 2347),(554, 32802, 0, 0, 2347),(554, 32803, 0, 0, 2347),(554, 32804, 0, 0, 2347),
(554, 32805, 0, 0, 2347),(554, 32806, 0, 0, 2347),(554, 32807, 0, 0, 2347),(554, 32808, 0, 0, 2347),
(554, 32809, 0, 0, 1015),(554, 32810, 0, 0, 1015),(554, 32811, 0, 0, 1015),(554, 32812, 0, 0, 1015),
(554, 32813, 0, 0, 1015),(554, 32814, 0, 0, 1015),(554, 32816, 0, 0, 1015),(554, 32817, 0, 0, 1015),
(554, 32818, 0, 0, 1015),(554, 32819, 0, 0, 1015),(554, 32820, 0, 0, 1015),(554, 32821, 0, 0, 1015),
(554, 32979, 0, 0, 2347),(554, 32980, 0, 0, 1015),(554, 32981, 0, 0, 2347),(554, 32988, 0, 0, 2347),
(554, 32989, 0, 0, 1015),(554, 32990, 0, 0, 2347),(554, 32997, 0, 0, 1015),(554, 32998, 0, 0, 2347),
(554, 32999, 0, 0, 2347),(554, 33811, 0, 0, 2322),(554, 33812, 0, 0, 2328),(554, 33813, 0, 0, 2323),
(554, 33876, 0, 0, 2323),(554, 33877, 0, 0, 2322),(554, 33878, 0, 0, 2328),(554, 33879, 0, 0, 2325),
(554, 33880, 0, 0, 2327),(554, 33881, 0, 0, 2321),(554, 33882, 0, 0, 2324),(554, 33883, 0, 0, 2320),
(554, 33884, 0, 0, 2326),(554, 33885, 0, 0, 2325),(554, 33886, 0, 0, 2327),(554, 33887, 0, 0, 2321),
(554, 33888, 0, 0, 2324),(554, 33889, 0, 0, 2320),(554, 33890, 0, 0, 2326),(554, 33891, 0, 0, 2325),
(554, 33892, 0, 0, 2327),(554, 33893, 0, 0, 2321),(554, 33894, 0, 0, 2323),(554, 33895, 0, 0, 2322),
(554, 33896, 0, 0, 2328),(554, 33897, 0, 0, 2323),(554, 33898, 0, 0, 2322),(554, 33899, 0, 0, 2328),
(554, 33900, 0, 0, 2324),(554, 33901, 0, 0, 2320),(554, 33902, 0, 0, 2326),(554, 33903, 0, 0, 2324),
(554, 33904, 0, 0, 2320),(554, 33905, 0, 0, 2326),(554, 33906, 0, 0, 2323),(554, 33907, 0, 0, 2322),
(554, 33908, 0, 0, 2328),(554, 33909, 0, 0, 2324),(554, 33910, 0, 0, 2320),(554, 33911, 0, 0, 2326),
(554, 33912, 0, 0, 2325),(554, 33913, 0, 0, 2321),(554, 33914, 0, 0, 2327),(554, 33915, 0, 0, 2325),
(554, 33916, 0, 0, 2327),(554, 33917, 0, 0, 2321);

-- Karynna 26090 - T4 Trader
UPDATE `creature_template` SET `Faction` = 1960, `VendorTemplateId` = 555 WHERE `entry` = 26090;
DELETE FROM `npc_vendor_template` WHERE `entry` = 555;
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(555, 24544, 0, 0, 1235, 0, 'Gladiator\'s Plate Chestpiece'),(555, 24545, 0, 0, 1239, 0, 'Gladiator\'s Plate Helm'),
(555, 24546, 0, 0, 1243, 0, 'Gladiator\'s Plate Shoulders'),(555, 24547, 0, 0, 1241, 0, 'Gladiator\'s Plate Legguards'),
(555, 24549, 0, 0, 1237, 0, 'Gladiator\'s Plate Gauntlets'),(555, 24552, 0, 0, 1215, 0, 'Gladiator\'s Dreadweave Robe'),
(555, 24553, 0, 0, 1217, 0, 'Gladiator\'s Dreadweave Hood'),(555, 24554, 0, 0, 1219, 0, 'Gladiator\'s Dreadweave Mantle'),
(555, 24555, 0, 0, 1218, 0, 'Gladiator\'s Dreadweave Leggings'),(555, 24556, 0, 0, 1216, 0, 'Gladiator\'s Dreadweave Gloves'),
(555, 25830, 0, 0, 1206, 0, 'Gladiator\'s Leather Helm'),(555, 25831, 0, 0, 1200, 0, 'Gladiator\'s Leather Tunic'),
(555, 25832, 0, 0, 1212, 0, 'Gladiator\'s Leather Spaulders'),(555, 25833, 0, 0, 1209, 0, 'Gladiator\'s Leather Legguards'),
(555, 25834, 0, 0, 1203, 0, 'Gladiator\'s Leather Gloves'),(555, 25854, 0, 0, 1219, 0, 'Gladiator\'s Silk Amice'),
(555, 25855, 0, 0, 1217, 0, 'Gladiator\'s Silk Cowl'),(555, 25856, 0, 0, 1215, 0, 'Gladiator\'s Silk Raiment'),
(555, 25857, 0, 0, 1216, 0, 'Gladiator\'s Silk Handguards'),(555, 25858, 0, 0, 1218, 0, 'Gladiator\'s Silk Trousers'),
(555, 25997, 0, 0, 1200, 0, 'Gladiator\'s Linked Armor'),(555, 25998, 0, 0, 1206, 0, 'Gladiator\'s Linked Helm'),
(555, 25999, 0, 0, 1212, 0, 'Gladiator\'s Linked Spaulders'),(555, 26000, 0, 0, 1203, 0, 'Gladiator\'s Linked Gauntlets'),
(555, 26001, 0, 0, 1209, 0, 'Gladiator\'s Linked Leggings'),(555, 27469, 0, 0, 1200, 0, 'Gladiator\'s Mail Armor'),
(555, 27470, 0, 0, 1203, 0, 'Gladiator\'s Mail Gauntlets'),(555, 27471, 0, 0, 1206, 0, 'Gladiator\'s Mail Helm'),
(555, 27472, 0, 0, 1209, 0, 'Gladiator\'s Mail Leggings'),(555, 27473, 0, 0, 1212, 0, 'Gladiator\'s Mail Spaulders'),
(555, 27702, 0, 0, 1200, 0, 'Gladiator\'s Lamellar Chestpiece'),(555, 27703, 0, 0, 1203, 0, 'Gladiator\'s Lamellar Gauntlets'),
(555, 27704, 0, 0, 1206, 0, 'Gladiator\'s Lamellar Helm'),(555, 27705, 0, 0, 1209, 0, 'Gladiator\'s Lamellar Legguards'),
(555, 27706, 0, 0, 1212, 0, 'Gladiator\'s Lamellar Shoulders'),(555, 27707, 0, 0, 1237, 0, 'Gladiator\'s Satin Gloves'),
(555, 27708, 0, 0, 1239, 0, 'Gladiator\'s Satin Hood'),(555, 27709, 0, 0, 1241, 0, 'Gladiator\'s Satin Leggings'),
(555, 27710, 0, 0, 1243, 0, 'Gladiator\'s Satin Mantle'),(555, 27711, 0, 0, 1235, 0, 'Gladiator\'s Satin Robe'),
(555, 27879, 0, 0, 1200, 0, 'Gladiator\'s Scaled Chestpiece'),(555, 27880, 0, 0, 1203, 0, 'Gladiator\'s Scaled Gauntlets'),
(555, 27881, 0, 0, 1206, 0, 'Gladiator\'s Scaled Helm'),(555, 27882, 0, 0, 1209, 0, 'Gladiator\'s Scaled Legguards'),
(555, 27883, 0, 0, 1212, 0, 'Gladiator\'s Scaled Shoulders'),(555, 28126, 0, 0, 1237, 0, 'Gladiator\'s Dragonhide Gloves'),
(555, 28127, 0, 0, 1239, 0, 'Gladiator\'s Dragonhide Helm'),(555, 28128, 0, 0, 1241, 0, 'Gladiator\'s Dragonhide Legguards'),
(555, 28129, 0, 0, 1243, 0, 'Gladiator\'s Dragonhide Spaulders'),(555, 28130, 0, 0, 1235, 0, 'Gladiator\'s Dragonhide Tunic'),
(555, 28136, 0, 0, 1237, 0, 'Gladiator\'s Wyrmhide Gloves'),(555, 28137, 0, 0, 1239, 0, 'Gladiator\'s Wyrmhide Helm'),
(555, 28138, 0, 0, 1241, 0, 'Gladiator\'s Wyrmhide Legguards'),(555, 28139, 0, 0, 1243, 0, 'Gladiator\'s Wyrmhide Spaulders'),
(555, 28140, 0, 0, 1235, 0, 'Gladiator\'s Wyrmhide Tunic'),(555, 28331, 0, 0, 1217, 0, 'Gladiator\'s Chain Helm'),
(555, 28332, 0, 0, 1218, 0, 'Gladiator\'s Chain Leggings'),(555, 28333, 0, 0, 1219, 0, 'Gladiator\'s Chain Spaulders'),
(555, 28334, 0, 0, 1215, 0, 'Gladiator\'s Chain Armor'),(555, 28335, 0, 0, 1216, 0, 'Gladiator\'s Chain Gauntlets'),
(555, 30186, 0, 0, 1219, 0, 'Gladiator\'s Felweave Amice'),(555, 30187, 0, 0, 1217, 0, 'Gladiator\'s Felweave Cowl'),
(555, 30188, 0, 0, 1216, 0, 'Gladiator\'s Felweave Handguards'),(555, 30200, 0, 0, 1215, 0, 'Gladiator\'s Felweave Raiment'),
(555, 30201, 0, 0, 1218, 0, 'Gladiator\'s Felweave Trousers'),(555, 31375, 0, 0, 1237, 0, 'Gladiator\'s Kodohide Gloves'),
(555, 31376, 0, 0, 1239, 0, 'Gladiator\'s Kodohide Helm'),(555, 31377, 0, 0, 1241, 0, 'Gladiator\'s Kodohide Legguards'),
(555, 31378, 0, 0, 1243, 0, 'Gladiator\'s Kodohide Spaulders'),(555, 31379, 0, 0, 1235, 0, 'Gladiator\'s Kodohide Tunic'),
(555, 31396, 0, 0, 1200, 0, 'Gladiator\'s Ringmail Armor'),(555, 31397, 0, 0, 1203, 0, 'Gladiator\'s Ringmail Gauntlets'),
(555, 31400, 0, 0, 1206, 0, 'Gladiator\'s Ringmail Helm'),(555, 31406, 0, 0, 1209, 0, 'Gladiator\'s Ringmail Leggings'),
(555, 31407, 0, 0, 1212, 0, 'Gladiator\'s Ringmail Spaulders'),(555, 31409, 0, 0, 1237, 0, 'Gladiator\'s Mooncloth Gloves'),
(555, 31410, 0, 0, 1239, 0, 'Gladiator\'s Mooncloth Hood'),(555, 31411, 0, 0, 1241, 0, 'Gladiator\'s Mooncloth Leggings'),
(555, 31412, 0, 0, 1243, 0, 'Gladiator\'s Mooncloth Mantle'),(555, 31413, 0, 0, 1235, 0, 'Gladiator\'s Mooncloth Robe'),
(555, 31613, 0, 0, 1200, 0, 'Gladiator\'s Ornamented Chestguard'),(555, 31614, 0, 0, 1203, 0, 'Gladiator\'s Ornamented Gloves'),
(555, 31616, 0, 0, 1206, 0, 'Gladiator\'s Ornamented Headcover'),(555, 31618, 0, 0, 1209, 0, 'Gladiator\'s Ornamented Legplates'),
(555, 31619, 0, 0, 1212, 0, 'Gladiator\'s Ornamented Spaulders');

-- Olus 26091 - T5 Trader
UPDATE `creature_template` SET `Faction` = 1960, `VendorTemplateId` = 556 WHERE `entry` = 26091;
DELETE FROM `npc_vendor_template` WHERE `entry` = 556;
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(556, 30486, 0, 0, 1332),(556, 30487, 0, 0, 1333),(556, 30488, 0, 0, 1334),(556, 30489, 0, 0, 1335),
(556, 30490, 0, 0, 1336),(556, 31960, 0, 0, 1357),(556, 31961, 0, 0, 1358),(556, 31962, 0, 0, 1359),
(556, 31963, 0, 0, 1360),(556, 31964, 0, 0, 1361),(556, 31967, 0, 0, 1333),(556, 31968, 0, 0, 1334),
(556, 31969, 0, 0, 1335),(556, 31971, 0, 0, 1336),(556, 31972, 0, 0, 1332),(556, 31973, 0, 0, 1358),
(556, 31974, 0, 0, 1359),(556, 31975, 0, 0, 1360),(556, 31976, 0, 0, 1361),(556, 31977, 0, 0, 1357),
(556, 31979, 0, 0, 1361),(556, 31980, 0, 0, 1359),(556, 31981, 0, 0, 1358),(556, 31982, 0, 0, 1357),
(556, 31983, 0, 0, 1360),(556, 31987, 0, 0, 1333),(556, 31988, 0, 0, 1334),(556, 31989, 0, 0, 1335),
(556, 31990, 0, 0, 1336),(556, 31991, 0, 0, 1332),(556, 31992, 0, 0, 1342),(556, 31993, 0, 0, 1343),
(556, 31995, 0, 0, 1345),(556, 31996, 0, 0, 1346),(556, 31997, 0, 0, 1344),(556, 31998, 0, 0, 1343),
(556, 31999, 0, 0, 1344),(556, 32000, 0, 0, 1345),(556, 32001, 0, 0, 1346),(556, 32002, 0, 0, 1342),
(556, 32004, 0, 0, 1342),(556, 32005, 0, 0, 1343),(556, 32006, 0, 0, 1344),(556, 32007, 0, 0, 1345),
(556, 32008, 0, 0, 1346),(556, 32009, 0, 0, 1342),(556, 32010, 0, 0, 1343),(556, 32011, 0, 0, 1344),
(556, 32012, 0, 0, 1345),(556, 32013, 0, 0, 1346),(556, 32015, 0, 0, 1333),(556, 32016, 0, 0, 1334),
(556, 32017, 0, 0, 1335),(556, 32018, 0, 0, 1336),(556, 32019, 0, 0, 1332),(556, 32020, 0, 0, 1342),
(556, 32021, 0, 0, 1343),(556, 32022, 0, 0, 1344),(556, 32023, 0, 0, 1345),(556, 32024, 0, 0, 1346),
(556, 32029, 0, 0, 1342),(556, 32030, 0, 0, 1343),(556, 32031, 0, 0, 1344),(556, 32032, 0, 0, 1345),
(556, 32033, 0, 0, 1346),(556, 32034, 0, 0, 1333),(556, 32035, 0, 0, 1334),(556, 32036, 0, 0, 1335),
(556, 32037, 0, 0, 1336),(556, 32038, 0, 0, 1332),(556, 32039, 0, 0, 1342),(556, 32040, 0, 0, 1343),
(556, 32041, 0, 0, 1344),(556, 32042, 0, 0, 1345),(556, 32043, 0, 0, 1346),(556, 32047, 0, 0, 1361),
(556, 32048, 0, 0, 1359),(556, 32049, 0, 0, 1358),(556, 32050, 0, 0, 1357),(556, 32051, 0, 0, 1360),
(556, 32056, 0, 0, 1333),(556, 32057, 0, 0, 1334),(556, 32058, 0, 0, 1335),(556, 32059, 0, 0, 1336),
(556, 32060, 0, 0, 1332);

-- Soryn 26092
UPDATE `creature_template` SET `Faction` = 1960, `VendorTemplateId` = 557 WHERE `entry` = 26092;
DELETE FROM `npc_vendor_template` WHERE `entry` = 557;
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(557, 30486, 0, 0, 1478),(557, 30487, 0, 0, 1474),(557, 30488, 0, 0, 1476),(557, 30489, 0, 0, 1480),
(557, 30490, 0, 0, 1482),(557, 31960, 0, 0, 1478),(557, 31961, 0, 0, 1474),(557, 31962, 0, 0, 1476),
(557, 31963, 0, 0, 1480),(557, 31964, 0, 0, 1482),(557, 31967, 0, 0, 1520),(557, 31968, 0, 0, 1521),
(557, 31969, 0, 0, 1523),(557, 31971, 0, 0, 1524),(557, 31972, 0, 0, 1522),(557, 31973, 0, 0, 1485),
(557, 31974, 0, 0, 1488),(557, 31975, 0, 0, 1494),(557, 31976, 0, 0, 1497),(557, 31977, 0, 0, 1491),
(557, 31979, 0, 0, 1485),(557, 31980, 0, 0, 1488),(557, 31981, 0, 0, 1494),(557, 31982, 0, 0, 1491),
(557, 31983, 0, 0, 1491),(557, 31987, 0, 0, 1520),(557, 31988, 0, 0, 1521),(557, 31989, 0, 0, 1523),
(557, 31990, 0, 0, 1524),(557, 31991, 0, 0, 1522),(557, 31992, 0, 0, 1491),(557, 31993, 0, 0, 1485),
(557, 31995, 0, 0, 1494),(557, 31996, 0, 0, 1497),(557, 31997, 0, 0, 1488),(557, 31998, 0, 0, 1520),
(557, 31999, 0, 0, 1521),(557, 32000, 0, 0, 1523),(557, 32001, 0, 0, 1524),(557, 32002, 0, 0, 1522),
(557, 32004, 0, 0, 1478),(557, 32005, 0, 0, 1474),(557, 32006, 0, 0, 1476),(557, 32007, 0, 0, 1480),
(557, 32008, 0, 0, 1482),(557, 32009, 0, 0, 1478),(557, 32010, 0, 0, 1474),(557, 32011, 0, 0, 1476),
(557, 32012, 0, 0, 1480),(557, 32013, 0, 0, 1482),(557, 32015, 0, 0, 1485),(557, 32016, 0, 0, 1488),
(557, 32017, 0, 0, 1494),(557, 32018, 0, 0, 1497),(557, 32019, 0, 0, 1491),(557, 32020, 0, 0, 1491),
(557, 32021, 0, 0, 1485),(557, 32022, 0, 0, 1488),(557, 32023, 0, 0, 1494),(557, 32024, 0, 0, 1497),
(557, 32029, 0, 0, 1478),(557, 32030, 0, 0, 1474),(557, 32031, 0, 0, 1476),(557, 32032, 0, 0, 1480),
(557, 32033, 0, 0, 1482),(557, 32034, 0, 0, 1485),(557, 32035, 0, 0, 1488),(557, 32036, 0, 0, 1494),
(557, 32037, 0, 0, 1497),(557, 32038, 0, 0, 1491),(557, 32039, 0, 0, 1491),(557, 32040, 0, 0, 1485),
(557, 32041, 0, 0, 1488),(557, 32042, 0, 0, 1494),(557, 32043, 0, 0, 1497),(557, 32047, 0, 0, 1524),
(557, 32048, 0, 0, 1521),(557, 32049, 0, 0, 1520),(557, 32050, 0, 0, 1522),(557, 32051, 0, 0, 1523),
(557, 32056, 0, 0, 1520),(557, 32057, 0, 0, 1521),(557, 32058, 0, 0, 1523),(557, 32059, 0, 0, 1524),
(557, 32060, 0, 0, 1522);

-- Ohura 26560

-- CREATURE_EXTRA_FLAG_ACTIVE
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4096 WHERE `entry` IN (
25027, -- Frenzied Ghoul
25028, -- Skeletal Ravager
25030, -- Wrath Enforcer
25031, -- Pit Overlord
25033, -- Eredar Sorcerer
25158, -- Brutallus
25160 -- Madrigosa
);

-- ===========
-- Gameobjects
-- ===========

-- Razorthorn Dirt Mound 187073 - only 8 spawns currently - 5 needed for quest
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 60 WHERE `id` = 187073; -- 120 120

-- Smuggled Mana Cell 187039 - only 13 spawns currently - 10 needed for quest
UPDATE `gameobject` SET `spawntimesecsmin` = 10, `spawntimesecsmax` = 60 WHERE `id` = 187039; -- 300 300

-- Bloodberry Bush 187333 - 70 spawns - pool 13051 with 23 active at a time - 5 needed for quest
UPDATE `gameobject` SET `spawntimesecsmin` = 45, `spawntimesecsmax` = 90 WHERE `id` = 187333; -- 120 120
UPDATE `pool_template` SET `max_limit` = 53 WHERE `entry` = 13051; -- Isle of Quel'Danas - Bloodberry Bush (187333)

-- Darkspine Ore Chest 187264 - 72 spawns - pool 13995 with 36 active at a time - 3 needed for quest
UPDATE `pool_template` SET `max_limit` = 54 WHERE `entry` = 13995; -- Isle of Quel'Danas - Darkspine Ore Chest (187264)
-- UPDATE `gameobject` SET `spawntimesecsmin` = XXX, `spawntimesecsmax` = XXX WHERE `id` = 187264; -- 120 300

-- Small Chapel Fire at Sin'Loren Credit 25090, Bloodoath Credit 25091, Dawnchaser Credit 25092
UPDATE `creature` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 10 WHERE `id` IN (25090,25091,25092);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5300525, 182071, 530, 13196.1, -7049.34, 16.2281, 0.855211, -300, -300, 255, 1),
(5300526, 182071, 530, 13199.2, -7050.69, 14.4572, 3.7001, -300, -300, 255, 1),
(5300527, 182071, 530, 13264.3, -7057.71, 24.0282, 1.5708, -300, -300, 255, 1),
(5300528, 182071, 530, 13261.2, -7055.92, 26.5598, 3.29867, -300, -300, 255, 1),
(5300529, 182071, 530, 13237.3, -7053.35, 18.9267, 3.35103, -300, -300, 255, 1),
(5300530, 182071, 530, 13207, -7053.2, 15.4744, 2.74017, -300, -300, 255, 1),
(5300531, 182071, 530, 13260.7, -7056.51, 24.5145, 5.89921, -300, -300, 255, 1),
(5300532, 182071, 530, 13253.2, -7054.88, 16.2446, 0.0698132, -300, -300, 255, 1),
(5300533, 182071, 530, 13247.9, -7055.54, 18.4557, 0.575959, -300, -300, 255, 1),
(5300534, 182071, 530, 13242.2, -7054.79, 17.2035, 4.76475, -300, -300, 255, 1),
(5300535, 182071, 530, 13210.2, -7052.38, 16.071, 4.57276, -300, -300, 255, 1),
(5300536, 182071, 530, 13201.1, -7048.73, 13.2113, 0.191986, -300, -300, 255, 1),
(5300537, 182071, 530, 13262.6, -7056.12, 22.6889, 4.5204, -300, -300, 255, 1),
(5300538, 182071, 530, 13274.6, -7057.69, 24.884, 0.244346, -300, -300, 255, 1),
(5300539, 182071, 530, 13246.3, -7053.97, 20.6238, 4.90438, -300, -300, 255, 1),
(5300540, 182071, 530, 13212.2, -7054.66, 17.0296, 6.10865, -300, -300, 255, 1),
(5300541, 182071, 530, 13202.6, -7051.4, 16.3985, 4.18879, -300, -300, 255, 1),
(5300542, 182071, 530, 13235.6, -7053.93, 15.1975, 5.93412, -300, -300, 255, 1),
(5300543, 182071, 530, 13240.7, -7053.23, 14.1112, 4.97419, -300, -300, 255, 1),
(5300544, 182071, 530, 13256, -7056.6, 19.5141, 1.13446, -300, -300, 255, 1),
(5300545, 182071, 530, 13200.6, -7048.38, 3.82285, 3.17961, -300, -300, 255, 1),
(5300546, 182071, 530, 13317.3, -6988.69, 15.3115, 1.41372, -300, -300, 255, 1),
(5300547, 182071, 530, 13315.5, -6990.6, 14.1785, 5.32325, -300, -300, 255, 1),
(5300548, 182071, 530, 13317.7, -6990.35, 17.5111, 0.0349066, -300, -300, 255, 1),
(5300549, 182071, 530, 13312.7, -6989.04, 16.8007, 3.03687, -300, -300, 255, 1),
(5300550, 182071, 530, 13330.6, -6993.74, 18.5526, 0.453786, -300, -300, 255, 1),
(5300551, 182071, 530, 13325.7, -6992.54, 17.863, 0.314159, -300, -300, 255, 1),
(5300552, 182071, 530, 13321.5, -6991.06, 18.041, 3.47321, -300, -300, 255, 1),
(5300553, 182071, 530, 13326.6, -6991.6, 15.735, 3.87463, -300, -300, 255, 1),
(5300554, 182071, 530, 13329.9, -6994.26, 15.6949, 0.279253, -300, -300, 255, 1),
(5300555, 182071, 530, 13321.4, -6992.02, 15.1636, 1.85005, -300, -300, 255, 1),
(5300556, 182071, 530, 13357.7, -6991.56, 18.4676, 4.72984, -300, -300, 255, 1),
(5300557, 182071, 530, 13348.5, -6991, 17.8197, 3.52556, -300, -300, 255, 1),
(5300558, 182071, 530, 13351.3, -6989.81, 14.9305, 5.61996, -300, -300, 255, 1),
(5300559, 182071, 530, 13357.9, -6991.57, 15.0362, 1.85005, -300, -300, 255, 1),
(5300560, 182071, 530, 13367.5, -6992.16, 15.7584, 4.32842, -300, -300, 255, 1),
(5300561, 182071, 530, 13372.2, -6991.09, 22.5895, 4.90438, -300, -300, 255, 1),
(5300562, 182071, 530, 13361.9, -6990.98, 21.167, 1.309, -300, -300, 255, 1),
(5300563, 182071, 530, 13364.2, -6991.96, 18.6687, 4.29351, -300, -300, 255, 1),
(5300564, 182071, 530, 13367.8, -6992.18, 11.6264, 2.53073, -300, -300, 255, 1),
(5300565, 182071, 530, 13363.3, -6990.54, 17.5173, 5.044, -300, -300, 255, 1),
(5300566, 182071, 530, 13359.9, -6990.33, 11.868, 3.89208, -300, -300, 255, 1),
(5300567, 182071, 530, 13374.3, -6991.22, 18.2011, 5.02655, -300, -300, 255, 1),
(5300568, 182071, 530, 13374.6, -6992.59, 20.4122, 0.872665, -300, -300, 255, 1),
(5300569, 182071, 530, 13317.5, -6988.85, 4.13809, 3.11521, -300, -300, 255, 1),
(5300570, 182071, 530, 13279.7, -7149.91, 16.2871, 4.74729, -300, -300, 255, 1),
(5300571, 182071, 530, 13285.6, -7150.73, 20.1099, 5.11381, -300, -300, 255, 1),
(5300572, 182071, 530, 13324.4, -7148.76, 12.4026, 5.39307, -300, -300, 255, 1),
(5300573, 182071, 530, 13308.8, -7147.54, 14.7445, 2.6529, -300, -300, 255, 1),
(5300574, 182071, 530, 13267.6, -7146.23, 17.4961, 3.08923, -300, -300, 255, 1),
(5300575, 182071, 530, 13314.8, -7148.8, 21.4387, 4.83456, -300, -300, 255, 1),
(5300576, 182071, 530, 13323.9, -7149.33, 23.5908, 0.331613, -300, -300, 255, 1),
(5300577, 182071, 530, 13332.5, -7149.99, 25.6237, 3.45575, -300, -300, 255, 1),
(5300578, 182071, 530, 13315.1, -7149.39, 15.7673, 4.06662, -300, -300, 255, 1),
(5300579, 182071, 530, 13273.8, -7146.33, 11.3759, 0.314159, -300, -300, 255, 1),
(5300580, 182071, 530, 13276.3, -7148.31, 18.7872, 5.25344, -300, -300, 255, 1),
(5300581, 182071, 530, 13306.4, -7148.46, 19.4483, 6.12611, -300, -300, 255, 1),
(5300582, 182071, 530, 13323.5, -7150.05, 19.5165, 2.25148, -300, -300, 255, 1),
(5300583, 182071, 530, 13283.3, -7150.99, 16.3643, 2.49582, -300, -300, 255, 1),
(5300584, 182071, 530, 13336.5, -7149.71, 24.0134, 0.942478, -300, -300, 255, 1),
(5300585, 182071, 530, 13272.2, -7144.51, 4.93783, 3.72311, -300, -300, 255, 1);

-- =====
-- Items
-- =====

-- Mana Remnants i.34338 - 25047,24960,24966

-- Aldor Supplies Package i.34583,34587,34592,34595

-- Scryer Supplies Package i.34584,34585,34593,34594

-- Shattered Sun Supplies i.35232
-- Revamp Badge Bags Daily Quest Loot - Shattered Sun Supplies 35232
-- https://www.wowhead.com/item=35232/shattered-sun-supplies#contains
-- https://web.archive.org/web/20110911020939/http://www.wowhead.com/item=35232
-- https://web.archive.org/web/20091230213842/http://wow.allakhazam.com/db/item.html?witem=35232#Contains_Items
-- seemingly all itemlevel 114
DELETE FROM `reference_loot_template` WHERE `entry` = 10002;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 10002;
DELETE FROM `item_loot_template` WHERE `entry` = 35232;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(35232, 29434, 10, 0, 1, 1, 0, 'Badge of Justice'),
(35232, 25055, 6, 1, 1, 1, 0, 'Alexandrite Ring'),
(35232, 25069, 4, 1, 1, 1, 0, 'Epidote Stone Necklace'),
(35232, 24669, 0, 1, 1, 1, 0, 'Eldr''naan Belt'),
(35232, 24670, 0, 1, 1, 1, 0, 'Eldr''naan Boot'),
(35232, 24671, 0, 1, 1, 1, 0, 'Eldr''naan Jerkin'),
(35232, 24672, 0, 1, 1, 1, 0, 'Eldr''naan Gloves'),
(35232, 24673, 0, 1, 1, 1, 0, 'Eldr''naan Hood'),
(35232, 24674, 0, 1, 1, 1, 0, 'Eldr''naan Pants'),
(35232, 24675, 0, 1, 1, 1, 0, 'Eldr''naan Shoulderpads'),
(35232, 24676, 0, 1, 1, 1, 0, 'Eldr''naan Bracelets'), -- cloth (wowhead not allakhazam)
(35232, 25006, 0, 1, 1, 1, 0, 'Conqueror''s Girdle'),
(35232, 25007, 0, 1, 1, 1, 0, 'Conqueror''s Greaves'),
(35232, 25008, 0, 1, 1, 1, 0, 'Conqueror''s Breastplate'),
(35232, 25009, 0, 1, 1, 1, 0, 'Conqueror''s Gauntlets'),
(35232, 25010, 0, 1, 1, 1, 0, 'Conqueror''s Helmet'),
(35232, 25011, 0, 1, 1, 1, 0, 'Conqueror''s Legplates'),
(35232, 25012, 0, 1, 1, 1, 0, 'Conqueror''s Epaulets'),
(35232, 25013, 0, 1, 1, 1, 0, 'Conqueror''s Vambraces'),
(35232, 24894, 0, 1, 1, 1, 0, 'Sundered Waistband'),
(35232, 24895, 0, 1, 1, 1, 0, 'Sundered Footwraps'),
(35232, 24896, 0, 1, 1, 1, 0, 'Sundered Chestpiece'),
(35232, 24897, 0, 1, 1, 1, 0, 'Sundered Gauntlets'),
(35232, 24898, 0, 1, 1, 1, 0, 'Sundered Helmet'),
(35232, 24899, 0, 1, 1, 1, 0, 'Sundered Legguards'),
(35232, 24900, 0, 1, 1, 1, 0, 'Sundered Spaulders'),
(35232, 24901, 0, 1, 1, 1, 0, 'Tortured Bracer'), -- mail
(35232, 24781, 0, 1, 1, 1, 0, 'Murkblood Belt'),
(35232, 24783, 0, 1, 1, 1, 0, 'Murkblood Boots'),
(35232, 24784, 0, 1, 1, 1, 0, 'Murkblood Chestpiece'),
(35232, 24785, 0, 1, 1, 1, 0, 'Murkblood Gloves'),
(35232, 24786, 0, 1, 1, 1, 0, 'Murkblood Cover'),
(35232, 24787, 0, 1, 1, 1, 0, 'Murkblood Pants'),
(35232, 24788, 0, 1, 1, 1, 0, 'Murkblood Shoulderguards'),
(35232, 24789, 0, 1, 1, 1, 0, 'Murkblood Bracers'),
(35232, 25083, 0, 1, 1, 1, 0, 'Smouldering Shield'),
(35232, 25041, 0, 1, 1, 1, 0, 'Ambusher''s Cloak'),
(35232, 25097, 0, 1, 1, 1, 0, 'Astralaan Orb'),
(35232, 25307, 1, 1, 1, 1, 0, 'Shadow Dagger'),
(35232, 25293, 0.9, 1, 1, 1, 0, 'Draenethyst Wand'),
(35232, 25321, 0.6, 1, 1, 1, 0, 'Divine Hammer'),
(35232, 25111, 0.4, 1, 1, 1, 0, 'Lionhead Dagger'),
(35232, 25223, 0.3, 1, 1, 1, 0, 'Windcaller Hatchet'),
(35232, 25125, 0.3, 1, 1, 1, 0, 'Retro-Spike Club'),
(35232, 25153, 0.3, 1, 1, 1, 0, 'Gladiator Greatblade'),
(35232, 25209, 0.3, 1, 1, 1, 0, 'Amani Tomahawk'),
(35232, 25139, 0.2, 1, 1, 1, 0, 'Algaz Battle Hammer'),
(35232, 25167, 0.2, 1, 1, 1, 0, 'Nethersteel Claymore'),
(35232, 25195, 0.2, 1, 1, 1, 0, 'Diamond Tipped Claws'),
(35232, 25181, 0.2, 1, 1, 1, 0, 'Tapered Staff'),
(35232, 25335, 0.2, 1, 1, 1, 0, 'Feral Warp-Staff'),
(35232, 25237, 0.2, 1, 1, 1, 0, 'Nether Trident'),
(35232, 25251, 0.1, 1, 1, 1, 0, 'Orc Flatbow'),
(35232, 25265, 0.1, 1, 1, 1, 0, 'Barreled Crossbow'),
(35232, 28542, 0.1, 1, 1, 1, 0, 'Heartseeker Knives'),
(35232, 25279, 0.05, 1, 1, 1, 0, 'Sen''jin Longrifle');

-- Orb of Murloc Control i.34483
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 70 WHERE `item` = 34483 AND `entry` = 25073; -- 100

-- Darkspine Chest Key i.34477
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -70 WHERE `item` = 34477 AND `entry` = 25060; -- -30

-- Ata'mal Armament 34500

-- Sunfury Attack Plans i.35231
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 35231 AND `entry` IN
(18850,18852,18853,18855,18857,19453,19593,19635,19643,19707,19779,19831,19926,20134,20135,20136,20139,20140,20207,20221,20248,20416,21089); -- -5

-- ======
-- Quests
-- ======

-- Orb of Murloc Control 34483 should be removed on Disrupt the Greengill Coast 11541 quest turn in
UPDATE `quest_template` SET `ReqSourceId1` = 34483, `ReqSourceCount1` = 10 WHERE `entry` = 11541;

-- Remove Flaming Oil i.34489 on Intercept the Reinforcements q.11542 & Keeping the Enemy at Bay q.11543 - Turn In
UPDATE `quest_template` SET `ReqItemId1` = 34489, `ReqItemCount1` = 1 WHERE `entry` IN (11542,11543);

-- Link q.11517,11534 Report to Nasuun to respective game events so only one leads to the quest npc
REPLACE INTO `game_event_quest` (`quest`,`event`) VALUES
(11517,304), -- Intercepting the Mana Cells -> Suns Reach Reclamation Phase No Portal -> q.11513 "we must hurry to create a magical portal that will lead to here from Shattrath City in the Outland.$B$BMy liege lord, Exarch Nasuun, is heading up the Offensive's efforts to do just that."
(11534,305); -- Maintaining the Sunwell Portal -> Suns Reach Reclamation Phase Portal -> q.11514 "we hurried to create a magical portal that leads here from Shattrath City in the Outland.$B$BMy liege lord, Exarch Nasuun, is heading up the Offensive's efforts to maintain that portal."

-- Unrestrained Dragonhawk 25236 Gossip Option to Fly back to Land is always available
-- Currently become unavailable when you have the quest completed in log, befor it works
-- 105	9	11542	0	0	0	0	Quest ID 11542 Taken (Used for gossip 9062 "I need to intercept the Dawnblade reinforcements." q.11542)
-- 106	9	11543	0	0	0	0	Quest ID 11543 Taken (Used for gossip 9062 "I need to intercept the Dawnblade reinforcements." q.11543)
-- 116	19	11542	0	0	0	0	Quest ID 11542 Available
-- 117	19	11543	0	0	0	0	Quest ID 11543 Available
-- 160	-2	105	106	0	0	0	(Quest ID 11542 Taken AND Quest ID 11543 Taken)
-- 161	-1	105	117	0	0	0	(Quest ID 11542 Taken AND Quest ID 11543 Available)
-- 162	-1	106	116	0	0	0	(Quest ID 11543 Taken AND Quest ID 11542 Available)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9143 AND `id` IN (1,2);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9062 AND `id` = 5;
UPDATE `gossip_menu_option` SET `condition_id` = 0 WHERE `menu_id` = 9143;
UPDATE `gossip_menu_option` SET `condition_id` = 105 WHERE `menu_id` = 9062 AND `id` = 3;
UPDATE `gossip_menu_option` SET `condition_id` = 106 WHERE `menu_id` = 9062 AND `id` = 4;
DELETE FROM `conditions` WHERE `condition_entry` IN (116,117,160,161,162);

-- =======================
-- Movement & RP Scripting
-- =======================

DELETE FROM `creature_movement` WHERE `id` BETWEEN 5300316 AND 5300327;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(5300316, 1, 12603.2, -6663.78, 4.89453, 4.13643, 1000, 2497801, NULL),
(5300317, 1, 12595, -6674.92, 5.71689, 0.872665, 1000, 2497801, NULL),
(5300318, 1, 12624.2, -6642.92, 5.73085, 2.36384, 1000, 2497801, NULL),
(5300319, 1, 12614.7, -6633.05, 5.00759, 5.39307, 1000, 2497801, NULL),
(5300320, 1, 12765, -6696.87, 2.35364, 5.8294, 1000, 2497802, NULL),
(5300321, 1, 12781, -6693.26, 2.35318, 4.29351, 1000, 2497802, NULL),
(5300322, 1, 12789.5, -6707.39, 2.33996, 2.75762, 1000, 2497802, NULL),
(5300323, 1, 12771, -6713.82, 2.35041, 1.74533, 1000, 2497802, NULL),
(5300324, 1, 12759.7, -6695.81, 18.8337, 5.32325, 1000, 2497801, NULL),
(5300325, 1, 12782.9, -6685.83, 18.8336, 5.20108, 1000, 2497801, NULL),
(5300326, 1, 12792.8, -6707.38, 18.8336, 1.93731, 1000, 2497801, NULL),
(5300327, 1, 12769.9, -6717.98, 18.8336, 2.16421, 1000, 2497801, NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (2497801,2497802);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2497801, 500, 1, 15, 45104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dawnblade Summoner - Cast Shadow Channelling'),
(2497802, 500, 1, 15, 30944, 0, 0, 23033, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dawnblade Summoner - Cast Red Beam (Drops)');

-- Shattered Sun Recruit 25164
DELETE FROM `creature_movement` WHERE `id` IN (5301125,5301126,5301127);
DELETE FROM `creature_movement_template` WHERE `entry` = 25164;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(25164, 0, 1, 13135.925, -6784.517, 30.567154, 100, 1000, 2516401, NULL),
(25164, 0, 2, 13136.3, -6783.59, 30.567154, 100, 0, 0, NULL),
(25164, 0, 3, 13162.065, -6783.541, 28.340494, 100, 0, 0, NULL),
(25164, 0, 4, 13134.18, -6814.816, 24.090494, 100, 0, 0, NULL),
(25164, 0, 5, 13118.645, -6859.688, 19.39605, 100, 0, 0, NULL),
(25164, 0, 6, 13102.915, -6902.2896, 19.534939, 100, 0, 0, NULL),
(25164, 0, 7, 13079.161, -6910.8486, 22.923826, 100, 0, 0, NULL),
(25164, 0, 8, 13041.937, -6919.1255, 28.340494, 100, 0, 0, NULL),
(25164, 0, 9, 13017.405, -6990.96, 28.340494, 100, 0, 0, NULL),
-- (25164, 0, 10, 13020.993, -7010.9224, 28.340494, 100, 0, 0, NULL), -- breaks spline, looks bad
(25164, 0, 10, 13062.231, -7004.008, 28.340494, 100, 0, 0, NULL),
(25164, 0, 11, 13104.095, -6977.005, 28.340494, 100, 0, 0, NULL),
(25164, 0, 12, 13102.771, -6949.936, 28.340494, 100, 0, 0, NULL),
(25164, 0, 13, 13042.662, -6929.863, 20.146048, 100, 0, 0, NULL),
(25164, 0, 14, 13008.939, -6912.1987, 14.923831, 100, 0, 0, NULL),
(25164, 0, 15, 13001.731, -6907.179, 12.646052, 100, 0, 0, NULL),
(25164, 0, 16, 13001.731, -6907.179, 9.58451, 100, 10000, 2516402, NULL), -- ground position

(25164, 1, 1, 13135.925, -6784.517, 30.567154, 100, 0, 0, NULL),
(25164, 1, 2, 13136.3, -6783.59, 30.567154, 100, 0, 0, NULL),
(25164, 1, 3, 13162.065, -6783.541, 28.340494, 100, 0, 0, NULL),
(25164, 1, 4, 13134.18, -6814.816, 24.090494, 100, 0, 0, NULL),
(25164, 1, 5, 13118.645, -6859.688, 19.39605, 100, 0, 0, NULL),
(25164, 1, 6, 13102.915, -6902.2896, 19.534939, 100, 0, 0, NULL),
(25164, 1, 7, 13079.161, -6910.8486, 22.923826, 100, 0, 0, NULL),
(25164, 1, 8, 13041.937, -6919.1255, 28.340494, 100, 0, 0, NULL),
(25164, 1, 9, 13017.405, -6990.96, 28.340494, 100, 0, 0, NULL),
(25164, 1, 10, 13062.231, -7004.008, 28.340494, 100, 0, 0, NULL),
(25164, 1, 11, 13104.095, -6977.005, 28.340494, 100, 0, 0, NULL),
(25164, 1, 12, 13102.771, -6949.936, 28.340494, 100, 0, 0, NULL),
(25164, 1, 13, 13042.662, -6929.863, 20.146048, 100, 0, 0, NULL),
(25164, 1, 14, 13008.939, -6912.1987, 14.923831, 100, 0, 0, NULL),
(25164, 1, 15, 13002.1, -6910.43, 9.58451, 2.52238, 10000, 0, NULL), -- ground position

(25164, 2, 1, 13135.925, -6784.517, 30.567154, 100, 0, 0, NULL),
(25164, 2, 2, 13136.3, -6783.59, 30.567154, 100, 0, 0, NULL),
(25164, 2, 3, 13162.065, -6783.541, 28.340494, 100, 0, 0, NULL),
(25164, 2, 4, 13134.18, -6814.816, 24.090494, 100, 0, 0, NULL),
(25164, 2, 5, 13118.645, -6859.688, 19.39605, 100, 0, 0, NULL),
(25164, 2, 6, 13102.915, -6902.2896, 19.534939, 100, 0, 0, NULL),
(25164, 2, 7, 13079.161, -6910.8486, 22.923826, 100, 0, 0, NULL),
(25164, 2, 8, 13041.937, -6919.1255, 28.340494, 100, 0, 0, NULL),
(25164, 2, 9, 13017.405, -6990.96, 28.340494, 100, 0, 0, NULL),
(25164, 2, 10, 13062.231, -7004.008, 28.340494, 100, 0, 0, NULL),
(25164, 2, 11, 13104.095, -6977.005, 28.340494, 100, 0, 0, NULL),
(25164, 2, 12, 13102.771, -6949.936, 28.340494, 100, 0, 0, NULL),
(25164, 2, 13, 13042.662, -6929.863, 20.146048, 100, 0, 0, NULL),
(25164, 2, 14, 13008.939, -6912.1987, 14.923831, 100, 0, 0, NULL),
(25164, 2, 15, 13004.5, -6906.68, 9.58451, 2.60878, 10000, 0, NULL), -- ground position

(25164, 3, 1, 12976.382, -6896.925, 6.442917, 100, 0, 0, NULL),
(25164, 3, 2, 12963.997, -6895.8184, 6.442917, 100, 0, 0, NULL),
(25164, 3, 3, 12932.8, -6873.2, 7.23205, 3.10398, 60000, 2516403, NULL),

(25164, 4, 1, 12977.904, -6898.169, 6.442917, 100, 0, 0, NULL),
(25164, 4, 2, 12964.037, -6896.881, 6.442917, 100, 0, 0, NULL),
(25164, 4, 3, 12933.4, -6875.25, 7.06605, 2.96183, 61000, 0, NULL),

(25164, 5, 1, 12979.481, -6896.424, 6.442917, 100, 0, 0, NULL),
(25164, 5, 2, 12963.956, -6894.751, 6.442917, 100, 0, 0, NULL),
(25164, 5, 3, 12934.8, -6871.98, 7.24047, 3.15896, 61000, 0, NULL),

(25164, 6, 1, 12945.458008, -6884.852539, 5.942615, 100, 0, 0, NULL),
(25164, 6, 2, 12917.8125, -6920.0293, 4.18782, 3.85755014419555664, 32000, 2516404, NULL),

(25164, 7, 1, 12945.458008, -6884.852539, 5.942615, 100, 0, 0, NULL),
(25164, 7, 2, 12920.307, -6920.2026, 4.18782, 3.87774968147277832, 33000, 0, NULL),

(25164, 8, 1, 12945.458008, -6884.852539, 5.942615, 100, 0, 0, NULL),
(25164, 8, 2, 12918.264, -6917.294, 4.31282, 3.708322048187255859, 33000, 0, NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2516401 AND 2516404;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2516401, 0, 4, 39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Fly On'),
(2516401, 500, 4, 39, 1, 0, 0, 25164, 5301125, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Fly On'),
(2516401, 500, 4, 39, 1, 0, 0, 25164, 5301127, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Fly On'),

(2516401, 0, 3, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Run On'),
(2516401, 500, 3, 25, 1, 0, 0, 25164, 5301125, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Run On'),
(2516401, 500, 3, 25, 1, 0, 0, 25164, 5301127, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Run On'),

(2516401, 0, 2, 24, 22840, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Mount'),
(2516401, 500, 2, 24, 22840, 0, 0, 25164, 5301125, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Mount'),
(2516401, 500, 2, 24, 22840, 0, 0, 25164, 5301127, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Mount'),

(2516401, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Remove EmoteState'),
(2516401, 500, 1, 1, 0, 0, 0, 25164, 5301125, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Remove EmoteState'),
(2516401, 500, 1, 1, 0, 0, 0, 25164, 5301127, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Remove EmoteState'),

(2516401, 2000, 0, 20, 2, 1, 0, 25164, 5301125, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Start PathId 1 for Shattered Sun Recruit'),
(2516401, 3000, 0, 20, 2, 2, 0, 25164, 5301127, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Start PathId 2 for Shattered Sun Recruit'),

(2516402, 1000, 3, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Dismount'),
(2516402, 3000, 3, 24, 0, 0, 0, 25164, 5301125, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Dismount'),
(2516402, 4000, 3, 24, 0, 0, 0, 25164, 5301127, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Dismount'),

(2516402, 1000, 2, 25, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Run Off'),
(2516402, 3000, 2, 25, 0, 0, 0, 25164, 5301125, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Run Off'),
(2516402, 4000, 2, 25, 0, 0, 0, 25164, 5301127, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Run Off'),

(2516402, 1000, 1, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Fly Off'),
(2516402, 3000, 1, 39, 0, 0, 0, 25164, 5301125, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Fly Off'),
(2516402, 4000, 1, 39, 0, 0, 0, 25164, 5301127, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Fly Off'),

(2516402, 9000, 0, 20, 2, 3, 0, 25164, 5301126, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Start PathId 1 for Shattered Sun Recruit'),
(2516402, 9000, 0, 20, 2, 4, 0, 25164, 5301125, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Start PathId 2 for Shattered Sun Recruit'),
(2516402, 9000, 0, 20, 2, 5, 0, 25164, 5301127, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Start PathId 3 for Shattered Sun Recruit'),

(2516403, 2000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit (Self) - OneShotSalute'),
(2516403, 2500, 0, 1, 66, 0, 0, 25164, 5301125, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit (Buddy 1) - OneShotSalute'),
(2516403, 2500, 0, 1, 66, 0, 0, 25164, 5301127, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit (Buddy 2) - OneShotSalute'),

(2516403, 59000, 0, 20, 2, 6, 0, 25164, 5301126, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Start PathId 4 for Shattered Sun Recruit'),
(2516403, 60000, 0, 20, 2, 7, 0, 25164, 5301125, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Start PathId 5 for Shattered Sun Recruit'),
(2516403, 60000, 0, 20, 2, 8, 0, 25164, 5301127, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Start PathId 6 for Shattered Sun Recruit'),

(2516404, 0, 0, 1, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set EMOTE_STATE_READY1H'),
(2516404, 0, 0, 1, 333, 0, 0, 25164, 5301125, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set EMOTE_STATE_READY1H'),
(2516404, 0, 0, 1, 333, 0, 0, 25164, 5301127, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set EMOTE_STATE_READY1H'),

(2516404, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Idle'),
(2516404, 0, 0, 20, 0, 0, 0, 25164, 5301125, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Idle'),
(2516404, 0, 0, 20, 0, 0, 0, 25164, 5301127, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Set Idle'),

(2516404, 0, 0, 18, 31000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Recruit - Delayed Despawn');

