-- Fix stats of summoned NPCs in Nefarian encounter phase 2

-- Corrupted Fire Nova Totem V 14662
UPDATE creature_template SET HealthMultiplier=1, MinLevelHealth=2371, MaxLevelHealth=2371, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14662;
-- Corrupted Stoneskin Totem VI 14663
UPDATE creature_template SET HealthMultiplier=0.05, MinLevelHealth=127, MaxLevelHealth=127, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14663;
-- Corrupted Healing Stream Totem V 14664
UPDATE creature_template SET HealthMultiplier=0.05, MinLevelHealth=153, MaxLevelHealth=153, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14664;
-- Corrupted Windfury Totem III 14666
UPDATE creature_template SET HealthMultiplier=1, MinLevelHealth=3052, MaxLevelHealth=3052, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=14666;
-- Corrupted Totem 14667
UPDATE creature_template SET ExtraFlags=128, HealthMultiplier=1, MinLevelHealth=42, MaxLevelHealth=42, MinLevelMana=0, MaxLevelMana=0, ArmorMultiplier=1, DamageMultiplier=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14667;

-- Fix wrong spell for NPC 14662 (Corrupted Fire Nova Totem)
UPDATE creature_template_spells SET spell1=11311 WHERE entry=14662;

