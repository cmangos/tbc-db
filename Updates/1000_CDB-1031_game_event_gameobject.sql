-- Changing spell used in companion items to implemented ones
-- Custom Change to make things work
UPDATE `item_template` SET `spellid_1`= 26529 WHERE `entry`= 21308; -- 26528
UPDATE `item_template` SET `spellid_1`= 26533 WHERE `entry`= 21301; -- 26532
UPDATE `item_template` SET `spellid_1`= 26536 /*, `Flags`= 1024*/ WHERE `entry`= 21305; -- 26541
UPDATE `item_template` SET `spellid_1`= 26045 WHERE `entry`= 21309; -- 26469
-- Correcting the scale of companion npcs
-- UPDATE `creature_template` SET `Scale`= 0 WHERE `Entry`= 15705; -- https://www.wowhead.com/npc=15705/winters-little-helper#screenshots:id=67150
-- UPDATE `creature_template` SET `Scale`= 0 WHERE `Entry`= 15710; -- https://www.wowhead.com/npc=15710/tiny-snowman#screenshots:id=67154

-- Reducing Wondervolt trap radius so effect is confined within pad
-- Custom Change should be 8 as is
-- UPDATE `gameobject_template` SET `data2`= 1 WHERE `entry`= 180797;

-- Goli was AWOL against his will, changed to correct location
-- UPDATE `creature` SET `position_y`=-952.68 WHERE `guid`=86181;
-- Adding missing Winter Helper to DB for spell 26157
-- INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES (15729, 'Father Winter\'s Helper (BIG) gm', NULL, 1, 1, 15687, 15803, 35, 35, 1, 0, 10, 3, 3, 0, 0, 0, 0, 2, 0, 1.2, 1.14286, 1, 0, 1, 1, 1, 1, -1, 1, 5000, 5000, 0, 0, 2, 2, 1, 1, 7, 24, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

-- Increasing size of objs 180798 and 180799 to match screenshot
UPDATE `gameobject_template` SET `size`= 1.25 WHERE `entry`= 180798; -- 1.50 in sniff
UPDATE `gameobject_template` SET `size`= 1.25 WHERE `entry`= 180799; -- "

-- Adding Hardpacked Snowball to item_template
-- INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) VALUES (21038, 0, 8, 'Hardpacked Snowball', 29169, 1, 64, 5, 10, 0, 0, 32767, -1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25677, 0, -1, 0, 30000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2597, 0, 0, '', 0, 0, 0, 0, 300, 0);
-- UPDATE `gameobject_template` SET `data1`= 17489 where `entry`=180654;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (17489, 21038, 100, 0, 5, 5, 0);

-- Adding missing modelid for red girl winter helper
UPDATE `creature_template` SET `ModelId2`= 15800 WHERE `Entry`= 15835;

-- Adding entries for Menethil Wondervolt station
-- Wondervolt
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(42127, 180796, 0, -3755.18, -775.606, 9.87997, -2.46091, 0, 0, 0, 0, 180, 180, 100, 1), -- 41950
-- Trap
(42128, 180797, 0, -3755.38, -775.585, 9.87012, 0.59341, 0, 0, 0, 0, 180, 180, 100, 1), -- 41951
-- Smokywood Pastures Sign
(42129, 178746, 0, -3757.98, -769.912, 9.46039, 2.35619, 0, 0, 0, 0, 180, 180, 100, 1), -- 41952
-- Christmas Tree
(42130, 178667, 0, -3751.6, -767.777, 9.84089, -0.104719, 0, 0, 0, 0, 180, 180, 100, 1), -- 41953
-- 1st Stocking
(42131, 178434, 0, -3757.23, -775.569, 14.8131, -3.01941, 0, 0, 0, 0, 180, 180, 100, 1), -- 41954
-- 2nd Stocking
(42132, 178435, 0, -3756.75, -774.392, 14.7831, 2.63544, 0, 0, 0, 0, 180, 180, 100, 1), -- 41955
-- 1st Present
(42133, 180798, 0, -3756.7, -777.645, 9.89885, -2.16421, 0, 0, 0, 0, 180, 180, 100, 1), -- 41956
-- 2nd Present
(42134, 180799, 0, -3755.98, -778.003, 9.89892, -2.07694, 0, 0, 0, 0, 180, 180, 100, 1), -- 41957
-- Adding entries for Gadetzan Wondervolt station
-- Wondervolt
(42135, 180796, 1, -7166.08, -3918.11, 9.39414, 0.994837, 0, 0, 0, 0, 180, 180, 100, 1), -- 41958
-- Trap
(42136, 180797, 1, -7166.08, -3918.05, 9.39524, -2.00713, 0, 0, 0, 0, 180, 180, 100, 1), -- 41959
-- Smokywood Pastures Sign
(42137, 178746, 1, -7162.93, -3911.53, 9.63193, 0.383971, 0, 0, 0, 0, 180, 180, 100, 1), -- 41960
-- Christmas Tree
(42138, 178667, 1, -7184.51, -3918.14, 24.4141, 0.942477, 0, 0, 0, 0, 180, 180, 100, 1), -- 41961
-- 1st Stocking
(42139, 178434, 1, -7164.25, -3916.59, 14.8622, 0.349065, 0, 0, 0, 0, 180, 180, 100, 1), -- 41962
-- 2nd Stocking
(42140, 178435, 1, -7163.8, -3918.61, 14.5926, 0.139624, 0, 0, 0, 0, 180, 180, 100, 1), -- 41963
-- 1st Present
(42141, 180798, 1, -7165.23, -3915.61, 9.42218, -0.174532, 0, 0, 0, 0, 180, 180, 100, 1), -- 41964
-- 2nd Present
(42142, 180799, 1, -7166.09, -3915.61, 9.44391, 1.37881, 0, 0, 0, 0, 180, 180, 100, 1), -- 41965

-- Adding presents under Tanaris tree
(42143, 178432, 1, -7182.56, -3916.65, 24.494, 3.594, 0, 0, 0, 0, 180, 180, 100, 1), -- 41966
(42144, 178432, 1, -7183.23, -3918.79, 23.988, 1.956, 0, 0, 0.829382, 0.558682, 180, 180, 100, 1), -- 41967
(42145, 178432, 1, -7185.44, -3918.36, 24.284, 1.761, 0, 0, 0.771057, 0.636766, 180, 180, 100, 1), -- 41968
(42146, 178431, 1, -7185.26, -3917.59, 24.024, 5.691, 0, 0, 0, 0, 180, 180, 100, 1), -- 41969
(42147, 178431, 1, -7184.08, -3919.38, 23.48, 1.914, 0, 0, 0, 0, 180, 180, 100, 1), -- 41970
(42148, 178428, 1, -7184.92, -3918.98, 23.885, 1.709, 0, 0, 0, 0, 180, 180, 100, 1), -- 41971
(42149, 178428, 1, -7182.86, -3917.96, 24.048, 3.296, 0, 0, 0, 0, 180, 180, 100, 1), -- 41972
(42150, 178430, 1, -7185.62, -3919.05, 23.729, 1.918, 0, 0, 0, 0, 180, 180, 100, 1); -- 41973

-- Pat + Wonderform npcs
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(99385, 15730, 0, -3754.8, -775.607, 9.98073, 1.81514, 180, 180, 0, 0), -- 54900
(99386, 15732, 0, -3756.79, -770.778, 9.6816, 3.29867, 180, 180, 0, 0), -- 54901
-- Pat + Wonderform npcs
(99387, 15730, 1, -7166.18, -3918.02, 9.4828, 2.44346, 180, 180, 0, 0), -- 54902
(99388, 15732, 1, -7163.48, -3913.22, 9.61368, 0.0523599, 180, 180, 0, 0), -- 54903
-- Adding Pat's Snowcloud Guy to other Wondervolts
-- IF
(99389, 15730, 0, -5049.6, -817.202, 495.352, 2.09439, 180, 180, 0, 0), -- 54904
-- SW
(99390, 15730, 0, -8823.58, 540.349, 97.0268, 2.44346, 180, 180, 0, 0), -- 54905
-- Tirisfal
(99391, 15730, 0, 2051.28, 272.469, 57.0336, -2.44346, 180, 180, 0, 0), -- 54906
-- Org
(99392, 15730, 1, 1332.11, -4607.79, 23.9229, -1.95477, 180, 180, 0, 0), -- 54907
-- Booty Bay
(99393, 15730, 0, -14294.5, 516.209, 9.07392, -2.47837, 180, 180, 0, 0); -- 54908

-- Adding Pat's Snowcloud Guy
-- INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES (15730, 'Pat\'s Snowcloud Guy', '', 60, 60, 21955, 15294, 114, 114, 0, 0, 10, 1, 3, 0, 0, 33554432, 0, 2, 0, 1.1, 1.14286, 1, 0, 1, 1, 1, 1, -1, 1, 4400, 4400, 0, 0, 50, 73, 0, 0, 20, 28, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');
UPDATE `creature_template` SET `UnitFlags` = 33555200 WHERE `entry` = 15730; -- Scale = 2.25?
UPDATE `creature_template_addon` SET `auras` = '26000' WHERE `entry` = 15730; -- Add Snowball Cloud 26000 as passive aura instead of game_event_creature_data, creatures is already game_event limited
-- Adding Snowcloud effect
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (54900, 0, 0, 0, 26000, 0, 2);
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (54902, 0, 0, 0, 26000, 0, 2);
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (54904, 0, 0, 0, 26000, 0, 2);
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (54905, 0, 0, 0, 26000, 0, 2);
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (54906, 0, 0, 0, 26000, 0, 2);
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (54907, 0, 0, 0, 26000, 0, 2);
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES (54908, 0, 0, 0, 26000, 0, 2);

-- Adding objects and npcs to Winter Veil event
INSERT INTO `game_event_gameobject` (`guid`,`event`) VALUES
(42127, 2),(42128, 2),(42129, 2),(42130, 2),(42131, 2),(42132, 2),(42133, 2),(42134, 2),
(42135, 2),(42136, 2),(42137, 2),(42138, 2),(42139, 2),(42140, 2),(42141, 2),(42142, 2),
(42143, 2),(42144, 2),(42145, 2),(42146, 2),(42147, 2),(42148, 2),(42149, 2),(42150, 2);

INSERT INTO `game_event_creature` (`guid`,`event`) VALUES
(99385, 2),(99386, 2),(99387, 2),(99388, 2),(99389, 2),(99390, 2),(99391, 2),(99392, 2),(99393, 2);


