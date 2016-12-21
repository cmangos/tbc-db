-- ================================================================================
-- Fix Respawn Time for Quest 9737 "True Masters of the Light" (Paladin epic mount)
-- ================================================================================
UPDATE creature SET spawntimesecs=15 WHERE id IN (17915);

