-- Delete some unused poolings that already got reworked into spawn_groups
-- LoadSpawnGroups: spawn_group_spawn guid 5470003 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 5470004 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 5470005 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 5470006 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 5470046 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 5470047 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 5470048 is part of pool or game event (incompatible). Skipping.
-- LoadSpawnGroups: spawn_group_spawn guid 5470049 is part of pool or game event (incompatible). Skipping.
DELETE FROM pool_gameobject WHERE guid IN (5470003, 5470004, 5470005, 5470006, 5470046, 5470047, 5470048, 5470049);
DELETE FROM pool_template WHERE entry = 48657;