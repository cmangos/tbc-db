-- =======================================
-- Fix Terrorclaw Respawn Time (Quest NPC)
-- =======================================
UPDATE creature SET SpawnTimeSecs=300 WHERE id IN (20477);