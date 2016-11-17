-- =====================================================
-- Fix Plans: Ragesteel Shoulders To Drop More Blizzlike - (Current Rates are wowhead and these only drop for Blacksmith Players)
-- =====================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE item=33174 AND entry IN (21050,21061);
UPDATE creature_loot_template SET ChanceOrQuestChance=0.5 WHERE item=33174 AND entry IN (21059,21060);

-- ================================================
-- Fix Plans: Ragesteel Helm To Drop More Blizzlike - (Current Rates are wowhead and these only drop for Blacksmith Players)
-- ================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=4 WHERE item=23612 AND entry IN (16952);
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE item=23612 AND entry IN (21060,21061);

-- =======================================================
-- Fix Plans: Ragesteel Breastplate To Drop More Blizzlike - (Current Rates are wowhead and these only drop for Blacksmith Players)
-- =======================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=4 WHERE item=23613 AND entry IN (21454);
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE item=23613 AND entry IN (23324,23305);





