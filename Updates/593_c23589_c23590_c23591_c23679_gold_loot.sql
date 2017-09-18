-- Fix incorrect 0 gold drops for 4 npcs
UPDATE creature_template SET MinLootGold=100, MaxLootGold=225 WHERE entry IN(23589,23590,23591); -- Defias Rummager, Defias Conjuror, Defias Diver (source wotlk-db)
UPDATE creature_template SET MinLootGold=100, MaxLootGold=225 WHERE entry IN(23679); -- Garn Mathers (guesswork)
