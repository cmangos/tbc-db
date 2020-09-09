-- Remove Duplicate Fel Iron Chests 181798
DELETE FROM `gameobject` WHERE `guid` = 30390; -- Duplicate 190570 (Pool 39944), Entry 181798 - [Fel Iron Chest X:-191.160004 Y:2808.290039 Z:23.639601 MapId:530]
DELETE FROM `pool_gameobject` WHERE `guid` = 30390;

DELETE FROM `gameobject` WHERE `guid` = 56068; -- Duplicate 190572 (Pool 39944), Entry 181798 - [Fel Iron Chest X:-140.845001 Y:3116.129883 Z:5.568480 MapId:530]
DELETE FROM `pool_gameobject` WHERE `guid` = 56068;

DELETE FROM `gameobject` WHERE `guid` = 56077; -- Duplicate 190558 (Pool 39944), Entry 181798 - [Fel Iron Chest X:-1146.040039 Y:2061.360107 Z:68.764503 MapId:530]
DELETE FROM `pool_gameobject` WHERE `guid` = 56077;

UPDATE `pool_template` SET `max_limit` = 10 WHERE `entry` = 39944; -- Hellfire Peninsula (TBC - 58-63) - Master Chest Pool

DELETE FROM `gameobject` WHERE `guid` = 28414; -- Duplicate 190553 (Pool 39946), Entry 181798 - [Fel Iron Chest X:-2023.939941 Y:4255.930176 Z:4.455290 MapId:530]
DELETE FROM `pool_gameobject` WHERE `guid` = 28414;

DELETE FROM `gameobject` WHERE `guid` = 56072; -- Duplicate 190552 (Pool 39946), Entry 181798 - [Fel Iron Chest X:-2084.550049 Y:4172.700195 Z:7.035590 MapId:530]
DELETE FROM `pool_gameobject` WHERE `guid` = 56072;

UPDATE `pool_template` SET `max_limit` = 11 WHERE `entry` = 39946; -- Terokkar Forest (TBC - 62-65) - Master Chest Pool

