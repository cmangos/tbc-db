-- Fix drop rate of items used in quest 5725 (The Power to Destroy...) in Ragefire Chasm
-- They should be around 5% instead of 100%, setting to 10% in tbc
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE item IN (14395, 14396) AND `entry` IN (11322,11324); -- -5 in classic

