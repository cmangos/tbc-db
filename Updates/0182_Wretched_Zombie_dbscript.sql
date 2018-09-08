-- Correct delay-order for Wretched Ghoul Script (First Change Faction, then Attack)
UPDATE dbscripts_on_creature_movement SET delay = 0 WHERE id = 150101 AND command = 22;
UPDATE dbscripts_on_creature_movement SET delay = 1 WHERE id = 150101 AND command = 26;
