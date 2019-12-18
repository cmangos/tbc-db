-- Fix drop rate of item used in quest 443 (Rot Hide Ichor) in Silverpine Forest
-- They should be around 30% instead of 100%, set to 60 in tbc
UPDATE creature_loot_template SET ChanceOrQuestChance=-60 WHERE item=3236 AND `entry` IN (1939,1940,1942,1943,1944); -- was 80 befor in tbc

