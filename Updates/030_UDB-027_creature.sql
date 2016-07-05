-- Hellfire Peninsula
-- Deathwhisperer
-- correct spawn
UPDATE creature SET position_x = -145.891022, position_y = 1465.911621, position_z = 24.569803, orientation = 1.265086 WHERE guid = 68877;
-- missing one added
DELETE FROM creature WHERE guid = 69711;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(69711,19299,530,1,0,0,-128.362,1577.63,42.5033,4.67764,300,5,0,33805,0,0,1);
-- Wrathguard
-- missing added
DELETE FROM creature WHERE guid IN (69712,69713);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(69712,18975,530,1,0,0,133.264,1700.15,36.9642,3.87463,300,0,0,3313,2369,0,0),
(69713,18975,530,1,0,0,166.372,1700.21,31.1226,5.51524,300,0,0,3191,2289,0,0);
-- Shattered Hand Berserker
DELETE FROM creature WHERE guid = 58273; -- replace for duplicate
INSERT INTO creature VALUES (58273,16878,530,1,0,0,77.434,3204.98,32.1802,1.50966,300,0,0,5158,0,0,0);
UPDATE creature SET position_x = 22.259817, position_y = 3235.015625, position_z = 18.917589, orientation = 5.560086, spawndist = 0, MovementType = 0 WHERE guid = 58274;
-- Shattered Hand Acolyte
DELETE FROM creature WHERE guid = 69714;
INSERT INTO creature VALUES (69714,19415,530,1,0,0,90.887,3207.16,33.2575,3.30453,300,0,0,4126,2426,0,0);
-- Shattered Hand Mage
DELETE FROM creature WHERE guid = 78965;
INSERT INTO creature VALUES (78965,19413,530,1,0,0,69.8437,3221.34,32.3471,5.51542,300,0,0,3972,5875,0,0);
-- Shattered Hand Guard
DELETE FROM creature WHERE guid = 79452;
INSERT INTO creature VALUES (79452,19414,530,1,0,0,105.814,3176.63,25.4563,0.520286,300,5,0,5158,0,0,1);
UPDATE creature SET position_x = -27.368002, position_y = 3217.763916, position_z = 10.151849, orientation = 2.634470 WHERE guid = 69340;
UPDATE creature SET position_x = 54.362099, position_y = 3245.204590, position_z = 26.976578, orientation = 5.925287 WHERE guid = 69341;

