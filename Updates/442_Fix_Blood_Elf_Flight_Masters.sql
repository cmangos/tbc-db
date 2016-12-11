-- ========================================================
-- Fix Skymistress Gloaming and Skymaster Sunwing and Ohura
-- ========================================================
-- Backport from UDB missing Creature Template Entry
DELETE FROM `creature_template` WHERE `entry`=27946;
insert into `creature_template` (`Entry`, `Name`, `SubName`, `IconName`, `MinLevel`, `MaxLevel`, `HeroicEntry`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `Expansion`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `EquipmentTemplateId`, `GossipMenuId`, `AIName`, `ScriptName`) values('27946','Silvermoon Dragonhawk','','','65','65','0','29363','0','0','0','1603','1603','1','30','1','3','3','0','0','0','0','0','0','1','4.28571','1','1','1','3','3','7.5','1','1','1','17742','17742','0','0','200','281','166','246','5234','278','35','2000','2000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','12993','0','0','0','0','0','0','0','0','0','EventAI','');

UPDATE creature_template SET SubName='Dragonhawk Master' WHERE entry IN (16192,16189,26560);
UPDATE creature_template SET ExtraFlags=2 WHERE entry IN (26560);

-- Skymistress Gloaming (16192)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17742', `MaxLevelHealth` = '17742', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '601', `MaxMeleeDmg` = '843', `MinRangedDmg` = '497', `MaxRangedDmg` = '738', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '16192';
-- Skymaster Sunwing (16189)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17742', `MaxLevelHealth` = '17742', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '601', `MaxMeleeDmg` = '843', `MinRangedDmg` = '497', `MaxRangedDmg` = '738', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '16189';
-- Ohura (26560)
UPDATE `creature_template` SET `HealthMultiplier` = '10.0', `PowerMultiplier` = '0', `DamageMultiplier` = '5.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '69860', `MaxLevelHealth` = '69860', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '1262', `MaxMeleeDmg` = '1785', `MinRangedDmg` = '1077', `MaxRangedDmg` = '1599', `MeleeAttackPower` = '304.0', `RangedAttackPower` = '44.0', `Armor` = '6792.0' WHERE `entry` = '26560';
-- Silvermoon Dragonhawk (27946)
UPDATE `creature_template` SET `HealthMultiplier` = '3.0', `PowerMultiplier` = '0', `DamageMultiplier` = '3.0', `DamageVariance` = '1.0', `ArmorMultiplier` = '1.0', `MinLevelHealth` = '17742', `MaxLevelHealth` = '17742', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '601', `MaxMeleeDmg` = '843', `MinRangedDmg` = '497', `MaxRangedDmg` = '738', `MeleeAttackPower` = '278.0', `RangedAttackPower` = '35.0', `Armor` = '5291.0' WHERE `entry` = '27946';

-- Skymaster Sunwing Silvermoon Dragonhawks and Aggro Linking (81728)
DELETE FROM `creature` WHERE `guid` IN (101330,101331);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101330','27946','530','1','0','0','7592.39','-6776.33','86.834','4.83017','300','0','0','17742','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101331','27946','530','1','0','0','7599.98','-6778.44','86.4116','4.19394','300','0','0','17742','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (81728);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101330','81728','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101331','81728','3');

-- Skymistress Gloaming Silvermoon Dragonhawks and Aggro Linking (56866)
DELETE FROM `creature` WHERE `guid` IN (101332,101333);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101332','27946','530','1','0','0','9378.85','-7162.24','8.88681','3.16111','300','0','0','17742','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101333','27946','530','1','0','0','9379.6','-7169.83','9.07374','3.03163','300','0','0','17742','0','0','0');

DELETE FROM creature_linking WHERE master_guid IN (56866);
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101332','56866','3');
insert into `creature_linking` (`guid`, `master_guid`, `flag`) values('101333','56866','3');


