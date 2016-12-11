-- ===============================================================================
-- Shorten Respawn Time For Quest Object 181133 for Quest 9152 "Tomber's Supplies" - Single Item Spawned Causing Bottleneck For Players
-- ===============================================================================
UPDATE gameobject SET SpawnTimeSecs=180 WHERE id IN (181133);

