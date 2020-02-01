-- Add same serach_radius as text 2000020133
-- Table `dbscripts_on_creature_movement` has searchRadius = 0 in command 21 for script id 1943503 for buddy 19253, skipping.
UPDATE `dbscripts_on_creature_movement` SET `search_radius` = 5 WHERE `id` = 1943503 AND `command` = 21;

-- Remove unused script
-- Table `dbscripts_on_creature_movement` contain unused script, id 1375.
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1375;

