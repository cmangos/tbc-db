-- LoadSpawnGroups: spawn_group_spawn guid 11000 is part of pool or game event (incompatible). Skipping.
DELETE FROM `game_event_creature` WHERE `guid` = 11000; -- Event 12
-- LoadSpawnGroups: spawn_group_spawn guid 11005 is part of pool or game event (incompatible). Skipping.
DELETE FROM `game_event_creature` WHERE `guid` = 11005; -- Event 12
-- LoadSpawnGroups: spawn_group_spawn guid 11006 is part of pool or game event (incompatible). Skipping.
DELETE FROM `game_event_creature` WHERE `guid` = 11006; -- Event 12
-- LoadSpawnGroups: spawn_group_spawn guid 5303494 is part of pool or game event (incompatible). Skipping. - 16249
-- LoadSpawnGroups: spawn_group_spawn guid 5303495 is part of pool or game event (incompatible). Skipping. - 16249
DELETE FROM `pool_creature_template` WHERE `Id` = 16249; -- Masophet the Black (16249
DELETE FROM pool_creature where guid NOT IN (SELECT guid FROM creature); -- 0
DELETE FROM game_event_creature where guid NOT IN (SELECT guid FROM creature); -- 239, befor these start making trouble!

