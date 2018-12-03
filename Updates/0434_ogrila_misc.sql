-- ---------------------------------------------------------------------------------
-- Add Revered Aura that triggers a reaction from Ogri'la Ogres when nearby
-- ---------------------------------------------------------------------------------
DELETE FROM spell_area WHERE spell=41523; -- Revered Ogri'la Aura
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `condition_id`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(41523, 3786, 0, 0, 0, 10128, 0, 0, 2, 1);

-- ---------------------------------------------------------------------------------
-- Add Revered Aura that triggers a reaction from Skyguard NPCs when nearby
-- ---------------------------------------------------------------------------------
DELETE FROM spell_area WHERE spell=41574; -- Revered Skyguard Aura
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `condition_id`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(41574, 3964, 0, 0, 0, 10150, 0, 0, 2, 1);

-- ---------------------------------------------------------------------------------
-- Targets for Corrupting Plague s.40350 cast by Wrath Corruptor c.22254
-- ---------------------------------------------------------------------------------
DELETE FROM spell_script_target WHERE entry=40350;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40350,1,22180,0),
(40350,1,22181,0),
(40350,1,22175,0);

-- ---------------------------------------------------------------------------------
-- Fix Simon Game Bases being clickable. They should all have faction 114
-- ---------------------------------------------------------------------------------
UPDATE gameobject_template SET faction=114 WHERE name LIKE 'Simon Game Base%';

-- ---------------------------
-- Torki c.23362
-- ---------------------------
UPDATE creature SET MovementType=2 WHERE id=23362;
DELETE FROM `creature_movement_template` WHERE `entry`=23362;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23362,1,2289.181,7274.714,366.6279,40000,0,0.1396263),
(23362,2,2289.181,7274.714,366.6279,12000,2336201,3.281219);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2336201);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2336201,2,28,8,0,0,0,0,0,0,0,0,0,'Torki - Set StandState Kneel',0,0,0,0),
(2336201,11,28,0,0,0,0,0,0,0,0,0,0,'Torki - Set StandState Stand',0,0,0,0);

-- ---------------------------
-- Jho'nass c.23428
-- ---------------------------
UPDATE creature SET MovementType=2 WHERE id=23428;
DELETE FROM `creature_movement_template` WHERE `entry`=23428;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23428,1,2280.449,7327.052,366.6509,0,0,100),
(23428,2,2278,7327.728,366.8094,15000,2342801,100),
(23428,3,2282.266,7325.315,366.4423,0,0,100),
(23428,4,2284.133,7323.352,366.5005,120000,0,5.5676);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2342801);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2342801,1,28,8,0,0,0,0,0,0,0,0,0,'Jho''nass - Set StandState Kneel',0,0,0,0),
(2342801,14,28,0,0,0,0,0,0,0,0,0,0,'Jho''nass - Set StandState Stand',0,0,0,0);

-- ---------------------------
-- Skyguard Navigator c.22982
-- ---------------------------
-- 79866 Moves back and forth on the launch platform
UPDATE creature SET MovementType=2, spawndist=0 WHERE guid=79866;
DELETE FROM `creature_movement` WHERE `id`=79866;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(79866,1,2522.945,7322.241,373.4666,15000,2298203,6.161012),
(79866,2,2539.765,7322.653,373.4608,22000,2298204,3.001966);

-- 79868 has a mug in his hand and interacts with the Skyguard Scouts on one of their paths
DELETE FROM creature_equip_template WHERE entry=55616 AND equipentry1=2705;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`) VALUES 
(55616, 2705);

UPDATE creature SET MovementType=2, spawndist=0, equipment_id=55616 WHERE guid=79868;
DELETE FROM `creature_movement` WHERE `id`=79868;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(79868,1,2514.656,7355.287,380.8192,10000,1092,2.932153);

DELETE FROM creature_movement_template WHERE entry=22982 AND pathId IN(1,2,3);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`,`comment`) VALUES
(22982,1,1,2510.661,7350.397,380.8192,0,0,100,'Move towards launch playform (Path started by c.22980, guid 161467)'),
(22982,1,2,2517.427,7346.39,381.0936,0,0,100,NULL),
(22982,1,3,2517.84,7345.002,381.1198,1000,2298205,100,NULL),

(22982,2,1,2517.84,7345.002,381.1198,10000,1092,100,'Do drink emote until Skyguard Scouts come close (Triggered by c.22980, guid 161467)'),

(22982,3,1,2517.84,7345.002,381.1198,33000,2298206,100,'Do texts, emotes and then return to spawn (Triggered by c.22980, guid 161467)'),
(22982,3,2,2510.577,7351.333,380.8192,0,0,100,NULL),
(22982,3,3,2511.943,7355.005,380.8192,0,0,100,NULL),
(22982,3,4,2515.493,7354.682,380.8192,0,0,100,NULL),
(22982,3,5,2514.656,7355.287,380.8192,1000,2298207,2.932153,NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2298203 AND 2298207;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2298203,0,1,397,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - OneShotPointNoSheathe',0,0,0,0),
(2298203,3,1,113,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - OneShotSaluteNoSheath',0,0,0,0),
(2298203,9,1,397,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - OneShotPointNoSheathe',0,0,0,0),

(2298204,11,1,397,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - OneShotPointNoSheathe',0,0,0,0),

(2298205,0,20,2,2,0,0,0,0,0,0,0,0,'Skyguard Navigator - Start PathId 2',0,0,0,0),

(2298206,0,0,0,0,0,2000001605,0,0,0,0,0,0,'Skyguard Navigator - %s spills his beverage.',0,0,0,0),
(2298206,1,0,0,0,0,2000001606,0,0,0,0,0,0,'Skyguard Navigator - SKYGUARD SCOUT!!',0,0,0,0),
(2298206,8,1,69,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - STATE_USESTANDING',0,0,0,0),
(2298206,12,0,0,0,0,2000001607,0,0,0,0,0,0,'Skyguard Navigator - %s cleans up the mess while muttering curses about the Skyguard hotshot pilots.',0,0,0,0),
(2298206,33,1,0,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - ONESHOT_NONE',0,0,0,0),

(2298207,1,20,2,0,0,0,0,0,0,0,0,0,'Skyguard Navigator - Start PathId 0',0,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1092);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1092,0,1,92,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_EAT_NOSHEATHE',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001605 AND 2000001607;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001605, '%s spills his beverage.', 0, 2, 0, 0, 'Skyguard Navigator (Entry: 22982)'),
(2000001606, 'SKYGUARD SCOUT!!', 0, 1, 0, 5, 'Skyguard Navigator (Entry: 22982)'),
(2000001607, '%s cleans up the mess while muttering curses about the Skyguard hotshot pilots.', 0, 2, 0, 0, 'Skyguard Navigator (Entry: 22982)');


-- ---------------------------
-- Tork c.23347
-- ---------------------------
UPDATE creature SET MovementType=2 WHERE id=23347;
DELETE FROM `creature_movement_template` WHERE `entry`=23347;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`,`comment`) VALUES
(23347,0,1,2354.203,7318.01,365.7148,1000,2334701,4.572762,'Home - Random Movement'),

(23347,1,1,2335.927,7303.471,365.6216,0,0,100,NULL),
(23347,1,2,2331.868,7304.958,365.7195,11000,2334702,100,'Random Text'),

(23347,2,1,2354.203,7318.01,365.7148,0,0,100,'Dummy point for condition'),
(23347,2,2,2354.203,7318.01,365.7148,1000,2334703,100,'Skyguard Scouts incoming, start moving. (Path started by c.22980, guid 161467)'),
(23347,2,3,2316.021,7315.667,367.1622,0,0,100,NULL),
(23347,2,4,2302.624,7304.03,366.0132,0,0,100,NULL),
(23347,2,5,2300.027,7277.62,366.0656,0,0,100,NULL),
(23347,2,6,2328.166,7265.776,366.1289,0,0,100,NULL),
(23347,2,7,2349.599,7257.991,366.1424,10000,2334704,100,'Texts and then back to home');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2334701 AND 2334704;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2334701,0,20,1,2,0,0,0,0,0,0,0,8,'Tork - Random Movement Around Home',0,0,0,0),
(2334701,88,34,462,0,0,0,0,0,0,0,0,8,'Tork - Terminate script if Tork is currently on Skyguard Scout greeting path',0,0,0,0),
(2334701,89,25,1,0,0,0,0,0,0,0,0,0,'Tork - Set Run On',0,0,0,0),
(2334701,90,20,2,1,0,0,0,0,0,0,0,0,'Tork - Set PathId 1',0,0,0,0),

(2334702,1,0,0,0,0,2000001608,2000001609,2000001610,2000001611,0,0,0,'Tork - Random text',0,0,0,0),
(2334702,9,25,0,0,0,0,0,0,0,0,0,0,'Tork - Set Run Off',0,0,0,0),
(2334702,10,20,2,0,0,0,0,0,0,0,0,0,'Tork - Set PathId 0',0,0,0,0),

(2334703,0,25,1,0,0,0,0,0,0,0,0,0,'Tork - Set Run On',0,0,0,0),
(2334703,1,0,0,0,0,2000001612,0,0,0,0,0,0,'Tork - The Skyguard are here! The Skyguard are here!',0,0,0,0),

(2334704,0,25,0,0,0,0,0,0,0,0,0,0,'Tork - Set Run Off',0,0,0,0),
(2334704,1,0,0,0,0,2000001613,0,0,0,0,0,0,'Tork - %s cheers!',0,0,0,0),
(2334704,1,0,0,0,0,2000001614,0,0,0,0,0,0,'Tork - Woo hoo! Go Skyguard!',0,0,0,0),
(2334704,5,20,2,0,0,0,0,0,0,0,0,0,'Tork - Set PathId 0',0,0,0,0),
(2334704,25,21,0,0,0,0,0,0,0,0,0,0,'Tork - Set Active Object False',0,0,0,0); -- Takes about 21sec for him to reach home

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001608 AND 2000001614;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001608, 'Have we taken enough magical flasks to join the Skyguard yet?', 0, 0, 0, 396, 'Tork (Entry: 23347)'),
(2000001609, 'The Skyguard need our help! We need to get more magical flasks.', 0, 0, 0, 396, 'Tork (Entry: 23347)'),
(2000001610, 'We can''t wait to join the Skyguard. We just need to take a few more magical flasks, right?', 0, 0, 0, 396, 'Tork (Entry: 23347)'),
(2000001611, 'When are we going to get some more magical flasks?', 0, 0, 0, 396, 'Tork (Entry: 23347)'),

(2000001612, 'The Skyguard are here! The Skyguard are here!', 0, 0, 0, 15, 'Tork (Entry: 23347)'),
(2000001613, '%s cheers!', 0, 2, 0, 15, 'Tork (Entry: 23347)'),
(2000001614, 'Woo hoo! Go Skyguard!', 0, 0, 0, 15, 'Tork (Entry: 23347)');

-- ----------------------------------
-- Skyguard Pyrotechnician c.23208
-- ----------------------------------
UPDATE creature SET MovementType=2, spawndist=0 WHERE id=23208;
DELETE FROM `creature_movement_template` WHERE `entry`=23208;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23208,0,1,2498.578,7361.755,380.3272,0,0,100),
(23208,0,2,2496.463,7362.674,380.3272,10000,2320801,100),
(23208,0,3,2502.412,7363.305,380.4442,0,0,100),
(23208,0,4,2505.463,7362.939,380.4442,0,0,100),
(23208,0,5,2506.558,7363.419,380.4442,40000,0,4.921828),
(23208,0,6,2506.558,7363.419,380.4442,10000,2320801,2.338741),
(23208,0,7,2506.558,7363.419,380.4442,7000,0,5.131268);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2320801);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2320801,0,1,69,0,0,0,0,0,0,0,0,0,'Skyguard Pyrotechnician - STATE_USESTANDING',0,0,0,0),
(2320801,10,1,0,0,0,0,0,0,0,0,0,0,'Skyguard Pyrotechnician - ONESHOT_NONE',0,0,0,0);


