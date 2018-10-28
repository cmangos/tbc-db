-- Hallow's End Treats for Jesper! q.8311

-- Spoops 15309
DELETE FROM `creature` WHERE `guid` = 88292;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(88292, 15309, 1, 1, 0, 0, 2060.53, -4682.64, 25.5492, 1.41372, 180, 180, 0, 0, 0, 0);

DELETE FROM `game_event_creature` WHERE `guid` = 88292;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (88292, 12);

-- Hallow's End Treats for Spoops! q.8312

-- Alliance q.8356 Flexing for Nougat missing from Innkeeper Allison 6740
DELETE FROM `creature_questrelation` WHERE `quest` = 8356;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(6740, 8356);

