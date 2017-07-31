-- WDB 636 - 637
-- q.7782 'The Lord of Blackrock' -- Alliance
-- https://www.youtube.com/watch?v=WAILIKadW9w
DELETE FROM dbscripts_on_quest_end WHERE id = 7782;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7782,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(7782,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(7782,6,0,0,0,0,0,0,2000001084,0,0,0,0,0,0,0,''),
(7782,14,0,0,0,0,0,0,2000001085,0,0,0,0,0,0,0,''),
(7782,17,9,40151,21600,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(7782,23,15,22888,0,0,0,0,0,0,0,0,0,0,0,0,''),
(7782,24,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(7782,25,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 7782 WHERE entry = 7782;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001084 AND 2000001085;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001084, 'Citizens of the Alliance, the Lord of Blackrock is slain! Nefarian has been subdued by the combined might of $n and $g his:her; allies!', 0, 6, 0, 22, NULL),
(2000001085, 'Let your spirits rise! Rally around your champion, bask in $g his:her; glory! Revel in the rallying cry of the dragon slayer!', 0, 6, 0, 22, NULL);
DELETE FROM gameobject WHERE guid = 40151;
DELETE FROM game_event_gameobject WHERE guid = 40151;
DELETE FROM gameobject_battleground WHERE guid = 40151;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(40151, 179882, 0, -8925.57, 496.042, 103.767, 2.42801, 0, 0, 0.937022, 0.34927, -21600, 255, 1);

-- q.7784 'The Lord of Blackrock' - Horde
DELETE FROM dbscripts_on_quest_end WHERE id = 7784;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7784,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(7784,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(7784,3,3,0,0,0,0,0,0,0,0,0,1544,-4425.87,10.9056,3.323,''),
(7784,17,3,0,0,0,0,0,0,0,0,0,0,0,0,0.6367,''),
(7784,20,0,0,0,0,0,0,2000001086,0,0,0,0,0,0,0,''),
(7784,37,0,0,0,0,0,0,2000001087,0,0,0,0,0,0,0,''),
(7784,40,9,40150,21600,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(7784,45,13,0,0,179881,100,1,0,0,0,0,0,0,0,0,'activate gobject'),
(7784,50,15,22888,0,0,0,0,0,0,0,0,0,0,0,0,''),
(7784,60,3,0,0,0,0,0,0,0,0,0,1568,-4405.87,8.13371,0.3434,''),
(7784,75,3,0,0,0,0,0,0,0,0,0,0,0,0,3.31613,''),
(7784,76,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(7784,77,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 7784 WHERE entry = 7784;
DELETE FROM db_script_string WHERE entry BETWEEN 2000001086 AND 2000001087;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001086, 'NEFARIAN IS SLAIN! People of Orgrimmar, bow down before the might of $n and $g his:her; allies for they have laid a blow against the Black Dragonflight that is sure to stir the Aspects from their malaise! This defeat shall surely be felt by the father of the Black Flight: Deathwing reels in pain and anguish this day!', 0, 6, 0, 22, NULL),
(2000001087, 'Be lifted by $n\'s accomplishment! Revel in $g his:her; rallying cry!', 0, 6, 0, 22, NULL);
DELETE FROM gameobject WHERE guid = 40150;
DELETE FROM game_event_gameobject WHERE guid = 40150;
DELETE FROM gameobject_battleground WHERE guid = 40150;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(40150, 179881, 1, 1540.28, -4422.19, 7.0051, 5.22833, 0, 0, 0.503313, -0.864104, -21600, 255, 1);

-- WDB 641

-- q.4441 'Felbound Ancients'
DELETE FROM dbscripts_on_quest_end WHERE id = 4441;
INSERT INTO dbscripts_on_quest_end(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(4441,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(4441,1,0,0,0,0,0,0,2000001088,0,0,0,0,0,0,0,''),
(4441,2,3,0,0,0,0,0,0,0,0,0,0,0,0,2.59669,''),
(4441,3,15,28892,0,0,0,0,0,0,0,0,0,0,0,0,''),
(4441,8,3,0,0,0,0,0,0,0,0,0,0,0,0,2.72271,''),
(4441,9,0,0,0,0,0,0,2000001089,0,0,0,0,0,0,0,''),
(4441,9,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001088 AND 2000001089;
INSERT INTO db_script_string (entry,content_default) VALUES
(2000001088,'May this evil aura be banished from this artifact!'),
(2000001089,'I can feel the presence of evil leaving...');
UPDATE quest_template SET CompleteScript = 4441 WHERE entry = 4441;

-- WDB 645
-- Whirligig Wafflefry
-- script corrected
DELETE FROM dbscripts_on_creature_movement WHERE id = 2588501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(2588501,3,31,19475,30,0,0,0,-14000,0,0,0,0,0,0,0,'search for 19475'),
(2588501,4,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2588501,4,21,1,0,19475,50,7,0,0,0,0,0,0,0,0,'buddy active'),
(2588501,5,0,0,0,0,0,0,2000005201,0,0,0,0,0,0,0,''),
(2588501,7,3,0,0,19475,50,7,0,0,0,0,0,0,0,0.452172,'force buddy to move'),
(2588501,10,0,0,0,19475,50,7,2000005205,0,0,0,0,0,0,0,'force buddy to: say text'),
(2588501,15,3,0,0,19475,50,7,0,0,0,0,0,0,0,3.4383,'force buddy to move'),
(2588501,16,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2588501,16,21,0,0,19475,50,7,0,0,0,0,0,0,0,0,'buddy unactive');

-- WDB 653

-- q.10345 'The Flesh Lies...'
-- Parasitic Fleshbeast
UPDATE creature_template SET DynamicFlags = 0, ExtraFlags = 0, UnitFlags = 0, EquipmentTemplateId = 0 WHERE entry = 20335;
-- Withered Corpse
UPDATE creature_template SET UnitFlags = 32768, DynamicFlags = 0, ExtraFlags = 0, EquipmentTemplateId = 5476 WHERE entry = 20561;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 20561);
DELETE FROM creature_template_addon WHERE entry = 20561;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(20561,0,0,1,0,0,0,31261);
-- All spawns corrected
UPDATE creature SET spawntimesecs = 180, curhealth = 6986 WHERE id = 20561;
UPDATE creature SET position_x = 3711.354, position_y = 2096.566, position_z = 151.9836, orientation = 1.186824 WHERE guid = 86837;
UPDATE creature SET position_x = 3737.857, position_y = 2082.162, position_z = 148.8999, orientation = 0.8377581 WHERE guid = 86838;
UPDATE creature SET position_x = 3750.901, position_y = 2055.318, position_z = 148.8528, orientation = 5.445427 WHERE guid = 86839;
UPDATE creature SET position_x = 3760.864, position_y = 2082.873, position_z = 152.8372, orientation = 2.408554 WHERE guid = 86840;
UPDATE creature SET position_x = 3863.247, position_y = 2120.237, position_z = 146.8419, orientation = 5.462881 WHERE guid = 86842;
UPDATE creature SET position_x = 3875.743, position_y = 2150.156, position_z = 139.2722, orientation = 3.612832 WHERE guid = 86854;
UPDATE creature SET position_x = 3903.427, position_y = 2124.285, position_z = 137.7055, orientation = 0.2443461 WHERE guid = 86855;
-- Withered Corpse - missing added - tbc-db free guids reused
DELETE FROM creature WHERE guid IN (151159,151126,151127,151128,151129,151130,151131,151132,151133,151134,151135,151136,151137,151138,151139,151140);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151159,20561,530,1,0,0,3790.072,2073.023,153.1595,4.607669,180,0,0,6986,0,0,0),
(151126,20561,530,1,0,0,3823.875,2064.426,147.5786,6.213372,180,0,0,6986,0,0,0),
(151127,20561,530,1,0,0,3815.096,2102.614,148.0032,1.727876,180,0,0,6986,0,0,0),
(151128,20561,530,1,0,0,3839.537,2137.048,145.9674,3.543018,180,0,0,6986,0,0,0),
(151129,20561,530,1,0,0,3870.958,2103.973,133.3532,1.58825,180,0,0,6986,0,0,0),
(151130,20561,530,1,0,0,3835.909,2045.899,145.1511,0.9424778,180,0,0,6986,0,0,0),
(151131,20561,530,1,0,0,3867.945,2023.28,144.5846,5.654867,180,0,0,6986,0,0,0),
(151132,20561,530,1,0,0,3881.192,2078.429,131.736,3.665191,180,0,0,6986,0,0,0),
(151133,20561,530,1,0,0,3890.489,2102.265,153.7079,4.625123,180,0,0,6986,0,0,0),
(151134,20561,530,1,0,0,3908.282,2081.013,133.4787,4.18879,180,0,0,6986,0,0,0),
(151135,20561,530,1,0,0,3902.533,2052.924,150.1621,3.211406,180,0,0,6986,0,0,0),
(151136,20561,530,1,0,0,3912.868,2079.347,153.7697,1.37881,180,0,0,6986,0,0,0),
(151137,20561,530,1,0,0,3926.427,2105.755,159.2636,3.612832,180,0,0,6986,0,0,0),
(151138,20561,530,1,0,0,3968.759,2112.71,162.3819,6.195919,180,0,0,6986,0,0,0),
(151139,20561,530,1,0,0,3935.877,2138.796,160.69,1.239184,180,0,0,6986,0,0,0),
(151140,20561,530,1,0,0,3987.208,2132.56,162.6814,3.403392,180,0,0,6986,0,0,0);
-- Charred Remains - missing added - WoTLKDB free guids reused
DELETE FROM gameobject WHERE guid IN (150090,150091,150092,150093,150094,150095,150096,150097,150098,150099,150100,150101,150102,150103,150104,150105,150106,150107,150108,150109,150110,150111,150112,150113,150113,150114,150115);
DELETE FROM game_event_gameobject WHERE guid IN (150090,150091,150092,150093,150094,150095,150096,150097,150098,150099,150100,150101,150102,150103,150104,150105,150106,150107,150108,150109,150110,150111,150112,150113,150113,150114,150115);
DELETE FROM gameobject_battleground WHERE guid IN (150090,150091,150092,150093,150094,150095,150096,150097,150098,150099,150100,150101,150102,150103,150104,150105,150106,150107,150108,150109,150110,150111,150112,150113,150113,150114,150115);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(150090, 184445, 530, 1,3711.354,2096.566,151.9836,1.186823, 0, 0, 0.5591927,0.8290377, -90, 255, 1),
(150091, 184445, 530, 1,3737.857,2082.162,148.8999,0.8377575, 0, 0, 0.4067364,0.9135455, -90, 255, 1),
(150092, 184445, 530, 1,3750.901,2055.318,148.8528,5.445428, 0, 0, -0.4067364,0.9135455, -90, 255, 1),
(150093, 184445, 530, 1,3823.875,2064.426,147.5786,6.213374, 0, 0, -0.03489876,0.9993908, -90, 255, 1),
(150094, 184445, 530, 1,3835.909,2045.899,145.1511,0.9424766, 0, 0, -0.3090162,0.9510568, -90, 255, 1),
(150095, 184445, 530, 1,3867.945,2023.28,144.5846,5.654869, 0, 0, -0.03489876,0.9993908, -90, 255, 1),
(150096, 184445, 530, 1,3902.533,2052.924,150.1621,3.211419, 0, 0, -0.9993906,0.03490613, -90, 255, 1),
(150097, 184445, 530, 1,3912.868,2079.347,153.7697,1.378809, 0, 0, 0.6360779,0.7716249, -90, 255, 1),
(150098, 184445, 530, 1,3890.489,2102.265,153.7079,4.625124, 0, 0, -0.737277,0.6755905, -90, 255, 1),
(150099, 184445, 530, 1,3863.247,2120.237,146.8419,5.462882, 0, 0, -0.3987484,0.9170604, -90, 255, 1),
(150100, 184445, 530, 1,3935.877,2138.796,160.69,1.239183, 0, 0, 0.5807028,0.8141156, -90, 255, 1),
(150101, 184445, 530, 1,3760.864,2082.873,152.8372,2.408554, 0, 0, 0.312883,0.949792, -90, 255, 1),
(150102, 184445, 530, 1,3875.743,2150.156,139.2722,3.612832, 0, 0, 0.995622,-0.0934667, -90, 255, 1),
(150103, 184445, 530, 1,3903.427,2124.285,137.7055,0.2443461, 0, 0, 0.632464,-0.77459, -90, 255, 1),
(150104, 184445, 530, 1,3790.072,2073.023,153.1595,4.607669, 0, 0, 0.356284,-0.934378, -90, 255, 1),
(150105, 184445, 530, 1,3815.096,2102.614,148.0032,1.727876, 0, 0, 0.671952,0.740595, -90, 255, 1),
(150106, 184445, 530, 1,3839.537,2137.048,145.9674,3.543018, 0, 0, 0.671952,0.740595, -90, 255, 1),
(150107, 184445, 530, 1,3870.958,2103.973,133.3532,1.58825, 0, 0, 0.773595,0.63368, -90, 255, 1),
(150108, 184445, 530, 1,3881.192,2078.429,131.736,3.665191, 0, 0, 0.535943,0.844254, -90, 255, 1),
(150109, 184445, 530, 1,3908.282,2081.013,133.4787,4.18879, 0, 0, 0.986646,0.162877, -90, 255, 1),
(150110, 184445, 530, 1,3926.427,2105.755,159.2636,3.612832, 0, 0, 0.986646,0.162877, -90, 255, 1),
(150111, 184445, 530, 1,3968.759,2112.71,162.3819,6.195919, 0, 0, 0.00604097,0.999982, -90, 255, 1),
(150112, 184445, 530, 1,3987.208,2132.56,162.6814,3.403392, 0, 0, 0.632383,0.774656, -90, 255, 1),
(150113, 184445, 530, 1,3840.47,2122.01,146.953,1.71989, 0, 0, 0.632383, 0.774656, -90, 255, 1),
(150114, 184445, 530, 1,3848.73,2147.21,140.23,1.94765, 0, 0, 0.632383,0.774656, -90, 255, 1),
(150115, 184445, 530, 1,3852.86,2153.85,140.535,1.10727, 0, 0, 0.775093,0.631847, -90, 255, 1);
-- spell
DELETE FROM dbscripts_on_spell WHERE id = 35372;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(35372, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'create from quest_template'),
(35372, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn target'),
(35372, 1, 9, 0, 90, 184445, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'resp gameobject');

-- WDB 654
-- Access Shaft Zeon - Netherstorm
-- Redone
-- Fleshfiend - missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid BETWEEN 151141 AND 151152;
DELETE FROM creature_addon WHERE guid BETWEEN 151141 AND 151152;
DELETE FROM creature_movement WHERE id BETWEEN 151141 AND 151152;
DELETE FROM game_event_creature WHERE guid BETWEEN 151141 AND 151152;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 151141 AND 151152;
DELETE FROM creature_battleground WHERE guid BETWEEN 151141 AND 151152;
DELETE FROM creature_linking WHERE guid BETWEEN 151141 AND 151152
 OR master_guid BETWEEN 151141 AND 151152;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151141,20340,530,1,0,0,3700.07,2104.38,154.187,1.05376,300,0,0,6761,0,0,2),
(151142,20340,530,1,0,0,3802,2077.1,149.618,2.7682,300,5,0,6986,0,0,1),
(151143,20340,530,1,0,0,3757.67,2080.25,151.914,3.0616,300,2,0,6986,0,0,1),
(151144,20340,530,1,0,0,3830.72,2152.55,145.842,4.57919,300,5,0,6986,0,0,1),
(151145,20340,530,1,0,0,3845.32,2111.13,148.712,3.38892,300,0,0,6761,0,0,2),
(151146,20340,530,1,0,0,3864.73,2158.55,139.53,5.98851,300,5,0,6761,0,0,1),
(151147,20340,530,1,0,0,3883.87,2131.02,133.884,5.14029,300,5,0,6761,0,0,1),
(151148,20340,530,1,0,0,3873.85,2104.63,133.388,4.74834,300,0,0,6986,0,0,2),
(151149,20340,530,1,0,0,3919.83,2087.85,133.488,2.46537,300,5,0,6761,0,0,1),
(151150,20340,530,1,0,0,3895.68,2034.48,148.256,3.45105,300,5,0,6761,0,0,1),
(151151,20340,530,1,0,0,3909.46,2090.17,155.839,2.58317,300,5,0,6986,0,0,1),
(151152,20340,530,1,0,0,3927.87,2118.67,159.924,4.58354,300,0,0,6761,0,0,2);
-- Updates
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 72253;
UPDATE creature SET position_x = 3845.784424, position_y = 2111.566895, position_z = 148.651016, spawndist = 5, MovementType = 1 WHERE guid = 72254;
-- Waypoints
DELETE FROM creature_movement WHERE id IN (151141,72253,151145,151148,151152);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #151141
(151141,1,3708.42,2110.91,152.714,0,0,0.256347),
(151141,2,3718.47,2112.17,150.762,0,0,6.27485),
(151141,3,3738.52,2109.59,148.183,0,0,6.1217),
(151141,4,3711.96,2112.24,152.367,0,0,3.36103),
(151141,5,3702.12,2107.95,153.659,0,0,3.97521),
(151141,6,3692.42,2098.89,155.214,0,0,3.94379),
(151141,7,3686.26,2093.03,149.364,0,0,3.96343),
(151141,8,3683.91,2089.67,152.259,0,0,4.98517),
(151141,9,3688.53,2083.23,152.775,0,0,5.40849),
(151141,10,3698.57,2069.71,150.483,0,0,5.75721),
(151141,11,3715.1,2062.27,147.368,0,0,5.87035),
(151141,12,3728.18,2056.63,144.842,0,0,5.69049),
(151141,13,3740.76,2052.12,146.617,0,0,6.16958),
(151141,14,3756.8,2056.43,150.487,0,0,0.259351),
(151141,15,3741.21,2052.22,146.648,0,0,2.95337),
(151141,16,3727.44,2056.94,144.813,0,0,2.72953),
(151141,17,3698.21,2070.22,150.638,0,0,2.47428),
(151141,18,3689.34,2085.61,152.047,0,0,2.0698),
(151141,19,3687.46,2092.86,149.402,0,0,1.62939),
(151141,20,3690.78,2097.36,154.156,0,0,0.930382),
(151141,21,3700.04,2104.35,154.194,0,0,0.679055),
-- #72253
(72253,1,3828.6,2052.43,146.299,0,0,2.4468),
(72253,2,3814.57,2068.55,148.037,0,0,2.65258),
(72253,3,3803.64,2075.73,148.999,0,0,2.84343),
(72253,4,3793.57,2076.63,152.807,0,0,3.12617),
(72253,5,3772.9,2078.11,154.741,0,0,2.98754),
(72253,6,3793.79,2077.36,152.872,0,0,6.23516),
(72253,7,3806.68,2075.38,148.988,0,0,5.73409),
(72253,8,3817.08,2066.81,147.837,0,0,5.34532),
(72253,9,3829.58,2051.22,145.945,0,0,5.73252),
(72253,10,3837.99,2045.38,144.981,0,0,5.52203),
(72253,11,3844.06,2036.32,143.92,0,0,5.53151),
(72253,12,3853.07,2030.52,142.777,0,0,5.76477),
(72253,13,3865.79,2024.48,144.208,0,0,6.09463),
(72253,14,3851.93,2030.9,142.805,0,0,2.38755),
(72253,15,3844.37,2036.31,143.849,0,0,2.2933),
(72253,16,3838.85,2044.04,144.628,0,0,2.38755),
-- #151145
(151145,1,3832.22,2107.48,149.717,0,0,3.46746),
(151145,2,3825.75,2105.58,151.003,0,0,3.32216),
(151145,3,3820.36,2104.75,148.444,0,0,3.4596),
(151145,4,3811.88,2098.79,147.848,0,0,3.83267),
(151145,5,3804.56,2091.55,149.842,0,0,4.23715),
(151145,6,3813.68,2099.89,147.724,0,0,0.694996),
(151145,7,3820.93,2105.03,148.563,0,0,0.241821),
(151145,8,3825.93,2106.17,151.103,0,0,0.198519),
(151145,9,3832.41,2107.12,149.743,0,0,0.372878),
(151145,10,3843.08,2112.63,148.908,0,0,1.17006),
(151145,11,3843.73,2122.31,147.232,0,0,1.92718),
(151145,12,3839.65,2131.35,146.628,0,0,1.81811),
(151145,13,3837.69,2138.62,145.446,0,0,1.83774),
(151145,14,3832.25,2154.89,145.916,0,0,1.92021),
(151145,15,3838.13,2137.13,145.727,0,0,5.03039),
(151145,16,3842.26,2122.59,147.082,0,0,5.12071),
(151145,17,3846.68,2115.09,148.459,0,0,5.88647),
(151145,18,3855.48,2114.4,147.42,0,0,5.94772),
(151145,19,3870.42,2114.12,147.612,0,0,6.00035),
(151145,20,3885.1,2109.86,149.593,0,0,6.00035),
(151145,21,3893.09,2104.7,152.478,0,0,5.52519),
(151145,22,3903.74,2097.1,154.744,0,0,5.52519),
(151145,23,3895.22,2104.42,153.216,0,0,2.62236),
(151145,24,3883.14,2110.8,149.206,0,0,2.83042),
(151145,25,3867.52,2114.77,147.194,0,0,3.11709),
(151145,26,3852.24,2113.81,147.649,0,0,3.39198),
(151145,27,3846.62,2115.55,148.453,0,0,2.0136),
(151145,28,3840.54,2128.64,146.783,0,0,1.82118),
(151145,29,3837.58,2140.16,145.256,0,0,1.82511),
(151145,30,3832.01,2155.39,145.949,0,0,1.91936),
(151145,31,3837.48,2140.4,145.27,0,0,5.07273),
-- #151148
(151148,1,3874.85,2092.38,131.986,0,0,4.89363),
(151148,2,3881.79,2076.72,132.069,0,0,2.17222),
(151148,3,3876.13,2088.46,131.757,0,0,1.96236),
(151148,4,3873.89,2102.41,132.905,0,0,1.5029),
(151148,5,3875.56,2109.94,135.03,0,0,1.22408),
(151148,6,3879.99,2120.42,133.436,0,0,1.18481),
(151148,7,3882.52,2130.11,133.948,0,0,1.65605),
(151148,8,3877.94,2139.1,135.257,0,0,2.12729),
(151148,9,3876.27,2145.36,139.053,0,0,1.80528),
(151148,10,3874.56,2152.62,138.963,0,0,2.11158),
(151148,11,3867.19,2159.01,139.152,0,0,2.94568),
(151148,12,3857.43,2157.18,140.557,0,0,3.40356),
(151148,13,3846.26,2156.16,141.191,0,0,2.84357),
(151148,14,3842.13,2158.58,141.856,0,0,2.06996),
(151148,15,3848.25,2155.62,140.979,0,0,0.0216342),
(151148,16,3858.78,2157.24,140.533,0,0,0.123331),
(151148,17,3872.4,2155.03,138.92,0,0,5.59206),
(151148,18,3875.87,2150.28,139.98,0,0,4.90011),
(151148,19,3876.41,2145.97,139.209,0,0,4.88048),
(151148,20,3878.13,2140.38,135.46,0,0,5.0297),
(151148,21,3882.97,2129.62,133.867,0,0,4.79801),
(151148,22,3880.17,2118.79,133.545,0,0,4.26394),
(151148,23,3875.72,2110.03,134.98,0,0,4.27572),
(151148,24,3874.23,2103.02,132.96,0,0,4.94488),
-- #151152
(151152,1,3923.03,2102,158.719,0,0,4.08519),
(151152,2,3918.22,2094.92,157.148,0,0,3.89198),
(151152,3,3909.27,2086.84,156.194,0,0,4.53993),
(151152,4,3908.21,2079.6,153.654,0,0,4.58706),
(151152,5,3907.09,2069.95,152.617,0,0,4.76613),
(151152,6,3906.22,2058.27,150.862,0,0,4.46925),
(151152,7,3901.95,2047.35,149.152,0,0,4.19044),
(151152,8,3907.01,2060.82,151.077,0,0,1.37086),
(151152,9,3907.93,2080.42,153.756,0,0,1.47689),
(151152,10,3909.4,2086.92,156.191,0,0,0.763745),
(151152,11,3913.55,2091.18,155.927,0,0,0.695416),
(151152,12,3920.32,2096.83,157.939,0,0,1.11403),
(151152,13,3926.47,2109.47,159.1,0,0,1.27425),
(151152,14,3927.97,2121.86,160.375,0,0,1.4706),
(151152,15,3930.43,2129,160.119,0,0,0.925982),
(151152,16,3940.05,2136.96,160.067,0,0,0.28981),
(151152,17,3952.66,2135.78,161.632,0,0,5.84101),
(151152,18,3957.72,2133.09,162.299,0,0,5.92132),
(151152,19,3946.18,2137.7,160.791,0,0,3.10109),
(151152,20,3936.69,2136.25,160.133,0,0,3.80638),
(151152,21,3928.27,2125.16,160.584,0,0,4.31688),
(151152,22,3927.47,2118.3,159.805,0,0,4.67031);
-- Protectorate Tracer
-- Missing objects added - empty guids reused -- WoTLKDB ONLY
DELETE FROM gameobject WHERE guid BETWEEN 150116 AND 150123;
DELETE FROM game_event_gameobject WHERE guid BETWEEN 150116 AND 150123;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 150116 AND 150123;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
( 150116, 184447, 530, 1,3793.59, 2079.87, 153.262, 3.61391, 0, 0, -0.9681473,0.2503814, 300, 255, 1),
( 150117, 184447, 530, 1,3801.506,2087.913,150.4931,4.782203, 0, 0, -0.6819983,0.7313538, 300, 255, 1),
( 150118, 184447, 530, 1,3836.212,2111.098,149.7303,3.525572, 0, 0, -0.9816265,0.1908124, 300, 255, 1),
( 150119, 184447, 530, 1,3819.337,2098.085,147.9861,3.159062, 0, 0, -0.9999619,0.008734641, 300, 255, 1),
( 150120, 184447, 530, 1,3855.512,2154.047,140.302,3.054327, 0, 0, 0.9990482,0.04361926, 300, 255, 1),
( 150121, 184447, 530, 1,3876.799,2152.478,139.198,2.460913, 0, 0, 0.9426413,0.3338076, 300, 255, 1),
( 150122, 184447, 530, 1,3891.8,2124.595,134.5861,2.321287, 0, 0, 0.9170599,0.3987495, 300, 255, 1),
( 150123, 184447, 530, 1,3907.579,2105.973,138.4542,5.253442, 0, 0, -0.4924231,0.870356, 300, 255, 1);

-- WDB 655

-- Small event introducing area.

-- Image of Commander Ameer <The Protectorate> & Image of Agent Ya-six <The Protectorate>
-- Both shouldn't be spawned - they're summoned as part of event
DELETE FROM creature WHERE guid IN (72679,72694);
DELETE FROM creature_addon WHERE guid IN (72679,72694);
DELETE FROM creature_movement WHERE id IN (72679,72694);
DELETE FROM game_event_creature WHERE guid IN (72679,72694);
DELETE FROM game_event_creature_data WHERE guid IN (72679,72694);
DELETE FROM creature_battleground WHERE guid IN (72679,72694);
DELETE FROM creature_linking WHERE guid IN (72679,72694)
 OR master_guid IN (72679,72694);

DELETE FROM creature_equip_template WHERE entry IN(157,158);
INSERT INTO creature_equip_template VALUES
('157', '29439', '29439', '0'),
('158', '29462', '29462', '0');

-- Update for summoned NPC's
-- Image of Commander Ameer <The Protectorate>
UPDATE creature_template SET UnitFlags = 768, InhabitType = 4, EquipmentTemplateId = 157 WHERE entry = 20553;
-- Image of Agent Ya-six <The Protectorate>
UPDATE creature_template SET InhabitType = 4, EquipmentTemplateId = 158 WHERE entry = 20564;
-- Portable Transponder
UPDATE gameobject SET spawntimesecs = 1 WHERE id = 184434;
-- Agent Araxes
UPDATE creature_template SET MovementType = 2 WHERE entry = 20551;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE id = 20551;
DELETE FROM creature_movement_template WHERE entry = 20551;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(20551,1,3782.49,2170.66,141.422,50000,2055101,1.67552),
(20551,2,3782.49,2170.66,141.422,180000,0,1.67552);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2055101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2055101,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2055101,2,0,0,0,0,0,0,2000001090,0,0,0,0,0,0,0,''),
(2055101,2,13,0,0,184434,100,1,0,0,0,0,0,0,0,0,''),
(2055101,4,10,20553,31000,0,0,0x08,0,0,0,0,3781.898,2175.332,142.5583,4.991642,'summon Image of Commander Ameer'),
(2055101,6,0,0,0,20553,50,7,2000001091,0,0,0,0,0,0,0,''),
(2055101,11,0,0,0,0,0,0,2000001092,0,0,0,0,0,0,0,''),
(2055101,16,0,0,0,20553,50,7,2000001093,0,0,0,0,0,0,0,''),
(2055101,21,0,0,0,0,0,0,2000001094,0,0,0,0,0,0,0,''),
(2055101,27,0,0,0,20553,50,7,2000001095,0,0,0,0,0,0,0,''),
(2055101,33,0,0,0,20553,50,7,2000001096,0,0,0,0,0,0,0,''),
(2055101,35,43,0,0,184434,100,1,0,0,0,0,0,0,0,0,'Reset button'),
(2055101,35,10,20564,11000,0,0,0x08,0,0,0,0,3781.898,2175.332,142.5583,4.991642,'summon Image of Agent Ya-six'),
(2055101,37,0,0,0,20564,50,7,2000001097,0,0,0,0,0,0,0,''),
(2055101,41,0,0,0,20564,50,7,2000001098,0,0,0,0,0,0,0,''),
(2055101,47,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000001090 AND 2000001098;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001090,'I hope this damned thing works. *Araxes pounds on the portable transponder.*',0,0,0,1,NULL),
(2000001091,'Araxes, come in... Are you there Araxes? Visibility is nil. Warp storms blocking us.',0,0,0,1,NULL),
(2000001092,'I\'m here, commander.',0,0,0,1,NULL),
(2000001093,'Copy. Status report, soldier.',0,0,0,1,NULL),
(2000001094,'We\'ve located the mark, commander. Ya-six and I have been separated. Requesting backup.',0,0,0,1,NULL),
(2000001095,'Copy that, Araxes. Backup is on the way. Hold your position. I repeat, hold your position.',0,0,0,1,NULL),
(2000001096,'Ameer, over and out.',0,0,0,15,NULL),
(2000001097,'Araxes! Send help! I\'m pinned down in the mines. I... I\'m not sure where I am exactly but I had the presence of mind to drop tracers on the ground behind me.',0,0,0,1,NULL),
(2000001098,'I can\'t follow the tracers back out, too many flesh beasts in the way. Send someone in... Follow the tracers... Ya-six, out.',0,0,0,1,NULL);

-- WDB 674

-- q.6027 'Book of the Ancients'
-- reset for object added
DELETE FROM `dbscripts_on_go_use` WHERE `id` IN (12609);

DELETE FROM dbscripts_on_go_template_use WHERE id = 177673;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(177673,2,10,12369,300000,0,0,0,0,0,0,0,251.381,2962.47,2.76527,0.860446,''),
(177673,60,43,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset');

-- WDB 725

-- Custom animation for some objects fixed
-- 187432 - Alliance Flag - 5651                   -- Without = doesnt work -- with works fine 
-- 181699 - Barrel of Filth - 6869                 -- Without = doesnt work -- with works fine
-- 184661 - Smoke Beacon - 6544                    -- Without = doesnt work -- with works fine
-- 188692 - Valiance Keep Cannon - 245             -- Without = player casts multiple spell ???  -- with better animation from gun
-- 187389 - Falling Rocks - 4473 --                -- Without = work partly -- with much better (full animation)
-- 184694 - Zelana's Alchemy Set - 345             -- Without = doesnt work -- with works fine
-- 180452 - Blastenheimer 5000 Ultra Cannon - 6429 -- Without = doesnt work -- with works fine
-- https://www.youtube.com/watch?v=BmRsGlhzACc (i did diff fix for it... but effect is the same and can be seen on this avi)

UPDATE gameobject_template SET ExtraFlags = 1 WHERE displayId IN (245,345,4473,5651,6429,6544,6869);

-- WDB 727
-- Koren
-- Default gossip is available to everyone with rep below friendly 
-- At friendly he will show another one
-- He'll offer his vendor and repair to players once they reach Honored with rep 967
DELETE FROM gossip_menu WHERE entry = 7435;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7435, 9002, 0, 0),
(7435, 9004, 0, 1131),
(7435, 9003, 0, 1132);
DELETE FROM gossip_menu_option WHERE menu_id = 7435;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7435,0,1,'I\'m in need of your skill as a blacksmith, Koren.',3,128,0,0,0,0,0,NULL,1132);
DELETE FROM conditions WHERE condition_entry IN (1131,1132);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1131,5,967,4),
(1132,5,967,5);

-- WDB 738
-- Earthbinder Rayge
UPDATE creature SET position_x = 296.6974, position_y = -362.373, position_z = 50.15062, Orientation = 5.5676, spawndist = 0, MovementType = 0 WHERE guid = 86372;
UPDATE creature_template SET FactionAlliance = 1660, FactionHorde = 1660, UnitFlags = 33024 WHERE Entry = 17885;

-- WDB 740

-- Greatfather Aldrimus
-- Invisibility aura missing - more research req.
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 151153;
DELETE FROM creature_addon WHERE guid = 151153;
DELETE FROM creature_movement WHERE id = 151153;
DELETE FROM game_event_creature WHERE guid = 151153;
DELETE FROM game_event_creature_data WHERE guid = 151153;
DELETE FROM creature_battleground WHERE guid = 151153;
DELETE FROM creature_linking WHERE guid = 151153 OR master_guid = 151153;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151153,19698,530,1,0,0,-3345.28,5189.06,-100.966,5.77704,300,0,0,6986,0,0,0);

-- q.10164 'Everything Will Be Alright'
-- available only after q.10253 completed
UPDATE quest_template SET PrevQuestId = 10253 WHERE entry = 10164;

-- WDB 741

-- Ethereal Transporter Control Panel
-- condition corrected to activate q.10218 'Someone Else's Hard Work Pays Off'
UPDATE gossip_menu_option SET condition_id = 1015 WHERE menu_id = 8023;

-- WDB 743

-- Ring of Observance - Entrance to Auchenai Crypts

-- Horvon the Armorer <Armorsmith>
UPDATE creature_template SET UnitFlags = 33536, GossipMenuId = 8047 WHERE entry = 19879;
DELETE FROM creature_template_addon WHERE entry = 19879;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(19879,0,0,1,0,0,0,32648);
-- Gossip
DELETE FROM gossip_menu WHERE entry = 8047;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8047, 9936, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 8047;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8047, 0, 1, 'Please repair my items.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);
-- Ancient Draenei Spirit
UPDATE creature_template SET MinLevel = 1, MaxLevel = 70, FactionAlliance = 1194, FactionHorde = 1194, UnitFlags = 33587968, MinLevelHealth = 42, MaxLevelHealth = 4050, MinLevelMana = 0, MaxLevelMana = 0, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 1, MaxMeleeDmg = 357 WHERE entry = 19416;
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid BETWEEN 151154 AND 151158;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151154,19416,530,1,0,0,-3400.19,5185.94,-88.8128,0.01745329,300,0,0,6986,0,0,0),
(151155,19416,530,1,0,0,-3387.17,5177.65,-95.5558,1.396263,300,0,0,6986,0,0,0),
(151156,19416,530,1,0,0,-3383.71,5192.25,-97.2105,3.822271,300,0,0,6986,0,0,0),
(151157,19416,530,1,0,0,-3330.14,5182.81,-89.3602,1.58825,300,0,0,6986,0,0,0),
(151158,19416,530,1,0,0,-3330.1,5185.82,-88.5626,4.39823,300,0,0,6986,0,0,0);

-- Greatfather Aldrimus
UPDATE creature SET MovementType = 2 WHERE guid = 151153;
DELETE FROM creature_movement WHERE id = 151153;
UPDATE creature_template SET UnitFlags = 33536, MovementType = 2 WHERE Entry = 19698;
DELETE FROM creature_movement_template WHERE entry = 19698;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(19698, 1, -3345.28, 5189.06, -100.966, 9000, 1969801, 5.77704);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1969801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1969801,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1969801,4,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_template_addon WHERE entry = 19698;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(19698,0,0,1,0,0,0,32648);

-- Ha'lei
UPDATE creature SET MovementType = 2 WHERE guid = 70257;
DELETE FROM creature_movement WHERE id = 70257;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 19697;
DELETE FROM creature_movement_template WHERE entry = 19697;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(19697, 1, -3343.13, 5188.37, -100.966, 30000, 0, 2.89725),
(19697, 2, -3343.13, 5188.37, -100.966, 85000, 1969701, 2.89725),
(19697, 3, -3343.13, 5188.37, -100.966, 270000, 0, 2.89725);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1969701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1969701,0,31,19693,100,0,0,0,-80000,0,0,0,0,0,0,0,'search for buddy'),
(1969701,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(1969701,1,21,1,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - active'),
(1969701,2,0,0,0,0,0,0,2000001099,2000001100,2000001101,2000001102,0,0,0,0,''),
(1969701,4,0,0,0,0,0,0,2000001103,2000001104,2000001105,2000001106,0,0,0,0,''),
(1969701,9,0,0,0,0,0,0,2000001107,0,0,0,0,0,0,0,''),
(1969701,11,0,0,0,0,0,0,2000001108,2000001109,2000001110,0,0,0,0,0,''),
(1969701,16,0,0,0,19693,70255,7 | 0x10,2000001111,0,0,0,0,0,0,0,''),
(1969701,19,0,0,0,19693,70255,7 | 0x10,2000001112,2000001113,2000001114,2000001115,0,0,0,0,''),
(1969701,79,0,0,0,19693,70255,7 | 0x10,2000001116,2000001117,2000001118,0,0,0,0,0,''),
(1969701,80,21,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - unactive'),
(1969701,81,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000001099 AND 2000001118;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001099,'%s giggles.',0,2,0,0,NULL),
(2000001100,'%s nods.',0,2,0,0,NULL),
(2000001101,'%s smiles.',0,2,0,0,NULL),
(2000001102,'%s laughs.',0,2,0,0,NULL),
(2000001103,'I\'ll tell her, Greatfather.',0,0,0,1,NULL),
(2000001104,'You promise?',0,0,0,5,NULL),
(2000001105,'Ok!',0,0,0,0,NULL),
(2000001106,'I will, Greatfather.',0,0,0,1,NULL),
(2000001107,'%s tugs on Clarissa\'s robe.',0,2,0,0,NULL),
(2000001108,'Mommy, Greatfather says everything will be ok.',0,0,0,1,NULL),
(2000001109,'Don\'t cry, Mommy. Greatfather says not to worry.',0,0,0,1,NULL),
(2000001110,'Mommy, Greatfather told me that he will watch over us and make sure we\'re ok.',0,0,0,1,NULL),
(2000001111,'%s wipes the tears away.',0,2,0,0,NULL),
(2000001112,'Oh sweetheart, grandpoppy has passed. It will be ok.',0,0,0,0,NULL),
(2000001113,'In the end, we will all be together, sweetheart.',0,0,0,0,NULL),
(2000001114,'Mommy is going to make sure you\'re ok, baby.',0,0,0,0,NULL),
(2000001115,'Mommy won\'t let anyone harm you, sweetheart.',0,0,0,0,NULL),
(2000001116,'Father, give me strength to go on.',0,0,0,1,NULL),
(2000001117,'Give me a sign... anything...',0,0,0,1,NULL),
(2000001118,'Please, father, I do not have your strength. I cannot do this on my own. Please help me...',0,0,0,1,NULL);

-- WDB 745

-- Ancient Draenei Spirit & Ancient Orc Ancestor will become visible to players once q.10252 or q.10045 is finished.
-- Visible in areas:
-- 3518 - Nagrand
-- 3616 - Laughing Skull Ruins
-- 3622 - Sunspring Post
-- 3630 - Oshu'gun
-- 3631 - Spirit Fields
-- 3688 - Auchindoun
DELETE FROM spell_area WHERE spell = 32649 AND area IN(3518,3616,3622,3630,3631,3688);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(32649,3518,0,0,0,1135,0,0,2,1),
(32649,3616,0,0,0,1135,0,0,2,1),
(32649,3622,0,0,0,1135,0,0,2,1),
(32649,3630,0,0,0,1135,0,0,2,1),
(32649,3631,0,0,0,1135,0,0,2,1),
(32649,3688,0,0,0,1135,0,0,2,1);
DELETE FROM conditions WHERE condition_entry IN (1133,1134,1135);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1133, 8, 10252, 0),
(1134, 8, 10045, 0),
(1135, -2, 1134, 1133);

-- WDB 746
-- q.10164 'Everything Will Be Alright'
DELETE FROM dbscripts_on_quest_end WHERE id = 10164;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10164,0,31,19878,100,0,0,0x08,0,0,0,0,0,0,0,0,'search for 19878'), -- prevent double spawn
(10164,1,10,19878,40000,0,0,0x08,0,0,0,0,-3361.65,5227.96,-101.047,4.81645,'summon - Spirit of Exarch Maladaar'),
(10164,1,21,1,0,19698,151153,7 | 0x10,0,0,0,0,0,0,0,0,'Aldrimus - active'),
(10164,1,21,1,0,19697,70257,7 | 0x10,0,0,0,0,0,0,0,0,'Ha\'lei - active'),
(10164,1,21,1,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Clarissa - active');
UPDATE quest_template SET  CompleteScript = 10164 WHERE entry = 10164;

-- Spirit of Exarch Maladaar
UPDATE creature_template SET SpeedWalk = 1, MovementType = 2 WHERE entry = 19878;
DELETE FROM creature_template_addon WHERE entry = 19878;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(19878,0,0,1,0,0,0,32648);
DELETE FROM creature_movement_template WHERE entry = 19878;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(19878,1,-3346.01,5192.16,-101.051,40000,1987801,5.00181);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1987801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1987801,0,20,0,0,19698,151153,7 | 0x10,0,0,0,0,0,0,0,0,'Aldrimus - movement chenged to 0:idle'),
(1987801,0,20,0,0,19697,70257,7 | 0x10,0,0,0,0,0,0,0,0,'Ha\'lei - movement chenged to 0:idle'),
(1987801,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1987801,2,3,0,0,19698,151153,7 | 0x10,0,0,0,0,0,0,0,1.71733,'Aldrimus - change orientation'),
(1987801,3,0,0,0,0,0,0,2000001118,0,0,0,0,0,0,0,''),
(1987801,12,0,0,0,19698,151153,7 | 0x10,2000001119,0,0,0,0,0,0,0,''),
(1987801,17,0,0,0,0,0,0,2000001081,0,0,0,0,0,0,0,''),
(1987801,18,28,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Clarissa - STATE_STAND'),
(1987801,20,3,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,3.23001,'Clarissa - change orientation'),
(1987801,21,0,0,0,19693,70255,7 | 0x10,2000001120,0,0,0,0,0,0,0,''),
(1987801,22,3,0,0,19698,151153,7 | 0x10,0,0,0,0,0,0,0,5.77704,'Aldrimus - change orientation'),
(1987801,26,0,0,0,19698,151153,7 | 0x10,2000001121,0,0,0,0,0,0,0,''),
(1987801,29,3,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0.05236,'Clarissa - change orientation'),
(1987801,30,28,8,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Clarissa - STATE_KNEEL'),
(1987801,35,20,2,0,19698,151153,7 | 0x10,0,0,0,0,0,0,0,0,'Aldrimus - movement chenged to 2:wps'),
(1987801,35,20,2,0,19697,70257,7 | 0x10,0,0,0,0,0,0,0,0,'Ha\'lei - movement chenged to 2:wps'),
(1987801,36,21,0,0,19698,151153,7 | 0x10,0,0,0,0,0,0,0,0,'Aldrimus - unactive'),
(1987801,36,21,0,0,19697,70257,7 | 0x10,0,0,0,0,0,0,0,0,'Ha\'lei - unactive'),
(1987801,36,21,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Clarissa - unactive');
-- text
DELETE FROM db_script_string WHERE entry BETWEEN 2000001118 AND 2000001121;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001118,'The dark ones had taken a hold of me, master. You were merciful in seeking my death. Forgive me...',0,0,0,0,NULL),
(2000001119,'In death, all is forgiven...',0,0,0,0,NULL),
(2000001120,'Father? Father is that you?',0,0,0,6,NULL),
(2000001121,'It will be alright, darling. Grieve no more...',0,0,0,1,NULL);

-- WDB 747
-- q.6022 'To Kill With Purpose'
-- q. item % drop corrected
UPDATE creature_loot_template SET ChanceOrQuestChance = -55 WHERE entry = 8525 AND item = 15447;
UPDATE creature_loot_template SET ChanceOrQuestChance = -61 WHERE entry = 8531 AND item = 15447;
UPDATE creature_loot_template SET ChanceOrQuestChance = -60 WHERE entry = 8538 AND item = 15447;
UPDATE creature_loot_template SET ChanceOrQuestChance = -46 WHERE entry = 8526 AND item = 15447;
UPDATE creature_loot_template SET ChanceOrQuestChance = -61 WHERE entry = 8541 AND item = 15447;
UPDATE creature_loot_template SET ChanceOrQuestChance = -59 WHERE entry = 8543 AND item = 15447;
UPDATE creature_loot_template SET ChanceOrQuestChance = -2 WHERE entry = 12262 AND item = 15447;

-- WDB 748
/* Nathanos Blightcaller in Eastern Plaguelands offers chain that some quest are grouped:
1st group
-- 	q.6022 'To Kill With Purpose'
-- 	q.6042 'Un-Life's Little Annoyances'
-- 	q.6133 'The Ranger Lord's Behest'
2nd group
-- 	q.6135 'Duskwing, Oh How I Hate Thee...'
--	q.6136 'The Corpulent One'
3rd group
-- 	q.6163 'Ramstein'
--  q.14349 'The Call to Command' -- added in 3.3.0 replaces older q.6144
finishing q.14349 will unlock final chain
*/

-- 1st group must be completed to unlock 2nd group
DELETE FROM conditions WHERE condition_entry BETWEEN 1136 AND 1140;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1136, 8, 6022, 0), -- q.6022 'To Kill With Purpose' 
(1137, 8, 6042, 0), -- q.6042 'Un-Life's Little Annoyances'
(1138, 8, 6133, 0), -- q.6133 'The Ranger Lord's Behest'
(1139, -1, 1137, 1136),
(1140, -1, 1139, 1138); -- this will unlock 2nd group
UPDATE quest_template SET RequiredCondition = 1140 WHERE entry = 6135;
UPDATE quest_template SET RequiredCondition = 1140 WHERE entry = 6136;

-- 2nd group must be completed to unlock 3rd group
DELETE FROM conditions WHERE condition_entry BETWEEN 1151 AND 1153;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1151, 8, 6135, 0), -- q.6135 'Duskwing, Oh How I Hate Thee...' 
(1152, 8, 6136, 0), -- q.6136 'The Corpulent One'
(1153, -1, 1152, 1151); -- this will unlock 3rd group
UPDATE quest_template SET RequiredCondition = 1153 WHERE entry = 6163;
UPDATE quest_template SET RequiredCondition = 1153 WHERE entry = 14349;

-- WDB 749
-- q.6148 'The Scarlet Oracle, Demetria'
DELETE FROM dbscripts_on_quest_start WHERE id = 6148;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1640.14,-5467.21,97.83,1.15839,'summon - Scarlet Trooper'),
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1638.76,-5466.3,97.7965,1.15839,'summon - Scarlet Trooper'),
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1636.83,-5467.03,98.3487,1.37436,'summon - Scarlet Trooper'),
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1640.8,-5468.42,98.0504,1.24477,'summon - Scarlet Trooper'),
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1640.3,-5469.83,98.5054,1.0414,'summon - Scarlet Trooper'),
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1636.94,-5468.06,98.5386,0.927513,'summon - Scarlet Trooper'),
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1639.53,-5470.85,98.8409,1.12386,'summon - Scarlet Trooper'),
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1637.89,-5470.61,98.9737,1.10815,'summon - Scarlet Trooper'),
(6148,1,10,12352,600000*12,0,0,0x08,0,0,0,0,1636.58,-5469.1,98.8369,1.09245,'summon - Scarlet Trooper'),
(6148,2,10,12339,600000*12,0,0,0x08,0,0,0,0,1638.35,-5469.5,98.6581,1.26412,'summon - Demetria <The Scarlet Oracle>'); -- 2 hrs
UPDATE quest_template SET StartScript = 6148 WHERE entry = 6148;

-- link
DELETE FROM creature_linking_template WHERE entry = 12352;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(12352, 0, 12339, 1+512+8192, 100);

-- Scarlet Trooper
UPDATE creature_template SET MovementType = 0, equipmentTemplateid = 5431 WHERE Entry = 12352;

-- Demetria <The Scarlet Oracle>
UPDATE creature_template SET SpeedWalk = 1, MovementType = 2 WHERE entry = 12339;
DELETE FROM creature_movement_template WHERE entry = 12339;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(12339,1,1638.35,-5469.5,98.6581,0,0,100),
(12339,2,1645.41,-5450.02,92.1866,0,0,100),
(12339,3,1652.78,-5430.76,84.4578,0,0,100),
(12339,4,1657.93,-5416.62,79.8772,0,0,100),
(12339,5,1661.83,-5406.66,76.2934,0,0,100),
(12339,6,1669.8,-5383.78,73.6196,0,0,100),
(12339,7,1677.99,-5358.84,73.6117,0,0,100),
(12339,8,1695.25,-5350.09,73.6118,0,0,100),
(12339,9,1687.04,-5321.94,73.6112,0,0,100),
(12339,10,1688.58,-5304.51,73.6112,0,0,100),
(12339,11,1691,-5283.65,73.6122,0,0,100),
(12339,12,1691.91,-5262.08,73.6113,0,0,100),
(12339,13,1692.66,-5241.1,73.6185,0,0,100),
(12339,14,1692.85,-5206.13,74.6546,0,0,100),
(12339,15,1690.64,-5185.28,73.9301,0,0,100),
(12339,16,1688.08,-5167.96,73.9937,0,0,100),
(12339,17,1690.38,-5149.03,74.0396,0,0,100),
(12339,18,1697.51,-5118.86,73.6245,0,0,100),
(12339,19,1704.67,-5099.13,74.6873,0,0,100),
(12339,20,1711.01,-5080.54,77.301,0,0,100),
(12339,21,1718.55,-5057.22,80.1628,0,0,100),
(12339,22,1730.24,-5032.73,80.6236,0,0,100),
(12339,23,1742.91,-5011.79,79.9012,0,0,100),
(12339,24,1754.95,-4994.6,80.643,0,0,100),
(12339,25,1766.67,-4977.18,81.2274,0,0,100),
(12339,26,1773.03,-4950.42,81.449,0,0,100),
(12339,27,1777.47,-4922.77,81.5212,0,0,100),
(12339,28,1782.09,-4902.3,84.2517,0,0,100),
(12339,29,1788.34,-4877.56,87.4965,0,0,100),
(12339,30,1796.57,-4845.8,89.4469,0,0,100),
(12339,31,1809.45,-4798.58,91.0304,0,0,100),
(12339,32,1816.93,-4777.84,90.0115,0,0,100),
(12339,33,1831.75,-4734.83,90.0915,0,0,100),
(12339,34,1862.63,-4701.05,93.0158,0,0,100),
(12339,35,1889.08,-4684.05,92.355,0,0,100),
(12339,36,1910.74,-4672.59,91.1087,0,0,100),
(12339,37,1927.94,-4658.95,87.5957,0,0,100),
(12339,38,1935.76,-4647.33,84.3063,0,0,100),
(12339,39,1944.66,-4632.27,79.9795,0,0,100),
(12339,40,1954.98,-4609.24,74.7545,0,0,100),
(12339,41,1958.16,-4599.23,73.7161,0,0,100),
(12339,42,1968.46,-4572.57,73.6229,0,0,100),
(12339,43,1979.44,-4555.29,73.6229,0,0,100),
(12339,44,1984,-4549.99,73.6229,0,0,100),
(12339,45,1996.94,-4538.24,73.6229,0,0,100),
(12339,46,2005.36,-4531.97,73.6229,0,0,100),
(12339,47,2016.76,-4523.84,73.6213,0,0,100),
(12339,48,2027.83,-4517.97,73.6213,0,0,100),
(12339,49,2045.28,-4518.38,73.6213,0,0,100),
(12339,50,2061.31,-4534.8,73.6213,0,0,100),
(12339,51,2086.08,-4561.88,73.6213,0,0,100),
(12339,52,2105.32,-4580.45,73.6238,0,0,100),
(12339,53,2121.3,-4594.16,73.6238,0,0,100),
(12339,54,2146.73,-4612.71,73.6218,0,0,100),
(12339,55,2177.86,-4627.43,73.6067,0,0,100),
(12339,56,2197.77,-4633.93,73.6226,0,0,100),
(12339,57,2219.97,-4633.96,73.6226,0,0,100),
(12339,58,2250.74,-4627.66,73.6226,0,0,100),
(12339,59,2274.12,-4620.36,73.6226,0,0,100),
(12339,60,2304.25,-4611.22,73.6227,0,0,100),
(12339,61,2338.64,-4604.74,73.6227,0,0,100),
(12339,62,2389.36,-4603.99,73.6227,0,0,100),
(12339,63,2457.27,-4631.39,74.092,0,0,100),
(12339,64,2493.9,-4652.17,75.2848,0,0,100),
(12339,65,2535.82,-4654.52,77.3071,0,0,100),
(12339,66,2567.1,-4644.61,79.4072,0,0,100),
(12339,67,2594.36,-4628.84,81.876,0,0,100),
(12339,68,2617.07,-4615.06,84.1387,0,0,100),
(12339,69,2689.76,-4571.94,87.2045,0,0,100),
(12339,70,2745.8,-4539.07,88.764,0,0,100),
(12339,71,2839.33,-4436.83,89.7157,0,0,100),
(12339,72,2880.41,-4361.54,90.2576,0,0,100),
(12339,73,2923.76,-4110.16,96.3698,0,0,100),
(12339,74,2947.2,-4033.15,99.8002,0,0,100),
(12339,75,2968.64,-3982.02,104.423,0,0,100),
(12339,76,2976.9,-3964.26,107.058,0,0,100),
(12339,77,2983.54,-3937.96,111.717,0,0,100),
(12339,78,3000.21,-3877.74,118.93,0,0,100),
(12339,79,3011.92,-3842.22,119.306,0,0,100),
(12339,80,3021.88,-3813.28,118.955,0,0,100),
(12339,81,3028.71,-3797.17,120.17,0,0,100),
(12339,82,3042.19,-3764.47,119.971,0,0,100),
(12339,83,3057.23,-3724.98,119.568,0,0,100),
(12339,84,3062.31,-3690.16,121.125,0,0,100),
(12339,85,3048.16,-3659.65,122.811,0,0,100),
(12339,86,3041.49,-3641.07,125.02,0,0,100),
(12339,87,3039.91,-3617.72,123.977,0,0,100),
(12339,88,3040.67,-3597.35,124.377,0,0,100),
(12339,89,3042.45,-3556.22,126.571,0,0,100),
(12339,90,3046.02,-3530.23,129.898,0,0,100),
(12339,91,3057.06,-3493.26,131.601,0,0,100),
(12339,92,3076.38,-3462.24,134.709,0,0,100),
(12339,93,3086.02,-3451.18,136,0,0,100),
(12339,94,3097.45,-3438.57,136.842,0,0,100),
(12339,95,3133.22,-3404.77,139.345,0,0,100),
(12339,96,3150.28,-3401.16,140.105,0,0,100),
(12339,97,3172.46,-3393.09,142.015,0,0,100),
(12339,98,3191.09,-3389.1,143.607,0,0,100),
(12339,99,3210.72,-3387.02,144.24,0,0,100),
(12339,100,3250.95,-3382.95,143.581,0,0,100),
(12339,101,3269.06,-3382.33,143.195,0,0,100),
(12339,102,3286.95,-3382.42,142.377,0,0,100),
(12339,103,3307.89,-3382.95,144.951,0,0,100),
(12339,104,3329.2,-3382.28,144.845,0,0,100),
(12339,105,3347.55,-3381.64,144.779,0,0,100),
(12339,106,3361.09,-3380.75,144.781,0,0,100),
(12339,107,3339.81,-3380.58,144.774,0,0,100),
(12339,108,3311.44,-3380.27,145.017,0,0,100),
(12339,109,3296.01,-3380.1,143.741,0,0,100),
(12339,110,3274.59,-3380.86,142.727,0,0,100),
(12339,111,3274.59,-3380.86,142.727,0,0,100),
(12339,112,3251.44,-3382.31,143.585,0,0,100),
(12339,113,3217.38,-3385.87,144.301,0,0,100),
(12339,114,3189.08,-3389.3,143.545,0,0,100),
(12339,115,3168.36,-3392.69,141.758,0,0,100),
(12339,116,3128.73,-3405.3,139.154,0,0,100),
(12339,117,3104.29,-3429.73,137.697,0,0,100),
(12339,118,3079.44,-3458.29,135.39,0,0,100),
(12339,119,3062.03,-3484.05,132.59,0,0,100),
(12339,120,3051.15,-3508.73,131.122,0,0,100),
(12339,121,3044.5,-3543.07,128.53,0,0,100),
(12339,122,3040.58,-3585.59,124.369,0,0,100),
(12339,123,3040.05,-3618.85,124.055,0,0,100),
(12339,124,3041.87,-3636.23,125.378,0,0,100),
(12339,125,3048.01,-3656.25,122.83,0,0,100),
(12339,126,3059.89,-3685.41,121.254,0,0,100),
(12339,127,3063.62,-3704.59,120.885,0,0,100),
(12339,128,3049.97,-3743.53,120.437,0,0,100),
(12339,129,3038.77,-3773.26,119.728,0,0,100),
(12339,130,3029.37,-3797.56,120.123,0,0,100),
(12339,131,3017.78,-3822.93,118.882,0,0,100),
(12339,132,3011.9,-3841.29,119.307,0,0,100),
(12339,133,2999.1,-3881.4,118.595,0,0,100),
(12339,134,2992.82,-3899.77,116.742,0,0,100),
(12339,135,2987.35,-3919.01,114.686,0,0,100),
(12339,136,2979.54,-3951.23,108.575,0,0,100),
(12339,137,2974.35,-3965.01,106.582,0,0,100),
(12339,138,2965.39,-3989.01,103.564,0,0,100),
(12339,139,2947.58,-4032.49,99.8551,0,0,100),
(12339,140,2940.68,-4050.84,98.8149,0,0,100),
(12339,141,2927.47,-4095.16,96.9418,0,0,100),
(12339,142,2922.28,-4117.41,96.1034,0,0,100),
(12339,143,2916.91,-4141.33,95.1063,0,0,100),
(12339,144,2912.33,-4161.43,94.1942,0,0,100),
(12339,145,2906.67,-4194.05,92.8009,0,0,100),
(12339,146,2902.22,-4224.72,91.8676,0,0,100),
(12339,147,2898.62,-4254.12,91.3725,0,0,100),
(12339,148,2896.84,-4270.08,91.1643,0,0,100),
(12339,149,2892.88,-4300.96,90.6728,0,0,100),
(12339,150,2882.86,-4347.85,90.3236,0,0,100),
(12339,151,2875.88,-4369.2,90.0259,0,0,100),
(12339,152,2866.06,-4388.72,89.6369,0,0,100),
(12339,153,2855.15,-4407.04,89.3003,0,0,100),
(12339,154,2844.51,-4424.87,89.4741,0,0,100),
(12339,155,2835.01,-4439.19,89.6752,0,0,100),
(12339,156,2825.9,-4452.37,89.8312,0,0,100),
(12339,157,2781.37,-4503.54,89.6992,0,0,100),
(12339,158,2768.3,-4516.57,89.4068,0,0,100),
(12339,159,2751.64,-4531.98,88.9045,0,0,100),
(12339,160,2738.52,-4542.49,88.4996,0,0,100),
(12339,161,2714.09,-4557.62,87.6424,0,0,100),
(12339,162,2699.67,-4566.29,87.4294,0,0,100),
(12339,163,2684.52,-4575.58,87.001,0,0,100),
(12339,164,2667.22,-4586.17,85.7211,0,0,100),
(12339,165,2630.76,-4606.45,84.5909,0,0,100),
(12339,166,2618.07,-4614.37,84.1965,0,0,100),
(12339,167,2592.51,-4629.78,81.6831,0,0,100),
(12339,168,2570.53,-4643.56,79.6884,0,0,100),
(12339,169,2558.75,-4648.16,78.7332,0,0,100),
(12339,170,2544.22,-4651.95,77.8191,0,0,100),
(12339,171,2528.11,-4654.63,76.8986,0,0,100),
(12339,172,2511.76,-4655.66,76.0362,0,0,100),
(12339,173,2487.63,-4647.41,75.1608,0,0,100),
(12339,174,2467.38,-4636.04,74.6576,0,0,100),
(12339,175,2453.17,-4627.91,73.6226,0,0,100),
(12339,176,2437.83,-4620.44,73.6179,0,0,100),
(12339,177,2425.09,-4614.63,73.613,0,0,100),
(12339,178,2401.34,-4604.92,73.6229,0,0,100),
(12339,179,2367.28,-4602.14,73.6229,0,0,100),
(12339,180,2348.43,-4603.85,73.6229,0,0,100),
(12339,181,2312.07,-4610.25,73.6226,0,0,100),
(12339,182,2289.67,-4616.1,73.6237,0,0,100),
(12339,183,2270.18,-4621.81,73.6232,0,0,100),
(12339,184,2237.91,-4633.07,73.623,0,0,100),
(12339,185,2211.17,-4636.19,73.623,0,0,100),
(12339,186,2185.27,-4631.85,73.6238,0,0,100),
(12339,187,2161.67,-4621.89,73.6227,0,0,100),
(12339,188,2149.52,-4615.7,73.6227,0,0,100),
(12339,189,2128.18,-4600.53,73.6227,0,0,100),
(12339,190,2110.23,-4586.01,73.6227,0,0,100),
(12339,191,2094.4,-4570.16,73.6232,0,0,100),
(12339,192,2059.78,-4531.27,73.6232,0,0,100),
(12339,193,2025.92,-4515.28,73.6218,0,0,100),
(12339,194,1981.81,-4549.69,73.6228,0,0,100),
(12339,195,1968.69,-4574.04,73.6228,0,0,100),
(12339,196,1957.36,-4608.7,74.4979,0,0,100),
(12339,197,1948.95,-4627.72,78.4405,0,0,100),
(12339,198,1940.18,-4642.16,82.8813,0,0,100),
(12339,199,1932.32,-4651.64,85.6817,0,0,100),
(12339,200,1923.41,-4662.78,88.4994,0,0,100),
(12339,201,1912.89,-4671.55,90.7472,0,0,100),
(12339,202,1904.98,-4676.2,91.9429,0,0,100),
(12339,203,1880.51,-4687.26,92.3027,0,0,100),
(12339,204,1854.01,-4707.87,93.1035,0,0,100),
(12339,205,1840.53,-4719.99,92.1716,0,0,100),
(12339,206,1833.29,-4732.42,90.4734,0,0,100),
(12339,207,1825.75,-4748.92,88.8841,0,0,100),
(12339,208,1822.27,-4758.66,89.1826,0,0,100),
(12339,209,1817.98,-4771.4,89.7992,0,0,100),
(12339,210,1813.98,-4783.45,90.3784,0,0,100),
(12339,211,1810.56,-4794.25,91.0151,0,0,100),
(12339,212,1805.81,-4811.34,90.581,0,0,100),
(12339,213,1801.15,-4827.95,90.0279,0,0,100),
(12339,214,1791.34,-4861.33,88.9552,0,0,100),
(12339,215,1787.86,-4875.91,87.5166,0,0,100),
(12339,216,1780.76,-4905.48,84.0821,0,0,100),
(12339,217,1776.19,-4928.71,81.4626,0,0,100),
(12339,218,1774.3,-4938.49,81.4626,0,0,100),
(12339,219,1771.16,-4965.22,81.2126,0,0,100),
(12339,220,1757.6,-4990.9,80.8461,0,0,100),
(12339,221,1748.01,-5004.46,79.9039,0,0,100),
(12339,222,1738.94,-5016.73,79.9039,0,0,100),
(12339,223,1730.81,-5028.28,80.3151,0,0,100),
(12339,224,1720.51,-5053.17,80.4197,0,0,100),
(12339,225,1713.61,-5072.05,78.6081,0,0,100),
(12339,226,1704.71,-5094.96,75.245,0,0,100),
(12339,227,1692.75,-5131.78,73.8809,0,0,100),
(12339,228,1689.73,-5148.36,74.0206,0,0,100),
(12339,229,1688.35,-5178.24,73.7731,0,0,100),
(12339,230,1692.81,-5201.48,74.6409,0,0,100),
(12339,231,1690.74,-5274.98,73.6232,0,0,100),
(12339,232,1687.05,-5306.95,73.6112,0,0,100),
(12339,233,1686.21,-5322.85,73.6114,0,0,100),
(12339,234,1688.3,-5343.87,74.2449,0,0,100),
(12339,235,1672.16,-5377.38,73.6118,0,0,100),
(12339,236,1667.54,-5388.89,73.6137,0,0,100),
(12339,237,1664.18,-5398.35,74.3809,0,0,100),
(12339,238,1659.56,-5411.51,78.0987,0,0,100),
(12339,239,1657.63,-5416.96,80.0233,0,0,100),
(12339,240,1654.7,-5425.03,82.2941,0,0,100),
(12339,241,1652.04,-5432.05,84.9364,0,0,100),
(12339,242,1649.05,-5439.55,87.5085,0,0,100),
(12339,243,1646.61,-5446.01,90.2014,0,0,100),
(12339,244,1644.44,-5452.14,93.1195,0,0,100),
(12339,245,1641.84,-5459.95,95.4057,0,0,100),
(12339,246,1639.43,-5466.45,97.7334,0,0,100),
(12339,247,1635.2,-5476.15,100.195,0,0,100),
(12339,248,1631.56,-5485.27,100.73,0,0,100),
(12339,249,1627.96,-5493.81,100.73,0,0,100),
(12339,250,1623.74,-5501.82,102.308,0,0,100),
(12339,251,1621.54,-5506.67,104.154,0,0,100),
(12339,252,1619.31,-5510.5,105.706,0,0,100),
(12339,253,1617.2,-5514.39,107.478,0,0,100),
(12339,254,1615.11,-5518.38,108.951,0,0,100),
(12339,255,1613.27,-5521.97,110.422,0,0,100),
(12339,256,1610.31,-5527.82,111.163,0,0,100),
(12339,257,1606.59,-5535.3,111.171,0,0,100),
(12339,258,1596.95,-5537.16,111.171,0,0,100),
(12339,259,1591.5,-5546.99,111.171,0,0,100),
(12339,260,1594.64,-5559.12,111.171,0,0,100),
(12339,261,1587.05,-5573.4,111.171,0,0,100),
(12339,262,1576.47,-5592.38,111.171,0,0,100),
(12339,263,1569.09,-5606.81,114.19,5000,1,100);

-- WDB 750
-- Mmmrrrggglll <Grimscale Chieftain>
UPDATE creature SET position_x = 8869.87, position_y = -5775.96, position_z = 0.405, orientation = 1.25926, MovementType = 2 WHERE id = 15937;
UPDATE creature_template SET MovementType = 2 WHERE entry = 15937;
DELETE FROM creature_movement_template WHERE entry = 15937;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(15937, 1, 8880.69, -5754.61, 0.25531,0, 0, 100),
(15937, 2, 8873.34, -5735.01, 0.43308,0, 0, 100),
(15937, 3, 8862.79, -5722.62, 0.42263,0, 0, 100),
(15937, 4, 8846.43, -5720.66, 0.49396,0, 0, 100),
(15937, 5, 8836.92, -5726.74, 0.83736,0, 0, 100),
(15937, 6, 8828.79, -5743.62, 0.8259,0, 0, 100),
(15937, 7, 8818.04, -5755.89, 0.64673,0, 0, 100),
(15937, 8, 8804.55, -5762.79, 0.51199,0, 0, 100),
(15937, 9, 8791.79, -5762.27, 0.45083,0, 0, 100),
(15937, 10, 8777.22, -5753.97, 0.55571,0, 0, 100),
(15937, 11, 8776.86, -5738.23, 0.61609,0, 0, 100),
(15937, 12, 8785.23, -5722.79, 0.75764,0, 0, 100),
(15937, 13, 8786.4, -5701.79, 0.67103,0, 0, 100),
(15937, 14, 8771.28, -5696.08, 0.67596,0, 0, 100),
(15937, 15, 8758.6, -5694.22, 0.55669,0, 0, 100),
(15937, 16, 8746.01, -5704.51, 0.50786,0, 0, 100),
(15937, 17, 8735.82, -5722.94, 0.94607,0, 0, 100),
(15937, 18, 8720.27, -5730.86, 0.89406,0, 0, 100),
(15937, 19, 8706.96, -5730.08, 0.77437,0, 0, 100),
(15937, 20, 8693.58, -5720.97, 0.86999,0, 0, 100),
(15937, 21, 8679.18, -5710.54, 1.10842,0, 0, 100),
(15937, 22, 8656.02, -5704.34, 1.80973,0, 0, 100),
(15937, 23, 8640.98, -5691.51, 0.4769,0, 0, 100),
(15937, 24, 8635.42, -5689.71, 0.53144,0, 0, 100),
(15937, 25, 8620.44, -5687.68, 0.86486,0, 0, 100),
(15937, 26, 8601.69, -5688.44, 0.49338,36000, 0,1.93),
(15937, 27, 8619.99, -5679.97, 0.75128,0, 0, 100),
(15937, 28, 8635.67, -5671.58, 0.53144,0, 0, 100),
(15937, 29, 8648.3, -5670.15, 0.49488,0, 0, 100),
(15937, 30, 8664.99, -5679.42, 0.55752,0, 0, 100),
(15937, 31, 8679.18, -5710.54, 1.10842,0, 0, 100),
(15937, 32, 8693.58, -5720.97, 0.86999,0, 0, 100),
(15937, 33, 8706.96, -5730.08, 0.77437,0, 0, 100),
(15937, 34, 8721.72, -5745.01, 0.62278,0, 0, 100),
(15937, 35, 8735.53, -5753.92, 1.24721,0, 0, 100),
(15937, 36, 8767.19, -5758.18, 0.50536,0, 0, 100),
(15937, 37, 8791.79, -5762.27, 0.45083,0, 0, 100),
(15937, 38, 8804.55, -5762.79, 0.51199,0, 0, 100),
(15937, 39, 8818.04, -5755.89, 0.64673,0, 0, 100),
(15937, 40, 8828.79, -5743.62, 0.8259,0, 0, 100),
(15937, 41, 8836.92, -5726.74, 0.83736,0, 0, 100),
(15937, 42, 8846.43, -5720.66, 0.49396,0, 0, 100),
(15937, 43, 8873.34, -5735.01, 0.43308,0, 0, 100),
(15937, 44, 8880.69, -5754.61, 0.25531,60000,0,6.105);

-- WDB 751

-- q.10923 'Evil Draws Near'
DELETE FROM dbscripts_on_event WHERE id = 14484; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
-- summoning spell (visual) missing
(14484,1,10,22441,600000,0,0,0x08,1,0,0,0,-3398.8,4565.9,57.4391,4.43695,'summon - Teribus the Cursed');

-- Teribus the Cursed
UPDATE creature_template_addon SET bytes1 = 50331648 WHERE entry = 22441;
UPDATE creature_template SET InhabitType = 4, ExtraFlags = 0, MovementType = 2 WHERE entry = 22441;
DELETE FROM creature_movement_template WHERE entry = 22441;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(22441,1,-3398.8,4565.9,57.4391,0,0,4.43695),
(22441,2,-3414.27,4478.91,33.7375,0,0,4.53512),
(22441,3,-3417.92,4453.57,-7.968,10000,2244101,5.02208);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2244101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2244101,1,39,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'fly off'),
(2244101,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2244101,3,22,16,0x01 | 0x10,0,0,0,0,0,0,0,0,0,0,0,'temp faction');

-- Auchenai Death-Speaker (around summoning Circle)
DELETE FROM creature_addon WHERE guid IN (74466,74467,74468);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(74466,0,0,1,16,0,0,38159),
(74467,0,0,1,16,0,0,38159),
(74468,0,0,1,16,0,0,38159);

-- WDB 753
-- q.10526 'The thunderspike'
DELETE FROM dbscripts_on_event WHERE id = 13685;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13685,0,31,21319,200,0,0,8,0,0,0,0,0,0,0,0,'search for 21319'),
(13685,1,10,21319,300000,0,0,0,0,0,0,0,1316.33,6686.82,-18.6386,0.418724,'summon - Gor Grimgut'),
(13685,3,0,0,0,21319,50,3,2000001122,0,0,0,0,0,0,0,''),
(13685,3,3,0,0,21319,50,7,0,0,0,0,0,0,0,1.98952,''),
(13685,5,42,0,0,21319,50,7,30440,0,0,0,0,0,0,0,'change equipment'),
(13685,5,40,0,0,184737,44736,1 | 0x10,0,0,0,0,0,0,0,0,'despawn object'),
(13685,6,0,0,0,21319,50,7,2000001123,0,0,0,0,0,0,0,''),
(13685,6,22,1781,0x01 | 0x08,21319,50,0,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM db_script_string WHERE entry IN (2000001122,2000001123);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001122,'Puny $r cannot lift spear. Gor lift spear!',0,0,0,0,NULL),
(2000001123,'Hah! The Thunderspike is mine. Die!',0,0,0,0,NULL);

-- Gor Grimgut
UPDATE creature_template SET FactionAlliance = 1781, FactionHorde = 1781, UnitFlags = 32770, MovementType = 0 WHERE entry = 21319;

-- Gameobjects update
UPDATE gameobject SET spawntimesecs = 120 WHERE id IN (184729,184737);
UPDATE gameobject_template SET data5 = 1 WHERE entry = 184729;

-- WDB 755
-- q.7481 'Elven Legends' - Horde
-- q.7482 'Elven Legends' - Alliance
-- conditions corrected
UPDATE gossip_menu_option SET condition_id = 482 WHERE menu_id = 5743 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 483 WHERE menu_id = 5743 AND id = 1;
-- radius in script corrected
UPDATE dbscripts_on_gossip SET datalong2 = 10 WHERE id = 5743 AND delay = 0;
UPDATE dbscripts_on_gossip SET datalong2 = 10 WHERE id = 5744 AND delay = 0;

-- WDB 756
-- q.7483 'Libram of Rapidity'
-- q.7484 'Libram of Focus'
-- q.7485 'Libram of Protection'
-- available only after (q.7481 'Elven Legends' - Horde) or (q.7482 'Elven Legends') - Alliance completed
DELETE FROM conditions WHERE condition_entry BETWEEN 1154 AND 1156;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1154, 8, 7481, 0),
(1155, 8, 7482, 0),
(1156, -2, 1155, 1154);
UPDATE quest_template SET RequiredCondition = 1156 WHERE entry IN (7483,7484,7485);

-- WDB 757

-- Dungeon Set2 (Tier 0.5) quest chain.
-- Updates

-- TEMP The Crimson Throne -- missing added
DELETE FROM gameobject WHERE guid = 93930;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(93930, 300061, 329, 1,3423.92, -3056.07, 136.498, 5.3327, 0, 0, 0.457554, -0.889182, 120, 255, 1);


-- Lord Valthalak Trigger
-- missing added - WoTLKDB free guid reused
DELETE FROM creature WHERE guid = 151160;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(151160,16048,229,1,0,0,50.1154,-534.537,111.02,6.16101,7200,0,0,3296,2434,0,0);

-- Lord Valthalak
UPDATE creature_template SET EquipmentTemplateId = 5072 WHERE Entry = 16042;

-- Spectral Assassin
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE Entry = 16066;

-- Kormok
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, EquipmentTemplateId = 137, MovementType = 0 WHERE Entry = 16118;

-- Mor Grayhoof
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, EquipmentTemplateId = 160, MovementType = 0 WHERE Entry = 16080;

-- Isalien
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, EquipmentTemplateId = 144, MovementType = 0 WHERE Entry = 16097;

-- Jarien and Sothos
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = 32770, EquipmentTemplateId = 152, MovementType = 0 WHERE Entry = 16101;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, UnitFlags = 32770, EquipmentTemplateId = 159, MovementType = 0 WHERE Entry = 16102;
-- Sothos equipment
DELETE FROM creature_equip_template WHERE entry = 159;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(159, 18983, 12893, 0);

-- Spirit of Jarien
UPDATE creature_template SET FactionAlliance = 250, FactionHorde = 250, EquipmentTemplateId = 5606, MovementType = 0 WHERE Entry = 16103;
-- Spirit of Sothos
UPDATE creature_template SET FactionAlliance = 250, FactionHorde = 250, EquipmentTemplateId = 159, MovementType = 0 WHERE Entry = 16104;

-- WDB 758
-- Arcanist Savan
-- position corrected
UPDATE creature SET position_x = -2139.32, position_y = 5552.883, position_z = 50.38232, orientation = 0.2617994 WHERE id = 23272;

DELETE FROM creature_equip_template WHERE entry IN(160);
INSERT INTO creature_equip_template VALUES
('160', '13222', '0', '0');

DELETE FROM item_template WHERE entry IN(18983,29462,29439);
INSERT INTO item_template(entry, class, subclass, name, displayid, Quality, Flags, BuyCount, BuyPrice, SellPrice, InventoryType, AllowableClass, AllowableRace, ItemLevel, RequiredLevel, RequiredSkill, RequiredSkillRank, requiredspell, requiredhonorrank, RequiredCityRank, RequiredReputationFaction, RequiredReputationRank, maxcount, stackable, ContainerSlots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, delay, ammo_type, RangedModRange, spellid_1, spelltrigger_1, spellcharges_1, spellppmRate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmRate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmRate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmRate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmRate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, description, PageText, LanguageID, PageMaterial, startquest, lockid, Material, sheath, RandomProperty, block, itemset, MaxDurability, area, Map, BagFamily, ScriptName, DisenchantID, FoodType, minMoneyLoot, maxMoneyLoot, Duration, ExtraFlags) VALUES
('18983', '2', '7', 'Monster - Sword, Longsword Exotic Black - Low Red Flame', '31419', '0', '0', '1', '0', '0', '13', '-1', '-1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0');
/*INSERT INTO item_template(entry,class,subclass,Material,displayId,InventoryType,sheath) VALUES
(29439,2,7,1,40780,13,4),
(29462,2,7,1,40889,13,1);*/
DELETE FROM item_template WHERE entry in (29439,29462);
INSERT INTO item_template (entry, class, subclass, unk0, name, displayid, Quality, Flags, BuyCount, BuyPrice, SellPrice, InventoryType, AllowableClass, AllowableRace, ItemLevel, RequiredLevel, RequiredSkill, RequiredSkillRank, requiredspell, requiredhonorrank, RequiredCityRank, RequiredReputationFaction, RequiredReputationRank, maxcount, stackable, ContainerSlots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, delay, ammo_type, RangedModRange, spellid_1, spelltrigger_1, spellcharges_1, spellppmRate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmRate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmRate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmRate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmRate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, description, PageText, LanguageID, PageMaterial, startquest, lockid, Material, sheath, RandomProperty, RandomSuffix, block, itemset, MaxDurability, area, Map, BagFamily, TotemCategory, socketColor_1, socketContent_1, socketColor_2, socketContent_2, socketColor_3, socketContent_3, socketBonus, GemProperties, RequiredDisenchantSkill, ArmorDamageModifier, Duration, ScriptName, DisenchantID, FoodType, minMoneyLoot, maxMoneyLoot, ExtraFlags) values
('29439','2','7','-1','Monster - Sword - Crystal Scimitar - Ethereal, Protectorate (White Glow, Pink Crystal)','40780','1','0','1','1','1','13','-1','-1','2','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','3','0','0','0','0','0','0','0','0','0','0','0','1900','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','1','0','0','0','1','4','0','0','0','0','20','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','','0','0','0','0','0'),
('29462','2','7','-1','Monster - Sword - Crystal - Ethereal, Protectorate (White Glow)','40889','1','0','1','1','1','13','-1','-1','2','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','3','0','0','0','0','0','0','0','0','0','0','0','1900','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','1','0','0','0','1','1','0','0','0','0','20','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','','0','0','0','0','0');


