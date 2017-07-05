-- -------------------------- VoA ONLY
DELETE FROM dbscripts_on_event WHERE id=14461;
UPDATE `creature_template` SET `MinLevel`='70', `MaxLevel`='70', `MinLevelHealth`='6986', `MaxLevelHealth`='6986', `Expansion`='1' WHERE `Entry`=22269;
DELETE FROM dbscripts_on_creature_movement WHERE id=22268;
-- ---------------------------

-- ------------------------
-- Quest Script 10724
-- ------------------------

UPDATE creature_template SET InhabitType=7,UnitFlags=33554432,MovementType=2,SpeedWalk=(2.5/2.5),SpeedRun=(8/7) WHERE entry=22460; -- Spirit should fly at all times
UPDATE creature_template SET MovementType=0 WHERE entry=22268; -- Leokk idle movement
UPDATE creature_template SET ModelId1=20851,UnitFlags=33817344 WHERE entry=22269; -- Black Drake Corpse
UPDATE creature SET spawntimesecsmin=5, spawntimesecsmax=5 WHERE id=22268; -- Leokk should respawn right away after finishing his path
UPDATE quest_template SET ReqSourceId1=31755,ReqSourceCount1=1,DetailsEmote1=1,DetailsEmote2=1,IncompleteEmote=1,CompleteEmote=1,OfferRewardEmote1=1,OfferRewardEmote2=1,CompleteScript=10724 WHERE entry=10724;

-- Position and radius is based on retail observations
UPDATE gameobject_template SET data1=48 WHERE entry=300122;
UPDATE gameobject SET position_x=3676.030029,position_y=5279.729980,position_z=6 WHERE id=300122 AND guid=99984;


-- Black Drake Corpse aura
DELETE FROM creature_template_addon WHERE entry=22269;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(22269,0,0,1,16,0,0,'29266');

-- Leokk path
DELETE FROM `creature_movement_template` WHERE `entry`=22268 AND `pathId`=0;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22268,1,3673.29,5283.6,17.66364,0,0,0),
(22268,2,3673.633,5292.015,10.89996,0,0,0),
(22268,3,3682.11,5298.973,3.289636,0,0,0),
(22268,4,3691.786,5297.917,-0.32148,0,0,0),
(22268,5,3700.676,5294.871,-4.54551,0,0,0),
(22268,6,3703.979,5303.833,-2.918482,0,0,0),
(22268,7,3703.325,5310.529,-1.402134,0,0,0),
(22268,8,3696.596,5317.756,2.514532,0,0,0),
(22268,9,3695.375,5328.836,5.903421,0,0,0),
(22268,10,3699.215,5342.905,6.655784,0,0,0),
(22268,11,3713.12,5363.667,16.40057,0,0,0),
(22268,12,3713.267,5380.589,21.87279,0,0,0),
(22268,13,3693.277,5418.31,33.51168,0,0,0),
(22268,14,3682.029,5448.403,43.98391,0,0,0),
(22268,15,3667.688,5485.795,61.92836,1000,1,100);

-- Spirit path
DELETE FROM `creature_movement_template` WHERE `entry`=22460;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22460,1,3671.992,5285.056,16.39916,1000,2246001,5.320172);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2246001);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2246001,0,32,1,0,0,0,0,0,0,0,0,0,'Spirit - Pause Waypoints',0,0,0,0),
(2246001,0,25,1,0,0,0,0,0,0,22268,10,0,'Leokk - Set Run On',0,0,0,0),
(2246001,0,21,1,0,0,0,0,0,0,22268,10,0,'Leokk - Set Active Object On',0,0,0,0),
(2246001,3,0,0,0,0,2000001221,0,0,0,0,0,0,'Spirit - %s uses the key to open the cage.',0,0,0,0),
(2246001,3,13,0,0,0,0,0,0,0,185296,10,1,'Open Battered Cage',0,0,0,0),
(2246001,4,35,1000,0,0,0,0,0,0,0,0,0,'Spirit - Send AI Event 1000 to Self',0,0,0,0),
(2246001,6,20,2,0,0,0,0,0,0,22268,50,0,'Leokk - Set Waypoint Movement',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001221 AND 2000001223;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001221, '%s uses the key to open the cage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Spirit (Entry: 22460)'),
(2000001222, 'I think I hear him coming now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'Rexxar (Entry: 21984)'),
(2000001223, 'The wyvern drops a black drake corpse on the ground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Leokk (Entry: 22268)');

-- -------------------------
-- Completescript 10724
-- -------------------------

DELETE FROM `creature_movement_template` WHERE `entry`=22268 AND `pathId`=1;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
-- To Rexxar
(22268,1,1,2551.924,5949.199,105.8356,0,0,0),
(22268,2,1,2552.064,5949.409,115.8324,0,0,0),
(22268,3,1,2552.128,5949.505,120.397,0,0,0),
(22268,4,1,2522.718,5958.962,154.9977,0,0,0),
(22268,5,1,2513.688,5973.598,165.5716,0,0,0),
(22268,6,1,2497.905,5985.669,178.4327,0,0,0),
(22268,7,1,2468.585,5991.795,184.9883,0,0,0),
(22268,8,1,2440.989,6011.954,184.9883,0,0,0),
(22268,9,1,2433.256,6029.898,184.9883,0,0,0),
(22268,10,1,2422.039,6053.198,184.9883,0,0,0),
(22268,11,1,2407.622,6072.446,184.9883,0,0,0),
(22268,12,1,2377.442,6068.353,174.5439,0,0,0),
(22268,13,1,2348.068,6050.397,161.6828,0,0,0),
(22268,14,1,2316.392,6040.771,153.7661,0,0,0),
(22268,15,1,2293.12,6040.279,147.3495,19000,2226801,100),

-- From Rexxar
(22268,16,1,2293.966,6040.37,147.5389,0,0,0),
(22268,17,1,2272.728,6036.054,151.011,0,0,0),
(22268,18,1,2240.564,6047.288,154.4554,0,0,0),
(22268,19,1,2223.935,6082.593,153.7888,0,0,0),
(22268,20,1,2217.651,6123.886,151.7887,0,0,0),
(22268,21,1,2241.369,6157.913,151.3165,0,0,0),
(22268,22,1,2280.393,6184.066,147.5389,0,0,0),
(22268,23,1,2321.507,6173.471,147.5389,0,0,0),
(22268,24,1,2368.181,6164.59,147.5389,0,0,0),
(22268,25,1,2407.98,6157.29,147.5389,0,0,0),
(22268,26,1,2450.048,6158.162,147.5389,0,0,0),
(22268,27,1,2485.996,6175.456,141.9556,0,0,0),
(22268,28,1,2513.795,6199.398,138.9,0,0,0),
(22268,29,1,2536.098,6235.035,129.7056,1000,1,100);

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10724;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10724,0,10,22268,300000,0,1,0,0,0,0,0,8,'Summon Leokk',2554.141,5948.822,116.6123,6.008636),
(10724,1,20,2,1,0,0,0,0,0,22268,300,0,'Prisoner of the Bladespire - Leokk - Set Waypoint Movement',0,0,0,0),
(10724,1,3,0,0,0,0,0,0,0,0,0,0,'Rexxar - Set Facing',0,0,0,5.986479),
(10724,3,0,0,0,0,2000001222,0,0,0,0,0,0,'Rexxar - I think I hear him coming now.',0,0,0,0),
(10724,12,3,0,0,0,0,0,0,0,0,0,0,'Rexxar - Set Facing 2',0,0,0,0.3490658),
(10724,20,36,1,0,0,0,0,0,0,0,0,0,'Rexxar - Reset Facing',0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2226801);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2226801,1,0,0,0,0,2000001223,0,0,0,0,0,0,'Leokk - The wyvern drops a black drake corpse on the ground.',0,0,0,0),
(2226801,1,10,22269,22000,0,1,0,0,0,0,0,8,'Summon Black Drake Corpse',2294.013,6040.33,142.4553,4.153883),
(2226801,3,36,0,0,0,0,0,0,0,21984,10,1,'Leokk - Face Rexxar',0,0,0,0),
(2226801,3,1,34,0,0,0,0,0,0,0,0,0,'Leokk - OneShotWoundCritical',0,0,0,0),
(2226801,3,16,755,0,0,0,0,0,0,0,0,0,'Leokk - Play Sound ID 755',0,0,0,0),
(2226801,19,16,755,0,0,0,0,0,0,0,0,0,'Leokk - Play Sound ID 755',0,0,0,0);

