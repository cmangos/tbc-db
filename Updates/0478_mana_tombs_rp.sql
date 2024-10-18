-- Rework of "Captain" Kaftiz roleplay outside mana tombs
-- Old script used normal waypoints waittime to trigger movement of Consortium Engineer
-- This resulted in Kaftiz talking while no engineer is up
-- Also the answers to kafiz rnd talks were wrong

-- Delete old data of RP Event
-- Consortium Engineer spawn data and waypoint data
DELETE FROM creature WHERE guid = 84497;

-- Respawn is 5 seconds after Death
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(84497, 19673, 530, 1, -3127.5388, 4922.8223, -98.28016, 2.44596242, 5, 5, 0, 2);

-- "Captain" Kaftiz spawn points
UPDATE creature SET position_x = -3094.886, position_y = 4937.1274, position_z = -99.6565 , orientation = 0.48869219422340393 WHERE guid = 84830;

-- Old Data:
-- INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`, `Comment`) VALUES
-- (84497, 1, -3129.8, 4926.13, -98.4561, 100, 0, 0, ''),	
-- (84497, 2, -3124.58, 4931.7, -98.6768, 100, 0, 0, ''),
-- (84497, 3, -3110.8, 4938.22, -99.5145, 100, 0, 0, ''),
-- (84497, 4, -3095.94, 4940.46, -99.6997, 100, 90000, 1967301, ''),
-- (84497, 5, -3095.94, 4940.46, -99.6997, 100, 1, 5, 'copy of point 4 to make "run on" work'),
-- (84497, 7, -3069.42, 4942.84, -101.04, 100, 5000, 1967303, 'yell and die');
-- (84497, 6, -3074.75, 4943.16, -101.04, 100, 500, 1967302, 'chance for temporary success or die instantly'),

DELETE FROM creature_movement WHERE id = 84497;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`, `Comment`) VALUES
(84497, 1, -3127.5388, 4922.8223, -98.28016, 0, 0, 0, 'SpawnPoint'),
(84497, 2, -3124.4868, 4931.7812, -98.668205, 0, 0, 0, ''),
(84497, 3, -3105.4993, 4939.027, -99.53259, 0, 0, 0, ''),
(84497, 4, -3096.7932, 4940.8, -99.71341, 0.1047197, 100, 1967301, 'Consortium Engineer - Send AIEventA to "Captain" Kaftiz');

-- Inform "Captain" Kaftiz that a new Consortium Engineer is next to him
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1967301, 1967302, 1967303);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1967301, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - Change Movement to Idle'),
(1967301, 0, 1, 31, 19676, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - search for "Captain" Kaftiz - terminate if not found'),
(1967301, 1, 1, 35, 5, 0, 0, 19676, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - Send AIEventA to "Captain" Kaftiz'),
-- 2nd part of waypoints, starts random script
(1967302, 0, 0, 45, 0, 1967301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consortium Engineer - start random script');

-- 85 seconds after "Captain" Kaftiz got informed that a new Engineer stands next to him he starts this RP
DELETE FROM dbscripts_on_relay WHERE id IN (10217, 1967601, 1967602, 1967301, 1967302);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- To prevent DB error spam, check if engineer is still near us
(1967601,0,0,31,19673,5,0,0,0,0,0,0,0,0,0,0,0,0, '"Captain" Kaftiz - search for Consortium Engineer - terminate if not found'),
(1967601,1,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0, '"Captain" Kaftiz - set Active'),
(1967601,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0, '"Captain" Kaftiz - Emote Talk'),
(1967601,1,2,0,0,0,0,0,0,0,17201,17202,17203,17204,0,0,0,0, '"Captain" Kaftiz - say random text'),
(1967601,5000,0,1,0,0,0,19672,84500,16,0,0,0,0,0,0,0,0, 'Consortium Laborer - remove emotestate'),
(1967601,5000,0,36,0,0,0,19672,84500,16,0,0,0,0,0,0,0,0, 'Consortium Laborer - Turn to "Captain" Kaftiz'),
(1967601,6000,0,1,1,0,0,19672,84500,16,0,0,0,0,0,0,0,0, 'Consortium Laborer - Emote Talk'),
(1967601,6000,1,0,1967201,0,0,19672,84500,16,0,0,0,0,0,0,0,0, 'Consortium Laborer - Random Talk'),
(1967601,13000,0,36,1,0,0,19672,84500,16,0,0,0,0,0,0,0,0, 'Consortium Laborer - reset orientation'),
(1967601,14000,0,1,233,0,0,19672,84500,16,0,0,0,0,0,0,0,0, 'Consortium Laborer - Emote State'),
(1967601,14000,1,0,0,0,0,0,0,0,17210,0,0,0,0,0,0,0, '"Captain" Kaftiz - say text'),
(1967601,17000,0,21,1,0,0,19673,84497,16,0,0,0,0,0,0,0,0, '"Consortium Engineer - set active'),
(1967601,17000,1,0,0,0,0,19673,84497,16,17205,17206,17207,17208,0,0,0,0, '"Consortium Engineer - say text'),
(1967601,19000,0,20,2,1,0,19673,84497,16,0,0,0,0,0,0,0,0, '"Consortium Engineer - Change Movement'),
-- 2nd part
(1967602,0,0,0,0,0,0,0,0,0,17211,17212,17213,0,0,0,0,0, '"Captain" Kaftiz - random Emoted Text'),
(1967602,2000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0, '"Captain" Kaftiz - Emote Talk'),
(1967602,2000,1,0,1967601,0,0,0,0,0,0,0,0,0,0,0,0,0, '"Captain" Kaftiz - random Text'),
(1967602,2000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0, '"Captain" Kaftiz - remove Active'),
-- Consortium Engineer success script
(1967301,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Consortium Engineer - Change Movement to Idle'),
(1967301,2000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3.10668, 'Consortium Engineer - Change orientation'),
(1967301,3000,0,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Consortium Engineer - Emote Roar'),
(1967301,3000,1,0,0,0,0,0,0,0,17209,0,0,0,0,0,0,0, 'Consortium Engineer - Say Text'),
(1967301,6000,0,15,7,1,0,0,0,0,0,0,0,0,0,0,0,0, 'Consortium Engineer - Kill self'),
(1967301,9000,0,35,6,0,0,19676,40,1,0,0,0,0,0,0,0,0, 'Consortium Engineer - Send AIEventB to "Captain" Kaftiz'),
-- Consortium Engineer fail script
(1967302,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Consortium Engineer - Change Movement to Idle'),
(1967302,0,1,15,7,1,0,0,0,0,0,0,0,0,0,0,0,0, 'Consortium Engineer - Kill self'),
(1967302,5000,0,35,6,0,0,19676,40,1,0,0,0,0,0,0,0,0, 'Consortium Engineer - Send AIEventB to "Captain" Kaftiz');

DELETE FROM dbscript_random_templates WHERE id IN (1967201, 1967301, 1967601);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
-- Consortium Laborer random answers
(1967201, 0, 17193, 0, 'Consortium Laborer - random say 1'),
(1967201, 0, 17194, 0, 'Consortium Laborer - random say 2'),
(1967201, 0, 17195, 0, 'Consortium Laborer - random say 3'),
(1967201, 0, 17196, 0, 'Consortium Laborer - random say 4'),
(1967201, 0, 17197, 0, 'Consortium Laborer - random say 5'),
(1967201, 0, 17198, 0, 'Consortium Laborer - random say 6'),
(1967201, 0, 17199, 0, 'Consortium Laborer - random say 7'),
(1967201, 0, 17200, 0, 'Consortium Laborer - random say 8'),
-- Consortium Engineer 2 different RPs on waypoint reach
-- succes script has a small chance
(1967301, 1, 1967301, 20, 'Consortium Engineer - Success'),
(1967301, 1, 1967302, 80, 'Consortium Engineer - Fail'),
-- Random text from "Captain" Kaftiz
(1967601, 0, 17214, 0, '"Captain" Kaftiz - random say 1'),
(1967601, 0, 17215, 0, '"Captain" Kaftiz - random say 2'),
(1967601, 0, 17216, 0, '"Captain" Kaftiz - random say 3'),
(1967601, 0, 17217, 0, '"Captain" Kaftiz - random say 4'),
(1967601, 0, 17218, 0, '"Captain" Kaftiz - random say 5');

DELETE FROM `creature_movement_template` WHERE `entry` IN (19673);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(19673, 1, 1, -3096.7932,4940.8,-99.71341, 100, 100, 5), -- run mode on
(19673, 1, 2, -3074.557,4942.775,-101.06215, 100, 0, 0), 
(19673, 1, 3, -3069.6338,4942.8125,-101.062164, 100, 1000, 1967302);
