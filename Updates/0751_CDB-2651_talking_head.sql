-- Fix drop rate of item 3317 (A Talking Head) in Silverpine Forest
-- It should be around 3% instead of 100%, set to 6 in tbc
UPDATE creature_loot_template SET ChanceOrQuestChance=6 WHERE item=3317 AND `entry` IN (1939,1940,1942,1943,1944);

