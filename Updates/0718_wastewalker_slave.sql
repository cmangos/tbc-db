-- Wastewalker Slave - Slave Pens
-- Correct targeting and timers for Forst Nova
UPDATE creature_spell_list SET CombatCondition = -1, TargetId = 103, InitialMin = 4000, InitialMax = 12000, RepeatMin = 14000, RepeatMax = 28000 WHERE Id = 1796301 AND SpellID = 32192;
UPDATE creature_spell_list SET CombatCondition = -1, TargetId = 103, InitialMin = 4000, InitialMax = 12000, RepeatMin = 14000, RepeatMax = 28000 WHERE Id = 1990201 AND SpellID = 15531;
