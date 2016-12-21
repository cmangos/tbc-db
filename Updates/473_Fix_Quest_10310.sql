-- ================================================================================
-- Fix Terror Imp Faction for Quest: 10310 "Sabotage The Warp Gate"
-- ================================================================================
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (20399);

