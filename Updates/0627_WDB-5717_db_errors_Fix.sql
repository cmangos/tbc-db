-- Fixing: db errors

-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1818002, command 29 has buddy 18200 not found in range 15 of searcher Creature (Entry: 18180 Counter: 64963) DBGuid: 64963 (data-flags 0), skipping.
UPDATE dbscripts_on_creature_movement SET search_radius = 50 WHERE id = 1818002 AND buddy_entry = 18200; -- 15
