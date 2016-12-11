-- ==================================================================
-- Tweak Prison Key Drop Rates for Quest 9948 "Finding the Survivors"
-- ==================================================================
UPDATE creature_loot_template SET ChanceOrQuestChance=-25 WHERE item=25604 AND entry=18037;
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE item=25604 AND entry IN (18065,18423);







