-- Merge Pyrewood Village - Night Time Scourge Curse 23 into Night Time Game Event 27

-- 23	1	1440	510	0	0	0	Pyrewood Village - Night Time Scourge Curse
-- 27	1	1440	720	0	0	Nights / Night Time
DELETE FROM `game_event` WHERE `entry` = 23;

DELETE FROM `game_event_time` WHERE `entry` = 23;

DELETE FROM `game_event_creature_data` WHERE `event` IN (-23,23);
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(17663, 1896, 0, 0, 7671, 7671, 27),
(17905, 1896, 0, 0, 7671, 7671, 27),
(17908, 1892, 0, 0, 7671, 7671, 27),
(17910, 1893, 0, 0, 7671, 7671, 27),
(17911, 1893, 0, 0, 7671, 7671, 27),
(18220, 1896, 0, 0, 7671, 7671, 27),
(18221, 1896, 0, 0, 7671, 7671, 27),
(18235, 3531, 0, 0, 7671, 7671, 27),
(18236, 1893, 0, 0, 7671, 7671, 27),
(18237, 1893, 0, 0, 7671, 7671, 27),
(18238, 1896, 0, 0, 7671, 7671, 27),
(18239, 1893, 0, 0, 7671, 7671, 27),
(18291, 1893, 0, 0, 7671, 7671, 27),
(18306, 1893, 0, 0, 7671, 7671, 27),
(18307, 3529, 0, 0, 7671, 7671, 27),
(18309, 3533, 0, 0, 7671, 7671, 27),
(18310, 1896, 0, 0, 7671, 7671, 27),
(18350, 1893, 0, 0, 7671, 7671, 27),
(18354, 1896, 0, 0, 7671, 7671, 27),
(18355, 1896, 0, 0, 7671, 7671, 27),
(18400, 1893, 0, 0, 7671, 7671, 27),
(18404, 1892, 0, 0, 7671, 7671, 27),
(18405, 1896, 0, 0, 7671, 7671, 27),
(18407, 1896, 0, 0, 7671, 7671, 27),
(18408, 1892, 0, 0, 7671, 7671, 27),
(18409, 1896, 0, 0, 7671, 7671, 27),
(18411, 1893, 0, 0, 7671, 7671, 27),
(18413, 1893, 0, 0, 7671, 7671, 27),
(18996, 1893, 0, 0, 7671, 7671, 27),
(19002, 1892, 0, 0, 7671, 7671, 27),
(19005, 1892, 0, 0, 7671, 7671, 27),
(19007, 1896, 0, 0, 7671, 7671, 27),
(19008, 1893, 0, 0, 7671, 7671, 27), -- was missing! (added from classicmangos)
(19012, 1893, 0, 0, 7671, 7671, 27),
(19015, 1893, 0, 0, 7671, 7671, 27),
(19019, 1893, 0, 0, 7671, 7671, 27),
(19084, 1892, 0, 0, 7671, 7671, 27),
(19219, 1892, 0, 0, 7671, 7671, 27),
(19220, 1893, 0, 0, 7671, 7671, 27),
(19222, 1892, 0, 0, 7671, 7671, 27),
(19223, 1892, 0, 0, 7671, 7671, 27),
(19224, 1892, 0, 0, 7671, 7671, 27),
(19227, 1892, 0, 0, 7671, 7671, 27),
(19228, 1893, 0, 0, 7671, 7671, 27),
(19229, 1892, 0, 0, 7671, 7671, 27),
(19316, 1892, 0, 0, 7671, 7671, 27),
(19343, 1892, 0, 0, 7671, 7671, 27),
(79666, 0, 0, 100068, 0, 0, 27), -- sw patrols, hate this equipment_id but keeping it same as classicmangos for the time being, we need equipment sets!
(79689, 0, 0, 100068, 0, 0, 27), -- sw patrols, use other equipment_id in wotlk
(79857, 0, 0, 100068, 0, 0, 27), -- sw patrols
(79859, 0, 0, 100068, 0, 0, 27), -- sw patrols
(90438, 0, 0, 101976, 0, 0, 27); -- sw patrols

-- updates
UPDATE `creature_template` SET `EquipmentTemplateId` = 1162 WHERE `entry` = 1162; -- 641, identical!? - i think these wrongly had torches at some point, already removed in wotlkmangos
DELETE FROM `game_event_creature_data` WHERE `equipment_id` = 1162;

-- https://www.wowhead.com/tbc/npc=381/dockmaster-baren
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 381; -- only night equipment_id (vmangos), no default equipment
DELETE FROM `game_event_creature_data` WHERE `guid` = 6177;
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(6177, 0, 0, 381, 0, 0, 27);

