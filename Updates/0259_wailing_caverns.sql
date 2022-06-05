-- Disciple of Naralex should have a small Detection
UPDATE `creature_template` SET `Detection`='5' WHERE (`Entry`='3678');

-- Correct broadcast text emote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1265');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1268');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1269');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1270');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (367800, 367801, 367802);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(367800,10000,0,0,0,0,0,0,0,0,1255,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text'),
(367800,10000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Emote Talk'),
(367800,10000,1,0,0,0,0,0,0,0,1255,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text'),
(367801,0,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Emote Point'),
(367801,0,1,0,0,0,0,0,0,0,1257,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text');
(367801,0,1,0,0,0,0,0,0,0,1257,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text'),
(367802,0,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Emote Point'),
(367802,0,1,0,0,0,0,0,0,0,1263,0,0,0,0,0,0,0,0,0,0,'Disiple of Naralex - Say Text');

-- Raptor
SET @PATH := 3636;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
-- Raptor 1
(@PATH,1,1,-85.90598,227.61963,-93.03453,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,1,2,-102.71141,230.54904,-90.739334,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,1,3,-102.71141,230.54904,-90.739334,100,0,0,'Wailing Caverns - Deviate Raptor'),
-- Raptor 2
(@PATH,2,1,-81.29124,221.22562,-93.76229,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,2,-92.94477,227.76524,-90.75813,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,3,-102.23611,230.12544,-90.6959,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,4,-104.091354,230.78859,-90.55948,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,5,-104.091354,230.78859,-90.55948,100,0,0,'Wailing Caverns - Deviate Raptor'),
(@PATH,2,6,-104.091354,230.78859,-90.55948,0.82534259557723999,0,0,'Wailing Caverns - Deviate Raptor');

-- Let Raptor move on spawn
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='3636');

-- Deviate Viper and Adder dont move on spawn
UPDATE `creature_template` SET `MovementType`='0' WHERE (`Entry`='5755');
UPDATE `creature_template` SET `MovementType`='0' WHERE (`Entry`='5048');

-- Deviate Moccasin
SET @PATH := 5762;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,1,1,140.57259,228.00058,-100.50621,100,0,0,'Wailing Caverns - Deviate Moccasin'),
(@PATH,1,2,112.98197,247.17879,-96.04888,100,0,0,'Wailing Caverns - Deviate Moccasin'),
(@PATH,2,1,117.93607,234.20607,-95.98726,100,0,0,'Wailing Caverns - Deviate Moccasin'),
(@PATH,2,2,112.86706,245.81703,-96.04306,100,0,0,'Wailing Caverns - Deviate Moccasin'),
(@PATH,3,1,114.447685,231.63597,-96.329506,100,0,0,'Wailing Caverns - Deviate Moccasin'),
(@PATH,3,2,113.38692,245.56358,-96.03542,100,0,0,'Wailing Caverns - Deviate Moccasin');

-- Deviate Moccasin move on spawn
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='5762');

-- Nightmare Ectoplasm waypoints
SET @PATH := 5763;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,1,1,125.858055,242.78287,-96.88654,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,1,2,122.73051,238.40166,-96.29713,3.229076623916625976,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,1,119.62025,172.64119,-105.66553,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,2,120.402145,175.05247,-104.53792,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,3,123.54409,180.22897,-103.616196,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,4,126.53016,186.4192,-103.47013,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,5,128.87463,191.66891,-103.18311,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,6,131.06654,197.48012,-102.93855,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,7,133.31151,204.56015,-102.519104,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,8,134.51147,210.74326,-102.53473,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,9,134.96465,217.04575,-102.03306,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,10,134.72386,223.73077,-100.690636,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,11,133.46039,229.81218,-99.31009,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,12,130.70819,234.90285,-97.88196,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,13,127.35577,238.79118,-97.01613,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,14,125.05799,241.7561,-96.73998,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,2,15,126.59192,241.25197,-96.910194,3.436066865921020507,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,1,86.81626,276.71518,-103.9512,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,2,88.05574,273.74298,-103.72609,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,3,91.78126,268.84665,-104.02787,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,4,95.50262,265.2172,-102.84226,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,5,152.47021,218.18176,-104.24803,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,6,105.13917,259.68387,-98.26407,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,7,109.050835,255.97319,-97.09434,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,8,113.4123,251.84914,-96.547325,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,9,117.79379,247.71094,-96.242874,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,3,10,114.1736,243.78004,-96.01644,4.718718528747558593,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,1,146.5148,272.31738,-104.50855,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,2,145.701,267.94543,-104.230965,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,3,145.48427,261.7142,-103.67508,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,4,145.30661,256.78445,-102.91765,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,5,144.6796,250.19078,-101.97601,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,6,148.47914,218.54915,-103.6273,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,7,145.11433,220.02765,-102.91786,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,8,145.11021,233.7701,-100.377396,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,9,140.31061,230.63892,-100.05431,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,10,134.93867,228.26114,-99.78053,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,11,136.03055,234.19937,-98.7146,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,12,132.82394,236.77248,-97.92519,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,13,130.46991,238.63832,-97.56462,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,14,128.38785,240.8256,-97.1112,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,15,125.93925,242.70938,-96.893456,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,16,124.03222,244.96562,-96.75486,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,17,126.065506,242.83951,-96.91515,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,4,18,120.490555,240.27303,-96.12171,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,1,156.98734,192.56985,-107.434074,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,2,155.8213,195.96317,-106.57868,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,3,158.1752,217.64417,-104.754684,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,4,156.09776,217.58621,-103.86361,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,5,152.47021,218.18176,-104.24803,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,6,145.5708,218.16516,-103.30797,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,7,143.09923,223.12653,-102.1991,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,8,142.52711,222.92523,-102.092,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,9,139.86267,225.86348,-100.73727,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,10,137.30363,228.93317,-99.890594,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,11,131.28745,233.09811,-98.18175,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,12,130.04224,236.10242,-97.72676,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,13,128.94788,238.24597,-97.42485,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,14,130.46501,235.30818,-97.827866,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,15,127.65557,237.45241,-97.18103,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,16,124.98497,240.98068,-96.69607,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,17,127.58026,237.97755,-97.12617,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,5,18,121.04805,237.84366,-96.156784,1.075243234634399414,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,1,151.28966,219.12186,-103.98574,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,2,153.3386,218.44113,-104.38471,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,3,158.1752,217.64417,-104.754684,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,4,152.42044,218.90128,-104.182755,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,5,150.31213,220.28777,-103.6697,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,6,147.3595,220.87784,-103.15318,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,7,143.57608,222.95816,-102.29344,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,8,142.57188,224.99023,-101.302055,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,9,139.44273,228.22859,-100.28112,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,10,136.89784,230.95126,-99.45712,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,11,133.84889,231.842,-98.947395,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,12,131.6782,234.00502,-98.04075,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,13,129.02019,237.48233,-97.49597,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,6,14,120.897865,236.36218,-96.14911,100, 0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,1,164.35057,268.1334,-105.71179,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,2,162.23764,263.60834,-104.8928,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,3,160.20921,257.96268,-104.22527,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,4,158.20694,253.46788,-103.699936,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,5,155.24565,246.95665,-103.23309,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,6,152.1443,241.52968,-102.73629,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,7,149.25285,237.67703,-101.18963,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,8,146.34856,232.05972,-100.919395,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,9,142.21779,227.63333,-100.771454,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,10,135.60344,228.25175,-99.8548,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,11,132.5878,232.43553,-98.69165,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,12,130.15013,235.89804,-97.75269,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,13,128.74797,240.46518,-97.22051,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,14,131.17953,238.13574,-97.66857,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,15,128.48396,241.2323,-97.14712,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,16,126.47431,242.76492,-96.963196,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,17,128.44044,241.02643,-97.12677,100,0,0,'Wailing Caverns - Nightmare Ectoplasm'),
(@PATH,7,18,125.30564,240.25824,-96.703995,3.381908416748046875,0,0,'Wailing Caverns - Nightmare Ectoplasm');

-- Nightmare Ectoplasm
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='5763');

-- Boss Mutanos the Devourer waypoints
SET @PATH := 3654;
DELETE FROM creature_movement_template WHERE `Entry` = @PATH;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(@PATH,1,1,116.24077,246.37646,-96.07665,100,0,0,'Wailing Caverns - Mutanos'),
(@PATH,1,2,116.583,246.34807,-96.08489,100,0,0,'Wailing Caverns - Mutanos'),
(@PATH,1,3,118.23712,247.25517,-96.2352,4.232990741729736328,0,0,'Wailing Caverns - Mutanos');

-- Mutanos move on spawn
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='3654');