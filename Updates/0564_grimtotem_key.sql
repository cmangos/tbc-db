-- Grimtotem Key - 33061
-- https://www.wowhead.com/tbc/item=33061/grimtotem-key
-- Update drop chance based on wowhead
-- Drop Chance before
-- Entry 23592 Grimtotem Breaker - chance: 18,474 
-- Entry 23593 Grimtotem Spirit-Shifter - chance: 17,918
-- Entry 23714 Grimtotem Elder - chance:17,486
UPDATE creature_loot_template SET ChanceOrQuestChance = '31' WHERE entry = 23592 AND item = 33061; -- Grimtotem breaker
UPDATE creature_loot_template SET ChanceOrQuestChance = '36' WHERE entry = 23592 AND item = 33061; -- Grimtotem Spirit-Shifter 
UPDATE creature_loot_template SET ChanceOrQuestChance = '15' WHERE entry = 23592 AND item = 33061; -- Grimtotem Elder
