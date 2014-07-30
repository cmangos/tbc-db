-- Moved Pyrewood Village event from game_event_creature to game_event_creature_data
-- to reduce data redundancy

-- Removed 'Pyrewood Village - Day' event: human NPC will be spawned by default
-- Moved 'Pyrewood Village - Curse of the Worgen' event id to decrease core memory usage
-- 23	2011-01-01 21:00:00	2020-12-31 00:00:00	1440	510	0	0	0	Pyrewood Village - Night Time Scourge Curse
-- DELETE FROM `game_event` WHERE `entry` = 3;
-- INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `linkedTo`, `description`) VALUES
-- (3, '2006-02-08 21:00:00', '2020-12-31 04:59:59', 1440, 480, 0, 0, 'Pyrewood Village - Worgen Curse');

-- Removed all addon of Moonrage worgens
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (
1892, -- Moonrage Watcher
1893, -- Moonrage Sentry
1896, -- Moonrage Elder
3528, -- Pyrewood Armorer
3529, -- Moonrage Armorer
3530, -- Pyrewood Tailor
3531, -- Moonrage Tailor
3532, -- Pyrewood Leatherworker
3533 -- Moonrage Leatherworker
));

-- Remove all "movement" & "spawns"
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1892, 1893, 1896, 3529, 3531, 3533));
DELETE FROM `creature` WHERE `id` IN (1892, 1893, 1896, 3529, 3531, 3533);

-- Cleaned all forced models ID
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (1891, 1894, 1895, 3528, 3530, 3532);

-- Made all Pyrewood Watcher, Sentry, Elder, Armorer, Tailor and Leatherworker
-- transform into their worgen equivalent at nightfall 
DELETE FROM `game_event_creature_data` WHERE `event` = 23;
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- Pyrewood Watcher -> Moonrage Watcher 1892
(17908, 1892, 0, 0, 7671, 7671, 23),
(18404, 1892, 0, 0, 7671, 7671, 23),
(18408, 1892, 0, 0, 7671, 7671, 23),
(19002, 1892, 0, 0, 7671, 7671, 23),
(19005, 1892, 0, 0, 7671, 7671, 23),
(19084, 1892, 0, 0, 7671, 7671, 23),
(19219, 1892, 0, 0, 7671, 7671, 23),
(19222, 1892, 0, 0, 7671, 7671, 23),
(19223, 1892, 0, 0, 7671, 7671, 23),
(19224, 1892, 0, 0, 7671, 7671, 23),
(19227, 1892, 0, 0, 7671, 7671, 23),
(19229, 1892, 0, 0, 7671, 7671, 23),
(19316, 1892, 0, 0, 7671, 7671, 23),
(19343, 1892, 0, 0, 7671, 7671, 23),
-- Pyrewood Sentry -> Moonrage Sentry 1893
(17910, 1893, 0, 0, 7671, 7671, 23),
(17911, 1893, 0, 0, 7671, 7671, 23),
(18236, 1893, 0, 0, 7671, 7671, 23),
(18237, 1893, 0, 0, 7671, 7671, 23),
(18239, 1893, 0, 0, 7671, 7671, 23),
(18291, 1893, 0, 0, 7671, 7671, 23),
(18306, 1893, 0, 0, 7671, 7671, 23),
(18350, 1893, 0, 0, 7671, 7671, 23),
(18400, 1893, 0, 0, 7671, 7671, 23),
(18411, 1893, 0, 0, 7671, 7671, 23),
(18413, 1893, 0, 0, 7671, 7671, 23),
(18996, 1893, 0, 0, 7671, 7671, 23),
(19012, 1893, 0, 0, 7671, 7671, 23),
(19015, 1893, 0, 0, 7671, 7671, 23),
(19019, 1893, 0, 0, 7671, 7671, 23),
(19220, 1893, 0, 0, 7671, 7671, 23),
(19228, 1893, 0, 0, 7671, 7671, 23),
-- Pyrewood Elder -> Moonrage Elder 1896
(17663, 1896, 0, 0, 7671, 7671, 23),
(17905, 1896, 0, 0, 7671, 7671, 23),
(18220, 1896, 0, 0, 7671, 7671, 23),
(18221, 1896, 0, 0, 7671, 7671, 23),
(18238, 1896, 0, 0, 7671, 7671, 23),
(18310, 1896, 0, 0, 7671, 7671, 23),
(18354, 1896, 0, 0, 7671, 7671, 23),
(18355, 1896, 0, 0, 7671, 7671, 23),
(18405, 1896, 0, 0, 7671, 7671, 23),
(18407, 1896, 0, 0, 7671, 7671, 23),
(18409, 1896, 0, 0, 7671, 7671, 23),
(19007, 1896, 0, 0, 7671, 7671, 23),
-- Pyrewood Armorer, Tailor & Leatherworker -> Moonrage Armorer 3529, Moonrage Tailor 3531, Moonrage Leatherworker 3533
(18307, 3529, 0, 0, 7671, 7671, 23),
(18235, 3531, 0, 0, 7671, 7671, 23),
(18309, 3533, 0, 0, 7671, 7671, 23);

