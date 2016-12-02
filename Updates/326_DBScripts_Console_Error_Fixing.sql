-- ========================================================
-- Fix and Improve DBScripts and Fix Various Console Errors
-- ========================================================
-- ==========================
-- Fix Erk (Outdated Scripts)
-- ==========================
-- Use Generic Run On Script
UPDATE creature_movement_template SET script_id=5 WHERE point=1 and entry IN (14857);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1485701);

-- Use Generic Run Off Script
UPDATE creature_movement_template SET script_id=6 WHERE point=2 and entry IN (14857);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1485702);

-- No Buddy Required For Self Scripts
UPDATE dbscripts_on_creature_movement SET buddy_entry=0, search_radius=0, data_flags=0 WHERE id IN (1485703);
UPDATE dbscripts_on_creature_movement SET buddy_entry=0, search_radius=0, data_flags=0 WHERE id IN (1485704);
UPDATE dbscripts_on_creature_movement SET buddy_entry=0, search_radius=0, data_flags=0 WHERE id IN (1485705);
UPDATE dbscripts_on_creature_movement SET buddy_entry=0, search_radius=0, data_flags=0 WHERE id IN (1485706);

-- ===========================
-- Fix Okla (Outdated Scripts)
-- ===========================
-- No Buddy Required For Self Scripts
UPDATE dbscripts_on_creature_movement SET buddy_entry=0, search_radius=0, data_flags=0 WHERE id IN (1487301);
UPDATE dbscripts_on_creature_movement SET buddy_entry=0, search_radius=0, data_flags=0 WHERE id IN (1487304);

-- Use Generic Run Off Script
UPDATE creature_movement_template SET script_id=6 WHERE point IN (8,43) and entry IN (14873);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1487302);

-- Use Generic Run On Script
UPDATE creature_movement_template SET script_id=5 WHERE point=40 and entry IN (14873);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1487303);

-- =======================================
-- Fix Tormented Spirit (Outdated Scripts)
-- =======================================
-- No Buddy Required For Self Scripts
UPDATE dbscripts_on_creature_movement SET buddy_entry=0, search_radius=0, data_flags=0 WHERE id IN (153301);

-- ===================================================
-- Improve Consortium Nether Runner (Outdated Scripts)
-- ===================================================
-- No Buddy Required For Self Scripts
UPDATE dbscripts_on_creature_movement SET search_radius=25 WHERE buddy_entry IN (18265) AND id IN (1966702);
























