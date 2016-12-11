-- ================================
-- Fix Scarlet High Clerist Faction
-- =================================
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (1839);

-- ================================
-- Fix Attumen the Huntsman Faction
-- ================================
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (16152);

-- =========================
-- Fix Crypt Scarabs Faction
-- =========================
UPDATE creature_template SET FactionAlliance=1720, FactionHorde=1720 WHERE entry IN (17967);

-- =======================================================
-- Fix Cauldron Lord Razarch Speed (Looks Like Weird Data)
-- =======================================================
UPDATE creature_template SET SpeedWalk=1, SpeedRun=1.89 WHERE entry IN (11076);

-- ========================================
-- Fix Somnus Speed (Looks Like Weird Data)
-- ========================================
UPDATE creature_template SET SpeedWalk=1.05, SpeedRun=1.14286 WHERE entry IN (12900);

-- =====================================================
-- Fix Shadowprey Guardian Speed (Looks Like Weird Data)
-- =====================================================
UPDATE creature_template SET SpeedWalk=1, SpeedRun=1.14286 WHERE entry IN (12338);

-- ===================
-- Fix Tirion Fordring - Now in Correct Position
-- ===================
UPDATE creature SET position_x = '2673.567871', position_y = '-2480.499023', position_z = '72.865158', orientation = '1.830168' WHERE guid = '53837';

-- ======================
-- Fix Naias Despawn Time - Typo Should Be 5 Mins not 50 Mins
-- ======================
UPDATE dbscripts_on_event SET datalong2=300000 WHERE id IN (10554);

-- ============================================
-- Remove Loot and Experience From Rotting Worm
-- ============================================
UPDATE creature_template SET LootId=0, ExtraFlags=64 WHERE entry IN (10925);




