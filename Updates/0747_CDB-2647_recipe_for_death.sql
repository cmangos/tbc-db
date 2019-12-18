-- Fix drop rate of items used in quest 451 (A Recipe For Death) in Silverpine Forest
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE item=3258; -- Hardened Tumor up from 5 in classic (100)
UPDATE creature_loot_template SET ChanceOrQuestChance=-70 WHERE item=3256; -- Lake Skulker Moss up from 60 in classic (80)
UPDATE creature_loot_template SET ChanceOrQuestChance=-70 WHERE item=3257; -- Lake Creeper Moss up from 60 in classic (80)

