-- Updatepack_407

-- --------------------------------------------------
-- NEW CREATURE SPAWNS
-- --------------------------------------------------
-- Grz3s
-- Vilewing Chimaera - duplicates
DELETE FROM creature WHERE guid IN (84613,84609,84610,84488,84629,84632);
-- Coilskar Assassin - spawned only during Escort quest =10451
DELETE FROM creature WHERE guid IN (86811,86809,86810,86812,86814,86815,86816,86813,86817,86818,86824,86825,86823,86822,86821,86819,86820);
-- Captured water Spirit - duplicates
DELETE FROM creature WHERE guid IN (86802,86803,86804,86805);
-- Kor'Kron Wyvern Rider - duplicates
DELETE FROM creature WHERE guid IN (74221,74219);
-- Wrathstalker - should be spawned only during event
DELETE FROM creature WHERE guid IN (90923,90924,90925,90926,90927);
-- Priestess Tyriona -- spawned(morphed) by quest 434
DELETE FROM creature WHERE guid = 43690;
-- Marzon the Silent Blade -- spawned for quest 434
DELETE FROM creature WHERE guid = 10504;
-- Stair of Destiny - duplicates
DELETE FROM creature WHERE guid IN (68023,68020,86067,86066,86068,86069);
DELETE FROM creature_addon WHERE guid IN (68023,68020);
-- Dragonmaw Elite - theyre part of event not static spawns (86097 - has waypoints .. pls remove them)
DELETE FROM creature WHERE guid IN (86085,86086,86087,86088,86089,86093,86094,86095,86096,86097,86098);
-- Nethermine Burster - duplicate
DELETE FROM creature WHERE guid = 52032;
-- (crazed)/Murkblood Miner - shouldnt be there - correct ones added for 407
DELETE FROM creature WHERE guid IN (52015,52016,52017,52018,52020,52021,52030,52031);
-- infernals should be summoned by event 12353 
DELETE FROM creature WHERE guid IN (68002,68003,68004,68006,68007,68008);
-- goblin commoner -- duplicates
DELETE FROM creature WHERE guid IN (91117,91118,91750,91751);
-- Blackwind Sabercat - Terrokar Forest -- DUPLICATES
DELETE FROM creature WHERE guid IN (75894,75896,75898);

-- Xfurry
DELETE FROM creature WHERE guid IN (
10504, 43690, 52015, 52020, 52030, 68002, 68006, 68020, 68023, 74219, 74221,
75894, 75896, 75898, 84488, 84609, 84613, 84629, 84632, 86066, 86085, 
86093, 86802, 86809, 87006, 90871, 90923, 
91117, 91750, 36558, 151032, 151495);
DELETE FROM creature_addon WHERE guid IN (
10504, 43690, 52015, 52020, 52030, 68002, 68006, 68020, 68023, 74219, 74221,
75894, 75896, 75898, 84488, 84609, 84613, 84629, 84632, 86066, 86085, 
86093, 86802, 86809, 87006, 90871, 90923, 
91117, 91750, 36558, 151032, 151495);
DELETE FROM creature_movement WHERE id IN (
10504, 43690, 52015, 52020, 52030, 68002, 68006, 68020, 68023, 74219, 74221,
75894, 75896, 75898, 84488, 84609, 84613, 84629, 84632, 86066, 86085, 
86093, 86802, 86809, 87006, 90871, 90923, 
91117, 91750, 36558, 151032, 151495); 

-- ------------------
-- NPC single spawn
-- ------------------

-- Grz3s
-- Reusing  all removed and empty guids; 
DELETE FROM creature WHERE guid IN 
(871, 10504, 29498, 30141, 30143, 30145, 30169, 30175, 32885, 32908, 32934, 32938, 32941, 32946, 32948,
32950, 33067, 33167, 33218, 34144, 34145, 36558, 43690, 52015, 52016, 52017, 52018, 52020, 52021, 52030, 52031, 52032,
68002, 68003, 68004, 68006, 68007, 68008, 68020, 68023, 74219, 74221, 75894, 75896, 75898, 84488, 84609, 84610, 84613,
84629, 84632, 86066, 86067, 86068, 86069, 86086, 86087, 86088, 86089, 86093, 86094, 86095, 86096, 86097, 86098, 86099,
86802, 86803, 86804, 86805, 86809, 86810, 86811, 86812, 86813, 86814, 86815, 86816, 86817, 86818, 86819, 86820, 86821,
86822, 86823, 86824, 86825, 87534, 87535, 87536, 87537, 87538, 87539, 87540, 87541, 87542, 87543, 90871, 90923, 90924, 90925, 90926, 90927,
91117, 91118, 91750, 91751);

DELETE FROM creature_addon WHERE guid IN 
(871, 10504, 29498, 30141, 30143, 30145, 30169, 30175, 32885, 32908, 32934, 32938, 32941, 32946, 32948,
32950, 33067, 33167, 33218, 34144, 34145, 36558, 43690, 52015, 52016, 52017, 52018, 52020, 52021, 52030, 52031, 52032,
68002, 68003, 68004, 68006, 68007, 68008, 68020, 68023, 74219, 74221, 75894, 75896, 75898, 84488, 84609, 84610, 84613,
84629, 84632, 86066, 86067, 86068, 86069, 86086, 86087, 86088, 86089, 86093, 86094, 86095, 86096, 86097, 86098, 86099,
86802, 86803, 86804, 86805, 86809, 86810, 86811, 86812, 86813, 86814, 86815, 86816, 86817, 86818, 86819, 86820, 86821,
86822, 86823, 86824, 86825, 87534, 87535, 87536, 87537, 87538, 87539, 87540, 87541, 87542, 87543, 90871, 90923, 90924, 90925, 90926, 90927,
91117, 91118, 91750, 91751);
DELETE FROM creature_movement WHERE id IN 
(871, 10504, 29498, 30141, 30143, 30145, 30169, 30175, 32885, 32908, 32934, 32938, 32941, 32946, 32948,
32950, 33067, 33167, 33218, 34144, 34145, 36558, 43690, 52015, 52016, 52017, 52018, 52020, 52021, 52030, 52031, 52032,
68002, 68003, 68004, 68006, 68007, 68008, 68020, 68023, 74219, 74221, 75894, 75896, 75898, 84488, 84609, 84610, 84613,
84629, 84632, 86066, 86067, 86068, 86069, 86086, 86087, 86088, 86089, 86093, 86094, 86095, 86096, 86097, 86098, 86099,
86802, 86803, 86804, 86805, 86809, 86810, 86811, 86812, 86813, 86814, 86815, 86816, 86817, 86818, 86819, 86820, 86821,
86822, 86823, 86824, 86825, 87534, 87535, 87536, 87537, 87538, 87539, 87540, 87541, 87542, 87543, 90871, 90923, 90924, 90925, 90926, 90927,
91117, 91118, 91750, 91751);

-- MISSING EQUIP_TEMPLATE
DELETE FROM creature_equip_template WHERE entry IN (9,62,32,300);
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values
('9','1908','0','0'),
('62','2827','0','0'),
('32','5278','0','0'),
('300','0','0','28023');


-- Missing DB_Script_string
DELETE FROM db_script_string WHERE entry IN (2000005242,2000005243,2000005244,2000005167,2000005168,2000005206,2000005207,2000005208,2000005209,2000005205,2000005258,2000005259,2000005260,2000005261,2000005262);
INSERT INTO `db_script_string` (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
('2000005167','Is it true that the paladins train here?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005168','Why do we have to learn this stuff anyway?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005205','It\'s coming along, Wafflefry. Haven\'t you got a product demonstration to do or something?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005206','Be the first on your block to own the incredible Electrostatic Maculation Blaster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005207','Derived from cutting edge Shattered Hand Offensive military technology, it blasts away stubborn stains with ease!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005208','Wine stains, grass stains, even pet stains are no match for the Electrostatic Maculation Blaster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005209','Don\'t wait! Order now and receive my Ultra-Kinetic Waffle Iron at no additional charge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005242','Hmm... I wonder...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005243','Now, where is it?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005244','Stupid mages... always using the last of a reagent and never replacing it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005258','Im picking up trace amounts of chroniton particles. Hmm, if we use a reverse phase inducer, while inverting our own chronosphere, we might be able to eliminate the particles. Of course, that means we need to build a chronosphere...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005259','Hmm... It seems that the syncotron unit weve been using has had no noticeable effect on the gravimetric or gravitronic distortions in this sector.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005260','Hmm... the readings on the gravimeteric distortions seem to have stabalized. We did it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005261','I\'ll be the judge of that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005262','According to these readings, we have nothing to fear. At least nothing in the near future. We\'ll need more data to be sure.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


-- WOTLK DATA FROM PAST BACKPORT
DELETE FROM db_script_string WHERE entry IN (2000005729);
-- Missing NPC at "The Stair of Destiny"
-- Darkspear Axe Thrower - (Hellfire Peninsula)
DELETE FROM creature WHERE guid IN (140485,140486,140487);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140485,18970,530,1,0,300,-232.374,1083.71,48.3245,1.55738,25,0,0,13084,0,0,0);
-- Stormwind Soldier - (Hellfire Peninsula)
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140486,18948,530,1,0,3,-252.769,1093.94,41.668,1.5708,25,0,0,13084,0,0,0),
(140487,18948,530,1,0,3,-272.204,1097.1,41.9803,1.5708,25,0,0,12652,0,0,0);

-- Terokkar Trigger
DELETE FROM creature WHERE guid IN (140581,140582,140583,140584);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140581,23102,530,1,0,0,-2443.7,4634.14,158.221,1.10586,25,0,0,4120,0,0,0),
(140582,23102,530,1,0,0,-2482.24,4661.68,161.413,3.51227,25,0,0,4120,0,0,0),
(140583,23102,530,1,0,0,-2384.98,4552.59,165.69,4.99611,25,0,0,4120,0,0,0),
(140584,23102,530,1,0,0,-2432.75,4458.1,166.076,0.907029,25,0,0,4120,0,0,0);
-- Rat - missing in undercity
DELETE FROM creature WHERE guid IN (140586,140587,140588,140589);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140586,4075,0,1,0,0,1412.15,417.707,-84.9654,3.36426,180,5,0,8,0,0,1),
(140587,4075,0,1,0,0,1428.02,406.496,-85.2519,3.37997,180,20,0,8,0,0,1),
(140588,4075,0,1,0,0,1452.04,401.733,-84.9925,0.222665,180,5,0,8,0,0,1),
(140589,4075,0,1,0,0,1407.63,370.503,-84.953,3.96901,180,5,0,8,0,0,1);

-- Crag Boar -- Dun Morogh
DELETE FROM creature WHERE guid IN (140590);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140590,1125,0,1,0,0,-6119.69,-200.734,434.551,0.361272,180,5,0,102,0,0,1);

-- Horizont Missing team
-- Roland Geardabbler
DELETE FROM creature WHERE guid IN (140775);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140775,8394,1,1,0,0,1746.45,-5861.29,-91.4165,3.20841,300,0,0,2762,3575,0,0);
DELETE FROM creature_template_addon WHERE entry = 8394;
-- Horizon Scout Cook
DELETE FROM creature WHERE guid = 140776;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140776,8388,1,1,0,0,1747.62,-5862.27,-90.9249,3.17332,300,0,0,2666,0,0,0);
-- Horizon Scout First Mate 
DELETE FROM creature WHERE guid = 140777;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140777,8387,1,1,0,0,1747.24,-5859.6,-90.3817,3.98543,300,0,0,2766,0,0,0);
-- Horizon Scout Engineer
DELETE FROM creature WHERE guid = 140778;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140778,8389,1,1,0,0,1748.87,-5863.46,-90.2665,2.83088,300,0,0,2666,0,0,0);
-- Second Mate Shandril
DELETE FROM creature WHERE guid = 140779;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140779,8478,1,1,0,0,1916.44,-5733.37,10.1936,4.10397,300,0,0,2766,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 8478;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(8478,0,8,1,0,0,0,NULL);
-- add link to the midsummer event for all 3 creatures
DELETE FROM game_event_creature WHERE guid IN (140591, 140592, 140593);
INSERT INTO game_event_creature (guid, event) VALUES
(140591, 1),
(140592, 1),
(140593, 1);
-- Veneratus spawn node npc
DELETE FROM creature WHERE guid = 140594;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140594,21334, 530, 1, 0, 0, -4051.381, 2616.373, 127.9368, 5.078908, 300, 0, 0, 9250, 0, 0, 0);
-- Witherbark Trolls event - (Arathi Highlands)
DELETE FROM creature WHERE guid BETWEEN 140693 AND 140697;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140693,2556,0,1,0,62,-1234.76,-3536.47,46.5823,5.929,120,0,0,1342,0,0,0),
(140694,2552,0,1,0,0,-1232.1,-3535.9,46.4729,5.6706,120,0,0,1107,0,0,0),
(140695,2552,0,1,0,0,-1230.75,-3533.46,46.0261,5.83082,120,0,0,1107,0,0,0),
(140696,2552,0,1,0,0,-1229.85,-3535.1,46.3087,5.918,120,0,0,1050,0,0,0),
(140697,2553,0,1,0,9,-1233.3,-3533.72,46.0859,5.80098,120,0,0,847,2253,0,2); -- master
DELETE FROM creature_movement WHERE id = 140697;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140697,1,-1233.3,-3533.72,46.0859,100000,0,0,0,0,0,0,0,0,5.80098,0,0),
(140697,2,-1233.3,-3533.72,46.0859,3000,255301,0,0,0,0,0,0,0,5.80098,0,0),
(140697,3,-1233.3,-3533.72,46.0859,1000,255302,0,0,0,0,0,0,0,5.80098,0,0),
(140697,4,-1162.87,-3563.07,50.5074,0,0,0,0,0,0,0,0,0,0.0411459,0,0),
(140697,5,-1032.97,-3550.54,55.9796,0,0,0,0,0,0,0,0,0,6.22908,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 255301 AND 255302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(255301,0,31,2556,10,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2556,140693,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140694,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140695,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255301,1,25,1,0,2552,140696,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(255302,0,31,2556,100,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255302,0,3,0,0,2556,140693,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140694,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140695,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,0,3,0,0,2552,140696,7 | 0x10,0,0,0,0,-1162.87,-3563.07,50.5074,0.0411459,''),
(255302,9,31,2556,100,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(255302,10,3,0,0,2556,140693,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140694,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140695,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,''),
(255302,10,3,0,0,2552,140696,7 | 0x10,0,0,0,0,-1032.97,-3550.54,55.9796,6.22908,'');
-- Blackwind Sabercat #1 - Terrokar Forest  -- missing spawn
DELETE FROM creature WHERE guid = 140769;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140769,21723,530,1,0,0,-3522.41,3254.19,300.692,0.0237059,300,0,0,9082,0,0,2);
DELETE FROM creature_movement WHERE id = 140769;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140769,1,-3512.91,3253.65,298.684,0,0,0,0,0,0,0,0,0,5.52543,0,0),
(140769,2,-3509.42,3247.42,297.527,0,0,0,0,0,0,0,0,0,4.89712,0,0),
(140769,3,-3508.96,3238.18,291.435,0,0,0,0,0,0,0,0,0,2.40741,0,0),
(140769,4,-3509.74,3247.4,297.482,0,0,0,0,0,0,0,0,0,1.56703,0,0),
(140769,5,-3510.9,3254.41,298.329,0,0,0,0,0,0,0,0,0,2.41352,0,0),
(140769,6,-3520.29,3251.55,300.414,0,0,0,0,0,0,0,0,0,3.74712,0,0),
(140769,7,-3529.47,3244.12,301.703,0,0,0,0,0,0,0,0,0,3.60732,0,0),
(140769,8,-3544.26,3234.75,303.708,0,0,0,0,0,0,0,0,0,3.92855,0,0),
(140769,9,-3550.47,3226.39,307.004,0,0,0,0,0,0,0,0,0,4.16495,0,0),
(140769,10,-3543.36,3236.64,303.118,0,0,0,0,0,0,0,0,0,0.771562,0,0),
(140769,11,-3523.98,3253.32,300.861,0,0,0,0,0,0,0,0,0,0.200578,0,0);
-- Blackwind Sabercat #2 - Terrokar Forest  -- missing spawn
DELETE FROM creature WHERE guid = 140770;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140770,21723,530,1,0,0,-3491.7,3240.65,299.471,5.0402,300,0,0,9335,0,0,2);
DELETE FROM creature_movement WHERE ID = 140770;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140770,1,-3491.98,3230.37,298.39,0,0,0,0,0,0,0,0,0,4.26973,0,0),
(140770,2,-3499.64,3217.43,296.899,0,0,0,0,0,0,0,0,0,4.19904,0,0),
(140770,3,-3490.54,3233.88,298.693,0,0,0,0,0,0,0,0,0,1.81536,0,0),
(140770,4,-3497.68,3253.86,299.642,0,0,0,0,0,0,0,0,0,1.66849,0,0),
(140770,5,-3499.37,3269.09,301.012,0,0,0,0,0,0,0,0,0,1.70383,0,0),
(140770,6,-3501.71,3273.94,300.778,0,0,0,0,0,0,0,0,0,4.20925,0,0),
(140770,7,-3498.72,3268.99,301.056,0,0,0,0,0,0,0,0,0,5.13994,0,0),
(140770,8,-3498.38,3254.15,299.717,0,0,0,0,0,0,0,0,0,4.93181,0,0),
(140770,9,-3491.69,3241.45,299.476,0,0,0,0,0,0,0,0,0,5.19491,0,0);
UPDATE item_template SET ContainerSlots = 8 WHERE entry = 11845; -- Handmade Leather Bag - from Faxe_the_Slayer
-- Gossip text & Options for Tracy Proudwell -- from Malcrom
DELETE FROM gossip_menu WHERE entry IN (20020, 8544);
INSERT INTO gossip_menu (entry, text_id) VALUES (8544,10689);
UPDATE gossip_menu_option SET action_menu_id = 8544 WHERE menu_id = 7892 AND id = 1;
UPDATE gossip_menu_option SET menu_id = 8544 WHERE menu_id = 20020;-- Shadowforge Brazier -- shouldn't have any flags (flag 16 will be added by spell) -- from Mightylink
UPDATE gameobject_template SET flags = 0 WHERE entry = 174744;
-- Deer Critter  -- from Axel
UPDATE creature SET MovementType = 1, spawndist = 20 WHERE guid = 32676;
-- Chieftain Earthbind - equip - from Axel
UPDATE creature_template SET EquipmentTemplateID = 1343 WHERE entry = 12791;
DELETE FROM creature_template_addon WHERE entry = 12791;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(12791,0,0,2,0,0,0,NULL);
-- Isha Awak - from Axel 
UPDATE creature SET MovementType = 2 WHERE guid = 15085;
DELETE FROM creature_movement WHERE id = 15085;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(15085, 1, -1949.31, -3817.22, -6.52593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.23346, 0, 0),
(15085, 2, -1876.07, -3848.77, -9.3871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.83291, 0, 0),
(15085, 3, -1807.86, -3875.06, -3.79004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85254, 0, 0),
(15085, 4, -1768.57, -3918.63, -3.28865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46238, 0, 0),
(15085, 5, -1728, -3959.94, -7.35339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.44504, 0, 0),
(15085, 6, -1683.23, -3962.82, -2.32115, 90000, 0, 0, 0, 0, 0, 0, 0, 0, 5.88708, 0, 0),
(15085, 7, -1728, -3959.94, -7.35339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.79423, 0, 0),
(15085, 8, -1768.57, -3918.63, -3.28865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.38422, 0, 0),
(15085, 9, -1807.86, -3875.06, -3.79004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39994, 0, 0),
(15085, 10, -1876.07, -3848.77, -9.3871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.80443, 0, 0),
(15085, 11, -1949.31, -3817.22, -6.52593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02435, 0, 0),
(15085, 12, -2025.94, -3814.75, -7.26146, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 3.77136, 0, 0);
-- quest 11521 (Rediscovering your roots)
DELETE FROM spell_script_target WHERE entry = 44941;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(44941, 0, 187073, 0);
-- quest 11691 (Summon Ahune)
-- spell script targets
DELETE FROM spell_script_target WHERE entry = 46603;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46603, 1, 26121, 0);
DELETE FROM spell_script_target WHERE entry = 46593;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46593, 1, 26120, 0);
DELETE FROM spell_script_target WHERE entry = 46809;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46809, 1, 26239, 0);
DELETE FROM spell_script_target WHERE entry IN (45930,46398);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45930, 1, 25971, 0),
(45930, 1, 25972, 0),
(45930, 1, 25973, 0),
(46398, 1, 25971, 0),
(46398, 1, 25972, 0),
(46398, 1, 25973, 0);
DELETE FROM spell_script_target WHERE entry IN (45941,46623);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45941, 1, 25746, 0),
(46623, 1, 25746, 0);
-- event scripts
DELETE FROM db_script_string WHERE entry IN (2000001000,2000001001,2000001002);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001000,'The Ice Stone has melted!',0,0,0,22,'say Ahune 1'),
(2000001001,'Ahune, your strength grows no more!',0,0,0,0,'say Ahune 2'),
(2000001002,'Your frozen reign will not come to pass!',0,0,0,0,'say Ahune 3');
UPDATE creature_template_addon SET auras = '' WHERE entry IN (25745,25971,25972,25973,25754);
UPDATE quest_template SET CompleteScript = 11691 WHERE entry = 11691;
DELETE FROM dbscripts_on_quest_end WHERE id = 11691;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(11691, 0, 15, 45937, 25745, 100, 0, 0, 0, 0, 0, 0, '[PH] Ahune Summon Loc Bunny - Cast Ahune - Summoning Visual 1'),
(11691, 1, 15, 46603, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Force Wisp Flight Missile'),
(11691, 1, 0, 0, 0, 0, 0, 2000001000, 0, 0, 0, 0, 'say Ahune 1'),
(11691, 3, 15, 45930, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Ahune - Summoning Rhyme Spell, make bonfire'),
(11691, 3, 0, 0, 0, 0, 0, 2000001001, 0, 0, 0, 0, 'say Ahune 2'),
(11691, 5, 0, 0, 0, 0, 0, 2000001002, 0, 0, 0, 0, 'say Ahune 3'),
(11691, 10, 15, 46402, 25745, 100, 0, 0, 0, 0, 0, 0, '[PH] Ahune Summon Loc Bunny - Cast Ahune Resurfaces'),
(11691, 10, 10, 25740, 0, 0, 2, 0, -99.1021, -233.753, -1.222967, 1.5282, 'spawn Ahune'),
(11691, 12, 10, 25865, 25740, 100, 0, 0, -98.01508, -230.4555, -1.210892, 1.797689, 'spawn Frozen Core');
DELETE FROM dbscripts_on_spell WHERE id = 45930;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(45930, 0, 15, 46339, 0, 0, 6, 'Cast Bonfire Disguise');
DELETE FROM dbscripts_on_spell WHERE id IN (45941, 46623);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, comments) VALUES
(45941, 0, 15, 45939, 6, 'cast Summon Ahune\'s Loot'),
(46623, 0, 15, 46622, 6, 'cast Summon Ahune\'s Loot, Heroic');
-- creature link
DELETE FROM creature_linking_template WHERE entry IN (25865,25755,25756,25757);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25865, 547, 25740, 4112, 0),
(25755, 547, 25740, 4112, 0),
(25756, 547, 25740, 4112, 0),
(25757, 547, 25740, 4112, 0);	

-- -----------------------
-- WIND STONES (data from YTDB)
-- -----------------------
-- TEMPLARS
DELETE FROM spell_script_target WHERE entry IN (24734,24744,24756,24758,24760);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(24734, 0, 180456, 0),
(24734, 0, 180518, 0),
(24734, 0, 180529, 0),
(24734, 0, 180544, 0),
(24734, 0, 180549, 0),
(24734, 0, 180564, 0),
(24744, 0, 180456, 0),
(24744, 0, 180518, 0),
(24744, 0, 180529, 0),
(24744, 0, 180544, 0),
(24744, 0, 180549, 0),
(24744, 0, 180564, 0),
(24756, 0, 180456, 0),
(24756, 0, 180518, 0),
(24756, 0, 180529, 0),
(24756, 0, 180544, 0),
(24756, 0, 180549, 0),
(24756, 0, 180564, 0),
(24758, 0, 180456, 0),
(24758, 0, 180518, 0),
(24758, 0, 180529, 0),
(24758, 0, 180544, 0),
(24758, 0, 180549, 0),
(24758, 0, 180564, 0),
(24760, 0, 180456, 0),
(24760, 0, 180518, 0),
(24760, 0, 180529, 0),
(24760, 0, 180544, 0),
(24760, 0, 180549, 0),
(24760, 0, 180564, 0);
-- DUKES
DELETE FROM spell_script_target WHERE entry IN (24763,24765,24768,24770,24772);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(24763, 0, 180461, 0),
(24763, 0, 180534, 0),
(24763, 0, 180554, 0),
(24765, 0, 180461, 0),
(24765, 0, 180534, 0),
(24765, 0, 180554, 0),
(24768, 0, 180461, 0),
(24768, 0, 180534, 0),
(24768, 0, 180554, 0),
(24770, 0, 180461, 0),
(24770, 0, 180534, 0),
(24770, 0, 180554, 0),
(24772, 0, 180461, 0),
(24772, 0, 180534, 0),
(24772, 0, 180554, 0);
-- ROYALS
DELETE FROM spell_script_target WHERE entry IN (24784,24786,24788,24789,24790);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(24784, 0, 180466, 0),
(24784, 0, 180539, 0),
(24784, 0, 180559, 0),
(24786, 0, 180466, 0),
(24786, 0, 180539, 0),
(24786, 0, 180559, 0),
(24788, 0, 180466, 0),
(24788, 0, 180539, 0),
(24788, 0, 180559, 0),
(24789, 0, 180466, 0),
(24789, 0, 180539, 0),
(24789, 0, 180559, 0),
(24790, 0, 180466, 0),
(24790, 0, 180539, 0),
(24790, 0, 180559, 0);
-- conditions
DELETE FROM conditions WHERE (condition_entry BETWEEN 887 AND 900) OR(condition_entry BETWEEN 911 AND 918) OR condition_entry BETWEEN 1085 AND 1094;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(887, 11, 24746, 0),    -- no cultist disguse
(888, 1, 24746, 0),     -- basic disguise
(889, 11, 24748, 0),    -- no cultist medalion
(890, -1, 888, 889),    -- basic disguise but no medalion
(891, 1, 24748, 0),     -- cultist medalion
(892, -1, 888, 891),    -- basic disguise & medalion
(893, 1, 24782, 0),     -- cultist ring
(894, -1, 892, 893),    -- disguise & medalion & ring
(895, 2, 20416, 1),     -- Crest of Beckoning: Fire
(896, 2, 20419, 1),     -- Crest of Beckoning: Earth
(897, 2, 20418, 1),     -- Crest of Beckoning: Thunder
(898, 2, 20420, 1),     -- Crest of Beckoning: Water
(899, -1, 888, 895),    -- disguise and fire
(900, -1, 888, 896),    -- disguise and earth
(1085, -1, 888, 897),    -- disguise and air
(1086, -1, 888, 898),    -- disguise and water
(1087, 2, 20432, 1),     -- Signet of Beckoning: Fire
(1088, 2, 20435, 1),     -- Signet of Beckoning: Stone
(1089, 2, 20433, 1),     -- Signet of Beckoning: Thunder
(1090, 2, 20436, 1),     -- Signet of Beckoning: Water
(1091, -1, 892, 1087),    -- disguise & medalion and fire
(1092, -1, 892, 1088),    -- disguise & medalion and earth
(1093, -1, 892, 1089),    -- disguise & medalion and air
(1094, -1, 892, 1090),    -- disguise & medalion and water
(911, 2, 20447, 1),     -- Scepter of Beckoning: Fire
(912, 2, 20449, 1),     -- Scepter of Beckoning: Stone
(913, 2, 20448, 1),     -- Scepter of Beckoning: Thunder
(914, 2, 20450, 1),     -- Scepter of Beckoning: Water
(915, -1, 894, 911),    -- disguise & medalion & ring and fire
(916, -1, 894, 912),    -- disguise & medalion & ring and earth
(917, -1, 894, 913),    -- disguise & medalion & ring and air
(918, -1, 894, 914);    -- disguise & medalion & ring and water
-- gossips
DELETE FROM gossip_menu where entry IN (6542,6543,6540);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6540, 7744, 6540, 887),    -- punishment, no disguise
(6542, 7749, 6540, 887),    -- punishment, no disguise
(6543, 7754, 6540, 887),    -- punishment, no disguise
(6540, 7771, 0, 888),       -- basic disguise
(6542, 7772, 0, 890),       -- basic disguise & no medalion
(6542, 7773, 0, 892),       -- basic disguise & medalion
(6543, 7774, 0, 894),       -- disguise, medalion, ring (text is confirmed, but id is guesswork)
-- (6543, 7775, 0, 892),    -- basic disguise & medalion (text missing)
(6543, 7776, 0, 888);       -- basic disguise
DELETE FROM npc_text WHERE id = 7774;
INSERT INTO npc_text (id, text0_0, text0_1, prob0) VALUES
(7774,'A thunderous voice bellows from the stone...$B$BGreetings, commander. What news of Silithus do you bring the Lords of the Council?', 'A thunderous voice bellows from the stone...$B$BGreetings, commander. What news of Silithus do you bring the Lords of the Council?', 1);
DELETE FROM gossip_menu_option where menu_id IN (6542,6543,6540);
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(6540, 0, 0, 'I am no cultist, you monster! Come to me and face your destruction!', 1, 1, -1, 0, 654001, 0, 0, NULL, 888),
(6540, 1, 0, 'Crimson Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654002, 0, 0, NULL, 899),
(6540, 2, 0, 'Earthen Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654003, 0, 0, NULL, 900),
(6540, 3, 0, 'Hoary Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654004, 0, 0, NULL, 1085),
(6540, 4, 0, 'Azure Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654005, 0, 0, NULL, 1086),
(6542, 0, 0, 'You will listen to this, vile duke! I am not your Twilight\'s Hammer lapdog! I am here to challenge you! Come! Come, and meet your death...', 1, 1, -1, 0, 654201, 0, 0, NULL, 892),
(6542, 1, 0, 'Duke of Cynders! I hold your signet! Heed my call', 1, 1, -1, 0, 654202, 0, 0, NULL, 1091),
(6542, 2, 0, 'The Duke of Shards! I hold your signet! Heed my call!', 1, 1, -1, 0, 654203, 0, 0, NULL, 1092),
(6542, 3, 0, 'The Duke of Zephyrs! I hold your signet! Heed my call!', 1, 1, -1, 0, 654204, 0, 0, NULL, 1093),
(6542, 4, 0, 'The Duke of Fathoms! I hold your signet! Heed my call!', 1, 1, -1, 0, 654205, 0, 0, NULL, 1094),
(6543, 0, 0, 'The day of the judgement has come, fiend! I challenge you to battle!', 1, 1, -1, 0, 654301, 0, 0, NULL, 894),
(6543, 1, 0, 'Prince Skaldrenox! I hold your signet! Heed my call!', 1, 1, -1, 0, 654302, 0, 0, NULL, 915),
(6543, 2, 0, 'Baron Kazum! I hold your signet! Heed my call!', 1, 1, -1, 0, 654303, 0, 0, NULL, 916),
(6543, 3, 0, 'High Marshal Whirlaxis! I hold your signet! Heed my call!', 1, 1, -1, 0, 654304, 0, 0, NULL, 917),
(6543, 4, 0, 'Lord Skwol! I hold your signet! Heed my call!', 1, 1, -1, 0, 654305, 0, 0, NULL, 918);
DELETE FROM dbscripts_on_gossip WHERE id IN (6540,654001,654002,654003,654004,654005,654201,654202,654203,654204,654205,654301,654302,654303,654304,654305);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(6540, 1, 13, 0, 180502, 10, 1, 'use Wind Stone trap'),
(654001, 0, 15, 24745, 0, 0, 4, 'lesser wind stone - random'),
(654002, 0, 15, 24747, 0, 0, 4, 'lesser wind stone - fire'),
(654003, 0, 15, 24759, 0, 0, 4, 'lesser wind stone - earth'),
(654004, 0, 15, 24757, 0, 0, 4, 'lesser wind stone - air'),
(654005, 0, 15, 24761, 0, 0, 4, 'lesser wind stone - water'),
(654201, 0, 15, 24762, 0, 0, 4, 'wind stone - random'),
(654202, 0, 15, 24766, 0, 0, 4, 'wind stone - fire'),
(654203, 0, 15, 24771, 0, 0, 4, 'wind stone - earth'),
(654204, 0, 15, 24769, 0, 0, 4, 'wind stone - air'),
(654205, 0, 15, 24773, 0, 0, 4, 'wind stone - water'),
(654301, 0, 15, 24785, 0, 0, 4, 'greater wind stone - random'),
(654302, 0, 15, 24787, 0, 0, 4, 'greater wind stone - fire'),
(654303, 0, 15, 24792, 0, 0, 4, 'greater wind stone - earth'),
(654304, 0, 15, 24791, 0, 0, 4, 'greater wind stone - air'),
(654305, 0, 15, 24793, 0, 0, 4, 'greater wind stone - water');

-- --------------------
-- SUMMON SPELLS (YTDB)
-- --------------------
-- This includes Terrok summon event
DELETE FROM spell_script_target WHERE entry IN (40632,40640,40642,40644,41004);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(40632, 0, 185913, 0),
(40640, 0, 185913, 0),
(40642, 0, 185913, 0),
(40644, 0, 185913, 0),
(41004, 0, 185928, 0);
DELETE FROM conditions WHERE condition_entry = 919;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(919, 2, 32720, 1);
DELETE FROM gossip_menu WHERE entry IN (8687);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8687, 11058, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 8687;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8687, 0, 0, '<Call forth Terrok.>', 1, 2, -1, 0, 8687, 0, 0, NULL, 919);
UPDATE gossip_menu_option SET action_menu_id = -1 WHERE menu_id = 8660;
DELETE FROM dbscripts_on_gossip WHERE id IN (8687);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(8687, 0, 15, 41003, 0, 0, 4, 'Terokk Trigger');
-- ToDo: this may need additional research
DELETE FROM dbscripts_on_event WHERE id IN (15014);
INSERT INTO dbscripts_on_event (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES 
(15014, 2, 10, 21838, 180000, 0, 0, 0, 0, 0, 0, 0, -3789.4, 3507.63, 286.982, 0, 'spawn Terokk');

-- ---------------
-- ICE STONES
-- ---------------
DELETE FROM spell_script_target WHERE entry IN (46592);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46592, 0, 188049, 0),
(46592, 0, 188137, 0),
(46592, 0, 188138, 0),
(46592, 0, 188148, 0),
(46592, 0, 188149, 0),
(46592, 0, 188150, 0);
delete from gossip_menu where entry IN (9213,9256,9257,9269,9271,9272,9273,9274);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9213, 12524, 0, 0),
(9256, 12524, 0, 0),
(9257, 12524, 0, 0),
(9269, 12524, 0, 0),
(9271, 12524, 0, 0),
(9272, 12524, 0, 0),
(9273, 12524, 0, 0),
(9274, 12524, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (9213,9256,9257,9269,9271,9272,9273,9274);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9213, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9256, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9257, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9269, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9271, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9272, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9273, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888),
(9274, 0, 0, 'Lay your hand on the stone.', 1, 1, -1, 0, 9213, 0, 0, NULL, 888);
DELETE FROM dbscripts_on_gossip WHERE id IN (9213);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, data_flags, comments) VALUES
(9213, 0, 15, 46595, 4, 'cast Summon Ice Stone Lieutenant, Trigger');

-- quest 11405 (Call the headless Horseman)
UPDATE quest_template SET CompleteScript = 11405 WHERE entry = 11405;
DELETE FROM dbscripts_on_quest_end WHERE id = 11405;
INSERT INTO dbscripts_on_quest_end (id,delay,command,datalong,datalong2,data_flags,dataint,x,y,z,o,comments) VALUES
(11405,1,0,0,0,2,2000005805,0,0,0,0,'say_summon_horseman_1'),
(11405,3,0,0,0,2,2000005806,0,0,0,0,'say_summon_horseman_2'),
(11405,5,0,0,0,2,2000005807,0,0,0,0,'say_summon_horseman_3'),
(11405,8,0,0,0,2,2000005808,0,0,0,0,'say_summon_horseman_4'),
(11405,8,15,42909,0,0,0,0,0,0,0,'cast Headless Horseman Climax - Summoning Rhyme, Shake, Medium'),
(11405,10,10,23682,0,0,0,1765.28,1347.46,17.5514,0.100363,'summon Headless Horseman');
UPDATE creature_template SET MovementType = 2,InhabitType = InhabitType|4 WHERE entry = 23682;
DELETE FROM db_script_string WHERE entry IN (2000005805,2000005806,2000005807,2000005808,2000005809,2000005810);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005805,'Horseman rise...',0,0,0,0,'horseman say_summon_horseman_1'),
(2000005806,'Your time is night...',0,0,0,0,'horseman say_summon_horseman_2'),
(2000005807,'You felt death once...',0,0,0,0,'horseman say_summon_horseman_3'),
(2000005808,'Now, know demise!',0,0,0,0,'horseman say_summon_horseman_4'),
(2000005809,'It is over, your search is done! Let fate choose now, the righteous one.',11961,1,0,0,'horseman say_intro'),
(2000005810,'%s laughs.',11965,2,0,0,'horseman emote_laugh');
DELETE FROM creature_movement_template WHERE entry IN (23682);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(23682,1,1766.327, 1347.983, 20.639, 2368201, 0, 0),
(23682,2,1768.127, 1348.233, 30.344, 0, 0, 0),
(23682,3,1774.342, 1348.627, 40.366, 0, 0, 0),
(23682,4,1784.442, 1349.328, 40.366, 0, 0, 0),
(23682,5,1796.890, 1348.784, 40.366, 0, 0, 0),
(23682,6,1802.690, 1352.518, 40.366, 0, 0, 0),
(23682,7,1803.613, 1360.228, 40.366, 0, 0, 0),
(23682,8,1800.439, 1366.104, 40.366, 0, 0, 0),
(23682,9,1791.870, 1369.557, 40.366, 0, 0, 0),
(23682,10,1781.039, 1373.541, 40.366, 0, 0, 0),
(23682,11,1774.959, 1372.638, 40.366, 0, 0, 0),
(23682,12,1767.927, 1375.606, 40.366, 0, 0, 0),
(23682,13,1761.487, 1375.764, 35.580, 0, 0, 0),
(23682,14,1757.467, 1373.681, 25.280, 0, 0, 0),
(23682,15,1757.916, 1366.613, 19.501, 2368215, 1000, 5.67);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2368201,2368215);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(2368201, 0, 0, 0, 0, 0, 0, 0, 2000005809, 'Headless Horseman - say_intro'),
(2368201, 8, 0, 0, 0, 0, 0, 0, 2000005810, 'Headless Horseman - emote_laugh'),
(2368215, 0, 32, 1, 0, 0, 0, 0, 0, 'Headless Horseman - pause waypoints');
-- linking
DELETE FROM creature_linking_template WHERE entry IN (23775);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(23775, 189, 23682, 4096, 0);
DELETE FROM spell_script_target WHERE entry IN (43306,43101);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(43306,1,23682,0),
(43101,1,23682,0);
-- bad model
UPDATE creature_template SET ModelId1 = 5187, ModelId2 = 21908 WHERE entry IN (23775);


-- Caza'rez -- gossip
UPDATE creature_template SET GossipMenuId = 7825 WHERE entry = 17558;
DELETE FROM gossip_menu WHERE entry = 7825;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(7825,9574);
-- Stone Guard Stok'ton -- gossip
UPDATE creature_template SET GossipMenuId = 7420 WHERE entry = 17493;
DELETE FROM gossip_menu WHERE entry = 7420;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(7420,8962);
-- Watch Commander Krunk -- gossip
UPDATE creature_template SET GossipMenuId = 7333 WHERE entry = 16584;
DELETE FROM gossip_menu WHERE entry = 7333;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(7333,8717);
-- Grelag -- gossip
UPDATE creature_template SET GossipMenuId = 7348 WHERE entry = 16858;
DELETE FROM gossip_menu WHERE entry = 7348;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7348, 8767, 0, 0),
(7348, 9619, 0, 954); 
DELETE FROM conditions WHERE condition_entry = 954;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(954, 8, 9345, 0);
-- Battlemage Vyara -- gossip
UPDATE creature_template SET GossipMenuId = 8500 WHERE entry = 22211;
DELETE FROM gossip_menu WHERE entry = 8500;
INSERT INTO gossip_menu (entry, text_id) VALUES 
(8500,10625);
-- Mordenai - gossips
DELETE FROM gossip_menu WHERE entry = 8493; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8493, 10606, 0, 0),
(8493, 10855, 0, 960), -- for not enough riding skill
(8493, 10854, 0, 959), -- for 11013 and further
(8493, 10655, 0, 957); -- between 10870 and 11012
DELETE FROM conditions WHERE condition_entry BETWEEN 955 and 960;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(955, 8, 10870, 0),
(958, 29, 762, 300),
(957, -1, 956, 955), -- between 10870 and 11012
(956, 7, 762, 300),
(959, 8, 11012, 0), -- for 11013 and further
(960, -1, 955, 958); -- riding skill <300
-- Overlord Mor'ghor -- gossip
DELETE FROM gossip_menu WHERE entry = 8666; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8666, 10901, 0, 0), -- main
(8666, 10950, 0, 441), -- 1st change
(8666, 11032, 0, 421); -- req. max rep.
-- Taskmaster Varkule Dragonbreath - update
DELETE FROM gossip_menu WHERE entry = 8652; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8652, 10862, 0, 0), -- main 
(8652, 10863, 0, 47), -- after first q.
(8652, 10864, 0, 466); -- req. maxed rep.
-- Yazill the Merc - gossip
DELETE FROM gossip_menu WHERE entry = 8662; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8662, 10892, 0, 0);
UPDATE gossip_menu_option SET action_script_id = 866201, condition_id = 962 WHERE menu_id = 8662;
DELETE FROM dbscripts_on_gossip WHERE id = 866201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(866201,0,15,41540,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry = 962;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(962, 9, 11108, 0);
-- Captured Arko'narin - gossips
DELETE FROM gossip_menu WHERE entry = 3129; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3129, 3865, 0, 0), -- default 
(3129, 4113, 0, 968); -- after first quest completed
DELETE FROM conditions WHERE condition_entry = 968;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(968, 8, 5202, 0);
-- Jero'me <Mo'rrisroe's Minion> -- gossip
UPDATE creature_template SET GossipMenuId = 8060 WHERE entry = 19882;
DELETE FROM gossip_menu WHERE entry IN (8060,8061);
INSERT INTO gossip_menu (entry, text_id) VALUES 
(8060,9955),
(8061,9956);
DELETE FROM gossip_menu_option WHERE menu_id = 8060; 
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(8060, 0, 0, 'YES!', 1, 1, 8061, 0, 0),
(8060, 1, 0, 'NO!', 1, 1, -1, 0, 0);
-- Mankrik -- gossips
DELETE FROM npc_gossip WHERE npc_guid = 14348; -- old system removed
UPDATE creature_template SET GossipMenuId = 2861 WHERE entry = 3432;
DELETE FROM gossip_menu WHERE entry = 2861; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2861, 3553, 0, 0), -- main 
(2861, 3554, 0, 943); -- after all his quests
DELETE FROM conditions WHERE condition_entry IN (941, 942, 943); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(943, -1, 942, 941),
(942, 8, 4921, 0),
(941, 8, 899, 0);
-- Morley Bates -- Undercity
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 38421;
DELETE FROM creature_movement WHERE id = 38421;
UPDATE creature_template SET MovementType = 2 WHERE entry = 4571; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 4571;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(4571,1,1692.201904,139.641846,-55.214390,0,0,0,0,0,0,0,0,0,6.123605,0,0),
(4571,2,1694.764893,138.542770,-55.022465,0,0,0,0,0,0,0,0,0,5.588755,0,0),
(4571,3,1698.867065,134.570557,-52.505413,0,0,0,0,0,0,0,0,0,5.520430,0,0),
(4571,4,1702.585693,131.029968,-49.612007,0,0,0,0,0,0,0,0,0,5.485089,0,0),
(4571,5,1705.978516,127.957245,-48.915165,0,0,0,0,0,0,0,0,0,5.418329,0,0),
(4571,6,1709.306274,124.367935,-49.698490,0,0,0,0,0,0,0,0,0,5.434034,0,0),
(4571,7,1712.874023,120.622345,-52.617626,0,0,0,0,0,0,0,0,0,5.390840,0,0),
(4571,8,1717.208252,116.369743,-55.215046,0,0,0,0,0,0,0,0,0,5.020132,0,0),
(4571,9,1715.927490,112.043648,-55.215046,0,0,0,0,0,0,0,0,0,3.865062,0,0),
(4571,10,1710.193848,105.648643,-60.226227,0,0,0,0,0,0,0,0,0,3.989156,0,0),
(4571,11,1704.670166,98.548027,-60.156685,0,0,0,0,0,0,0,0,0,3.708768,0,0),
(4571,12,1702.469849,96.913681,-62.183727,0,0,0,0,0,0,0,0,0,3.757463,0,0),
(4571,13,1696.200073,89.700615,-62.245487,0,0,0,0,0,0,0,0,0,4.154087,0,0),
(4571,14,1693.445557,80.922714,-62.289646,0,0,0,0,0,0,0,0,0,4.904924,0,0),
(4571,15,1694.970947,74.606171,-62.289646,0,0,0,0,0,0,0,0,0,5.439004,0,0),
(4571,16,1703.908081,68.916229,-62.289646,0,0,0,0,0,0,0,0,0,6.058682,0,0),
(4571,17,1716.820801,67.587296,-62.281952,0,0,0,0,0,0,0,0,0,0.244379,0,0),
(4571,18,1726.935669,73.529434,-62.280739,0,0,0,0,0,0,0,0,0,0.759600,0,0),
(4571,19,1746.531616,97.615318,-62.277756,0,0,0,0,0,0,0,0,0,0.680274,0,0),
(4571,20,1761.977051,112.225182,-62.282078,0,0,0,0,0,0,0,0,0,1.051768,0,0),
(4571,21,1764.695068,122.498894,-62.289280,0,0,0,0,0,0,0,0,0,1.664379,0,0),
(4571,22,1762.121338,130.429794,-62.293812,0,0,0,0,0,0,0,0,0,2.294268,0,0),
(4571,23,1756.816772,135.878189,-62.296608,0,0,0,0,0,0,0,0,0,2.690109,0,0),
(4571,24,1748.166870,137.670273,-62.280506,0,0,0,0,0,0,0,0,0,3.475508,0,0),
(4571,25,1742.719971,136.389114,-62.215290,0,0,0,0,0,0,0,0,0,3.800663,0,0),
(4571,26,1737.080444,131.298904,-62.116192,0,0,0,0,0,0,0,0,0,3.754325,0,0),
(4571,27,1735.050415,129.373520,-60.103340,0,0,0,0,0,0,0,0,0,3.699347,0,0),
(4571,28,1727.588257,123.737144,-60.372936,0,0,0,0,0,0,0,0,0,3.788882,0,0),
(4571,29,1721.737671,118.051208,-55.215641,0,0,0,0,0,0,0,0,0,3.820298,0,0),
(4571,30,1717.091797,117.097122,-55.031643,0,0,0,0,0,0,0,0,0,2.419933,0,0),
(4571,31,1713.285400,120.886414,-52.663830,0,0,0,0,0,0,0,0,0,2.383019,0,0),
(4571,32,1709.635254,123.817406,-50.022968,0,0,0,0,0,0,0,0,0,2.390873,0,0),
(4571,33,1705.950806,127.811539,-48.913475,0,0,0,0,0,0,0,0,0,2.379092,0,0),
(4571,34,1702.807983,131.052505,-49.581020,0,0,0,0,0,0,0,0,0,2.288771,0,0),
(4571,35,1699.202026,134.708969,-52.444389,0,0,0,0,0,0,0,0,0,2.363384,0,0),
(4571,36,1695.124146,138.728653,-54.968365,0,0,0,0,0,0,0,0,0,2.152897,0,0),
(4571,37,1694.589111,141.696426,-55.214432,0,0,0,0,0,0,0,0,0,1.100463,0,0),
(4571,38,1695.868896,143.529465,-55.214268,0,0,0,0,0,0,0,0,0,0.698551,0,0),
(4571,39,1701.858887,150.072723,-60.469513,0,0,0,0,0,0,0,0,0,1.418761,0,0),
(4571,40,1701.063477,158.274918,-60.438343,0,0,0,0,0,0,0,0,0,1.211416,0,0),
(4571,41,1704.810181,171.620438,-60.737682,0,0,0,0,0,0,0,0,0,1.962257,0,0),
(4571,42,1700.957275,175.207169,-62.000648,0,0,0,0,0,0,0,0,0,2.709171,0,0),
(4571,43,1694.132935,176.281799,-62.171570,0,0,0,0,0,0,0,0,0,3.569968,0,0),
(4571,44,1678.931519,164.417252,-62.156734,0,0,0,0,0,0,0,0,0,3.902192,0,0),
(4571,45,1661.356812,147.728577,-62.165779,0,0,0,0,0,0,0,0,0,4.109537,0,0),
(4571,46,1656.410156,141.673599,-62.155628,0,0,0,0,0,0,0,0,0,4.415842,0,0),
(4571,47,1658.164429,130.089584,-62.195759,0,0,0,0,0,0,0,0,0,5.289191,0,0),
(4571,48,1660.051758,128.194778,-61.495415,0,0,0,0,0,0,0,0,0,5.849962,0,0),
(4571,49,1670.617188,126.868576,-61.480343,0,0,0,0,0,0,0,0,0,0.112627,0,0),
(4571,50,1672.972656,126.964844,-60.389759,0,0,0,0,0,0,0,0,0,0.327826,0,0),
(4571,51,1683.947754,131.563538,-60.465267,0,0,0,0,0,0,0,0,0,0.822258,0,0),
(4571,52,1690.073608,137.640442,-55.214428,0,0,0,0,0,0,0,0,0,0.721727,0,0);
-- Morbent Fel - update 
UPDATE creature_template SET scale = 1, UnitFlags = UnitFlags | 512 WHERE entry = 1200; -- prev value was taken with his aura (changes his size)
UPDATE creature SET spawntimesecs = 240 WHERE guid = 5056;
DELETE FROM dbscripts_on_spell WHERE id = 8913; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8913,2,10,24782,120000,1200,50,7,0,0,0,0,0,0,0,0,''),
(8913,3,18,0,0,1200,50,7,0,0,0,0,0,0,0,0,'');
-- Phantasmal Lash - should respan every 3min (not every 10 secs)
UPDATE creature SET spawntimesecs = 180 WHERE guid = 42685;
-- Aerher Ray - update
UPDATE creature_template SET InhabitType = 1 WHERE entry = 22181;
-- Crildor - update
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 5782;
-- Crag Boar
UPDATE creature SET position_x = -6070.349121, position_y = -285.940399, position_z = 428.220367, orientation = 1.496177 WHERE guid = 263;
UPDATE creature SET position_x = -6104.470703, position_y = -163.987122, position_z = 433.257080, orientation = 1.833880 WHERE guid = 1716;
UPDATE creature SET position_x = -5988.834473, position_y = -135.639069, position_z = 400.818604, orientation = 4.441411 WHERE guid = 290;
-- Mortar Combat - event
-- correct spawn possition for all involved in event
UPDATE creature SET position_x = -6009.25, position_y = -202.649994, position_z = 406.982605, orientation = 1.58825 WHERE guid = 269; -- angus
UPDATE creature SET orientation = 0.03490658 WHERE guid = 265 ; -- hegnar
UPDATE creature SET position_x = -6007.301758, position_y = -200.348206, position_z = 406.777496, orientation = 3.282219 WHERE guid = 272; -- klemmy
UPDATE creature SET position_x = -6007.458984, position_y = -202.157593, position_z = 407.447937, orientation = 2.478368 WHERE guid = 267; -- shorty
UPDATE creature SET position_x = -6010.668151495, position_y = -199.434006, position_z = 406.792480, orientation = 5.532694 WHERE guid = 268; -- middlecamp
UPDATE creature SET position_x = -6008.527832, position_y = -199.145203, position_z = 406.687225, orientation = 4.372177 WHERE guid = 266; -- wheeler
-- Angus
UPDATE creature_template SET MovementType = 2 WHERE entry = 10610;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 269;
DELETE FROM creature_movement_template WHERE entry = 10610;
INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(10610,1,-6009.25,-202.649994,406.982605,45000,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,2,-6009.25,-202.649994,406.982605,1000,1061001,0,0,0,0,0,0,0,1.58825,0,0),
(10610,3,-6009.25,-202.649994,406.982605,2000,1061002,0,0,0,0,0,0,0,1.58825,0,0),
(10610,4,-6031.16,-230.264,414.361,250000,1061003,0,0,0,0,0,0,0,2.18492,0,0),
(10610,5,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,1.58825,0,0),
(10610,6,-6009.25,-202.649994,406.982605,5000,1061004,0,0,0,0,0,0,0,1.58825,0,0),
(10610,7,-6009.25,-202.649994,406.982605,300000,0,0,0,0,0,0,0,0,1.58825,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1061001 AND 1061004;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(1061001,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - active'),
(1061001,0,21,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy - active'),
(1061001,0,21,1,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty - active'),
(1061001,1,21,1,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler - active'),
(1061001,1,21,1,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp - active'),
(1061002,0,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061002,1,16,6598,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061002,2,3,0,0,10611,267,0x10,0,0,0,0,-6031.589,-228.182,414.4035,2,'Shorty'),
(1061002,2,3,0,0,10804,268,0x10,0,0,0,0,-6034.14,-223.333,413.4,1,'Middlecamp'),
(1061002,2,3,0,0,10805,272,0x10,0,0,0,0,-6011.17,-197.021,406.765,1.97737,'Klemmy'),
(1061002,2,3,0,0,10803,266,0x10,0,0,0,0,-6011.87,-199.241,406.834,4.31443,'Wheeler'),
(1061002,3,3,0,0,10805,272,0x10,0,0,0,0,-6015.51,-184.362,407.712,2.49704,'Klemmy'),
(1061002,5,3,0,0,10805,272,0x10,0,0,0,0,-6065.18,-201.938,424.419,5,'Klemmy'),
(1061002,4,3,0,0,10803,266,0x10,0,0,0,0,-6031.929,-221.0882,413.1531,2.443461,'Wheeler'),
(1061002,15,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,5.59936,'Klemmy'),
(1061002,17,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.18492,'Shorty'),
(1061002,18,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061002,18,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061002,22,3,0,0,1243,265,0x10,0,0,0,0,0,0,0,3.68522,'Hegnar'),
(1061003,5,0,0,0,10804,268,7 | 0x10,2000005730,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,8,15,16768,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'), 
(1061003,10,0,0,0,10804,268,7 | 0x10,2000005731,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,14,0,0,0,10804,268,7 | 0x10,2000005732,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,16,15,16772,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,18,0,0,0,10804,268,7 | 0x10,2000005733,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,20,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,21,1,5,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,21,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,22,1,274,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,22,1,274,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,23,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061003,24,0,0,0,10803,266,7 | 0x10,2000005734,0,0,0,0,0,0,0,'Wheeler'),
(1061003,28,15,16767,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,30,0,0,0,10803,266,7 | 0x10,2000005735,0,0,0,0,0,0,0,'Wheeler'),
(1061003,32,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,33,1,25,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,33,16,6249,2,10803,266,0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,35,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,36,1,21,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,36,1,23,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,38,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,41,0,0,0,10804,268,7 | 0x10,2000005736,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,43,15,16777,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,45,0,0,0,10804,268,7 | 0x10,2000005737,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,47,1,20,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,47,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,48,1,6,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,48,16,6248,2,10803,266,0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,51,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,51,0,0,0,10804,268,7 | 0x10,2000005738,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,53,15,16780,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,55,0,0,0,10804,268,7 | 0x10,2000005739,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,57,0,0,0,10803,266,7 | 0x10,2000005740,0,0,0,0,0,0,0,'Wheeler'),
(1061003,57,15,16775,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,59,0,0,0,10803,266,7 | 0x10,2000005741,0,0,0,0,0,0,0,'Wheeler'),
(1061003,61,15,16778,0,10803,266,7 | 0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,63,0,0,0,10803,266,7 | 0x10,2000005742,0,0,0,0,0,0,0,'Wheeler'),
(1061003,64,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,65,1,5,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,65,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,67,1,25,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,69,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,72,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,1.884956,'Middlecamp'),
(1061003,72,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,2.443461,'Wheeler'),
(1061003,74,0,0,0,10804,268,7 | 0x10,2000005743,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,74,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,74,15,16572,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,77,0,0,0,10804,268,7 | 0x10,2000005744,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,77,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,77,15,16776,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,80,0,0,0,10804,268,7 | 0x10,2000005745,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,80,16,6250,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,80,15,16779,0,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,83,1,71,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,83,16,6246,2,10804,268,7 | 0x10,0,0,0,0,0,0,0,0,'sound'),
(1061003,87,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,0.810652,'Middlecamp'),
(1061003,88,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.00565,'Wheeler'),
(1061003,89,1,2,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,89,1,21,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,89,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,89,1,21,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,93,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.13852,'Middlecamp'),
(1061003,93,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.77803,'Wheeler'),
(1061003,93,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,93,3,0,0,0,8,8,0,0,0,0,0,0,0,2.844887,''),
(1061003,94,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,95,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,95,1,4,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,95,16,6256,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,95,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,105,10,11875,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon 1st Mortar Team Target Dummy'),
(1061003,106,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,108,3,0,0,10805,272,0x10,0,0,0,0,-6065.903,-202.2976,424.3693,5,'Klemmy'),
(1061003,111,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,5.59936,'Klemmy'),
(1061003,113,1,3,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,115,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,116,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,4.0985,'Klemmy'),
(1061003,116,1,16,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,117,1,69,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,122,1,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,124,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,125,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,2.9147,'Middlecamp'),
(1061003,125,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,3.01942,'Wheeler'),
(1061003,125,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,126,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,128,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,130,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,130,15,5,0,11875,100,7,0,0,0,0,0,0,0,0,''),
(1061003,133,1,17,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,134,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,136,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,136,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,137,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,137,16,6252,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,138,1,4,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,141,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,146,10,11875,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon 2nd Mortar Team Target Dummy'),
(1061003,148,3,0,0,10805,272,0x10,0,0,0,0,-6071.88,-212.831,422.929,5,'Klemmy'),
(1061003,150,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,6.04228,'Klemmy'),
(1061003,151,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,152,1,66,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,152,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,154,3,0,0,10805,272,0x10,0,0,0,0,-6065.903,-202.2976,424.3693,5,'Klemmy'),
(1061003,154,28,8,0,10611,267,0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1061003,156,16,6254,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,157,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,4.0985,'Klemmy'),
(1061003,161,28,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1061003,162,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,163,1,25,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,163,16,6255,2,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,164,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,165,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,166,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,166,15,5,0,11875,100,7,0,0,0,0,0,0,0,0,''),
(1061003,167,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,4.54215,'Shorty'),
(1061003,167,25,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN OFF'),
(1061003,168,1,25,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,168,16,6251,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,169,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.13852,'Middlecamp'),
(1061003,169,3,0,0,10805,272,0x10,0,0,0,0,-6077.43,-213.2565,424.0502,5.59936,'Klemmy'),
(1061003,170,1,21,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,170,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.77803,'Wheeler'),
(1061003,171,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.844887,'Shorty'),
(1061003,171,1,4,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,178,10,12385,180000,0,0,0,0,0,0,0,-6076,-215,424,0,'summon Mortar Team Advanced Target Dummy'),
(1061003,180,3,0,0,10805,272,0x10,0,0,0,0,-6071.88,-212.831,422.929,5,'Klemmy'),
(1061003,182,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,6.04228,'Klemmy'),
(1061003,182,15,18655,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,182,1,25,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,183,1,11,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,183,1,15,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,183,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,184,16,6258,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,184,25,1,0,10805,272,0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(1061003,185,16,7316,2,0,0,0,0,0,0,0,0,0,0,0,'sound'),
(1061003,185,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,2.9147,'Middlecamp'),
(1061003,185,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,3.01942,'Wheeler'),
(1061003,185,3,0,0,10805,272,0x10,0,0,0,0,-6064.07,-209.851,421.98,6.10275,'Klemmy'),
(1061003,186,15,16786,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'), 
(1061003,186,15,5,0,12385,100,7,0,0,0,0,0,0,0,0,''),
(1061003,187,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,187,1,10,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,187,3,0,0,10805,272,0x10,0,0,0,0,-6061.97,-218.956,421.085,5.92054,'Klemmy'),
(1061003,190,3,0,0,10805,272,0x10,0,0,0,0,-6040.96,-221.929,414.921,5.92054,'Klemmy'),
(1061003,196,1,14,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,196,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,196,1,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,198,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,198,1,11,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,199,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,199,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,199,1,14,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy'),
(1061003,200,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1061003,200,1,11,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty'),
(1061003,201,1,11,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp'),
(1061003,201,1,11,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler'),
(1061003,202,3,0,0,10805,272,0x10,0,0,0,0,-6007.301758,-200.348206,406.777496,3.282219,'Klemmy'),
(1061003,202,3,0,0,10611,267,0x10,0,0,0,0,-6007.458984,-202.157593,407.447937,2,'Shorty'),
(1061003,203,3,0,0,0,0,0,0,0,0,0,-6009.25,-202.649994,406.982605,2,'angus'),
(1061003,203,3,0,0,10804,268,0x10,0,0,0,0,-6010.668151495,-199.434006,406.792480,5.532694,'Middlecamp'),
(1061003,203,3,0,0,10803,266,0x10,0,0,0,0,-6008.527832,-199.145203,406.687225,4.372177,'Wheeler'),
(1061003,212,3,0,0,10805,272,0x10,0,0,0,0,0,0,0,3.282219,'Klemmy'),
(1061003,216,3,0,0,10803,266,0x10,0,0,0,0,0,0,0,4.372177,'Wheeler'),
(1061003,228,3,0,0,0,0,0,0,0,0,0,0,0,0,1.58825,'angus'),
(1061003,219,3,0,0,10804,268,0x10,0,0,0,0,0,0,0,5.532694,'Middlecamp'),
(1061003,220,3,0,0,1243,265,0x10,0,0,0,0,0,0,0,0.03490658,'Hegnar'),
(1061003,220,3,0,0,10611,267,0x10,0,0,0,0,0,0,0,2.478368,'Shorty'),
(1061004,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Angus - unactive'),
(1061004,0,21,0,0,10805,272,0x10,0,0,0,0,0,0,0,0,'Klemmy - unactive'),
(1061004,0,21,0,0,10611,267,0x10,0,0,0,0,0,0,0,0,'Shorty - unactive'),
(1061004,1,21,0,0,10803,266,0x10,0,0,0,0,0,0,0,0,'Wheeler - unactive'),
(1061004,1,21,0,0,10804,268,0x10,0,0,0,0,0,0,0,0,'Middlecamp - unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005730 AND 2000005745;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, TYPE, LANGUAGE, emote, COMMENT) VALUES
(2000005730,'%s picks the orc target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,25,NULL),
(2000005731,'%s misses...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,6,NULL),
(2000005732,'%s takes a more careful aim...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6247,2,0,0,NULL),
(2000005733,'%s misses again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005734,'%s casually points at the orc target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,25,NULL),
(2000005735,'%s hits!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005736,'%s takes aim at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005737,'%s misses...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,15,NULL),
(2000005738,'%s takes aim at the bottles again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005739,'%s misses again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,18,NULL),
(2000005740,'%s quickly shoots the middle target dead center...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005741,'%s then takes aim at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005742,'%s only hits the side of the box!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005743,'%s quickly shoots the orc dummy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005744,'%s turns to the paper target...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005745,'%s shoots from the hip at the bottles...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);

-- ---------------
-- TBC UPDATES
-- ---------------

-- ---------------
-- Blade's Edge Mountains
-- ---------------  
-- Nekthar (unique npc)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 65517;
UPDATE creature_template SET MovementType = 2 WHERE entry = 18248;
DELETE FROM creature_movement_template WHERE entry = 18248;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(18248,1,2317.72,6030.27,142.57,0,1824801,0,0,0,0,0,0,0,3.58,0,0),
(18248,2,2307.82,6024.44,142.56,0,0,0,0,0,0,0,0,0,2.97,0,0),
(18248,3,2304.89,6025.77,142.96,0,0,0,0,0,0,0,0,0,2.44,0,0),
(18248,4,2304.89,6025.77,142.96,240000,1824802,0,0,0,0,0,0,0,5.63,0,0),
(18248,5,2306.93,6023.86,142.56,180000,0,0,0,0,0,0,0,0,5.46,0,0),
(18248,6,2317.38,6030.00,142.57,0,0,0,0,0,0,0,0,0,6.24,0,0),
(18248,7,2319.51,6029.16,142.62,0,0,0,0,0,0,0,0,0,5.50,0,0),
(18248,8,2319.51,6029.16,142.62,240000,1824803,0,0,0,0,0,0,0,3.88,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1824801, 1824802, 1824803); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1824801,0,0,0,0,0,0,0,2000005755,0,0,0,0,0,0,0,''),
(1824802,0,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(1824802,235,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1824803,0,0,0,0,0,0,0,2000005756,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000005755, 2000005756);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005755,'Grunting, %s turns away from the wanted poster, returning to his warm spot by the fire.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005756,'%s begins to read the wanted poster.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
-- Blackscale
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 75405;
UPDATE creature_template SET inhabittype = 5, MovementType = 2 WHERE entry = 21497;
DELETE FROM creature_template_addon WHERE entry = 21497;
INSERT INTO creature_template_addon VALUES (21497,0,50331648,1,16,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 21497;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(21497,1,3406.09,7124.062,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,2,3406.942,7123.539,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,3,3227.074,7124.377,198.2934,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,4,3197.353,7140.334,198.2934,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,5,3174.604,7175.172,198.2934,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,6,3206.274,7208.284,193.488,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,7,3226.79,7220.991,193.488,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,8,3255.189,7222.584,193.488,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,9,3300.442,7212.049,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,10,3313.925,7200.428,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,11,3343.274,7180.307,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,12,3375.993,7142.719,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,13,3417.932,7115.399,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,14,3443.302,7078.937,189.294,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,15,3423.431,7041.686,183.6277,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,16,3389.923,7007.877,183.6277,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,17,3346.986,6983.501,183.6277,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,18,3303.022,6983.777,183.6277,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,19,3281.571,7027.427,186.3498,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,20,3283.781,7064.684,186.4331,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,21,3281.752,7085.844,187.9886,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,22,3266.412,7105.881,192.0718,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,23,3242.702,7118.664,196.0163,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,24,3227.074,7124.377,198.2934,0,0,0,0,0,0,0,0,0,0,0,0),
(21497,25,3197.353,7140.334,198.2934,0,0,0,0,0,0,0,0,0,0,0,0);
-- Thunderlord Grunts
UPDATE creature_template SET SpeedWalk = 1 WHERE entry = 19449; -- source sniff

-- ---------------
-- Hellfire Peninsula 
-- ---------------
-- Stormwind Infantry -- CRITICAL update (pls stop changing it ... into wrong one taken from  The Stair of Destiny ones -- the have unique faction & flags)
UPDATE creature_template SET FactionAlliance = 1666, FactionHorde = 1666 WHERE entry = 16864;
-- Thrallmar Grunts - small event between them 
UPDATE creature SET MovementType = 2, spawndist = 0, equipment_id = 32 WHERE guid = 57541;
DELETE FROM creature_movement WHERE id = 57541;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(57541,1,-1323.67,2397.49,88.731,30000,0,0,0,0,0,0,0,0,6.19592,0,0),
(57541,2,-1323.67,2397.49,88.731,15000,1658001,0,0,0,0,0,0,0,6.19592,0,0),
(57541,3,-1323.67,2397.49,88.731,120000,0,0,0,0,0,0,0,0,6.19592,0,0),
(57541,4,-1323.67,2397.49,88.731,29000,1658002,0,0,0,0,0,0,0,6.19592,0,0),
(57541,5,-1323.67,2397.49,88.731,90000,0,0,0,0,0,0,0,0,6.19592,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1658001 AND 1658002;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1658001,0,31,16580,5,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1658001,1,3,0,0,0,0,0,0,0,0,0,0,0,0,4.88507,''),
(1658001,2,0,0,0,0,0,0,2000005757,0,0,0,0,0,0,0,''),
(1658001,6,3,0,0,16580,5,7,0,0,0,0,0,0,0,2.01994,'force buddy to move'),
(1658001,8,0,0,0,16580,5,7,2000005758,0,0,0,0,0,0,0,'force buddy to: say text'),
(1658001,12,3,0,0,16580,5,7,0,0,0,0,0,0,0,0.977384,'force buddy to move'),
(1658001,15,0,0,0,0,0,0,2000005759,0,0,0,0,0,0,0,''),
(1658002,0,31,16580,5,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1658002,1,3,0,0,0,0,0,0,0,0,0,0,0,0,4.88507,''),
(1658002,2,0,0,0,0,0,0,2000005760,0,0,0,0,0,0,0,''),
(1658002,6,3,0,0,16580,5,7,0,0,0,0,0,0,0,2.01994,'force buddy to move'),
(1658002,8,0,0,0,16580,5,7,2000005761,0,0,0,0,0,0,0,'force buddy to: say text'),
(1658002,12,3,0,0,16580,5,7,0,0,0,0,0,0,0,0.977384,'force buddy to move'),
(1658002,15,3,0,0,0,0,0,0,0,0,0,0,0,0,3.036873,''),
(1658002,18,0,0,0,0,0,0,2000005762,0,0,0,0,0,0,0,''),
(1658002,23,0,0,0,19561,5,7,2000005763,0,0,0,0,0,0,0,'force buddy to: say text'),
(1658002,26,0,0,0,0,0,0,2000005764,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005757 AND 2000005764;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES 
(2000005757,'I say we fire it. Cut the rope.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005758,'You cut the rope. You have the knife.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(2000005759,'Harumph! Coward.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005760,'You know, I think we can hit Honor Hold from here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005761,'If General Krakork found out, he\'d eat us alive. Don\'t.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,274,NULL),
(2000005762,'Ah! We can tell him Hagash stumbled into it and fired it accidentally!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,NULL),
(2000005763,'I\'m blind, you stupid sow-spawn, not deaf. Don\'t even think about it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005764,'%s sighs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);

-- The Stair of Destiny
-- Melgromm Highmountain - correct spawn point
UPDATE creature SET position_x = -231.061676, position_y = 1071.188843, position_z = 54.307827, orientation = 1.815549 WHERE guid = 68121;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18969; -- part of invasion event
DELETE FROM creature_linking_template WHERE entry = 18969;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18969,530,18972,1,100);
-- Justinius the Harbinger - correct spawn point
UPDATE creature SET position_x = -269.245178, position_y = 1070.407227, position_z = 54.307976, orientation = 1.280184 WHERE guid = 68118;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18966; -- part of invasion event
DELETE FROM creature_linking_template WHERE entry = 18966;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18966,530,18986,1,100);
-- Darnassian Archer - correct movementtype and spawn point
UPDATE creature SET position_x = -260.601807, position_y = 1086.432983, position_z = 46.229504, orientation = 1.647723, spawndist = 0, MovementType = 0 WHERE guid = 68113;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18965; -- part of invasion event
-- Darkspear Axe Thrower - correct movement + spawn point
UPDATE creature SET position_x = -232.330551, position_y = 1086.960449, position_z = 46.168358, orientation = 1.557389, spawndist = 0, MovementType = 0 WHERE guid = 68124;
UPDATE creature SET position_x = -237.338455, position_y = 1086.745361, position_z = 46.259800, orientation = 1.557392, spawndist = 0, MovementType = 0 WHERE guid = 68123;
UPDATE creature SET position_x = -241.972076, position_y = 1086.767822, position_z = 46.197281, orientation = 1.616290, spawndist = 0, MovementType = 0 WHERE guid = 68126;
UPDATE creature SET position_x = -241.920578, position_y = 1083.706787, position_z = 48.230595, orientation = 1.547184, spawndist = 0, MovementType = 0 WHERE guid = 68122;
UPDATE creature SET position_x = -237.257050, position_y = 1083.693237, position_z = 48.287407, orientation = 1.617870, spawndist = 0, MovementType = 0 WHERE guid = 68125;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18970; -- part of invasion event
-- Orgrimmar Grunt - correct movement + spawn point
UPDATE creature SET position_x = -230.824417, position_y = 1097.163208, position_z = 41.666698, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68018;
UPDATE creature SET position_x = -232.573883, position_y = 1094.351440, position_z = 41.666763, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68025;
UPDATE creature SET position_x = -237.510757, position_y = 1094.273560, position_z = 41.666801, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68017;
UPDATE creature SET position_x = -250.130417, position_y = 1094.096680, position_z = 41.666718, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68024;
UPDATE creature SET position_x = -240.407883, position_y = 1097.113403, position_z = 41.666744, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68021;
UPDATE creature SET position_x = -245.203537, position_y = 1096.973755, position_z = 41.666683, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68022;
UPDATE creature SET position_x = -249.263519, position_y = 1096.981689, position_z = 41.666683, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 68019;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18950; -- part of invasion event
-- Orgrimmar Shaman - correct movement + spawn point
UPDATE creature SET position_x = -246.153641, position_y = 1094.066406, position_z = 41.666718, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 86072;
UPDATE creature SET position_x = -241.246765, position_y = 1094.100708, position_z = 41.666718, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 86070;
UPDATE creature SET position_x = -235.832855, position_y = 1096.927490, position_z = 41.666744, orientation = 1.5708, spawndist = 0, MovementType = 0 WHERE guid = 86071;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18972; -- part of invasion event 
-- Ironforge Paladin - correct movement + spawn point
UPDATE creature SET position_x = -269.913788, position_y = 1093.962158, position_z = 41.884075, orientation = 1.5708, spawndist = 0, MovementType = 0  WHERE guid = 68262;
UPDATE creature SET position_x = -256.279510, position_y = 1094.162720, position_z = 41.666740, orientation = 1.5708, spawndist = 0, MovementType = 0  WHERE guid = 68264;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18986; -- part of invasion event
-- Stormwind Soldier - correct movement + spawn point
UPDATE creature SET position_x = -265.283081, position_y = 1094.119995, position_z = 41.675983, orientation = 1.5708, spawndist = 0, MovementType = 0  WHERE guid = 68010;
UPDATE creature SET position_x = -268.991180, position_y = 1097.273682, position_z = 41.796982, orientation = 1.5708, spawndist = 0, MovementType = 0  WHERE guid = 68011;
UPDATE creature SET spawntimesecs = 10 WHERE id = 18948; -- part of invasion event
-- Undercity Mage & Stormwind Mage
UPDATE creature SET spawntimesecs = 10 WHERE id = 18971; -- part of invasion event
UPDATE creature SET spawntimesecs = 10 WHERE id = 18949; -- part of invasion event
DELETE FROM creature_linking_template WHERE entry = 18971;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18971,530,18950,1,100);
DELETE FROM creature_linking_template WHERE entry = 18949;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(18949,530,18948,1,100);

-- Cursed Scarab - aura update -- sniff
DELETE FROM creature_template_addon WHERE entry = 21306;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_Flags, emote, moveflags, auras) VALUES
(21306,0,0,1,0,0,0,31309);
-- Magic Sucker Device Buttress - movement update
UPDATE creature_template SET MovementType = 0 WHERE entry = 22267;
-- Darkspear Axe Thrower - (Hellfire Peninsula) -- spell we had is casted by totem from another creature
UPDATE creature_template_addon SET auras = NULL WHERE entry = 18970;
-- Justinius the Harbinger - (Hellfire Peninsula) -- one of his spells should be used by ACID, not in auras
UPDATE creature_template_addon SET auras = NULL WHERE entry = 18966;
-- Orgrimmar Grunt - (Hellfire Peninsula) -- spell we had is casted by totem from another creature
UPDATE creature_addon SET auras = NULL WHERE guid IN (68024);
-- Infernal Target (Hyjal) - update
UPDATE creature_template SET InhabitType = 5 WHERE entry = 21075;
-- Infernal relay (hellfire)#1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68744;
DELETE FROM creature_movement WHERE id = 68744;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68744,1,-260.766,1093.41,41.6666,0,0,0,0,0,0,0,0,0,5.7179,0,0),
(68744,2,-259.812,1098.64,41.6666,0,0,0,0,0,0,0,0,0,6.0242,0,0),
(68744,3,-242.463,1099.17,41.6666,0,0,0,0,0,0,0,0,0,6.26846,0,0),
(68744,4,-242.316,1094.29,41.6666,0,0,0,0,0,0,0,0,0,4.72515,0,0);
-- Infernal relay (hellfire)#2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 68745;
DELETE FROM creature_movement WHERE id = 68745;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68745,1,-233.971,1094.96,41.668,0,0,0,0,0,0,0,0,0,4.65979,0,0),
(68745,2,-246.08,1094.57,41.668,0,0,0,0,0,0,0,0,0,2.00829,0,0),
(68745,3,-247.234,1097.84,41.668,0,0,0,0,0,0,0,0,0,0.171238,0,0),
(68745,4,-232.666,1097.36,41.668,0,0,0,0,0,0,0,0,0,6.23451,0,0);
-- event 12353
DELETE FROM dbscripts_on_event WHERE id = 12353;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(12353,1,31,21075,100,0,0,0,0,0,0,0,0,0,0,0,''),  -- let check if creature is alive
(12353,1,15,5,0,21075,74081,7 | 0x10,0,0,0,0,0,0,0,0,''),
(12353,2,15,5,0,21075,74082,7 | 0x10,0,0,0,0,0,0,0,0,''),
(12353,7,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Infernal Target (Hyjal) - update
UPDATE creature_template SET InhabitType = 5 WHERE entry = 21075;
UPDATE creature SET spawntimesecs = 15 WHERE guid IN (74081,74082);
DELETE FROM dbscripts_on_creature_death WHERE id = 21075;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21075,0,31,19215,100,0,0,0,0,0,0,0,0,0,0,0,''),  -- let check if creature is alive
(21075,1,15,33240,0,19215,68744,0x01 | 0x10,0,0,0,0,0,0,0,0,'cast 33240 on buddy'),
(21075,5,10,18946,0,19215,68744,7 | 0x10,0,0,0,0,0,0,0,0,'summon infernals');
-- ATTACKERS
DELETE FROM creature WHERE guid IN (67982,67985,67986,67988,68311,68313,67973,67978,67979,67974,67976,67989,67990);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('67982','18944','530','1','0','0','-255.686','1175.28','41.75','4.22167','300','5','0','90818','0','0','1'),
('67985','18944','530','1','0','0','-232.309','1186.1','42.094','4.6831','300','5','0','90818','0','0','1'),
('67986','18944','530','1','0','0','-242.304','1186.4','42.3041','4.6831','300','5','0','90818','0','0','1'),
('67988','18944','530','1','0','0','-262.298','1186.93','42','4.68338','300','5','0','90818','0','0','1'),
('68311','19005','530','1','0','0','-249.237','1243.63','29.6184','4.67896','300','5','0','143620','0','0','1'),
('68313','19005','530','1','0','0','-246.862','1270.4','24.7612','4.85129','300','5','0','143620','0','0','1'),
('67973','18944','530','1','0','0','-241.267','1242.61','29.5946','4.67917','300','5','0','90818','0','0','1'),
('67978','18944','530','1','0','0','-225.789','1229.56','32.6079','4.64066','300','5','0','90818','0','0','1'),
('67979','18944','530','1','0','0','-233.855','1228.78','31.8833','4.619','300','5','0','90818','0','0','1'),
('67974','18944','530','1','0','0','-241.202','1244.57','29.3197','4.67917','300','0','0','90818','0','0','0'),
('67976','18944','530','1','0','0','-239.13','1284.32','22.3405','4.86935','300','5','0','90818','0','0','1'),
('67989','18944','530','1','0','0','-238.826','1264','26.0006','4.85152','300','5','0','90818','0','0','1'),
('67990','18944','530','1','0','0','-232.851','1272.31','24.8109','4.85138','300','5','0','90818','0','0','1');


-- Infernal invasion outside Thrallmar 
-- Infernal Invaders (spawned by script) -- will reuse them for missing 'Infernal Rain'
DELETE FROM creature WHERE guid IN (86036,86027,86030,86029,86026,86035,86033,86032,86028,86034,86031);
-- Arcanist Torseldori
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 68780;
DELETE FROM creature_movement WHERE id = 68780;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19257; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 19257;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(19257,1,67.6326,2535.33,64.2527,15000,0,0,0,0,0,0,0,0,4.88692,0,0),
(19257,2,67.6326,2535.33,64.2527,120000,1925701,0,0,0,0,0,0,0,4.88692,0,0),
(19257,3,67.6326,2535.33,64.2527,90000,0,0,0,0,0,0,0,0,4.88692,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1925701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1925701,1,0,0,0,0,0,0,2000000344,0,0,0,0,0,0,0,''),
(1925701,4,32,0,0,18729,86036,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1925701,5,32,0,0,18729,86027,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1925701,5,32,0,0,18729,86030,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1925701,6,32,0,0,18729,86029,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause'),
(1925701,6,32,0,0,18729,86026,7 | 0x10,0,0,0,0,0,0,0,0,'wp unpause');
DELETE FROM db_script_string WHERE entry = 2000000344;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000344,'INCOMING! Do not let them through! Focus fire! NOW, NOW, NOW!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL);
-- Infernal Rain (Hellfire) - updates
UPDATE creature_template SET InhabitType = 5 WHERE entry = 18729;
-- static
-- #1
DELETE FROM creature WHERE guid = 86036;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86036,18729,530,1,0,0,89.28646,2505.569,86.47188,6.178465,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86036; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86036,1,89.28646,2505.569,86.47188,5000,1872901,0,0,0,0,0,0,0,6.178465,0,0),
(86036,2,89.28646,2505.569,86.47188,20000,1872902,0,0,0,0,0,0,0,6.178465,0,0);
-- #2
DELETE FROM creature WHERE guid = 86027;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86027,18729,530,1,0,0,63.1007,2499.168,85.77042,1.047198,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86027; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86027,1,63.1007,2499.168,85.77042,5000,1872901,0,0,0,0,0,0,0,1.047198,0,0),
(86027,2,63.1007,2499.168,85.77042,20000,1872903,0,0,0,0,0,0,0,1.047198,0,0);
-- #3
DELETE FROM creature WHERE guid = 86030;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86030,18729,530,1,0,0,70.1806,2506.25,86.6115,1.00688,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86030; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86030,1,70.1806,2506.25,86.6115,5000,1872901,0,0,0,0,0,0,0,1.00688,0,0),
(86030,2,70.1806,2506.25,86.6115,20000,1872904,0,0,0,0,0,0,0,1.00688,0,0);
-- #4
DELETE FROM creature WHERE guid = 86029;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86029,18729,530,1,0,0,83.25868,2499.573,85.56516,4.939282,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86029; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86029,1,83.25868,2499.573,85.56516,5000,1872901,0,0,0,0,0,0,0,4.939282,0,0),
(86029,2,83.25868,2499.573,85.56516,20000,1872905,0,0,0,0,0,0,0,4.939282,0,0);
-- #5
DELETE FROM creature WHERE guid = 86026;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86026,18729,530,1,0,0,56.76736,2507.18,87.81073,2.234021,120,0,0,4050,0,0,2);
DELETE FROM creature_movement WHERE id = 86026; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86026,1,56.76736,2507.18,87.81073,5000,1872901,0,0,0,0,0,0,0,2.234021,0,0),
(86026,2,56.76736,2507.18,87.81073,20000,1872902,0,0,0,0,0,0,0,2.234021,0,0);
-- dynamic
-- #1
DELETE FROM creature WHERE guid = 86035;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86035,18729,530,1,0,0,44.6528,2511.0911,60.56541,1.145,300,20,0,4050,0,0,1);
-- #2
DELETE FROM creature WHERE guid = 86033;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86033,18729,530,1,0,0,75.212,2507.39,58.0648,1.007,300,20,0,4050,0,0,1);
-- #3
DELETE FROM creature WHERE guid = 86032;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86032,18729,530,1,0,0,101.216263,2504.147705,57.459,1.57,300,20,0,4050,0,0,1);
-- #4
DELETE FROM creature WHERE guid = 86028;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86028,18729,530,1,0,0,73.2866,2513.66,59.6385,1.69012,300,20,0,4050,0,0,1);
-- #5
DELETE FROM creature WHERE guid = 86034;
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(86034,18729,530,1,0,0,68.9691,2511.56,59.1739,1.65085,300,20,0,4050,0,0,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1872901 AND 1872905; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1872901,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(1872902,0,31,18729,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1872902,1,15,32785,0,18729,86035,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,4,15,32785,0,18729,86033,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,8,15,32785,0,18729,86032,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,12,15,32785,0,18729,86028,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,16,15,32785,0,18729,86034,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872902,18,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1872903,0,31,18729,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1872903,15,15,32785,0,18729,86035,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,13,15,32785,0,18729,86033,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,9,15,32785,0,18729,86032,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,5,15,32785,0,18729,86028,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,1,15,32785,0,18729,86034,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872903,18,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1872904,0,31,18729,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1872904,16,15,32785,0,18729,86035,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,4,15,32785,0,18729,86033,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,1,15,32785,0,18729,86032,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,7,15,32785,0,18729,86028,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,11,15,32785,0,18729,86034,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872904,18,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1872905,0,31,18729,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(1872905,8,15,32785,0,18729,86035,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,1,15,32785,0,18729,86033,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,4,15,32785,0,18729,86032,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,15,15,32785,0,18729,86028,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,12,15,32785,0,18729,86034,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1872905,18,15,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Infernal Invader
UPDATE creature_template SET MovementType = 2 WHERE entry = 19259;
DELETE FROM creature_movement_template WHERE entry = 19259;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19259,1,67.6326,2535.33,64.2527,0,0,0,0,0,0,0,0,0,0,0,0);

-- Urtrak
UPDATE creature_template SET equipmentTemplateid = 1335 WHERE entry = 19862;

-- spells updates 
DELETE FROM spell_target_position WHERE id IN (16572,16767,16768,16772,16775,16776,16777,16778,16779,16780,16786,18634);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(16572,0,-6046.85,-207.329,418.304,0),
(16767,0,-6046.73,-207.159,417.267,0),
(16768,0,-6051.39,-206.749,418.159,0),
(16772,0,-6046.84,-204.535,416.897,0),
(16775,0,-6044.47,-205.783,417.267,0),
(16776,0,-6044.54,-205.562,417.663,0),
(16777,0,-6044.53,-202.912,416.756,0),
(16778,0,-6042.18,-204.949,416.336,0),
(16779,0,-6042.02,-204.134,416.894,0),
(16780,0,-6044.79,-196.959,419.19,0),
(16786,0,-6078.3,-211.89,424.197,0),
(18634,0,-6076,-215,424,0);
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 18655;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(18655,0,176557);
DELETE FROM dbscripts_on_spell WHERE id = 18655;
-- Hezrul Bloodmark  (unique npc)
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 13990;
UPDATE creature_template SET MovementType = 2 WHERE entry = 3396;
DELETE FROM creature_movement_template WHERE entry = 3396;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(3396,1,-1145.94,-2025.81,91.8127,0,0,0,0,0,0,0,0,0,0.535909,0,0),
(3396,2,-1109.87,-1999.72,86.8538,0,0,0,0,0,0,0,0,0,0.681207,0,0),
(3396,3,-1068.51,-1962.03,89.5984,0,0,0,0,0,0,0,0,0,0.783309,0,0),
(3396,4,-1050.84,-1946.6,92.1747,0,0,0,0,0,0,0,0,0,0.696915,0,0),
(3396,5,-1028.03,-1936.14,90.9833,0,0,0,0,0,0,0,0,0,0.147922,0,0),
(3396,6,-1000.62,-1947.3,91.8085,0,0,0,0,0,0,0,0,0,5.83578,0,0),
(3396,7,-989.498,-1965.68,91.4196,0,0,0,0,0,0,0,0,0,5.82007,0,0),
(3396,8,-975.014,-1989.78,90.3225,0,0,0,0,0,0,0,0,0,5.58052,0,0),
(3396,9,-947.048,-2017.7,85.9028,0,0,0,0,0,0,0,0,0,6.01485,0,0),
(3396,10,-913.754,-2023.23,84.7262,0,0,0,0,0,0,0,0,0,5.92295,0,0),
(3396,11,-896.969,-2035.67,81.834,0,0,0,0,0,0,0,0,0,5.23573,0,0),
(3396,12,-888.286,-2053.13,81.0782,10000,0,0,0,0,0,0,0,0,4.9687,0,0),
(3396,13,-881.169,-2066.39,82.8913,0,0,0,0,0,0,0,0,0,4.49276,0,0),
(3396,14,-896.265,-2085.67,86.5982,0,0,0,0,0,0,0,0,0,3.74663,0,0),
(3396,15,-919.527,-2102.03,86.1471,0,0,0,0,0,0,0,0,0,3.56128,0,0),
(3396,16,-938.943,-2103.84,85.2055,0,0,0,0,0,0,0,0,0,3.27697,0,0),
(3396,17,-977.091,-2112.99,82.8457,0,0,0,0,0,0,0,0,0,3.62647,0,0),
(3396,18,-996.166,-2129.23,84.339,0,0,0,0,0,0,0,0,0,4.14876,0,0),
(3396,19,-1028.04,-2167.41,84.444,0,0,0,0,0,0,0,0,0,4.02231,0,0),
(3396,20,-1052.2,-2223.07,84.7852,0,0,0,0,0,0,0,0,0,4.21473,0,0),
(3396,21,-1061.31,-2265.33,88.5924,0,0,0,0,0,0,0,0,0,4.13776,0,0),
(3396,22,-1079.04,-2292.94,91.0261,0,0,0,0,0,0,0,0,0,3.3288,0,0),
(3396,23,-1117.46,-2298.19,90.3452,0,0,0,0,0,0,0,0,0,2.68164,0,0),
(3396,24,-1137.66,-2278.07,86.5678,0,0,0,0,0,0,0,0,0,1.97006,0,0),
(3396,25,-1155.54,-2237.66,85.6437,0,0,0,0,0,0,0,0,0,1.86796,0,0),
(3396,26,-1191.45,-2177.87,90.7451,0,0,0,0,0,0,0,0,0,2.20961,0,0),
(3396,27,-1217.34,-2140.72,92.6515,0,0,0,0,0,0,0,0,0,2.0761,0,0),
(3396,28,-1228.96,-2114.76,92.2165,0,0,0,0,0,0,0,0,0,1.41793,0,0),
(3396,29,-1218.87,-2087.08,91.4139,0,0,0,0,0,0,0,0,0,1.11634,0,0),
(3396,30,-1202.37,-2062.52,93.2409,0,0,0,0,0,0,0,0,0,0.729139,0,0),
(3396,31,-1166.88,-2042.01,92.1803,0,0,0,0,0,0,0,0,0,0.552424,0,0);
-- Z cordinate for 2 guards
UPDATE creature SET position_z = 56.375851 WHERE guid = 125681;
UPDATE creature SET position_z = 56.381908 WHERE guid = 125682;

-- Xan'tish <Snake Vendor>
UPDATE creature SET MovementType = 2 WHERE guid = 3476;
DELETE FROM creature_movement WHERE id = 3476;
UPDATE creature_template SET MovementType = 2 WHERE entry = 8404; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 8404;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(8404,1,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,2,1543.59,-4162,40.09,0,0,0,0,0,0,0,0,0,5.25211,0,0),
(8404,3,1548.66,-4170.54,39.878,0,0,0,0,0,0,0,0,0,4.91597,0,0),
(8404,4,1549.69,-4182.55,40.6116,0,0,0,0,0,0,0,0,0,4.66386,0,0),
(8404,5,1544.56,-4204.67,42.5118,0,0,0,0,0,0,0,0,0,4.00727,0,0),
(8404,6,1541.77,-4209.83,42.6101,0,0,0,0,0,0,0,0,0,3.79758,0,0),
(8404,7,1535.78,-4211.44,42.2174,0,0,0,0,0,0,0,0,0,3.2745,0,0),
(8404,8,1526.93,-4211.96,41.3994,0,0,0,0,0,0,0,0,0,3.37893,0,0),
(8404,9,1518.28,-4215.47,40.5925,0,0,0,0,0,0,0,0,0,4.0206,0,0),
(8404,10,1531.65,-4212.06,41.8567,0,0,0,0,0,0,0,0,0,0.069258,0,0),
(8404,11,1545.37,-4209.67,42.9739,0,0,0,0,0,0,0,0,0,0.108934,0,0),
(8404,12,1575.68,-4208.31,43.6414,0,0,0,0,0,0,0,0,0,0.418381,0,0),
(8404,13,1581.05,-4205.01,42.1625,0,0,0,0,0,0,0,0,0,1.02235,0,0),
(8404,14,1582.41,-4200.09,41.6332,0,0,0,0,0,0,0,0,0,1.50145,0,0),
(8404,15,1577.94,-4182.56,39.0467,0,0,0,0,0,0,0,0,0,1.43312,0,0),
(8404,16,1577.95,-4166.1,36.4201,0,0,0,0,0,0,0,0,0,1.54979,0,0),
(8404,17,1581.97,-4153.16,34.3183,0,0,0,0,0,0,0,0,0,1.25527,0,0),
(8404,18,1585.48,-4145.38,33.4993,0,0,0,0,0,0,0,0,0,1.12567,0,0),
(8404,19,1604.63,-4121.54,29.6292,0,0,0,0,0,0,0,0,0,0.600243,0,0),
(8404,20,1629.61,-4107.81,29.851,0,0,0,0,0,0,0,0,0,0.388186,0,0),
(8404,21,1664.44,-4095.19,34.6566,0,0,0,0,0,0,0,0,0,0.333208,0,0),
(8404,22,1699.89,-4087.74,38.7137,0,0,0,0,0,0,0,0,0,0.187909,0,0),
(8404,23,1709.97,-4084.71,40.3433,0,0,0,0,0,0,0,0,0,0.466726,0,0),
(8404,24,1732.35,-4069.04,44.7046,0,0,0,0,0,0,0,0,0,0.729834,0,0),
(8404,25,1737.52,-4062.58,44.6143,0,0,0,0,0,0,0,0,0,1.11075,0,0),
(8404,26,1744.09,-4042.98,44.2706,0,0,0,0,0,0,0,0,0,1.21678,0,0),
(8404,27,1745.69,-4021.55,45.8444,0,0,0,0,0,0,0,0,0,1.62519,0,0),
(8404,28,1741.55,-3993.82,46.9013,0,0,0,0,0,0,0,0,0,1.73514,0,0),
(8404,29,1738.06,-3982.79,47.6495,0,0,0,0,0,0,0,0,0,2.00611,0,0),
(8404,30,1727.15,-3960.55,48.8178,0,0,0,0,0,0,0,0,0,2.05323,0,0),
(8404,31,1716.72,-3941.62,49.6707,0,0,0,0,0,0,0,0,0,2.22995,0,0),
(8404,32,1712.4,-3937.89,49.7629,0,0,0,0,0,0,0,0,0,2.72082,0,0),
(8404,33,1708.1,-3938.4,50.5155,0,0,0,0,0,0,0,0,0,4.8359,0,0),
(8404,34,1710.22,-3944.82,50.3793,0,0,0,0,0,0,0,0,0,5.29143,0,0),
(8404,35,1728.4,-3966.85,48.3152,0,0,0,0,0,0,0,0,0,5.31499,0,0),
(8404,36,1742.65,-3994.21,47.0203,0,0,0,0,0,0,0,0,0,4.766,0,0),
(8404,37,1745.13,-4021.8,45.8787,0,0,0,0,0,0,0,0,0,4.70709,0,0),
(8404,38,1743.39,-4040.77,44.4939,0,0,0,0,0,0,0,0,0,4.61677,0,0),
(8404,39,1738.21,-4058.59,44.3596,0,0,0,0,0,0,0,0,0,4.36545,0,0),
(8404,40,1733.13,-4070.14,44.4479,0,0,0,0,0,0,0,0,0,3.8895,0,0),
(8404,41,1711.87,-4085.21,40.1182,0,0,0,0,0,0,0,0,0,3.63026,0,0),
(8404,42,1691.56,-4091.83,37.8552,0,0,0,0,0,0,0,0,0,3.42998,0,0),
(8404,43,1655.99,-4099.88,33.3077,0,0,0,0,0,0,0,0,0,3.48104,0,0),
(8404,44,1629.32,-4109.29,29.6458,0,0,0,0,0,0,0,0,0,3.5635,0,0),
(8404,45,1608.56,-4119.25,29.608,0,0,0,0,0,0,0,0,0,3.78734,0,0),
(8404,46,1598.77,-4127.94,30.6464,0,0,0,0,0,0,0,0,0,3.97262,0,0),
(8404,47,1586.65,-4144.41,33.1692,0,0,0,0,0,0,0,0,0,4.09828,0,0),
(8404,48,1579.47,-4159.36,35.4998,0,0,0,0,0,0,0,0,0,4.37709,0,0),
(8404,49,1576.2,-4176.22,38.1288,0,0,0,0,0,0,0,0,0,4.6402,0,0),
(8404,50,1577.91,-4192.41,40.5278,0,0,0,0,0,0,0,0,0,4.84047,0,0),
(8404,51,1578.51,-4205.14,42.5391,0,0,0,0,0,0,0,0,0,4.34568,0,0),
(8404,52,1575.8,-4208.68,43.6726,0,0,0,0,0,0,0,0,0,3.43462,0,0),
(8404,53,1563.73,-4208.41,43.619,0,0,0,0,0,0,0,0,0,2.9948,0,0),
(8404,54,1547.49,-4208.4,43.0629,0,0,0,0,0,0,0,0,0,3.24612,0,0),
(8404,55,1527.74,-4212.69,41.5202,0,0,0,0,0,0,0,0,0,3.3443,0,0),
(8404,56,1516.82,-4216.26,40.4675,0,0,0,0,0,0,0,0,0,3.5917,0,0),
(8404,57,1539.83,-4210.73,42.5457,0,0,0,0,0,0,0,0,0,0.257683,0,0),
(8404,58,1543,-4207.62,42.651,0,0,0,0,0,0,0,0,0,1.09413,0,0),
(8404,59,1549.16,-4188.49,41.2349,0,0,0,0,0,0,0,0,0,1.36117,0,0),
(8404,60,1550.57,-4176.65,40.3661,0,0,0,0,0,0,0,0,0,1.58501,0,0),
(8404,61,1547.16,-4166.1,39.8663,0,0,0,0,0,0,0,0,0,2.02483,0,0),
(8404,62,1540.48,-4157.99,40.4082,0,0,0,0,0,0,0,0,0,2.63351,0,0),
(8404,63,1534.96,-4155.77,40.5611,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,64,1526.11,-4155.11,40.6068,0,0,0,0,0,0,0,0,0,3.23042,0,0),
(8404,65,1499.67,-4154.97,41.0505,0,0,0,0,0,0,0,0,0,2.90055,0,0),
(8404,66,1485.95,-4150.33,40.6375,0,0,0,0,0,0,0,0,0,2.8063,0,0),
(8404,67,1501.73,-4155.09,40.9359,0,0,0,0,0,0,0,0,0,6.13404,0,0),
(8404,68,1526.68,-4154.89,40.6253,0,0,0,0,0,0,0,0,0,0.0471973,0,0);
-- correct spawns for Xan'tish snakes
UPDATE creature SET position_x = 1524.162231, position_y = -4155.138184, position_z = 41.617981, orientation = 0.074240 WHERE guid = 3571;
UPDATE creature SET position_x = 1524.510864, position_y = -4153.323730, position_z = 41.792473, orientation = 0.023189 WHERE guid = 3560;
UPDATE creature SET position_x = 1524.748779, position_y = -4156.221680, position_z = 41.517262, orientation = 0.019262 WHERE guid = 3477;
-- link snakes with Xan'tish
DELETE FROM creature_linking WHERE guid IN (3571, 3560, 3477);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(3571, 3476, 656),
(3560, 3476, 656),
(3477, 3476, 656);

-- Razor Hill Grunt -- update
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid  IN (10278, 10279, 8424, 6388, 8417, 10276, 7668, 10274, 10427, 10273, 7669, 6385);
-- update for - Horizon Team
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35 WHERE entry IN (8394, 8387, 8388, 8389, 8478);
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 35901;

-- ---------------
-- Terrokar Forest
-- ---------------
-- Disciple of Sar'this
UPDATE creature SET position_x = -2436.649414, position_y = 4755.235840, position_z = 153.149536, orientation = 3.801337, MovementType = 1, spawndist = 3 WHERE guid = 96672;
-- Evoker of Sar'this
UPDATE creature SET MovementType = 1, spawndist = 3 WHERE guid = 96673;
-- Minion of Sar'this #1
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 30 WHERE guid = 96678;
DELETE FROM creature_movement WHERE id = 96678;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(96678,1,-2417.55,4579.64,160.559,0,0,0,0,0,0,0,0,0,2.58249,0,0),
(96678,2,-2421,4582.46,160.57,55000,0,0,0,0,0,0,0,0,2.442826,0,0),
(96678,3,-2419.45,4562.04,160.513,55000,0,0,0,0,0,0,0,0,1.58825,0,0);
-- Minion of Sar'this #2
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 30 WHERE guid = 96675;
DELETE FROM creature_movement WHERE id = 96675;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(96675,1,-2454.89,4756.45,153.078,0,0,0,0,0,0,0,0,0,4.75953,0,0),
(96675,2,-2453.51,4750.02,152.925,0,0,0,0,0,0,0,0,0,5.37214,0,0),
(96675,3,-2445.16,4740.12,153.145,0,0,0,0,0,0,0,0,0,0.68252,0,0),
(96675,4,-2440.57,4742.246,153.0419,55000,0,0,0,0,0,0,0,0,0.7664875,0,0),
(96675,5,-2460.71,4751.69,153.264,40000,0,0,0,0,0,0,0,0,2.57064,0,0),
(96675,6,-2452.38,4760.84,153.077,1000,0,0,0,0,0,0,0,0,5,0,0),
(96675,7,-2452.38,4760.84,153.077,55000,0,0,0,0,0,0,0,0,5.07762,0,0);
-- Minion of Sar'this #3
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 30 WHERE guid = 96677;
DELETE FROM creature_movement WHERE id = 96677;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(96677,1,-2428.81,4653.14,160.576,0,0,0,0,0,0,0,0,0,3.80064,0,0),
(96677,2,-2432.53,4653.75,160.579,0,0,0,0,0,0,0,0,0,2.3131,0,0),
(96677,3,-2433.45,4658.36,160.583,0,0,0,0,0,0,0,0,0,1.58817,0,0),
(96677,4,-2432.96,4662.07,161.015,25000,0,0,0,0,0,0,0,0,1.43266,0,0),
(96677,5,-2429.76,4658.01,160.542,0,0,0,0,0,0,0,0,0,5.57056,0,0),
(96677,6,-2422.99,4654.09,160.546,0,0,0,0,0,0,0,0,0,5.38835,0,0),
(96677,7,-2422.99,4654.09,160.546,25000,0,0,0,0,0,0,0,0,3.92437,0,0),
(96677,8,-2424.75,4658.27,160.435,0,0,0,0,0,0,0,0,0,2.0127,0,0),
(96677,9,-2424.75,4658.27,160.435,55000,0,0,0,0,0,0,0,0,4.10152,0,0);
-- Minion of Sar'this #4
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 30 WHERE guid = 96676;
DELETE FROM creature_movement WHERE id = 96676;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(96676,1,-2433.32,4709.17,174.657,0,0,0,0,0,0,0,0,0,1.3813,0,0),
(96676,2,-2435.92,4697.7,172.99,0,0,0,0,0,0,0,0,0,4.89674,0,0),
(96676,3,-2433.34,4691.46,175.11,0,0,0,0,0,0,0,0,0,5.30043,0,0),
(96676,4,-2429.18,4683.65,171.996,0,0,0,0,0,0,0,0,0,5.28079,0,0),
(96676,5,-2433.49,4691.62,175.14,0,0,0,0,0,0,0,0,0,2.00175,0,0),
(96676,6,-2435.69,4696.69,172.972,0,0,0,0,0,0,0,0,0,1.67503,0,0),
(96676,7,-2432.91,4709.57,174.699,0,0,0,0,0,0,0,0,0,1.10247,0,0);
 -- Sar'this
UPDATE creature SET spawntimesecs = 30 WHERE guid = 96674;
-- Blackwind Valley
-- Blackwind Sabercat #1 - Terrokar Forest
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 300 WHERE guid = 75893;
DELETE FROM creature_movement WHERE id = 75893;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75893,1,-3568.68,3139.93,315.043,0,0,0,0,0,0,0,0,0,1.03754,0,0),
(75893,2,-3561.34,3155.8,313.88,0,0,0,0,0,0,0,0,0,6.12849,0,0),
(75893,3,-3548.51,3150.03,316.169,0,0,0,0,0,0,0,0,0,5.82848,0,0),
(75893,4,-3539.39,3148.19,314.788,0,0,0,0,0,0,0,0,0,0.271785,0,0),
(75893,5,-3526.79,3156.78,315.301,0,0,0,0,0,0,0,0,0,0.633107,0,0),
(75893,6,-3522.28,3161.36,315.193,0,0,0,0,0,0,0,0,0,1.67376,0,0),
(75893,7,-3535.61,3149.71,314.956,0,0,0,0,0,0,0,0,0,3.60898,0,0),
(75893,8,-3545.89,3147.29,315.075,0,0,0,0,0,0,0,0,0,2.85186,0,0),
(75893,9,-3551.95,3152.98,316.087,0,0,0,0,0,0,0,0,0,2.75997,0,0),
(75893,10,-3561.65,3153.16,313.949,0,0,0,0,0,0,0,0,0,3.99922,0,0),
(75893,11,-3568.63,3140.61,315.063,0,0,0,0,0,0,0,0,0,4.2584,0,0),
(75893,12,-3582.56,3123.18,315.775,0,0,0,0,0,0,0,0,0,3.96388,0,0);
-- Blackwind Sabercat #2 - Terrokar Forest
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 300 WHERE guid = 75897;
DELETE FROM creature_movement WHERE id = 75897;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75897,1,-3527.22,3178.89,316.906,0,0,0,0,0,0,0,0,0,4.40628,0,0),
(75897,2,-3527.43,3171.43,317.063,0,0,0,0,0,0,0,0,0,5.03067,0,0),
(75897,3,-3522.81,3163.53,315.422,0,0,0,0,0,0,0,0,0,5.80039,0,0),
(75897,4,-3513.18,3160.94,316.212,0,0,0,0,0,0,0,0,0,5.85144,0,0),
(75897,5,-3506.16,3153.53,314.594,0,0,0,0,0,0,0,0,0,5.43126,0,0),
(75897,6,-3512.24,3160.96,316.164,0,0,0,0,0,0,0,0,0,2.69729,0,0),
(75897,7,-3523.14,3162.26,315.303,0,0,0,0,0,0,0,0,0,2.15114,0,0),
(75897,8,-3528.31,3175.28,317.054,0,0,0,0,0,0,0,0,0,1.52047,0,0),
(75897,9,-3521.96,3187.97,316.155,0,0,0,0,0,0,0,0,0,0.880319,0,0);
-- Blackwind Sabercat #3 - Terrokar Forest
UPDATE creature SET MovementType = 2, spawndist = 0, spawntimesecs = 300 WHERE guid = 75899;
DELETE FROM creature_movement WHERE id = 75899;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(75899,1,-3552.02,3222.28,307.958,0,0,0,0,0,0,0,0,0,1.13522,0,0),
(75899,2,-3556.98,3209.75,309.921,0,0,0,0,0,0,0,0,0,4.90434,0,0),
(75899,3,-3552.94,3200.65,310.456,0,0,0,0,0,0,0,0,0,5.47079,0,0),
(75899,4,-3532.93,3189.69,314.899,0,0,0,0,0,0,0,0,0,5.76209,0,0),
(75899,5,-3527.84,3183.87,316.585,0,0,0,0,0,0,0,0,0,5.38903,0,0),
(75899,6,-3537.02,3193.84,313.544,0,0,0,0,0,0,0,0,0,2.73203,0,0),
(75899,7,-3553.85,3201.59,310.415,0,0,0,0,0,0,0,0,0,2.33278,0,0),
(75899,8,-3557.78,3208.74,310.26,0,0,0,0,0,0,0,0,0,2.0304,0,0);

-- ---------------
-- Shadowmoon Valley
-- ---------------
-- Parshah
UPDATE creature SET MovementType = 2,spawndist = 0, position_x = -3493.565918, position_y = 2277.088867, position_z = 65.308090, orientation = 0.030873 WHERE guid = 86493;
DELETE FROM creature_movement WHERE id = 86493;
UPDATE creature_template SET MovementType = 2 WHERE entry = 22024; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 22024;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(22024,1,-3478.579346,2278.882080,64.302361,0,0,0,0,0,0,0,0,0,0.466765,0,0),
(22024,2,-3465.325684,2287.221191,63.411671,0,0,0,0,0,0,0,0,0,0.258635,0,0),
(22024,3,-3396.564209,2289.244141,62.684631,0,0,0,0,0,0,0,0,0,5.864808,0,0),
(22024,4,-3375.290771,2283.538574,62.290417,0,0,0,0,0,0,0,0,0,5.947275,0,0),
(22024,5,-3361.747803,2279.951172,61.927292,0,0,0,0,0,0,0,0,0,6.189178,0,0),
(22024,6,-3346.633301,2278.563232,61.327866,0,0,0,0,0,0,0,0,0,6.260647,0,0),
(22024,7,-3292.682129,2278.750732,60.609493,0,0,0,0,0,0,0,0,0,3.150710,0,0),
(22024,8,-3365.181514953,2279.233154,62.073700,0,0,0,0,0,0,0,0,0,2.842834,0,0),
(22024,9,-3387.639404,2287.592041,62.384487,0,0,0,0,0,0,0,0,0,2.897027,0,0),
(22024,10,-3399.742920,2289.471680,62.764309,0,0,0,0,0,0,0,0,0,3.195478,0,0),
(22024,11,-3457.017090,2289.383789,63.461361,0,0,0,0,0,0,0,0,0,3.329782,0,0),
(22024,12,-3465.547607,2286.994629,63.416016,0,0,0,0,0,0,0,0,0,3.699704,0,0),
(22024,13,-3476.516113,2280.523438,64.138481,0,0,0,0,0,0,0,0,0,3.412248,0,0),
(22024,14,-3494.457031,2277.872803,65.361969,0,0,0,0,0,0,0,0,0,0.162269,0,0);
-- Asghar
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 77174;
DELETE FROM creature_movement WHERE id = 77174;
UPDATE creature_template SET MovementType =  2 WHERE entry = 22025; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 22025;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(22025,1,-3049.036133,2036.842285,96.739182,0,0,0,0,0,0,0,0,0,2.817042,0,0),
(22025,2,-3058.744629,2037.585327,97.092674,0,0,0,0,0,0,0,0,0,3.336977,0,0),
(22025,3,-3071.713135,2031.485596,97.815742,0,0,0,0,0,0,0,0,0,4.013990,0,0),
(22025,4,-3081.469727,2022.889160,98.105179,0,0,0,0,0,0,0,0,0,4.536279,0,0),
(22025,5,-3080.402588,2018.211914,98.422974,0,0,0,0,0,0,0,0,0,5.480384,0,0),
(22025,6,-3068.684082,2011.325928,99.106552,0,0,0,0,0,0,0,0,0,5.335082,0,0),
(22025,7,-3063.356689,2002.529175,99.861031,0,0,0,0,0,0,0,0,0,5.642959,0,0),
(22025,8,-3052.373291,1999.890747,99.074417,0,0,0,0,0,0,0,0,0,0.158519,0,0),
(22025,9,-3035.000244,2000.165161,98.867294,0,0,0,0,0,0,0,0,0,0.244915,0,0),
(22025,10,-3018.298340,2007.633057,96.970322,0,0,0,0,0,0,0,0,0,1.408090,0,0),
(22025,11,-3016.291992,2040.855103,97.399490,0,0,0,0,0,0,0,0,0,2.276726,0,0);
-- Vilewing Chimaera - all in Shadowmoon Valley
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84611;
DELETE FROM creature_movement WHERE id = 84611;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(84611,1,-3611.368896,2570.267822,92.870674,0,0,0,0,0,0,0,0,0,4.254952,0,0),
(84611,2,-3630.266113,2532.113037,96.435936,0,0,0,0,0,0,0,0,0,4.499214,0,0),
(84611,3,-3634.825928,2513.903076,98.418976,0,0,0,0,0,0,0,0,0,5.275965,0,0),
(84611,4,-3616.698975,2497.175049,97.650505,0,0,0,0,0,0,0,0,0,0.062476,0,0),
(84611,5,-3595.418701,2510.969238,96.382004,0,0,0,0,0,0,0,0,0,0.829474,0,0),
(84611,6,-3561.813721,2564.877441,94.100075,0,0,0,0,0,0,0,0,0,0.783920,0,0),
(84611,7,-3537.115479,2599.250000,91.225388,0,0,0,0,0,0,0,0,0,0.685018,0,0),
(84611,8,-3502.466553,2623.799561,90.497231,0,0,0,0,0,0,0,0,0,0.841313,0,0),
(84611,9,-3496.200195,2632.959473,89.131004,0,0,0,0,0,0,0,0,0,1.340825,0,0),
(84611,10,-3490.854492,2650.525879,87.843399,0,0,0,0,0,0,0,0,0,2.481224,0,0),
(84611,11,-3512.658936,2658.270264,89.692291,0,0,0,0,0,0,0,0,0,3.257199,0,0),
(84611,12,-3577.532471,2654.373047,100.460381,0,0,0,0,0,0,0,0,0,3.490462,0,0),
(84611,13,-3604.017090,2651.037842,100.266129,0,0,0,0,0,0,0,0,0,4.036314,0,0),
(84611,14,-3609.280762,2644.101318,99.896446,0,0,0,0,0,0,0,0,0,4.494200,0,0),
(84611,15,-3611.192871,2629.415771,98.465744,0,0,0,0,0,0,0,0,0,4.912021,0,0),
(84611,16,-3605.423584,2598.311035,96.332291,0,0,0,0,0,0,0,0,0,4.553094,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84594;
DELETE FROM creature_movement WHERE id = 84594;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(84594,1,-3479.756104,2474.829346,88.543900,0,0,0,0,0,0,0,0,0,2.890358,0,0),
(84594,2,-3498.014648,2477.449463,91.230881,0,0,0,0,0,0,0,0,0,3.374949,0,0),
(84594,3,-3523.571777,2467.328857,93.498291,0,0,0,0,0,0,0,0,0,3.767648,0,0),
(84594,4,-3547.376465,2450.551758,94.055649,0,0,0,0,0,0,0,0,0,3.902736,0,0),
(84594,5,-3569.161621,2429.602051,93.961418,0,0,0,0,0,0,0,0,0,4.425026,0,0),
(84594,6,-3580.286377,2399.282227,98.739510,0,0,0,0,0,0,0,0,0,4.807513,0,0),
(84594,7,-3582.898438,2383.791016,98.279594,0,0,0,0,0,0,0,0,0,5.329798,0,0),
(84594,8,-3576.873535,2370.982666,97.645294,0,0,0,0,0,0,0,0,0,5.514363,0,0),
(84594,9,-3544.774902,2354.015381,96.193108,0,0,0,0,0,0,0,0,0,5.992659,0,0),
(84594,10,-3521.363281,2347.291992,93.371468,0,0,0,0,0,0,0,0,0,5.782953,0,0),
(84594,11,-3499.380371,2334.657715,92.363495,0,0,0,0,0,0,0,0,0,6.068839,0,0),
(84594,12,-3490.183838,2330.125244,90.856194,0,0,0,0,0,0,0,0,0,0.081747,0,0),
(84594,13,-3422.948730,2325.062500,83.290695,0,0,0,0,0,0,0,0,0,6.185073,0,0),
(84594,14,-3352.997070,2316.850098,81.628731,0,0,0,0,0,0,0,0,0,6.214918,0,0),
(84594,15,-3343.455078,2318.358887,81.070442,0,0,0,0,0,0,0,0,0,0.475226,0,0),
(84594,16,-3328.635254,2323.646484,79.221878,0,0,0,0,0,0,0,0,0,0.735979,0,0),
(84594,17,-3323.659668,2331.801514,78.822739,0,0,0,0,0,0,0,0,0,1.129464,0,0),
(84594,18,-3318.733643,2345.202393,86.191788,0,0,0,0,0,0,0,0,0,1.588922,0,0),
(84594,19,-3321.866455,2355.544922,84.351913,0,0,0,0,0,0,0,0,0,2.111997,0,0),
(84594,20,-3332.744385,2368.597412,83.368141,0,0,0,0,0,0,0,0,0,2.505482,0,0),
(84594,21,-3362.023926,2387.835693,83.317322,0,0,0,0,0,0,0,0,0,2.928812,0,0),
(84594,22,-3441.165771,2441.754639,83.496124,0,0,0,0,0,0,0,0,0,2.445008,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84604;
DELETE FROM creature_movement WHERE id = 84604;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(84604,1,-3568.393066,2094.914551,99.509041,0,0,0,0,0,0,0,0,0,0.758116,0,0),
(84604,2,-3535.186035,2121.237549,107.240570,0,0,0,0,0,0,0,0,0,0.597109,0,0),
(84604,3,-3503.775391,2134.711914,106.060936,0,0,0,0,0,0,0,0,0,0.365416,0,0),
(84604,4,-3479.045654,2145.290283,105.028473,0,0,0,0,0,0,0,0,0,0.797386,0,0),
(84604,5,-3466.312744,2158.332031,102.154213,0,0,0,0,0,0,0,0,0,1.089554,0,0),
(84604,6,-3461.535889,2167.612305,101.474884,0,0,0,0,0,0,0,0,0,1.428846,0,0),
(84604,7,-3460.081055,2185.936279,98.335114,0,0,0,0,0,0,0,0,0,1.852176,0,0),
(84604,8,-3463.661377,2204.143066,96.667252,0,0,0,0,0,0,0,0,0,2.146701,0,0),
(84604,9,-3477.720703,2215.609131,95.721527,0,0,0,0,0,0,0,0,0,2.715330,0,0),
(84604,10,-3503.435547,2219.384277,98.765785,0,0,0,0,0,0,0,0,0,3.021635,0,0),
(84604,11,-3569.082764,2225.493408,103.886703,0,0,0,0,0,0,0,0,0,3.041270,0,0),
(84604,12,-3597.047363,2240.290771,103.089676,0,0,0,0,0,0,0,0,0,2.625008,0,0),
(84604,13,-3619.251953,2252.681885,102.351051,0,0,0,0,0,0,0,0,0,2.760879,0,0),
(84604,14,-3642.340088,2261.852783,100.821877,0,0,0,0,0,0,0,0,0,2.976858,0,0),
(84604,15,-3656.918701,2265.074463,99.963013,0,0,0,0,0,0,0,0,0,3.518780,0,0),
(84604,16,-3669.834229,2260.116211,98.426155,0,0,0,0,0,0,0,0,0,4.002585,0,0),
(84604,17,-3676.170410,2251.518555,99.122208,0,0,0,0,0,0,0,0,0,4.423558,0,0),
(84604,18,-3678.451904,2241.665771,98.339600,0,0,0,0,0,0,0,0,0,4.762064,0,0),
(84604,19,-3678.794678,2227.610840,99.023911,0,0,0,0,0,0,0,0,0,5.072740,0,0),
(84604,20,-3657.098877,2194.000977,98.143913,0,0,0,0,0,0,0,0,0,5.316205,0,0),
(84604,21,-3592.785645,2132.563965,93.700569,0,0,0,0,0,0,0,0,0,5.465430,0,0),
(84604,22,-3557.131104,2091.484863,96.692253,0,0,0,0,0,0,0,0,0,5.225884,0,0),
(84604,23,-3542.425293,2068.708984,95.124931,0,0,0,0,0,0,0,0,0,5.175620,0,0),
(84604,24,-3536.474609,2049.688477,93.943924,0,0,0,0,0,0,0,0,0,4.761719,0,0),
(84604,25,-3532.868652,2026.630493,95.739479,0,0,0,0,0,0,0,0,0,4.495466,0,0),
(84604,26,-3544.803467,1992.785400,91.268188,0,0,0,0,0,0,0,0,0,3.816887,0,0),
(84604,27,-3558.677490,1984.245850,88.870110,0,0,0,0,0,0,0,0,0,3.300095,0,0),
(84604,28,-3573.098145,1991.675659,88.029671,0,0,0,0,0,0,0,0,0,2.315990,0,0),
(84604,29,-3581.221924,2005.634644,87.652313,0,0,0,0,0,0,0,0,0,1.660182,0,0),
(84604,30,-3576.673828,2052.976074,89.978523,0,0,0,0,0,0,0,0,0,1.397074,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84597;
DELETE FROM creature_movement WHERE id = 84597;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(84597,1,-3663.778320,1908.050659,90.424324,0,0,0,0,0,0,0,0,0,1.142601,0,0),
(84597,2,-3655.794922,1920.418701,90.113022,0,0,0,0,0,0,0,0,0,1.159879,0,0),
(84597,3,-3651.612793,1940.969482,89.817291,0,0,0,0,0,0,0,0,0,1.692379,0,0),
(84597,4,-3654.833740,1955.869019,93.180367,0,0,0,0,0,0,0,0,0,2.186395,0,0),
(84597,5,-3663.443848,1968.311890,97.033104,0,0,0,0,0,0,0,0,0,2.523331,0,0),
(84597,6,-3677.542969,1978.274414,102.428551,0,0,0,0,0,0,0,0,0,2.927811,0,0),
(84597,7,-3686.979736,1981.697876,107.489418,0,0,0,0,0,0,0,0,0,3.392766,0,0),
(84597,8,-3696.116699,1981.102661,108.098900,0,0,0,0,0,0,0,0,0,3.599327,0,0),
(84597,9,-3718.828369,1983.591797,110.482811,0,0,0,0,0,0,0,0,0,4.003021,0,0),
(84597,10,-3725.259766,1972.979126,113.532349,0,0,0,0,0,0,0,0,0,4.662757,0,0),
(84597,11,-3722.226318,1947.640015,110.894951,0,0,0,0,0,0,0,0,0,4.938426,0,0),
(84597,12,-3714.275391,1890.526245,104.869942,0,0,0,0,0,0,0,0,0,4.800981,0,0),
(84597,13,-3740.644775,1835.556274,108.447395,0,0,0,0,0,0,0,0,0,4.105906,0,0),
(84597,14,-3774.654541,1785.059204,109.778931,0,0,0,0,0,0,0,0,0,3.860865,0,0),
(84597,15,-3808.656494,1757.526001,108.409180,0,0,0,0,0,0,0,0,0,4.016375,0,0),
(84597,16,-3830.378662,1730.292236,107.971931,0,0,0,0,0,0,0,0,0,4.234715,0,0),
(84597,17,-3841.585938,1709.142212,104.855019,0,0,0,0,0,0,0,0,0,4.271623,0,0),
(84597,18,-3852.908936,1679.122314,105.057152,0,0,0,0,0,0,0,0,0,3.980240,0,0),
(84597,19,-3871.790771,1664.816406,107.177109,0,0,0,0,0,0,0,0,0,3.492508,0,0),
(84597,20,-3891.962158,1665.316772,107.706398,0,0,0,0,0,0,0,0,0,2.956078,0,0),
(84597,21,-3903.931641,1674.255371,113.028008,0,0,0,0,0,0,0,0,0,2.092139,0,0),
(84597,22,-3908.868164,1691.982910,114.310196,0,0,0,0,0,0,0,0,0,1.452039,0,0),
(84597,23,-3906.306152,1706.391724,116.011742,0,0,0,0,0,0,0,0,0,1.086045,0,0),
(84597,24,-3899.777588,1717.326416,116.721497,0,0,0,0,0,0,0,0,0,0.572394,0,0),
(84597,25,-3874.449463,1732.204956,116.096756,0,0,0,0,0,0,0,0,0,0.687848,0,0),
(84597,26,-3860.922119,1742.378052,114.307365,0,0,0,0,0,0,0,0,0,1.017715,0,0),
(84597,27,-3812.426025,1804.012085,109.053261,0,0,0,0,0,0,0,0,0,0.805657,0,0),
(84597,28,-3772.260254,1832.271973,105.076889,0,0,0,0,0,0,0,0,0,0.542549,0,0),
(84597,29,-3731.463867,1854.278442,98.095711,0,0,0,0,0,0,0,0,0,0.479717,0,0),
(84597,30,-3706.877197,1869.893311,93.587502,0,0,0,0,0,0,0,0,0,0.895978,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0, position_x = -3362.459,  position_y = 1708.176, position_z = 132.83, orientation = 5.005 WHERE guid = 84490;
DELETE FROM creature_movement WHERE id = 84490;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(84490,1,-3342.156982,1671.627441,129.943649,0,0,0,0,0,0,0,0,0,5.538446,0,0),
(84490,2,-3324.736328,1654.288574,120.786301,0,0,0,0,0,0,0,0,0,5.913859,0,0),
(84490,3,-3262.072021,1625.126953,104.115616,0,0,0,0,0,0,0,0,0,5.785053,0,0),
(84490,4,-3201.143799,1588.498413,87.529175,0,0,0,0,0,0,0,0,0,5.518804,0,0),
(84490,5,-3156.435791,1563.462524,68.962105,0,0,0,0,0,0,0,0,0,5.756783,0,0),
(84490,6,-3109.656250,1530.263428,51.191109,0,0,0,0,0,0,0,0,0,5.674315,0,0),
(84490,7,-3094.711914,1515.090820,53.628048,0,0,0,0,0,0,0,0,0,5.325596,0,0),
(84490,8,-3079.099121,1510.417480,55.686764,0,0,0,0,0,0,0,0,0,4.723984,0,0),
(84490,9,-3072.979736,1480.648804,50.728527,0,0,0,0,0,0,0,0,0,4.614022,0,0),
(84490,10,-3077.086182,1431.521484,40.709660,0,0,0,0,0,0,0,0,0,4.487575,0,0),
(84490,11,-3092.359375,1397.288208,30.094070,0,0,0,0,0,0,0,0,0,3.591435,0,0),
(84490,12,-3152.199463,1410.376587,59.037113,0,0,0,0,0,0,0,0,0,2.211491,0,0),
(84490,13,-3174.706543,1452.191895,64.890503,0,0,0,0,0,0,0,0,0,1.886336,0,0),
(84490,14,-3184.409912,1493.908447,71.753479,0,0,0,0,0,0,0,0,0,1.291004,0,0),
(84490,15,-3172.292480,1532.884766,78.821472,0,0,0,0,0,0,0,0,0,1.575321,0,0),
(84490,16,-3171.236328,1549.149292,80.446640,0,0,0,0,0,0,0,0,0,1.896550,0,0),
(84490,17,-3183.668151495,1572.144287,80.130974,0,0,0,0,0,0,0,0,0,2.439260,0,0),
(84490,18,-3210.317627,1594.073608,85.446411,0,0,0,0,0,0,0,0,0,2.781693,0,0),
(84490,19,-3261.544922,1629.859863,96.933914,0,0,0,0,0,0,0,0,0,1.774811,0,0),
(84490,20,-3274.597412,1674.894897,94.915573,0,0,0,0,0,0,0,0,0,2.121957,0,0),
(84490,21,-3290.819092,1710.060669,101.770279,0,0,0,0,0,0,0,0,0,2.309668,0,0),
(84490,22,-3315.459717,1740.153931,107.109711,0,0,0,0,0,0,0,0,0,2.573561,0,0),
(84490,23,-3334.167969,1743.577637,132.191345,0,0,0,0,0,0,0,0,0,3.695110,0,0),
(84490,24,-3355.311279,1730.864258,136.542542,0,0,0,0,0,0,0,0,0,4.532345,0,0),
(84490,25,-3362.459717,1708.176025,132.831116,0,0,0,0,0,0,0,0,0,5.005152,0,0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 84630;
DELETE FROM creature_movement WHERE id = 84630;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(84630,1,-3074.928223,1188.864624,38.727676,0,0,0,0,0,0,0,0,0,5.814104,0,0),
(84630,2,-3035.105713,1165.305664,35.012142,0,0,0,0,0,0,0,0,0,5.286310,0,0),
(84630,3,-3019.730469,1151.130737,35.135128,0,0,0,0,0,0,0,0,0,4.827647,0,0),
(84630,4,-3016.605713,1123.099609,34.198219,0,0,0,0,0,0,0,0,0,4.498572,0,0),
(84630,5,-3027.222900,1079.760742,30.075525,0,0,0,0,0,0,0,0,0,4.184415,0,0),
(84630,6,-3045.877686,1054.689087,24.740713,0,0,0,0,0,0,0,0,0,3.501118,0,0),
(84630,7,-3067.380127,1055.212036,26.689623,0,0,0,0,0,0,0,0,0,2.651317,0,0),
(84630,8,-3079.451172,1063.555176,30.561924,0,0,0,0,0,0,0,0,0,2.241338,0,0),
(84630,9,-3086.671143,1077.830688,33.812710,0,0,0,0,0,0,0,0,0,1.719048,0,0),
(84630,10,-3088.037109,1090.907715,40.121784,0,0,0,0,0,0,0,0,0,1.279225,0,0),
(84630,11,-3082.301025,1104.322876,40.654446,0,0,0,0,0,0,0,0,0,0.987056,0,0),
(84630,12,-3064.729736,1124.938965,40.342823,0,0,0,0,0,0,0,0,0,1.026326,0,0),
(84630,13,-3057.821289,1140.250488,41.165596,0,0,0,0,0,0,0,0,0,1.538406,0,0),
(84630,14,-3055.511475,1153.653320,40.470516,0,0,0,0,0,0,0,0,0,1.990010,0,0),
(84630,15,-3083.907959,1211.609741,33.558655,0,0,0,0,0,0,0,0,0,2.545286,0,0),
(84630,16,-3104.265625,1231.584839,37.455032,0,0,0,0,0,0,0,0,0,3.070718,0,0),
(84630,17,-3137.428711,1230.343384,48.755661,0,0,0,0,0,0,0,0,0,2.834312,0,0),
(84630,18,-3158.721436,1239.769775,53.397682,0,0,0,0,0,0,0,0,0,2.331657,0,0),
(84630,19,-3171.762451,1255.581543,54.391323,0,0,0,0,0,0,0,0,0,1.954666,0,0),
(84630,20,-3175.608154,1271.741333,51.287609,0,0,0,0,0,0,0,0,0,1.533693,0,0),
(84630,21,-3173.245605,1283.960083,49.660275,0,0,0,0,0,0,0,0,0,1.024755,0,0),
(84630,22,-3168.400635,1292.349365,48.071590,0,0,0,0,0,0,0,0,0,0.500109,0,0),
(84630,23,-3157.363281,1297.827148,44.843872,0,0,0,0,0,0,0,0,0,0.085418,0,0),
(84630,24,-3142.567139,1296.686890,40.344707,0,0,0,0,0,0,0,0,0,5.897367,0,0),
(84630,25,-3124.683838,1284.346191,37.574924,0,0,0,0,0,0,0,0,0,5.437119,0,0),
(84630,26,-3110.239746,1268.306030,34.933510,0,0,0,0,0,0,0,0,0,5.225066,0,0),
(84630,27,-3097.649170,1231.279907,39.947163,0,0,0,0,0,0,0,0,0,5.419842,0,0);
-- Coilskar point
-- Coilskar Siren - update
UPDATE creature SET position_x = -2993.461426, position_y = 1601.787354, position_z = 58.337994, orientation = 4.515264 WHERE guid = 84756;
-- Coilskar Defender - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 19762;
-- Coilskar Waterkeeper
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 70812;
DELETE FROM creature_movement WHERE id = 70812;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70812,1,-2898.153320,1686.593872,59.577206,0,0,0,0,0,0,0,0,0,1.630491,0,0),
(70812,2,-2895.214844,1671.085083,57.874622,0,0,0,0,0,0,0,0,0,4.431222,0,0),
(70812,3,-2898.215820,1664.947754,57.592976,0,0,0,0,0,0,0,0,0,3.800551,0,0),
(70812,4,-2905.862061,1659.551636,58.135105,0,0,0,0,0,0,0,0,0,3.575928,0,0),
(70812,5,-2929.096191,1649.143921,56.422482,0,0,0,0,0,0,0,0,0,3.769922,0,0),
(70812,6,-2916.629883,1654.797852,57.280041,0,0,0,0,0,0,0,0,0,0.363647,0,0),
(70812,7,-2905.561035,1660.645264,57.957443,0,0,0,0,0,0,0,0,0,0.503448,0,0),
(70812,8,-2897.399658,1667.853027,57.933395,0,0,0,0,0,0,0,0,0,1.079145,0,0);




-- Coilskar Cistern
-- Domesticated Felboar - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21195;
-- Coilskar Muckwatcher #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70809;
DELETE FROM creature_movement WHERE id = 70809;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70809,1,-2852.866455,1255.128296,6.961742,0,0,0,0,0,0,0,0,0,4.962936,0,0),
(70809,2,-2840.698242,1245.456787,6.808123,0,0,0,0,0,0,0,0,0,5.648589,0,0),
(70809,3,-2853.377930,1253.613037,6.896011,0,0,0,0,0,0,0,0,0,1.968212,0,0),
(70809,4,-2853.498291,1265.237427,6.831838,0,0,0,0,0,0,0,0,0,1.202449,0,0),
(70809,5,-2844.452393,1277.688721,7.263540,0,0,0,0,0,0,0,0,0,1.277848,0,0),
(70809,6,-2844.499023,1286.847168,7.576293,0,0,0,0,0,0,0,0,0,2.012195,0,0),
(70809,7,-2851.521729,1296.286377,6.807400,0,0,0,0,0,0,0,0,0,2.706488,0,0),
(70809,8,-2879.308105,1305.236206,5.525154,0,0,0,0,0,0,0,0,0,2.593390,0,0),
(70809,9,-2895.635254,1310.304810,6.691669,0,0,0,0,0,0,0,0,0,2.852572,0,0),
(70809,10,-2911.896729,1316.411987,6.315593,0,0,0,0,0,0,0,0,0,2.746543,0,0),
(70809,11,-2880.525391,1304.876587,5.370248,0,0,0,0,0,0,0,0,0,5.931331,0,0),
(70809,12,-2876.302246,1303.851807,6.388385,0,0,0,0,0,0,0,0,0,6.005943,0,0),
(70809,13,-2853.456543,1297.450928,6.807506,0,0,0,0,0,0,0,0,0,5.577900,0,0),
(70809,14,-2845.330078,1287.647217,7.376515,0,0,0,0,0,0,0,0,0,4.960579,0,0),
(70809,15,-2842.592285,1279.801392,7.943965,0,0,0,0,0,0,0,0,0,4.457927,0,0),
(70809,16,-2844.919922,1273.738525,7.368398,0,0,0,0,0,0,0,0,0,3.979623,0,0),
(70809,17,-2849.865723,1268.152710,7.507886,0,0,0,0,0,0,0,0,0,4.135918,0,0),
(70809,18,-2852.459229,1259.204468,7.028551,0,0,0,0,0,0,0,0,0,4.524688,0,0);
-- Coilskar Muckwatcher #2
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 70808;
DELETE FROM creature_movement WHERE id = 70808;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70808,1,-2809.513916,1358.351440,37.421818,0,0,0,0,0,0,0,0,0,4.777214,0,0),
(70808,2,-2807.756836,1345.417358,36.643299,0,0,0,0,0,0,0,0,0,5.127497,0,0),
(70808,3,-2801.977295,1334.782837,35.369717,0,0,0,0,0,0,0,0,0,5.542971,0,0),
(70808,4,-2790.252930,1326.803833,33.724636,0,0,0,0,0,0,0,0,0,5.998498,0,0),
(70808,5,-2781.893555,1324.964600,33.585182,0,0,0,0,0,0,0,0,0,0.263515,0,0),
(70808,6,-2775.221436,1327.681152,33.736526,0,0,0,0,0,0,0,0,0,0.787375,0,0),
(70808,7,-2770.930420,1335.768311,34.076717,0,0,0,0,0,0,0,0,0,1.353648,0,0),
(70808,8,-2768.316650,1352.887573,34.706768,0,0,0,0,0,0,0,0,0,1.638747,0,0),
(70808,9,-2769.591064,1365.682739,36.162888,0,0,0,0,0,0,0,0,0,1.881436,0,0),
(70808,10,-2776.399658,1375.486694,37.072037,0,0,0,0,0,0,0,0,0,2.507398,0,0),
(70808,11,-2786.434082,1380.662354,37.805660,0,0,0,0,0,0,0,0,0,3.070529,0,0),
(70808,12,-2797.033203,1379.113647,38.019535,0,0,0,0,0,0,0,0,0,3.598316,0,0),
(70808,13,-2804.693359,1370.212280,37.794846,0,0,0,0,0,0,0,0,0,4.290251,0,0);
-- Captured water Spirit - update
UPDATE creature SET position_x = -2708.877930, position_y = 1239.098022, position_z = 38.192089, orientation = 3.089233 WHERE guid = 86808;
UPDATE creature SET position_x = -2711.530029, position_y = 1230.921997, position_z = 37.322121, orientation = 2.548181 WHERE guid = 86806;
UPDATE creature SET position_x = -2713.188965, position_y = 1221.688965, position_z = 38.143211, orientation = 2.094395 WHERE guid = 86801;
UPDATE creature SET position_x = -2729.854004, position_y = 1215.225952, position_z = 48.214142, orientation = 1.570796 WHERE guid = 86800;
UPDATE creature SET position_x = -2721.247070, position_y = 1216.489990, position_z = 41.778198, orientation = 1.797689 WHERE guid = 86807;
UPDATE creature_template SET FactionAlliance = 7, FactionHorde = 7, UnitFlags = 33024, InhabitType = 5 WHERE entry = 21029;
DELETE FROM creature_template_addon WHERE entry = 21029;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(21029,0,0,1,0,0,0,35929);
-- Keeper of the Cistern
UPDATE creature_template SET FactionAlliance = 1826, FactionHorde = 1826 WHERE entry = 20795;
UPDATE creature SET position_x = -2593.757813, position_y = 1384.134766, position_z = 44.286011, orientation = 0.561506, spawntimesecs = 300 WHERE guid = 86872;
DELETE FROM dbscripts_on_creature_death WHERE id = 20795;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20795,0,31,21027,25,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(20795,1,29,2,0x02,21027,25,0x04,0,0,0,0,0,0,0,0,''),
(20795,1,3,0,0,21027,25,0x04,0,0,0,0,-2638.89,1358.96,35.9607,0,''),
(20795,10,14,35921,0,21027,50,0x04,0,0,0,0,0,0,0,0,''),
(20795,14,0,0,0,21027,50,0x04,2000005766,0,0,0,0,0,0,0,''),
(20795,16,29,2,0x01,21027,50,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005766;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005766,'Thank you, kind soul. You have freed me from the watery prison of Coilskar but many more are being held prisoner nearby. Will you assist me in freeing them as well?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
-- Enraged Fire Spirit - all in Shadowmoon Valley
-- Enraged Fire Spirit - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21061;
UPDATE creature SET position_x = -3682.017090, position_y = 1735.518799, position_z = 39.628796, orientation = 0.131099, spawndist = 5, MovementType = 1 WHERE guid = 74024;
UPDATE creature SET position_x = -3764.947998, position_y = 1646.007690, position_z = 39.719563, orientation = 2.949425 WHERE guid = 74023;
UPDATE creature SET position_x = -3817.987061, position_y = 1470.743042, position_z = 44.122883, orientation = 5.707718 WHERE guid = 74019;
UPDATE creature SET position_x = -3694.663574, position_y = 1647.987671, position_z = 39.881718, orientation = 1.053506 WHERE guid = 74032;
-- Enraged Fire Spirit #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74012;
DELETE FROM creature_movement WHERE id = 74012;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74012,1,-3846.195068,1363.642212,40.851978,0,0,0,0,0,0,0,0,0,1.273996,0,0),
(74012,2,-3841.328125,1378.156372,39.785717,0,0,0,0,0,0,0,0,0,1.556739,0,0),
(74012,3,-3839.727051,1389.478027,39.423538,0,0,0,0,0,0,0,0,0,1.769581,0,0),
(74012,4,-3841.834717,1403.790405,39.791061,0,0,0,0,0,0,0,0,0,1.757015,0,0),
(74012,5,-3844.524414,1416.042236,40.086765,0,0,0,0,0,0,0,0,0,1.768795,0,0),
(74012,6,-3841.644775,1395.771484,39.422878,0,0,0,0,0,0,0,0,0,4.800430,0,0),
(74012,7,-3842.135254,1378.813965,39.827480,0,0,0,0,0,0,0,0,0,4.419513,0,0),
(74012,8,-3846.776855,1349.218994,40.616627,0,0,0,0,0,0,0,0,0,4.816137,0,0),
(74012,9,-3848.199463,1327.060669,39.424561,0,0,0,0,0,0,0,0,0,4.275786,0,0),
(74012,10,-3864.122314,1307.699463,39.640980,0,0,0,0,0,0,0,0,0,4.192537,0,0),
(74012,11,-3873.697998,1291.151733,39.888130,0,0,0,0,0,0,0,0,0,4.276571,0,0),
(74012,12,-3890.034424,1260.608154,39.967388,0,0,0,0,0,0,0,0,0,4.311911,0,0),
(74012,13,-3870.437012,1290.671387,39.437202,0,0,0,0,0,0,0,0,0,1.052508,0,0),
(74012,14,-3858.252686,1327.987671,41.851032,0,0,0,0,0,0,0,0,0,1.284201,0,0);
-- Enraged Fire Spirit #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74010;
DELETE FROM creature_movement WHERE id = 74010;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74010,1,-3838.326172,1339.890869,39.679127,0,0,0,0,0,0,0,0,0,2.485078,0,0),
(74010,2,-3845.816162,1348.884033,40.481323,0,0,0,0,0,0,0,0,0,2.143429,0,0),
(74010,3,-3858.004883,1368.138916,40.105995,0,0,0,0,0,0,0,0,0,2.159137,0,0),
(74010,4,-3869.950439,1399.025024,39.393257,0,0,0,0,0,0,0,0,0,1.801781,0,0),
(74010,5,-3864.750732,1378.347778,40.433006,0,0,0,0,0,0,0,0,0,4.959087,0,0),
(74010,6,-3854.033691,1365.311523,40.322079,0,0,0,0,0,0,0,0,0,5.410688,0,0),
(74010,7,-3843.046631,1340.538818,39.898426,0,0,0,0,0,0,0,0,0,5.409903,0,0),
(74010,8,-3835.042969,1338.908813,39.922791,0,0,0,0,0,0,0,0,0,6.191370,0,0),
(74010,9,-3824.309814,1338.807861,40.255920,0,0,0,0,0,0,0,0,0,0.041700,0,0),
(74010,10,-3832.898682,1338.197266,40.190769,0,0,0,0,0,0,0,0,0,3.281500,0,0);
-- Enraged Fire Spirit #3
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74009;
DELETE FROM creature_movement WHERE id = 74009;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74009,1,-4054.979004,1329.807739,40.801224,0,0,0,0,0,0,0,0,0,0.687020,0,0),
(74009,2,-3997.711182,1363.837646,39.641212,0,0,0,0,0,0,0,0,0,0.330736,0,0),
(74009,3,-3983.934570,1369.024780,39.637756,0,0,0,0,0,0,0,0,0,0.358226,0,0),
(74009,4,-4017.294189,1357.051880,39.385571,0,0,0,0,0,0,0,0,0,3.853249,0,0),
(74009,5,-4028.906250,1349.502686,38.773022,0,0,0,0,0,0,0,0,0,3.707332,0,0);
-- Enraged Fire Spirit #4
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74025;
DELETE FROM creature_movement WHERE id = 74025;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74025,1,-3559.886230,1699.506836,39.850990,0,0,0,0,0,0,0,0,0,4.197893,0,0),
(74025,2,-3564.114258,1692.038818,39.721752,0,0,0,0,0,0,0,0,0,3.685816,0,0),
(74025,3,-3572.404297,1690.466309,39.712170,0,0,0,0,0,0,0,0,0,2.942044,0,0),
(74025,4,-3577.244141,1694.272339,39.849777,0,0,0,0,0,0,0,0,0,1.723106,0,0),
(74025,5,-3571.291748,1712.859497,39.663181,0,0,0,0,0,0,0,0,0,1.490628,0,0),
(74025,6,-3566.329346,1742.497681,39.574017,0,0,0,0,0,0,0,0,0,1.642210,0,0),
(74025,7,-3567.489258,1756.302734,39.214058,0,0,0,0,0,0,0,0,0,2.014488,0,0),
(74025,8,-3579.901611,1774.918151495,39.055790,0,0,0,0,0,0,0,0,0,1.888039,0,0),
(74025,9,-3581.278564,1785.543701,39.792999,0,0,0,0,0,0,0,0,0,1.124632,0,0),
(74025,10,-3577.571289,1790.180420,39.750645,0,0,0,0,0,0,0,0,0,0.605483,0,0),
(74025,11,-3570.380127,1791.656982,39.690193,0,0,0,0,0,0,0,0,0,0.076125,0,0),
(74025,12,-3558.971191,1791.784180,39.417141,0,0,0,0,0,0,0,0,0,5.860590,0,0),
(74025,13,-3576.411621,1790.503052,39.720089,0,0,0,0,0,0,0,0,0,4.204185,0,0),
(74025,14,-3581.364258,1781.916992,39.511158,0,0,0,0,0,0,0,0,0,4.819938,0,0),
(74025,15,-3579.156494,1769.406738,39.313389,0,0,0,0,0,0,0,0,0,5.178077,0,0),
(74025,16,-3567.903809,1748.264648,39.483555,0,0,0,0,0,0,0,0,0,4.885123,0,0),
(74025,17,-3559.448975,1704.930542,39.660011,0,0,0,0,0,0,0,0,0,4.936172,0,0);
-- Enraged Fire Spirit #5
UPDATE creature SET position_x = -3604.046631, position_y = 1797.811768, position_z = 39.656643, orientation = 2.412686, MovementType = 2, spawndist = 0 WHERE guid = 74031;
DELETE FROM creature_movement WHERE id = 74031;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74031,1,-3617.447266,1804.358521,39.764160,0,0,0,0,0,0,0,0,0,3.120324,0,0),
(74031,2,-3640.799805,1800.557129,39.625957,0,0,0,0,0,0,0,0,0,3.623765,0,0),
(74031,3,-3654.481445,1791.969360,39.621109,0,0,0,0,0,0,0,0,0,3.993687,0,0),
(74031,4,-3661.470215,1783.241943,39.642189,0,0,0,0,0,0,0,0,0,4.435863,0,0),
(74031,5,-3662.236328,1774.897949,39.622753,0,0,0,0,0,0,0,0,0,4.725671,0,0),
(74031,6,-3659.632080,1786.029175,39.624077,0,0,0,0,0,0,0,0,0,0.944764,0,0),
(74031,7,-3652.408936,1793.561035,39.620708,0,0,0,0,0,0,0,0,0,0.627464,0,0),
(74031,8,-3640.748291,1801.082642,39.620174,0,0,0,0,0,0,0,0,0,0.255970,0,0),
(74031,9,-3615.342285,1803.995483,39.752888,0,0,0,0,0,0,0,0,0,5.845651,0,0),
(74031,10,-3605.901123,1798.453369,39.718403,0,0,0,0,0,0,0,0,0,4.774671,0,0),
(74031,11,-3609.395508,1770.178711,39.777660,0,0,0,0,0,0,0,0,0,4.738232,0,0),
(74031,12,-3606.962646,1724.272461,39.604599,0,0,0,0,0,0,0,0,0,1.644137,0,0),
(74031,13,-3609.615723,1777.833374,39.785160,0,0,0,0,0,0,0,0,0,1.302489,0,0),
(74031,14,-3607.008301,1797.140625,39.798298,0,0,0,0,0,0,0,0,0,1.915099,0,0);
-- Enraged Fire Spirit #6
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74028;
DELETE FROM creature_movement WHERE id = 74028;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74028,1,-3467.010986,1727.532104,80.341957,0,0,0,0,0,0,0,0,0,3.871508,0,0),
(74028,2,-3476.325684,1717.079102,72.664696,0,0,0,0,0,0,0,0,0,4.053719,0,0),
(74028,3,-3486.913574,1701.502319,66.438675,0,0,0,0,0,0,0,0,0,4.279125,0,0),
(74028,4,-3489.807129,1693.493286,63.737061,0,0,0,0,0,0,0,0,0,4.542233,0,0),
(74028,5,-3491.357666,1683.330200,59.958420,0,0,0,0,0,0,0,0,0,4.286978,0,0),
(74028,6,-3492.780273,1678.502930,57.278198,0,0,0,0,0,0,0,0,0,4.432278,0,0),
(74028,7,-3498.009521,1669.833862,49.509212,0,0,0,0,0,0,0,0,0,3.726209,0,0),
(74028,8,-3501.708252,1666.100830,46.463818,0,0,0,0,0,0,0,0,0,3.937482,0,0),
(74028,9,-3504.910645,1663.563232,45.975742,0,0,0,0,0,0,0,0,0,3.796110,0,0),
(74028,10,-3500.515625,1668.427368,47.560513,0,0,0,0,0,0,0,0,0,0.866575,0,0),
(74028,11,-3493.849854,1675.918213,55.527012,0,0,0,0,0,0,0,0,0,1.165812,0,0),
(74028,12,-3490.829102,1689.250977,62.355751,0,0,0,0,0,0,0,0,0,1.432847,0,0),
(74028,13,-3487.906738,1699.827637,65.774681,0,0,0,0,0,0,0,0,0,1.030723,0,0),
(74028,14,-3482.273193,1707.706177,69.129219,0,0,0,0,0,0,0,0,0,0.953754,0,0),
(74028,15,-3475.362549,1718.226563,73.349861,0,0,0,0,0,0,0,0,0,0.949827,0,0),
(74028,16,-3467.111816,1727.616821,80.312614,0,0,0,0,0,0,0,0,0,0.396907,0,0),
(74028,17,-3458.540527,1729.605835,83.453857,0,0,0,0,0,0,0,0,0,0.648234,0,0),
(74028,18,-3448.852051,1737.152466,91.521782,0,0,0,0,0,0,0,0,0,0.714993,0,0),
(74028,19,-3439.660156,1742.241333,96.386360,0,0,0,0,0,0,0,0,0,0.491155,0,0),
(74028,20,-3431.528076,1747.294434,99.761780,0,0,0,0,0,0,0,0,0,0.573622,0,0),
(74028,21,-3438.066406,1743.678101,97.230766,0,0,0,0,0,0,0,0,0,3.723068,0,0),
(74028,22,-3447.634766,1736.637695,91.812401,0,0,0,0,0,0,0,0,0,3.742703,0,0),
(74028,23,-3461.307617,1730.620728,82.665756,0,0,0,0,0,0,0,0,0,3.672016,0,0);
-- Enraged Fire Spirit #7
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74029;
DELETE FROM creature_movement WHERE id = 74029;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74029,1,-3386.534668,1680.418823,99.950859,0,0,0,0,0,0,0,0,0,2.329757,0,0),
(74029,2,-3394.987305,1689.722900,99.826988,0,0,0,0,0,0,0,0,0,1.894646,0,0),
(74029,3,-3393.533203,1700.587646,101.722290,0,0,0,0,0,0,0,0,0,1.481527,0,0),
(74029,4,-3390.240967,1722.795532,100.836090,0,0,0,0,0,0,0,0,0,1.430476,0,0),
(74029,5,-3393.843750,1699.974243,101.758476,0,0,0,0,0,0,0,0,0,4.583844,0,0),
(74029,6,-3392.999512,1686.690674,99.501984,0,0,0,0,0,0,0,0,0,5.781574,0,0),
(74029,7,-3385.755127,1679.740601,99.771248,0,0,0,0,0,0,0,0,0,5.697533,0,0),
(74029,8,-3377.450439,1675.936279,98.378250,0,0,0,0,0,0,0,0,0,5.889953,0,0),
(74029,9,-3361.713867,1670.050415,94.663925,0,0,0,0,0,0,0,0,0,5.640195,0,0),
(74029,10,-3356.403320,1663.421875,90.909996,0,0,0,0,0,0,0,0,0,5.018948,0,0),
(74029,11,-3355.299316,1658.171631,87.426849,0,0,0,0,0,0,0,0,0,4.829906,0,0),
(74029,12,-3355.264648,1651.613525,82.771057,0,0,0,0,0,0,0,0,0,4.376731,0,0),
(74029,13,-3362.166748,1638.422241,74.643501,0,0,0,0,0,0,0,0,0,4.203946,0,0),
(74029,14,-3365.688477,1627.690430,68.810814,0,0,0,0,0,0,0,0,0,4.747435,0,0),
(74029,15,-3362.734375,1619.184448,61.100243,0,0,0,0,0,0,0,0,0,4.800838,0,0),
(74029,16,-3362.980225,1607.159790,51.606964,0,0,0,0,0,0,0,0,0,4.663400,0,0),
(74029,17,-3363.577637,1615.618286,57.098583,0,0,0,0,0,0,0,0,0,1.806119,0,0),
(74029,18,-3365.995850,1625.432251,66.795067,0,0,0,0,0,0,0,0,0,1.374150,0,0),
(74029,19,-3360.840332,1639.688965,75.360352,0,0,0,0,0,0,0,0,0,1.158165,0,0),
(74029,20,-3355.079102,1652.479248,83.419128,0,0,0,0,0,0,0,0,0,1.411195,0,0),
(74029,21,-3355.262939,1662.151001,90.080475,0,0,0,0,0,0,0,0,0,1.998674,0,0),
(74029,22,-3361.813721,1670.348022,94.783272,0,0,0,0,0,0,0,0,0,2.583795,0,0),
(74029,23,-3377.158691,1675.288208,98.324844,0,0,0,0,0,0,0,0,0,2.841412,0,0);
-- Enraged Earth Spirit - all in Shadowmoon Valley
-- Enraged Earth Spirit - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21050;
UPDATE creature SET position_x = -3462.146484, position_y  = 1890.386475, position_z  = 97.566963, orientation  = 0.289832 WHERE guid  = 73942;
-- Enraged Earth Spirit #1
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73931;
DELETE FROM creature_movement WHERE id = 73931;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(73931,1,-3794.498047,1526.695557,45.176956,0,0,0,0,0,0,0,0,0,5.035007,0,0),
(73931,2,-3792.602783,1509.832764,45.747349,0,0,0,0,0,0,0,0,0,4.389412,0,0),
(73931,3,-3798.208496,1502.605469,45.404530,0,0,0,0,0,0,0,0,0,3.830997,0,0),
(73931,4,-3817.259766,1496.327026,43.122253,0,0,0,0,0,0,0,0,0,3.304780,0,0),
(73931,5,-3841.421387,1496.972412,41.975342,0,0,0,0,0,0,0,0,0,2.740079,0,0),
(73931,6,-3850.301025,1500.382935,43.176193,0,0,0,0,0,0,0,0,0,2.174592,0,0),
(73931,7,-3852.324707,1512.101196,41.858387,0,0,0,0,0,0,0,0,0,1.484227,0,0),
(73931,8,-3848.501465,1524.372192,42.171787,0,0,0,0,0,0,0,0,0,1.455952,0,0),
(73931,9,-3845.266113,1537.631592,42.359135,0,0,0,0,0,0,0,0,0,0.728673,0,0),
(73931,10,-3827.659180,1546.432129,42.009449,0,0,0,0,0,0,0,0,0,6.025600,0,0),
(73931,11,-3822.120605,1541.400513,41.787140,0,0,0,0,0,0,0,0,0,5.379313,0,0),
(73931,12,-3818.873291,1532.519653,42.919800,0,0,0,0,0,0,0,0,0,5.965170,0,0),
(73931,13,-3798.249756,1529.823364,45.416763,0,0,0,0,0,0,0,0,0,5.463177,0,0);
-- Enraged Earth Spirit #2
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 73937;
DELETE FROM creature_movement WHERE id = 73937;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(73937,1,-3634.544922,1741.793823,41.031586,0,0,0,0,0,0,0,0,0,5.441656,0,0),
(73937,2,-3624.219971,1732.875488,40.907177,0,0,0,0,0,0,0,0,0,5.121830,0,0),
(73937,3,-3617.871826,1714.129150,41.219341,0,0,0,0,0,0,0,0,0,0.200886,0,0),
(73937,4,-3603.287598,1712.727417,40.641975,0,0,0,0,0,0,0,0,0,0.297955,0,0),
(73937,5,-3593.356689,1717.871460,41.077122,0,0,0,0,0,0,0,0,0,0.892501,0,0),
(73937,6,-3587.038818,1736.520752,40.755508,0,0,0,0,0,0,0,0,0,1.161881,0,0),
(73937,7,-3595.257080,1716.999878,41.045315,0,0,0,0,0,0,0,0,0,3.874647,0,0),
(73937,8,-3604.956299,1714.014404,40.480831,0,0,0,0,0,0,0,0,0,3.247899,0,0),
(73937,9,-3616.226807,1714.981812,41.132874,0,0,0,0,0,0,0,0,0,2.453861,0,0),
(73937,10,-3622.335693,1721.973755,40.113445,0,0,0,0,0,0,0,0,0,2.017515,0,0),
(73937,11,-3625.314453,1733.013184,40.996578,0,0,0,0,0,0,0,0,0,2.032264,0,0),
(73937,12,-3629.303955,1736.014160,41.091080,0,0,0,0,0,0,0,0,0,2.291445,0,0),
(73937,13,-3635.101074,1746.716431,40.783840,0,0,0,0,0,0,0,0,0,1.454998,0,0);
-- Spawn of Uvuros - Shadowmoon Valley
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 74142;
DELETE FROM creature_movement WHERE id = 74142;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74142,1,-3836.615967,1471.822754,42.491615,0,0,0,0,0,0,0,0,0,0.657228,0,0),
(74142,2,-3790.704834,1508.232178,45.722668,0,0,0,0,0,0,0,0,0,0.526559,0,0),
(74142,3,-3722.587158,1543.971680,46.979603,0,0,0,0,0,0,0,0,0,0.366338,0,0),
(74142,4,-3655.047363,1575.366455,47.831264,0,0,0,0,0,0,0,0,0,0.217113,0,0),
(74142,5,-3591.681885,1588.392456,47.257187,0,0,0,0,0,0,0,0,0,0.070243,0,0),
(74142,6,-3494.604736,1587.539063,46.016644,0,0,0,0,0,0,0,0,0,6.102097,0,0),
(74142,7,-3444.952393,1587.447144,46.376995,0,0,0,0,0,0,0,0,0,5.870036,0,0),
(74142,8,-3406.115479,1533.522583,49.494617,0,0,0,0,0,0,0,0,0,5.555443,0,0),
(74142,9,-3384.124756,1517.093994,51.845646,0,0,0,0,0,0,0,0,0,0.381238,0,0),
(74142,10,-3369.890869,1527.722290,50.266872,0,0,0,0,0,0,0,0,0,1.692849,0,0),
(74142,11,-3424.217041,1584.742676,46.729050,0,0,0,0,0,0,0,0,0,2.698162,0,0),
(74142,12,-3492.859619,1618.743042,43.864006,0,0,0,0,0,0,0,0,0,2.957348,0,0),
(74142,13,-3555.144287,1645.891235,41.967567,0,0,0,0,0,0,0,0,0,2.812050,0,0),
(74142,14,-3590.355957,1643.216064,42.256214,0,0,0,0,0,0,0,0,0,3.613157,0,0),
(74142,15,-3637.770020,1599.436768,46.530117,0,0,0,0,0,0,0,0,0,3.670267,0,0),
(74142,16,-3757.973389,1582.008667,43.218494,0,0,0,0,0,0,0,0,0,3.260838,0,0),
(74142,17,-3814.898193,1578.625610,39.404610,0,0,0,0,0,0,0,0,0,3.578923,0,0),
(74142,18,-3861.346191,1551.096802,39.934593,0,0,0,0,0,0,0,0,0,3.798838,0,0),
(74142,19,-3902.943115,1523.798218,42.188572,0,0,0,0,0,0,0,0,0,3.227068,0,0),
(74142,20,-3926.726563,1521.826294,39.677380,0,0,0,0,0,0,0,0,0,3.642544,0,0),
(74142,21,-3951.355469,1495.364136,41.658684,0,0,0,0,0,0,0,0,0,4.396522,0,0),
(74142,22,-3961.923584,1433.762329,39.641724,0,0,0,0,0,0,0,0,0,4.639206,0,0),
(74142,23,-3967.208740,1378.363159,42.167240,0,0,0,0,0,0,0,0,0,5.082951,0,0),
(74142,24,-3962.060303,1335.552490,40.948776,0,0,0,0,0,0,0,0,0,5.404960,0,0),
(74142,25,-3945.645752,1325.865234,39.607433,0,0,0,0,0,0,0,0,0,6.219103,0,0),
(74142,26,-3908.473145,1316.835205,40.037518,0,0,0,0,0,0,0,0,0,5.352029,0,0),
(74142,27,-3898.763428,1290.095947,39.670227,0,0,0,0,0,0,0,0,0,4.800683,0,0),
(74142,28,-3899.697998,1263.196289,40.556377,0,0,0,0,0,0,0,0,0,4.623972,0,0),
(74142,29,-3904.328369,1243.671997,41.759430,0,0,0,0,0,0,0,0,0,4.732358,0,0),
(74142,30,-3900.948486,1229.754150,43.092270,0,0,0,0,0,0,0,0,0,5.472199,0,0),
(74142,31,-3887.954102,1226.243774,44.205093,0,0,0,0,0,0,0,0,0,6.279587,0,0),
(74142,32,-3876.384277,1231.478516,44.407707,0,0,0,0,0,0,0,0,0,1.260108,0,0),
(74142,33,-3875.338623,1246.452271,43.624580,0,0,0,0,0,0,0,0,0,1.628625,0,0),
(74142,34,-3876.195068,1264.435425,39.631760,0,0,0,0,0,0,0,0,0,1.612917,0,0),
(74142,35,-3871.827393,1286.183960,39.417225,0,0,0,0,0,0,0,0,0,0.968891,0,0),
(74142,36,-3859.672119,1329.700073,42.168983,0,0,0,0,0,0,0,0,0,1.432276,0,0),
(74142,37,-3859.108643,1375.978271,40.757214,0,0,0,0,0,0,0,0,0,1.554013,0,0),
(74142,38,-3854.397217,1429.916260,41.105610,0,0,0,0,0,0,0,0,0,1.440130,0,0);
-- Felboar - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21878;
UPDATE creature SET position_x = -3543.934326, position_y = 2412.462158, position_z = 75.652390, orientation = 3.159382 WHERE guid = 86886;
UPDATE creature SET position_x = -3556.121338, position_y = 2390.312744, position_z = 79.543335, orientation = 1.816334 WHERE guid = 86889;
UPDATE creature SET position_x = -3538.031982, position_y = 2348.650879, position_z = 79.510910, orientation = 3.811249 WHERE guid = 86894;
UPDATE creature SET position_x = -3506.653564, position_y = 2392.436035, position_z = 71.904778, orientation = 6.159566 WHERE guid = 76597;
UPDATE creature SET position_x = -3315.004639, position_y = 2322.925537, position_z = 61.888039, orientation = 5.546986 WHERE guid = 86884;
-- Felfire Diemetradon - updates
UPDATE creature_template SET InhabitType = 1 WHERE entry = 21408;
-- Dreadwarden - Warden's Cage
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 70666;
DELETE FROM creature_movement WHERE id = 70666;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70666,1,-3724.751221,1023.834473,67.822807,0,0,0,0,0,0,0,0,0,3.319563,0,0),
(70666,2,-3742.801025,1017.387939,70.967796,0,0,0,0,0,0,0,0,0,3.768025,0,0),
(70666,3,-3760.412598,1004.154602,74.549637,0,0,0,0,0,0,0,0,0,3.980083,0,0),
(70666,4,-3781.968506,973.388245,79.405861,0,0,0,0,0,0,0,0,0,3.928245,0,0),
(70666,5,-3750.698975,1010.474182,72.538391,0,0,0,0,0,0,0,0,0,0.528256,0,0),
(70666,6,-3725.746094,1023.661499,67.857620,0,0,0,0,0,0,0,0,0,0.759163,0,0),
(70666,7,-3704.059326,1048.485107,67.742035,0,0,0,0,0,0,0,0,0,0.955513,0,0),
(70666,8,-3710.420410,1036.489746,68.067818,0,0,0,0,0,0,0,0,0,3.933740,0,0);

-- Lady Sinestra - event
-- Dragonmaw Enforcer - update 
UPDATE creature SET position_x = -5146.516113, position_y = 639.383606, position_z = 81.791901, orientation = 2.504820 WHERE guid = 52110; -- correct spawn point
UPDATE creature SET position_x = -5162.109863, position_y = 629.679016, position_z = 79.580055, orientation = 2.007457 WHERE guid = 52108; -- correct spawn point
-- Lady Sinestra - dragon form 
UPDATE creature_template SET InhabitType = 5, MovementType = 2 WHERE entry = 23283;
DELETE FROM creature_template_addon WHERE entry = 23283; -- let her fly
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(23283,0,50331648,1,16,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 23283;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(23283,1,-5157.33,639.52,85.1946,1000,2328301,0,0,0,0,0,0,0,2.21527,0,0),
(23283,2,-5169.544,650.3057,111.4463,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,3,-5181.662,667.6545,111.4463,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,4,-5195.687,680.8401,111.4463,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,5,-5225.382,701.7169,111.4463,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,6,-5258.488,726.2752,111.4463,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,7,-5281.199,739.957,111.4463,0,0,0,0,0,0,0,0,0,0,0,0),
(23283,8,-5281.199,739.957,111.4463,1000,2328303,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2328301,2328302,2328303);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2328301,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2328301,0,23,21401,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2328301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2328302,2,23,20577,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2328302,2,10,23284,0,0,0,0,0,0,0,0,-5174.463,653.561,74.50871,5.61422,'summon Lady Sinestra - humanoid form'),
(2328302,3,15,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328303,0,23,20577,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2328303,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2328303,1,15,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
 -- Lady Sinestra - event (creature guid part)
Delete FROM creature WHERE guid = 140704;
Delete FROM creature_movement WHERE id = 140704;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140704,23283,530,1,0,0,-5238.41,776.695,181.833,5.21307,600,0,0,151760,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140704,1,-5238.409,776.6948,181.833,0,2328301,0,0,0,0,0,0,0,5.21307,0,0),
(140704,2,-5238.002,775.7813,181.833,0,0,0,0,0,0,0,0,0,0,0,0),
(140704,3,-5245.779,722.9154,173.0642,0,0,0,0,0,0,0,0,0,0,0,0),
(140704,4,-5220.587,696.059,139.8698,0,0,0,0,0,0,0,0,0,0,0,0),
(140704,5,-5198.417,674.9192,95.42538,0,0,0,0,0,0,0,0,0,0,0,0),
(140704,6,-5182.404,660.5963,79.78647,3000,2328302,0,0,0,0,0,0,0,0,0,0);
-- Lady Sinestra - humanoid form
UPDATE creature_template SET MovementType = 2 WHERE entry = 23284; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 23284;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(23284,1,-5174.463,653.561,74.50871,2000,2328401,0,0,0,0,0,0,0,5.61422,0,0),
(23284,2,-5165.44,646.0718,76.92961,15000,2328402,0,0,0,0,0,0,0,5.5983,0,0),
(23284,3,-5151.85,630.924,81.2474,0,0,0,0,0,0,0,0,0,5.33569,0,0),
(23284,4,-5124.81,602.463,84.488,0,0,0,0,0,0,0,0,0,4.89014,0,0),
(23284,5,-5122.96,595.403,84.8122,0,0,0,0,0,0,0,0,0,5.64961,0,0),
(23284,6,-5121.1,593.849,84.7659,0,0,0,0,0,0,0,0,0,6.16012,0,0),
(23284,7,-5100.86,592.517,85.869,0,0,0,0,0,0,0,0,0,5.62761,0,0),
(23284,8,-5090.69,585.07,86.909,76000,2328403,0,0,0,0,0,0,0,5.49253,0,0),
(23284,9,-5100,592.709,85.9701,0,0,0,0,0,0,0,0,0,2.45623,0,0),
(23284,10,-5114.07,606.045,85.083,0,0,0,0,0,0,0,0,0,2.74212,0,0),
(23284,11,-5128.75,606.723,84.0949,0,0,0,0,0,0,0,0,0,2.3557,0,0),
(23284,12,-5139.37,616.387,82.8233,0,0,0,0,0,0,0,0,0,2.23962,0,0),
(23284,13,-5147.5,627.142,82.0156,0,0,0,0,0,0,0,0,0,2.21527,0,0),
(23284,14,-5157.33,639.52,79.1886,1000,2328404,0,0,0,0,0,0,0,2.21527,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2328401,2328402,2328403,2328404);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2328401,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2328401,4,31,23146,70,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2328401,1,3,0,700,23146,52110,7 | 0x10,0,0,0,0,-5152.22,637.5932,80.5629,2.504820,'force buddy to move'),
(2328401,1,3,0,700,23146,52108,7 | 0x10,0,0,0,0,-5161.051,630.9047,79.48904,2.007457,'force buddy to move'),
(2328401,2,3,0,700,23146,52110,7 | 0x10,0,0,0,0,-5155.424,635.3028,80.25078,2,'force buddy to move'),
(2328401,2,3,0,700,23146,52108,7 | 0x10,0,0,0,0,-5152.491,640.6303,80.31548,2,'force buddy to move'),
(2328401,4,3,0,700,23146,52110,7 | 0x10,0,0,0,0,0,0,0,2.504820,'force buddy to move'),
(2328401,4,3,0,700,23146,52108,7 | 0x10,0,0,0,0,0,0,0,2.007457,'force buddy to move'),
(2328402,0,31,23146,30,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2328402,1,0,0,0,0,0,0,2000005698,0,0,0,0,0,0,0,''),
(2328402,3,1,396,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328402,5,3,0,700,23146,52110,7 | 0x10,0,0,0,0,-5146.516113,639.383606,81.791901,2,'force buddy to move'),
(2328402,5,3,0,700,23146,52108,7 | 0x10,0,0,0,0,-5162.109863,629.679016,79.580055,2,'force buddy to move'),
(2328402,8,3,0,700,23146,52110,7 | 0x10,0,0,0,0,0,0,0,2.504820,'force buddy to move'),
(2328402,8,3,0,700,23146,52108,7 | 0x10,0,0,0,0,0,0,0,2.007457,'force buddy to move'),
(2328402,9,0,0,0,0,0,0,2000005699,0,0,0,0,0,0,0,''),
(2328402,13,0,0,0,0,0,0,2000005700,0,0,0,0,0,0,0,''),
(2328403,0,31,23139,10,0,0,0,-75000,0,0,0,0,0,0,0,''), -- let check if creature is alive 
(2328403,1,29,3,2,23139,20,7,0,0,0,0,0,0,0,0,'23139 - npc_flag removed'),
(2328403,4,0,0,0,0,0,0,2000005701,0,0,0,0,0,0,0,''),
(2328403,8,0,0,0,0,0,0,2000005702,0,0,0,0,0,0,0,''),
(2328403,12,0,0,0,23139,20,7,2000005703,0,0,0,0,0,0,0,'force buddy to: say text'),
(2328403,16,1,1,0,23139,20,7,0,0,0,0,0,0,0,0,'force buddy to: emote'),
(2328403,20,0,0,0,0,0,0,2000005704,0,0,0,0,0,0,0,''),
(2328403,28,0,0,0,23139,20,7,2000005705,0,0,0,0,0,0,0,'force buddy to: say text'),
(2328403,30,1,6,0,23139,20,7,0,0,0,0,0,0,0,0,'force buddy to: emote'),
(2328403,34,0,0,0,0,0,0,2000005706,0,0,0,0,0,0,0,''),
(2328403,37,0,0,0,0,0,0,2000005707,0,0,0,0,0,0,0,''),
(2328403,39,1,274,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328403,43,0,0,0,0,0,0,2000005708,0,0,0,0,0,0,0,''),
(2328403,46,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328403,51,0,0,0,23139,20,7,2000005709,0,0,0,0,0,0,0,'force buddy to: say text'),
(2328403,54,0,0,0,23139,20,7,2000005710,0,0,0,0,0,0,0,'force buddy to: say text'),
(2328403,58,1,2,0,23139,20,7,0,0,0,0,0,0,0,0,'force buddy to: emote'),
(2328403,62,0,0,0,0,0,0,2000005711,0,0,0,0,0,0,0,''),
(2328403,65,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328403,69,0,0,0,0,0,0,2000005712,0,0,0,0,0,0,0,''),
(2328403,71,29,3,1,23139,20,7,0,0,0,0,0,0,0,0,'23139 - npc_flag added'),
(2328403,74,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2328404,0,10,23283,0,0,0,0,0,0,0,0,-5157.33,639.52,85.1946,2.21527,'summon Lady Sinestra - dragon form'),
(2328404,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2328404,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005698 AND 2000005712;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005698,'Step aside lest I add you as another adornment to my armor. Your leader and I have matters to attend...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,397,NULL),
(2000005699,'%s smiles.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005700,'I thought you would see it my way...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,153,NULL),
(2000005701,'Overlord Mor\'ghor, I presume... A pleasure to finally make your acquaintance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,2,NULL),
(2000005702,'I am Lady Sinestra.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005703,'I will not drag this out any further than it needs, Lady Sinestra. You have bent my ear, now tell me what it is that you want from Dragonmaw.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005704,'You have no doubt heard about Nefarian\'s failures on Azeroth... While he has fallen, the experiments continue. My master... He continues the work that his progeny began.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005705,'The... The master? He lives?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,5,NULL),
(2000005706,'%s nods.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,273,NULL),
(2000005707,'You were once a chief lieutenant, Mor\'ghor. Your work in Grim Batol is not easily forgotten.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005708,'Now... We need the eggs that you recover. The Netherwing eggs. They are, after all, a product of the master. We will pay whatever price that you ask.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005709,'%s stammers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000005710,'Ye... Yes, yes... Of course. We need only the crystals and ore from this place. There is... We will need mounts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005711,'The master will be most pleased with this news. The Black Dragonflight will provide you all that you ask. You will be allowed to ride upon the backs of our drakes as needed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005712,'I thank you for your graciousness, Mor\'ghor. I must now take my leave.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
-- Nethermine Flayer
UPDATE creature SET position_x = -5133.281250, position_y = 143.919907, position_z = -12.059948, orientation = 3.1602, spawndist = 5, movementType = 1 WHERE guid = 48229;
UPDATE creature SET position_x = -5080.07, position_y = 331.384, position_z = 5.33698, orientation = 5.38985, spawndist = 5, movementType = 1 WHERE guid = 48234;
UPDATE creature SET position_x = -5054.73, position_y = 289.862, position_z = -8.25169, orientation = 0.673524, spawndist = 5, movementType = 1 WHERE guid = 48230;
UPDATE creature SET position_x = -5066.69, position_y = 281.725, position_z = -9.63928, orientation = 3.95257, spawndist = 5, movementType = 1 WHERE guid = 48233;
UPDATE creature SET position_x = -5038.34, position_y = 318.713, position_z = -3.53934, orientation = 4.12143, spawndist = 5, movementType = 1 WHERE guid = 48232;
UPDATE creature SET position_x = -5037.87, position_y = 351.615, position_z = 2.6555, orientation = 4.67906, spawndist = 5, movementType = 1 WHERE guid = 48231;
UPDATE creature SET position_x = -5064.150391, position_y = 155.636948, position_z = -11.828770, orientation = 5.346395, spawndist = 5, movementType = 1 WHERE guid = 48237;
UPDATE creature SET position_x = -5117.404297, position_y = 128.745499, position_z = -13.194, orientation = 1.5811, spawndist = 5, movementType = 1 WHERE guid = 48243;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 48242;
-- Murkblood Overseer
UPDATE creature SET position_x = -4979.738770, position_y = 161.614395, position_z = -15.508134, orientation = 2.670354 WHERE guid = 43919;
-- Nethermine Ravager
UPDATE creature SET position_x = -5106.44, position_y = 155.733, position_z = -10.613, orientation = 1.01959, spawndist = 5, movementType = 1 WHERE guid = 48253;
UPDATE creature SET position_x = -5093.55, position_y = 179.92, position_z = -8.47583, orientation = 2.5786, spawndist = 5, movementType = 1 WHERE guid = 48246;
UPDATE creature SET position_x = -5136.94, position_y = 147.682, position_z = -11.7786, orientation = 3.12053, spawndist = 5, movementType = 1 WHERE guid = 48245;
-- Mine Car
DELETE FROM creature_template_addon WHERE entry = 23289;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(23289,0,0,0,0,0,0,40684);
-- Crazed Murkblood Miner - correct spawn point and movement
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5248.768555, position_y = 221.875381, position_z = -13.072626, orientation = 2.955024 WHERE guid = 52019;
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5247.79, position_y = 211.694, position_z = -13.8962, orientation = 2.23737 WHERE guid = 52023;
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5222.98, position_y = 205.444, position_z = -12.7066, orientation = 5.3122 WHERE guid = 52022;
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5190.77, position_y = 155.717, position_z = -12.1798, orientation = 5.60202 WHERE guid = 48257;
UPDATE creature SET spawndist = 10, MovementType = 1, spawntimesecs = 300, position_x = -5174.98, position_y = 135.391, position_z = -12.2516, orientation = 1.54151 WHERE guid = 52024;
-- Tornaku - correct spawn point 
UPDATE creature SET position_x = -5133.719, position_y = 227.1979, position_z = -26.26821, orientation = 2.059489 WHERE guid = 40740;
UPDATE creature_template SET InhabitType = 5 WHERE entry = 23164;
-- Ronag the Slave Driver - update
DELETE FROM creature_template_addon WHERE entry = 23166;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(23166,0,8,0,0,0,0,NULL);
-- spell.40214 schould be active in Netherwing Mines and in Skyway.
DELETE FROM spell_area WHERE spell = 40214 AND area = 3965 AND quest_start = 11013;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES 
(40214,3965,11013,1,0,0,0,0,2,1); -- 3965 Netherwing Mines 
DELETE FROM spell_area WHERE spell = 40214 AND area = 3967 AND quest_start = 11013;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES 
(40214,3967,11013,1,0,0,0,0,2,1); -- 3967 Dragonmaw Skyway  
-- Dragonmaw Foreman - 1
UPDATE creature SET position_x = -5134.009766, position_y = 702.179016, position_z = 41.687000, orientation = 1.773743 WHERE guid = 40727;
-- Cleric of Karabor 
-- correct auras ( should be visible only with (Spectrecles)
DELETE FROM creature_template_addon WHERE entry = 21815;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(21815,0,0,0,0,0,0,'37497 37509');
DELETE FROM creature_addon WHERE guid BETWEEN 76347 AND 76376; -- invidual aruras are not needed 
UPDATE creature SET Spawndist = 5, MovementType = 1 WHERE id = 21815; -- the all do random movement
UPDATE creature SET position_x = -3804.760, position_y = 685.848, position_z = 5.1086 WHERE guid = 76363;
UPDATE creature SET position_x = -3759.218, position_y = 683.203, position_z = 7.2961 WHERE guid = 76364;
UPDATE creature SET position_x = -3836.664, position_y = 667.391, position_z = 2.8676 WHERE guid = 76368;
UPDATE creature SET position_x = -3762.867, position_y = 666.487, position_z = 6.6777 WHERE guid = 76373;

-- INFERNAL INVADERS - Shadowmoon Valley - FINALL UPDATE 
-- Invis Infernal Caster 
UPDATE creature_template SET MovementType = 0 WHERE entry = 21417;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 21417; -- for all of them
-- Infernal Attacker
UPDATE creature_template SET factionAlliance = 90, factionHorde = 90, MovementType = 1, unitFlags = 0x2020100 WHERE entry = 21419; -- correct from sniff (checked his spawn -- lot of sniffs shows while he is in combat) 
DELETE FROM dbscripts_on_creature_death WHERE id = 21419; -- creature must come back to his default model before spawn.
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21419,2,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(21419,10,23,20577,0,0,0,0x08,0,0,0,0,0,0,0,0,'temp model removed!');
-- spell -- must be casted!!
DELETE FROM dbscripts_on_spell WHERE id = 37277; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(37277,0,31,21419,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(37277,1,22,90,0x01 | 0x10 | 0x40 | 0x80,21419,30,0,0,0,0,0,0,0,0,0,'temp faction'),
(37277,2,23,17312,0,21419,30,0x08,0,0,0,0,0,0,0,0,'temp model'),
(37277,2,20,1,5,21419,30,2,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2141901 AND 2141904; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- event Horde ver. 
(2141901,1,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141901,3,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141902,4,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141902,6,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
-- event Aliance ver.
(2141903,1,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141903,3,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s'),
(2141904,4,31,21417,30,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(2141904,6,15,37277,0,21417,30,3 | 0x08,0,0,0,0,0,0,0,0,'cast 37277 b->s');
-- Defenders
UPDATE creature SET MovementType = 1, spawndist = 1 WHERE id = 21749; -- for all of them
UPDATE creature SET MovementType = 1, spawndist = 1 WHERE id = 21736; -- for all of them
-- Legion Hold - infernal launch - update 
-- WARLOCKs - part
UPDATE creature_movement SET waittime = 35000 WHERE id = 74601 AND point = 4; 
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2130201, 2130202, 2130203); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2130201,0,10,21316,53000,0,0,0,0,0,0,0,-3441.13,2974.6,171.87,6.24828,'summon infernal'),
(2130201,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2130202,0,31,21316,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2130202,1,15,36632,0,21316,5,1,0,0,0,0,0,0,0,0,''),
(2130202,5,14,16245,0,21316,5,0,0,0,0,0,0,0,0,0,''),
(2130202,6,20,2,0,21316,5,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(2130203,11,31,21316,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2130203,12,15,33346,0,21316,10,1 | 0x08,0,0,0,0,0,0,0,0,''),
(2130203,20,15,36656,0,21316,10,1 | 0x08,0,0,0,0,0,0,0,0,''),
(2130203,25,31,21348,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2130203,26,3,0,2300,21348,20,7,0,0,0,0,-3329.58,2934.13,300,0,'');
-- Deathforged Infernal - part
UPDATE creature SET spawntimesecs = 45 WHERE id = 21316; -- for all of them
UPDATE creature_movement_template SET waittime = 40000 WHERE entry = 21316 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2131601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2131601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Deathforged Infernal active'),
(2131601,3,31,20683,20,0,0,0,0,0,0,0,0,0,0,0,''), -- let him check if creature is alive
(2131601,6,22,114,0x01 | 0x08,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(2131601,8,15,33346,0,20683,10,0x08,0,0,0,0,0,0,0,0,'force buddy to cast 33346'),
(2131601,17,15,36656,0,20683,10,0x08,0,0,0,0,0,0,0,0,'force buddy to cast 36656'),
(2131601,19,10,21348,10000,0,0,0,0,0,0,0,-3411.01,2979.66,170.004,0,'summon invis'),
(2131601,20,15,36658,0,21348,7 | 0x08,0,0,0,0,0,0,0,0,0,'cast 36658 target-self'),
(2131601,21,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');

-- ---------------
-- Creature_movement(template) prepared for unnused colums drop
-- ---------------
-- creature_movement_template: 100% completed 
-- Jarven Thunderbrew
DELETE FROM creature_movement_template WHERE entry = 1373;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(1373,1,-5601.64,-541.38,392.42,0,0,0,0,0,0,0,0,0,0.5,0,0),
(1373,2,-5597.94,-542.04,392.42,0,0,0,0,0,0,0,0,0,5.5,0,0),
(1373,3,-5597.95,-548.43,395.48,0,0,0,0,0,0,0,0,0,4.7,0,0),
(1373,4,-5605.31,-549.33,399.09,0,0,0,0,0,0,0,0,0,3.1,0,0),
(1373,5,-5607.55,-546.63,399.09,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,6,-5597.52,-538.75,399.09,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,7,-5597.62,-530.24,399.65,0,0,0,0,0,0,0,0,0,3,0,0),
(1373,8,-5603.67,-529.91,399.65,20000,0,0,0,0,0,0,0,0,4.2,0,0),
(1373,9,-5603.67,-529.91,399.65,0,0,0,0,0,0,0,0,0,4.2,0,0),
(1373,10,-5597.62,-530.24,399.65,0,0,0,0,0,0,0,0,0,3,0,0),
(1373,11,-5597.52,-538.75,399.09,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,12,-5607.55,-546.63,399.09,0,0,0,0,0,0,0,0,0,1.5,0,0),
(1373,13,-5605.31,-549.33,399.09,0,0,0,0,0,0,0,0,0,3.1,0,0),
(1373,14,-5597.95,-548.43,395.48,0,0,0,0,0,0,0,0,0,4.7,0,0),
(1373,15,-5597.94,-542.04,392.42,0,0,0,0,0,0,0,0,0,5.5,0,0),
(1373,16,-5601.64,-541.38,392.42,1000,137301,0,0,0,0,0,0,0,0,0,0),
(1373,17,-5605.96,-544.451,392.43,0,0,0,0,0,0,0,0,0,0.5,0,0),
(1373,18,-5605.96,-544.451,392.43,2000,137302,0,0,0,0,0,0,0,0.977384,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (137301,137302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137301,0,0,0,0,0,0,0,2000000078,0,0,0,0,0,0,0,''),
(137302,0,0,0,0,0,0,0,2000000079,0,0,0,0,0,0,0,''),
(137302,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'1373 - npc_flag added'),
(137302,2,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'1373 - movement chenged to 0:idle');
-- Grimand Elmore
DELETE FROM creature_movement_template WHERE entry = 1416;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(1416,1,-8393.09,687.41,95.27,0,0,0,0,0,0,0,0,0,3.72,0,0),
(1416,2,-8400.51,681.85,95.96,0,0,0,0,0,0,0,0,0,5,0,0),
(1416,3,-8388.72,646.85,94.82,0,0,0,0,0,0,0,0,0,3.92,0,0),
(1416,4,-8422.25,618.12,95.46,10000,141601,0,0,0,0,0,0,0,3.2,0,0), 
(1416,5,-8421.99,617.93,95.45,9000,141602,0,0,0,0,0,0,0,5.34,0,0), 
(1416,6,-8388.72,646.85,94.82,0,0,0,0,0,0,0,0,0,1.98295,0,0),
(1416,7,-8400.51,681.85,95.96,0,0,0,0,0,0,0,0,0,0.798564,0,0),
(1416,8,-8393.09,687.41,95.27,0,0,0,0,0,0,0,0,0,6.03867,0,0),
(1416,9,-8387,685.202,95.356,0,0,0,0,0,0,0,0,0,2.47925,0,0),
(1416,10,-8387,685.202,95.356,2000,141603,0,0,0,0,0,0,0,2.47925,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (141601,141602,141603); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(141601,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141601,9,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(141602,9,0,0,0,0,0,0,2000000064,0,0,0,0,0,0,0,''),
(141603,2,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'1416 - movement chenged to 0:idle');
-- Nurse Lillian
DELETE FROM creature_movement_template WHERE entry = 5042;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(5042,1,-8759.62,812.343,97.635,0,0,0,0,0,0,0,0,0,3.86606,0,0),
(5042,2,-8761.61,810.579,97.635,0,0,0,0,0,0,0,0,0,2.0785,0,0),
(5042,3,-8762.09,811.25,97.635,15000,141601,0,0,0,0,0,0,0,2.08714,0,0),
(5042,4,-8765.12,809.343,97.635,0,0,0,0,0,0,0,0,0,2.33218,0,0),
(5042,5,-8768.82,813.976,97.635,0,0,0,0,0,0,0,0,0,0.817934,0,0),
(5042,6,-8765.6,816.682,97.635,0,0,0,0,0,0,0,0,0,5.0206,0,0),
(5042,7,-8765.49,816.11,97.635,15000,0,0,0,0,0,0,0,0,4.90279,0,0),
(5042,8,-8766.14,815.698,97.635,0,0,0,0,0,0,0,0,0,3.76789,0,0),
(5042,9,-8762.85,818.44,97.635,0,0,0,0,0,0,0,0,0,6.00235,0,0),
(5042,10,-8757.2,817.107,97.635,0,0,0,0,0,0,0,0,0,5.2413,0,0),
(5042,11,-8755.51,815.287,97.635,0,0,0,0,0,0,0,0,0,5.48793,0,0),
(5042,12,-8755.65,815.128,97.635,15000,0,0,0,0,0,0,0,0,4.32318,0,0),
(5042,13,-8755.62,815.616,97.635,0,0,0,0,0,0,0,0,0,2.83609,0,0),
(5042,14,-8766.1,820.151,97.635,0,0,0,0,0,0,0,0,0,3.84219,0,0),
(5042,15,-8766.37,820.027,97.635,15000,141601,0,0,0,0,0,0,0,3.58301,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 504201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(141601,5,0,0,0,0,0,0,2000005085,2000005086,2000005087,0,0,0,0,0,'');
-- Bartleby <Drunk> -- not req. no more.
DELETE FROM creature_movement_template WHERE entry = 6090;
UPDATE creature_template SET MovementType = 0 WHERE entry = 6090;
-- Erk
DELETE FROM creature_movement_template WHERE entry = 14857;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(14857,1,-29.4619,-2615.94,97.1569,2000,1485701,0,0,0,0,0,0,0,2.81206,0,0),
(14857,2,-25.8713,-2613.07,97.2377,10000,1485702,0,0,0,0,0,0,0,0.434565,0,0),
(14857,3,-19.1492,-2619.64,97.2062,0,0,0,0,0,0,0,0,0,5.9402,0,0),
(14857,4,-11.7613,-2621.95,95.72,0,0,0,0,0,0,0,0,0,0.001017,0,0),
(14857,5,-9.08595,-2621.67,94.9584,0,0,0,0,0,0,0,0,0,0.104689,0,0),
(14857,6,-3.63306,-2621.64,92.1312,0,0,0,0,0,0,0,0,0,0.006514,0,0),
(14857,7,3.79072,-2621.66,89.8122,35000,1485703,0,0,0,0,0,0,0,0.018295,0,0),
(14857,8,-0.125211,-2621.11,91.288,0,0,0,0,0,0,0,0,0,4.4955,0,0),
(14857,9,-4.09707,-2636.68,91.9798,0,0,0,0,0,0,0,0,0,3.88053,0,0),
(14857,10,-9.7202,-2640.14,95.6607,0,0,0,0,0,0,0,0,0,3.69832,0,0),
(14857,11,-21.9055,-2647.23,95.8334,0,0,0,0,0,0,0,0,0,2.72835,0,0),
(14857,12,-29.9285,-2641.6,96.0804,0,0,0,0,0,0,0,0,0,2.42597,0,0),
(14857,13,-33.6012,-2638.69,96.4458,0,0,0,0,0,0,0,0,0,2.25083,0,0),
(14857,14,-33.7544,-2634.78,96.275,0,0,0,0,0,0,0,0,0,1.4403,0,0),
(14857,15,-31.7804,-2631.54,95.9905,0,0,0,0,0,0,0,0,0,0.610917,0,0),
(14857,16,-30.3169,-2631.18,95.9409,0,0,0,0,0,0,0,0,0,0.021083,0,0),
(14857,17,-29.1425,-2632.01,95.9483,11000,1485704,0,0,0,0,0,0,0,5.85468,0,0),
(14857,18,-32.0825,-2632.89,96.0727,0,0,0,0,0,0,0,0,0,3.654,0,0),
(14857,19,-32.9846,-2638.7,96.3846,0,0,0,0,0,0,0,0,0,4.78104,0,0),
(14857,20,-31.5213,-2644.06,96.1429,0,0,0,0,0,0,0,0,0,5.35438,0,0),
(14857,21,-24.4697,-2646.37,95.8326,0,0,0,0,0,0,0,0,0,6.02855,0,0),
(14857,22,-18.6414,-2646.82,95.8326,0,0,0,0,0,0,0,0,0,0.601453,0,0),
(14857,23,-9.77005,-2641.35,95.5894,0,0,0,0,0,0,0,0,0,0.554329,0,0),
(14857,24,-8.47826,-2640.57,95.2277,0,0,0,0,0,0,0,0,0,0.522913,0,0),
(14857,25,-3.89023,-2637.86,92.0007,0,0,0,0,0,0,0,0,0,0.467935,0,0),
(14857,26,4.77875,-2632.61,89.838,20000,1485705,0,0,0,0,0,0,0,0.48757,0,0),
(14857,27,4.56817,-2635.55,90.4474,0,0,0,0,0,0,0,0,0,5.1604,0,0),
(14857,28,10.7483,-2640.52,90.3865,0,0,0,0,0,0,0,0,0,5.61985,0,0),
(14857,29,34.7806,-2655.09,91.9127,0,0,0,0,0,0,0,0,0,5.74159,0,0),
(14857,30,53.317,-2671.72,91.6669,0,0,0,0,0,0,0,0,0,5.2193,0,0),
(14857,31,63.5888,-2689.05,92.9446,0,0,0,0,0,0,0,0,0,4.81483,0,0),
(14857,32,60.2265,-2698.29,92.0961,0,0,0,0,0,0,0,0,0,4.02158,0,0),
(14857,33,55.9701,-2699.55,91.9007,0,0,0,0,0,0,0,0,0,2.39266,0,0),
(14857,34,55.0459,-2698.41,91.9447,20000,1485706,0,0,0,0,0,0,0,2.02666,0,0),
(14857,35,45.8985,-2702.47,91.7002,0,0,0,0,0,0,0,0,0,3.10109,0,0),
(14857,36,31.0409,-2703.29,91.6676,0,0,0,0,0,0,0,0,0,2.65891,0,0),
(14857,37,23.5055,-2699.47,91.7346,0,0,0,0,0,0,0,0,0,2.2937,0,0),
(14857,38,10.4826,-2681.7,91.7507,0,0,0,0,0,0,0,0,0,2.18767,0,0),
(14857,49,-0.678281,-2668.66,91.9212,0,0,0,0,0,0,0,0,0,2.2937,0,0),
(14857,40,-8.81453,-2659.54,95.5593,0,0,0,0,0,0,0,0,0,2.31726,0,0),
(14857,41,-14.4874,-2643.52,95.8315,0,0,0,0,0,0,0,0,0,1.86173,0,0),
(14857,42,-17.0888,-2620.45,96.3303,0,0,0,0,0,0,0,0,0,2.72331,0,0),
(14857,43,-19.1079,-2619.6,97.1972,0,0,0,0,0,0,0,0,0,2.74138,0,0),
(14857,44,-29.4619,-2615.94,97.1569,0,0,0,0,0,0,0,0,0,2.81206,0,0),
(14857,45,-29.4619,-2615.94,97.1569,240000,1485707,0,0,0,0,0,0,0,2.81206,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1485701,1485702,1485703,1485704,1485705,1485706,1485707);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1485701,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1485702,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1485702,5,0,0,0,0,0,0,2000005307,0,0,0,0,0,0,0,''),
(1485703,3,0,0,0,0,0,0,2000005308,0,0,0,0,0,0,0,''),
(1485703,31,0,0,0,0,0,0,2000005309,0,0,0,0,0,0,0,''),
(1485704,10,0,0,0,0,0,0,2000005310,0,0,0,0,0,0,0,''),
(1485705,15,0,0,0,0,0,0,2000005311,0,0,0,0,0,0,0,''),
(1485705,18,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1485706,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1485706,3,0,0,0,0,0,0,2000005312,0,0,0,0,0,0,0,''),
(1485706,8,0,0,0,14893,5,4,2000005313,0,0,0,0,0,0,0,''),
(1485706,9,1,21,0,14893,5,0,0,0,0,0,0,0,0,0,''),
(1485706,14,1,7,0,3501,5,0,0,0,0,0,0,0,0,0,''),
(1485706,14,1,7,0,14893,5,0,0,0,0,0,0,0,0,0,''),
(1485706,21,0,0,0,0,0,0,2000005010,0,0,0,0,0,0,0,''),
(1485707,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1485707,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- Okla
DELETE FROM creature_movement_template WHERE entry = 14873;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(14873,1,270.076,-3036.6,97.6192,0,0,0,0,0,0,0,0,0,3.69769,0,0),
(14873,2,262.171,-3043.45,96.5053,21000,1487301,0,0,0,0,0,0,0,4.01577,0,0),
(14873,3,251.328,-3055.55,96.1454,0,0,0,0,0,0,0,0,0,4.326,0,0),
(14873,4,246.888,-3070.92,95.2793,0,0,0,0,0,0,0,0,0,4.4713,0,0),
(14873,5,242.449,-3081.3,91.82,0,0,0,0,0,0,0,0,0,4.18071,0,0),
(14873,6,232.826,-3106.67,93.3165,0,0,0,0,0,0,0,0,0,4.37706,0,0),
(14873,7,226.41,-3120.76,93.3475,0,0,0,0,0,0,0,0,0,4.37392,0,0),
(14873,8,213.921,-3151.01,91.2851,5000,1487302,0,0,0,0,0,0,0,1.33448,0,0),
(14873,9,221.681,-3147.9,91.374,5000,0,0,0,0,0,0,0,0,0.340951,0,0),
(14873,10,214.549,-3134.64,91.9876,0,0,0,0,0,0,0,0,0,2.04134,0,0),
(14873,11,210.931,-3139.95,91.6514,0,0,0,0,0,0,0,0,0,1.95494,0,0),
(14873,12,214.059,-3139.64,91.7,0,0,0,0,0,0,0,0,0,0.097475,0,0),
(14873,13,213.426,-3131.78,92.1297,10000,1487305,0,0,0,0,0,0,0,1.66434,0,0),
(14873,14,220.194,-3140.72,91.7517,0,0,0,0,0,0,0,0,0,5.37928,0,0),
(14873,15,225.395,-3139.1,92.0847,0,0,0,0,0,0,0,0,0,0.325237,0,0),
(14873,16,220.857,-3140.83,91.7662,0,0,0,0,0,0,0,0,0,3.5061,0,0),
(14873,17,218.769,-3132.79,92.4983,5000,0,0,0,0,0,0,0,0,1.78215,0,0),
(14873,18,226.814,-3137.56,92.169,10000,1487306,0,0,0,0,0,0,0,5.7327,0,0),
(14873,19,225.496,-3132.89,92.7818,0,0,0,0,0,0,0,0,0,1.84498,0,0),
(14873,20,213.603,-3148.39,91.4489,0,0,0,0,0,0,0,0,0,4.02839,0,0),
(14873,21,219.055,-3151.2,91.2139,5000,0,0,0,0,0,0,0,0,5.82302,0,0),
(14873,22,220.469,-3141.93,91.6344,0,0,0,0,0,0,0,0,0,1.40909,0,0),
(14873,23,214.852,-3148.32,91.4558,0,0,0,0,0,0,0,0,0,3.67889,0,0),
(14873,24,218.373,-3144.99,91.5714,10000,1487307,0,0,0,0,0,0,0,2.13165,0,0),
(14873,25,224.091,-3149.02,91.2304,0,0,0,0,0,0,0,0,0,5.66987,0,0),
(14873,26,224.591,-3145.02,91.4801,5000,0,0,0,0,0,0,0,0,1.33054,0,0),
(14873,27,219.022,-3147.38,91.4735,0,0,0,0,0,0,0,0,0,3.58071,0,0),
(14873,28,220.167,-3139.75,91.8958,4000,0,0,0,0,0,0,0,0,1.40516,0,0),
(14873,29,225.033,-3133.14,92.8028,10000,1487308,0,0,0,0,0,0,0,0.6551,0,0),
(14873,30,222.021,-3128.32,93.0422,0,0,0,0,0,0,0,0,0,2.13558,0,0),
(14873,31,228.338,-3126.35,92.9595,2000,0,0,0,0,0,0,0,0,0.337014,0,0),
(14873,32,229.495,-3129.22,92.6818,3000,0,0,0,0,0,0,0,0,5.09653,0,0),
(14873,33,232.12,-3128.11,92.5988,0,0,0,0,0,0,0,0,0,0.399846,0,0),
(14873,34,227.003,-3137.58,92.1461,3000,0,0,0,0,0,0,0,0,4.25615,0,0),
(14873,35,220.002,-3132.38,92.659,10000,1487309,0,0,0,0,0,0,0,1.85283,0,0),
(14873,36,225.874,-3102.36,93.6962,0,0,0,0,0,0,0,0,0,1.38159,0,0),
(14873,37,233.086,-3085.54,91.6788,0,0,0,0,0,0,0,0,0,1.15775,0,0),
(14873,38,235.152,-3069.81,91.8706,0,0,0,0,0,0,0,0,0,1.33447,0,0),
(14873,39,239.821,-3061.03,95.4022,0,0,0,0,0,0,0,0,0,1.05173,0,0),
(14873,40,256.123,-3047.91,96.2473,3000,1487303,0,0,0,0,0,0,0,0.652743,0,0),
(14873,41,267.05,-3039.04,96.9212,0,0,0,0,0,0,0,0,0,0.647245,0,0),
(14873,42,271.093,-3035.98,97.6501,0,0,0,0,0,0,0,0,0,0.647245,0,0),
(14873,43,278.975,-3029.68,97.3919,3000,1487302,0,0,0,0,0,0,0,0.670807,0,0),
(14873,44,280.125,-3029.01,97.3502,240000,1487304,0,0,0,0,0,0,0,3.76837,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1487301 AND 1487309;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1487301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1487301,5,0,0,0,0,0,0,2000005320,0,0,0,0,0,0,0,''),
(1487301,13,0,0,0,5907,30,4,2000005321,0,0,0,0,0,0,0,''),
(1487301,20,0,0,0,0,0,0,2000005322,0,0,0,0,0,0,0,''),
(1487302,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1487303,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1487304,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1487304,235,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1487305,9,0,0,0,0,0,0,2000005323,0,0,0,0,0,0,0,''),
(1487306,9,0,0,0,0,0,0,2000005324,0,0,0,0,0,0,0,''),
(1487307,9,0,0,0,0,0,0,2000005325,0,0,0,0,0,0,0,''),
(1487308,9,0,0,0,0,0,0,2000005326,0,0,0,0,0,0,0,''),
(1487309,9,0,0,0,0,0,0,2000005327,0,0,0,0,0,0,0,'');
-- Battle-Mage Dathric <Kirin Tor>
DELETE FROM creature_movement WHERE id = 69956;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('69956','1','2185.22','2115.88','72.4063','1000','1954302','0','0','0','0','0','0','0','5.53269','0','0'),
('69956','2','2185.22','2115.88','72.4063','300000','0','0','0','0','0','0','0','0','5.53269','0','0');
DELETE FROM creature_movement_template WHERE entry = 19543;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19543,1,2236.11,2320.3,92.4652,0,1954301,0,0,0,0,0,0,0,3.97722,0,0),
(19543,2,2229.81,2315.17,90.2113,0,0,0,0,0,0,0,0,0,4.19949,0,0),
(19543,3,2229.04,2313.74,89.7226,11000,1954303,0,0,0,0,0,0,0,4.20892,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954301 AND 1954303;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954301,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954302,0,22,1810,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954303,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954303,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954303,8,0,0,0,0,0,0,2000005380,0,0,0,0,0,0,0,'');
-- Conjurer Luminrath <Kirin Tor>
DELETE FROM creature_movement WHERE id = 69957;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('69957','1','2270.39','2149.99','78.9268','1000','1954402','0','0','0','0','0','0','0','5.59527','0','0'),
('69957','2','2273.1','2148.33','78.621','0','0','0','0','0','0','0','0','0','4.97197','0','0'),
('69957','3','2279.42','2142.66','84.0477','0','0','0','0','0','0','0','0','0','5.40787','0','0'),
('69957','4','2300','2122.41','82.435','0','0','0','0','0','0','0','0','0','0.517196','0','0'),
('69957','5','2316.56','2138.54','85.7692','0','0','0','0','0','0','0','0','0','1.75184','0','0'),
('69957','6','2314.07','2151.61','88.02','0','0','0','0','0','0','0','0','0','2.21522','0','0'),
('69957','7','2304.87','2154.86','90.0565','0','0','0','0','0','0','0','0','0','2.78464','0','0'),
('69957','8','2313.38','2151.85','88.2726','0','0','0','0','0','0','0','0','0','5.61993','0','0'),
('69957','9','2316.53','2139.44','85.9809','0','0','0','0','0','0','0','0','0','4.51252','0','0'),
('69957','10','2300.79','2122.24','82.4831','0','0','0','0','0','0','0','0','0','2.84277','0','0'),
('69957','11','2279.06','2143.55','84.1136','0','0','0','0','0','0','0','0','0','2.41158','0','0'),
('69957','12','2272.61','2147.79','78.2218','0','0','0','0','0','0','0','0','0','2.45871','0','0'),
('69957','13','2253.71','2167.8','82.4061','4000','0','0','0','0','0','0','0','0','2.30163','0','0'),
('69957','14','2269.38','2151.9','80.2231','0','0','0','0','0','0','0','0','0','5.36308','0','0');
DELETE FROM creature_movement_template WHERE entry = 19544;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19544,1,2198.5,2333.17,89.213,1000,1954401,0,0,0,0,0,0,0,2.33355,0,0),
(19544,2,2194.71,2339.86,90.392,2000,0,0,0,0,0,0,0,0,2.33197,0,0),
(19544,3,2194.71,2339.86,90.392,17000,1954403,0,0,0,0,0,0,0,3.89963,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954401 AND 1954403;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954401,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954402,0,22,1811,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954403,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954403,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954403,8,0,0,0,0,0,0,2000005381,0,0,0,0,0,0,0,''),
(1954403,13,0,0,0,0,0,0,2000005382,0,0,0,0,0,0,0,''),
(1954403,13,23,19008,0,0,0,0x08,0,0,0,0,0,0,0,0,'');
-- Cohlien Frostweaver <Kirin Tor>
DELETE FROM creature_movement WHERE id = 69958;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('69958','1','2221.02','2152.6','74.8408','1000','1954502','0','0','0','0','0','0','0','5.50607','0','0'),
('69958','2','2227.73','2145.34','74.4228','0','0','0','0','0','0','0','0','0','0.392289','0','0'),
('69958','3','2246.68','2164.27','80.752','0','0','0','0','0','0','0','0','0','0.810017','0','0'),
('69958','4','2272.3','2197.9','92.0272','0','0','0','0','0','0','0','0','0','1.13596','0','0'),
('69958','5','2255.04','2173.23','84.0229','0','0','0','0','0','0','0','0','0','3.8283','0','0'),
('69958','6','2228.2','2145.41','74.4934','0','0','0','0','0','0','0','0','0','2.71461','0','0'),
('69958','7','2217.94','2154.56','74.7639','0','0','0','0','0','0','0','0','0','3.47566','0','0'),
('69958','8','2206.41','2147.59','72.4465','0','0','0','0','0','0','0','0','0','2.44365','0','0'),
('69958','9','2195.97','2158.52','71.6383','0','0','0','0','0','0','0','0','0','0.313645','0','0'),
('69958','10','2202.38','2165.31','74.1721','0','0','0','0','0','0','0','0','0','0.790382','0','0'),
('69958','11','2195.33','2158.29','71.5085','0','0','0','0','0','0','0','0','0','4.98205','0','0'),
('69958','12','2205.78','2146.11','72.1888','0','0','0','0','0','0','0','0','0','6.15151','0','0'),
('69958','13','2218.95','2154.62','74.9526','0','0','0','0','0','0','0','0','0','5.42973','0','0');
DELETE FROM creature_movement_template WHERE entry = 19545;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19545,1,2212.27,2399.45,108.288,0,1954501,0,0,0,0,0,0,0,2.13592,0,0),
(19545,2,2203.2,2411.26,108.721,0,0,0,0,0,0,0,0,0,2.35263,0,0),
(19545,3,2203.2,2411.26,108.721,13000,1954503,0,0,0,0,0,0,0,2.35263,0,0),
(19545,4,2203.85,2410.99,108.81,5000,1954504,0,0,0,0,0,0,0,5.34107,0,0),
(19545,5,2203.85,2410.99,108.81,3000,0,0,0,0,0,0,10,0,5.34107,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954501 AND 1954504;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954501,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954502,0,22,1809,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954503,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954503,7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954503,9,0,0,0,0,0,0,2000005379,0,0,0,0,0,0,0,''),
(1954503,9,23,19005,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(1954504,3,1,10,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Abjurist Belmara <Kirin Tor>
DELETE FROM creature_movement WHERE id = 69959;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('69959','1','2161.25','2246.41','75.0865','1000','1954602','0','0','0','0','0','0','0','3.86508','0','0'),
('69959','2','2159.64','2245.04','74.9887','0','0','0','0','0','0','0','0','0','5.35807','0','0'),
('69959','3','2173.53','2224.8','75.4765','0','0','0','0','0','0','0','0','0','4.68264','0','0'),
('69959','4','2172.49','2190.35','71.3903','0','0','0','0','0','0','0','0','0','0.613626','0','0'),
('69959','5','2178.66','2193.56','73.1546','0','0','0','0','0','0','0','0','0','0.609699','0','0'),
('69959','6','2174.51','2190.22','71.7051','0','0','0','0','0','0','0','0','0','2.72556','0','0'),
('69959','7','2171.88','2201.96','72.7954','0','0','0','0','0','0','0','0','0','1.68177','0','0'),
('69959','8','2172.75','2227.6','75.4232','0','0','0','0','0','0','0','0','0','2.32108','0','0'),
('69959','9','2160.36','2243.19','74.9836','0','0','0','0','0','0','0','0','0','0.806049','0','0'),
('69959','10','2182.62','2264.59','76.4681','0','0','0','0','0','0','0','0','0','0.739291','0','0'),
('69959','11','2161.92','2246.4','74.9703','0','0','0','0','0','0','0','0','0','3.90837','0','0');
DELETE FROM creature_movement_template WHERE entry = 19546;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19546,1,2236.71,2392.84,112.165,1000,1954601,0,0,0,0,0,0,0,0.576619,0,0),
(19546,2,2238.63,2393.47,112.776,0,0,0,0,0,0,0,0,0,5.83721,0,0),
(19546,3,2240.88,2391.2,112.802,13000,1954603,0,0,0,0,0,0,0,4.93637,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1954601 AND 1954603;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1954601,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for quest'),
(1954602,0,22,1808,1,0,0,0,0,0,0,0,0,0,0,0,'f needed for his guid'),
(1954603,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1954603,4,0,0,0,0,0,0,2000005383,0,0,0,0,0,0,0,''),
(1954603,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- creature_movement:
-- Thal'trak Proudtusk <Kargath Expeditionary Force>
UPDATE creature_movement SET waittime = 1000, script_id = 908201, textid1 = 0 WHERE id = 6885 AND point = 27;
DELETE FROM dbscripts_on_creature_movement WHERE id = 908201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(908201,1,0,0,0,0,0,0,2000005009,0,0,0,0,0,0,0,'');
-- "Dirty" Michael Crowe <Fish Merchant>
UPDATE creature_movement SET script_id = 2389601, textid1 = 0, emote = 0 WHERE id = 30649 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2389601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2389601,2,0,0,0,0,0,0,2000005019,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 15 WHERE entry = 2000005019;
-- Opus
DELETE FROM creature_movement WHERE id = 4567;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(4567,1,-7455.58,-2194.28,165.373,60000,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,2,-7455.58,-2194.28,165.373,1000,1026201,0,0,0,0,0,0,0,3.40339,0,0),
(4567,3,-7455.58,-2194.28,165.373,180000,0,0,0,0,0,0,0,0,3.40339,0,0),
(4567,4,-7455.58,-2194.28,165.373,1000,1026202,0,0,0,0,0,0,0,3.40339,0,0),
(4567,5,-7455.58,-2194.28,165.373,120000,0,0,0,0,0,0,0,0,3.40339,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1026201,1026202); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1026201,1,0,0,0,0,0,0,2000005001,2000005002,2000005003,2000005004,0,0,0,0,''),
(1026202,1,0,0,0,0,0,0,2000005005,2000005006,2000005007,2000005008,0,0,0,0,'');
-- Blackheart the Inciter
UPDATE creature_movement SET script_id = 1866701, textid2 = 0, textid4 = 0 WHERE id = 66937 AND point = 1;
UPDATE creature_movement SET script_id = 1866702, textid1 = 0, textid3 = 0, textid5 = 0 WHERE id = 66937 AND point = 2;
UPDATE creature_movement SET script_id = 1866703, textid1 = 0, textid3 = 0 WHERE id = 66937 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1866701,1866702,1866703); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1866701,1,0,0,0,0,0,0,2000005220,2000005235,0,0,0,0,0,0,''),
(1866702,1,0,0,0,0,0,0,2000005043,2000005230,2000005236,0,0,0,0,0,''),
(1866703,1,0,0,0,0,0,0,2000005044,2000005231,0,0,0,0,0,0,'');
-- Thomas Miller <Baker> - c.3518
DELETE FROM creature_movement WHERE id = 79723;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(79723,1,-8831.81,543.054,96.8538,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,2,-8823.8,554.302,95.1343,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,3,-8816.18,563.58,94.1516,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,4,-8812.27,575.284,94.8673,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,5,-8798.45,588.131,97.2749,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,6,-8781.38,601.002,97.395,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,7,-8770.7,609.208,97.2416,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,8,-8761.96,617.745,99.1796,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,9,-8757.63,628.577,102.216,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,10,-8759.15,642.457,103.654,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,11,-8770.64,661.869,103.528,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,12,-8787.04,680.217,102.245,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,13,-8804.12,683.305,100.683,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,14,-8815.72,680.448,98.2183,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,15,-8831.55,674.228,98.3358,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,16,-8843.12,667.22,97.8051,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,17,-8852.2,659.229,96.9603,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,18,-8841.74,637.862,95.1661,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,19,-8834.06,634.756,94.3203,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,20,-8817.96,641.332,94.2293,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,21,-8811.88,634.469,94.2293,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,22,-8813.45,625.373,94.1306,60000,0,0,0,0,0,0,0,0,0,0,0),
(79723,23,-8827.66,620.367,94.2332,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,24,-8846.61,601.6,92.6069,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,25,-8859.18,589.015,92.709,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,26,-8874.99,572.27,93.4734,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,27,-8883.26,572.174,92.8046,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,28,-8886.9,579.094,92.9168,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,29,-8889.38,585.29,93.3191,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,30,-8869.45,596.649,92.4409,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,31,-8860.44,601.856,92.161,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,32,-8847.27,610.523,92.6533,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,33,-8837.06,617.396,93.0252,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,34,-8834.75,618.401,93.3229,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,35,-8827.87,621.207,94.1001,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,36,-8809.26,603.528,96.2749,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,37,-8806.62,593.729,97.1852,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,38,-8820.32,573.328,94.1915,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,39,-8830.69,558.865,94.8851,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,40,-8834.06,549.867,96.194,0,0,0,0,0,0,0,0,0,0,0,0),
(79723,41,-8831.28,543.109,96.8344,60000,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM db_script_string WHERE entry IN (2000005099,2000005100,2000005101,2000005102); -- all done by OOC in ACID - entry can be reused.
-- Northshire Peasant #1 c.11260
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80119 AND point = 1;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1126001,1126002); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1126001,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1126002,1,1,234,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Northshire Peasant #2 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80127 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80127 AND point = 7;
-- Northshire Peasant #3 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80137 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80137 AND point = 5;
-- Northshire Peasant #4 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80145 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80145 AND point = 4;
-- Northshire Peasant #5 c.11260
UPDATE creature_movement SET waittime = 1000, script_id = 1126001, emote = 0 WHERE id = 80262 AND point = 1;
UPDATE creature_movement SET script_id = 1126002, emote = 0 WHERE id = 80262 AND point = 9;
-- Krixil Slogswitch <Food & Drink> c.23573
UPDATE creature_movement SET script_id = 2357301, textid1 = 0, emote = 0 WHERE id = 18597 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2357301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2357301,1,0,0,0,0,0,0,2000005013,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005013;
-- Inspector Tarem c.23567
UPDATE creature_movement SET script_id = 2356701, textid1 = 0, emote = 0 WHERE id = 18594 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2356701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2356701,1,0,0,0,0,0,0,2000005012,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 16 WHERE entry = 2000005012;
-- Ol' Emma c.3520
UPDATE creature_movement SET waittime = 0, script_id = 352001, textid1 = 0 WHERE id = 79796 AND point = 7;
UPDATE creature_movement SET waittime = 0, script_id = 352002, textid1 = 0 WHERE id = 79796 AND point = 10;
UPDATE creature_movement SET waittime = 0, script_id = 352003, textid1 = 0 WHERE id = 79796 AND point = 13;
UPDATE creature_movement SET waittime = 0, script_id = 352004, textid1 = 0 WHERE id = 79796 AND point = 16;
UPDATE creature_movement SET waittime = 0, script_id = 352005, textid1 = 0 WHERE id = 79796 AND point = 22;
UPDATE creature_movement SET waittime = 0, script_id = 352006, textid1 = 0 WHERE id = 79796 AND point = 27;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 352001 AND 352006; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(352001,0,0,0,0,0,0,0,2000005103,0,0,0,0,0,0,0,''),
(352002,0,0,0,0,0,0,0,2000005104,0,0,0,0,0,0,0,''),
(352003,0,0,0,0,0,0,0,2000005105,0,0,0,0,0,0,0,''),
(352004,0,0,0,0,0,0,0,2000005106,0,0,0,0,0,0,0,''),
(352005,0,0,0,0,0,0,0,2000005107,0,0,0,0,0,0,0,''),
(352006,0,0,0,0,0,0,0,2000005108,0,0,0,0,0,0,0,'');
-- Deserter Agitator c.23602
DELETE FROM creature_movement WHERE id = 31046;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(31046,1,-3647.42,-4449.24,15.1955,10000,0,0,0,0,0,0,0,0,0.68068,0,0),
(31046,2,-3647.42,-4449.24,15.1955,15000,2360201,0,0,0,0,0,0,0,0.68068,0,0),
(31046,3,-3647.42,-4449.24,15.1955,45000,0,0,0,0,0,0,0,0,0.68068,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2360201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2360201,1,0,0,0,0,0,0,2000005020,0,0,0,0,0,0,0,''),
(2360201,6,0,0,0,0,0,0,2000005021,0,0,0,0,0,0,0,''),
(2360201,13,0,0,0,0,0,0,2000005022,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005020,2000005021,2000005022);
-- Erich Lohan c.3627
UPDATE creature_movement SET script_id = 362701, textid1 = 0 WHERE id = 90445 AND point = 2;
UPDATE creature_movement SET script_id = 362702, textid1 = 0 WHERE id = 90445 AND point = 4;
UPDATE creature_movement SET script_id = 362703, textid1 = 0 WHERE id = 90445 AND point = 7;
UPDATE creature_movement SET script_id = 362704, textid1 = 0 WHERE id = 90445 AND point = 12;
UPDATE creature_movement SET script_id = 362705, textid1 = 0 WHERE id = 90445 AND point = 17;
UPDATE creature_movement SET script_id = 362706, textid1 = 0 WHERE id = 90445 AND point = 21;
UPDATE creature_movement SET script_id = 362707, textid1 = 0 WHERE id = 90445 AND point = 26;
UPDATE creature_movement SET script_id = 362708, textid1 = 0 WHERE id = 90445 AND point = 30;
UPDATE creature_movement SET script_id = 362709, textid1 = 0 WHERE id = 90445 AND point = 35;
UPDATE creature_movement SET script_id = 362710, textid1 = 0 WHERE id = 90445 AND point = 39;
UPDATE creature_movement SET script_id = 362711, textid1 = 0 WHERE id = 90445 AND point = 43;
UPDATE creature_movement SET script_id = 362712, textid1 = 0 WHERE id = 90445 AND point = 47;
UPDATE creature_movement SET script_id = 362713, textid1 = 0 WHERE id = 90445 AND point = 52;
UPDATE creature_movement SET script_id = 362714, textid1 = 0 WHERE id = 90445 AND point = 57;
UPDATE creature_movement SET script_id = 362715, textid1 = 0 WHERE id = 90445 AND point = 61;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 362701 AND 362715; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(362701,0,0,0,0,0,0,0,2000005185,0,0,0,0,0,0,0,''),
(362702,0,0,0,0,0,0,0,2000005186,0,0,0,0,0,0,0,''),
(362703,0,0,0,0,0,0,0,2000005187,0,0,0,0,0,0,0,''),
(362704,0,0,0,0,0,0,0,2000005188,0,0,0,0,0,0,0,''),
(362705,0,0,0,0,0,0,0,2000005189,0,0,0,0,0,0,0,''),
(362706,0,0,0,0,0,0,0,2000005190,0,0,0,0,0,0,0,''),
(362707,0,0,0,0,0,0,0,2000005191,0,0,0,0,0,0,0,''),
(362708,0,0,0,0,0,0,0,2000005192,0,0,0,0,0,0,0,''),
(362709,0,0,0,0,0,0,0,2000005193,0,0,0,0,0,0,0,''),
(362710,0,0,0,0,0,0,0,2000005194,0,0,0,0,0,0,0,''),
(362711,0,0,0,0,0,0,0,2000005195,0,0,0,0,0,0,0,''),
(362712,0,0,0,0,0,0,0,2000005196,0,0,0,0,0,0,0,''),
(362713,0,0,0,0,0,0,0,2000005197,0,0,0,0,0,0,0,''),
(362714,0,0,0,0,0,0,0,2000005198,0,0,0,0,0,0,0,''),
(362715,0,0,0,0,0,0,0,2000005199,0,0,0,0,0,0,0,'');
-- Spirit of the Past#2 c.21049
UPDATE creature_movement SET script_id = 2104902, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0, emote = 0 WHERE id = 73908 AND point = 1;
UPDATE creature_movement SET script_id = 2104902, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0, emote = 0 WHERE id = 73908 AND point = 2;
UPDATE creature_movement SET script_id = 2104902, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0, emote = 0 WHERE id = 73908 AND point = 3;
UPDATE db_script_string SET emote = 20 WHERE entry IN (2000005453,2000005454,2000005457,2000005458);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2104902; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2104902,1,0,0,0,0,0,0,2000005453,2000005454,2000005457,2000005458,0,0,0,0,'');
-- Junior Apothecary Holland <Royal Apothecary Society> c.10665
UPDATE creature_movement SET script_id = 1066501, textid1 = 0 WHERE id = 28412 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1066501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1066501,1,0,0,0,0,0,0,2000005018,0,0,0,0,0,0,0,''); 
-- Caretaker Alen <The Argent Dawn> c.11038
UPDATE creature_movement SET script_id = 1103801, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0 WHERE id = 54749 AND point = 2;
UPDATE creature_movement SET script_id = 1103802, textid1 = 0, textid2 = 0, textid3 = 0, textid4 = 0 WHERE id = 54749 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1103801,1103802); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1103801,1,0,0,0,0,0,0,2000005031,2000005214,2000005228,2000005233,0,0,0,0,''),
(1103802,1,0,0,0,0,0,0,2000005032,2000005215,2000005229,2000005234,0,0,0,0,'');
-- Justin c.1368
UPDATE creature_movement SET script_id = 136801, textid1 = 0 WHERE id = 79815 AND point = 3;
UPDATE creature_movement SET script_id = 136802, textid1 = 0 WHERE id = 79815 AND point = 7;
UPDATE creature_movement SET script_id = 136803, textid1 = 0 WHERE id = 79815 AND point = 10;
UPDATE creature_movement SET script_id = 136804, textid1 = 0 WHERE id = 79815 AND point = 13;
UPDATE creature_movement SET script_id = 136805, textid1 = 0 WHERE id = 79815 AND point = 16;
UPDATE creature_movement SET script_id = 136806, textid1 = 0 WHERE id = 79815 AND point = 18;
UPDATE creature_movement SET script_id = 136807, textid1 = 0 WHERE id = 79815 AND point = 19;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 136801 AND 136807; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(136801,0,0,0,0,0,0,0,2000005109,0,0,0,0,0,0,0,''),
(136802,0,0,0,0,0,0,0,2000005110,0,0,0,0,0,0,0,''),
(136803,0,0,0,0,0,0,0,2000005111,0,0,0,0,0,0,0,''),
(136804,0,0,0,0,0,0,0,2000005112,0,0,0,0,0,0,0,''),
(136805,0,0,0,0,0,0,0,2000005113,0,0,0,0,0,0,0,''),
(136806,0,0,0,0,0,0,0,2000005114,0,0,0,0,0,0,0,''),
(136807,0,0,0,0,0,0,0,2000005115,0,0,0,0,0,0,0,'');
-- Roman c.1371
UPDATE creature_movement SET script_id = 137101, textid1 = 0 WHERE id = 79816 AND point = 2;
UPDATE creature_movement SET script_id = 137102, textid1 = 0 WHERE id = 79816 AND point = 5;
UPDATE creature_movement SET script_id = 137103, textid1 = 0 WHERE id = 79816 AND point = 8;
UPDATE creature_movement SET script_id = 137104, textid1 = 0 WHERE id = 79816 AND point = 11;
UPDATE creature_movement SET script_id = 137105, textid1 = 0 WHERE id = 79816 AND point = 14;
UPDATE creature_movement SET script_id = 137106, textid1 = 0 WHERE id = 79816 AND point = 17;
UPDATE creature_movement SET script_id = 137107, textid1 = 0 WHERE id = 79816 AND point = 20;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 137101 AND 137107; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137101,0,0,0,0,0,0,0,2000005116,0,0,0,0,0,0,0,''),
(137102,0,0,0,0,0,0,0,2000005117,0,0,0,0,0,0,0,''),
(137103,0,0,0,0,0,0,0,2000005118,0,0,0,0,0,0,0,''),
(137104,0,0,0,0,0,0,0,2000005119,0,0,0,0,0,0,0,''),
(137105,0,0,0,0,0,0,0,2000005120,0,0,0,0,0,0,0,''),
(137106,0,0,0,0,0,0,0,2000005121,0,0,0,0,0,0,0,''),
(137107,0,0,0,0,0,0,0,2000005122,0,0,0,0,0,0,0,'');
-- Brandon c.1370
UPDATE creature_movement SET script_id = 137001, textid1 = 0 WHERE id = 79817 AND point = 1;
UPDATE creature_movement SET script_id = 137002, textid1 = 0 WHERE id = 79817 AND point = 4;
UPDATE creature_movement SET script_id = 137003, textid1 = 0 WHERE id = 79817 AND point = 7;
UPDATE creature_movement SET script_id = 137004, textid1 = 0 WHERE id = 79817 AND point = 10;
UPDATE creature_movement SET script_id = 137005, textid1 = 0 WHERE id = 79817 AND point = 13;
UPDATE creature_movement SET script_id = 137006, textid1 = 0 WHERE id = 79817 AND point = 16;
UPDATE creature_movement SET script_id = 137007, textid1 = 0 WHERE id = 79817 AND point = 17;
UPDATE creature_movement SET script_id = 137008, textid1 = 0 WHERE id = 79817 AND point = 19;
UPDATE creature_movement SET script_id = 137009, textid1 = 0 WHERE id = 79817 AND point = 20;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 137001 AND 137009; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(137001,0,0,0,0,0,0,0,2000005123,0,0,0,0,0,0,0,''),
(137002,0,0,0,0,0,0,0,2000005124,0,0,0,0,0,0,0,''),
(137003,0,0,0,0,0,0,0,2000005125,0,0,0,0,0,0,0,''),
(137004,0,0,0,0,0,0,0,2000005126,0,0,0,0,0,0,0,''),
(137005,0,0,0,0,0,0,0,2000005127,0,0,0,0,0,0,0,''),
(137006,0,0,0,0,0,0,0,2000005128,0,0,0,0,0,0,0,''),
(137007,0,0,0,0,0,0,0,2000005129,0,0,0,0,0,0,0,''),
(137008,0,0,0,0,0,0,0,2000005130,0,0,0,0,0,0,0,''),
(137009,0,0,0,0,0,0,0,2000005131,0,0,0,0,0,0,0,'');

-- Wretched Skulker c.24688
DELETE FROM creature_movement WHERE id = 96825;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(96825,1,231.335,2.77129,-2.96215,80000,2468801,0,0,0,0,0,0,0,5.1577,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2468801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2468801,0,1,398,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2468801,40,0,0,0,0,0,0,2000005210,0,0,0,0,0,0,0,''),
(2468801,41,1,398,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Wretched Bruiser c.24689
DELETE FROM creature_movement WHERE id = 96830;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(96830,1,232.15,-2.02771,-2.95377,80000,2468901,0,0,0,0,0,0,0,0.869425,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2468901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2468901,0,1,398,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Mack c.23718
DELETE FROM creature_movement WHERE id = 94484;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(94484,1,6740.69,-7607.24,126.194,35000,2371801,0,0,0,0,0,0,0,4.01019,0,0),
(94484,2,6771.95,-7585.33,127.31,10000,2371802,0,0,0,0,0,0,0,0.534801,0,0),
(94484,3,6751.85,-7549.6,126.132,4000,2371803,0,0,0,0,0,0,0,2.59961,0,0),
(94484,4,6743.03,-7551.57,126.327,1200000,0,0,0,0,0,0,0,0,3.40335,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2371801 AND 2371803; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2371801,2,0,0,0,0,0,0,2000005202,0,0,0,0,0,0,0,''),
(2371801,20,0,0,0,0,0,0,2000005203,0,0,0,0,0,0,0,''),
(2371802,2,0,0,0,0,0,0,2000005204,0,0,0,0,0,0,0,''),
(2371803,2,1,61,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005202,2000005203);
UPDATE db_script_string SET emote = 16 WHERE entry = 2000005204;
-- Captain Dranarus c.25138
UPDATE creature_movement SET script_id = 2513801, emote = 0 WHERE id = 96619 AND point = 2;
UPDATE creature_movement SET script_id = 2513801, emote = 0 WHERE id = 96619 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2513801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2513801,2,1,412,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2513801,48,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Crildor c.5782
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 1;
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 22;
UPDATE creature_movement SET waittime = 60000, script_id = 578201, emote = 0 WHERE id = 46816 AND point = 53;
DELETE FROM dbscripts_on_creature_movement WHERE id = 578201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(578201,3,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(578201,58,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Engineering Crewmember c.19737
DELETE FROM creature_movement WHERE id = 70615;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70615,1,3033.73,3656.38,143.69,0,0,0,0,0,0,0,0,0,5.30927,0,0),
(70615,2,3051.05,3664.98,142.87,0,0,0,0,0,0,0,0,0,1.15609,0,0),
(70615,3,3050.97,3674.26,142.603,0,0,0,0,0,0,0,0,0,2.72802,0,0),
(70615,4,3036.52,3680.33,143.52,0,0,0,0,0,0,0,0,0,3.68935,0,0),
(70615,5,3033.28,3677.93,143.556,43000,1973701,0,0,0,0,0,0,0,3.33121,0,0),
(70615,6,3051.94,3669.52,142.825,0,0,0,0,0,0,0,0,0,3.28802,0,0),
(70615,7,3049.33,3668.68,143.187,43000,1973701,0,0,0,0,0,0,0,3.50086,0,0),
(70615,8,3051.88,3668.62,142.873,0,0,0,0,0,0,0,0,0,5.47221,0,0),
(70615,9,3051.16,3664.56,142.802,0,0,0,0,0,0,0,0,0,3.48908,0,0),
(70615,10,3035.72,3656.05,143.452,0,0,0,0,0,0,0,0,0,2.51676,0,0),
(70615,11,3032.03,3657.24,144.012,43000,1973701,0,0,0,0,0,0,0,2.51676,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1973701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1973701,3,1,133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1973701,30,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Irradiated Worker#1 c.19610
DELETE FROM creature_movement WHERE id = 70032;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(70032,1,3000.88,3690.43,143.65,0,0,0,0,0,0,0,0,0,1.45832,0,0),
(70032,2,3003.27,3695.3,143.877,0,0,0,0,0,0,0,0,0,0.01005,0,0),
(70032,3,3010.29,3695.2,136.593,0,0,0,0,0,0,0,0,0,0.494639,0,0),
(70032,4,3017.39,3710.27,137.82,0,0,0,0,0,0,0,0,0,0.80282,0,0),
(70032,5,3036.61,3727.59,139.759,40000,1961002,0,0,0,0,0,0,0,0.641028,0,0),
(70032,6,3019.64,3715.8,138.534,0,0,0,0,0,0,0,0,0,4.02217,0,0),
(70032,7,3011.46,3696.68,136.635,0,0,0,0,0,0,0,0,0,4.54602,0,0),
(70032,8,3009.01,3679.22,133.286,0,0,0,0,0,0,0,0,0,4.59551,0,0),
(70032,9,3016.51,3662.83,129.835,0,0,0,0,0,0,0,0,0,4.83348,0,0),
(70032,10,3013.62,3636.53,131.778,0,0,0,0,0,0,0,0,0,4.5366,0,0),
(70032,11,3009.93,3628.43,134.04,40000,1961003,0,0,0,0,0,0,0,4.00803,0,0),
(70032,12,3013.64,3635.49,131.995,0,0,0,0,0,0,0,0,0,1.2285,0,0),
(70032,13,3014.94,3650.03,129.107,0,0,0,0,0,0,0,0,0,1.53677,0,0),
(70032,14,3015.81,3662.53,130.335,0,0,0,0,0,0,0,0,0,2.10618,0,0),
(70032,15,3009.98,3674.81,131.394,0,0,0,0,0,0,0,0,0,1.98837,0,0),
(70032,16,3010.07,3695.38,136.597,0,0,0,0,0,0,0,0,0,2.93949,0,0),
(70032,17,3003.69,3695.46,143.857,0,0,0,0,0,0,0,0,0,3.10757,0,0),
(70032,18,2998.99,3694.04,144.017,0,0,0,0,0,0,0,0,0,5.32337,0,0),
(70032,19,3001.78,3690.79,143.653,0,0,0,0,0,0,0,0,0,4.37628,0,0),
(70032,20,3013.45,3685.54,143.647,0,0,0,0,0,0,0,0,0,5.90781,0,0),
(70032,21,3021.31,3684.95,143.631,35000,1961001,0,0,0,0,0,0,0,5.90781,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1961002,1961003); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1961002,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961002,15,0,0,0,0,0,0,2000005258,2000005259,0,0,0,0,0,0,''),
(1961002,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961003,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961003,15,0,0,0,0,0,0,2000005260,0,0,0,0,0,0,0,''),
(1961003,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1961001;
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('1961001','3','0','0','19612','4','2000005049','0','0','0','0','0','0','0',''),
('1961001','3','1','1','0','0','0','0','0','0','0','0','0','0',''),
('1961001','11','1','25','0','0','0','0','0','0','0','0','0','0',''),
('1961001','8','0','0','19612','2','2000005261','0','0','0','0','0','0','0',''),
('1961001','18','0','0','19612','2','2000005051','0','0','0','0','0','0','0',''),
('1961001','30','0','0','19612','2','2000005262','0','0','0','0','0','0','0','');
-- Irradiated Worker#2 c.19610
DELETE FROM creature_movement WHERE id = 70033;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('70033','1','2988.8','3684.45','142.734','0','0','0','0','0','0','0','0','0','0.070527','0','0'),
('70033','2','3003.17','3694.86','143.883','0','0','0','0','0','0','0','0','0','6.21499','0','0'),
('70033','3','3010.72','3694.94','136.591','0','0','0','0','0','0','0','0','0','4.83662','0','0'),
('70033','4','3010.55','3679.21','132.728','0','0','0','0','0','0','0','0','0','6.20321','0','0'),
('70033','5','3017.24','3679.03','138.385','0','0','0','0','0','0','0','0','0','0.045689','0','0'),
('70033','6','3019.63','3676.22','138.48','55000','1961005','0','0','0','0','0','0','0','5.51599','0','0'),
('70033','7','3017.06','3679.49','138.379','0','0','0','0','0','0','0','0','0','3.12052','0','0'),
('70033','8','3010.24','3679.24','132.84','0','0','0','0','0','0','0','0','0','3.49437','0','0'),
('70033','9','3011.14','3674.89','131.245','0','0','0','0','0','0','0','0','0','5.00548','0','0'),
('70033','10','3016.49','3662.7','129.828','0','0','0','0','0','0','0','0','0','4.50125','0','0'),
('70033','11','3014.48','3656.16','129.357','0','0','0','0','0','0','0','0','0','4.87824','0','0'),
('70033','12','3017.71','3652.74','128.93','55000','1961004','0','0','0','0','0','0','0','5.45158','0','0'),
('70033','13','3016.84','3653.82','128.857','0','0','0','0','0','0','0','0','0','1.70131','0','0'),
('70033','14','3009.57','3679.1','133.052','0','0','0','0','0','0','0','0','0','1.3628','0','0'),
('70033','15','3010.53','3695.01','136.591','0','0','0','0','0','0','0','0','0','2.54875','0','0'),
('70033','16','3003.39','3695.24','143.872','0','0','0','0','0','0','0','0','0','3.39384','0','0'),
('70033','17','2998.54','3693.93','143.998','0','0','0','0','0','0','0','0','0','3.8101','0','0'),
('70033','18','2989.56','3685','142.752','0','0','0','0','0','0','0','0','0','4.20987','0','0'),
('70033','19','2977.48','3662.76','143.141','55000','1961005','0','0','0','0','0','0','0','3.92398','0','0');
UPDATE creature_movement SET waittime = 55000, script_id = 1961005, emote = 0 WHERE id = 70033 AND point = 19;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1961004,1961005); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1961004,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961004,50,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961005,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1961005,50,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Irradiated Worker#3 c.19610 
UPDATE creature_movement SET script_id = 1961005, emote = 0 WHERE id = 70030 AND point = 2;
UPDATE creature_movement SET script_id = 1961004, emote = 0 WHERE id = 70030 AND point = 4;
-- Severed Spirit <Kirin Tor> c.19881
DELETE FROM creature_movement WHERE id = 71007;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('71007','1','2185.75','2250.93','76.4755','0','0','0','0','0','0','0','0','0','4.98898','0','0'),
('71007','2','2187.94','2248.64','76.9761','0','0','0','0','0','0','0','0','0','3.85058','0','0'),
('71007','3','2176.63','2238','75.6206','0','0','0','0','0','0','0','0','0','3.95509','0','0'),
('71007','4','2176.01','2238.64','75.5692','40000','1988101','0','0','0','0','0','0','0','2.34502','0','0'),
('71007','5','2176.67','2237.73','75.625','0','0','0','0','0','0','0','0','0','0.578662','0','0'),
('71007','6','2187.74','2247.21','77.0252','0','0','0','0','0','0','0','0','0','1.83608','0','0'),
('71007','7','2181.11','2255.22','76.3242','0','0','0','0','0','0','0','0','0','3.56239','0','0'),
('71007','8','2180.07','2254.05','76.2372','40000','1988101','0','0','0','0','0','0','0','3.60559','0','0'),
('71007','9','2180.94','2255.17','76.3159','0','0','0','0','0','0','0','0','0','5.1811','0','0'),
('71007','10','2185.36','2250.89','76.4378','0','0','0','0','0','0','0','0','0','3.81843','0','0'),
('71007','11','2183.86','2249.71','76.3138','40000','1988101','0','0','0','0','0','0','0','3.83817','0','0');

DELETE FROM dbscripts_on_creature_movement WHERE id = 1988101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1988101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1988101,35,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Jero'me <Mo'rrisroe's Minion> c.19882
DELETE FROM creature_movement WHERE id = 71028;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 71028;
UPDATE creature_template SET MovementType = 2 WHERE entry = 19882; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 19882;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(19882,1,9369.102539,-7271.153320,6.438106,0,0,0,0,0,0,0,0,0,5.085822,0,0),
(19882,2,9369.939453,-7282.010742,6.028701,0,0,0,0,0,0,0,0,0,4.553330,0,0),
(19882,3,9367.662109,-7287.407715,6.043704,0,0,0,0,0,0,0,0,0,4.564327,0,0),
(19882,4,9366.739258,-7291.028320,6.033945,0,0,0,0,0,0,0,0,0,4.897333,0,0),
(19882,5,9367.386719,-7293.759766,6.077849,0,0,0,0,0,0,0,0,0,5.193422,0,0),
(19882,6,9368.846680,-7295.332031,6.055447,0,0,0,0,0,0,0,0,0,5.785610,0,0),
(19882,7,9370.839844,-7296.559570,6.002626,55000,1988202,0,0,0,0,0,0,0,6.148458,0,0),
(19882,8,9373.992188,-7295.152832,6.033075,0,0,0,0,0,0,0,0,0,0.843879,0,0),
(19882,9,9375.615234,-7291.850586,6.082792,0,0,0,0,0,0,0,0,0,1.828768,0,0),
(19882,10,9374.558594,-7288.240234,6.066258,0,0,0,0,0,0,0,0,0,2.287441,0,0),
(19882,11,9371.155273,-7283.691406,6.009543,0,0,0,0,0,0,0,0,0,1.835837,0,0),
(19882,12,9371.009766,-7271.752441,6.361491,0,0,0,0,0,0,0,0,0,1.140760,0,0),
(19882,13,9372.469727,-7269.143555,6.486478,0,0,0,0,0,0,0,0,0,0.796755,0,0),
(19882,14,9377.165039,-7264.609375,6.426595,0,1988201,0,0,0,0,0,0,0,1.187883,0,0),
(19882,15,9373.852539,-7267.435059,6.522054,0,0,0,0,0,0,0,0,0,3.550361,0,0),
(19882,16,9371.667969,-7268.265137,6.558457,0,0,0,0,0,0,0,0,0,4.092286,0,0),
(19882,17,9370.189453,-7271.831055,6.386025,0,0,0,0,0,0,0,0,0,4.233657,0,0),
(19882,18,9369.839844,-7275.256836,6.207770,35000,1988203,0,0,0,0,0,0,0,4.526608,0,0),
(19882,19,9370.421875,-7270.666992,6.410407,0,0,0,0,0,0,0,0,0,1.083419,0,0),
(19882,20,9374.119141,-7267.657715,6.508181,0,0,0,0,0,0,0,0,0,0.982103,0,0),
(19882,21,9376.311523,-7265.423340,6.455277,0,0,0,0,0,0,0,0,0,1.425853,0,0),
(19882,22,9376.176758,-7262.510742,6.530025,0,0,0,0,0,0,0,0,0,2.065953,0,0),
(19882,23,9374.440430,-7260.192871,6.534329,55000,1988202,0,0,0,0,0,0,0,2.813652,0,0),
(19882,24,9371.209961,-7259.106445,6.511824,0,0,0,0,0,0,0,0,0,3.709792,0,0),
(19882,25,9367.897461,-7261.349121,6.499341,0,0,0,0,0,0,0,0,0,4.533675,0,0),
(19882,26,9367.320313,-7264.825195,6.546020,0,0,0,0,0,0,0,0,0,5.035542,0,0),
(19882,27,9369.051758,-7269.129883,6.489475,0,0,0,0,0,0,0,0,0,4.761436,0,0),
(19882,28,9369.851563,-7283.979492,6.017700,0,1988201,0,0,0,0,0,0,0,4.341251,0,0),
(19882,29,9367.793945,-7288.122559,6.054633,0,0,0,0,0,0,0,0,0,4.638915,0,0),
(19882,30,9366.956055,-7292.995117,6.050140,0,0,0,0,0,0,0,0,0,5.143135,0,0),
(19882,31,9369.373047,-7296.413086,6.028101,0,0,0,0,0,0,0,0,0,6.036128,0,0),
(19882,32,9373.168945,-7295.947266,5.989172,0,0,0,0,0,0,0,0,0,0.751967,0,0),
(19882,33,9375.589844,-7292.797363,6.073355,0,0,0,0,0,0,0,0,0,1.700728,0,0),
(19882,34,9375.041992,-7289.183594,6.063882,0,0,0,0,0,0,0,0,0,2.262288,0,0),
(19882,35,9371.691406,-7283.854004,6.024440,0,0,0,0,0,0,0,0,0,1.749422,0,0),
(19882,36,9370.669922,-7277.214844,6.121726,0,0,0,0,0,0,0,0,0,1.621403,0,0),
(19882,37,9370.479492,-7273.188477,6.290309,0,0,0,0,0,0,0,0,0,1.249909,0,0),
(19882,38,9373.418945,-7268.357910,6.507642,0,1988201,0,0,0,0,0,0,0,0.867420,0,0),
(19882,39,9375.408203,-7261.919922,6.549405,0,0,0,0,0,0,0,0,0,2.264647,0,0),
(19882,40,9372.599609,-7259.901855,6.525498,0,0,0,0,0,0,0,0,0,3.263674,0,0),
(19882,41,9368.984375,-7260.939941,6.542140,0,0,0,0,0,0,0,0,0,3.976816,0,0),
(19882,42,9367.355469,-7262.934570,6.537172,0,0,0,0,0,0,0,0,0,4.726868,0,0),
(19882,43,9368.758789,-7268.067383,6.530116,0,0,0,0,0,0,0,0,0,4.860382,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1988201 AND 1988203; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1988201,1,0,0,0,0,0,0,2000005052,2000005053,2000005054,2000005055,0,0,0,0,''),
(1988202,1,0,0,0,0,0,0,2000000342,0,0,0,0,0,0,0,''),
(1988202,2,15,34664,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1988202,50,14,34664,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1988202,51,0,0,0,0,0,0,2000000343,0,0,0,0,0,0,0,''),
(1988203,2,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(1988203,30,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1988203,31,0,0,0,0,0,0,2000005052,2000005053,2000005054,2000005055,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005052;
UPDATE db_script_string SET emote = 71 WHERE entry = 2000005053;
UPDATE db_script_string SET content_default = 'Spare some change for a starving artist?', emote = 1 WHERE entry = 2000005054;
UPDATE db_script_string SET content_default = 'What up son! Wait....is anyone there? ', emote = 6 WHERE entry = 2000005055;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000342 AND 2000000343;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000342,'%s falls into drunken sleep.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000000343,'%s wakes up and slowly rises to his feet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
-- Tormented Soul <Kirin Tor> c.20512
DELETE FROM creature_movement WHERE id = 72634;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('72634','1','2533.2','2012.43','87.9203','0','0','0','0','0','0','0','0','0','1.568','0','0'),
('72634','2','2531.79','2034.66','87.9203','0','0','0','0','0','0','0','0','0','3.26447','0','0'),
('72634','3','2518.58','2032.61','83.6071','0','0','0','0','0','0','0','0','0','3.11916','0','0'),
('72634','4','2483.29','2032.98','88.1757','60000','2051202','0','0','0','0','0','0','0','3.11131','0','0'),
('72634','5','2495.78','2032.99','87.1445','0','0','0','0','0','0','0','0','0','0.052178','0','0'),
('72634','6','2517.3','2032.81','83.5777','0','0','0','0','0','0','0','0','0','0.417388','0','0'),
('72634','7','2545.59','2038.81','86.4855','0','0','0','0','0','0','0','0','0','4.70566','0','0'),
('72634','8','2545.25','2031.76','87.6698','20000','2051201','0','0','0','0','0','0','0','4.61044','0','0'),
('72634','9','2547.29','2031.1','87.6243','0','0','0','0','0','0','0','0','0','4.74396','0','0'),
('72634','10','2546.79','2008.8','86.8839','0','0','0','0','0','0','0','0','0','3.17552','0','0'),
('72634','11','2533.83','2010.46','87.9191','0','0','0','0','0','0','0','0','0','1.43508','0','0'),
('72634','12','2534.14','2013.06','87.9191','0','0','0','0','0','0','0','0','0','5.66523','0','0'),
('72634','13','2535.21','2012.99','87.9191','20000','2051201','0','0','0','0','0','0','0','0.05024','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2051201,2051202); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2051201,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2051201,17,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2051202,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2051202,55,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Gardok Ripjaw c.19002
DELETE FROM creature_movement WHERE id = 68307;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68307,1,-2675.03,4419.42,36.8669,16000,1900201,0,0,0,0,0,0,0,1.64135,0,0),
(68307,2,-2675.47,4425.67,37.1236,16000,1900201,0,0,0,0,0,0,0,1.64135,0,0),
(68307,3,-2682.4,4426.03,37.1226,16000,1900201,0,0,0,0,0,0,0,1.99867,0,0),
(68307,4,-2691.72,4425.58,37.1219,16000,1900201,0,0,0,0,0,0,0,1.37899,0,0),
(68307,5,-2691.72,4425.58,37.1219,16000,1900201,0,0,0,0,0,0,0,1.64288,0,0),
(68307,6,-2694.04,4420.25,37.1019,16000,1900201,0,0,0,0,0,0,0,4.74521,0,0),
(68307,7,-2691.36,4419.17,37.0531,16000,1900201,0,0,0,0,0,0,0,1.28946,0,0),
(68307,8,-2687.2,4419.84,37.0773,16000,1900201,0,0,0,0,0,0,0,0.874766,0,0),
(68307,9,-2687.26,4425.15,37.1222,16000,1900201,0,0,0,0,0,0,0,1.05305,0,0),
(68307,10,-2675.51,4425.16,37.123,16000,1900201,0,0,0,0,0,0,0,0.000617,0,0),
(68307,11,-2675.51,4425.16,37.123,16000,1900201,0,0,0,0,0,0,0,1.72849,0,0),
(68307,12,-2675.22,4418.99,36.8082,16000,1900201,0,0,0,0,0,0,0,1.84395,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1900201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1900201,3,1,5,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Stonebreaker Grunt c.18973
UPDATE creature_movement SET script_id = 1897301, emote = 0 WHERE id IN (68134,68135,68136,68137,68138,68140) AND point = 1;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1897301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1897301,1,1,36,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Donna Brascoe c.23858
DELETE FROM creature_movement WHERE id = 2070;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(2070,1,6764.76,-7610.55,128.535,10000,0,0,0,0,0,0,0,0,0.935795,0,0),
(2070,2,6757.96,-7613.65,128.073,120000,2385801,0,0,0,0,0,0,0,0.935795,0,0),
(2070,3,6764.76,-7610.55,128.535,900000,0,0,0,0,0,0,0,0,0.935795,0,0),
(2070,4,6770.57,-7607.24,128.457,120000,2385801,0,0,0,0,0,0,0,2.92678,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2385801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2385801,3,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2385801,115,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Apprentice Morlann <Tabetha's Apprentice> c.23600
DELETE FROM creature_movement WHERE id = 18604;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(18604,1,-4044.27,-3393.28,38.1284,0,0,0,0,0,0,0,0,0,2.01224,0,0),
(18604,2,-4044.27,-3393.28,38.1284,4000,2360001,0,0,0,0,0,0,0,2.01224,0,0),
(18604,3,-4045.51,-3394.92,38.1749,2000,0,0,0,0,0,0,0,0,4.18308,0,0),
(18604,4,-4042.77,-3396.91,38.1887,0,0,0,0,0,0,0,0,0,6.00834,0,0),
(18604,5,-4040.72,-3397.23,38.1476,2000,0,0,0,0,0,0,0,0,0.379286,0,0),
(18604,6,-4040.72,-3397.23,38.1476,4000,2360002,0,0,0,0,0,0,0,0.379286,0,0),
(18604,7,-4040.72,-3397.23,38.1476,3000,2360003,0,0,0,0,0,0,0,0.379286,0,0),
(18604,10,-4043.43,-3395.4,38.2663,240000,0,0,0,0,0,0,0,0,3.87463,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2360001,2360002,2360003); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2360001,1,0,0,0,0,0,0,2000005242,0,0,0,0,0,0,0,''),
(2360002,1,0,0,0,0,0,0,2000005243,0,0,0,0,0,0,0,''),
(2360003,1,0,0,0,0,0,0,2000005244,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005242;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005243;
UPDATE db_script_string SET emote = 16 WHERE entry = 2000005244;
-- Miss Danna <School Mistress> c.3513
DELETE FROM creature_movement WHERE id = 84028;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('84028','1','-8824.65','677.359','97.6724','1000','0','0','0','0','0','0','0','0','0.475434','0','0'),
('84028','2','-8844.06','721.315','97.3127','1000','0','0','0','0','0','0','0','0','1.88051','0','0'),
('84028','3','-8794.66','745.738','97.8358','2500','0','0','0','0','0','0','0','0','0.461308','0','0'),
('84028','4','-8765.71','737.339','98.9571','1000','0','0','0','0','0','0','0','0','5.97089','0','0'),
('84028','5','-8744.1','711.742','98.1589','0','0','0','0','0','0','0','0','0','5.41954','0','0'),
('84028','6','-8736.13','717.57','101.035','0','0','0','0','0','0','0','0','0','0.689092','0','0'),
('84028','7','-8714.09','735.726','97.8129','0','0','0','0','0','0','0','0','0','0.689092','0','0'),
('84028','8','-8698.83','714.642','97.0168','0','0','0','0','0','0','0','0','0','5.37793','0','0'),
('84028','9','-8657.55','748.029','96.6892','0','0','0','0','0','0','0','0','0','0.696168','0','0'),
('84028','10','-8658.68','767.899','96.6925','0','0','0','0','0','0','0','0','0','1.39283','0','0'),
('84028','11','-8634.49','787.411','96.6512','1500','0','0','0','0','0','0','0','0','0.689813','0','0'),
('84028','12','-8662.17','821.239','96.6386','0','0','0','0','0','0','0','0','0','0.61677','0','0'),
('84028','13','-8653.53','826.735','96.5285','2000','0','0','0','0','0','0','0','0','0.676461','0','0'),
('84028','14','-8608.62','861.791','96.6798','0','0','0','0','0','0','0','0','0','0.634051','0','0'),
('84028','15','-8600.32','850.058','96.6911','0','0','0','0','0','0','0','0','0','5.34958','0','0'),
('84028','16','-8616.11','837.915','96.7385','3000','0','0','0','0','0','0','0','0','3.89818','0','0'),
('84028','17','-8637.49','816.942','96.6393','2500','0','0','0','0','0','0','0','0','3.91545','0','0'),
('84028','18','-8629.56','781.904','96.6514','0','0','0','0','0','0','0','0','0','4.94588','0','0'),
('84028','19','-8623.89','774.974','96.6518','0','0','0','0','0','0','0','0','0','0.67881','0','0'),
('84028','20','-8623.29','775.529','96.6512','11000','351301','0','0','0','0','0','0','0','0.570434','0','0'),
('84028','21','-8623.29','775.529','96.6512','10000','0','0','0','0','0','0','0','0','0.570434','0','0'),
('84028','22','-8623.29','775.529','96.6512','8000','0','0','0','0','0','0','0','0','0.570434','0','0'),
('84028','23','-8623.29','775.529','96.6512','11000','0','0','0','0','0','0','0','0','0.570434','0','0'),
('84028','24','-8623.29','775.529','96.6512','4000','0','0','0','0','0','0','0','0','0.570434','0','0'),
('84028','25','-8594.06','757.656','96.6537','0','0','0','0','0','0','0','0','0','5.31581','0','0'),
('84028','26','-8578.89','737.947','96.6719','0','0','0','0','0','0','0','0','0','5.29853','0','0'),
('84028','27','-8596.77','717.424','96.6572','1000','0','0','0','0','0','0','0','0','4.04032','0','0'),
('84028','28','-8562.25','673.301','97.0168','0','0','0','0','0','0','0','0','0','5.38428','0','0'),
('84028','29','-8536.52','690.402','97.6668','0','0','0','0','0','0','0','0','0','0.588496','0','0'),
('84028','30','-8522.24','670.618','102.794','0','0','0','0','0','0','0','0','0','5.28283','0','0'),
('84028','31','-8508.77','650.151','100.292','0','0','0','0','0','0','0','0','0','5.31579','0','0'),
('84028','32','-8557.68','615.023','102.352','0','0','0','0','0','0','0','0','0','3.74443','0','0'),
('84028','33','-8568.14','613.353','102.382','0','0','0','0','0','0','0','0','0','3.31113','0','0'),
('84028','34','-8581.15','593.053','103.562','3000','0','0','0','0','0','0','0','0','4.12964','0','0'),
('84028','35','-8585.6','562.85','101.927','1000','0','0','0','0','0','0','0','0','4.57203','0','0'),
('84028','36','-8573.45','540.833','101.757','0','0','0','0','0','0','0','0','0','5.27575','0','0'),
('84028','37','-8535.68','488.072','101.081','0','0','0','0','0','0','0','0','0','5.28282','0','0'),
('84028','38','-8538.69','479.398','102.572','0','351302','0','0','0','0','0','0','0','4.09766','0','0'),
('84028','39','-8548.29','467.484','104.514','0','351303','0','0','0','0','0','0','0','4.18483','0','0'),
('84028','40','-8544.94','464.148','104.414','9000','0','0','0','0','0','0','0','0','5.4187','0','0'),
('84028','41','-8544.94','464.148','104.414','9000','351304','0','0','0','0','0','0','0','5.4187','0','0'),
('84028','42','-8544.94','464.148','104.414','5000','0','0','0','0','0','0','0','0','5.4187','0','0'),
('84028','43','-8544.94','464.148','104.414','1000','0','0','0','0','0','0','0','0','5.4187','0','0'),
('84028','44','-8564.17','466.02','104.524','1000','0','0','0','0','0','0','0','0','3.05461','0','0'),
('84028','45','-8583.28','480.99','104.214','0','0','0','0','0','0','0','0','0','2.16088','0','0'),
('84028','46','-8606.08','504.922','103.722','0','0','0','0','0','0','0','0','0','2.48667','0','0'),
('84028','47','-8633.15','534.792','100.272','0','0','0','0','0','0','0','0','0','2.30773','0','0'),
('84028','48','-8655.92','552.797','96.9437','0','0','0','0','0','0','0','0','0','3.35678','0','0'),
('84028','49','-8671.53','554.116','97.1805','0','0','0','0','0','0','0','0','0','3.22901','0','0'),
('84028','50','-8713.5','519.816','97.1699','0','0','0','0','0','0','0','0','0','3.83377','0','0'),
('84028','51','-8731.17','541.957','101.124','1500','0','0','0','0','0','0','0','0','2.25669','0','0'),
('84028','52','-8749.98','561.766','97.3988','0','0','0','0','0','0','0','0','0','2.38468','0','0'),
('84028','53','-8736.87','574.559','97.3823','0','0','0','0','0','0','0','0','0','0.833519','0','0'),
('84028','54','-8770.53','609.421','97.2463','0','0','0','0','0','0','0','0','0','2.30536','0','0'),
('84028','55','-8795.9','587.923','97.3792','0','0','0','0','0','0','0','0','0','3.8353','0','0'),
('84028','56','-8827.8','624.687','93.8494','0','0','0','0','0','0','0','0','0','2.31713','0','0'),
('84028','57','-8928.94','540.519','94.3157','0','351305','0','0','0','0','0','0','0','3.77404','0','0'),
('84028','58','-8907.67','509.135','93.8416','0','351306','0','0','0','0','0','0','0','5.19562','0','0'),
('84028','59','-8933.21','488.088','93.8429','9000','351307','0','0','0','0','0','0','0','3.92406','0','0'),
('84028','60','-8933.21','488.088','93.8429','8000','0','0','0','0','0','0','0','0','3.92406','0','0'),
('84028','61','-8933.21','488.088','93.8429','2000','0','0','0','0','0','0','0','0','3.92406','0','0'),
('84028','62','-8911.65','505.615','93.8585','0','0','0','0','0','0','0','0','0','0.652114','0','0'),
('84028','63','-8925.24','543.334','94.268','1250','0','0','0','0','0','0','0','0','0.615201','0','0'),
('84028','64','-8833.34','620.843','93.4683','0','0','0','0','0','0','0','0','0','0.863387','0','0'),
('84028','65','-8854.67','660.036','96.8874','0','0','0','0','0','0','0','0','0','2.04072','0','0'),
('84028','66','-8838.52','670.28','98.0987','5000','0','0','0','0','0','0','0','0','0.553153','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 351301 AND 351307; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351301,2,0,0,0,0,0,0,2000005134,0,0,0,0,0,0,0,''),
(351301,11,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351301,30,0,0,0,0,0,0,2000005135,0,0,0,0,0,0,0,''),
(351301,40,0,0,0,0,0,0,2000005136,0,0,0,0,0,0,0,''),
(351302,0,0,0,0,0,0,0,2000005137,0,0,0,0,0,0,0,''),
(351303,0,0,0,0,0,0,0,2000005138,0,0,0,0,0,0,0,''),
(351304,1,0,0,0,0,0,0,2000005139,0,0,0,0,0,0,0,''),
(351304,15,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351305,1,0,0,0,0,0,0,2000005140,0,0,0,0,0,0,0,''),
(351306,1,0,0,0,0,0,0,2000005141,0,0,0,0,0,0,0,''),
(351307,1,0,0,0,0,0,0,2000005142,0,0,0,0,0,0,0,''),
(351307,9,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(351307,17,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Jimmy c.3512
DELETE FROM creature_movement WHERE id = 87082;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('87082','1','-8828.55','678.752','97.3763','4000','0','0','0','0','0','0','0','0','0.488783','0','0'),
('87082','2','-8846.26','718.403','97.4038','0','0','0','0','0','0','0','0','0','1.94413','0','0'),
('87082','3','-8839.19','727.485','97.3521','0','0','0','0','0','0','0','0','0','0.365492','0','0'),
('87082','4','-8796.39','749.604','97.499','0','0','0','0','0','0','0','0','0','0.477804','0','0'),
('87082','5','-8766.29','740.191','98.9599','2000','0','0','0','0','0','0','0','0','5.91827','0','0'),
('87082','6','-8745.14','715.416','98.0983','0','0','0','0','0','0','0','0','0','5.40934','0','0'),
('87082','7','-8739.15','719.933','100.668','0','0','0','0','0','0','0','0','0','0.597986','0','0'),
('87082','8','-8714.91','739.082','97.8092','0','0','0','0','0','0','0','0','0','0.663968','0','0'),
('87082','9','-8699.09','718.858','97.0166','3000','0','0','0','0','0','0','0','0','5.38735','0','0'),
('87082','10','-8664.1','746.406','96.6789','0','0','0','0','0','0','0','0','0','0.624699','0','0'),
('87082','11','-8662.27','768.614','96.6652','0','0','0','0','0','0','0','0','0','0.577584','0','0'),
('87082','12','-8637.2','787.54','96.652','3000','0','0','0','0','0','0','0','0','0.604991','0','0'),
('87082','13','-8661.43','815.607','96.6524','0','0','0','0','0','0','0','0','0','2.18757','0','0'),
('87082','14','-8663.21','821.532','96.643','0','0','0','0','0','0','0','0','0','0.802129','0','0'),
('87082','15','-8656.42','829.358','96.6509','0','0','0','0','0','0','0','0','0','0.553157','0','0'),
('87082','16','-8611.89','864.505','96.6548','0','0','0','0','0','0','0','0','0','0.696098','0','0'),
('87082','17','-8596.65','852.901','96.6516','0','0','0','0','0','0','0','0','0','5.23962','0','0'),
('87082','18','-8614.02','834.865','96.6588','1000','0','0','0','0','0','0','0','0','3.78194','0','0'),
('87082','19','-8634.57','815.485','96.6314','2500','0','0','0','0','0','0','0','0','3.8212','0','0'),
('87082','20','-8628.51','782.498','96.6514','0','0','0','0','0','0','0','0','0','5.02128','0','0'),
('87082','21','-8625.54','777.646','96.6518','0','0','0','0','0','0','0','0','0','0.675668','0','0'),
('87082','22','-8624.87','777.502','96.6512','11000','0','0','0','0','0','0','0','0','0.674151','0','0'),
('87082','23','-8624.87','777.502','96.6512','1000','0','0','0','0','0','0','0','0','0.674151','0','0'),
('87082','24','-8624.87','777.502','96.6512','8000','351201','0','0','0','0','0','0','0','0.674151','0','0'),
('87082','25','-8624.87','777.502','96.6512','11000','0','0','0','0','0','0','0','0','0.674151','0','0'),
('87082','26','-8624.87','777.502','96.6512','6000','0','0','0','0','0','0','0','0','0.674151','0','0'),
('87082','27','-8591.39','759.596','96.6505','0','0','0','0','0','0','0','0','0','5.29382','0','0'),
('87082','28','-8577.88','739.236','96.651','0','0','0','0','0','0','0','0','0','5.6661','0','0'),
('87082','29','-8594.67','716.984','96.652','0','0','0','0','0','0','0','0','0','3.6759','0','0'),
('87082','30','-8561.09','675.142','97.0168','500','0','0','0','0','0','0','0','0','5.42119','0','0'),
('87082','31','-8537.41','691.409','97.6711','2000','0','0','0','0','0','0','0','0','0.638762','0','0'),
('87082','32','-8521.42','671.583','102.776','0','0','0','0','0','0','0','0','0','5.34645','0','0'),
('87082','33','-8508.29','651.563','100.292','0','0','0','0','0','0','0','0','0','5.31579','0','0'),
('87082','34','-8556.75','614.601','102.379','0','0','0','0','0','0','0','0','0','3.7672','0','0'),
('87082','35','-8566.87','612.131','102.513','0','0','0','0','0','0','0','0','0','3.57503','0','0'),
('87082','36','-8579.9','593.423','103.601','4000','0','0','0','0','0','0','0','0','4.22703','0','0'),
('87082','37','-8583.65','566.127','102.213','0','0','0','0','0','0','0','0','0','5.06841','0','0'),
('87082','38','-8571.45','541.923','101.736','0','0','0','0','0','0','0','0','0','5.38728','0','0'),
('87082','39','-8534.2','489.825','100.971','0','0','0','0','0','0','0','0','0','5.10689','0','0'),
('87082','40','-8536.6','478.901','102.805','0','0','0','0','0','0','0','0','0','4.0042','0','0'),
('87082','41','-8546.18','468.666','104.491','0','0','0','0','0','0','0','0','0','5.45718','0','0'),
('87082','42','-8544.4','466.934','104.479','9000','0','0','0','0','0','0','0','0','5.26164','0','0'),
('87082','43','-8544.4','466.934','104.479','9000','0','0','0','0','0','0','0','0','5.26164','0','0'),
('87082','44','-8544.4','466.934','104.479','5000','0','0','0','0','0','0','0','0','5.26164','0','0'),
('87082','45','-8544.4','466.934','104.479','5000','0','0','0','0','0','0','0','0','5.26164','0','0'),
('87082','46','-8564.07','463.416','104.54','1000','0','0','0','0','0','0','0','0','2.42001','0','0'),
('87082','47','-8583.18','478.439','104.214','0','0','0','0','0','0','0','0','0','2.24099','0','0'),
('87082','48','-8607.46','503.038','103.907','0','0','0','0','0','0','0','0','0','2.27618','0','0'),
('87082','49','-8634.89','534.126','100.089','0','0','0','0','0','0','0','0','0','2.38391','0','0'),
('87082','50','-8652.98','550.583','96.8795','0','0','0','0','0','0','0','0','0','2.78893','0','0'),
('87082','51','-8670.77','552.738','97.1511','0','0','0','0','0','0','0','0','0','3.17246','0','0'),
('87082','52','-8711.13','518.3','97.477','0','0','0','0','0','0','0','0','0','3.64684','0','0'),
('87082','53','-8731.13','538.849','101.048','0','0','0','0','0','0','0','0','0','2.2826','0','0'),
('87082','54','-8751.28','558.477','97.3988','0','0','0','0','0','0','0','0','0','2.43809','0','0'),
('87082','55','-8738.89','575.593','97.484','2500','0','0','0','0','0','0','0','0','0.770687','0','0'),
('87082','56','-8771.75','607.111','97.1577','0','0','0','0','0','0','0','0','0','2.4373','0','0'),
('87082','57','-8793.89','586.053','97.3692','1000','0','0','0','0','0','0','0','0','3.80782','0','0'),
('87082','58','-8828.86','622.132','93.9379','1000','0','0','0','0','0','0','0','0','2.11607','0','0'),
('87082','59','-8926.05','539.972','94.2996','1000','0','0','0','0','0','0','0','0','3.81567','0','0'),
('87082','60','-8905.99','511.909','93.8396','0','0','0','0','0','0','0','0','0','5.12572','0','0'),
('87082','61','-8930.57','486.514','93.8497','9000','0','0','0','0','0','0','0','0','3.90521','0','0'),
('87082','62','-8930.57','486.514','93.8497','9000','0','0','0','0','0','0','0','0','3.90521','0','0'),
('87082','63','-8930.57','486.514','93.8497','1500','0','0','0','0','0','0','0','0','3.90521','0','0'),
('87082','64','-8914.79','505.852','93.8737','0','0','0','0','0','0','0','0','0','0.604205','0','0'),
('87082','65','-8926.83','544.679','94.2722','0','0','0','0','0','0','0','0','0','0.714946','0','0'),
('87082','66','-8836.9','621.274','93.2433','0','0','0','0','0','0','0','0','0','0.800555','0','0'),
('87082','67','-8855.66','657.741','96.6688','0','0','0','0','0','0','0','0','0','2.29834','0','0'),
('87082','68','-8841.64','671.515','97.9739','5000','0','0','0','0','0','0','0','0','0.556232','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 351201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351201,1,0,0,0,0,0,0,2000005167,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry = 2000005167;
-- Steven c.3511
DELETE FROM creature_movement WHERE id = 87089;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('87089','1','-8826.06','677.916','97.5542','2500','0','0','0','0','0','0','0','0','1.86323','0','0'),
('87089','2','-8843.75','718.018','97.4619','0','0','0','0','0','0','0','0','0','1.92528','0','0'),
('87089','3','-8838.79','724.25','97.4503','1000','0','0','0','0','0','0','0','0','0.488015','0','0'),
('87089','4','-8795.82','745.104','97.8','2000','0','0','0','0','0','0','0','0','6.11696','0','0'),
('87089','5','-8768.46','737.697','99.1651','2250','0','0','0','0','0','0','0','0','5.52949','0','0'),
('87089','6','-8747.62','714.228','97.94','0','0','0','0','0','0','0','0','0','5.45646','0','0'),
('87089','7','-8737.18','717.452','100.819','0','0','0','0','0','0','0','0','0','0.685951','0','0'),
('87089','8','-8715.49','735.754','97.7995','0','0','0','0','0','0','0','0','0','5.20357','0','0'),
('87089','9','-8699.45','716.141','97.0166','3000','0','0','0','0','0','0','0','0','5.49103','0','0'),
('87089','10','-8662.77','744.582','96.688','0','0','0','0','0','0','0','0','0','0.583859','0','0'),
('87089','11','-8660.23','766.045','96.6976','0','0','0','0','0','0','0','0','0','0.678115','0','0'),
('87089','12','-8634.77','785.552','96.6518','2000','0','0','0','0','0','0','0','0','0.705522','0','0'),
('87089','13','-8659.34','817.23','96.6463','0','0','0','0','0','0','0','0','0','0.65447','0','0'),
('87089','14','-8660.35','820.65','96.6344','0','0','0','0','0','0','0','0','0','0.684319','0','0'),
('87089','15','-8656.48','825.634','96.559','2000','0','0','0','0','0','0','0','0','0.559441','0','0'),
('87089','16','-8612.36','860.098','96.6974','0','0','0','0','0','0','0','0','0','0.689815','0','0'),
('87089','17','-8600.96','852.823','96.6763','3000','0','0','0','0','0','0','0','0','5.40377','0','0'),
('87089','18','-8614.14','837.653','96.7073','3000','0','0','0','0','0','0','0','0','3.88561','0','0'),
('87089','19','-8634.38','819.032','96.6183','2750','0','0','0','0','0','0','0','0','3.77722','0','0'),
('87089','20','-8631.18','784.086','96.6514','0','0','0','0','0','0','0','0','0','5.13124','0','0'),
('87089','21','-8625.42','774.786','96.6518','0','0','0','0','0','0','0','0','0','0.669385','0','0'),
('87089','22','-8624.83','774.875','96.6507','11000','0','0','0','0','0','0','0','0','0.527244','0','0'),
('87089','23','-8624.83','774.875','96.6507','8000','0','0','0','0','0','0','0','0','0.527244','0','0'),
('87089','24','-8624.83','774.875','96.6507','11000','0','0','0','0','0','0','0','0','0.527244','0','0'),
('87089','25','-8624.83','774.875','96.6507','4500','0','0','0','0','0','0','0','0','0.527244','0','0'),
('87089','26','-8594.87','758.784','96.6505','0','0','0','0','0','0','0','0','0','5.32523','0','0'),
('87089','27','-8581.89','740.297','96.7158','0','0','0','0','0','0','0','0','0','5.45875','0','0'),
('87089','28','-8594.21','719.631','96.652','3000','0','0','0','0','0','0','0','0','3.68846','0','0'),
('87089','29','-8563.57','675.422','97.0168','1000','0','0','0','0','0','0','0','0','5.30181','0','0'),
('87089','30','-8537.65','689.755','97.6677','2000','0','0','0','0','0','0','0','0','0.484824','0','0'),
('87089','31','-8523.32','671.768','102.665','0','0','0','0','0','0','0','0','0','5.2899','0','0'),
('87089','32','-8510.12','651.772','100.292','1000','0','0','0','0','0','0','0','0','5.3959','0','0'),
('87089','33','-8555.95','615.875','102.258','0','0','0','0','0','0','0','0','0','3.82061','0','0'),
('87089','34','-8565.66','613.724','102.393','0','0','0','0','0','0','0','0','0','3.78551','0','0'),
('87089','35','-8580.14','595.829','103.448','3500','0','0','0','0','0','0','0','0','4.27416','0','0'),
('87089','36','-8586.54','567.732','102.437','0','0','0','0','0','0','0','0','0','5.05898','0','0'),
('87089','37','-8573.82','542.047','101.775','500','0','0','0','0','0','0','0','0','5.54122','0','0'),
('87089','38','-8536.52','491.195','100.349','0','0','0','0','0','0','0','0','0','5.23255','0','0'),
('87089','39','-8538.05','481.512','102.071','0','0','0','0','0','0','0','0','0','4.26181','0','0'),
('87089','40','-8549.05','470.139','104.452','0','0','0','0','0','0','0','0','0','5.4132','0','0'),
('87089','41','-8546.3','467.188','104.523','9000','0','0','0','0','0','0','0','0','5.42579','0','0'),
('87089','42','-8546.3','467.188','104.523','9000','351101','2000005168','0','0','0','0','0','0','5.42579','0','0'),
('87089','43','-8546.3','467.188','104.523','5000','0','0','0','0','0','0','1','0','5.42579','0','0'),
('87089','44','-8546.3','467.188','104.523','4000','0','0','0','0','0','0','0','0','5.42579','0','0'),
('87089','45','-8562.56','464.348','104.523','0','0','0','0','0','0','0','0','0','2.72474','0','0'),
('87089','46','-8580.09','478.52','104.214','0','0','0','0','0','0','0','0','0','2.33209','0','0'),
('87089','47','-8604.33','503.007','103.721','0','0','0','0','0','0','0','0','0','2.37671','0','0'),
('87089','48','-8631.13','531.403','100.679','0','0','0','0','0','0','0','0','0','2.37763','0','0'),
('87089','49','-8650.91','551.641','97.0577','0','0','0','0','0','0','0','0','0','2.89261','0','0'),
('87089','50','-8668.31','553.721','97.0266','0','0','0','0','0','0','0','0','0','3.26671','0','0'),
('87089','51','-8710.4','520.519','97.3849','0','0','0','0','0','0','0','0','0','3.69396','0','0'),
('87089','52','-8728.29','538.423','100.924','1500','0','0','0','0','0','0','0','0','2.36193','0','0'),
('87089','53','-8748.95','558.368','97.3991','0','0','0','0','0','0','0','0','0','2.39096','0','0'),
('87089','54','-8738.95','573.399','97.3918','3000','0','0','0','0','0','0','0','0','0.667014','0','0'),
('87089','55','-8769.48','607.112','97.0528','0','0','0','0','0','0','0','0','0','2.4373','0','0'),
('87089','56','-8793.17','589.724','97.5603','3000','0','0','0','0','0','0','0','0','3.76383','0','0'),
('87089','57','-8825.83','622.007','94.0185','1500','0','0','0','0','0','0','0','0','2.11921','0','0'),
('87089','58','-8925.46','542.813','94.2745','1000','0','0','0','0','0','0','0','0','3.82509','0','0'),
('87089','59','-8909.21','512.394','93.8432','0','0','0','0','0','0','0','0','0','5.22311','0','0'),
('87089','60','-8929.89','489.754','93.8449','9000','0','0','0','0','0','0','0','0','3.84867','0','0'),
('87089','61','-8929.89','489.754','93.8449','9000','0','0','0','0','0','0','0','0','3.84867','0','0'),
('87089','62','-8929.89','489.754','93.8449','9000','0','0','0','0','0','0','0','0','3.84867','0','0'),
('87089','63','-8914.49','503.293','93.8743','0','0','0','0','0','0','0','0','0','0.61363','0','0'),
('87089','64','-8928.31','541.128','94.3065','0','0','0','0','0','0','0','0','0','0.718873','0','0'),
('87089','65','-8836.62','618.912','93.0259','0','0','0','0','0','0','0','0','0','0.797414','0','0'),
('87089','66','-8852.89','657.834','96.8184','0','0','0','0','0','0','0','0','0','2.17895','0','0'),
('87089','67','-8841.58','669.168','97.9151','6000','0','0','0','0','0','0','0','0','0.55451','0','0');
UPDATE creature_movement SET emote = 0 WHERE id = 87089 AND point = 43;
DELETE FROM dbscripts_on_creature_movement WHERE id = 351101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(351101,9,0,0,0,0,0,0,2000005168,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005134,2000005135,2000005136,2000005139,2000005142,2000005167,2000005168);
-- Neophyte Narama c.25644
DELETE FROM creature_movement WHERE id = 48381;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(48381,1,1758.71,924.822,15.5845,0,0,0,0,0,0,0,0,0,6.18404,0,0),
(48381,2,1769.22,924.316,15.5845,0,0,0,0,0,0,0,0,0,6.12513,0,0),
(48381,3,1771.61,922.168,15.5893,10000,2564401,0,0,0,0,0,0,0,5.57929,0,0),
(48381,4,1769.97,924.453,15.5861,0,0,0,0,0,0,0,0,0,2.85395,0,0),
(48381,5,1758.45,924.509,15.5847,0,0,0,0,0,0,0,0,0,3.17989,0,0),
(48381,6,1757.05,925.586,15.5831,10000,2564401,0,0,0,0,0,0,0,2.48482,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2564401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2564401,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2564401,8,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 25644;
-- Anchorite Elbadon c.25639
DELETE FROM creature_movement WHERE id = 48391;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(48391,1,1761.42,930.421,15.5735,25000,2563901,0,0,0,0,0,0,0,4.74014,0,0),
(48391,2,1777.23,930.708,15.5721,0,0,0,0,0,0,0,0,0,6.23632,0,0),
(48391,3,1777.12,925.108,15.5831,0,0,0,0,0,0,0,0,0,4.64981,0,0),
(48391,4,1772.16,919.292,15.5941,25000,2563901,0,0,0,0,0,0,0,1.61009,0,0),
(48391,5,1754.3,918.357,15.597,0,0,0,0,0,0,0,0,0,4.71238,0,0),
(48391,6,1752.33,918.417,15.597,0,0,0,0,0,0,0,0,0,1.63388,0,0),
(48391,7,1752.1,929.531,15.5757,0,0,0,0,0,0,0,0,0,1.59069,0,0),
(48391,8,1755.95,930.602,15.5723,25000,2563901,0,0,0,0,0,0,0,3.14159,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2563901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2563901,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2563901,11,15,45859,0,25661,10,0x01,0,0,0,0,0,0,0,0,'cast 45859 on buddy'),
(2563901,15,0,0,0,0,0,0,2000005676,2000005677,2000005678,0,0,0,0,0,''),
(2563901,23,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
DELETE FROM db_script_string WHERE entry IN (2000005676,2000005677,2000005678); -- missing text added
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005676,'My the light bless you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005677,'Your wounds are severe, but you will live.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005678,'Rest now, you have fought well today.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
-- Sunspring Post Orphan c.18296
UPDATE creature_movement SET script_id = 1829601, textid1 = 0 WHERE id = 84718 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1829601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1829601,1,0,0,0,0,0,0,2000005147,0,0,0,0,0,0,0,'');
-- Underwater Construction Worker c.28573
DELETE FROM creature WHERE guid = 85178;
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('85178','28573','0','1','0','0','-8651.28','933.201','85.8592','0.683837','25','0','0','350','0','0','2');
DELETE FROM creature_movement WHERE id = 85178;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('85178','1','-8651.28','933.201','85.8592','30000','2857301','0','0','0','0','0','0','0','0.683837','0','0'),
('85178','2','-8654.19','924.929','89.5997','0','0','0','0','0','0','0','0','0','4.46867','0','0'),
('85178','3','-8650.84','923.981','89.7779','0','0','0','0','0','0','0','0','0','5.96486','0','0'),
('85178','4','-8656.33','931.811','87.6045','0','0','0','0','0','0','0','0','0','2.00331','0','0'),
('85178','5','-8646.35','923.302','86.446','0','0','0','0','0','0','0','0','0','5.98291','0','0'),
('85178','6','-8645.55','926.061','85.799','30000','2857301','0','0','0','0','0','0','0','0.727025','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 2857301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2857301,2,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2857301,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Shatterspear Troll c.10919
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85375 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85375 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85378 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85378 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85379 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85379 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85380 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85380 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85529 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85529 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85530 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85530 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85545 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85545 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85546 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85546 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85547 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85547 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85548 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85548 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85549 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85549 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85550 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85550 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85551 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85551 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85552 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85552 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85553 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85553 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85554 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85554 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85555 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85555 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85561 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85561 AND point = 2;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85562 AND point = 1;
UPDATE creature_movement SET script_id = 1091901, emote = 0 WHERE id = 85562 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1091901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1091901,0,1,10,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Shatterspear Drummer c.11196
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85558 AND point = 1;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85558 AND point = 3;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85559 AND point = 1;
UPDATE creature_movement SET waittime = 3500 WHERE id = 85559 AND point = 2;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85559 AND point = 3;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85560 AND point = 1;
UPDATE creature_movement SET script_id = 1119601, emote = 0 WHERE id = 85560 AND point = 3;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1119601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1119601,0,1,36,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Matron Drakia c.18302
UPDATE creature_movement SET script_id = 1830201, textid1 = 0, emote = 0 WHERE id = 65638 AND point = 1;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 3;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 6;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 7;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 8;
UPDATE creature_movement SET script_id = 1830202, emote = 0 WHERE id = 65638 AND point = 9;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1830201,1830202); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1830201,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1830201,10,0,0,0,0,0,0,2000005041,0,0,0,0,0,0,0,''),
(1830201,28,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1830202,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1830202,12,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- Borgrim Stouthammer <Explorers' League> c.21151
DELETE FROM creature_movement WHERE id = 74215;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74215,1,2069.85,6816.89,175.598,12500,0,0,0,0,0,0,0,0,3.87498,0,0),
(74215,2,2069.85,6816.89,175.598,3000,2115101,0,0,0,0,0,0,0,3.87498,0,0),
(74215,3,2069.85,6816.89,175.598,15000,0,0,0,0,0,0,0,0,3.87498,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2115101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2115101,1,1,7,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Bronwyn Stouthammer <Explorers' League> c.21197
DELETE FROM creature_movement WHERE id = 74332;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(74332,1,2055.93,6816.51,175.598,40000,0,0,0,0,0,0,0,0,1.96886,0,0),
(74332,2,2055.93,6816.51,175.598,24000,2119701,0,0,0,0,0,0,0,1.96886,0,0),
(74332,3,2055.93,6816.51,175.598,180000,0,0,0,0,0,0,0,0,1.96886,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2119701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2119701,0,31,21151,50,0,0,0,0,0,0,0,0,0,0,0,''), -- let check if creature is alive
(2119701,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2119701,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2119701,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0192242,''),
(2119701,5,0,0,0,0,0,0,2000005679,0,0,0,0,0,0,0,''),
(2119701,10,0,0,0,21151,50,7,2000005680,2000005056,0,0,0,0,0,0,'force buddy to: say text'), -- 'old text id here' only 1st one is new.
(2119701,15,0,0,0,0,0,0,2000005681,0,0,0,0,0,0,0,''),
(2119701,18,0,0,0,21151,50,7,2000005682,0,0,0,0,0,0,0,'force buddy to: say text'),
(2119701,20,3,0,0,0,0,0,0,0,0,0,0,0,0,1.96886,''),
(2119701,22,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE creature_template_addon SET emote = 69 WHERE entry = 21197;
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005056;
DELETE FROM db_script_string WHERE entry IN (2000005679,2000005680,2000005681,2000005682); -- missing text added
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005679,'Borgrim, this is no time for drinking. We just got here. We need to get settled in.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005680,'I thought this was going to be our chance to get away from it all? Our vacation?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005681,'Men!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000005682,'Women!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
-- Innkeeper Coryth Stoktron <Innkeeper> c.18907
UPDATE creature_movement SET script_id = 1890701, emote = 0 WHERE id = 67880 AND point = 2;
UPDATE creature_movement SET script_id = 1890702, emote = 0 WHERE id = 67880 AND point = 4;
UPDATE creature_movement SET script_id = 1890701, emote = 0 WHERE id = 67880 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1890701,1890702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1890701,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1890702,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Naka <Cooking Trainer & Supplies> c.18993
UPDATE creature_movement SET script_id = 1899301, emote = 0 WHERE id = 68273 AND point = 1;
UPDATE creature_movement SET script_id = 1899301, emote = 0 WHERE id = 68273 AND point = 3;
UPDATE creature_movement SET script_id = 1899302, emote = 0 WHERE id = 68273 AND point = 5;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1899301,1899302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1899301,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1899302,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Warden Moi'bff Jill c.18408
UPDATE creature_movement SET script_id = 1840801, textid1 = 0, textid2 = 0, emote = 0  WHERE id = 65800 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1840801; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1840801,0,1,173,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1840801,10,0,0,0,0,0,0,2000005042,2000005219,0,0,0,0,0,0,''),
(1840801,27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Allerian Defender c.18999
DELETE FROM creature_movement WHERE id IN (68291,68293);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68293,1,-2969.74,3975.3,1.29151,60000,0,0,0,0,0,0,0,0,1.46608,0,0),
(68293,2,-2969.74,3975.3,1.29151,20000,1899901,0,0,0,0,0,0,0,1.46608,0,0),
(68293,3,-2969.74,3975.3,1.29151,180000,0,0,0,0,0,0,0,0,1.46608,0,0);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 68291;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1899901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1899901,5,0,0,0,0,0,0,2000005683,2000005046,2000005684,2000005685,0,0,0,0,''), -- 2000005046 allready in DB (do not change it)
(1899901,10,0,0,0,18999,20,7,2000005686,2000005047,2000005687,2000005688,0,0,0,0,'force buddy to: say text'); -- 2000005047 allready in DB (do not change it)
DELETE FROM db_script_string WHERE entry BETWEEN 2000005683 AND 2000005688; -- missing text added
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005683,'Hey, did you read the bounty on this wanted poster?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005684,'This wanted poster says that they\'re offering gold to these so-called adventurers to go kill things. Isn\'t that what we do? I don\'t think I\'m being paid enough!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005685,'This poster has a bounty on bonelashers. You think I should do that?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005686,'Is that wanted poster all that you\'re going to talk about today?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,NULL),
(2000005687,'I could use the extra money.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005688,'The bonelashers of the wastes are no laughing matter. I hear they carry diseases!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005046,2000005047);
-- Allerian Peasant c.19147
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68468 AND point = 3;
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68468 AND point = 9;
UPDATE creature_movement SET script_id = 1914702, emote = 0 WHERE id = 68469 AND point = 2;
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68469 AND point = 6;
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68470 AND point = 1;
UPDATE creature_movement SET waittime = 4000, script_id = 1914701, emote = 0 WHERE id = 68470 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1914701,1914702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1914701,1,1,381,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1914701,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1914702,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Dockmaster c.6846
UPDATE creature_movement SET script_id = 684601, textid1 = 0 WHERE id = 80737 AND point = 6;
DELETE FROM dbscripts_on_creature_movement WHERE id = 684601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(684601,1,0,0,0,0,0,0,2000005132,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 5 WHERE entry = 2000005132;
-- Dawnblade Blood Knight c.24976
UPDATE creature_movement SET waittime = 5000, script_id = 2497601, textid1 = 0 WHERE id = 94309 AND point = 1;
UPDATE creature_movement SET script_id = 2497602, spell = 0 WHERE id = 94309 AND point = 2;
UPDATE creature_movement SET waittime = 5000, script_id = 2497601, textid1 = 0 WHERE id = 94325 AND point = 1;
UPDATE creature_movement SET script_id = 2497602, spell = 0 WHERE id = 94325 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2497601,2497602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2497601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2497601,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2497601,5,0,0,0,0,0,0,2000005200,0,0,0,0,0,0,0,''),
(2497602,1,15,45105,0,0,0,0,0,0,0,0,0,0,0,0,'cast 45105'),
(2497602,2,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF');
DELETE FROM creature where guid = 96594;
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('96594','25885','530','1','0','0','-1918.05','5334.41','-12.3448','3.35103','180','0','0','5744','3231','0','2');
-- Whirligig Wafflefry <Gnomish Inventor> c.25885 and Harbinger Haronem c.19475
DELETE FROM creature_movement WHERE id IN (96594,96592);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(96594,1,-1918.05,5334.41,-12.428,120000,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,2,-1918.05,5334.41,-12.428,20000,2588501,0,0,0,0,0,0,0,3.35103,0,0),
(96594,3,-1918.05,5334.41,-12.428,120000,0,0,0,0,0,0,0,0,3.35103,0,0),
(96594,4,-1918.05,5334.41,-12.428,60000,2588502,0,0,0,0,0,0,0,3.35103,0,0),
(96594,5,-1918.05,5334.41,-12.428,60000,2588503,0,0,0,0,0,0,0,3.35103,0,0),
(96594,6,-1918.05,5334.41,-12.428,60000,2588504,0,0,0,0,0,0,0,3.35103,0,0),
(96594,7,-1918.05,5334.41,-12.428,60000,2588505,0,0,0,0,0,0,0,3.35103,0,0),
(96594,8,-1918.05,5334.41,-12.428,300000,0,0,0,0,0,0,0,0,3.35103,0,0);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 96592;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2588501 AND 2588505; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2588501,5,0,0,0,0,0,0,2000005201,0,0,0,0,0,0,0,''),
(2588501,7,3,0,0,19475,50,7,0,0,0,0,0,0,0,0.452172,'force buddy to move'),
(2588501,10,0,0,0,19475,50,7,2000005205,0,0,0,0,0,0,0,'force buddy to: say text'),
(2588501,15,3,0,0,19475,50,7,0,0,0,0,0,0,0,3.4383,'force buddy to move'),
(2588502,5,0,0,0,0,0,0,2000005206,0,0,0,0,0,0,0,''),
(2588503,5,0,0,0,0,0,0,2000005207,0,0,0,0,0,0,0,''),
(2588504,5,0,0,0,0,0,0,2000005208,0,0,0,0,0,0,0,''),
(2588505,5,0,0,0,0,0,0,2000005209,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005201; -- this was duplicate with 2000005200 so i'll reuse it.
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005201,'Hey, harbringer, how\'s that research coming along? There might be an Ultra-Kinetic Waffle Iron in it for you if you\'re prompt with the results!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
UPDATE db_script_string SET emote = 6 WHERE entry = 2000005205;
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005206,2000005207,2000005208,2000005209);
-- Wretched Captive c.16916 and Sergeant Kan'ren c.16924 -- update (2 duplicated scripts found)
-- Wretched Captive
UPDATE creature SET MovementType = 0 WHERE guid = 58691;
DELETE FROM creature_movement WHERE id = 58691; 
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1691601,1691602);
-- Sergeant Kan'ren
UPDATE creature_template SET MovementType = 2 WHERE entry = 16924;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 58702;
DELETE FROM creature_movement_template WHERE entry = 16924;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(16924,1,9512.21,-6840.16,16.4934,40000,1692401,0,0,0,0,0,0,0,1.0472,0,0),
(16924,2,9512.21,-6840.16,16.4934,30000,1692402,0,0,0,0,0,0,0,1.0472,0,0),
(16924,3,9512.21,-6840.16,16.4934,40000,1692401,0,0,0,0,0,0,0,1.0472,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1692401,1692402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1692401,0,31,16916,20,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1692401,1,1,20,0,16916,58691,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1692401,18,1,20,0,16916,58691,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1692401,35,1,20,0,16916,58691,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1692402,0,31,16916,20,0,0,0,0,0,0,0,0,0,0,0,''), -- check if creature is alive
(1692402,2,1,20,0,16916,58691,7 | 0x10,0,0,0,0,0,0,0,0,''),
(1692402,10,0,0,0,0,0,0,2000005689,0,0,0,0,0,0,0,''),
(1692402,16,0,0,0,16916,58691,7 | 0x10,2000005036,0,0,0,0,0,0,0,'force buddy to: say text'),
(1692402,23,0,0,0,0,0,0,2000005690,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000005038; -- duplicate removed
DELETE FROM db_script_string WHERE entry IN (2000005689,2000005690);
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005689,'Tell us!  Where does your leader hide?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005690,'You\'re not getting anything until you speak, scum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,274,NULL);
-- Sleyin <Weapon Vendor> c.18926
UPDATE creature_movement SET script_id = 1892601, textid1 = 0 WHERE id = 67954 AND point = 2;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1892601; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1892601,1,0,0,0,0,0,0,2000005045,0,0,0,0,0,0,0,'');
-- Novice Ranger c.16923
DELETE FROM creature_movement WHERE id = 58701;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell,  orientation, model1, model2) VALUES
(58701,1,9520.85,-6858.46,18.6936,120000,0,0,0,0,0,0,0,0,5.39307,0,0),
(58701,2,9520.85,-6858.46,18.6936,60000,1692301,0,0,0,0,0,0,0,5.39307,0,0),
(58701,3,9520.85,-6858.46,18.6936,120000,0,0,0,0,0,0,0,0,5.39307,0,0),
(58701,4,9520.85,-6858.46,18.6936,120000,0,0,0,0,0,0,0,0,5.39307,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1692301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1692301,1,0,0,0,0,0,0,2000005037,0,0,0,0,0,0,0,'');

-- Scryer Arcanist#1 c.18547
DELETE FROM creature_movement WHERE id = 66707;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66707,1,-2214.79,5538.54,66.9942,26000,1854701,0,0,0,0,0,0,0,4.4598,0,0),
(66707,2,-2209.3,5554.63,66.9942,26000,1854701,0,0,0,0,0,0,0,1.4101,0,0),
(66707,3,-2211.49,5554.52,66.9942,0,0,0,0,0,0,0,0,0,1.64093,0,0),
(66707,4,-2211.26,5555.38,66.9934,26000,1854701,0,0,0,0,0,0,0,1.64093,0,0);
-- Scryer Arcanist#2 c.18547
DELETE FROM creature_movement WHERE id = 66706;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66706,1,-2215.98,5543.02,66.9935,0,0,0,0,0,0,0,0,0,2.05811,0,0),
(66706,2,-2219.7,5548.18,67.0148,0,0,0,0,0,0,0,0,0,2.74062,0,0),
(66706,3,-2228.38,5550.67,66.9996,0,0,0,0,0,0,0,0,0,4.38681,0,0),
(66706,4,-2229.81,5547.03,66.9996,26000,1854701,0,0,0,0,0,0,0,4.28785,0,0),
(66706,5,-2224.33,5556.18,66.9955,26000,1854701,0,0,0,0,0,0,0,1.19495,0,0),
(66706,6,-2215.08,5542.75,66.9935,0,0,0,0,0,0,0,0,0,4.55567,0,0),
(66706,7,-2216.67,5539.34,66.9935,26000,1854701,0,0,0,0,0,0,0,4.32084,0,0);
-- Scryer Arcanist#3 c.18547
DELETE FROM creature_movement WHERE id = 66708;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66708,1,-2226.47,5556.73,66.9992,26000,1854701,0,0,0,0,0,0,0,1.31276,0,0),
(66708,2,-2232.98,5552.07,67.0085,0,0,0,0,0,0,0,0,0,4.45043,0,0),
(66708,3,-2233.94,5548.53,67.0081,26000,1854701,0,0,0,0,0,0,0,4.38603,0,0),
(66708,4,-2231.82,5548.28,67.0028,0,0,0,0,0,0,0,0,0,4.37661,0,0),
(66708,5,-2232.12,5547.42,67.0028,26000,1854701,0,0,0,0,0,0,0,4.37661,0,0);
-- Scryer Arcanist#4 c.18547
DELETE FROM creature_movement WHERE id = 66715;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66715,1,-2255.69,5557.02,67.008,0,0,0,0,0,0,0,0,0,5.28137,0,0),
(66715,2,-2251.56,5549.71,67.0626,0,0,0,0,0,0,0,0,0,4.80542,0,0),
(66715,3,-2258.2,5541.57,69.1534,0,0,0,0,0,0,0,0,0,3.77185,0,0),
(66715,4,-2267.8,5537.54,72.0836,0,0,0,0,0,0,0,0,0,2.9244,0,0),
(66715,5,-2274.17,5540.89,75.5327,0,0,0,0,0,0,0,0,0,2.63616,0,0),
(66715,6,-2277.89,5547.22,80.0548,0,0,0,0,0,0,0,0,0,2.02355,0,0),
(66715,7,-2280.06,5551.67,80.0757,0,0,0,0,0,0,0,0,0,3.63361,0,0),
(66715,8,-2281.06,5551.08,80.1344,26000,1854701,0,0,0,0,0,0,0,3.68074,0,0),
(66715,9,-2278.11,5546.89,80.0296,0,0,0,0,0,0,0,0,0,5.26724,0,0),
(66715,10,-2272.26,5538.85,74.237,0,0,0,0,0,0,0,0,0,5.89949,0,0),
(66715,11,-2261.61,5539.01,70.3118,0,0,0,0,0,0,0,0,0,0.905135,0,0),
(66715,12,-2252.47,5549.75,67.2344,0,0,0,0,0,0,0,0,0,1.59471,0,0),
(66715,13,-2257.01,5553.59,66.999,0,0,0,0,0,0,0,0,0,4.0554,0,0),
(66715,14,-2273.11,5538.03,66.9952,26000,1854701,0,0,0,0,0,0,0,3.97764,0,0);
-- Scryer Arcanist#5 c.18547
DELETE FROM creature_movement WHERE id = 66712;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66712,1,-2252.3,5570.06,79.9853,0,0,0,0,0,0,0,0,0,5.82096,0,0),
(66712,2,-2246.73,5564.09,80.074,0,0,0,0,0,0,0,0,0,0.195146,0,0),
(66712,3,-2245.55,5564.22,80.1128,26000,1854701,0,0,0,0,0,0,0,0.062413,0,0),
(66712,4,-2252.45,5569.32,79.9841,0,0,0,0,0,0,0,0,0,1.96779,0,0),
(66712,5,-2254.16,5576.24,79.9524,0,0,0,0,0,0,0,0,0,0.565067,0,0),
(66712,6,-2250.72,5578.75,80.0954,26000,1854701,0,0,0,0,0,0,0,0.67895,0,0),
(66712,7,-2249.8,5576.84,80.0843,0,0,0,0,0,0,0,0,0,0.830476,0,0),
(66712,8,-2249.1,5577.44,80.1194,26000,1854701,0,0,0,0,0,0,0,0.623131,0,0);
-- Scryer Arcanist#6 c.18547
DELETE FROM creature_movement WHERE id = 66713;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66713,1,-2263.46,5544.02,80.0848,0,0,0,0,0,0,0,0,0,5.27189,0,0),
(66713,2,-2263.05,5543.24,80.1178,26000,1854702,0,0,0,0,0,0,0,5.15094,0,0),
(66713,3,-2257.51,5553.02,79.9842,0,0,0,0,0,0,0,0,0,0.779413,0,0),
(66713,4,-2252.86,5555.36,79.9773,0,0,0,0,0,0,0,0,0,5.58684,0,0),
(66713,5,-2250.11,5553.28,80.0816,26000,1854701,0,0,0,0,0,0,0,5.57506,0,0),
(66713,6,-2258.21,5551.96,79.9877,0,0,0,0,0,0,0,0,0,4.3679,0,0),
(66713,7,-2260.4,5546.23,80.0407,0,0,0,0,0,0,0,0,0,5.26322,0,0),
(66713,8,-2259.89,5545.41,80.0769,26000,1854701,0,0,0,0,0,0,0,5.25929,0,0),
(66713,9,-2261.74,5545,80.0693,0,0,0,0,0,0,0,0,0,5.29384,0,0),
(66713,10,-2261.28,5544.07,80.1091,26000,1854701,0,0,0,0,0,0,0,5.11789,0,0);
-- Scryer Arcanist#6 c.18547
DELETE FROM creature_movement WHERE id = 66714;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66714,1,-2255.27,5566.96,67.0072,0,0,0,0,0,0,0,0,0,6.05308,0,0),
(66714,2,-2246.84,5567.16,67.0082,0,0,0,0,0,0,0,0,0,1.26215,0,0),
(66714,3,-2245.71,5578.85,69.2493,0,0,0,0,0,0,0,0,0,2.02477,0,0),
(66714,4,-2252.04,5588.03,72.5323,0,0,0,0,0,0,0,0,0,3.18716,0,0),
(66714,5,-2261.78,5587.98,77.6194,0,0,0,0,0,0,0,0,0,3.78799,0,0),
(66714,6,-2265.42,5584.82,80.0308,0,0,0,0,0,0,0,0,0,3.92465,0,0),
(66714,7,-2268.05,5580.63,79.9532,0,0,0,0,0,0,0,0,0,3.8304,0,0),
(66714,8,-2278.6,5574.33,79.8834,0,0,0,0,0,0,0,0,0,2.70807,0,0),
(66714,9,-2280.24,5575.68,79.9509,26000,1854701,0,0,0,0,0,0,0,2.49915,0,0),
(66714,10,-2278.58,5574.56,79.8899,0,0,0,0,0,0,0,0,0,0.53566,0,0),
(66714,11,-2266.66,5581.33,79.9308,0,0,0,0,0,0,0,0,0,1.31399,0,0),
(66714,12,-2264.98,5585.44,80.0444,0,0,0,0,0,0,0,0,0,0.358151495,0,0),
(66714,13,-2256.03,5588.84,74.4331,0,0,0,0,0,0,0,0,0,6.1277,0,0),
(66714,14,-2247.54,5583.82,70.6266,0,0,0,0,0,0,0,0,0,5.01322,0,0),
(66714,15,-2245.83,5567.45,67.0099,0,0,0,0,0,0,0,0,0,4.05504,0,0),
(66714,16,-2255.13,5566.28,67.0081,0,0,0,0,0,0,0,0,0,1.8999,0,0),
(66714,17,-2256.49,5590.33,66.9943,26000,1854701,0,0,0,0,0,0,0,1.61952,0,0);
-- Scryer Arcanist#7 c.18547
DELETE FROM creature_movement WHERE id = 66711;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66711,1,-2291.97,5574.04,66.997,0,0,0,0,0,0,0,0,0,0.035202,0,0),
(66711,2,-2278.25,5573.54,66.9957,0,0,0,0,0,0,0,0,0,0.738918,0,0),
(66711,3,-2271.67,5578.48,66.9962,0,0,0,0,0,0,0,0,0,2.06545,0,0),
(66711,4,-2273.59,5581.4,66.9946,26000,1854701,0,0,0,0,0,0,0,2.18955,0,0),
(66711,5,-2274.39,5579.08,66.9948,0,0,0,0,0,0,0,0,0,2.43931,0,0),
(66711,6,-2275.33,5579.99,66.9948,26000,1854701,0,0,0,0,0,0,0,2.3427,0,0),
(66711,7,-2278.68,5575.29,66.9948,0,0,0,0,0,0,0,0,0,3.19879,0,0),
(66711,8,-2291.98,5574.83,66.9998,0,0,0,0,0,0,0,0,0,1.41593,0,0),
(66711,9,-2291.19,5578.34,67.0069,26000,1854701,0,0,0,0,0,0,0,1.34917,0,0);
-- Scryer Arcanist#8 c.18547
DELETE FROM creature_movement WHERE id = 66709;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66709,1,-2295.39,5579.79,66.9888,26000,1854701,0,0,0,0,0,0,0,1.28241,0,0),
(66709,2,-2293.78,5570.51,67.0062,0,0,0,0,0,0,0,0,0,4.32977,0,0),
(66709,3,-2294.48,5568.41,67.0084,26000,1854701,0,0,0,0,0,0,0,4.37689,0,0),
(66709,4,-2293.95,5576.48,66.996,0,0,0,0,0,0,0,0,0,1.44343,0,0),
(66709,5,-2293.34,5579.22,66.9973,26000,1854701,0,0,0,0,0,0,0,1.34526,0,0),
(66709,6,-2297.52,5572.98,66.9936,0,0,0,0,0,0,0,0,0,4.2795,0,0),
(66709,7,-2298.49,5570.17,66.9902,26000,1854701,0,0,0,0,0,0,0,4.38081,0,0);
 -- Scryer Arcanist#9 c.18547
DELETE FROM creature_movement WHERE id = 66710;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(66710,1,-2280.82,5552.07,80.1045,26000,1854701,0,0,0,0,0,0,0,2.36993,0,0),
(66710,2,-2278.11,5554.05,79.9794,0,0,0,0,0,0,0,0,0,0.670328,0,0),
(66710,3,-2282.18,5564.63,79.8919,0,0,0,0,0,0,0,0,0,1.97959,0,0),
(66710,4,-2283.11,5566.77,79.8961,5000,0,0,0,0,0,0,0,0,1.97959,0,0),
(66710,5,-2284.28,5566.78,79.9264,26000,1854701,0,0,0,0,0,0,0,3.12941,0,0),
(66710,6,-2284.21,5564.77,79.9488,0,0,0,0,0,0,0,0,0,4.85572,0,0),
(66710,7,-2284.21,5564.77,79.9488,0,0,0,0,0,0,0,0,0,3.33833,0,0),
(66710,8,-2280.13,5564.78,79.8723,0,0,0,0,0,0,0,0,0,6.25137,0,0),
(66710,9,-2278.24,5549.66,80.0242,0,0,0,0,0,0,0,0,0,4.7654,0,0),
(66710,10,-2280.91,5552.21,80.1059,26000,1854701,0,0,0,0,0,0,0,2.3393,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1854701,1854702); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1854701,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1854701,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1854702,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1854702,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1854702,24,1,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Draaca Longtail c.22396
UPDATE creature_movement SET  emote = 0 WHERE id = 78731 AND point = 5;
-- Gava'xi c.18298
UPDATE creature_movement SET  emote = 0 WHERE id = 86608 AND point = 13;
-- Boulder'mok Brute#1 c.21046
DELETE FROM creature_movement WHERE id = 73897;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(73897,1,3603.23,7137.36,140.446,0,0,0,0,0,0,0,0,0,3.86289,0,0),
(73897,2,3588.73,7122.47,140.446,0,0,0,0,0,0,0,0,0,4.04354,0,0),
(73897,3,3588.73,7122.47,140.446,5000,0,0,0,0,0,0,0,0,4.04354,0,0),
(73897,4,3588.73,7122.47,140.446,18000,2104603,0,0,0,0,0,0,0,4.04354,0,0),
(73897,5,3606.15,7137.2,140.446,0,0,0,0,0,0,0,0,0,5.71958,0,0),
(73897,6,3609.74,7136.49,140.571,30000,2104604,0,0,0,0,0,0,0,6.00902,0,0),
(73897,7,3609.74,7136.49,140.571,3000,0,0,0,0,0,0,0,0,6.00902,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2104603,2104604,2104605); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2104603,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104603,4,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104603,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104603,14,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104604,2,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104604,29,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104605,1,1,3,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104605,6,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2104605,16,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_movement WHERE id = 2104604;
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values
('2104604','2','1','233','0','0','0','0','0','0','0','0','0','0','0','0',''),
('2104604','29','1','0','0','0','0','0','0','0','0','0','0','0','0','0','');
-- Boulder'mok Brute#2 c.21046
DELETE FROM creature_movement WHERE id = 73904;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(73904,1,3603.66,7196.44,138.701,0,0,0,0,0,0,0,0,0,2.93142,0,0),
(73904,2,3595.64,7197.24,138.323,55000,2104701,0,0,0,0,0,0,0,2.92906,0,0),
(73904,3,3604.57,7197.61,138.72,0,0,0,0,0,0,0,0,0,0.288551,0,0),
(73904,4,3612.32,7202.37,138.364,0,0,0,0,0,0,0,0,0,0.889381,0,0),
(73904,5,3616.86,7210.92,137.031,25000,2104605,0,0,0,0,0,0,0,0.887025,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2104701;
insert into `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values
('2104701','2','28','1','0','0','0','0','0','0','0','0','0','0','0','0','STATE_SIT'),
('2104701','52','28','0','0','0','0','0','0','0','0','0','0','0','0','0','STATE_STAND');
-- Drillmaster Zurok c.19312
DELETE FROM creature_movement WHERE id = 68898;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('68898','1','-456.882','3061.48','-52.9424','0','0','0','0','0','0','0','0','0','5.42724','0','0'),
('68898','2','-452.976','3054.48','-52.8244','10000','1931201','0','0','0','0','0','0','0','5.08771','0','0'),
('68898','3','-452.054','3073.36','-52.9916','5000','0','0','0','0','0','0','0','0','1.52201','0','0'),
('68898','4','-469.602','3079.04','-51.5688','10000','1931201','0','0','0','0','0','0','0','3.05352','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1931201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1931201,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Bladespire Brute c.19995
DELETE FROM creature_movement WHERE id = 71405;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('71405','1','2301.24','6705.26','28.9711','0','0','0','0','0','0','0','0','0','6.1662','0','0'),
('71405','2','2313.7','6703.8','21.3385','0','0','0','0','0','0','0','0','0','6.06017','0','0'),
('71405','3','2319.83','6701.89','17.2595','0','0','0','0','0','0','0','0','0','5.98163','0','0'),
('71405','4','2326.74','6699.62','17.5159','0','0','0','0','0','0','0','0','0','1.88185','0','0'),
('71405','5','2326.57','6700.19','17.5148','10000','0','0','0','0','0','0','0','0','1.85436','0','0'),
('71405','6','2319.86','6701.96','17.2661','0','0','0','0','0','0','0','0','0','2.78359','0','0'),
('71405','7','2302.77','6704.84','27.4654','0','0','0','0','0','0','0','0','0','2.50476','0','0'),
('71405','8','2302.37','6705.26','28.1344','0','0','0','0','0','0','0','0','0','2.3718','0','0'),
('71405','9','2300.71','6706.73','29.9431','0','0','0','0','0','0','0','0','0','2.56422','0','0'),
('71405','10','2298.41','6708.53','32.2422','0','0','0','0','0','0','0','0','0','2.43897','0','0'),
('71405','11','2293.34','6712.83','36.812','0','0','0','0','0','0','0','0','0','2.33686','0','0'),
('71405','12','2290.82','6716.33','39.9274','0','0','0','0','0','0','0','0','0','1.76257','0','0'),
('71405','13','2291.02','6721.46','39.9328','0','0','0','0','0','0','0','0','0','3.10461','0','0'),
('71405','14','2310.41','6734.76','40.1602','20000','1999501','0','0','0','0','0','0','0','3.10461','0','0'),
('71405','15','2293.1','6725.14','39.8752','0','0','0','0','0','0','0','0','0','4.46827','0','0'),
('71405','16','2289.95','6716.23','39.9856','0','0','0','0','0','0','0','0','0','5.4775','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1999501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1999501,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Expedition Warden c.17855
DELETE FROM creature_movement WHERE id = 63553;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('63553','1','3109.81','6173.95','137.984','0','0','0','0','0','0','0','0','0','1.66934','0','0'),
('63553','2','3109.81','6173.95','137.984','20000','1785502','0','0','0','0','0','0','0','1.66934','0','0'),
('63553','3','3111.17','6148.88','136.75','0','0','0','0','0','0','0','0','0','4.20461','0','0'),
('63553','4','3103.2','6126.75','136.423','0','0','0','0','0','0','0','0','0','4.2228','0','0'),
('63553','5','3099.9','6123.02','135.407','10000','1785501','0','0','0','0','0','0','0','3.86544','0','0'),
('63553','6','3099.9','6123.02','135.407','10000','0','0','0','0','0','0','0','0','3.86544','0','0'),
('63553','7','3106.64','6131.88','136.447','0','0','0','0','0','0','0','0','0','1.17467','0','0'),
('63553','8','3111.01','6148.43','136.714','0','0','0','0','0','0','0','0','0','1.25164','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1785502; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1785502,4,1,3,0,0,0,0,0,0,0,0,0,0,0,0,''),
('1785501','3','0','0','0','17855','10','4','2000005267','2000005268','2000005269','2000005270','0','0','0','0','');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005267 AND 2000005270;
insert into `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) values
('2000005267','What manner of thing would ever serve those sinister Wyrmcult wretches?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL),
('2000005268','How has the Wyrmcult gained so many followers? Where are they coming from?!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL),
('2000005269','The Wyrmcult must be using another path. We are still finding them in Ruuan Weald.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL),
('2000005270','We are to wait here. They sent others ahead to check the tunnel interior.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
-- Albert Quarksprocket c.19271
DELETE FROM creature_movement WHERE id = 68836;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(68836,1,-1737.89,5139.73,-37.3229,715000,0,0,0,0,0,0,0,0,2.03774,0,0),
(68836,2,-1740.95,5139.05,-36.7629,0,0,0,0,0,0,0,0,0,3.19259,0,0),
(68836,3,-1743.18,5138.94,-36.2607,0,0,0,0,0,0,0,0,0,3.19259,0,0),
(68836,4,-1751.3,5139.58,-36.2607,0,0,0,0,0,0,0,0,0,1.77259,0,0),
(68836,5,-1752.33,5142.55,-36.2607,11000,1927101,0,0,0,0,0,0,0,1.81343,0,0),
(68836,6,-1750.27,5143.63,-36.3534,0,0,0,0,0,0,0,0,0,0.713872,0,0),
(68836,7,-1749.59,5145.78,-37.2049,0,0,0,0,0,0,0,0,0,1.26679,0,0),
(68836,8,-1746.59,5145.33,-37.2049,0,0,0,0,0,0,0,0,0,6.13312,0,0),
(68836,9,-1740.9,5143.23,-37.2049,0,0,0,0,0,0,0,0,0,5.92892,0,0),
(68836,10,-1735.95,5139.95,-37.2779,0,0,0,0,0,0,0,0,0,5.70822,0,0),
(68836,11,-1737.58,5140.13,-37.3003,269000,0,0,0,0,0,0,0,0,3.03472,0,0),
(68836,12,-1745.1,5144.54,-37.2038,0,0,0,0,0,0,0,0,0,2.61061,0,0),
(68836,13,-1748.36,5145.45,-37.2038,0,0,0,0,0,0,0,0,0,2.87136,0,0),
(68836,14,-1751.1,5139.39,-36.0873,0,0,0,0,0,0,0,0,0,4.28822,0,0),
(68836,15,-1752.21,5142.52,-36.2611,17000,1927102,0,0,0,0,0,0,0,1.91151495,0,0),
(68836,16,-1749.96,5146.13,-37.2039,0,0,0,0,0,0,0,0,0,1.01075,0,0),
(68836,17,-1743.97,5144.62,-37.2039,0,0,0,0,0,0,0,0,0,6.0373,0,0),
(68836,18,-1736.66,5138.91,-37.325,0,0,0,0,0,0,0,0,0,5.48752,0,0),
(68836,19,-1737.89,5139.73,-37.3229,600000,0,0,0,0,0,0,0,0,2.03774,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1927101,1927102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1927101,1,0,0,0,0,0,0,2000005300,0,0,0,0,0,0,0,''),
(1927101,6,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1927101,10,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1927102,1,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1927102,5,1,21,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1927102,11,0,0,0,0,0,0,2000005301,0,0,0,0,0,0,0,''),
(1927102,14,1,21,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 21 WHERE entry IN (2000005300,2000005301);
-- Peon c.14901
DELETE FROM creature_movement WHERE id = 13775;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(13775,1,-629.313,-3161,92.3242,0,1490101,0,0,0,0,0,0,0,3.79019,0,0),
(13775,2,-624.911,-3156.44,91.7832,0,0,0,0,0,0,0,0,0,0.483361,0,0),
(13775,3,-617.56,-3155.6,91.7512,0,1490102,0,0,0,0,0,0,0,0.161653,0,0),
(13775,4,-617.56,-3155.6,91.7512,240000,1490104,0,0,0,0,0,0,0,0.161653,0,0),
(13775,5,-625.854,-3158.22,91.9782,0,0,0,0,0,0,0,0,0,3.5153,0,0),
(13775,6,-629.313,-3161,92.3242,130000,1490103,0,0,0,0,0,0,0,3.79019,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1490101 AND 1490104; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1490101,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490102,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490103,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1490103,128,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(1490104,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1490104,235,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Horde Guard c.3501
UPDATE creature_movement SET script_id = 350101, emote = 0 WHERE id = 19411 AND point = 8;
DELETE FROM dbscripts_on_creature_movement WHERE id = 350101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(350101,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Honor Hold Gryphon Rider c.20237
DELETE FROM creature_movement WHERE id = 96989;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(96989,1,267.502,1449.24,-14.3756,10000,2023701,0,0,0,0,0,0,0,4.23579,0,0),
(96989,2,267.502,1449.24,-14.3756,60000,2023702,0,0,0,0,0,0,0,4.23579,0,0),
(96989,3,288.012,1484.46,-13.3656,60000,2023702,0,0,0,0,0,0,0,1.08004,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id in (2023702,2023701); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2023702,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2023702,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
('2023701','0','25','20237','1','0','0','0','0','0','0','0','0','0','0','0','RUN ON');
-- Thrallmar Grunt c.16580
Delete from creature_movement WHERE id = 57539;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('57539','1','-1326','2377.83','88.981','20000','0','0','0','0','0','0','0','0','0.488692','0','0'),
('57539','2','-1326','2377.83','88.981','5000','1658003','0','0','0','0','0','0','0','0.488692','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id = 1658003; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1658003,2,1,7,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Thrallmar Grunt - correct spawnpoint 
UPDATE creature SET position_x = 107.232658, position_y = 2587.297607, position_z = 77.836243, orientation = 4.665862, spawndist = 0, MovementType = 0  WHERE guid = 57494;
-- Thrallmar Peon#1 c.16591
DELETE FROM creature_movement WHERE id = 57575;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('57575','1','77.5144','2709.1','84.9611','0','0','0','0','0','0','0','0','0','4.14375','0','0'),
('57575','2','62.8594','2685.37','80.6886','0','0','0','0','0','0','0','0','0','4.51446','0','0'),
('57575','3','64.6422','2665.06','79.6555','0','0','0','0','0','0','0','0','0','4.57728','0','0'),
('57575','4','63.0049','2658.59','79.9118','0','0','0','0','0','0','0','0','0','3.883','0','0'),
('57575','5','54.6084','2653.35','77.8409','0','0','0','0','0','0','0','0','0','4.17674','0','0'),
('57575','6','52.6089','2648.23','76.9436','0','0','0','0','0','0','0','0','0','5.07444','0','0'),
('57575','7','53.5012','2646.71','76.7574','60000','1659101','0','0','0','0','0','0','0','5.19068','0','0'),
('57575','8','52.592','2650.88','77.2736','0','0','0','0','0','0','0','0','0','1.45061','0','0'),
('57575','9','56.6367','2655.56','78.3952','0','0','0','0','0','0','0','0','0','0.598455','0','0'),
('57575','10','63.8203','2659.66','80.0854','0','0','0','0','0','0','0','0','0','1.38071','0','0'),
('57575','11','60.5252','2674.45','79.5513','0','0','0','0','0','0','0','0','0','1.54629','0','0'),
('57575','12','65.6444','2690.33','81.5399','0','0','0','0','0','0','0','0','0','0.981587','0','0'),
('57575','13','83.2996','2716.17','86.2812','0','0','0','0','0','0','0','0','0','0.776599','0','0'),
('57575','14','103.644','2739.71','92.7147','0','0','0','0','0','0','0','0','0','0.850426','0','0'),
('57575','15','115.682','2750.96','96.7339','0','0','0','0','0','0','0','0','0','0.342273','0','0'),
('57575','16','137.196','2762.75','102.954','0','0','0','0','0','0','0','0','0','0.32578','0','0'),
('57575','17','161.242','2773.03','108.803','0','0','0','0','0','0','0','0','0','1.38921','0','0'),
('57575','18','161.223','2785.89','112.037','0','0','0','0','0','0','0','0','0','1.06899','0','0'),
('57575','19','162.436','2788.3','113.354','0','0','0','0','0','0','0','0','0','0.742477','0','0'),
('57575','20','167.472','2792.72','113.323','60000','1659101','0','0','0','0','0','0','0','5.43523','0','0'),
('57575','21','162.989','2788.2','113.363','0','0','0','0','0','0','0','0','0','4.40746','0','0'),
('57575','22','160.333','2773.75','108.853','0','0','0','0','0','0','0','0','0','3.85847','0','0'),
('57575','23','145.282','2764.34','104.921','0','0','0','0','0','0','0','0','0','3.3888','0','0'),
('57575','24','135.222','2762.61','102.557','0','0','0','0','0','0','0','0','0','3.72024','0','0'),
('57575','25','107.177','2744.86','93.9871','0','0','0','0','0','0','0','0','0','4.11451','0','0'),
('57575','26','96','2729.08','89.933','0','0','0','0','0','0','0','0','0','4.1255','0','0');
-- Thrallmar Peon#2 c.16591
DELETE FROM creature_movement WHERE id = 57576;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) values
('57576','1','23.7','2677.07','76.7947','0','0','0','0','0','0','0','0','0','4.65552','0','0'),
('57576','2','29.5186','2662.79','75.5889','0','0','0','0','0','0','0','0','0','5.97498','0','0'),
('57576','3','36.7549','2663.57','76.6482','0','0','0','0','0','0','0','0','0','0.389553','0','0'),
('57576','4','57.1088','2670.26','79.1019','0','0','0','0','0','0','0','0','0','5.93525','0','0'),
('57576','5','65.1478','2663.53','79.9572','0','0','0','0','0','0','0','0','0','5.34777','0','0'),
('57576','6','68.2604','2653.86','80.6543','0','0','0','0','0','0','0','0','0','4.51761','0','0'),
('57576','7','66.6964','2647.89','79.1051','60000','1659102','0','0','0','0','0','0','0','4.01889','0','0'),
('57576','8','69.3452','2654.17','80.9377','0','0','0','0','0','0','0','0','0','1.86925','0','0'),
('57576','9','65.8566','2661.81','80.4231','0','0','0','0','0','0','0','0','0','2.45123','0','0'),
('57576','10','54.4738','2667.41','78.6493','0','0','0','0','0','0','0','0','0','3.32538','0','0'),
('57576','11','41.6966','2665.8','77.3675','0','0','0','0','0','0','0','0','0','3.71022','0','0'),
('57576','12','31.8775','2658.08','75.2857','0','0','0','0','0','0','0','0','0','4.39666','0','0'),
('57576','13','32.2505','2643.01','74.3166','0','0','0','0','0','0','0','0','0','5.25981','0','0'),
('57576','14','35.6496','2635.57','75.9404','0','0','0','0','0','0','0','0','0','5.43495','0','0'),
('57576','15','41.5567','2626.67','74.4366','0','0','0','0','0','0','0','0','0','6.22431','0','0'),
('57576','16','45.3727','2626.16','73.861','60000','1659101','0','0','0','0','0','0','0','0.135119','0','0'),
('57576','17','42.0584','2627.08','74.4471','0','0','0','0','0','0','0','0','0','2.53294','0','0'),
('57576','18','33.2927','2635.99','75.411','0','0','0','0','0','0','0','0','0','2.20307','0','0'),
('57576','19','32.4661','2641.63','74.3467','0','0','0','0','0','0','0','0','0','1.65329','0','0'),
('57576','20','27.458','2663.08','75.3224','0','0','0','0','0','0','0','0','0','1.86142','0','0'),
('57576','21','24.2932','2669.6','76.2387','0','0','0','0','0','0','0','0','0','1.78838','0','0'),
('57576','22','23.1339','2680.03','76.8103','0','0','0','0','0','0','0','0','0','0.750085','0','0'),
('57576','23','26.3861','2681.9','77.2808','60000','1659101','0','0','0','0','0','0','0','0.227795','0','0');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1659101,1659102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1659101,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1659101,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1659102,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1659102,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Karlee Chaddis c.2330 + Paige Chaddis c.2331 and Gil c.3504
DELETE FROM creature_movement WHERE id = 90439;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(90439,10,-8899.88,815.041,89.3389,0,0,0,0,0,0,0,0,0,1.61278,0,0),
(90439,9,-8899.1,801.189,87.6105,2000,0,0,0,0,0,0,0,0,0.905926,0,0),
(90439,8,-8906.29,794.423,87.3173,0,0,0,0,0,0,0,0,0,1.03552,0,0),
(90439,7,-8907.48,788.261,87.7863,0,0,0,0,0,0,0,0,0,2.23875,0,0),
(90439,6,-8883.45,758.191,95.4731,2000,0,0,0,0,0,0,0,0,2.48536,0,0),
(90439,5,-8879.54,756.138,96.2687,0,0,0,0,0,0,0,0,0,2.91262,0,0),
(90439,4,-8870.51,760.372,96.7027,0,0,0,0,0,0,0,0,0,2.45148,0,0),
(90439,3,-8866.15,756.326,97.8264,2000,0,0,0,0,0,0,0,0,2.16089,0,0),
(90439,2,-8860.26,747.938,99.9222,0,0,0,0,0,0,0,0,0,2.15696,0,0),
(90439,1,-8856.26,741.91,100.666,0,0,0,0,0,0,0,0,0,2.15696,0,0),
(90439,11,-8899.09,826.687,92.5864,0,0,0,0,0,0,0,0,0,1.612,0,0),
(90439,12,-8905.65,841.38,95.4271,4000,0,0,0,0,0,0,0,0,2.0691,0,0),
(90439,13,-8905.3,845.868,95.7969,0,0,0,0,0,0,0,0,0,1.25386,0,0),
(90439,14,-8898.15,863.912,96.2546,0,0,0,0,0,0,0,0,0,1.15097,0,0),
(90439,15,-8893.39,873.065,98.9773,2000,0,0,0,0,0,0,0,0,1.18867,0,0),
(90439,16,-8888.58,889.208,102.944,0,0,0,0,0,0,0,0,0,1.23108,0,0),
(90439,17,-8888.8,897.531,105.943,0,0,0,0,0,0,0,0,0,1.85783,0,0),
(90439,18,-8896.33,913.303,110.988,2000,0,0,0,0,0,0,0,0,2.08559,0,0),
(90439,19,-8904.33,926.304,114.899,0,0,0,0,0,0,0,0,0,2.1657,0,0),
(90439,20,-8919.41,948.481,117.337,2000,0,0,0,0,0,0,0,0,2.38247,0,0),
(90439,21,-8966.43,954.028,117.362,0,0,0,0,0,0,0,0,0,3.01629,0,0),
(90439,22,-8982.42,966.381,116.043,4000,0,0,0,0,0,0,0,0,2.73433,0,0),
(90439,23,-8999.42,964.996,116.326,0,0,0,0,0,0,0,0,0,3.39643,0,0),
(90439,24,-9012.36,953.626,116.256,2000,0,0,0,0,0,0,0,0,4.26115,0,0),
(90439,25,-9008.41,945.283,116.895,0,0,0,0,0,0,0,0,0,5.53821,0,0),
(90439,26,-9000.86,940.914,117.094,0,0,0,0,0,0,0,0,0,5.82645,0,0),
(90439,27,-8998.38,939.901,117.094,2000,0,0,0,0,0,0,0,0,5.91284,0,0),
(90439,28,-8996.34,945.169,117.097,22000,233001,0,0,0,0,0,0,0,1.17061,0,0),
(90439,29,-8999.05,940.572,117.096,0,0,0,0,0,0,0,0,0,4.25251,0,0),
(90439,30,-9002.62,941.706,117.095,0,0,0,0,0,0,0,0,0,2.66993,0,0),
(90439,31,-9012.38,947.61,116.227,2000,0,0,0,0,0,0,0,0,2.48301,0,0),
(90439,32,-9012.45,951.694,116.246,0,0,0,0,0,0,0,0,0,1.07008,0,0),
(90439,33,-9004.83,961.988,116.276,0,0,0,0,0,0,0,0,0,0.834459,0,0),
(90439,34,-8998.64,965.802,116.292,4000,0,0,0,0,0,0,0,0,0.086759,0,0),
(90439,35,-8983.94,966.422,116.028,0,0,0,0,0,0,0,0,0,0.063197,0,0),
(90439,36,-8980.01,965.284,116.256,0,0,0,0,0,0,0,0,0,5.80289,0,0),
(90439,37,-8957.87,953.377,117.299,2000,0,0,0,0,0,0,0,0,5.77933,0,0),
(90439,38,-8920.67,947.641,117.337,0,0,0,0,0,0,0,0,0,6.1304,0,0),
(90439,39,-8900.95,920.6,113.443,0,0,0,0,0,0,0,0,0,5.2806,0,0),
(90439,40,-8894.54,911.478,110.762,2000,0,0,0,0,0,0,0,0,0.551718,0,0),
(90439,41,-8877.53,920.808,107.603,0,0,0,0,0,0,0,0,0,0.508521,0,0),
(90439,42,-8854.97,933.374,101.999,0,0,0,0,0,0,0,0,0,0.508521,0,0),
(90439,43,-8848.88,930.711,102.495,3000,0,0,0,0,0,0,0,0,0.572924,0,0),
(90439,44,-8834.61,940.936,105.143,0,0,0,0,0,0,0,0,0,0.576851,0,0),
(90439,45,-8818.28,953.205,100.678,0,0,0,0,0,0,0,0,0,0.576065,0,0),
(90439,46,-8815.14,952.722,100.867,4000,0,0,0,0,0,0,0,0,5.93091,0,0),
(90439,47,-8804.01,942.261,101.241,0,0,0,0,0,0,0,0,0,0.612193,0,0),
(90439,48,-8802.37,936.981,101.242,0,0,0,0,0,0,0,0,0,5.3827,0,0),
(90439,49,-8777.24,909.299,100.262,3000,0,0,0,0,0,0,0,0,5.43768,0,0),
(90439,50,-8766.76,893.892,101.386,0,0,0,0,0,0,0,0,0,5.57355,0,0),
(90439,51,-8737.03,892.761,101.221,0,0,0,0,0,0,0,0,0,6.22072,0,0),
(90439,52,-8731.93,886.272,101.744,3000,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,53,-8723.13,875.04,102.678,0,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,54,-8712.31,861.661,97.2752,0,0,0,0,0,0,0,0,0,5.39605,0,0),
(90439,55,-8712.2,853.618,96.8655,3000,0,0,0,0,0,0,0,0,4.39388,0,0),
(90439,56,-8725.87,834.533,96.149,0,0,0,0,0,0,0,0,0,4.1614,0,0),
(90439,57,-8726.58,813.587,97.0276,4000,0,0,0,0,0,0,0,0,4.89182,0,0),
(90439,58,-8717.15,795.784,97.0391,4000,0,0,0,0,0,0,0,0,4.9201,0,0),
(90439,59,-8721.79,782.622,97.8839,0,0,0,0,0,0,0,0,0,4.11114,0,0),
(90439,60,-8732.2,766.047,98.0898,0,0,0,0,0,0,0,0,0,4.3444,0,0),
(90439,61,-8724.93,751.443,98.2043,2000,0,0,0,0,0,0,0,0,5.41804,0,0),
(90439,62,-8713.3,732.548,97.8146,4000,0,0,0,0,0,0,0,0,5.42668,0,0),
(90439,63,-8699.05,715.705,97.0168,0,0,0,0,0,0,0,0,0,5.42668,0,0),
(90439,64,-8661.63,744.699,96.6531,2000,0,0,0,0,0,0,0,0,0.754345,0,0),
(90439,65,-8660.26,765.872,96.6997,0,0,0,0,0,0,0,0,0,1.31041,0,0),
(90439,66,-8634.36,787.361,96.6525,2000,0,0,0,0,0,0,0,0,0.685231,0,0),
(90439,67,-8632.43,787.372,96.6512,2000,0,0,0,0,0,0,0,0,0.394633,0,0),
(90439,68,-8606.16,761.17,96.7387,0,0,0,0,0,0,0,0,0,5.49894,0,0),
(90439,69,-8592.08,756.77,96.651,1000,0,0,0,0,0,0,0,0,5.91598,0,0),
(90439,70,-8579.7,737.671,96.7114,4000,0,0,0,0,0,0,0,0,4.61379,0,0),
(90439,71,-8594.53,717.706,96.6514,0,0,0,0,0,0,0,0,0,4.03574,0,0),
(90439,72,-8581.67,697.638,97.0168,0,0,0,0,0,0,0,0,0,5.41254,0,0),
(90439,73,-8561.08,673.827,97.0168,2000,0,0,0,0,0,0,0,0,0.603542,0,0),
(90439,74,-8536.53,690.079,97.6665,0,0,0,0,0,0,0,0,0,5.39731,0,0),
(90439,75,-8528.41,679.123,100.793,0,0,0,0,0,0,0,0,0,5.3439,0,0),
(90439,76,-8517.6,662.84,102.123,2000,0,0,0,0,0,0,0,0,5.3439,0,0),
(90439,77,-8510.36,651.605,100.292,0,0,0,0,0,0,0,0,0,5.24573,0,0),
(90439,78,-8516.68,643.439,100.134,2000,0,0,0,0,0,0,0,0,3.75426,0,0),
(90439,79,-8557.25,615.273,102.337,2000,0,0,0,0,0,0,0,0,3.42125,0,0),
(90439,80,-8563.65,615.408,102.278,0,0,0,0,0,0,0,0,0,3.78646,0,0),
(90439,81,-8583.79,586.194,103.594,0,0,0,0,0,0,0,0,0,4.3598,0,0),
(90439,82,-8584.4,560.743,101.871,4000,0,0,0,0,0,0,0,0,5.1397,0,0),
(90439,83,-8578.23,543.501,101.782,0,0,0,0,0,0,0,0,0,3.81238,0,0),
(90439,84,-8593.35,530.953,105.659,2000,0,0,0,0,0,0,0,0,3.80845,0,0),
(90439,85,-8609.85,515.571,103.841,2000,0,0,0,0,0,0,0,0,3.97025,0,0),
(90439,86,-8616.86,517.629,103.218,0,0,0,0,0,0,0,0,0,2.3162,0,0),
(90439,87,-8657.5,553.006,96.9502,2000,0,0,0,0,0,0,0,0,2.64214,0,0),
(90439,88,-8673.57,552.873,97.2864,2000,0,0,0,0,0,0,0,0,3.2249,0,0),
(90439,89,-8713.67,519.808,97.1597,0,0,0,0,0,0,0,0,0,2.19446,0,0),
(90439,90,-8717.22,524.985,98.1892,0,0,0,0,0,0,0,0,0,2.27221,0,0),
(90439,91,-8745.36,557.023,97.6718,2000,0,0,0,0,0,0,0,0,2.37371,0,0),
(90439,92,-8745,566.133,97.4006,0,0,0,0,0,0,0,0,0,1.01418,0,0),
(90439,93,-8738.14,576.508,97.5043,0,0,0,0,0,0,0,0,0,2.44518,0,0),
(90439,94,-8769.94,608.175,97.1405,2000,0,0,0,0,0,0,0,0,2.38706,0,0),
(90439,95,-8795.54,589.658,97.4546,4000,0,0,0,0,0,0,0,0,2.33208,0,0),
(90439,96,-8832.6,630.401,94.0918,0,0,0,0,0,0,0,0,0,2.28496,0,0),
(90439,97,-8851.55,661.112,97.1319,0,0,0,0,0,0,0,0,0,0.659181,0,0),
(90439,98,-8824.74,678.622,97.5366,10000,0,0,0,0,0,0,0,0,1.97629,0,0),
(90439,99,-8847.34,726.835,97.6974,10000,0,0,0,0,0,0,0,0,2.05091,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 233001; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(233001,2,0,0,0,0,0,0,2000005180,0,0,0,0,0,0,0,''),
(233001,7,0,0,0,2331,30,7,2000005183,0,0,0,0,0,0,0,'force buddy to: say text'),
(233001,12,0,0,0,0,0,0,2000005181,0,0,0,0,0,0,0,''),
(233001,15,0,0,0,3504,30,7,2000005184,0,0,0,0,0,0,0,'force buddy to: say text'),
(233001,19,0,0,0,0,0,0,2000005182,0,0,0,0,0,0,0,'');
UPDATE db_script_string SET emote = 1 WHERE entry IN (2000005180,2000005181,2000005182,2000005183,2000005184);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 90443; -- Gil c.3504
DELETE FROM creature_movement WHERE id = 90443;
UPDATE creature SET position_x = -8856.097656, position_y = 740.346375, position_z = 100.655151, orientation = 2.094842, MovementType = 0, spawndist = 0  WHERE guid = 90440; -- Paige Chaddis correct spawn point
DELETE FROM creature_movement WHERE id = 90440; -- Paige Chaddis c.2331
DELETE FROM creature_linking_template WHERE entry IN (2331,3504); -- link between 'Karlee Chaddis' with 'Gil + Paige Chaddis'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(2331,0,2330,656,20),
(3504,0,2330,656,20);

-- Janey Anship c.1413 -- script redone completly - all randomized texts added ;)
DELETE FROM creature_movement WHERE id = 86596;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(86596,1,-8953.9,862.547,104.957,0,0,0,0,0,0,0,0,0,6.10494,0,0),
(86596,2,-8932.12,857.927,100.803,750,0,0,0,0,0,0,0,0,6.06331,0,0),
(86596,3,-8909.04,850.187,96.281,0,0,0,0,0,0,0,0,0,5.95964,0,0),
(86596,4,-8896.57,865.822,96.8556,0,0,0,0,0,0,0,0,0,0.87497,0,0),
(86596,5,-8890.18,881.888,101.184,0,0,0,0,0,0,0,0,0,1.19227,0,0),
(86596,6,-8888.17,893.701,104.619,0,141301,0,0,0,0,0,0,0,1.40276,0,0), -- Janey Anship
(86596,7,-8894.17,909.79,110.395,0,0,0,0,0,0,0,0,0,1.9274,0,0),
(86596,8,-8870.31,923.272,105.91,0,0,0,0,0,0,0,0,0,0.503477,0,0),
(86596,9,-8855.94,931.187,101.845,0,0,0,0,0,0,0,0,0,0.503477,0,0),
(86596,10,-8843.91,933.491,104.097,500,0,0,0,0,0,0,0,0,0.189317,0,0),
(86596,11,-8816.65,953.442,100.743,0,141304,0,0,0,0,0,0,0,0.530966,0,0), -- Lisan Pierce
(86596,12,-8767.52,895.508,101.256,0,0,0,0,0,0,0,0,0,5.41064,0,0),
(86596,13,-8753.45,892,101.896,0,0,0,0,0,0,0,0,0,6.03896,0,0),
(86596,14,-8740.3,893.588,101.375,0,0,0,0,0,0,0,0,0,0.120202,0,0),
(86596,15,-8726.64,877.216,102.712,0,0,0,0,0,0,0,0,0,5.4075,0,0),
(86596,16,-8711.78,859.391,96.9622,1250,0,0,0,0,0,0,0,0,5.4075,0,0),
(86596,17,-8714.17,851.672,96.7801,1250,0,0,0,0,0,0,0,0,4.41162,0,0),
(86596,18,-8724.59,835.118,96.1396,0,0,0,0,0,0,0,0,0,4.15087,0,0),
(86596,19,-8727.53,820.133,97.0495,0,0,0,0,0,0,0,0,0,4.51843,0,0),
(86596,20,-8723.35,807.987,97.2959,0,0,0,0,0,0,0,0,0,5.02973,0,0),
(86596,21,-8717.8,795.688,96.9682,0,0,0,0,0,0,0,0,0,5.13654,0,0),
(86596,22,-8720.86,784.235,97.7513,0,0,0,0,0,0,0,0,0,4.45167,0,0),
(86596,23,-8730.39,769.812,98.1267,750,0,0,0,0,0,0,0,0,4.13751,0,0),
(86596,24,-8729.96,761.621,98.2494,0,0,0,0,0,0,0,0,0,4.76583,0,0),
(86596,25,-8726.06,753.976,98.2668,0,141306,0,0,0,0,0,0,0,5.18366,0,0), -- Suzanne
(86596,26,-8714.42,737.952,97.8087,0,0,0,0,0,0,0,0,0,5.34074,0,0),
(86596,27,-8728.74,725.086,101.267,0,0,0,0,0,0,0,0,0,3.87362,0,0),
(86596,28,-8738.14,715.533,100.152,500,0,0,0,0,0,0,0,0,4.05897,0,0),
(86596,29,-8742.74,709.527,98.3091,0,0,0,0,0,0,0,0,0,4.05897,0,0),
(86596,30,-8737.21,700.627,98.6984,0,141302,0,0,0,0,0,0,0,5.26849,0,0), --  Janey Anship
(86596,31,-8776.23,670.457,103.093,0,0,0,0,0,0,0,0,0,3.83749,0,0),
(86596,32,-8760.45,646.994,103.883,0,0,0,0,0,0,0,0,0,5.30462,0,0),
(86596,33,-8759.11,627.771,101.892,0,0,0,0,0,0,0,0,0,4.78861,0,0),
(86596,34,-8763.21,616.245,98.6119,0,0,0,0,0,0,0,0,0,4.37078,0,0),
(86596,35,-8779.99,602.334,97.3893,0,0,0,0,0,0,0,0,0,3.87048,0,0),
(86596,36,-8793.37,590.39,97.5755,500,0,0,0,0,0,0,0,0,3.87048,0,0),
(86596,37,-8815.81,615.518,94.9978,0,0,0,0,0,0,0,0,0,2.29968,0,0),
(86596,38,-8849.81,659.507,97.1312,0,0,0,0,0,0,0,0,0,2.21721,0,0),
(86596,39,-8834.43,672.377,98.2964,0,0,0,0,0,0,0,0,0,0.696682,0,0),
(86596,40,-8825.5,677.093,97.6638,0,0,0,0,0,0,0,0,0,0.486195,0,0),
(86596,41,-8838.31,708.928,97.6485,500,0,0,0,0,0,0,0,0,1.95332,0,0),
(86596,42,-8851.32,736.847,100.505,0,0,0,0,0,0,0,0,0,2.00673,0,0),
(86596,43,-8870.66,759.965,96.6871,0,0,0,0,0,0,0,0,0,2.26748,0,0),
(86596,44,-8880.96,756.982,96.1098,0,0,0,0,0,0,0,0,0,3.42359,0,0),
(86596,45,-8909.67,790.199,87.4738,0,0,0,0,0,0,0,0,0,2.27062,0,0),
(86596,46,-8918.12,784.468,87.4199,0,141307,0,0,0,0,0,0,0,3.73775,0,0), -- Suzanne
(86596,47,-8930.34,773.156,87.9818,0,0,0,0,0,0,0,0,0,3.89482,0,0),
(86596,48,-8961.17,770.851,93.8524,0,0,0,0,0,0,0,0,0,3.21624,0,0),
(86596,49,-8980.98,783.189,98.0365,0,0,0,0,0,0,0,0,0,2.58478,0,0),
(86596,50,-8990.43,800.731,102.354,0,0,0,0,0,0,0,0,0,2.08448,0,0),
(86596,51,-8994.98,823.243,104.806,0,0,0,0,0,0,0,0,0,1.77032,0,0),
(86596,52,-8990.49,849.74,105.812,0,0,0,0,0,0,0,0,0,1.40276,0,0),
(86596,53,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,54,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,55,-8992.48,859.067,105.647,12000,141305,0,0,0,0,0,0,0,5.51011,0,0), -- Lisan Pierce
(86596,56,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,57,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,58,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,59,-8992.48,859.067,105.647,12000,141303,0,0,0,0,0,0,0,5.51011,0,0), -- Janey Anship
(86596,60,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,61,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,62,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0),
(86596,63,-8992.48,859.067,105.647,12000,0,0,0,0,0,0,0,0,5.51011,0,0);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 86597; -- Lisan Pierce c.1414 
DELETE FROM creature_movement WHERE id = 86597;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid = 89294; -- Suzanne c.1415
DELETE FROM creature_movement WHERE id = 89294;
DELETE FROM creature_linking_template WHERE entry IN (1414,1415); -- link between 'Janey Anship' with 'Lisan Pierce + Suzanne'
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(1414,0,1413,656,30),
(1415,0,1413,656,30);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 141301 AND 141307; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- for Janey Anship
(141301,1,0,0,0,0,0,0,2000005148,2000005149,2000005150,2000005151,0,0,0,0,''),
(141301,4,0,0,0,1414,30,7,2000005156,2000005157,2000005158,2000005159,0,0,0,0,'force buddy to: say text'),
(141301,8,0,0,0,1415,30,7,2000005164,2000005165,2000005166,2000005169,0,0,0,0,'force buddy to: say text'),
(141302,1,0,0,0,0,0,0,2000005152,2000005153,2000005154,2000005155,0,0,0,0,''),
(141302,4,0,0,0,1415,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141302,8,0,0,0,1414,30,7,2000005170,2000005171,2000005172,2000005173,0,0,0,0,'force buddy to: say text'),
(141303,1,0,0,0,0,0,0,2000005149,2000005151,2000005153,2000005155,0,0,0,0,''),
(141303,4,0,0,0,1414,30,7,2000005156,2000005158,2000005160,2000005162,0,0,0,0,'force buddy to: say text'),
(141303,8,0,0,0,1415,30,7,2000005164,2000005172,2000005170,2000005166,0,0,0,0,'force buddy to: say text'),
-- for Lisan Pierce
(141304,1,0,0,0,1414,30,7,2000005148,2000005149,2000005150,2000005151,0,0,0,0,'force buddy to: say text'),
(141304,4,0,0,0,0,0,0,2000005156,2000005157,2000005158,2000005159,0,0,0,0,''),
(141304,8,0,0,0,1415,30,7,2000005164,2000005165,2000005166,2000005169,0,0,0,0,'force buddy to: say text'),
(141305,1,0,0,0,1414,30,7,2000005152,2000005153,2000005154,2000005155,0,0,0,0,'force buddy to: say text'),
(141305,4,0,0,0,1415,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141305,8,0,0,0,0,0,0,2000005170,2000005171,2000005172,2000005173,0,0,0,0,''),
-- for Suzanne
(141306,1,0,0,0,1415,30,7,2000005152,2000005153,2000005154,2000005155,0,0,0,0,'force buddy to: say text'),
(141306,4,0,0,0,1414,30,7,2000005160,2000005161,2000005162,2000005163,0,0,0,0,'force buddy to: say text'),
(141306,8,0,0,0,0,0,0,2000005170,2000005171,2000005172,2000005173,0,0,0,0,''),
(141307,1,0,0,0,1415,30,7,2000005148,2000005149,2000005150,2000005151,0,0,0,0,'force buddy to: say text'),
(141307,4,0,0,0,0,0,0,2000005156,2000005157,2000005158,2000005159,0,0,0,0,''),
(141307,8,0,0,0,1414,30,7,2000005170,2000005171,2000005172,2000005173,0,0,0,0,'force buddy to: say text');
DELETE FROM db_script_string WHERE entry BETWEEN 2000005148 AND 2000005166; -- already in DB (but we had to sort them correctly + remove duplicates)
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
-- first set
(2000005148,'If we reverse the Essence flows perhaps we can alter the polarity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005149,'Why can\'t we just shift the array to compensate for the variance in the flux?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005150,'So then the array of magics would cascade into a chain reaction of positively charged energies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005151,'The magical wards at that sholud be supported enough by the energy flux to certain the entity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005152,'Maginor says that twisting alternating flows of positive energy actually creates a much more stable flow.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005153,'The portal will shift slightly, at this point if you cast a binding cantrip you will solidify it in place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005154,'When the positively aligned energies collide with the negatively charged energies, they don\'t negate one another.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005155,'Putting in twelve centers of focus might allow the magical energies to form more solidly, adding the necessary stability.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
-- 2nd set
(2000005156,'I think not, I don\'t need to be blown up again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005157,'I suppose that could work, if we had twenty people to cast it with.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005158,'But wouldn\'t that mean crossing the streams? Isn\'t that really bad?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005159,'But what if the resulting frequency shift were to send magical feedback up the flows?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005160,'But isn\'t that what caused the initial problems with Adept Syleria\'s magical formula?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005161,'That will unbalance the magical focus, though, and cause a reverse vibration in the ether.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005162,'Wouldn\'t that cause the weave to unravel if not properly anchored before starting the casting?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005163,'The resultant energies could collapse though, and that could cause an energy flux that would give you a migraine for weeks.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
-- 3rd set
(2000005164,'At least we wouldn\'t be around to have to clean it up.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005165,'Wow, all of this for a love potion. Hope he\'s worth it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005166,'Only if we didn\'t follow the proper initialization procedures.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005169 AND 2000005173; -- already in DB (but we had to sort them correctly + remove duplicates) 
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000005169,'What if we used three focuses in Tyrean pattern? That should solve it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005170,'Always so negative. The chances of that happening are between zero and none.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005171,'If we use the Surian theory, then yes, but not if we go with the Y\'serian approach.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005172,'But if we stabilize it with an anchor thread at the appropriate energy crux then it should work.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL),
(2000005173,'If we use the appropriate sequence we should be ok. Will just take some serious studying before we start.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005174 AND 2000005179;
-- Zum'Rah Zombies (hack due to non-existing GO)
DELETE FROM dbscripts_on_go_template_use WHERE id = 128403;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, data_flags, comments) VALUES
(128403, 2, 15, 10247, 0x02, 'cast Summon Zul\'Farrak Zombies');
-- Den (ru_mangos.ru) - small corrections to start-orientation
UPDATE battleground_template SET HordeStartO = 0.00391 WHERE id = 2;
UPDATE battleground_template SET AllianceStartO = 3.91992, HordeStartO = 0.88828 WHERE id = 3;
UPDATE battleground_template SET AllianceStartO = 3.22092, HordeStartO = 0.01649 WHERE id = 7;
-- Drop stupid ReqSpellCast from a quest
UPDATE quest_template SET ReqSpellCast1 = 0 WHERE entry = 2118;
-- Forum: axel http://udb.no-ip.org/index.php/topic,13136.0.html -- Grz3s: source old.wowhead -- checked
DELETE FROM skinning_loot_template WHERE entry = 12899;
INSERT INTO skinning_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(12899, 8170, 55, 1, 1, 1, 0),
(12899, 15414, 25, 1, 1, 1, 0),
(12899, 8165, 11, 1, 1, 1, 0),
(12899, 8171, 4, 1, 1, 1, 0);

-- ----------------
-- Sunwell
-- ----------------
DELETE FROM creature_template_addon WHERE entry = 24895;

DELETE FROM spell_script_target WHERE entry IN (44844,44884,45666,44845);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(44844, 1, 24895, 0),
(44884, 1, 24895, 0),
(45666, 1, 25315, 0),
(44845, 1, 24892, 0),
(44845, 1, 24891, 0),
(44845, 1, 24850, 0); 
-- doors
DELETE FROM spell_script_target WHERE entry IN (46609,46610,46637,46650,46652,46638);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(46609, 0, 19871, 0),
(46610, 0, 188119, 0),
(46637, 1, 19871, 0),
(46650, 1, 23472, 0),
(46652, 0, 188075, 0),
(46638, 0, 188119, 0);
DELETE FROM dbscripts_on_spell WHERE id IN (46650, 46609);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(46609,15,46610,8,'Cast Freeze on Ice Barrier'),
(46650,15,46652,8,'Cast Open Brutallus Back Door on Fire Barrier');
-- tele spells
DELETE FROM spell_target_position WHERE id IN (46020,46019);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z,  target_orientation) VALUES
(46020, 580, 1690.339, 942.1176, 53.07742, 0),
(46019, 580, 1696.196, 951.1885, -74.55846, 0);
-- fix some bad locations
UPDATE gameobject SET position_x = 1746.565, position_y = 621.9134, position_z = 28.05021, orientation = 2.984498 WHERE id = 187869;
UPDATE gameobject SET position_x = 1704.303, position_y = 582.6811, position_z = 28.16483, orientation = 1.605702 WHERE id = 188114;
UPDATE gameobject SET position_x = 1651.921, position_y = 635.3501, position_z = 28.12865, orientation = 6.19592 WHERE id = 188115;
UPDATE gameobject SET position_x = 1696.155, position_y = 674.9676, position_z = 28.05021, orientation = 4.81711 WHERE id = 188116;
UPDATE creature SET position_x = 1696.01, position_y = 675.3926, position_z = 28.13354, orientation = 0.6108652 WHERE guid = 140022;
UPDATE creature SET position_x = 1704.316, position_y = 582.7225, position_z = 28.25068, orientation = 5.009095 WHERE guid = 140020;
UPDATE creature SET position_x = 1652.034, position_y = 635.3538, position_z = 28.20865, orientation = 3.752458 WHERE guid = 140023;
UPDATE creature SET position_x = 1746.551, position_y = 621.9463, position_z = 28.13354, orientation = 2.094395 WHERE guid = 140021;
UPDATE creature SET position_x = 1698.092, position_y = 627.2899, position_z = 58.17708, orientation = 1.692969 WHERE id = 26046;
UPDATE creature SET position_x = 1699.906, position_y = 929.0208, position_z = -74.28365, orientation = 6.161012 WHERE id = 24892;
-- Felmyst movement (currently not used because of MMaps, but keep here for the future);
DELETE FROM creature_movement_template WHERE entry IN (25038);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, orientation) VALUES
(25038,1,1441.640, 520.520, 50.083, 0, 0),
(25038,2,1467.219, 516.318, 50.083, 0, 0),
(25038,3,1492.819, 515.668, 50.083, 0, 0),
(25038,4,1458.170, 501.295, 60.083, 2000, 2.93),
(25038,5,1446.540, 702.570, 50.083, 0, 0),
(25038,6,1469.939, 704.239, 50.083, 0, 0),
(25038,7,1494.760, 705.000, 50.083, 0, 0),
(25038,8,1468.380, 730.267, 60.083, 2000, 5.07); 
-- script targets for felmyst
DELETE FROM spell_script_target WHERE entry = 45388;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45388, 1, 25038, 0);
DELETE FROM spell_script_target WHERE entry = 45389;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45389, 1, 25265, 0);
DELETE FROM spell_script_target WHERE entry = 45714;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45714, 1, 25038, 0);

-- ---------------
-- Schmoo_fix
-- ---------------
-- Cleanup
UPDATE creature_template SET UnitFlags = UnitFlags&~2048 WHERE UnitFlags&2048 = 2048;
UPDATE creature_template SET UnitFlags = UnitFlags&~524288 WHERE UnitFlags&524288 = 524288;
UPDATE creature_template SET UnitFlags = UnitFlags&~67108864 WHERE UnitFlags&67108864 = 67108864;
UPDATE creature_template SET UnitFlags = UnitFlags&~8388608 WHERE UnitFlags&8388608 = 8388608;



