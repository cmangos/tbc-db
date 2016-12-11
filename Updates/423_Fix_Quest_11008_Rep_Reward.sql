-- ===============================================
-- Fix Quest 11008 "Fires Over Skettis" Reward Rep
-- ===============================================
UPDATE quest_template SET RewRepFaction1=1031, RewRepValue1=350 WHERE entry IN (11008);

