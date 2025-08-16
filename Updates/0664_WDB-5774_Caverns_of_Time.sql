-- Caverns of Time - updates
-- Night Elf Wisp Specimen 20069
UPDATE creature_template SET InhabitType = 4 WHERE entry = 20069;

-- Time Watcher 19918 - updates
-- missing added - might be wrath+ only
DELETE FROM creature_addon WHERE guid = 23576;
DELETE FROM creature_movement WHERE id = 23576;
DELETE FROM game_event_creature WHERE guid = 23576;
DELETE FROM game_event_creature_data WHERE guid = 23576;
DELETE FROM creature_battleground WHERE guid = 23576;
DELETE FROM creature_linking WHERE guid = 23576;
DELETE FROM creature WHERE guid = 23576;
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(23576,19918,1,1,-8344.992,-4450.334,-91.6601,0,20,45,0,3);
INSERT INTO creature_movement (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(23576,1,-8344.992,-4450.334,-91.6601,100,0,0),
(23576,2,-8345.674,-4449.603,-91.6601,100,0,0),
(23576,3,-8359.348,-4438.438,-84.52838,100,0,0),
(23576,4,-8385.378,-4431.861,-93.77838,100,0,0),
(23576,5,-8408.063,-4420.892,-104.9451,100,0,0),
(23576,6,-8441.084,-4419.951,-115.6673,100,0,0),
(23576,7,-8462.368,-4420.853,-124.2228,100,0,0),
(23576,8,-8505.504,-4417.907,-141.3894,100,0,0),
(23576,9,-8543.364,-4413.641,-153.9727,100,0,0),
(23576,10,-8578.372,-4406.426,-162.2782,100,0,0),
(23576,11,-8617.298,-4398.667,-172.0283,100,0,0),
(23576,12,-8651.545,-4405.353,-178.2505,100,10,1);
DELETE FROM `creature_spawn_data` WHERE guid IN (23576);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(23576,3);
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 45 WHERE id = 19918; -- 30 30

-- 23437 - should despawn at destination point
UPDATE creature_movement SET WaitTime = 100, ScriptId = 1 WHERE Id = 23437 AND Point = 12;
DELETE FROM creature_movement WHERE Id = 23437 AND Point = 13; -- duplicate

-- 23436 - should continue facing path instead of reset it, also missing point added in Path1
DELETE FROM creature_movement WHERE Id = 23436 AND Point = 9; -- duplicate
UPDATE creature_movement SET Orientation = 2.35, WaitTime = 10000, ScriptId = 1991803 WHERE Id = 23436 AND Point = 8;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1991803);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1991803,0,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - Fly off'),
(1991803,1,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - run off'),
(1991803,2000,15,34699,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - Cast 34699'),
(1991803,2100,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - Set Path1');
-- path1
DELETE FROM creature_movement_template WHERE Entry = 19918 AND PathId = 1;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19918,1,1,-8398.713,-4234.417,-207.1844,100,0,0),
(19918,1,2,-8416.942,-4226.259,-209.9314,100,0,0),
(19918,1,3,-8433.847,-4210.986,-209.9753,100,0,0),
(19918,1,4,-8447.319,-4193.266,-211.127 ,100,0,0),
(19918,1,5,-8447.557,-4159.843,-208.961 ,100,0,0),
(19918,1,6,-8442.453,-4124.033,-208.592 ,100,0,0),
(19918,1,7,-8424.839,-4097.409,-208.5864,100,0,0),
(19918,1,8,-8405.975,-4077.361,-208.5864,100,0,0),
(19918,1,9,-8369.048,-4058.837,-208.3106,100,0,0),
(19918,1,10,-8339.433,-4050.101,-207.7185,100,10,1);

-- 23439 - reconstructed
UPDATE creature SET position_x = -8344.992, position_y = -4450.334, position_z = -91.6601, spawndist = 0, MovementType = 3 WHERE guid = 23439;
DELETE FROM creature_movement WHERE Id IN (23439);
INSERT INTO creature_movement (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(23439,1,-8344.992,-4450.334,-91.6601,100,0,0),
(23439,2,-8345.674,-4449.603,-91.6601,100,0,0),
(23439,3,-8352.719,-4436.703,-82.4349,100,0,0),
(23439,4,-8360.686,-4405.598,-101.9071,100,0,0),
(23439,5,-8367.108,-4379.51,-115.6016,100,0,0),
(23439,6,-8372.076,-4331.29,-128.935,100,0,0),
(23439,7,-8375.418,-4288.263,-128.935,100,0,0),
(23439,8,-8396.816,-4257.064,-128.935,100,0,0),
(23439,9,-8434.114,-4227.781,-128.1016,100,0,0),
(23439,10,-8476.552,-4211.472,-128.935,100,0,0),
(23439,11,-8540.315,-4222.934,-149.4349,100,0,0),
(23439,12,-8571.526,-4233.976,-186.8793,100,0,0),
(23439,13,-8600.241,-4239.956,-209.7406,3.35,10000,1991802);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1991802,1991805);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1991802,0,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - Fly off'),
(1991802,1,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - run off'),
(1991802,2000,23,20075,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - Morph to Darkwater Crocolisk'),
(1991802,2100,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - Set Path2');
-- path2
DELETE FROM creature_movement_template WHERE Entry = 19918 AND PathId = 2;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19918,2,1,-8657.848,-4256.185,-209.717,100,0,0),
(19918,2,2,-8683.259,-4244.825,-209.5135,100,0,0),
(19918,2,3,-8707.051,-4232.219,-209.5008,100,0,0),
(19918,2,4,-8735.112,-4211.69,-209.5008,100,0,0),
(19918,2,5,-8748.09,-4201.256,-209.5008,100,100,1);

-- 23440 - reconstructed
UPDATE creature SET position_x = -8714.617, position_y = -4326.743, position_z = -60.83653, spawndist = 0, MovementType = 3 WHERE guid = 23440;
DELETE FROM creature_movement WHERE Id IN (23440);
INSERT INTO creature_movement (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(23440,1,-8714.617,-4326.743,-60.83653 ,100,0,0),
(23440,2,-8713.639,-4326.535,-60.83653 ,100,0,0),
(23440,3,-8699.7,-4323.786,-49.46626   ,100,0,0),
(23440,4,-8662.251,-4326.158,-58.91071 ,100,0,0),
(23440,5,-8632.865,-4321.092,-69.32738 ,100,0,0),
(23440,6,-8606.589,-4315.761,-85.07739 ,100,0,0),
(23440,7,-8585.149,-4300.948,-98.04964 ,100,0,0),
(23440,8,-8540.388,-4259.448,-113.3552 ,100,0,0),
(23440,9,-8507.983,-4240.053,-121.9385 ,100,0,0),
(23440,10,-8460.989,-4236.288,-130.4941,100,0,0),
(23440,11,-8429.02,-4255.674,-130.7997 ,100,0,0),
(23440,12,-8410.482,-4288.9,-128.3829  ,100,0,0),
(23440,13,-8395.819,-4345.37,-130.7997 ,100,0,0),
(23440,14,-8418.614,-4385.142,-135.8275,100,0,0),
(23440,15,-8459.28,-4394.419,-137.1608 ,100,0,0),
(23440,16,-8489.916,-4391.627,-138.0774,100,0,0),
(23440,17,-8521.314,-4381.444,-141.0219,100,0,0),
(23440,18,-8548.512,-4354.828,-143.4941,100,0,0),
(23440,19,-8567.578,-4328.019,-146.633 ,100,0,0),
(23440,20,-8557.874,-4290.714,-148.8552,100,0,0),
(23440,21,-8478.622,-4249.154,-154.8031,100,0,0),
(23440,22,-8444.948,-4260,-153.1365    ,100,0,0),
(23440,23,-8434.602,-4288.784,-150.7198,100,0,0),
(23440,24,-8444.234,-4330.667,-144.581 ,100,0,0),
(23440,25,-8498.272,-4372.209,-144.0532,100,0,0),
(23440,26,-8541.456,-4354.249,-152.6643,100,0,0),
(23440,27,-8553.676,-4309.024,-157.3865,100,0,0),
(23440,28,-8545.231,-4288.306,-153.9143,100,0,0),
(23440,29,-8522.15,-4279.529,-150.442  ,100,0,0),
(23440,30,-8449.093,-4252.85,-129.8031 ,100,0,0),
(23440,31,-8416.661,-4232.987,-108.0531,100,0,0),
(23440,32,-8389.26,-4209.612,-87.05309 ,100,0,0),
(23440,33,-8365.473,-4195.317,-70.15017,100,0,0),
(23440,34,-8333.33,-4169.05,-70.15017  ,100,10,1);

-- 23438 - reconstructed
DELETE FROM creature_movement WHERE Id IN (23438);
INSERT INTO creature_movement (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(23438,1,-8339.22,-4462.26,-98.8948,100,0,0),
(23438,2,-8345.67,-4449.6,-91.6601,100,0,0),
(23438,3,-8352.13,-4436.95,-84.4254,100,0,0),
(23438,4,-8341.38,-4375.6,-110.009,100,0,0),
(23438,5,-8357.16,-4300.49,-135.509,100,0,0),
(23438,6,-8452.85,-4213.52,-169.314,100,0,0),
(23438,7,-8578.65,-4245.91,-169.314,100,0,0),
(23438,8,-8593.61,-4332.43,-172.62,100,0,0),
(23438,9,-8532.17,-4405.24,-186.592,100,0,0),
(23438,10,-8453.47,-4416.55,-202.148,100,0,0),
(23438,11,-8408.37,-4412.03,-210.759,0.08,10000,1991804);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1991804);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1991804,0,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - Fly off'),
(1991804,1,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - run off'),
(1991804,2000,15,34702,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - cast 34702'),
(1991804,2100,20,2,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'Time Watcher - Set Path3');
-- path2
DELETE FROM creature_movement_template WHERE Entry = 19918 AND PathId = 3;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19918,3,1,-8376.56,-4393.6,-207.944,100,0,0),
(19918,3,2,-8344.07,-4375.34,-206.403,100,0,0),
(19918,3,3,-8317.79,-4362.93,-209.847,100,0,0),
(19918,3,4,-8297.43,-4357.04,-207.528,100,0,0),
(19918,3,5,-8251.5,-4344.58,-206.164,100,0,0),
(19918,3,6,-8229.64,-4339.97,-201.262,100,0,0),
(19918,3,7,-8218.43,-4325.09,-198.806,100,0,0),
(19918,3,8,-8195.75,-4287.91,-191.213,100,0,0),
(19918,3,9,-8186.09,-4258.09,-183.413,100,0,0),
(19918,3,10,-8186.15,-4239.24,-179.062,100,0,0),
(19918,3,11,-8184.12,-4201.08,-172.367,100,0,0),
(19918,3,12,-8173.98,-4179.92,-166.878,100,0,0),
(19918,3,13,-8167.48,-4164.84,-164.728,100,10,1);

-- Soridormi 19935 & Arazmodu 19936
UPDATE creature SET position_x = -8445.759, position_y = -4215.38, position_z = -211.9387, spawndist = 0, MovementType = 0 WHERE guid IN (23453,23454);
DELETE FROM creature_movement WHERE Id IN (23453,23454);
DELETE FROM creature_movement_template WHERE Entry IN (19935,19936);
-- moved to spawn groups
DELETE FROM `spawn_group` WHERE id = 19892;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19892, 'Tanaris - Caverns of Time - Soridormi 19935 & Arazmodu 19936 - Patrol', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19892;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19892, 23453, 0),
(19892, 23454, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19892;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19892, 2, 7, 0, 19892, 2, 'Tanaris - Caverns of Time - Soridormi 19935 & Arazmodu 19936 - Patrol');
DELETE FROM `waypoint_path_name` WHERE PathId = 19892;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19892,'Tanaris - Caverns of Time - Soridormi 19935 & Arazmodu 19936 - Patrol');
DELETE FROM `waypoint_path` WHERE PathId = 19892;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19892,1,-8445.759,-4215.38,-211.9387,100,0,0),
(19892,2,-8481.24,-4209.553,-214.8101,100,0,0),
(19892,3,-8519.429,-4215.215,-213.2991,100,0,0),
(19892,4,-8566.779,-4224.906,-210.9306,100,0,0),
(19892,5,-8596.962,-4255.7,-210.5616,100,0,0),
(19892,6,-8608.052,-4285.974,-211.1701,100,0,0),
(19892,7,-8604.996,-4313.684,-212.4491,100,0,0),
(19892,8,-8588.4,-4356.612,-213.5026,100,0,0),
(19892,9,-8556.364,-4394.186,-215.0919,100,0,0),
(19892,10,-8521.725,-4420.971,-215.0355,100,0,0),
(19892,11,-8471.621,-4439.507,-215.6221,100,0,0),
(19892,12,-8427.305,-4434.919,-209.7463,100,0,0),
(19892,13,-8405.412,-4416.613,-210.1112,100,0,0),
(19892,14,-8377.789,-4380.435,-209.5843,100,0,0),
(19892,15,-8365.063,-4350.27,-208.8069,100,0,0),
(19892,16,-8362.924,-4320.472,-208.7829,100,0,0),
(19892,17,-8368.159,-4293.539,-208.2436,100,0,0),
(19892,18,-8382.888,-4258.709,-207.7906,100,0,0),
(19892,19,-8410.113,-4225.767,-208.1212,100,0,0);

-- Warden of Time 19951
-- these 2 should walk together
UPDATE creature SET position_x = -8163.3145, position_y = -4796.055, position_z = 35.840714, spawndist = 0, MovementType = 0 WHERE guid IN (23472,23473);
DELETE FROM creature_movement WHERE Id IN (23472,23473);
-- moved to spawn groups
DELETE FROM `spawn_group` WHERE id = 19891;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19891, 'Tanaris - Caverns of Time - Warden of Time 19951 x2 - Patrol', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 19891;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19891, 23472, 0),
(19891, 23473, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19891;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19891, 1, 10, 0, 19891, 4, 'Tanaris - Caverns of Time - Warden of Time 19951 x2 - Patrol'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 19891;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19891,'Tanaris - Caverns of Time - Warden of Time 19951 x2 - Patrol');
DELETE FROM `waypoint_path` WHERE PathId = 19891;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19891,1,-8163.3145,-4796.055,35.840714,100,500,0),
(19891,2,-8168.028,-4819.5063,34.62324,100,0,0),
(19891,3,-8174.3027,-4844.1504,29.046083,100,0,0),
(19891,4,-8177.518,-4864.79,26.622221,100,0,0),
(19891,5,-8177.777,-4881.641,24.999691,100,0,0),
(19891,6,-8154.547,-4901.804,19.343477,100,0,0),
(19891,7,-8129.777,-4903.324,16.248957,100,0,0),
(19891,8,-8114.9897,-4893.794,13.124857,100,0,0),
(19891,9,-8101.2007,-4886.316,8.632445,100,0,0),
(19891,10,-8087.9253,-4857.225,-7.217657,100,0,0),
(19891,11,-8093.51,-4848.0063,-11.209167,100,0,0),
(19891,12,-8128.395,-4843.884,-19.526033,100,0,0),
(19891,13,-8138.002,-4850.338,-20.934381,100,0,0),
(19891,14,-8144.3984,-4863.7227,-25.175663,100,0,0),
(19891,15,-8150.268,-4879.5464,-31.787813,100,0,0),
(19891,16,-8142.6665,-4895.334,-37.543938,100,0,0),
(19891,17,-8125.7734,-4908.5894,-40.887745,100,0,0),
(19891,18,-8113.1,-4910.2603,-42.88266,100,0,0),
(19891,19,-8091.725,-4904.197,-50.53138,100,0,0),
(19891,20,-8079.3296,-4886.623,-55.301456,100,0,0),
(19891,21,-8075.7866,-4871.69,-60.269855,100,0,0),
(19891,22,-8076.319,-4846.9756,-71.16178,100,0,0),
(19891,23,-8080.454,-4817.357,-82.79274,100,0,0),
(19891,24,-8085.0625,-4791.419,-89.5917,100,0,0),
(19891,25,-8089.58,-4768.8354,-94.4901,100,0,0),
(19891,26,-8092.654,-4750.49,-97.97556,100,0,0),
(19891,27,-8097.7676,-4728.2603,-101.61951,100,0,0),
(19891,28,-8107.007,-4699.217,-109.69037,100,0,0),
(19891,29,-8119.4536,-4673.4155,-118.84561,100,0,0),
(19891,30,-8127.5635,-4657.518,-120.11935,100,0,0),
(19891,31,-8143.4756,-4630.1094,-121.95584,100,0,0),
(19891,32,-8176.0303,-4605.023,-133.09459,100,0,0),
(19891,33,-8193.171,-4605.0933,-137.24554,100,0,0),
(19891,34,-8222.17,-4590.294,-150.03032,100,0,0),
(19891,35,-8238.964,-4588.1777,-155.07103,100,0,0),
(19891,36,-8259.87,-4586.572,-159.8153,100,0,0),
(19891,37,-8284.904,-4583.2134,-166.77763,100,0,0),
(19891,38,-8312.802,-4589.068,-174.06929,100,0,0),
(19891,39,-8336.284,-4604.1733,-180.28001,100,0,0),
(19891,40,-8356.5205,-4617.0874,-184.71153,100,0,0),
(19891,41,-8369.33,-4624.3228,-188.00562,100,0,0),
(19891,42,-8390.92,-4634.5527,-192.89653,100,0,0),
(19891,43,-8407.372,-4638.4106,-194.70264,100,0,0),
(19891,44,-8433.562,-4645.07,-200.20047,100,0,0),
(19891,45,-8452.687,-4648.728,-203.32683,100,0,0),
(19891,46,-8470.955,-4649.1235,-205.29292,100,0,0),
(19891,47,-8483.932,-4645.266,-206.09097,100,0,0),
(19891,48,-8491.336,-4637.4126,-206.50279,100,0,0),
(19891,49,-8497.812,-4624.299,-208.52382,100,0,0),
(19891,50,-8505.78,-4605.421,-211.19186,100,0,0),
(19891,51,-8513.201,-4577.485,-211.36905,100,0,0),
(19891,52,-8510.666,-4549.027,-211.46355,100,500,0);

-- -----------------------------------------------------------------------------------------------------------
-- WoTLK ONLY

-- Objects
-- pre WoTLK portal to `The Culling of Stratholme` - Removed
-- DELETE FROM game_event_gameobject WHERE guid IN (17454,17455,90621,90622,60195);
-- DELETE FROM gameobject_battleground WHERE guid IN (17454,17455,90621,90622,60195);
-- DELETE FROM gameobject WHERE guid IN (17454,17455,90621,90622,60195);

-- 18502
UPDATE `creature_template` SET `SpeedRun` = 1.14286 WHERE `entry` = 18502; -- s.34702

