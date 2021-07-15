UPDATE creature_template SET HeroicEntry=28171 WHERE Entry=28132;
DELETE FROM creature_template WHERE Entry=28171;
INSERT INTO creature_template (Entry, `Name`, SubName, IconName, MinLevel, MaxLevel, HeroicEntry, ModelId1, ModelId2, ModelId3, ModelId4, Faction, Scale, Family, CreatureType, InhabitType, RegenerateStats, RacialLeader, NpcFlags, UnitFlags, DynamicFlags, ExtraFlags, CreatureTypeFlags, SpeedWalk, SpeedRun, Detection, CallForHelp, Pursuit, Leash, Timeout, UnitClass, `Rank`, `Expansion`, HealthMultiplier, PowerMultiplier, DamageMultiplier, DamageVariance, ArmorMultiplier, ExperienceMultiplier, MinLevelHealth, MaxLevelHealth, MinLevelMana, MaxLevelMana, MinMeleeDmg, MaxMeleeDmg, MinRangedDmg, MaxRangedDmg, Armor, MeleeAttackPower, RangedAttackPower, MeleeBaseAttackTime, RangedBaseAttackTime, DamageSchool, MinLootGold, MaxLootGold, LootId, PickpocketLootId, SkinningLootId, KillCredit1, KillCredit2, MechanicImmuneMask, SchoolImmuneMask, ResistanceHoly, ResistanceFire, ResistanceNature, ResistanceFrost, ResistanceShadow, ResistanceArcane, PetSpellDataId, MovementType, TrainerType, TrainerSpell, TrainerClass, TrainerRace, TrainerTemplateId, VendorTemplateId, EquipmentTemplateId, GossipMenuId, visibilityDistanceType, AIName, ScriptName) VALUES
(28171, 'Don Carlos (1)', '', '', 72, 72, 0, 25124, 0, 0, 0, 1736, 1, 0, 7, 3, 14, 0, 0, 32768, 0, 1, 2048, 1.2, 1.14286, 20, 0, 0, 0, 0, 1, 1, 1, 15, 1, 5.9, 1, 1, 1, 110700, 110700, 0, 0, 307, 438, 270, 401, 7318, 314, 53, 2000, 0, 0, 6600, 10400, 28171, 0, 0, 0, 0, 653213695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');
DELETE FROM creature_loot_template WHERE entry=28171;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(28171, 38329, -100, 0, 1, 1, 0, 'Don Carlos'' Hat'),
(28171, 38506, 100, 0, 1, 1, 0, 'Don Carlos'' Famous Hat');

-- Fix Stats for Don Carlos 28132,28171
UPDATE `creature_template` SET `DamageMultiplier` = 4.6 WHERE `entry` = 28132;
UPDATE `creature_template` SET `InhabitType` = 1, `UnitFlags` = 64, `ExtraFlags` = `ExtraFlags`|266240, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (9.699999809265136718 / 7), `RangedBaseAttackTime` = 2000 WHERE `entry` IN (28132,28171);

