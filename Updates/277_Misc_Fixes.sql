-- Reverse Query From 1.4.3 Database (Fix Stormwind Guards From Attacking Stuff While on Patrol) - Properly Implemented System in SD2-Vengeance Now
UPDATE creature_template SET UnitFlags=UnitFlags & (~512) WHERE entry IN (1423);

-- Fix Quest - Should not be Repeatable (Was Repeatable in 2.4.3 - Possible Mistake By Blizz as was removed again in 3.x)
UPDATE quest_template SET SpecialFlags=0 WHERE entry IN (7830);

-- Fix Stormwind Sign
UPDATE gameobject SET orientation=0.686126 WHERE guid IN (10674);
UPDATE gameobject SET orientation=2.309423 WHERE guid IN (10693);

-- Fix Witherbark Broodling Loot (NPC ID: 7768)
DELETE FROM creature_loot_template WHERE entry IN (7768);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('7768','50004','5','1','-50004','1','0','NPC LOOT (World Drop) - (Level: 11-15 Grey) - (Item Levels: 16-20) - NPC Levels 15-24');

-- Fleet Master Firallon (2546)
UPDATE `creature_template` SET `MinLevel` = '42', `MaxLevel` = '42', `MeleeAttackPower` = '152.0', `RangedAttackPower` = '15.0', `Armor` = '2246.0', `MinLevelHealth` = '2064', `MaxLevelHealth` = '2064', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '65', `MaxMeleeDmg` = '86', `MinRangedDmg` = '57', `MaxRangedDmg` = '83', `DamageMultiplier` = '1.6', `DamageVariance` = '1.0' WHERE `entry` = '2546';

-- NPC Who Should Not Give Experience
UPDATE creature_template SET ExtraFlags=ExtraFlags|64 WHERE entry IN (7769,8257,8901,10717,10461,10536,10441,16903,18207,19731,20117);

-- Remove Loot From NPC Who SHould Not Have Any
UPDATE creature_template SET LootId=0 WHERE entry IN (8257,10717,10461,10536,10441,20117);
DELETE FROM creature_loot_template WHERE entry IN (8257,10717,10461,10536,10441,20117);

-- Hellfire Ramparts Misc Fixes
UPDATE creature SET position_x = '-1240.891113', position_y = '1627.444458', position_z = '68.487015', orientation = '3.571533' WHERE guid = '85635';

-- Update Loot ID's that Changed with File 121 Changes
UPDATE creature_loot_template SET item=40019, mincountOrRef=-40019 WHERE item=43002;

-- Delete Removed Loot Data that Changed with File 121 Changes
DELETE FROM creature_loot_template WHERE entry IN (40063,40096);
DELETE FROM reference_loot_template WHERE entry IN (12003,25000,25001,25002,25004,25005,25009,25010,25011,25021,25022,25023,25024,35005,35006,50007,50009,50010);

-- Fix Consortium Engineer Outside of Mana Tombs (One who runs into Portal)
insert into `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) values('84498','0','0','0','0','0','0',NULL);

-- Remove a Cabal Skirmisher Appearing in Front of Mana Tombs
DELETE FROM creature WHERE guid IN (75704);

-- Bonestripper Buzzard (16972) - Should Be Properly Flying
UPDATE creature_template SET InhabitType=4 WHERE entry IN (16972);

-- Missing Model ID's in Auchenai Crypts
UPDATE creature_template SET ModelId1=17924, ModelId2=17925, ModelId3=17926, ModelId4=17927 WHERE entry=18493; 

-- Add Condition For Sun Touched Satchel - Mag Terrace (DOes Not Show Up in Loot If You Have One)
DELETE FROM `conditions` WHERE `condition_entry`=497;
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('497','24','35516','1');

-- Delete Loot That Was Replaced In Commit File 280_TBC_Dungeon_Boss_Loot_Revamp.sql
DELETE FROM reference_loot_template WHERE entry IN (12018,25006,25007,25012,25013,25014,25015,25016,25017,25018,25019,25020,25025,25026,25027,25028,25029,35001,35002,35003,35004,35008,43001,43003,43005,43006,43007,43008,43009,43010,43011,43012,43013,43014,43015,43016);

-- Fix Phasing Stalkers (Sniff Data)
UPDATE creature_template SET UnitFlags=UnitFlags|32768, FactionAlliance=7, FactionHorde=7, ModelId1=17938, ModelId2=17939, ModelId3=17940, ModelId4=17941, MovementType=2 WHERE entry IN (18559);

-- Fix Phasing Cleric (Sniff Data)
UPDATE creature_template SET UnitFlags=UnitFlags|32768, FactionAlliance=7, FactionHorde=7, ModelId1=17928, ModelId2=17929, ModelId3=17930, ModelId4=17931, MovementType=2 WHERE entry IN (18557);

-- Fix Phasing Soldier (Sniff Data)
UPDATE creature_template SET UnitFlags=UnitFlags|32768, FactionAlliance=7, FactionHorde=7, ModelId1=17920, ModelId2=17921, ModelId3=17922, ModelId4=17923, MovementType=2 WHERE entry IN (18556);

-- Fix Quest 55: "Morbent Fel"
UPDATE quest_template SET ReqCreatureOrGoId1=24782 WHERE entry=55;

-- Fix NPC Spawn Location in Blue Recluse in Stormwind
UPDATE creature SET position_x = '-9080.155273', position_y = '823.297974', position_z = '108.419350', orientation = '0.567056' WHERE guid = '38225';

-- Fix Hemathion So he is Attackable
UPDATE creature_template SET UnitFlags=0 WHERE entry IN (18692);

-- Prevent Cannon NPC From Moving
UPDATE creature_template SET MovementType = 0 WHERE entry in (19067,19210,19399,21233,22443,22451,22461);

-- Fix Wrong Item (35756)
-- 243 Below
-- insert into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`, `ExtraFlags`) values
-- insert into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `StatScalingFactor`, `minMoneyLoot`, `maxMoneyLoot`, `ExtraFlags`)
-- 434 Above

-- Move NPC as current location is not good for Season 4 vendor
UPDATE creature SET position_x = '872.853760', position_y = '-145.763626', position_z = '-49.758408', orientation = '6.159580' WHERE guid = '48171';





