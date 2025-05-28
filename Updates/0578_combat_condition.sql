-- Change CombatCondition for some NPCs due to core change
UPDATE creature_spell_list SET CombatCondition=721 WHERE CombatCondition=1071 AND Id IN(1796301,1990201,2169501,2191701);