-- ==========================================================
-- Remove Troll-Hide Bag Drops From NPC Not Level 40-52 Range
-- ==========================================================
DELETE FROM creature_loot_template WHERE item=1685 AND entry IN (2852,2850,7011,9445,10981,4853,7321,7320,7030,7397,4860,7396);

