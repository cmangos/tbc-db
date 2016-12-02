-- =====================================
-- Fix Quest 5621 "Garments of the Moon"
-- =====================================
-- Sentinel Shaya
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN (12429);


-- ======================================
-- Fix Quest 5624 "Garments of the Light"
-- ======================================
-- Guard Roberts
UPDATE creature_template SET FactionAlliance=11, FactionHorde=11, RegenerateStats=0 WHERE entry IN (12423);


-- ======================================
-- Fix Quest 5625 "Garments of the Light"
-- ======================================
-- Mountaineer Dolf
UPDATE creature_template SET FactionAlliance=57, FactionHorde=57, RegenerateStats=0 WHERE entry IN (12427);


-- =========================================
-- Fix Quest 5648 "Garments of Spirituality"
-- =========================================
-- Grunt Kor'ja
UPDATE creature_template SET FactionAlliance=85, FactionHorde=85, RegenerateStats=0 WHERE entry IN (12430);


-- =====================================
-- Fix Quest 5650 "Garments of Darkness"
-- =====================================
-- Deathguard Kel
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN (12428);







