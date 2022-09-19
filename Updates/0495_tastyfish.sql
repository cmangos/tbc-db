-- Add Game Event Condition to spawn_group
UPDATE `spawn_group` SET `WorldState` = 6035 WHERE `Id` IN (
9001, -- Fishing - Stranglethorn Vale (Wild Shore & The Crystal Shore & Ruins of Aboraz) - School of Tastyfish (180248)
9002, -- Fishing - Stranglethorn Vale (Southern Savage Coast) - School of Tastyfish (180248)
9003, -- Fishing - Stranglethorn Vale (Bloodsail Compound) - School of Tastyfish (180248)
9004 -- Fishing - Stranglethorn Vale (The Savage Coast & Grom'gol Base Camp & Zuuldaia Ruins & Yojamba Isle) - School of Tastyfish (180248)
);

DELETE FROM `conditions` WHERE `condition_entry` = 6035;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(6035, 12, 35, 0, 0, 0, 0, 'Event ID 35 (Stranglethorn Fishing Extravaganza) Active'); -- 35	1	10080	120	301	0	0	Stranglethorn Fishing Extravaganza

DELETE FROM game_event_gameobject where guid BETWEEN 1080017 AND 1080070; -- spawn_group does not work with game_event tables.

