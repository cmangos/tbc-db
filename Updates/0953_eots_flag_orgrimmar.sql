-- Add missing EotS battleground flag in orgrimmar
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(190333, 185106, 1, 1586.36, -4411.13, 7.63737, 0, 0, 0, 180, 180, 255, 1);

REPLACE INTO `game_event_gameobject` (`guid`, `event`) VALUES (190333, 21);

