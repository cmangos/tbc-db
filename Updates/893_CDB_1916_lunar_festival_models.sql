-- Fixed model of Alliance NPCs for Lunar Festival

-- Added missing model template
DELETE FROM creature_template WHERE Entry=15899;
INSERT INTO creature_template (Entry, Name, SubName, IconName, MinLevel, MaxLevel, HeroicEntry, ModelId1, ModelId2, ModelId3, ModelId4, FactionAlliance, FactionHorde, Scale, Family, CreatureType, InhabitType, RegenerateStats, RacialLeader, NpcFlags, UnitFlags, DynamicFlags, ExtraFlags, CreatureTypeFlags, SpeedWalk, SpeedRun, UnitClass, Rank, Expansion, HealthMultiplier, PowerMultiplier, DamageMultiplier, DamageVariance, ArmorMultiplier, ExperienceMultiplier, MinLevelHealth, MaxLevelHealth, MinLevelMana, MaxLevelMana, MinMeleeDmg, MaxMeleeDmg, MinRangedDmg, MaxRangedDmg, Armor, MeleeAttackPower, RangedAttackPower, MeleeBaseAttackTime, RangedBaseAttackTime, DamageSchool, MinLootGold, MaxLootGold, LootId, PickpocketLootId, SkinningLootId, KillCredit1, KillCredit2, MechanicImmuneMask, SchoolImmuneMask, ResistanceHoly, ResistanceFire, ResistanceNature, ResistanceFrost, ResistanceShadow, ResistanceArcane, PetSpellDataId, MovementType, TrainerType, TrainerSpell, TrainerClass, TrainerRace, TrainerTemplateId, VendorTemplateId, EquipmentTemplateId, GossipMenuId, AIName, ScriptName) VALUES
('15899', 'Lunar Festival NE Vendor (PH)', '', NULL, '1', '1', '0', '15870', '0', '0', '0', '35', '35', '1', '0', '7', '3', '3', '0', '0', '32768', '0', '0', '0', '1.2', '1.14286', '1', '0', '-1', '1', '1', '1', '1', '1', '1', '5000', '5000', '0', '0', '2', '2', '1', '1', '7', '24', '0', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '');

-- Made the Alliance NPC use Alliance model
DELETE FROM game_event_creature_data WHERE guid IN (91636, 91626, 91625, 91632, 94919, 94920);
INSERT INTO game_event_creature_data(guid, entry_id, modelid, equipment_id, spell_start, spell_end, event) VALUES
(91636, 0, 0, 0, 26384, 0, 7),
(91626, 0, 0, 0, 26520, 0, 7),
(91625, 0, 0, 0, 26384, 0, 7),
(91632, 0, 0, 0, 26520, 0, 7),
(94920, 0, 0, 0, 26384, 0, 7),
(94919, 0, 0, 0, 26520, 0, 7);


