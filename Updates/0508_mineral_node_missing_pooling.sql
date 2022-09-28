-- Pool unpooled ore nodes (Missed)
-- Most missed here https://github.com/cmangos/tbc-db/commit/934d0fdedf2bc2abe9d54e4e246ed6401a77a4f4#diff-6f6731cca0ee3ca2b48fa4badc27d1059f82a5dd225eb80b07df103f1f1986cfR861
-- SELECT * FROM gameobject where ID IN (103711,3764,1732,2054,176643,150082,324,1733,105569,175404,123848,73940,177388,73941,1667,1610,181109,150080,1734,103713,3763,2055,1731,123309,123310,73939,176645,150079,2040,2653,1735,165658) order by guid;
-- SELECT * FROM pool_gameobject where guid IN (SELECT `guid` FROM `gameobject` WHERE ID IN (103711,3764,1732,2054,176643,150082,324,1733,105569,175404,123848,73940,177388,73941,1667,1610,181109,150080,1734,103713,3763,2055,1731,123309,123310,73939,176645,150079,2040,2653,1735,165658)) order by guid;
-- 19341 lines for both in tbcmangos

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

