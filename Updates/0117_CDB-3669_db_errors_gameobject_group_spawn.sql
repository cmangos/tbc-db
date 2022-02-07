-- Fix pools for Gloom Weed after Tirisfal Glades update
-- DELETE FROM pool_template WHERE entry IN (8493, 8498, 8502, 8506);
-- DELETE FROM pool_gameobject WHERE pool_entry IN (8493, 8498, 8502, 8506);
-- 1846	80	Tirisfal Glades - Gloom Weed (175566)
-- 175566	1846	0	Tirisfal Glades - Gloom Weed (175566)

-- Fix pool for Musty Tome in Darrowshire after moving to spawn group
DELETE FROM pool_template WHERE entry=16476; -- 16476	1	Western Plaguelands - Musty Tome (176150) -> Should've thrown an dberror due to being empty in all referenced pool_templates
DELETE FROM pool_gameobject_template WHERE pool_entry=16476;

