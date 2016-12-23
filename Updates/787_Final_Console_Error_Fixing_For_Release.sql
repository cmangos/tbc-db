-- Fix Incorrect Backported Equipment ID
UPDATE creature SET Equipment_id=0 WHERE id IN (17587,7017,17331,17338,17334);

-- Fix Spawn Distances with Idle Movement
UPDATE creature SET SpawnDist=0 WHERE ID IN (22293) and MovementType=0;

-- Add Missing Creature_Template Entry
insert into `creature_template` (`Entry`, `Name`, `SubName`, `IconName`, `MinLevel`, `MaxLevel`, `HeroicEntry`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `Expansion`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `EquipmentTemplateId`, `GossipMenuId`, `AIName`, `ScriptName`) values('39623','Gnome Citizen','','','1','1','0','2581','0','0','0','64','64','1','0','7','3','3','0','0','33536','0','0','0','1','1.14286','1','0','0','1','1','1','1','1','1','42','42','0','0','2','2','1','1','7','24','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','');

-- Fix a UDB Condition Backport
UPDATE creature_loot_template SET condition_id=165 WHERE entry=16949 AND item=31653; -- UDB 233 = TBC-DB 165

-- Fix Several NPC who have Gossip but are missing proper Flags for it
UPDATE creature_template SET NPCFlags=NPCFlags|128 WHERE entry IN (3044);
UPDATE creature_template SET NPCFlags=NPCFlags|16 WHERE entry IN (17105);

-- Remove Spells For Specific NPC
DELETE FROM npc_trainer WHERE spell IN (45438,43987);

-- Oops WOTLK NPC Slipped Through
DELETE FROM creature_movement_template WHERE entry IN (26252);





