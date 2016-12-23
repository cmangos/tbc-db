-- Classic Backport #6 Part1.

-- Classic [1198]
-- Removed wrong drop chance for item 12236 (Pure Un'Goro Sample) from NPC 7035 (Firegut Ogre)
DELETE FROM creature_loot_template WHERE entry = 7035 AND item = 12236;

-- Classic [1201]
-- Fixed damage of NPC 14986 (Shade of Jin'do): they must do shadow damage instead of physical
UPDATE creature_template SET DamageSchool = 5 WHERE Entry = 14986;

-- Classic [1211]
-- Added missing NPC 5432 in Tanaris 
-- Added missing Giant Surf Glider elite creatures in Tanaris
-- These creatures are important for Hunters as the source of Bite, rank 7 (the only source ability available at the lowest possible level).
-- duplicates removed + missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (61239,61240,61242,61245,61247,61251,61252,61253,61254,61257,61258,61259,61261,61262,61263,61265,61266,23677,23690,23683,23630,23627,23681,23615,23694,23612,23659,23703,23682,23661,23692,23698);
DELETE FROM creature_addon WHERE guid IN (61239,61240,61242,61245,61247,61251,61252,61253,61254,61257,61258,61259,61261,61262,61263,61265,61266,23677,23690,23683,23630,23627,23681,23615,23694,23612,23659,23703,23682,23661,23692,23698);
DELETE FROM creature_movement WHERE id IN (61239,61240,61242,61245,61247,61251,61252,61253,61254,61257,61258,61259,61261,61262,61263,61265,61266,23677,23690,23683,23630,23627,23681,23615,23694,23612,23659,23703,23682,23661,23692,23698);
DELETE FROM game_event_creature WHERE guid IN (61239,61240,61242,61245,61247,61251,61252,61253,61254,61257,61258,61259,61261,61262,61263,61265,61266,23677,23690,23683,23630,23627,23681,23615,23694,23612,23659,23703,23682,23661,23692,23698);
DELETE FROM game_event_creature_data WHERE guid IN (61239,61240,61242,61245,61247,61251,61252,61253,61254,61257,61258,61259,61261,61262,61263,61265,61266,23677,23690,23683,23630,23627,23681,23615,23694,23612,23659,23703,23682,23661,23692,23698);
DELETE FROM creature_battleground WHERE guid IN (61239,61240,61242,61245,61247,61251,61252,61253,61254,61257,61258,61259,61261,61262,61263,61265,61266,23677,23690,23683,23630,23627,23681,23615,23694,23612,23659,23703,23682,23661,23692,23698);
DELETE FROM creature_linking WHERE guid IN (61239,61240,61242,61245,61247,61251,61252,61253,61254,61257,61258,61259,61261,61262,61263,61265,61266,23677,23690,23683,23630,23627,23681,23615,23694,23612,23659,23703,23682,23661,23692,23698) OR 
master_guid IN (61239,61240,61242,61245,61247,61251,61252,61253,61254,61257,61258,61259,61261,61262,61263,61265,61266,23677,23690,23683,23630,23627,23681,23615,23694,23612,23659,23703,23682,23661,23692,23698);
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType) VALUES
(61239, 5432, 1, -10260, -3792, 0.569, 2.841, 430, 4, 6702, 0, 1),
(61240, 5432, 1, -10257, -3874, 2.209, 2.441, 430, 4, 6702, 0, 1),
(61242, 5432, 1, -10254, -4093, 0.567, 3.711, 430, 4, 6702, 0, 1),
(61245, 5432, 1, -10200, -3943, 3.372, 1.621, 430,15, 6702, 0, 1),
(61247, 5432, 1, -10145, -3699, 0.151, 1.476, 430,15, 6702, 0, 1),
(61251, 5432, 1, -10103, -3846, 5.825, 0.791, 430,15, 6702, 0, 1),
(61252, 5432, 1, -10100, -4246, 0.558, 3.181, 430,15, 6702, 0, 1),
(61253, 5432, 1, -10021, -3726, 7.162, 0.37,  430,15, 6702, 0, 1),
(61254, 5432, 1, -10007, -3596, 0.59,  1.329, 430,15, 6702, 0, 1),
(61257, 5432, 1,  -9989, -4221, 6.916, 1.987, 430,15, 6702, 0, 1),
(61258, 5432, 1,  -9944, -4370, 0.551, 3.518, 430,15, 6702, 0, 1),
(61259, 5432, 1,  -9855, -3637, 11.177,6.259, 430,15, 6702, 0, 1),
(61261, 5432, 1,  -9855, -3556, 0.715, 2.209, 430,15, 6702, 0, 1),
(61262, 5432, 1,  -9836, -4304, 8.469, 1.723, 430,15, 6702, 0, 1),
(61263, 5432, 1,  -9754, -4453, 0.569, 4.148, 430,15, 6702, 0, 1),
(61265, 5432, 1,  -9718, -4372, 5.972, 3.225, 430,15, 6702, 0, 1),
(61266, 5432, 1,  -9628, -4404, 0.569, 1.831, 430,15, 6702, 0, 1);
UPDATE creature SET position_x = -9931.842773, position_y = -4282.814453, position_z = 3.169156 WHERE guid = 23704;
UPDATE creature SET position_x = -10132.565430, position_y = -3922.736084, position_z = 9.439157 WHERE guid = 23633;
UPDATE creature SET position_x = -10125.071289, position_y = -4091.915527, position_z = 3.643771 WHERE guid = 23657;
UPDATE creature_template SET CreatureTypeFlags=CreatureTypeFlags|1, PetSpellDataId = 5931, SpeedWalk = 1 WHERE entry = 5432; -- tameable, has Bite 7

-- Classic [1213]
-- Fixed equipment of NPC 9398 in Blackrock Depths 
-- Added missing equipment for NPC 9398 (Twilight's Hammer Executioner) in Blackrock Depths
-- Source: Trinity DB
UPDATE creature_template SET EquipmentTemplateId = 5120 WHERE Entry = 9398;

-- Classic [1214]
-- Improved movement of NPC 2151
-- Moon Priestess Amara (GUID 46394) should be followed by Huntress Nhemai (GUID 46414) and Huntress Yaeliura (GUID 46416)
-- They previously had individual waypoint movement, which desyncs the group when Amara is stoping to give/accept her quest
-- Waypoints and timers are guesswork and still open to improvement but far better than the previous ones were.
-- Updated Spawn positions
UPDATE creature SET position_x = 9847.158203, position_y = 1033.056885, position_z = 1304.841553, orientation = 1.598161, spawndist = 0 WHERE guid = 46394;
UPDATE creature SET position_x = 9848.743164, position_y = 1030.924561, position_z = 1304.877075, orientation = 1.598161, spawndist = 0 WHERE guid = 46416;
UPDATE creature SET position_x = 9844.817383, position_y = 1030.817139, position_z = 1304.843262, orientation = 1.598161, spawndist = 0 WHERE guid = 46414;
-- Link patrol together
UPDATE creature SET MovementType = 0 WHERE guid IN (46414,46416);
DELETE FROM creature_linking_template WHERE entry IN (2151,10604,10606);
INSERT INTO creature_linking_template VALUES (10604,1,2151,515,0); -- AGGRO_ON_AGGRO,TO_AGGRO_ON_AGGRO,FOLLOW
INSERT INTO creature_linking_template VALUES (10606,1,2151,515,0); -- AGGRO_ON_AGGRO,TO_AGGRO_ON_AGGRO,FOLLOW
-- Set new Waypoints,with 1 or 2 minute waittime on turning points
DELETE FROM creature_movement WHERE id IN (46394,46414,46416);
DELETE FROM creature_movement_template WHERE entry IN (2151,10604,10606);
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(2151,1,9848.04,1041.22,1304.85,100,0,0),
(2151,2,9858.52,1069.36,1307.46,100,0,0),
(2151,3,9875.29,1083.34,1308.01,100,0,0),
(2151,4,9882.02,1097.79,1307.99,100,0,0),
(2151,5,9883.15,1111.71,1307.96,100,0,0),
(2151,6,9890,1120.49,1307.86,100,0,0),
(2151,7,9907.28,1132.35,1307.9,100,0,0),
(2151,8,9914.82,1147.38,1307.86,100,0,0),
(2151,9,9918.2,1163.74,1307.88,100,0,0),
(2151,10,9916.63,1182.79,1308.02,100,0,0),
(2151,11,9911.21,1195.08,1308.58,100,0,0),
(2151,12,9909.48,1204.53,1308.46,100,0,0),
(2151,13,9911.23,1216.3,1307.86,100,0,0),
(2151,14,9922.35,1235.1,1307.82,100,0,0),
(2151,15,9930.69,1241.98,1307.91,100,0,0),
(2151,16,9939.68,1245.05,1307.84,100,0,0),
(2151,17,9950.57,1245.9,1307.82,100,0,0),
(2151,18,9974.05,1243.7,1307.86,100,0,0),
(2151,19,9986.35,1244.66,1307.86,100,0,0),
(2151,20,9996.67,1249.89,1307.86,100,0,0),
(2151,21,10004.9,1258.47,1307.86,100,0,0),
(2151,22,10019.9,1280.59,1307.57,100,60000,0),
(2151,23,10004.9,1258.47,1307.86,100,0,0),
(2151,24,9996.67,1249.89,1307.86,100,0,0),
(2151,25,9986.35,1244.66,1307.86,100,0,0),
(2151,26,9974.05,1243.7,1307.86,100,0,0),
(2151,27,9950.57,1245.9,1307.82,100,0,0),
(2151,28,9939.68,1245.05,1307.84,100,0,0),
(2151,29,9930.69,1241.98,1307.91,100,0,0),
(2151,30,9922.35,1235.1,1307.82,100,0,0),
(2151,31,9911.23,1216.3,1307.86,100,0,0),
(2151,32,9909.48,1204.53,1308.46,100,0,0),
(2151,33,9911.21,1195.08,1308.58,100,0,0),
(2151,34,9916.63,1182.79,1308.02,100,0,0),
(2151,35,9918.2,1163.74,1307.88,100,0,0),
(2151,36,9914.82,1147.38,1307.86,100,0,0),
(2151,37,9907.28,1132.35,1307.9,100,0,0),
(2151,38,9890,1120.49,1307.86,100,0,0),
(2151,39,9883.15,1111.71,1307.96,100,0,0),
(2151,40,9882.02,1097.79,1307.99,100,0,0),
(2151,41,9875.29,1083.34,1308.01,100,0,0),
(2151,42,9858.52,1069.36,1307.46,100,0,0),
(2151,43,9848.04,1041.22,1304.85,100,0,0),
(2151,44,9847.16,1033.06,1304.84,100,0,0),
(2151,45,9846.97,1016.45,1305.5,100,0,0),
(2151,46,9846.9,1001.48,1305.45,100,0,0),
(2151,47,9848.38,984.463,1305.21,100,120000,0),
(2151,48,9847.17,1002.49,1305.47,100,0,0),
(2151,49,9847.01,1016.18,1305.5,100,0,0),
(2151,50,9847.45,1033.03,1304.85,100,0,0);

-- Classic [1215]
-- Added more flavor text to NPC 9500 (Mistress Nagmara) in Blackrock Depths. Now she will have chit-chat with the nearby patrons while she wanders in the Grim Guzzler bar.
-- Also added gossip menu option for players having completed the Potion of Love quest (4201), the script will be handled by SD2
DELETE FROM db_script_string WHERE entry BETWEEN 2000000860 AND 2000000866;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000860, 'Hey Nagmara! How about a mug of Dark Iron Ale?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000861, 'Nagmara! Have any mutton left?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000862, 'Mistress, you tell Plugger that I want more of his ale. I can\'t get enough!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000863, 'Hey Nag, how about you slice me off a piece of that...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000864, 'You got it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000865, 'Coming right up!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000866, 'I\'ll bring it right over, baby...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL);
DELETE FROM dbscripts_on_creature_movement WHERE id = 950001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(950001, 0, 31, 9545,100,0,0,0,0,0,0,0,0,0,0,0,'search for 9545'), 
(950001, 1, 0, 0, 0, 9545, 20, 0, 2000000860, 2000000861, 2000000862, 2000000863, 0, 0, 0, 0, 'Grim Patron - Say 1, 2, 3 or 4'),
(950001, 1, 36, 0, 0, 9545, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Grim Patron - Face Nagmara'),
(950001, 2, 36, 0, 0, 9545, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - Face Grim Patron'),
(950001, 3, 0, 0, 0, 0, 0, 0, 2000000864, 2000000865, 2000000866, 0, 0, 0, 0, 0, 'Mistress Nagmara - Say 1, 2 or 3'),
(950001, 5, 36, 1, 0, 9545, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Grim Patron - restore orientation'),
(950001, 6, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - restore orientation'),
(950002, 0, 31, 9547,100,0,0,0,0,0,0,0,0,0,0,0,'search for 9547'),
(950002, 1, 0, 0, 0, 9547, 20, 0, 2000000860, 2000000861, 2000000862, 2000000863, 0, 0, 0, 0, 'Grim Patron - Say 1, 2, 3 or 4'),
(950002, 1, 36, 0, 0, 9547, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Guzzling Patron - Face Nagmara'),
(950002, 2, 36, 0, 0, 9547, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - Face Guzzling Patron'),
(950002, 3, 0, 0, 0, 0, 0, 0, 2000000864, 2000000865, 2000000866, 0, 0, 0, 0, 0, 'Mistress Nagmara - Say 1, 2 or 3'),
(950002, 5, 36, 1, 0, 9547, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Guzzling Patron - restore orientation'),
(950002, 6, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - restore orientation');
UPDATE creature_movement_template SET script_id = 950002, waittime = 6000 WHERE entry = 9500 AND point = 7;
UPDATE creature_movement_template SET script_id = 950002, waittime = 6000 WHERE entry = 9500 AND point = 15;
UPDATE creature_movement_template SET script_id = 950001, waittime = 6000 WHERE entry = 9500 AND point = 12;
DELETE FROM conditions WHERE condition_entry = 1067;
INSERT INTO conditions VALUES
(1067, 8, 4201, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 2076;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
(2076, 0, 0, 'Why don\'t you and Rocknot go find somewhere private...', 1, 1, -1, 0, 0, 0, 0, '', 1067);

-- Classic [1217]
-- Moved creature_addons of NPC 5431 (Surf Glider) in Tanaris to creature_template_addon since they are all using the same addon 
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 5431);
DELETE FROM creature_template_addon WHERE entry = 5431;
INSERT INTO creature_template_addon VALUES
(5431, 0, 0, 1, 16, 0, 0, NULL);

-- Classic [1231]
-- Silithus - Twilight Lord Everun 
UPDATE creature_template SET SpeedWalk = 1 WHERE Entry = 14479;
DELETE FROM creature WHERE id = 14479;
-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (43126,107777,107778);
DELETE FROM creature_addon WHERE guid IN (43126,107777,107778);
DELETE FROM creature_movement WHERE id IN (43126,107777,107778);
DELETE FROM game_event_creature WHERE guid IN (43126,107777,107778);
DELETE FROM game_event_creature_data WHERE guid IN (43126,107777,107778);
DELETE FROM creature_battleground WHERE guid IN (43126,107777,107778);
DELETE FROM creature_linking WHERE guid IN (43126,107777,107778) OR 
master_guid IN (43126,107777,107778);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(43126,14479,1,1,0,0,-7952.43,1900.06,1.37144,2.85624,21000,0,0,3297,2434,0,2),
(107777,14479,1,1,0,0,-7023.3,1197.83,6.55688,4.41133,21000,0,0,3297,2434,0,2),
(107778,14479,1,1,0,0,-6732.62,1586.9,10.0353,4.41133,21000,0,0,3297,2434,0,0); -- should have waypoints also - missing
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 14479);
DELETE FROM creature_movement_template WHERE entry = 14479;
-- #1st spawn
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(43126, 1, -7933.409, 1915.553, 4.745111, 0, 0, 100, 0, 0),
(43126, 2, -7899.944, 1913.035, 3.638075, 0, 0, 100, 0, 0),
(43126, 3, -7880.021, 1903.608, 4.840346, 0, 0, 100, 0, 0),
(43126, 4, -7874.553, 1886.315, 5.245306, 0, 0, 100, 0, 0),
(43126, 5, -7896.264, 1870.850, 5.104681, 0, 0, 100, 0, 0),
(43126, 6, -7912.292, 1852.625, 4.846241, 0, 0, 100, 0, 0),
(43126, 7, -7913.682, 1834.233, 3.933521, 0, 0, 100, 0, 0),
(43126, 8, -7923.220, 1822.200, 3.554747, 0, 0, 100, 0, 0),
(43126, 9, -7939.812, 1820.074, 3.946807, 0, 0, 100, 0, 0),
(43126, 10, -7950.682, 1834.833, 3.785096, 0, 0, 100, 0, 0),
(43126, 11, -7941.653, 1859.440, 4.833069, 0, 0, 100, 0, 0),
(43126, 12, -7948.324, 1881.011, 3.527304, 0, 0, 100, 0, 0),
(43126, 13, -7951.504, 1902.775, 2.120600, 0, 0, 100, 0, 0),
-- #2nd spawn
(107777, 1, -7008.006, 1202.084, 7.700902, 0, 0, 100, 0, 0),
(107777, 2, -6995.428, 1208.250, 8.820854, 0, 0, 100, 0, 0),
(107777, 3, -6979.564, 1207.478, 9.471367, 0, 0, 100, 0, 0),
(107777, 4, -6957.870, 1199.927, 9.185988, 0, 0, 100, 0, 0),
(107777, 5, -6946.232, 1190.906, 9.908278, 0, 0, 100, 0, 0),
(107777, 6, -6949.811, 1169.085, 10.86482, 0, 0, 100, 0, 0),
(107777, 7, -6962.905, 1163.869, 11.56198, 0, 0, 100, 0, 0),
(107777, 8, -6964.529, 1154.799, 10.73739, 0, 0, 100, 0, 0),
(107777, 9, -6976.600, 1144.452, 9.615312, 0, 0, 100, 0, 0),
(107777, 10, -6984.484, 1136.351, 9.539872, 0, 0, 100, 0, 0),
(107777, 11, -6981.354, 1123.549, 7.882970, 0, 0, 100, 0, 0),
(107777, 12, -6985.575, 1116.994, 8.541417, 0, 0, 100, 0, 0),
(107777, 13, -6994.624, 1117.175, 9.183019, 0, 0, 100, 0, 0),
(107777, 14, -6998.787, 1125.470, 9.350011, 0, 0, 100, 0, 0),
(107777, 15, -6998.452, 1135.539, 8.714189, 0, 0, 100, 0, 0),
(107777, 16, -7012.332, 1141.683, 6.041239, 0, 0, 100, 0, 0),
(107777, 17, -7022.462, 1149.656, 6.685770, 0, 0, 100, 0, 0),
(107777, 18, -7030.819, 1149.059, 6.414530, 0, 0, 100, 0, 0),
(107777, 19, -7036.089, 1145.387, 6.349092, 0, 0, 100, 0, 0),
(107777, 20, -7040.804, 1147.568, 6.349092, 0, 0, 100, 0, 0),
(107777, 21, -7041.828, 1153.085, 6.349092, 0, 0, 100, 0, 0),
(107777, 22, -7035.541, 1164.167, 6.259127, 0, 0, 100, 0, 0),
(107777, 23, -7032.510, 1173.299, 6.809674, 0, 0, 100, 0, 0),
(107777, 24, -7025.639, 1180.353, 6.848492, 0, 0, 100, 0, 0),
(107777, 25, -7023.183, 1198.596, 6.662579, 0, 0, 100, 0, 0);
-- 3rd - missing
-- pools
DELETE FROM pool_template WHERE entry = 25539;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25539, 1, 'Silithus - Twilight Lord Everun');
DELETE FROM pool_creature_template WHERE pool_entry = 25539;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(14479, 25539, 0, 'Twilight Lord Everun');

-- Classic [1236]
-- Updated some rare NPCs in the Western and Eastern Plaguelands: stats, waypoints and/or spawn points
-- Zul'Brin Warpbranch
-- Stone Fury
-- Duggan Wildhammer
-- Foreman Marcrid
-- Borelgore
-- Duskwing
-- Updated some rare NPCs in the Western and Eastern Plaguelands: stats, waypoints and/or spawn points
UPDATE creature_template SET SpeedWalk = 1.1, UnitFlags = 32768 WHERE Entry = 10823; -- Zul'Brin Warpbranch
UPDATE creature_template SET SpeedRun = 2 WHERE Entry = 2258; -- Stone Fury
UPDATE creature_template SET SpeedWalk = 1.1 WHERE Entry = 10817; -- Duggan Wildhammer
UPDATE creature_template SET SpeedWalk = 1.1 WHERE Entry = 1844; -- Foreman Marcrid
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, SpeedWalk = 1.1 WHERE Entry = 11897; -- Duskwing
-- Waypoint movement to Stone Fury (source: PSMDB)
UPDATE creature SET position_x = 664.315, position_y = -1027.59, position_z = 160.39, MovementType = 2 WHERE id = 2258;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 2258;
DELETE FROM creature_movement_template WHERE entry = 2258;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(2258, 1, 664.315, -1027.59, 160.39, 0, 0, 3.55749, 0, 0),
(2258, 2, 654.02, -1032.34, 163.127, 0, 0, 3.56752, 0, 0),
(2258, 3, 634.638, -1041.36, 163.816, 0, 0, 4.42055, 0, 0),
(2258, 4, 622.304, -1055.48, 163.186, 0, 0, 4.61123, 0, 0),
(2258, 5, 620.168, -1114.91, 160.186, 0, 0, 5.09796, 0, 0),
(2258, 6, 627.218, -1131.61, 159.535, 0, 0, 5.01767, 0, 0),
(2258, 7, 631.939, -1149.35, 155.421, 0, 0, 4.67646, 0, 0),
(2258, 8, 629.934, -1192.34, 145.181, 0, 0, 4.80191, 0, 0),
(2258, 9, 633.981, -1229.12, 136.877, 0, 0, 4.82198, 0, 0),
(2258, 10, 634.73, -1271.43, 121.429, 0, 0, 4.58112, 0, 0),
(2258, 11, 627.306, -1321.81, 106.197, 0, 0, 4.56607, 0, 0),
(2258, 12, 629.422, -1375.57, 93.9589, 0, 0, 5.12304, 0, 0),
(2258, 13, 643.925, -1408.88, 87.1831, 0, 0, 5.42411, 0, 0),
(2258, 14, 668.443, -1437.6, 81.8552, 0, 0, 5.85564, 0, 0),
(2258, 15, 708.689, -1455.94, 81.4619, 0, 0, 6.1818, 0, 0),
(2258, 16, 745.689, -1459.7, 80.3421, 0, 0, 6.1818, 0, 0),
(2258, 17, 708.769, -1455.86, 81.4599, 0, 0, 2.67848, 0, 0),
(2258, 18, 667.903, -1437.37, 81.9153, 0, 0, 2.28709, 0, 0),
(2258, 19, 643.733, -1408.63, 87.2146, 0, 0, 2.0362, 0, 0),
(2258, 20, 629.19, -1375.19, 94.0446, 0, 0, 1.64982, 0, 0),
(2258, 21, 627.374, -1321.59, 106.257, 0, 0, 1.49929, 0, 0),
(2258, 22, 634.783, -1271.27, 121.478, 0, 0, 1.53943, 0, 0),
(2258, 23, 633.98, -1228.57, 137.007, 0, 0, 1.58961, 0, 0),
(2258, 24, 629.947, -1191.76, 145.328, 0, 0, 1.57957, 0, 0),
(2258, 25, 631.939, -1148.87, 155.504, 0, 0, 1.84552, 0, 0),
(2258, 26, 627.116, -1131.07, 159.662, 0, 0, 1.96595, 0, 0),
(2258, 27, 620.092, -1114.7, 160.189, 0, 0, 1.53441, 0, 0),
(2258, 28, 622.218, -1054.98, 163.22, 0, 0, 0.857007, 0, 0),
(2258, 29, 634.789, -1041.15, 163.826, 0, 0, 0.495724, 0, 0),
(2258, 30, 653.802, -1032.34, 163.225, 0, 0, 0.420457, 0, 0);

-- Classic [1241]
-- Adjustements to the Wailing Caverns
-- Wailing Caverns:
-- Spawn Distance adjustments:
-- 15-rane (used for select critters):
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE guid IN (38145, 87154);
-- 10-range:
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (33964, 33957, 33932, 45722, 85901, 38121);
-- 7-range:
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid IN (33946, 33987, 85919, 85965, 86137, 86013, 87143, 87156, 18682, 26203, 38147);
-- 6-range:
UPDATE creature SET spawndist = 6, MovementType = 1 WHERE guid IN (33956, 85959, 18679, 18681, 18680);
-- 0 (DISABLE):
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (85948);
-- Critter Adjustments:
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE guid IN (38135, 38125, 33985, 33978, 33979, 18677, 26219, 26238, 26215, 26222, 26226, 26201, 26222, 26238, 27358, 27358, 27347, 27370, 27373, 27377, 33937, 33968, 33953, 33940);
UPDATE creature SET position_x = 17.817574, position_y = 435.634857, position_z = -81.148735, orientation = 3.737468 WHERE guid = 33937; -- Snake (ID 2914)
UPDATE creature SET position_x = -70.924637, position_y = 371.368103, position_z = -105.181313, orientation = 5.058896 WHERE guid = 27370;
UPDATE creature SET position_x = -23.271814, position_y = 132.678024, position_z = -106.161560, orientation = 1.518708 WHERE guid = 26219; -- (Bile Toad 3835)

-- Classic [1245]
-- Gnomeregan - Explosive Charges must not be clickable!
UPDATE gameobject_template SET faction = 114, data3 = 3000 WHERE entry = 144065;

-- Classic [1246]
-- Fixed poss and movement of two NPCs in Felwood
UPDATE creature SET position_z = 287.327, spawndist = 0, MovementType = 0 WHERE guid = 40659;
UPDATE creature SET position_z = 287.327, spawndist = 0, MovementType = 0 WHERE guid = 40665;

-- Classic [1248]
-- Gnomeregan - Peacekeeper Security Suit
UPDATE creature SET modelid = 0, position_x = -503.135, position_y = 582.624, position_z = -230.6010, orientation = 2.741180, spawndist = 0, MovementType = 2 WHERE guid = 30186;
UPDATE creature SET modelid = 0, position_x = -529.127, position_y = 526.401, position_z = -273.0680, orientation = 2.513030, spawndist = 0, MovementType = 2 WHERE guid = 30278;
UPDATE creature SET modelid = 0, position_x = -617.866, position_y = 521.326, position_z = -273.0690, orientation = 5.915490, spawndist = 0, MovementType = 2 WHERE guid = 30279;
UPDATE creature SET modelid = 0, position_x = -507.445, position_y = 422.019, position_z = -230.6010, orientation = 0.570874, spawndist = 0, MovementType = 2 WHERE guid = 32013;
DELETE FROM creature_movement WHERE id IN (30278, 30279, 32013, 30186);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(30278, 10, -526.675, 524.619, -273.068, 0, 0, 100, 0, 0),
(30278, 9, -521.2060, 507.233, -273.067, 0, 0, 100, 0, 0),
(30278, 8, -523.5720, 491.817, -273.069, 0, 0, 100, 0, 0),
(30278, 7, -532.7750, 480.186, -273.069, 0, 0, 100, 0, 0),
(30278, 6, -553.5550, 475.599, -273.067, 0, 0, 100, 0, 0),
(30278, 5, -569.5510, 477.793, -273.076, 0, 0, 100, 0, 0),
(30278, 4, -580.6870, 498.944, -273.076, 0, 0, 100, 0, 0),
(30278, 3, -584.0870, 529.736, -273.073, 0, 0, 100, 0, 0),
(30278, 2, -565.1860, 544.829, -273.073, 0, 0, 100, 0, 0),
(30278, 1, -544.7730, 537.774, -273.070, 0, 0, 100, 0, 0),
(30279, 11, -622.531, 522.641, -273.062, 0, 0, 100, 0, 0),
(30279, 10, -587.104, 508.355, -273.077, 0, 0, 100, 0, 0),
(30279, 9, -585.4900, 487.777, -273.079, 0, 0, 100, 0, 0),
(30279, 8, -502.1940, 181.335, -155.236, 0, 0, 100, 0, 0),
(30279, 7, -601.2440, 467.478, -273.092, 0, 0, 100, 0, 0),
(30279, 6, -637.8530, 438.359, -273.064, 0, 0, 100, 0, 0),
(30279, 5, -673.0290, 411.361, -273.064, 0, 0, 100, 0, 0),
(30279, 4, -637.8530, 438.359, -273.064, 0, 0, 100, 0, 0),
(30279, 3, -601.1290, 467.570, -273.084, 0, 0, 100, 0, 0),
(30279, 2, -585.4900, 487.777, -273.079, 0, 0, 100, 0, 0),
(30279, 1, -587.1040, 508.355, -273.077, 0, 0, 100, 0, 0),
(32013, 10, -513.909, 418.426, -230.601, 0, 0, 100, 0, 0),
(32013, 9, -495.8350, 429.647, -230.601, 0, 0, 100, 0, 0),
(32013, 8, -468.0340, 461.691, -230.601, 0, 0, 100, 0, 0),
(32013, 7, -458.9660, 499.773, -230.601, 0, 0, 100, 0, 0),
(32013, 6, -462.5300, 539.847, -230.601, 0, 0, 100, 0, 0),
(32013, 5, -488.9830, 575.050, -230.601, 0, 0, 100, 0, 0),
(32013, 4, -462.5300, 539.847, -230.601, 0, 0, 100, 0, 0),
(32013, 3, -458.9660, 499.773, -230.601, 0, 0, 100, 0, 0),
(32013, 2, -468.0340, 461.691, -230.601, 0, 0, 100, 0, 0),
(32013, 1, -495.8350, 429.647, -230.601, 0, 0, 100, 0, 0),
(30186, 10, -566.064, 596.358, -230.601, 0, 0, 100, 0, 0),
(30186, 9, -603.9720, 581.169, -230.601, 0, 0, 100, 0, 0),
(30186, 8, -632.9300, 549.396, -230.601, 0, 0, 100, 0, 0),
(30186, 7, -645.6080, 506.450, -230.601, 0, 0, 100, 0, 0),
(30186, 6, -638.9070, 472.245, -230.601, 0, 0, 100, 0, 0),
(30186, 5, -645.6080, 506.450, -230.601, 0, 0, 100, 0, 0),
(30186, 4, -632.9300, 549.396, -230.601, 0, 0, 100, 0, 0),
(30186, 3, -603.9720, 581.169, -230.601, 0, 0, 100, 0, 0),
(30186, 2, -566.0640, 596.358, -230.601, 0, 0, 100, 0, 0),
(30186, 1, -529.9410, 593.970, -230.601, 0, 0, 100, 0, 0),
(30186, 11, -529.941, 593.970, -230.601, 0, 0, 100, 0, 0),
(30186, 12, -496.669, 579.886, -230.601, 0, 0, 100, 0, 0);

-- Classic [1249]
-- Gnomeregan - Alarm-a-bomb 2600
UPDATE creature SET modelid = 0, position_x = -569.716, position_y = 132.406, position_z = -202.059, orientation = 4.44676, spawndist = 0 WHERE guid = 30134;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 7897);
DELETE FROM creature_movement_template WHERE entry = 7897;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(7897, 1, -574.488, 113.327, -201.832, 0, 0, 100, 0, 0),
(7897, 2, -574.915, 96.9830, -201.557, 0, 0, 100, 0, 0),
(7897, 3, -571.492, 84.7931, -203.301, 0, 0, 100, 0, 0),
(7897, 4, -563.095, 77.1981, -203.549, 0, 0, 100, 0, 0),
(7897, 5, -554.813, 75.1497, -201.725, 0, 0, 100, 0, 0),
(7897, 6, -571.492, 84.7931, -203.301, 0, 0, 100, 0, 0),
(7897, 7, -574.915, 96.9830, -201.557, 0, 0, 100, 0, 0),
(7897, 8, -574.488, 113.327, -201.832, 0, 0, 100, 0, 0),
(7897, 9, -572.200, 123.274, -202.141, 0, 0, 100, 0, 0),
(7897, 10, -570.78, 128.660, -202.141, 0, 0, 100, 0, 0);

-- Classic [1253] - part of it.
-- Deadmines improvements
-- Adjust spawn position of Captain Greenskin (ID 79333)
UPDATE creature SET position_x = -63.720577, position_y = -808.797729, position_z = 41.234196, orientation = 5.771376 WHERE guid = 79333; 
DELETE FROM creature_movement WHERE id = 79333;
DELETE FROM creature_movement_template WHERE entry = 647;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(647,1,-56.0753,-808.808,41.9326,100,2000,0),
(647,2,-56.8627,-831.469,41.896,100,3000,0),
(647,3,-83.5775,-833.452,39.5389,100,0,0),
(647,4,-102.49,-824.696,38.0774,100,2000,0),
(647,5,-102.277,-814.224,38.0795,100,2000,0),
(647,6,-92.37,-808.028,38.7975,100,0,0);
-- Linking Captain Greenskin and his accompanying adds:
DELETE FROM creature_linking WHERE guid IN (79334, 79333, 79335);
INSERT INTO creature_linking  VALUES (79334, 79333, 515); -- AGGRO_ON_AGGRO, TO_AGGRO_ON_AGGRO, FOLLOW
INSERT INTO creature_linking  VALUES (79335, 79333, 515); -- AGGRO_ON_AGGRO, TO_AGGRO_ON_AGGRO, FOLLOW
-- Removed unneeded and wrong creature_addon (the template one is enough and correct)
DELETE FROM creature_addon WHERE guid = 79333; -- Captain Greenskin
-- Cookie 
-- Removed unneeded and wrong creature_addon (the template one is enough and correct)
DELETE FROM creature_addon WHERE guid = 79344; -- Cookie
-- Removed duplicate waypoints movement, the template one is enough
DELETE FROM creature_movement WHERE id = 79344;
-- Fixed waittime values that were set in seconds when milliseconds are expected
UPDATE creature_movement_template SET waittime = waittime*1000 WHERE entry = 644;
-- Gilnid
-- Update spawndistance and MovementType for Gilnid:
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 79206;

-- Classic [1254] 
-- Fixed end script of quest 3321
UPDATE db_script_string SET type = 1, emote = 22 WHERE entry = 2000000076;

-- Classic [1258]
-- Removed NPC 12246 (Super-Seller 680) & 12245 (Vendor-Tron 1000) in Desolace because they should be spawned by script
DELETE FROM creature WHERE id IN (12246, 12245);
UPDATE creature_template SET MovementType = 0 WHERE entry = 12245;  
UPDATE creature_template SET MovementType = 0 WHERE entry = 12246;
DELETE FROM npc_gossip WHERE npc_guid = 29117;

-- Classic [1264] 
-- Improved Krastinov quest in Scholomance 
DELETE FROM gameobject WHERE guid IN (66136,66137);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66136, 176546, 289, 196.871, -73.8801, 85.2284, 2.46091, 0, 0, 0.942641, 0.333807, -30, 100, 1),
(66137, 176547, 289, 165.317, -81.145, 85.2284, 3.00197, 0, 0, 0.997564, 0.069757, -30, 100, 1);
DELETE FROM dbscripts_on_event WHERE id IN (5438, 5439);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5439, 1, 9, 66136, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gobject'),
(5438, 1, 9, 66137, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gobject');

-- Classic [1265] 
-- Made creature 10678 (Plagued Hatchlings) have random movement
UPDATE creature SET MovementType = 1, spawndist = 3 WHERE id = 10678;

-- Classic [1266]
-- Closed Ras Frostwhisper Laboratory's door in Scholomance
UPDATE gameobject SET state = 1 WHERE id = 177370;


-- Classic [1273] 
-- I see dead people... they are everywhere and they don't know they are dead.
-- Added the missing ghost NPCs in Caer Darrow
-- Melia and Sammy script (text and waypoints) from data by @evil-at-wow (many thanks :) )
-- Fixed factions, models, mounts and addons for the ghosts and pooled one of the patrol
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(107779, 11281, 0,1,0, 0, 1098.49, -2523.82, 61.3707, 4.6691, 1272, 0, 0, 5020, 0, 0, 0),
(107780, 11281, 0,1,0, 0, 1031.16, -2498.27, 59.177, 4.73616, 1272, 0, 0, 5020, 0, 0, 2),
(107781, 11281, 0,1,0, 0, 1090.52, -2541.25, 59.2419, 2.70896, 1272, 0, 0, 5020, 0, 0, 2),
(107782, 11281, 0,1,0, 0, 1147.93, -2566.49, 60.0373, 2.74489, 1272, 0, 0, 5020, 0, 0, 0),
(107783, 11281, 0,1,0, 0, 1151.78, -2557.18, 60.0758, 2.79201, 1272, 0, 0, 5020, 0, 0, 0),
(107784, 11277, 0,1,0, 0, 1155.4, -2383.73, 60.304, 5.43574, 300, 0, 0, 2784, 0, 0, 0),
(107785, 11277, 0,1,0, 0, 1127.81, -2387.71, 59.264, 1.72159, 300, 0, 0, 2784, 0, 0, 0),
(107786, 11277, 0,1,11014, 0, 1090.52, -2541.25, 59.2419, 2.70896, 1272, 0, 0, 2784, 0, 0, 2);
DELETE FROM creature_movement WHERE id IN (107780, 10781, 107786);
INSERT INTO creature_movement VALUES 
(107780, 1, 1031.16, -2498.27, 59.177, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 4.73616, 0, 0),
(107780, 2, 1034.48, -2468.77, 59.9844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.856512, 0, 0),
(107780, 3, 1043.48, -2458.4, 60.4699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.500247, 0, 0),
(107780, 4, 1071.23, -2443.23, 61.1634, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0.841458, 0, 0),
(107780, 5, 1101.41, -2409.45, 59.8655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.465122, 0, 0),
(107780, 6, 1125.81, -2397.36, 59.4695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.003482, 0, 0),
(107780, 7, 1183.61, -2397.16, 60.1768, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0.003482, 0, 0),
(107780, 8, 1126.2, -2397.42, 59.4867, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.59711, 0, 0),
(107780, 9, 1101.19, -2409.67, 59.8831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96843, 0, 0),
(107780, 10, 1070.91, -2443.54, 61.1405, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 3.71754, 0, 0),
(107780, 11, 1043.16, -2458.72, 60.4674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.91825, 0, 0),
(107780, 12, 1034.42, -2468.71, 59.9897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.55552, 0, 0),
(10781, 1, 1090.52, -2541.25, 59.1419, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 2.70896, 0, 0),
(10781, 2, 1095.36, -2543.49, 59.1418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.08741, 0, 0),
(10781, 3, 1118.02, -2601.04, 59.4689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.50891, 0, 0),
(10781, 4, 1132.05, -2612.48, 63.1381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.05083, 0, 0),
(10781, 5, 1161.32, -2620.66, 70.9007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01069, 0, 0),
(10781, 6, 1193.38, -2629.62, 74.0911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.545408, 0, 0),
(10781, 7, 1214.63, -2616.73, 83.1397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.11242, 0, 0),
(10781, 8, 1221.01, -2604.11, 86.3537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.490212, 0, 0),
(10781, 9, 1237.11, -2595.52, 90.1566, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0.490212, 0, 0),
(10781, 10, 1221.38, -2603.91, 86.4882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.17329, 0, 0),
(10781, 11, 1214.67, -2616.99, 83.1357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.70663, 0, 0),
(10781, 12, 1193.52, -2629.6, 74.1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88873, 0, 0),
(10781, 13, 1161.14, -2620.61, 70.8684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.86364, 0, 0),
(10781, 14, 1131.64, -2612.35, 63.038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5425, 0, 0),
(10781, 15, 1117.74, -2600.92, 59.4468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.89018, 0, 0),
(10781, 16, 1095.2, -2543.02, 59.1423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.68802, 0, 0),
(107786, 1, 1090.52, -2541.25, 59.1419, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 2.70896, 0, 0),
(107786, 2, 1095.36, -2543.49, 59.1418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.08741, 0, 0),
(107786, 3, 1118.02, -2601.04, 59.4689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.50891, 0, 0),
(107786, 4, 1132.05, -2612.48, 63.1381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.05083, 0, 0),
(107786, 5, 1161.32, -2620.66, 70.9007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01069, 0, 0),
(107786, 6, 1193.38, -2629.62, 74.0911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.545408, 0, 0),
(107786, 7, 1214.63, -2616.73, 83.1397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.11242, 0, 0),
(107786, 8, 1221.01, -2604.11, 86.3537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.490212, 0, 0),
(107786, 9, 1237.11, -2595.52, 90.1566, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0.490212, 0, 0),
(107786, 10, 1221.38, -2603.91, 86.4882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.17329, 0, 0),
(107786, 11, 1214.67, -2616.99, 83.1357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.70663, 0, 0),
(107786, 12, 1193.52, -2629.6, 74.1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88873, 0, 0),
(107786, 13, 1161.14, -2620.61, 70.8684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.86364, 0, 0),
(107786, 14, 1131.64, -2612.35, 63.038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5425, 0, 0),
(107786, 15, 1117.74, -2600.92, 59.4468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.89018, 0, 0),
(107786, 16, 1095.2, -2543.02, 59.1423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.68802, 0, 0);
DELETE FROM pool_creature WHERE guid IN (10781, 107786);
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(10781, 25548, 0, 'Caer Darrow ghosts'),
(107786, 25548, 0, 'Caer Darrow ghosts');
DELETE FROM pool_template WHERE entry = 25548;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25548, 1, 'Caer Darrow ghosts');
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35 WHERE Entry IN (11277, 11279, 11280, 11281, 11282, 11283, 11287, 11316);
UPDATE creature_template_addon SET mount = 5228 WHERE entry = 11281;
UPDATE creature_template_addon SET b2_0_sheath = 1 WHERE entry IN (11277, 11279, 11280, 11287, 11316);
-- addon corrected for #84523
DELETE FROM creature_addon WHERE guid = 84523;
INSERT INTO creature_addon VALUES
(84523, 0, 0, 0, 0, 69, 0, '17622');
-- scripted Melia and Sammy
UPDATE creature_template SET MovementType = 2 WHERE Entry IN (11282, 11283);
UPDATE creature SET MovementType = 2 WHERE id IN (11282, 11283);
DELETE FROM creature_movement_template WHERE entry IN (11282, 11283);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(11282, 1, 1120.09, -2547.57, 59.2532, 0, 1128201, 100, 0, 0),
(11282, 2, 1111.05, -2537.9, 59.2532, 0, 0, 100, 0, 0),
(11282, 3, 1100.43, -2547.73, 59.2532, 0, 0, 100, 0, 0),
(11282, 4, 1109.6, -2558.2, 59.2532, 0, 0, 100, 0, 0),
(11282, 5, 1113.59, -2555.59, 59.2532, 0, 1128205, 3.4950, 0, 0),
(11282, 6, 1113.59, -2555.59, 59.2532, 0, 0, 3.4950, 0, 0),
(11283, 1, 1120.72, -2548.21, 59.2532, 0, 0, 100, 0, 0),
(11283, 2, 1110.95, -2538.51, 59.2532, 0, 0, 100, 0, 0),
(11283, 3, 1100.73, -2547.23, 59.2532, 0, 0, 100, 0, 0),
(11283, 4, 1109.56, -2557.59, 59.2532, 0, 0, 100, 0, 0),
(11283, 5, 1111.49, -2556.4, 59.2532, 0, 1128305, 100, 0, 0),
(11283, 6, 1111.49, -2556.4, 59.2532, 0, 0, 100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1128201,1128205,1128305);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1128205, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(1128205, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.4950, 'Melia face Sammy'),
(1128205, 9, 0, 0, 0, 0, 0, 0, 2000000869, 0, 0, 0, 0, 0, 0, 0, 'Melia'),
(1128205, 14, 0, 0, 0, 11283, 20, 0, 2000000870, 0, 0, 0, 0, 0, 0, 0, 'Sammy'),
(1128205, 16, 0, 0, 0, 0, 0, 0, 2000000871, 0, 0, 0, 0, 0, 0, 0, 'Melia'),
(1128205, 17, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Melia unactive'),
(1128205, 17, 21, 0, 0, 11283, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sammy unactive'),
(1128205, 30, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement'),
(1128205, 30, 0, 0, 0, 0, 0, 0, 2000000867, 0, 0, 0, 0, 0, 0, 0, 'Melia'),
(1128205, 31, 32, 0, 0, 11283, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sammy unpause WP movement'),
(1128205, 31, 0, 0, 0, 11283, 20, 0, 2000000868, 0, 0, 0, 0, 0, 0, 0, 'Sammy'),
(1128201, 0, 31, 11283, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for Sammy'),
(1128201, 1, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Melia active'),
(1128201, 1, 21, 1, 0, 11283, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sammy active'),
(1128201, 1, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Melia - run on'),
(1128201, 1, 25, 1, 0, 11283, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sammy - run on'),
(1128305, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sammy pause WP movement');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000867 AND 2000000871;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000867, 'Ready. Set. GO!', 0, 0, 0, 0, NULL),
(2000000868, 'HEY! No fair!', 0, 0, 0, 0, NULL),
(2000000869, 'I win!', 0, 0, 0, 0, NULL),
(2000000870, 'You cheated!', 0, 0, 0, 0, NULL),
(2000000871, 'Wanna race again? Best two out of three!', 0, 0, 0, 0, NULL);

-- Classic [1276]
-- Added waypoints and texts for Gizelton Caravan in Desolace 
-- Waypoints for Cork Gizelton
-- Texts for Cork and Rigger Gizelton
DELETE FROM db_script_string WHERE entry BETWEEN 2000000872 AND 2000000875;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000872, 'So sorry to leave a customer but we have places to go and people to swindle. We will be back sometime later today. Good-bye!', 0, 0, 0, 1, 'Cork Gizelton Leaving Kormek\'s Hut'),
(2000000873, 'I am looking for some bodyguards that would like to protect the Gizelton Caravan. We are stopped on the road east of Kormek\'s Hut, north of Kolkar Centaur Village.', 0, 6, 0, 22, 'Cork Quest 5821 Yell'),
(2000000874, 'Time for the Gizelton Caravan to head on out! We\'ll be back soon but if you cannot wait, head north to Kormek\'s Hut. We open shop in about an hour.', 0, 0, 0, 1, 'Rigger Gizelton leaving South End '),
(2000000875, 'This is Rigger Gizelton asking for assistance escorting my caravan past Mannoroc Coven. I\'m on the road east of Shadowprey village.', 0, 6, 0, 22, 'Rigger Quest 5843 Yell');
-- Wps for Cork Gizelton transferred from creature_movement
DELETE FROM creature_movement_template WHERE entry = 11625;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(11625, 1, -1290.31, 1231.38, 109.237, 0, 1162501, 100, 0, 0), -- spawn point: all the caravan switch to run mode
(11625, 2, -1277.59, 1225.54, 108.85, 0, 0, 100, 0, 0),
(11625, 3, -1264.86, 1219.71, 108.452, 0, 0, 100, 0, 0),
(11625, 4, -1230.04, 1204.31, 104.374, 0, 0, 100, 0, 0),
(11625, 5, -1216.17, 1206.24, 101.889, 0, 0, 100, 0, 0),
(11625, 6, -1202.32, 1208.28, 99.7026, 0, 0, 100, 0, 0),
(11625, 7, -1188.03, 1207.66, 97.2208, 0, 0, 100, 0, 0),
(11625, 8, -1170.99, 1195.93, 94.5615, 0, 0, 100, 0, 0),
(11625, 9, -1155.46, 1192.16, 92.4374, 0, 0, 100, 0, 0),
(11625, 10, -1127.52, 1190.39, 89.8358, 0, 0, 100, 0, 0),
(11625, 11, -1113.58, 1189.12, 89.7403, 0, 0, 100, 0, 0),
(11625, 12, -1070.8, 1186.15, 89.7403, 0, 0, 100, 0, 0),
(11625, 13, -1037.27, 1183.2, 89.8006, 0, 0, 100, 0, 0),
(11625, 14, -995.58, 1177.92, 89.7409, 0, 0, 100, 0, 0),
(11625, 15, -981.817, 1180.48, 89.8152, 0, 0, 100, 0, 0),
(11625, 16, -952.606, 1181.99, 89.7313, 0, 0, 100, 0, 0),
(11625, 17, -935.445, 1182.25, 91.2113, 0, 0, 100, 0, 0),
(11625, 18, -921.448, 1182.53, 93.1746, 0, 0, 100, 0, 0),
(11625, 19, -879.467, 1183.72, 97.6043, 0, 0, 100, 0, 0),
(11625, 20, -858.976, 1184.22, 99.0322, 0, 0, 100, 0, 0),
(11625, 21, -828.316, 1180.2, 99.6657, 0, 0, 100, 0, 0),
(11625, 22, -799.811, 1176, 99.3364, 0, 0, 100, 0, 0),
(11625, 23, -757.106, 1191.47, 96.9164, 0, 0, 100, 0, 0),
(11625, 24, -731.879, 1208.14, 92.6956, 0, 0, 100, 0, 0),
(11625, 25, -719.12, 1213.91, 91.3297, 0, 0, 100, 0, 0),
(11625, 26, -706.36, 1219.67, 90.2856, 0, 0, 100, 0, 0),
(11625, 27, -689.935, 1228.43, 89.4426, 0, 0, 100, 0, 0),
(11625, 28, -679.121, 1237.31, 89.17, 0, 0, 100, 0, 0),
(11625, 29, -661.434, 1247.28, 89.17, 0, 0, 100, 0, 0),
(11625, 30, -635.655, 1258.2, 89.2063, 0, 0, 100, 0, 0),
(11625, 31, -614.489, 1269.64, 89.1686, 0, 0, 100, 0, 0),
(11625, 32, -600.078, 1274.85, 89.1238, 0, 0, 100, 0, 0),
(11625, 33, -586.268, 1277.15, 89.145, 0, 0, 100, 0, 0),
(11625, 34, -546.297, 1287.15, 89.1597, 0, 0, 100, 0, 0),
(11625, 35, -541.257, 1300.21, 89.1602, 0, 0, 100, 0, 0),
(11625, 36, -536.026, 1313.2, 89.1314, 0, 0, 100, 0, 0),
(11625, 37, -525.098, 1338.97, 89.1005, 0, 0, 100, 0, 0),
(11625, 38, -518.852, 1356.12, 89.0827, 0, 0, 100, 0, 0),
(11625, 39, -516.879, 1395.56, 89.0827, 0, 0, 100, 0, 0),
(11625, 40, -518.905, 1436.25, 89.0696, 0, 0, 100, 0, 0),
(11625, 41, -525.605, 1446.54, 88.4907, 0, 0, 100, 0, 0),
(11625, 42, -543.459, 1462.9, 88.3752, 0, 0, 100, 0, 0),
(11625, 43, -557.591, 1471.17, 88.9477, 0, 0, 100, 0, 0),
(11625, 44, -584.698, 1478.14, 88.3754, 0, 0, 100, 0, 0),
(11625, 45, -598.459, 1480.72, 88.3754, 0, 0, 100, 0, 0),
(11625, 46, -632.084, 1491.03, 88.3754, 0, 0, 100, 0, 0),
(11625, 47, -644.249, 1497.95, 88.3754, 0, 0, 100, 0, 0),
(11625, 48, -671.518, 1528.05, 88.3747, 0, 0, 100, 0, 0),
(11625, 49, -686.193, 1565.49, 88.3745, 0, 0, 100, 0, 0),
(11625, 50, -722.407, 1567.28, 91.314, 0, 0, 100, 0, 0),
(11625, 51, -750.503, 1560.89, 90.29, 0, 0, 100, 0, 0),
(11625, 52, -740, 1534.14, 90.3977, 0, 0, 100, 0, 0),
(11625, 53, -713.547, 1524.07, 90.2911, 0, 0, 100, 0, 0),
(11625, 54, -705.117, 1521.1, 90.3505, 0, 0, 100, 0, 0),
(11625, 55, -697.899, 1518.65, 90.3092, 0, 0, 100, 0, 0),
(11625, 56, -689.968, 1515.89, 90.2666, 600000, 1162556, 100, 0, 0), -- Kormek hut, 10 min wait time
(11625, 57, -653.719, 1506.08, 88.3746, 0, 0, 100, 0, 0),
(11625, 58, -647.387, 1501.69, 88.3752, 0, 0, 100, 0, 0),
(11625, 59, -630.597, 1491.17, 88.3752, 0, 0, 100, 0, 0),
(11625, 60, -603.756, 1483.26, 88.3752, 0, 0, 100, 0, 0),
(11625, 61, -576.573, 1476.54, 88.3752, 0, 0, 100, 0, 0),
(11625, 62, -556.868, 1470.92, 88.8685, 0, 0, 100, 0, 0),
(11625, 63, -547.471, 1464.89, 88.3747, 0, 0, 100, 0, 0),
(11625, 64, -529.316, 1449.97, 88.402, 0, 0, 100, 0, 0),
(11625, 65, -517.699, 1433.75, 89.0816, 0, 0, 100, 0, 0),
(11625, 66, -518.09, 1405.76, 89.0816, 0, 0, 100, 0, 0),
(11625, 67, -518.149, 1377.76, 89.0816, 0, 0, 100, 0, 0),
(11625, 68, -521.289, 1350.76, 89.0816, 0, 0, 100, 0, 0),
(11625, 69, -531.625, 1324.74, 89.1339, 0, 0, 100, 0, 0),
(11625, 70, -537.391, 1311.99, 89.1594, 0, 0, 100, 0, 0),
(11625, 71, -551.845, 1284.12, 89.1594, 0, 0, 100, 0, 0),
(11625, 72, -578.054, 1278.57, 89.1685, 0, 0, 100, 0, 0),
(11625, 73, -591.957, 1276.92, 89.1634, 0, 0, 100, 0, 0),
(11625, 74, -611.806, 1271.05, 89.1694, 0, 0, 100, 0, 0),
(11625, 75, -623.928, 1264.06, 89.1694, 0, 0, 100, 0, 0),
(11625, 76, -653.384, 1249.74, 89.1694, 0, 0, 100, 0, 0),
(11625, 77, -666.372, 1244.51, 89.1694, 0, 1162577, 100, 0, 0), -- North of Kolkar Village, 5 min wait time (handled in script)
(11625, 78, -684.6, 1232.06, 89.2134, 0, 0, 100, 0, 0),
(11625, 79, -694.027, 1225.67, 89.6627, 0, 0, 100, 0, 0),
(11625, 80, -706.605, 1219.58, 90.2981, 0, 0, 100, 0, 0),
(11625, 81, -732.184, 1208.23, 92.7376, 0, 0, 100, 0, 0),
(11625, 82, -738.514, 1204.75, 93.8662, 0, 0, 100, 0, 0),
(11625, 83, -754.159, 1193.91, 96.6195, 0, 0, 100, 0, 0),
(11625, 84, -766.62, 1187.59, 97.8394, 0, 0, 100, 0, 0),
(11625, 85, -792.515, 1177.07, 98.8327, 0, 0, 100, 0, 0),
(11625, 86, -802.533, 1175.57, 99.4435, 0, 0, 100, 0, 0),
(11625, 87, -821.772, 1178.84, 99.6542, 0, 0, 100, 0, 0),
(11625, 88, -835.435, 1181.9, 99.6662, 0, 0, 100, 0, 0),
(11625, 89, -848.98, 1184.67, 99.5782, 0, 0, 100, 0, 0),
(11625, 90, -861.251, 1185.3, 98.8033, 0, 0, 100, 0, 0),
(11625, 91, -889.179, 1183.34, 96.6117, 0, 0, 100, 0, 0),
(11625, 92, -903.158, 1182.57, 95.2033, 0, 0, 100, 0, 0),
(11625, 93, -931.15, 1182.17, 91.8346, 0, 0, 100, 0, 0),
(11625, 94, -945.149, 1182.01, 89.8612, 0, 0, 100, 0, 0),
(11625, 95, -959.149, 1181.92, 89.7397, 0, 0, 100, 0, 0),
(11625, 96, -974.384, 1182.91, 89.8000, 0, 0, 100, 0, 0), -- First ambush
(11625, 97, -1001.65, 1178.06, 89.7398, 0, 0, 100, 0, 0),
(11625, 98, -1011.8, 1177.4, 89.7398, 0, 0, 100, 0, 0),
(11625, 99, -1033.08, 1182.29, 89.7629, 0, 0, 100, 0, 0),
(11625, 100, -1073.62, 1186.33, 89.7398, 0, 0, 100, 0, 0),
(11625, 101, -1101.59, 1187.56, 89.7398, 0, 0, 100, 0, 0),
(11625, 102, -1129.48, 1190.01, 89.8855, 0, 0, 100, 0, 0),
(11625, 103, -1153.93, 1192.36, 92.0000, 0, 0, 100, 0, 0), -- Second ambush
(11625, 104, -1166.85, 1194.28, 93.9649, 0, 0, 100, 0, 0),
(11625, 105, -1184.71, 1203.56, 96.6406, 0, 0, 100, 0, 0),
(11625, 106, -1201.45, 1208.2, 99.5698, 0, 0, 100, 0, 0),
(11625, 107, -1225.42, 1204.68, 103.502, 0, 0, 100, 0, 0),
(11625, 108, -1235.55, 1206.75, 105.129, 0, 0, 100, 0, 0),
(11625, 109, -1261.05, 1218.25, 108.207, 0, 0, 100, 0, 0),
(11625, 110, -1286.64, 1229.58, 109.112, 0, 0, 100, 0, 0),
(11625, 111, -1306.84, 1233.21, 109.771, 0, 0, 100, 0, 0), -- Third ambush
(11625, 112, -1331.25, 1233.54, 110.674, 0, 0, 100, 0, 0),
(11625, 113, -1350.02, 1227.22, 111.201, 0, 0, 100, 0, 0),
(11625, 114, -1389.37, 1212.53, 111.587, 0, 0, 100, 0, 0),
(11625, 115, -1415.8, 1202.23, 111.948, 0, 0, 100, 0, 0),
(11625, 116, -1424.26, 1196.81, 112.038, 0, 1162501, 100, 0, 0), -- quest completion / all the caravan run again
(11625, 117, -1449.27, 1188.13, 111.53, 0, 0, 100, 0, 0),
(11625, 118, -1474.53, 1186.42, 109.366, 0, 0, 100, 0, 0),
(11625, 119, -1491.78, 1189.4, 106.114, 0, 0, 100, 0, 0),
(11625, 120, -1502.95, 1198.12, 101.757, 0, 0, 100, 0, 0),
(11625, 121, -1512.09, 1209.44, 96.2469, 0, 0, 100, 0, 0),
(11625, 122, -1520.19, 1226.67, 89.7861, 0, 0, 100, 0, 0),
(11625, 123, -1522.75, 1243.63, 83.3864, 0, 0, 100, 0, 0),
(11625, 124, -1520.9, 1257.51, 77.7027, 0, 0, 100, 0, 0),
(11625, 125, -1518.48, 1273.17, 71.8991, 0, 0, 100, 0, 0),
(11625, 126, -1516.17, 1290.94, 66.8473, 0, 0, 100, 0, 0),
(11625, 127, -1514.74, 1306.19, 63.4211, 0, 0, 100, 0, 0),
(11625, 128, -1511.54, 1328.73, 60.2051, 0, 0, 100, 0, 0),
(11625, 129, -1505.75, 1341.47, 59.2142, 0, 0, 100, 0, 0),
(11625, 130, -1494.42, 1367.08, 58.9254, 0, 0, 100, 0, 0),
(11625, 131, -1485.84, 1393.02, 58.9251, 0, 0, 100, 0, 0),
(11625, 132, -1485.47, 1407, 58.9469, 0, 0, 100, 0, 0),
(11625, 133, -1487.57, 1434.84, 58.9347, 0, 0, 100, 0, 0),
(11625, 134, -1489.45, 1448.71, 58.9302, 0, 0, 100, 0, 0),
(11625, 135, -1489.77, 1469.49, 58.9251, 0, 0, 100, 0, 0),
(11625, 136, -1483.8, 1482.15, 58.9251, 0, 0, 100, 0, 0),
(11625, 137, -1471.32, 1507.22, 58.9251, 0, 0, 100, 0, 0),
(11625, 138, -1464.94, 1519.68, 58.9251, 0, 0, 100, 0, 0),
(11625, 139, -1452.27, 1544.64, 58.9251, 0, 0, 100, 0, 0),
(11625, 140, -1442.94, 1584.75, 58.9255, 0, 0, 100, 0, 0),
(11625, 141, -1452.7, 1610.98, 58.9255, 0, 0, 100, 0, 0),
(11625, 142, -1464.1, 1641.7, 58.9255, 0, 0, 100, 0, 0),
(11625, 143, -1474.86, 1647.49, 58.9255, 0, 0, 100, 0, 0),
(11625, 144, -1500.84, 1657.91, 58.9255, 0, 0, 100, 0, 0),
(11625, 145, -1521.76, 1671.96, 58.9255, 0, 0, 100, 0, 0),
(11625, 146, -1541.37, 1691.94, 58.9255, 0, 0, 100, 0, 0),
(11625, 147, -1551.2, 1701.92, 58.9255, 0, 0, 100, 0, 0),
(11625, 148, -1571.41, 1721.29, 58.9255, 0, 0, 100, 0, 0),
(11625, 149, -1592.97, 1739.14, 58.9255, 0, 0, 100, 0, 0),
(11625, 150, -1613.28, 1758.07, 58.9255, 0, 0, 100, 0, 0),
(11625, 151, -1630.32, 1780.27, 58.9255, 0, 0, 100, 0, 0),
(11625, 152, -1645.92, 1803.52, 58.9296, 0, 0, 100, 0, 0),
(11625, 153, -1661.7, 1826.65, 58.9271, 0, 0, 100, 0, 0),
(11625, 154, -1681.42, 1858.29, 58.9271, 0, 0, 100, 0, 0),
(11625, 155, -1686.38, 1877.21, 59.2059, 0, 0, 100, 0, 0),
(11625, 156, -1692.06, 1899.02, 60.7504, 0, 0, 100, 0, 0),
(11625, 157, -1699.45, 1908.31, 61.1412, 0, 0, 100, 0, 0),
(11625, 158, -1717, 1915.93, 60.0908, 0, 0, 100, 0, 0),
(11625, 159, -1738.04, 1917.48, 59.0673, 0, 0, 100, 0, 0),
(11625, 160, -1757.16, 1918.92, 58.9757, 0, 0, 100, 0, 0),
(11625, 161, -1772.71, 1926.58, 59.1537, 0, 0, 100, 0, 0),
(11625, 162, -1791.81, 1939.62, 60.7298, 0, 0, 100, 0, 0),
(11625, 163, -1802.7, 1951.89, 60.7237, 0, 0, 100, 0, 0),
(11625, 164, -1809.79, 1963.96, 59.7477, 0, 0, 100, 0, 0),
(11625, 165, -1815.2, 1976.74, 59.0006, 0, 0, 100, 0, 0),
(11625, 166, -1817.51, 2008.7, 59.5336, 0, 0, 100, 0, 0),
(11625, 167, -1823, 2032.7, 60.6767, 0, 0, 100, 0, 0),
(11625, 168, -1821.87, 2042.21, 60.944, 0, 0, 100, 0, 0),
(11625, 169, -1813.14, 2068.68, 63.0096, 0, 0, 100, 0, 0),
(11625, 170, -1810.52, 2082.43, 63.114, 0, 0, 100, 0, 0),
(11625, 171, -1806.9, 2095.9, 63.1144, 0, 0, 100, 0, 0),
(11625, 172, -1802.03, 2111.56, 63.6862, 0, 0, 100, 0, 0),
(11625, 173, -1802.03, 2111.56, 63.6862, 0, 0, 100, 0, 0),
(11625, 174, -1801.53, 2141.07, 63.006, 0, 0, 100, 0, 0),
(11625, 175, -1801.53, 2141.07, 63.006, 0, 0, 100, 0, 0),
(11625, 176, -1802.25, 2155.05, 61.5195, 0, 0, 100, 0, 0),
(11625, 177, -1803.02, 2183.03, 59.8215, 0, 0, 100, 0, 0),
(11625, 178, -1808.36, 2207.2, 59.8215, 0, 0, 100, 0, 0),
(11625, 179, -1822.66, 2219.86, 59.8215, 0, 0, 100, 0, 0),
(11625, 180, -1836.76, 2232.87, 59.8215, 0, 0, 100, 0, 0),
(11625, 181, -1843.44, 2245.11, 59.8215, 0, 0, 100, 0, 0),
(11625, 182, -1844.75, 2266.9, 59.8215, 0, 0, 100, 0, 0),
(11625, 183, -1846.34, 2280.81, 59.8215, 0, 0, 100, 0, 0),
(11625, 184, -1849.89, 2294.13, 59.8215, 0, 0, 100, 0, 0),
(11625, 185, -1864.58, 2316.31, 59.8215, 0, 0, 100, 0, 0),
(11625, 186, -1872.72, 2327.7, 59.8224, 0, 0, 100, 0, 0),
(11625, 187, -1884.98, 2346.82, 59.8224, 0, 0, 100, 0, 0),
(11625, 188, -1887.2, 2354.3, 59.8696, 0, 0, 100, 0, 0),
(11625, 189, -1893.87, 2379.11, 59.9196, 0, 0, 100, 0, 0),
(11625, 190, -1900.07, 2391.67, 59.8224, 0, 0, 100, 0, 0),
(11625, 191, -1903.97, 2401.47, 59.8223, 0, 0, 100, 0, 0),
(11625, 192, -1893.82, 2433.49, 59.8217, 0, 0, 100, 0, 0),
(11625, 193, -1924.5, 2449.16, 59.8216, 0, 0, 100, 0, 0),
(11625, 194, -1943.01, 2415.2, 60.4727, 0, 0, 100, 0, 0),
(11625, 195, -1936.76, 2412.65, 60.3803, 0, 0, 100, 0, 0),
(11625, 196, -1927.83, 2408.84, 60.394, 0, 0, 100, 0, 0),
(11625, 197, -1920.83, 2406.22, 60.6371, 600000, 11625197, 100, 0, 0), -- East of Gelkis Village, 10 min wait time
(11625, 198, -1892.03, 2375.61, 59.9178, 0, 0, 100, 0, 0),
(11625, 199, -1885.29, 2346.94, 59.8216, 0, 0, 100, 0, 0),
(11625, 200, -1881.12, 2339.05, 59.8216, 0, 0, 100, 0, 0),
(11625, 201, -1864.4, 2316.59, 59.8226, 0, 0, 100, 0, 0),
(11625, 202, -1852.79, 2300.12, 59.8226, 0, 0, 100, 0, 0),
(11625, 203, -1847.08, 2287.99, 59.8226, 0, 0, 100, 0, 0),
(11625, 204, -1844.34, 2264.2, 59.8226, 0, 0, 100, 0, 0),
(11625, 205, -1842.38, 2243.22, 59.8226, 0, 0, 100, 0, 0),
(11625, 206, -1840.11, 2237.75, 59.8226, 0, 0, 100, 0, 0),
(11625, 207, -1830.64, 2226.2, 59.8226, 0, 0, 100, 0, 0),
(11625, 208, -1810.22, 2209.43, 59.8226, 0, 0, 100, 0, 0),
(11625, 209, -1802.8, 2194.02, 59.8226, 0, 11625209, 100, 0, 0), -- West of Mannoroc Covent, 5 min wait time (handled in script)
(11625, 210, -1800.41, 2180.08, 59.8226, 0, 0, 100, 0, 0),
(11625, 211, -1800.26, 2166.08, 60.1822, 0, 0, 100, 0, 0),
(11625, 212, -1801.62, 2148.85, 62.344, 0, 0, 100, 0, 0),
(11625, 213, -1801.15, 2134.86, 63.1766, 0, 0, 100, 0, 0),
(11625, 214, -1802.26, 2110.11, 63.6737, 0, 0, 100, 0, 0),
(11625, 215, -1805.87, 2096.6, 63.1784, 0, 0, 100, 0, 0),
(11625, 216, -1809.25, 2083.01, 63.0772, 0, 0, 100, 0, 0),
(11625, 217, -1812.63, 2069.43, 63.043, 0, 0, 100, 0, 0),
(11625, 218, -1816.72, 2056.04, 61.8496, 0, 0, 100, 0, 0),
(11625, 219, -1822.89, 2032.23, 60.6524, 0, 0, 100, 0, 0),
(11625, 220, -1822.76, 2027.39, 60.3783, 0, 0, 100, 0, 0),
(11625, 221, -1815.56, 2003.46, 59.4022, 0, 0, 100, 0, 0),
(11625, 222, -1814.41, 1983.18, 58.9549, 0, 0, 100, 0, 0),
(11625, 223, -1811.8, 1967.01, 59.4735, 0, 0, 100, 0, 0),
(11625, 224, -1803.12, 1951.78, 60.7154, 0, 0, 100, 0, 0),
(11625, 225, -1793.24, 1941.87, 60.8439, 0, 0, 100, 0, 0),
(11625, 226, -1775.92, 1926.82, 59.3033, 0, 0, 100, 0, 0),
(11625, 227, -1759.93, 1918.92, 58.9613, 0, 0, 100, 0, 0),
(11625, 228, -1751.9, 1917.2, 59.0003, 0, 0, 100, 0, 0),
(11625, 229, -1737.91, 1917.04, 59.0673, 0, 0, 100, 0, 0),
(11625, 230, -1712.18, 1914.85, 60.4394, 0, 0, 100, 0, 0),
(11625, 231, -1701.72, 1911.02, 61.0949, 0, 0, 100, 0, 0),
(11625, 232, -1694.06, 1904.03, 61.03, 0, 0, 100, 0, 0),
(11625, 233, -1687.1, 1886.34, 59.7501, 0, 0, 100, 0, 0),
(11625, 234, -1684.12, 1872.66, 59.0354, 0, 0, 100, 0, 0),
(11625, 235, -1673.14, 1845.28, 58.9273, 0, 0, 100, 0, 0),
(11625, 236, -1657.63, 1821.97, 58.9273, 0, 0, 100, 0, 0),
(11625, 237, -1649.83, 1810.34, 58.9273, 0, 0, 100, 0, 0),
(11625, 238, -1634.24, 1787.08, 58.9252, 0, 0, 100, 0, 0),
(11625, 239, -1626.45, 1775.45, 58.9252, 0, 0, 100, 0, 0),
(11625, 240, -1605.77, 1750.66, 58.9256, 0, 0, 100, 0, 0),
(11625, 241, -1594.91, 1741.83, 58.9256, 0, 0, 100, 0, 0),
(11625, 242, -1573.31, 1724.02, 58.9256, 0, 0, 100, 0, 0),
(11625, 243, -1553.4, 1704.35, 58.9256, 0, 0, 100, 0, 0),
(11625, 244, -1543.67, 1694.29, 58.9256, 0, 0, 100, 0, 0),
(11625, 245, -1523.39, 1674.99, 58.9256, 0, 0, 100, 0, 0),
(11625, 246, -1505.1, 1659.98, 58.9256, 0, 0, 100, 0, 0),
(11625, 247, -1489.89, 1652.47, 58.9256, 0, 0, 100, 0, 0),
(11625, 248, -1460.15, 1634.27, 58.9256, 0, 0, 100, 0, 0),
(11625, 249, -1453.16, 1621.35, 58.9256, 0, 0, 100, 0, 0),
(11625, 250, -1446.87, 1598.31, 58.9256, 0, 0, 100, 0, 0),
(11625, 251, -1440.81, 1573.28, 58.9256, 0, 0, 100, 0, 0),
(11625, 252, -1445.9, 1553.99, 58.9256, 0, 0, 100, 0, 0),
(11625, 253, -1451.91, 1541.35, 58.9256, 0, 0, 100, 0, 0),
(11625, 254, -1458.46, 1528.97, 58.9256, 0, 0, 100, 0, 0),
(11625, 255, -1471.62, 1504.26, 58.9256, 0, 0, 100, 0, 0),
(11625, 256, -1478.08, 1491.84, 58.9256, 0, 0, 100, 0, 0),
(11625, 257, -1490.08, 1466.54, 58.9256, 0, 0, 100, 0, 0),
(11625, 258, -1491.71, 1455.14, 58.9291, 0, 0, 100, 0, 0),
(11625, 259, -1488.22, 1427.36, 58.9348, 0, 0, 100, 0, 0),
(11625, 260, -1486.41, 1413.48, 58.9418, 0, 0, 100, 0, 0),
(11625, 261, -1487.62, 1388.44, 58.9251, 0, 0, 100, 0, 0),
(11625, 262, -1491.84, 1375.08, 58.9301, 0, 0, 100, 0, 0),
(11625, 263, -1502.72, 1349.31, 58.9416, 0, 0, 100, 0, 0),
(11625, 264, -1508.49, 1336.58, 59.525, 0, 0, 100, 0, 0),
(11625, 265, -1511.68, 1327.41, 60.3754, 0, 0, 100, 0, 0),
(11625, 266, -1514.03, 1314.22, 62.0185, 0, 0, 100, 0, 0),
(11625, 267, -1514.79, 1300.27, 64.5471, 0, 0, 100, 0, 0),
(11625, 268, -1516.1, 1286.34, 68.0841, 0, 0, 100, 0, 0),
(11625, 269, -1518.52, 1272.55, 72.0932, 0, 0, 100, 0, 0),
(11625, 270, -1523.17, 1245.16, 82.7876, 0, 0, 100, 0, 0),
(11625, 271, -1522.5, 1234.75, 87.008, 0, 0, 100, 0, 0),
(11625, 272, -1517.95, 1221.51, 91.5343, 0, 0, 100, 0, 0),
(11625, 273, -1511.76, 1208.2, 96.7403, 0, 0, 100, 0, 0),
(11625, 274, -1501.33, 1196.53, 102.475, 0, 0, 100, 0, 0),
(11625, 275, -1490.76, 1188.95, 106.376, 0, 0, 100, 0, 0),
(11625, 276, -1475.92, 1185.48, 109.181, 0, 0, 100, 0, 0),
(11625, 277, -1452.6, 1187.95, 111.422, 0, 0, 100, 0, 0),
(11625, 278, -1433.28, 1193.58, 111.857, 0, 0, 100, 0, 0),
(11625, 279, -1414.55, 1203.63, 111.886, 0, 0, 100, 0, 0),
(11625, 280, -1388.31, 1213.37, 111.599, 0, 0, 100, 0, 0),
(11625, 281, -1375.11, 1218.03, 111.465, 0, 0, 100, 0, 0),
(11625, 282, -1348.49, 1226.69, 111.175, 0, 0, 100, 0, 0),
(11625, 283, -1319.41, 1232.27, 110.201, 0, 0, 100, 0, 0);

-- Classic [1277]
-- Added script support for Gizelton Caravan in Desolace
-- Link caravan NPCs: they share spawn/despawn and aggro. Cork Gizelton leads the caravan
DELETE FROM creature_linking_template WHERE entry IN (11564, 11626);
INSERT INTO creature_linking_template VALUES
(11626, 1, 11625, 1 + 2 + 16 + 128 + 512, 0);
DELETE FROM creature_linking WHERE guid IN (27290, 27289);
INSERT INTO creature_linking VALUES
(27290, 28714, 1 + 2 + 16 + 128 + 512),
(27289, 28714, 1 + 2 + 16 + 128 + 512);
-- Adjust respawn time and movement
UPDATE creature SET spawntimesecs = 600, MovementType = 0, spawndist = 0 WHERE id IN (11564, 11626);
UPDATE creature SET spawntimesecs = 600, MovementType = 2 WHERE id = 11625;
-- Clean movement table: only Cork will have a pathway
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (11564, 11625, 11626));
-- Optional: make the NPCs move even when no players are in the vicinity
UPDATE creature_template SET ExtraFlags = ExtraFlags + 4096 WHERE Entry IN (11564, 11625, 11626);
-- At quest proposal
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1162577, 11625209);
-- Cork proposes: Bodyguard for Hire
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1162577, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(1162577, 1, 0, 0, 0, 0, 0, 0, 2000000873, 0, 0, 0, 0, 0, 0, 0, 'Cork Yell Bodyguards Quest'),
(1162577, 2, 29, 2, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork add questgiver status'),
(1162577, 300, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver status'),
(1162577, 300, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');
-- Rigger proposes: Gizelton Caravan
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11625209, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork pause WP movement'),
(11625209, 1, 0, 0, 0, 11626, 60, 7, 2000000875, 0, 0, 0, 0, 0, 0, 0, 'Rigger Yell Caravan Quest'),
(11625209, 2, 29, 2, 0x01, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger add questgiver status'),
(11625209, 300, 29, 2, 2, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver status'),
(11625209, 300, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork unpause WP movement');
-- Generic script to make all the caravan run and clean-up flags/faction changes from the escort quests (called at several places)
DELETE FROM dbscripts_on_creature_movement WHERE id = 1162501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1162501, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run on'),
(1162501, 0, 25, 1, 0, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run on'),
(1162501, 0, 29, 1+2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver/gossip status'),
(1162501, 0, 29, 1+2, 0x02, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver/gossip status'),
(1162501, 0, 25, 1, 0, 11564, 27290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run on'),
(1162501, 0, 25, 1, 0, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run on'),
(1162501, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - restore faction'),
(1162501, 1, 22, 0, 0, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - restore faction'),
(1162501, 1, 22, 0, 0, 11564, 27290, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - restore faction'),
(1162501, 1, 22, 0, 0, 11564, 27289, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - restore faction');
-- At Northern stop
DELETE FROM dbscripts_on_creature_movement WHERE id = 1162556;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1162556, 0, 10, 12245, 600 * 1000, 0, 0, 0, 0, 0, 0, 0, -692.743, 1522.2, 90.3611, 0.558505, 'Vendor-tron 1000 Summon'),
(1162556, 0, 29, 1, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Add Cork Gossip Flag'),
(1162556, 600 - 10, 0, 0, 0, 0, 0, 0, 2000000872, 0, 0, 0, 0, 0, 0, 0, 'Cork departing text'),
(1162556, 600, 29, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Cork Gossip Flag');
-- At Southern stop
DELETE FROM dbscripts_on_creature_movement WHERE id = 11625197;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11625197, 0, 10, 12246, 600 * 1000, 11626, 40, 0, 0, 0, 0, 0, -1926.3, 2412.79, 60.6956, 0.174533, 'Super-seller 680 Summon'),
(11625197, 0, 29, 1, 0x01, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Add Rigger Gossip Flag'),
(11625197, 600 - 10, 0, 0, 0, 11626, 60, 7, 2000000874, 0, 0, 0, 0, 0, 0, 0, 'Rigger departing text'),
(11625197, 600, 29, 1, 2, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Rigger Gossip Flag');


