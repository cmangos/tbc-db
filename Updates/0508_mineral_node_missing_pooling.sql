-- Pool unpooled ore nodes (Missed)
-- Most missed here https://github.com/cmangos/tbc-db/commit/934d0fdedf2bc2abe9d54e4e246ed6401a77a4f4#diff-6f6731cca0ee3ca2b48fa4badc27d1059f82a5dd225eb80b07df103f1f1986cfR861
-- SELECT * FROM gameobject where ID IN (150081,2047,103711,3764,1732,2054,176643,150082,324,1733,105569,175404,123848,73940,177388,73941,1667,1610,181109,150080,1734,103713,3763,2055,1731,123309,123310,73939,176645,150079,2040,2653,1735,165658) order by guid;
-- SELECT * FROM pool_gameobject where guid IN (SELECT `guid` FROM `gameobject` WHERE ID IN (150081,2047,103711,3764,1732,2054,176643,150082,324,1733,105569,175404,123848,73940,177388,73941,1667,1610,181109,150080,1734,103713,3763,2055,1731,123309,123310,73939,176645,150079,2040,2653,1735,165658)) order by guid;
-- 18085 lines for both in tbcmangos - spawn_groups respawning in progress!

-- This Ore Type was already reworked (Typo)
-- 140291 -- Thelegen Rock (Incendicite Mineral Vein)

-- https://github.com/cmangos/tbc-db/commit/934d0fdedf2bc2abe9d54e4e246ed6401a77a4f4#diff-6f6731cca0ee3ca2b48fa4badc27d1059f82a5dd225eb80b07df103f1f1986cfR994
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`)
SELECT `guid` as `guid`, 2001 /*Master Mineral Pool - Alterac Mountains (Outer Section)*/, 0, 'Alterac Mountains (Outer Section) - Mineral Node'
FROM `gameobject` WHERE `guid` BETWEEN 1036002 AND 1036012;

-- https://github.com/cmangos/tbc-db/commit/934d0fdedf2bc2abe9d54e4e246ed6401a77a4f4#diff-6f6731cca0ee3ca2b48fa4badc27d1059f82a5dd225eb80b07df103f1f1986cfR1001
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`)
SELECT `guid` as `guid`, 2040 /*Master Mineral Pool - Desolace*/, 0, 'Desolace - Mineral Node'
FROM `gameobject` WHERE `guid` BETWEEN 1040002 AND 1040009;

-- Deadmines
-- 3600110
-- 3600111
-- 3600112
-- 3600113
-- 3600120
-- 3600121
-- 3600122
-- 3600123

-- Until all nodes in Silithus are redone using spawn_groups, readd wrongly deleted nodes to pooling.
-- classic addition while backporting - DIFF 5
-- SELECT * FROM gameobject where ID IN (2047) order by guid;
-- SELECT * FROM pool_gameobject where guid IN (SELECT `guid` FROM `gameobject` WHERE ID IN (2047)) order by guid;

REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- 104789 (Pool 7867), Entry 2040 - [Mithril Deposit X:-6655.000000 Y:972.008972 Z:-3.000000 MapId:1]
-- 104790, Entry 2047 - [Truesilver Deposit X:-6655.000000 Y:972.008972 Z:-3.000000 MapId:1]
-- 104791 (Pool 7867), Entry 1734 - [Gold Vein X:-6655.000000 Y:972.008972 Z:-3.000000 MapId:1]
(104790, 7867, 5, 'Silithus - Truesilver Deposit'),
-- 104793 (Pool 7868), Entry 2040 - [Mithril Deposit X:-6712.000000 Y:727.784973 Z:23.976000 MapId:1]
-- 104794, Entry 2047 - [Truesilver Deposit X:-6712.000000 Y:727.784973 Z:23.976000 MapId:1]
-- 104795 (Pool 7868), Entry 1734 - [Gold Vein X:-6712.000000 Y:727.784973 Z:23.976000 MapId:1]
(104794, 7868, 5, 'Silithus - Truesilver Deposit'),
-- 104797 (Pool 7869), Entry 2040 - [Mithril Deposit X:-6698.000000 Y:771.646973 Z:26.204000 MapId:1]
-- 104798, Entry 2047 - [Truesilver Deposit X:-6698.000000 Y:771.646973 Z:26.204000 MapId:1]
-- 104799 (Pool 7869), Entry 1734 - [Gold Vein X:-6698.000000 Y:771.646973 Z:26.204000 MapId:1]
(104798, 7869, 5, 'Silithus - Truesilver Deposit'),
-- 104809 (Pool 7872), Entry 2040 - [Mithril Deposit X:-6741.000000 Y:837.820007 Z:17.914000 MapId:1]
-- 104810, Entry 2047 - [Truesilver Deposit X:-6741.000000 Y:837.820007 Z:17.914000 MapId:1]
-- 104811 (Pool 7872), Entry 1734 - [Gold Vein X:-6741.000000 Y:837.820007 Z:17.914000 MapId:1]
(104810, 7872, 5, 'Silithus - Truesilver Deposit'),
-- 104813 (Pool 7873), Entry 2040 - [Mithril Deposit X:-6681.000000 Y:984.872009 Z:2.239000 MapId:1]
-- 104814, Entry 2047 - [Truesilver Deposit X:-6681.000000 Y:984.872009 Z:2.239000 MapId:1]
-- 104815 (Pool 7873), Entry 1734 - [Gold Vein X:-6681.000000 Y:984.872009 Z:2.239000 MapId:1]
(104814, 7873, 5, 'Silithus - Truesilver Deposit');

-- classic addition while backporting - DIFF 0
-- SELECT * FROM gameobject where ID IN (150081) order by guid;
-- SELECT * FROM pool_gameobject where guid IN (SELECT `guid` FROM `gameobject` WHERE ID IN (150081)) order by guid;

