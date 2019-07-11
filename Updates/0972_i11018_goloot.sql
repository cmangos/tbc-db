-- Un'Goro Dirt Pile 157936 should contain 1 to 4 Un'Goro Soil 11018
-- https://github.com/vmangos/core/commit/12205c5496c5ed7e7ecb038e4f7cf37d253409d3
UPDATE `gameobject_loot_template` SET `maxcount` = 4 WHERE `entry` = 10039 AND `item` = 11018;

