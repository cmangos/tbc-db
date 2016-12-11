-- ================================
-- Improve Wyvern Cage Key Droprate - Was Far Too Low (3-5%)
-- ================================
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE entry IN (19996,19997) and item=31755;
UPDATE creature_loot_template SET ChanceOrQuestChance=-15 WHERE entry IN (20756) and item=31755;

