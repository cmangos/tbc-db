-- You, Robot q.10248

DELETE FROM creature WHERE id=19851; -- Delete static Negatron spawn
UPDATE creature SET spawntimesecsmin=120, spawntimesecsmax=120 WHERE id=19849; -- Scrap Reaver spawntime should be 2min
UPDATE creature_template SET MovementType=2, SpeedWalk=(7/2.5), SpeedRun=(12/7), UnitFlags=33024 WHERE entry=19851; -- Negatron
UPDATE quest_template SET ReqCreatureOrGOId1=19851, ReqCreatureOrGOCount1=1, SpecialFlags=0, `RequestItemsText`='What did you think?  Still needs some tweaking, eh?', `DetailsEmote1`='2', `DetailsEmote2`='5', `DetailsEmote3`='1', `DetailsEmoteDelay2`='1000', `DetailsEmoteDelay3`='1000', `IncompleteEmote`='6', `CompleteEmote`='6', `OfferRewardEmote1`='15', `OfferRewardEmote2`='11' WHERE entry=10248; -- You, Robot

-- Repair spell was removed in 2.1
-- http://www.wowhead.com/quest=10248/you-robot#comments:id=5468:reply=7907
-- "The Scrap Reaver X6000 from the quest, You, Robot, no longer has its Repair ability." - http://wowwiki.wikia.com/wiki/Patch_2.1.0
UPDATE creature_template_spells SET spell3=0 WHERE entry=19849;

-- Fire Gobs at the rocket
DELETE FROM gameobject WHERE (guid BETWEEN 200042 AND 200047) AND id=183987;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES 
('200042', '183987', '530', '3031.676', '3671.527', '180.868', '0.6981314', '0', '0', '0.34202', '0.9396927', '-18000000', '-18000000', '255', '1'),
('200043', '183987', '530', '3042.363', '3667.038', '180.6221', '4.747296', '0', '0', '-0.6946583', '0.7193398', '-18000000', '-18000000', '255', '1'),
('200044', '183987', '530', '3038.23', '3670.395', '197.7891', '6.073746', '0', '0', '-0.1045284', '0.9945219', '-18000000', '-18000000', '255', '1'),
('200045', '183987', '530', '3029.779', '3677.493', '158.6499', '1.343901', '0', '0', '0.6225138', '0.7826088', '-18000000', '-18000000', '255', '1'),
('200046', '183987', '530', '3047.645', '3668.254', '158.137', '0.01745246', '0', '0', '0.00872612', '0.9999619', '-18000000', '-18000000', '255', '1'),
('200047', '183987', '530', '3030.144', '3656.796', '159.4943', '0.157079', '0', '0', '0.07845879', '0.9969174', '-18000000', '-18000000', '255', '1');

-- Event used in spell 34630
DELETE FROM `dbscripts_on_event` WHERE `id` IN(12821);
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(12821,0,10,19851,300000,0,1,0,0,0,0,0,8,'(You, Robot script) - Summon Negatron',3147.46,3237.553,99.20737,1.906135),
(12821,0,1,0,0,0,0,0,0,0,19832,40,0,'Doctor Vomisa, Ph.T. - ONESHOT_NONE',0,0,0,0),
(12821,0,20,2,5,0,0,0,0,0,19832,40,0,'Doctor Vomisa, Ph.T. - Start moving on PathId 5',0,0,0,0);

DELETE FROM `dbscripts_on_spell` WHERE `id` IN(34630);
INSERT INTO `dbscripts_on_spell` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(34630,0,5,46,33554432,0,0,0,0,0,0,0,6,'Scrap Reaver - Remove UNIT_FLAG_NOT_SELECTABLE',0,0,0,0);

-- Negatron path
DELETE FROM `creature_movement_template` WHERE `entry`=19851;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19851,1,3137.208,3268.273,110.6914,0,0,0),
(19851,2,3128.09,3294.451,107.8791,0,0,0),
(19851,3,3121.032,3314.781,110.843,0,0,0),
(19851,4,3113.216,3336.411,107.6493,0,0,0),
(19851,5,3104.828,3361.31,104.6493,0,0,0),
(19851,6,3097.521,3381.599,105.8654,25000,1985101,1.99739),

(19851,7,3097.521,3381.599,105.8654,0,1985102,1.99739),
(19851,8,3053.557,3421.556,111.0071,0,0,0),
(19851,9,3051.793,3455.126,118.6307,0,0,0),
(19851,10,3034.655,3492.145,134.7354,0,0,0),
(19851,11,3024.468,3515.749,143.7715,0,0,0),
(19851,12,3028.9,3538.7,144.3606,0,0,0),
(19851,13,3036.742,3573.276,143.1832,0,0,0),

(19851,14,3049.169,3585.138,143.4133,0,1985103,100),
(19851,15,3044.2,3622.36,143.269,0,0,0),
(19851,16,3037.824,3659.001,143.5387,12000,1985104,100),
(19851,17,3037.824,3659.001,143.5387,1000,1985105,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1985101 AND 1985105;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1985101,0,0,0,0,0,2000001331,0,0,0,0,0,0,'Negatron - I AM DEATH!  PREPARE YOUR TOWN FOR ANNIHILATION!',0,0,0,0),
(1985101,6,5,46,256,0,0,0,0,0,0,0,0,'Negatron - Remove UNIT_FLAG_IMMUNE_TO_PLAYER',0,0,0,0),
(1985101,6,26,0,0,0,0,0,0,0,19849,40,1,'Negatron - Attack Scrap Reaver',0,0,0,0),

(1985102,0,0,0,0,0,2000001332,0,0,0,0,0,0,'Negatron - YOUR SAD ATTEMPT AT CREATING A FEL REAVER TO STOP ME HAS FAILED!  NOW, ON TO AREA 52!',0,0,0,0),
(1985102,0,2,46,33536,0,0,0,0,0,0,0,0,'Negatron - Set UnitFlags 33536',0,0,0,0),

(1985103,0,15,34427,0,0,0,0,0,0,0,0,0,'Negatron - Cast Ethereal Teleport',0,0,0,0),
(1985103,0,3,0,0,0,0,0,0,0,0,0,8,'Negatron - Teleport',3044.2,3622.36,143.269,0.7621227),
(1985103,0,25,1,0,0,0,0,0,0,19737,70612,16,'Engineering Crewmember - Set Run 1',0,0,0,0),
(1985103,0,25,1,0,0,0,0,0,0,19737,70613,16,'Engineering Crewmember - Set Run 2',0,0,0,0),
(1985103,0,25,1,0,0,0,0,0,0,19737,70614,16,'Engineering Crewmember - Set Run 3',0,0,0,0),
(1985103,0,25,1,0,0,0,0,0,0,19737,70615,16,'Engineering Crewmember - Set Run 4',0,0,0,0),
(1985103,0,25,1,0,0,0,0,0,0,19570,70009,16,'Rocket-Chief Fuselage - Set Run',0,0,0,0),
(1985103,1,20,2,1,0,0,0,0,0,19737,70612,16,'Engineering Crewmember - Start moving on PathId 1',0,0,0,0),
(1985103,1,20,2,2,0,0,0,0,0,19737,70613,16,'Engineering Crewmember - Start moving on PathId 2',0,0,0,0),
(1985103,1,20,2,3,0,0,0,0,0,19737,70614,16,'Engineering Crewmember - Start moving on PathId 3',0,0,0,0),
(1985103,1,20,2,4,0,0,0,0,0,19737,70615,16,'Engineering Crewmember - Start moving on PathId 4',0,0,0,0),
(1985103,1,20,2,1,0,0,0,0,0,19570,70009,16,'Rocket-Chief Fuselage - Start moving on PathId 1',0,0,0,0),

(1985104,3,1,54,0,0,0,0,0,0,0,0,0,'Negatron - OneShotSpecialAttack1H',0,0,0,0),
(1985104,3,2,46,33024,0,0,0,0,0,0,0,0,'Negatron - Set UnitFlags 33024',0,0,0,0),
(1985104,3,9,200042,18000000,0,0,0,0,0,0,0,0,'Negatron - Respawn Rocket Fire GOB',0,0,0,0),
(1985104,3,9,200043,18000000,0,0,0,0,0,0,0,0,'Negatron - Respawn Rocket Fire GOB',0,0,0,0),
(1985104,3,9,200044,18000000,0,0,0,0,0,0,0,0,'Negatron - Respawn Rocket Fire GOB',0,0,0,0),
(1985104,3,9,200045,18000000,0,0,0,0,0,0,0,0,'Negatron - Respawn Rocket Fire GOB',0,0,0,0),
(1985104,3,9,200046,18000000,0,0,0,0,0,0,0,0,'Negatron - Respawn Rocket Fire GOB',0,0,0,0),
(1985104,3,9,200047,18000000,0,0,0,0,0,0,0,0,'Negatron - Respawn Rocket Fire GOB',0,0,0,0),
(1985104,4,10,19541,18000000,1,0,0,0,0,0,0,0,'Negatron - Spawn Netherstorm Agent',3035.485,3630.765,144.4357,1.518436),
(1985104,4,10,19541,18000000,2,0,0,0,0,0,0,0,'Negatron - Spawn Netherstorm Agent',3029.642,3638.946,143.8741,1.169371),

(1985105,0,32,1,0,0,0,0,0,0,0,0,0,'Negatron - Pause Waypoints',0,0,0,0),
(1985105,0,1,54,0,0,0,0,0,0,0,0,0,'Negatron - OneShotSpecialAttack1H',0,0,0,0),
(1985105,7,1,54,0,0,0,0,0,0,0,0,0,'Negatron - OneShotSpecialAttack1H',0,0,0,0),
(1985105,14,1,54,0,0,0,0,0,0,0,0,0,'Negatron - OneShotSpecialAttack1H',0,0,0,0),
(1985105,25,2,46,33536,0,0,0,0,0,0,0,0,'Negatron - Set UnitFlags 33536',0,0,0,0),
(1985105,26,0,0,0,0,2000001333,0,0,0,0,0,0,'Negatron - HAHAHA!  YOUR FEEBLE ROCKET IS DESTROYED!  I''LL RETURN LATER TO FINISH OFF THE REST OF YOUR PUNY TOWN!',0,0,0,0),
(1985105,30,15,34427,0,0,0,0,0,0,0,0,0,'Negatron - Cast Ethereal Teleport',0,0,0,0),
(1985105,31,18,500,0,0,0,0,0,0,0,0,0,'Negatron - Despawn Self',0,0,0,0),
(1985105,31,32,0,0,0,0,0,0,0,19570,40,0,'Rocket-Chief Fuselage - Resume Waypoints',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001330 AND 2000001335;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001330, 'Oh no!  What''s that?  Quickly, defend us with the Scrap Reaver X6000!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'Doctor Vomisa, Ph.T. (Entry: 19832)'),
(2000001331, 'I AM DEATH!  PREPARE YOUR TOWN FOR ANNIHILATION!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Negatron (Entry: 19851)'),
(2000001332, 'YOUR SAD ATTEMPT AT CREATING A FEL REAVER TO STOP ME HAS FAILED!  NOW, ON TO AREA 52!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Negatron (Entry: 19851)'),
(2000001333, 'HAHAHA!  YOUR FEEBLE ROCKET IS DESTROYED!  I''LL RETURN LATER TO FINISH OFF THE REST OF YOUR PUNY TOWN!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Negatron (Entry: 19851)'),
(2000001334, 'Oh no!  The X-52 Nether-Rocket is being attacked!  Guards!  Guards!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 5, 'Rocket-Chief Fuselage (Entry: 19570)'),
(2000001335, 'Ack!  My beautiful X-52 Nether-Rocket.  We''ll have to quadruple our efforts to get this damage repaired!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Rocket-Chief Fuselage (Entry: 19570)');

-- Doctor Vomisa, Ph.T.
UPDATE creature SET MovementType=2 WHERE id=19832;
DELETE FROM `creature_movement_template` WHERE `entry`=19832;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19832,0,1,3087.219,3402.821,105.3264,22000,1983201,5.323254), -- Default path
(19832,0,2,3087.219,3402.821,105.3264,2000,1983203,5.323254),

(19832,1,1,3092.284,3405.06,105.9913,26000,1983201,100), -- Random path 1
(19832,1,2,3092.284,3405.06,105.9913,1200,1983204,100),
(19832,1,3,3087.219,3402.821,105.3264,22000,1983201,5.323254),
(19832,1,4,3087.219,3402.821,105.3264,2000,1983203,5.323254),

(19832,2,1,3083.641,3404.869,105.6636,21000,1983201,100), -- Random path 2
(19832,2,2,3083.641,3404.869,105.6636,1200,1983204,100),
(19832,2,3,3087.219,3402.821,105.3264,22000,1983201,5.323254),
(19832,2,4,3087.219,3402.821,105.3264,2000,1983203,5.323254),

(19832,3,1,3093.573,3401.126,105.3264,23000,1983201,100), -- Random path 3
(19832,3,2,3093.573,3401.126,105.3264,1200,1983204,100),
(19832,3,3,3089.62,3404.083,105.3264,0,0,0),
(19832,3,4,3087.219,3402.821,105.3264,22000,1983201,5.323254),
(19832,3,5,3087.219,3402.821,105.3264,2000,1983203,5.323254),

(19832,4,1,3089.243,3405.887,105.3264,20000,1983201,100), -- Random path 4
(19832,4,2,3089.243,3405.887,105.3264,1200,1983204,100),
(19832,4,3,3087.219,3402.821,105.3264,22000,1983201,5.323254),
(19832,4,4,3087.219,3402.821,105.3264,2000,1983203,5.323254),

(19832,5,1,3087.5,3403.646,105.3264,49200,1983202,5.323254); -- Path upon spawning Negatron

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1983201 AND 1983204;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1983201,0,1,133,0,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - STATE_USESTANDING_NOSHEATHE',0,0,0,0),

(1983202,0,0,0,0,0,2000001330,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - Oh no!  What''s that?  Quickly, defend us with the Scrap Reaver X6000!!!',0,0,0,0),
(1983202,0,36,0,0,0,0,0,0,0,19851,200,1,'Doctor Vomisa, Ph.T. - Face Negatron',0,0,0,0),
(1983202,32,1,133,0,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(1983202,48,1,0,0,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - ONESHOT_NONE',0,0,0,0),
(1983202,49,45,0,10030,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - Start Moving on Random PathId (1-5)',0,0,0,0),

(1983203,0,1,0,0,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - ONESHOT_NONE',0,0,0,0),
(1983203,1,45,0,10030,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - Start Moving on Random PathId (1-5)',0,0,0,0),

(1983204,0,1,0,0,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - ONESHOT_NONE',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 10041 AND 10044;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10041,0,20,2,1,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - Start moving on PathId 1',0,0,0,0),
(10042,0,20,2,2,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - Start moving on PathId 2',0,0,0,0),
(10043,0,20,2,3,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - Start moving on PathId 3',0,0,0,0),
(10044,0,20,2,4,0,0,0,0,0,0,0,0,'Doctor Vomisa, Ph.T. - Start moving on PathId 4',0,0,0,0);

DELETE FROM dbscript_random_templates WHERE id=10030;
INSERT INTO dbscript_random_templates (id, type, target_id, chance) VALUES
(10030,1,10041,0),
(10030,1,10042,0),
(10030,1,10043,0),
(10030,1,10044,0);

-- Netherstorm Agents
UPDATE creature_template SET MovementType=2 WHERE entry=19541;
DELETE FROM `creature_movement_template` WHERE `entry`=19541 AND pathId IN(1,2);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19541,1,1,3035.485,3630.765,144.4357,1000,1954101,1.518436),
(19541,2,1,3029.642,3638.946,143.8741,1000,1954101,1.169371);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=1954101;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1954101,0,20,0,0,0,0,0,0,0,0,0,0,'Netherstorm Agent - Set Idle Movement',0,0,0,0),
(1954101,0,22,1770,0,0,0,0,0,0,0,0,0,'Netherstorm Agent - Set Faction 1770',0,0,0,0),
(1954101,0,26,0,0,0,0,0,0,0,19851,40,1,'Netherstorm Agent - Attack Negatron',0,0,0,0);

-- Engineering Crewmember
UPDATE creature_template SET MovementType=2 WHERE entry=19737;
DELETE FROM `creature_movement_template` WHERE `entry`=19737 AND pathId BETWEEN 1 AND 4;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
-- 70612
(19737,1,1,3071.31,3668.194,142.3727,0,0,0),
(19737,1,2,3089.569,3678.559,142.4872,0,0,0),
(19737,1,3,3108.978,3684.024,142.9911,0,0,0),
(19737,1,4,3121.058,3690.802,143.1106,1000,1,100),
-- 70613
(19737,2,1,3031.126,3688.058,143.1577,0,0,0),
(19737,2,2,3011.833,3689.197,143.6307,1000,1,100),
-- 70614
(19737,3,1,3026.182,3644.272,143.6614,0,0,0),
(19737,3,2,3009.577,3644.342,143.7559,1000,1,100),
-- 70615
(19737,4,1,3071.934,3660.869,142.9512,0,0,0),
(19737,4,2,3084.322,3655.311,142.8734,0,0,0),
(19737,4,3,3090.932,3645.839,143.1071,0,0,0),
(19737,4,4,3089.584,3629.167,143.1097,0,0,0),
(19737,4,5,3081.207,3620.207,143.6097,1000,1,100);

-- Rocket-Chief Fuselage
UPDATE creature_template SET MovementType=2 WHERE entry=19570;
DELETE FROM `creature_movement_template` WHERE `entry`=19570 AND pathId=1;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19570,1,1,3062.385,3661.388,143.0913,1000,1957001,3.246312),
(19570,1,2,3062.385,3661.388,143.0913,0,1957003,3.246312),
(19570,1,3,3041.798,3658.854,143.3433,1000,1957002,0.2617994);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1957001,1957002,1957003);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1957001,0,32,1,0,0,0,0,0,0,0,0,0,'Rocket-Chief Fuselage - Pause Waypoints',0,0,0,0),
(1957001,0,25,0,0,0,0,0,0,0,0,0,0,'Rocket-Chief Fuselage - Set Run Off',0,0,0,0),
(1957001,1,0,0,0,0,2000001334,0,0,0,0,0,0,'Rocket-Chief Fuselage - Oh no!  The X-52 Nether-Rocket is being attacked!  Guards!  Guards!',0,0,0,0),

(1957002,0,20,0,0,0,0,0,0,0,0,0,0,'Rocket-Chief Fuselage - Set Idle Movement',0,0,0,0),
(1957002,1,0,0,0,0,2000001335,0,0,0,0,0,0,'Rocket-Chief Fuselage - Ack!  My beautiful X-52 Nether-Rocket.  We''ll have to quadruple our efforts to get this damage repaired!',0,0,0,0),

(1957003,0,40,0,0,0,0,0,0,0,183987,200042,23,'Negatron - Despawn Rocket Fire GOB',0,0,0,0),
(1957003,0,40,0,0,0,0,0,0,0,183987,200043,23,'Negatron - Despawn Rocket Fire GOB',0,0,0,0),
(1957003,0,40,0,0,0,0,0,0,0,183987,200044,23,'Negatron - Despawn Rocket Fire GOB',0,0,0,0),
(1957003,0,40,0,0,0,0,0,0,0,183987,200045,23,'Negatron - Despawn Rocket Fire GOB',0,0,0,0),
(1957003,0,40,0,0,0,0,0,0,0,183987,200046,23,'Negatron - Despawn Rocket Fire GOB',0,0,0,0),
(1957003,0,40,0,0,0,0,0,0,0,183987,200047,23,'Negatron - Despawn Rocket Fire GOB',0,0,0,0);

