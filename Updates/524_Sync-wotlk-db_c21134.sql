-- sync with wotlk-db, remove dublicate 2000006080,2000006081,2000006082, add sound 10030 & adjust texts

-- Delete Static Spawn
DELETE FROM `creature` WHERE `id` = 21134;

-- Eye of the Citadel 21134
UPDATE `creature_template` SET `UnitFlags` = 256 WHERE `entry` = 21134;

DELETE FROM `dbscript_string` WHERE `entry` IN (2000005440,2000005441,2000005442,2000006080,2000006081,2000006082);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000005440, 'A deep, bone chilling voice echoes from the %s...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10030, 2, 0, 0, 'Eye of the Citadel 21134'),
(2000005441, 'How dare you trifle with my playthings, $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Eye of the Citadel 21134'),
(2000005442, 'The orcs in my citadel will drink your blood and devour you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Eye of the Citadel 21134');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 2113401;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2113401, 3, 0, 0, 0, 0, 0, 0, 0, 2000005440, 0, 0, 0, 0, 0, 0, 0, 'Eye of the Citadel 21134 - Emote'),
(2113401, 6, 0, 0, 0, 0, 0, 0, 0, 2000005441, 0, 0, 0, 0, 0, 0, 0, 'Eye of the Citadel 21134 - Say'), -- needs targeting for player
(2113401, 10, 0, 0, 0, 0, 0, 0, 0, 2000005442, 0, 0, 0, 0, 0, 0, 0, 'Eye of the Citadel 21134 - Say');

