-- Westfall - updates

-- Objects

-- Sign outside Moonbrook
-- Old Coast Road 84
UPDATE gameobject SET position_x = -10912.04, position_y = 1420.346, position_z = 42.52587, orientation = -0.1310418, rotation0 = -0.05685568, rotation1 = 0.0006389618, rotation2 = -0.06554317, rotation3 = 0.9962285 WHERE guid = 32339;
-- Duskwood 85
UPDATE gameobject SET position_x = -10910.86, position_y = 1420.136, position_z = 43.48199, orientation = 3.0175, rotation0 = -0.01899099, rotation1 = 0.09044456, rotation2 = 0.9936657, rotation3 = 0.06393455 WHERE guid = 11019;

-- Sign on crossroads 58/65
-- Duskwood 121
UPDATE gameobject SET position_x = -10924.16, position_y = 995.3672, position_z = 34.95429, orientation = 3.138812, rotation0 = 0.004355907, rotation1 = 0.05669117, rotation2 = 0.9983816, rotation3 = 0.001145121 WHERE guid = 32328;
-- Sentinell Hill 122
UPDATE gameobject SET position_x = -10924.99, position_y = 996.3398, position_z = 34.50686, orientation = -1.570796, rotation0 = 0, rotation1 = 0, rotation2 = -0.7071066, rotation3 = 0.7071069 WHERE guid = 32337;
-- Elwynn Forest 123
UPDATE gameobject SET position_x = -10924.77, position_y = 996.4549, position_z = 35.67675, orientation = -1.483528, rotation0 = 0.0351038, rotation1 = -0.02625465, rotation2 = -0.6750803, rotation3 = 0.7364408 WHERE guid = 31067;
-- Moonbrook 124
UPDATE gameobject SET position_x = -10925, position_y = 994.95, position_z = 36.3558, orientation = 0.08331253, rotation0 = -0.09091187, rotation1 = -0.01661682, rotation2 = 0.04028893, rotation3 = 0.9949049 WHERE guid = 31068;


-- Creatures

-- Some Westfall duplicates  90370,89820,89800,90383,90431,52579,90425
DELETE FROM creature WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM creature_addon WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM creature_movement WHERE id IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM game_event_creature WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM game_event_creature_data WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM creature_battleground WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM creature_linking WHERE guid IN (90271,90014,90375,90216,89906,90434,90341)
 OR master_guid IN (90271,90014,90375,90216,89906,90434,90341);

-- updates
UPDATE creature SET position_x = -10829.554688, position_y = 733.747437, position_z = 34.381603, orientation = 3.798669 WHERE guid = 90362;

-- align position_z for entry (199,547,1109,452,834) with wotlk-db and classic-db
UPDATE `creature` SET `position_z`='78.7819' WHERE `guid`='10113';
UPDATE `creature` SET `position_z`='131.618' WHERE `guid`='10118';
UPDATE `creature` SET `position_z`='132.326' WHERE `guid`='10128';
UPDATE `creature` SET `position_z`='110.657' WHERE `guid`='10129';
UPDATE `creature` SET `position_z`='60.2623' WHERE `guid`='10135';
UPDATE `creature` SET `position_z`='85.1398' WHERE `guid`='10160';
UPDATE `creature` SET `position_z`='132.978' WHERE `guid`='10170';
UPDATE `creature` SET `position_z`='73.1432' WHERE `guid`='13326';
UPDATE `creature` SET `position_z`='69.6735' WHERE `guid`='13327';
UPDATE `creature` SET `position_z`='59.5904' WHERE `guid`='16321';
UPDATE `creature` SET `position_z`='61.5397' WHERE `guid`='29892';
UPDATE `creature` SET `position_z`='64.5037' WHERE `guid`='29893';
UPDATE `creature` SET `position_z`='34.2431' WHERE `guid`='89821';
UPDATE `creature` SET `position_z`='43.0739' WHERE `guid`='89822';
UPDATE `creature` SET `position_z`='37.3854' WHERE `guid`='89826';
UPDATE `creature` SET `position_z`='43.4901' WHERE `guid`='90015';
UPDATE `creature` SET `position_z`='38.957' WHERE `guid`='90016';
UPDATE `creature` SET `position_z`='43.8703' WHERE `guid`='90017';
UPDATE `creature` SET `position_z`='41.0726' WHERE `guid`='90018';
UPDATE `creature` SET `position_z`='48.4887' WHERE `guid`='90253';
UPDATE `creature` SET `position_z`='47.0933' WHERE `guid`='90359';
UPDATE `creature` SET `position_z`='42.0099' WHERE `guid`='48887';
UPDATE `creature` SET `position_z`='39.811' WHERE `guid`='48889';
UPDATE `creature` SET `position_z`='33.1132' WHERE `guid`='52551';
UPDATE `creature` SET `position_z`='34.6869' WHERE `guid`='52553';
UPDATE `creature` SET `position_z`='34.2083' WHERE `guid`='52555';
UPDATE `creature` SET `position_z`='35.8598' WHERE `guid`='52556';
UPDATE `creature` SET `position_z`='37.2508' WHERE `guid`='52572';
UPDATE `creature` SET `position_z`='39.7536' WHERE `guid`='52574';
UPDATE `creature` SET `position_z`='38.4358' WHERE `guid`='52575';
UPDATE `creature` SET `position_z`='40.1143' WHERE `guid`='52577';
UPDATE `creature` SET `position_z`='43.5193' WHERE `guid`='66980';
UPDATE `creature` SET `position_z`='34.123' WHERE `guid`='66981';
UPDATE `creature` SET `position_z`='42.2527' WHERE `guid`='66982';
UPDATE `creature` SET `position_z`='36.3031' WHERE `guid`='66983';
UPDATE `creature` SET `position_z`='44.0582' WHERE `guid`='90202';
UPDATE `creature` SET `position_z`='50.05' WHERE `guid`='90208';
UPDATE `creature` SET `position_z`='28.1601' WHERE `guid`='90213';
UPDATE `creature` SET `position_z`='29.8273' WHERE `guid`='90217';
UPDATE `creature` SET `position_z`='66.3223' WHERE `guid`='90423';

