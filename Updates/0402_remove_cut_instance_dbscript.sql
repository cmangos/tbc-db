-- Table `dbscripts_on_creature_movement` contain unused script, id 1450012.
-- Remove unused dbscript id for J''eevee 14500 in Dire Maul
-- https://github.com/cmangos/tbc-db/commit/8c555c7db4e6be45cd162e98fb2b3d35ee0baa25#diff-2e4ac8811c3b504aeb0b8d60a44453deb10a0ab4d579a6d01d67301786e012fbL771
-- This is one of the reasons why we should not store dbscripts in instance files, only spawns as they are not dynamically deleted in install script
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1450012;

