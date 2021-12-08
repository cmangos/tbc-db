-- Cleanup Desolace Mineral Nodes (Some belong in Mulgore / Stonetalon Mountains)
-- Was on my QA List for Mulgore Leveling
-- ToDo: Built Maraudon Mineral Nodes Pool

-- Non Copper Vein Nodes in Mulgore
DELETE FROM `pool_gameobject` WHERE `guid` IN (102016,102017,102018,102019,102020,102022,102023,102024,102025,102026,102028,102029,102030,102031,102032,102052,102053,102054,102055,102056,102058,102059,102060,102061,102062,102070,102071,102072,102073,102074,102082,102083,102084,102085,102086);
DELETE FROM `gameobject` WHERE `guid` IN (102016,102017,102018,102019,102020,102022,102023,102024,102025,102026,102028,102029,102030,102031,102032,102052,102053,102054,102055,102056,102058,102059,102060,102061,102062,102070,102071,102072,102073,102074,102082,102083,102084,102085,102086);
DELETE FROM `pool_pool` WHERE `pool_id` IN (7393,7394,7395,7399,7400,7402,7404);

-- Move Copper Vein Nodes to - Master Mineral Pool - Mulgore 2047
UPDATE `pool_gameobject` SET `pool_entry` = 2047, `chance` = 0, `description` = 'Mulgore - Copper Vein (1731)' WHERE `guid` IN (102015,102021,102027,102051,102057,102069,102081);

-- Move Stonetalon Mountains Nodes to Stonetalon Mountains Master Mineral Pool - Stonetalon Mountians 2050
UPDATE `pool_template` SET `description` = 'Stonetalon Mountains - Mineral Spawn Point' WHERE `entry` IN (7413,7415,7429,7431,7474);
UPDATE `pool_pool` SET `mother_pool` = 2050, `description` = 'Stonetalon Mountains - Mineral Spawn Point' WHERE `pool_id` IN (7413,7415,7429,7431,7474);

-- 2040	52	Master Mineral Pool - Desolace - 206 -> 194 (-7 -5)
UPDATE `pool_template` SET `max_limit` = 49 WHERE `entry` = 2040;

-- 2047	33	Master Mineral Pool - Mulgore - 65 -> 72 (only copper so /2) (+7)
UPDATE `pool_template` SET `max_limit` = 36 WHERE `entry` = 2047;

-- 2050	28	Master Mineral Pool - Stonetalon Mountians - 112 -> 117 (+5)
UPDATE `pool_template` SET `max_limit` = 29 WHERE `entry` = 2050;

