-- Add missing texts to Sergeant Houser 5662
-- https://wowpedia.fandom.com/wiki/Sergeant_Houser
-- classicmangos is missing the last iteration of this script like it is in tbc/wotlk branch
-- Based on https://github.com/vmangos/core/commit/f6aabbc9d9665ef4e327fa10b95862ae92b45d5c
UPDATE `dbscripts_on_creature_movement` SET `datalong` = 566201, `dataint` = 0, `dataint2` = 0, `dataint3` = 0, `dataint4` = 0, `comments` = 'Sergeant Houser - Random RP Texts' WHERE `id` = 566201 AND `delay` = 1000 and `command` = 0;

DELETE FROM `dbscript_random_templates` WHERE `id` = 566201;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(566201, 0, 1964, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1965, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1966, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1967, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1968, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1969, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1970, 0, 'Sergeant Houser - Random RP Texts'),
(566201, 0, 1971, 0, 'Sergeant Houser - Random RP Texts');

