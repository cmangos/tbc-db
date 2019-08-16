-- Remove unneeded Pools 25516 and 25517 & Cleanup DB Errors in wotlk by porting
-- Handled by creature_spawn_entry without spawn duplication
DELETE FROM `pool_creature` WHERE `guid` IN (61018,61026,60961,60982);
-- Delete additional spawns
DELETE FROM `creature` WHERE `guid` IN (61018,61026);
-- Set id = 0 as identifier
UPDATE `creature` SET `id` = 0 WHERE `guid` IN (60961,60982);

DELETE FROM `creature_spawn_entry` WHERE `guid` IN (60982,60961);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(60982, 17194), (60982, 17195), -- Wrathscale Myrmidon, Wrathscale Siren
(60961, 17193), (60961, 17195); -- Wrathscale Naga, Wrathscale Siren

DELETE FROM `pool_template` WHERE `entry` IN (25516,25517,25518,25519,25520);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
-- 25516,25517 not needed anymore just align for wotlk-db to resolve db errors due to cross map pooling errors
-- wotlk only might be removed when "Vengeful Draenei" Script is ported or its wotlk only
-- (25517, 5, 'Vengeful Draenei (21636)'),
-- Reinserts
(25518, 10, 'Milly''s Harvest (161557)'),
(25519, 1, 'Flagglemurk the Cruel (7015)'),
(25520, 1, 'Blood Elf Bandit (17591)');

DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (25517,25518,25519,25520);
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

(7015, 25519, 0, 'Flagglemurk the Cruel (7015)'),
(17591, 25520, 0, 'Blood Elf Bandit (17591)');
-- wotlk only
-- (21636, 25517, 0, 'Vengeful Draenei (21636)');

DELETE FROM `pool_gameobject_template` WHERE `pool_entry` IN (25517,25518,25519,25520);
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(161557, 25518, 0, 'Milly''s Harvest (161557)');

