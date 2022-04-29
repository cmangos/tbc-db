-- Restore c.guid 11210 from classic-db BACKUP
-- wrongly removed here: https://github.com/cmangos/tbc-db/commit/9d41be21f744bc4953bf3e91a4691bd76c0cda98#r72530167
REPLACE INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(11210, 2621, 0, -975.482, -3561.2, 70.6806, 6.24828, 400, 400, 0, 0);
REPLACE INTO `creature_addon` (`guid`, `b2_0_sheath`, `b2_1_flags`, `emote`) VALUES (11210, 1, 16, 173);

