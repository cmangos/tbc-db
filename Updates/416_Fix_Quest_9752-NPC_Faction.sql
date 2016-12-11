-- ============================================================
-- Fix Umbrafen Slavebinder - Quest 9752 "Escape from Umbrafen"
-- ============================================================
UPDATE creature_template SET FactionAlliance=51, FactionHorde=51 WHERE entry IN (18042);


