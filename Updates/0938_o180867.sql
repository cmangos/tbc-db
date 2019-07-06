-- Add Lunar Festival "Greater Moonlight Spell Focus 180867" gameobjects to related game event (other nearby GOs were already in)
DELETE FROM game_event_gameobject WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 180867);
INSERT INTO game_event_gameobject (`guid`, `event`) SELECT `guid`, '7'
FROM `gameobject`
WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 180867);

