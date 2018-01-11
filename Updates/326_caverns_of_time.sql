-- CAVERNS OF TIME
-- Misc Scripts

UPDATE creature_template SET UnitFlags=33587968 WHERE entry=20026; -- Darkwater Crocolisk Specimen

-- unstack Lordaeron Watchman/Sentry Specimen
UPDATE creature SET position_x=-8411.63, position_y=-4062.08, position_z=-208.394, orientation=3.77644 WHERE guid=23086;
UPDATE creature_addon SET auras = '8279 34712' WHERE guid=23078; -- was missing Time Stop

-- Sable Jaguar Specimen (20025)
-- missing spawns added (free guids used)
REPLACE INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(16397, 20025, 1, 1, 0, 0, -8689.938, -4213.349, -207.8566, 3.822271, 300, 300, 0, 0, 63, 0, 0, 0),
(16402, 20025, 1, 1, 0, 0, -8645.533, -4219.853, -207.2871, 4.974188, 300, 300, 0, 0, 63, 0, 0, 0);
-- Time Stop, Invisibility and Stealth Detection, Sneak
DELETE FROM creature_template_addon WHERE entry=20025;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`b2_0_sheath`,`b2_1_flags`,`emote`,`moveflags`,`auras`) VALUES
(20025,0,0,0,0,0,0,'34712 18950 22766'); -- also has 7939 Sneak (Rank 1)? (only in classic DBC)

-- Nozari (19933) and Andormu (19932)
-- dialogue takes 1 minute to complete and repeats after ~3 minutes
UPDATE creature_template SET MovementType=2 WHERE entry=19933;
UPDATE creature SET MovementType=2 WHERE id=19933;

DELETE FROM `creature_movement_template` WHERE `entry`=19933;
INSERT INTO `creature_movement_template` (`entry`,`pathid`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(19933,0,1,-8591.2,-4197.22,-208.877,2.21657,180000,1993301);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1993301;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1993301,0,0,0,0,0,0,0,0,2000000431,0,0,0,0,0,0,0,'Nozari - say 1'),
(1993301,4,0,0,0,0,19932,10,0,2000000432,0,0,0,0,0,0,0,'Andormu - say 1'),
(1993301,10,0,0,0,0,0,0,0,2000000433,0,0,0,0,0,0,0,'Nozari - say 2'),
(1993301,14,0,0,0,0,19932,10,0,2000000434,0,0,0,0,0,0,0,'Andormu - say 2'),
(1993301,21,0,0,0,0,19932,10,0,2000000435,0,0,0,0,0,0,0,'Andormu - say 3'),
(1993301,26,0,0,0,0,0,0,0,2000000436,0,0,0,0,0,0,0,'Nozari - say 3'),
(1993301,34,0,0,0,0,19932,10,0,2000000437,0,0,0,0,0,0,0,'Andormu - say 4'),
(1993301,39,0,0,0,0,19932,10,0,2000000438,0,0,0,0,0,0,0,'Andormu - say 5'),
(1993301,45,0,0,0,0,0,0,0,2000000439,0,0,0,0,0,0,0,'Nozari - say 4'),
(1993301,49,0,0,0,0,19932,10,0,2000000440,0,0,0,0,0,0,0,'Andormu - say 6'),
(1993301,60,0,0,0,0,0,0,0,2000005706,0,0,0,0,0,0,0,'Andormu - say 7'); -- pre-existing "%s nods." 

DELETE FROM db_script_string WHERE entry BETWEEN 2000000431 AND 2000000440;
INSERT INTO db_script_string (entry, content_default, emote) VALUES
(2000000431,'Fascinating. What is it, Andormu?',6),
(2000000432,'Something very, very disturbing. We''re starting to see more of them across the timeways.',1),
(2000000433,'Hrm, are they tampering with timeways?',6),
(2000000434,'Nozari, I''m not talking about a greedy wizard looking to improve his station in life by making a small adjustment to the past.',274),
(2000000435,'These beings aren''t giving themselves the winning numbers for the Stormwind lottery, dear.',1),
(2000000436,'I hate it when you speak to me in that manner. I am your equal in every way, brother. Remember that the next time you are trapped amidst a temporal vortex, crying for help.',1),
(2000000437,'My apologies, Nozari. I have been a bit ''on edge'' as of late. These creatures are attempting to alter the timeways.',273),
(2000000438,'You do recall the last time that this occurred, yes? Let us hope that the master need not be involved.',1),
(2000000439,'Shall we?',6),
(2000000440,'Absolutely not. We must not place ourselves at risk. With the master away, we are all that is in place to keep the stream intact. Others are due to arrive any moment now. Heroes and adventurers from Azeroth...',1);

-- Custodian of Time (19950)
UPDATE creature_template SET SpeedWalk=(4/2.5), SpeedRun=(8/7), UnitFlags=33536 WHERE entry=19950;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1995001,1995002);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1995001,0,15,34786,0,0,20026,10,1,0,0,0,0,0,0,0,0,'Custodian of Time - cast Temporal Analysis on Darkwater Crocolisk Specimen'),

(1995002,2,0,0,0,0,0,0,0,2000000441,0,0,0,0,0,0,0,'Custodian of Time - say 1'),
(1995002,3,15,34786,0,0,20053,10,1,0,0,0,0,0,0,0,0,'Custodian of Time - cast Temporal Analysis on Lordaeron Sentry Specimen'),
(1995002,7,0,0,0,0,0,0,0,2000000442,2000000443,2000000444,2000000445,0,0,0,0,'Custodian of Time - random say 2');

-- near Black Morass entrance
DELETE FROM creature_addon WHERE guid=23462;
INSERT INTO `creature_addon` (`guid`,`mount`,`bytes1`,`b2_0_sheath`,`b2_1_flags`,`emote`,`moveflags`,`auras`) VALUES
(23462,0,0,0,0,69,0,'');
UPDATE creature SET MovementType=2 WHERE guid=23462;
DELETE FROM `creature_movement` WHERE `id`=23462;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(23462,1,-8706.25,-4264.190,-209.417,4.015,5000,1995001);

-- patroling group of two near Old Hillsbrad/Escape from Durnholde entrance
-- missing spawn added (free guid used)
REPLACE INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(16398, 19950, 1, 1, 0, 0, -8425.29, -4193.42, -207.737, 2.45749, 600, 600, 0, 0, 6986, 100, 0, 0);

UPDATE creature SET orientation=2.45749 WHERE guid=23459;
DELETE FROM creature_linking WHERE guid=16398;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(16398,23459,512); -- follow

DELETE FROM db_script_string WHERE entry IN (2000000441,2000000442,2000000443,2000000444,2000000445);
INSERT INTO db_script_string (entry, content_default, emote, type) VALUES
(2000000441,'%s examines the specimen.',0,2),
(2000000442,'I can''t get a reading... Something is interfering...',1,0),
(2000000443,'This specimen is fading from existence. Something or someone is altering the timeway.',1,0),
(2000000444,'We must dispatch another watcher. Balance must be maintained...',1,0),
(2000000445,'Have the Scale of Sands been made aware?',6,0);

SET @GUID := 23459;
UPDATE `creature` SET `position_x`=-8426.982,`position_y`=-4192.087,`position_z`=-208.0537, `MovementType`=2 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-8426.982,-4192.087,-208.0537,100,0,0),
(@GUID,2,-8432.607,-4181.583,-208.5784,100,0,0),
(@GUID,3,-8432.754,-4170.218,-207.8044,100,0,0),
(@GUID,4,-8435.384,-4157.085,-207.8569,100,0,0),
(@GUID,5,-8438.082,-4143.07,-208.0676,100,0,0),
(@GUID,6,-8440.17,-4133.51,-208.5932,100,0,0),
(@GUID,7,-8436.33,-4118.632,-208.5843,100,0,0),
(@GUID,8,-8428.026,-4112.089,-208.429,100,0,0),
(@GUID,9,-8415.842,-4100.21,-207.9971,100,0,0),
(@GUID,10,-8408.473,-4091.939,-208.1778,100,0,0),
(@GUID,11,-8401.16,-4080.581,-208.5843,100,0,0),
(@GUID,12,-8407.814,-4061.775,-208.5843,100,0,0),
(@GUID,13,-8407.814,-4061.775,-208.5843,1.709582,9000,1995002),
(@GUID,14,-8401.16,-4080.581,-208.5843,100,0,0),
(@GUID,15,-8396.073,-4068.646,-208.5843,100,0,0),
(@GUID,16,-8389.152,-4068.616,-208.5843,100,0,0),
(@GUID,17,-8376.785,-4072.117,-208.2261,100,0,0),
(@GUID,18,-8370.176,-4062.455,-208.423,100,0,0),
(@GUID,19,-8376.122,-4052.045,-208.3791,100,0,0),
(@GUID,20,-8384.819,-4051.53,-208.5117,100,0,0),
(@GUID,21,-8401.637,-4053.551,-208.5843,100,0,0),
(@GUID,22,-8418.404,-4071.683,-208.5843,100,0,0),
(@GUID,23,-8433.013,-4079.631,-208.5843,100,0,0),
(@GUID,24,-8446.715,-4091.161,-208.585,100,0,0),
(@GUID,25,-8453.692,-4108.544,-208.5865,100,0,0),
(@GUID,26,-8460.116,-4121.121,-208.5877,100,0,0),
(@GUID,27,-8456.661,-4132.469,-208.5925,100,0,0),
(@GUID,28,-8454.265,-4146.001,-208.7233,100,0,0),
(@GUID,29,-8454.923,-4170.754,-210.5291,100,0,0),
(@GUID,30,-8458.02,-4185.088,-212.4077,100,0,0),
(@GUID,31,-8460.35,-4190.103,-212.9294,100,0,0),
(@GUID,32,-8463.82,-4186.78,-213.662,100,9000,1995002),
(@GUID,33,-8454.923,-4170.754,-210.5291,100,0,0),
(@GUID,34,-8454.265,-4146.001,-208.7233,100,0,0),
(@GUID,35,-8456.661,-4132.469,-208.5925,100,0,0),
(@GUID,36,-8460.116,-4121.121,-208.5877,100,0,0),
(@GUID,37,-8453.692,-4108.544,-208.5865,100,0,0),
(@GUID,38,-8446.715,-4091.161,-208.585,100,0,0),
(@GUID,39,-8433.013,-4079.631,-208.5843,100,0,0),
(@GUID,40,-8418.404,-4071.683,-208.5843,100,0,0),
(@GUID,41,-8401.763,-4053.566,-208.571,100,0,0),
(@GUID,42,-8384.819,-4051.53,-208.5117,100,0,0),
(@GUID,43,-8376.122,-4052.045,-208.3791,100,0,0),
(@GUID,44,-8370.176,-4062.455,-208.423,100,0,0),
(@GUID,45,-8376.785,-4072.117,-208.2261,100,0,0),
(@GUID,46,-8389.152,-4068.616,-208.5843,100,0,0),
(@GUID,47,-8396.073,-4068.646,-208.5843,100,0,0),
(@GUID,48,-8401.16,-4080.581,-208.5843,100,0,0),
(@GUID,49,-8408.473,-4091.939,-208.1778,100,0,0),
(@GUID,50,-8415.842,-4100.21,-207.9971,100,0,0),
(@GUID,51,-8428.026,-4112.089,-208.429,100,0,0),
(@GUID,52,-8436.33,-4118.632,-208.5843,100,0,0),
(@GUID,53,-8440.17,-4133.51,-208.5932,100,0,0),
(@GUID,54,-8438.082,-4143.07,-208.0676,100,0,0),
(@GUID,55,-8435.384,-4157.085,-207.8569,100,0,0),
(@GUID,56,-8432.754,-4170.218,-207.8044,100,0,0),
(@GUID,57,-8432.607,-4181.583,-208.5784,100,0,0),
(@GUID,58,-8426.982,-4192.087,-208.0537,100,0,0);

-- Time Watchers (19918)
UPDATE creature_template SET InhabitType=1, ExtraFlags=4096 WHERE entry=19918; -- 5

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1991801,1991802,1991803,1991804,1991805,1991806);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(1991801,0,23,19918,0,0,0,0,0,0,0,0,0,0,0,0,0,'Time Watcher - Morph to Time Watcher'),
(1991801,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Time Watcher - Set Fly On'),
(1991801,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Time Watcher - Set Run On'),

(1991802,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Time Watcher - Set Fly Off'),

(1991803,0,15,34699,0,0,0,0,0,0,0,0,0,0,0,0,0,'Time Watcher - Cast Time Cloak (Lordaeron Watchman)'),
(1991804,0,15,34702,0,0,0,0,0,0,0,0,0,0,0,0,0,'Time Watcher - Cast Time Cloak (Night Elf Wisp)'),
(1991805,0,23,20075,0,0,0,0,0,0,0,0,0,0,0,0,0,'Time Watcher - Morph to Darkwater Crocolisk');

-- clear out all old spawns and duplicates
DELETE FROM creature WHERE id=19918;

DELETE FROM creature_addon WHERE guid BETWEEN 23426 AND 23437;

SET @GUID := 23441;
DELETE FROM creature_addon WHERE guid=23441;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(@GUID,19918,1,1,0,0,-8466.481,-4224.501,-81.56217,0,30,30,0,0,0,0,0,2);
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-8466.481,-4224.501,-81.56217,100,250,1991801),
(@GUID,2,-8410.568,-4253.243,-81.56217,100,0,0),
(@GUID,3,-8380.046,-4284.756,-81.56217,100,0,0),
(@GUID,4,-8376.711,-4319.381,-81.56217,100,0,0),
(@GUID,5,-8379.716,-4351.704,-81.56217,100,0,0),
(@GUID,6,-8402.214,-4385.291,-81.56217,100,0,0),
(@GUID,7,-8418.699,-4405.963,-81.56217,100,0,0),
(@GUID,8,-8439.093,-4415.887,-81.56217,100,0,0),
(@GUID,9,-8470.392,-4417.467,-81.56217,100,0,0),
(@GUID,10,-8491.341,-4416.497,-81.56217,100,0,0),
(@GUID,11,-8502.537,-4415.046,-81.56217,100,0,0),
(@GUID,12,-8536.691,-4390.202,-81.56217,100,0,0),
(@GUID,13,-8566.372,-4354.708,-81.56217,100,0,0),
(@GUID,14,-8579.111,-4321.42,-81.56217,100,0,0),
(@GUID,15,-8552.403,-4233.023,-81.56217,100,0,0),
(@GUID,16,-8507.957,-4224.706,-81.56217,100,0,0);

SET @GUID := 23440;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(@GUID,19918,1,1,0,0,-8713.636,-4326.533,-60.83437,0,30,30,0,0,0,0,0,2);
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-8713.636,-4326.533,-60.83437,100,1000,1991801),
(@GUID,2,-8699.7,-4323.786,-49.46626,100,0,0),
(@GUID,3,-8662.251,-4326.158,-58.91071,100,0,0),
(@GUID,4,-8632.865,-4321.092,-69.32738,100,0,0),
(@GUID,5,-8606.589,-4315.761,-85.07739,100,0,0),
(@GUID,6,-8585.149,-4300.948,-98.04964,100,0,0),
(@GUID,7,-8540.388,-4259.448,-113.3552,100,0,0),
(@GUID,8,-8507.983,-4240.053,-121.9385,100,0,0),
(@GUID,9,-8460.989,-4236.288,-130.4941,100,0,0),
(@GUID,10,-8429.02,-4255.674,-130.7997,100,0,0),
(@GUID,11,-8410.482,-4288.9,-128.3829,100,0,0),
(@GUID,12,-8395.819,-4345.37,-130.7997,100,0,0),
(@GUID,13,-8418.614,-4385.142,-135.8275,100,0,0),
(@GUID,14,-8459.28,-4394.419,-137.1608,100,0,0),
(@GUID,15,-8489.916,-4391.627,-138.0774,100,0,0),
(@GUID,16,-8521.314,-4381.444,-141.0219,100,0,0),
(@GUID,17,-8548.512,-4354.828,-143.4941,100,0,0),
(@GUID,18,-8567.578,-4328.019,-146.633,100,0,0),
(@GUID,19,-8557.874,-4290.714,-148.8552,100,0,0),
(@GUID,20,-8478.622,-4249.154,-154.8031,100,0,0),
(@GUID,21,-8444.948,-4260,-153.1365,100,0,0),
(@GUID,22,-8434.602,-4288.784,-150.7198,100,0,0),
(@GUID,23,-8444.234,-4330.667,-144.581,100,0,0),
(@GUID,24,-8498.272,-4372.209,-144.0532,100,0,0),
(@GUID,25,-8541.456,-4354.249,-152.6643,100,0,0),
(@GUID,26,-8553.676,-4309.024,-157.3865,100,0,0),
(@GUID,27,-8545.231,-4288.306,-153.9143,100,0,0),
(@GUID,28,-8522.15,-4279.529,-150.442,100,0,0),
(@GUID,29,-8449.093,-4252.85,-129.8031,100,0,0),
(@GUID,30,-8416.661,-4232.987,-108.0531,100,0,0),
(@GUID,31,-8389.26,-4209.612,-87.05309,100,0,0),
(@GUID,32,-8365.473,-4195.317,-70.15017,100,0,0),
(@GUID,33,-8333.33,-4169.05,-70.15017,100,0,0);

SET @GUID := 23439;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(@GUID,19918,1,1,0,0,-8345.674,-4449.603,-91.66009,0,30,30,0,0,0,0,0,2);
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-8345.674,-4449.603,-91.66009,100,1000,1991801),
(@GUID,2,-8352.719,-4436.703,-82.4349,100,0,0),
(@GUID,3,-8360.686,-4405.598,-101.9071,100,0,0),
(@GUID,4,-8367.108,-4379.51,-115.6016,100,0,0),
(@GUID,5,-8372.076,-4331.29,-128.935,100,0,0),
(@GUID,6,-8375.418,-4288.263,-128.935,100,0,0),
(@GUID,7,-8396.816,-4257.064,-128.935,100,0,0),
(@GUID,8,-8434.114,-4227.781,-128.1016,100,0,0),
(@GUID,9,-8476.552,-4211.472,-128.935,100,0,0),
(@GUID,10,-8540.315,-4222.934,-149.4349,100,0,0),
(@GUID,11,-8571.526,-4233.976,-186.8793,100,0,0),
(@GUID,12,-8600.241,-4239.956,-209.7406,100,2000,1991802),
(@GUID,13,-8600.241,-4239.956,-209.7406,100,2000,1991805), -- Darkwater Crocolisk
(@GUID,14,-8683.259,-4244.825,-209.5197,100,0,0),
(@GUID,15,-8707.051,-4232.219,-209.4987,100,0,0),
(@GUID,16,-8735.112,-4211.69,-209.4987,100,0,0),
(@GUID,17,-8748.09,-4201.256,-209.4987,100,0,0),
(@GUID,18,-8770.922,-4163.406,-210.4801,100,500,1); -- despawn

SET @GUID := 23438;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(@GUID,19918,1,1,0,0,-8339.216,-4462.258,-98.89476,0,30,30,0,0,0,0,0,2);
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-8339.216,-4462.258,-98.89476,100,1000,1991801),
(@GUID,2,-8345.674,-4449.603,-91.66009,100,0,0),
(@GUID,3,-8352.132,-4436.947,-84.42542,100,0,0),
(@GUID,4,-8341.382,-4375.598,-110.0087,100,0,0),
(@GUID,5,-8357.161,-4300.493,-135.5087,100,0,0),
(@GUID,6,-8452.849,-4213.515,-169.3143,100,0,0),
(@GUID,7,-8578.646,-4245.913,-169.3143,100,0,0),
(@GUID,8,-8593.614,-4332.434,-172.6199,100,0,0),
(@GUID,9,-8532.17,-4405.241,-186.5921,100,0,0),
(@GUID,10,-8453.466,-4416.549,-202.1477,100,0,0),
(@GUID,11,-8408.371,-4412.034,-210.7587,100,2000,1991802),
(@GUID,12,-8408.371,-4412.034,-210.7587,100,2000,1991804), -- Night Elf Wisp
(@GUID,13,-8376.56,-4393.6,-207.944,100,0,0),
(@GUID,14,-8344.07,-4375.34,-206.403,100,0,0),
(@GUID,15,-8317.787,-4362.934,-209.8473,100,0,0),
(@GUID,16,-8297.435,-4357.035,-207.5282,100,0,0),
(@GUID,17,-8251.496,-4344.575,-206.164,100,0,0),
(@GUID,18,-8229.64,-4339.97,-201.2623,100,0,0),
(@GUID,19,-8218.435,-4325.09,-198.8062,100,0,0),
(@GUID,20,-8195.749,-4287.914,-191.2132,100,0,0),
(@GUID,21,-8186.093,-4258.088,-183.4133,100,0,0),
(@GUID,22,-8186.152,-4239.236,-179.0623,100,0,0),
(@GUID,23,-8184.124,-4201.075,-172.3666,100,0,0),
(@GUID,24,-8173.985,-4179.917,-166.8782,100,0,0),
(@GUID,25,-8167.483,-4164.844,-164.7283,100,500,1); -- despawn

SET @GUID := 23436;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(@GUID,19918,1,1,0,0,-8336.925,-4462.465,-99.65054,0,30,30,0,0,0,0,0,2);
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-8336.925,-4462.465,-99.65054,100,1000,1991801),
(@GUID,2,-8345.674,-4449.603,-91.66009,100,0,0),
(@GUID,3,-8354.423,-4436.74,-83.66964,100,0,0),
(@GUID,4,-8359.87,-4363.259,-125.9752,100,0,0),
(@GUID,5,-8355.114,-4333.078,-148.2252,100,0,0),
(@GUID,6,-8354.976,-4313.06,-163.9197,100,0,0),
(@GUID,7,-8362.486,-4290.727,-179.8363,100,0,0),
(@GUID,8,-8375.349,-4257.051,-205.2805,100,2000,1991802),
(@GUID,9,-8375.349,-4257.051,-205.2805,100,2000,1991803), -- Lordaeron Watchman
(@GUID,10,-8416.942,-4226.259,-210.404,100,0,0),
(@GUID,11,-8433.847,-4210.986,-209.974,100,0,0),
(@GUID,12,-8447.16,-4193.475,-211.0348,100,0,0),
(@GUID,13,-8447.557,-4159.843,-208.9591,100,0,0),
(@GUID,14,-8442.453,-4124.033,-208.5881,100,0,0),
(@GUID,15,-8424.839,-4097.409,-208.5843,100,0,0),
(@GUID,16,-8405.975,-4077.361,-208.5843,100,0,0),
(@GUID,17,-8369.048,-4058.837,-208.3565,100,0,0),
(@GUID,18,-8339.433,-4050.101,-207.7644,100,500,1); -- despawn

/*
-- wotlk+ only?
SET @GUID := 23437;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(@GUID,19918,1,1,0,0,-8332,-4460.768,-98.79179,0,30,30,0,0,0,0,0,2);
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(@GUID,1,-8332,-4460.768,-98.79179,0,0,1991801),
(@GUID,2,-8345.674,-4449.603,-91.66009,100,0,0),
(@GUID,3,-8359.348,-4438.438,-84.52838,100,0,0),
(@GUID,4,-8385.378,-4431.861,-93.77838,100,0,0),
(@GUID,5,-8408.063,-4420.892,-104.9451,100,0,0),
(@GUID,6,-8441.084,-4419.951,-115.6673,100,0,0),
(@GUID,7,-8462.368,-4420.853,-124.2228,100,0,0),
(@GUID,8,-8505.504,-4417.907,-141.3894,100,0,0),
(@GUID,9,-8543.364,-4413.641,-153.9727,100,0,0),
(@GUID,10,-8578.372,-4406.426,-162.2782,100,0,0),
(@GUID,11,-8617.298,-4398.667,-172.0283,100,0,0),
(@GUID,12,-8651.545,-4405.353,-178.2505,100,0,0),
(@GUID,13,-8651.545,-4405.353,-178.2505,100,0,0);
*/

