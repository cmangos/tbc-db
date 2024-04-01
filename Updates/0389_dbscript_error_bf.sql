-- Remove unused dbscript on movement from Blood Furnance Dungeon
-- We now have guid based AI and should use this for static npcs instead of adding them multiple waypoints
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1737101;