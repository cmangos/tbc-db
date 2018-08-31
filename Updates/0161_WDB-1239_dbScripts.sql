-- fixed: Table `dbscripts_on_creature_movement` has invalid data_flags 11 in command 15 for script id 2125301, skipping.
-- Tainted Water Elemental - Force Hydross to cast Purify Elemental
UPDATE dbscripts_on_creature_movement SET datalong2 = 1, data_flags = 2 WHERE id = 2125301 AND delay = 1;
