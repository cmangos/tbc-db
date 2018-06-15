-- sync flags with wotlk-db, add sound 10030 & adjust texts

-- Delete Static Spawn
DELETE FROM `creature` WHERE `id` = 21134;

-- Eye of the Citadel 21134
UPDATE `creature_template` SET `UnitFlags` = 33587968 WHERE `entry` = 21134;

DELETE FROM `dbscript_string` WHERE `entry` IN (2000006080,2000006081,2000006082);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000006080, 'A deep, bone chilling voice echoes from the %s...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10030, 2, 0, 0, 'Eye of the Citadel 21134'),
(2000006081, 'How dare you trifle with my playthings, $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Eye of the Citadel 21134'), -- needs targeting for player
(2000006082, 'The orcs in my citadel will drink your blood and devour you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Eye of the Citadel 21134');


