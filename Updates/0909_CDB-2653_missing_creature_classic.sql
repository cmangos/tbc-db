-- Add missing classic creatures.
INSERT INTO creature_template (Entry, ModelId1, ModelId2, ModelId3, ModelId4, Name, SubName, UnitClass, Rank, Family, CreatureType, CreatureTypeFlags, PetSpellDataId, HealthMultiplier, PowerMultiplier, MinLevel, MaxLevel, Faction, ArmorMultiplier) VALUES
(16509, 8469, 0, 0, 0, 'Argent Warhorse', NULL, 1, 0, 0, 1, 0, 0, 1, 1, 60, 60, 35, -1),
(16510, 14584, 0, 0, 0, 'Argent Charger', NULL, 1, 0, 0, 1, 0, 0, 1, 1, 63, 63, 814, -1);

-- Apply default stats for dummy/trigger/placeholder NPCs that were recently added in database from sniffs
-- Health
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.MinLevelHealth=cs.BaseHealthExp0*ct.HealthMultiplier, ct.MinLevelMana=cs.BaseMana*ct.PowerMultiplier WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MinLevel and ct.ArmorMultiplier<0;
-- Mana
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.MaxLevelHealth=cs.BaseHealthExp0*ct.HealthMultiplier, ct.MaxLevelMana=cs.BaseMana*ct.PowerMultiplier WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier<0;
-- Armor
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.Armor=cs.BaseArmor WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier<0;
-- Attack Power, Swing Timer
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.MeleeAttackPower=cs.BaseMeleeAttackPower, ct.RangedAttackPower=cs.BaseRangedAttackPower, ct.MeleeBaseAttackTime=2000, ct.RangedBaseAttackTime=2000 WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier<0;
-- Min/Max Damage
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET
    ct.MinMeleeDmg=ROUND((cs.BaseDamageExp0 + ct.MeleeAttackPower/14.0) * 2.0),
    ct.MaxMeleeDmg=ROUND((cs.BaseDamageExp0 * 1.5 + ct.MeleeAttackPower/14.0) * 2.0),
    ct.MinRangedDmg=0, ct.MaxRangedDmg=0
    WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier<0;
-- Multiplier flag
UPDATE creature_template SET ArmorMultiplier=1 WHERE ArmorMultiplier=-1;

