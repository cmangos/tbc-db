-- ========================
-- Fix Incorrect NPC Levels
-- ========================
UPDATE creature_template SET MinLevel=70, MaxLevel=70 WHERE entry IN (23703,23808,24109);

-- ========================
-- Remove Non-Existant Item
-- ========================
DELETE FROM creature_loot_template WHERE ITEM in (56147);

-- ===============================
-- Add Missing NPC "Gug Fatcandle"
-- ===============================
DELETE FROM creature_template WHERE entry IN (62);
insert into `creature_template` (`Entry`, `Name`, `SubName`, `IconName`, `MinLevel`, `MaxLevel`, `HeroicEntry`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `Expansion`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `EquipmentTemplateId`, `GossipMenuId`, `AIName`, `ScriptName`) values('62','Gug Fatcandle','',NULL,'4','4','0','26','0','0','0','26','26','1','0','7','3','3','0','0','32768','0','0','0','1.2','1.14286','8','0','0','1','1','1','1','1','1','81','81','202','202','3','4','3','3','40','1','0','2000','2000','0','2','4','62','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','');

-- ========================================================================
-- Move Emote ID To Correct Field (Weird Data Import Occured At Some Point)
-- ========================================================================
UPDATE creature_movement_template SET textid5=0, emote=69 WHERE entry IN (1416) and point IN (5);
UPDATE creature_movement_template SET textid5=0, emote=233 WHERE entry IN (1416) and point IN (8);

-- ====================================================================================================
-- dbscripts_on_creature_movement Errors are Ok (These are Generic Scripts That Will Be Used in Future)
-- ====================================================================================================
-- Low ID Script Errors are Ok Until Used In Future