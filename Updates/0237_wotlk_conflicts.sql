-- https://github.com/cmangos/tbc-db/commit/818ae983212955991450babdeeb04026e96b8469#r73500518
UPDATE `gameobject` SET `guid` = 50 WHERE `guid` = 6000016; -- move to non instance range
UPDATE `dbscripts_on_quest_end` SET `datalong` = 50 WHERE `id` = 2521 AND `delay` = 139000 AND `datalong` = 6000016; -- To Serve Kum'isha: Respawn GameObject Nether Rift

-- https://github.com/cmangos/tbc-db/commit/06a038eafca51bd67329e8f0bd86e59daa370c7b#r73535412 - there is more diff here (1683101 to 1683117)
UPDATE `creature_movement` SET `ScriptId` = 1683107 WHERE `id` = 57889 AND `point` = 1;
UPDATE `creature_movement` SET `ScriptId` = 1683109 WHERE `id` = 57889 AND `point` = 2;
UPDATE `creature_movement` SET `ScriptId` = 1683108 WHERE `id` = 57889 AND `point` = 10;
UPDATE `creature_movement` SET `ScriptId` = 1683109 WHERE `id` = 57889 AND `point` = 11;

UPDATE `dbscripts_on_creature_movement` SET `id` = 1683107 WHERE `id` = 5788901;
UPDATE `dbscripts_on_creature_movement` SET `id` = 1683109 WHERE `id` = 5788903;
UPDATE `dbscripts_on_creature_movement` SET `id` = 1683108 WHERE `id` = 5788902;

