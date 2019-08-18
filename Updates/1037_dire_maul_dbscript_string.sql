-- Remove unused dbscript_string used for Pusilin 4,5 in Dire Maul
DELETE FROM `dbscript_string` WHERE `entry` IN (2000005562, 2000005563); -- 2000005463,2000005464 in classic/wotlk-db free in tbc-db

