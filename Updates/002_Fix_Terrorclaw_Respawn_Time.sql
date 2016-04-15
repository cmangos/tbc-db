-- =======================================
-- Fix Terrorclaw Respawn Time (Quest NPC)
-- =======================================
UPDATE creature SET SpawnTimeSecs=120 WHERE id IN (20477);