-- Make dbscripts_on_creature_movement.id = 2 truly GENERIC
-- Befor the Npc would return to their spawnposition and start to wander_distance there
-- 19162, 13 last point, aligns with this change (-1674.3, 5287.94, -50.6398)	-> (-1668.49, 5284.1, -49.4239)
-- 19155, 24 last point, aligns with this change (-1937.06, 5173.81, -40.2092)	-> (-1939.99, 5179.95, -40.2092)
-- 20195, 16 last point, aligns with this change (430.253, 2896.79, 52.6058)	-> (430.754, 2896.12, 52.6334)
UPDATE `dbscripts_on_creature_movement` SET `data_flags` = `data_flags`|8, `comments` = 'GENERIC - Set Random Movement, wander_distance 5 at Current Waypoint' WHERE `id` = 2;

