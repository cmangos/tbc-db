-- Remove unused Zul'Farrak dbscript_string which was aligned with classic/wotlk-db
-- https://github.com/cmangos/tbc-db/commit/e4719cf53e44ec57fb0dde1f71872b77a5e222c7
DELETE FROM `dbscript_string` WHERE `entry` IN (2000005564,2000005565,2000005566,2000005567);

