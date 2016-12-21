-- ==========================================
-- Fix Quest: 10855 "Fel Reavers, No Thanks!"
-- ==========================================
UPDATE quest_template SET SpecialFlags=0 WHERE entry IN (10855);

