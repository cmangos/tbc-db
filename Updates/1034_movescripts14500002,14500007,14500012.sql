-- Remove dbscripts_on_creature_movement 14500002,14500007,14500012 should be 1450002,1450007,1450012 as per wotlk-db
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (14500002,14500007,14500012);

