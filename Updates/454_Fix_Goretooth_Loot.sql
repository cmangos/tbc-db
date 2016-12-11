-- ==================
-- Fix Goretooth Loot
-- ==================
UPDATE creature_loot_template SET groupid=1 WHERE entry IN (17144) AND item IN (31188,31189,31191,31192);


