-- Improve q.10166 Whitebark's Memory

-- Whitebark's Spirit 19456 doesnt regenreate health ooc
-- https://tbcdb.com/?quest=10166
-- https://youtu.be/gIfltL1Z97M?t=46 - https://youtu.be/cH973bsf910?t=30
UPDATE `creature_template` SET `RegenerateStats` = 12 WHERE `entry` = 19456;

-- Whitebark's Spirit 19456 should attack spawner on spawn
DELETE FROM `dbscripts_on_event` WHERE `id` = 12530;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(12530, 0, 0, 31, 19456, 100, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate Event if Whitebark''s Spirit 19456 is already spawned'),
(12530, 0, 1, 10, 19456, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 8206.16, -6348.242, 64.59447, 1.197767, 0, 'Summon Whitebark''s Spirit - (Quest 10166)'), -- seems to differ from summoner location
(12530, 1000, 0, 26, 0, 0, 0, 19456, 40, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Whitebark''s Spirit - Attack Spawner');

