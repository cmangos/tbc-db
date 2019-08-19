-- Remove unused Karazhan dbscript_string which was moved
-- https://github.com/cmangos/tbc-db/commit/06b7992d0c78932254301f67fbcbc6e771fb0d8f
DELETE FROM `dbscript_string` WHERE `entry` IN (2000000909);

-- Remove unused Karazhan dbscripts_on_creature_movement which was renamed
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (8505501,8508001); -- Renamed to 1640701,1555101

