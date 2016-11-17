-- ========================
-- Remove Non-Existant Loot - Weird Loot Drop
-- ========================
DELETE FROM creature_loot_template WHERE entry IN (255);
UPDATE creature_template SET LootId=0 WHERE LootId IN (255);

