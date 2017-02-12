-- [464]
UPDATE gameobject_template SET data4=1 WHERE entry=181699; -- add custom anim

-- [472]
-- The Vector Coil
DELETE FROM gameobject WHERE id IN(182091,182088,182089);
-- Bloodmyst Tesla Coil
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 17979;

-- [477]
-- Bloodcursed Naga
-- template_addon is enough
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 17713);

-- [479]
-- Tattered Chest o.2846
-- missing objects added - UDB free guids reused
DELETE FROM gameobject WHERE guid IN (66138,66139,66140,66141,66145,66146,66147,66174,66176,66177,66178,66180,66182,66183,66186,66188,66194,66195);
DELETE FROM game_event_gameobject WHERE guid IN (66138,66139,66140,66141,66145,66146,66147,66174,66176,66177,66178,66180,66182,66183,66186,66188,66194,66195);
DELETE FROM gameobject_battleground WHERE guid IN (66138,66139,66140,66141,66145,66146,66147,66174,66176,66177,66178,66180,66182,66183,66186,66188,66194,66195);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66138, 2846, 530, 1,-2415.964, -11222.41, 24.28668, 2.722713, 0, 0, 0.9781475, 0.2079121, 1200, 255, 1),
(66139, 2846, 530, 1,-1523.141, -11818.05, 23.2169, 0.2792516, 0, 0, 0.1391726, 0.9902682, 1200, 255, 1),
(66140, 2846, 530, 1,-1622.558, -11917.32, 9.328012, 4.450591, 0, 0, -0.7933531, 0.6087617, 1200, 255, 1),
(66141, 2846, 530, 1,-2187.591, -12299.38, 56.22134, 3.455756, 0, 0, -0.9876881, 0.1564362, 1200, 255, 1),
(66145, 2846, 530, 1,-2537.432, -12280.47, 14.01218, 3.647741, 0, 0, -0.9681473, 0.2503814, 1200, 255, 1),
(66146, 2846, 530, 1,-2816.792, -11521.46, 3.551014, 6.0912, 0, 0, -0.09584522, 0.9953963, 1200, 255, 1),
(66147, 2846, 530, 1,-2514.786, -11127.4, 16.80916, 3.961899, 0, 0, -0.9170599, 0.3987495, 1200, 255, 1),
(66174, 2846, 530, 1,-1806.039, -11684.3, 33.98169, 3.926996, 0, 0, -0.9238787, 0.3826855, 1200, 255, 1),
(66176, 2846, 530, 1,-1845.209, -12093.42, 33.01601, 1.012289, 0, 0, 0.4848089, 0.8746201, 1200, 255, 1),
(66177, 2846, 530, 1,-2508.188, -11249.02, 36.19548, 5.550147, 0, 0, -0.3583679, 0.9335805, 1200, 255, 1),
(66178, 2846, 530, 1,-2532.938, -11961.82, 20.45258, 0, 0, 0, 0, 1, 1200, 255, 1),
(66180, 2846, 530, 1,-1485.679, -11930.55, 19.05024, 3.211419, 0, 0, -0.9993906, 0.03490613, 1200, 255, 1),
(66182, 2846, 530, 1,-2513.007, -12197.33, 27.98298, 5.77924, 0, 0, 0.7716246, 0.6360782, 1200, 255, 1),
(66183, 2846, 530, 1,-2816.554, -11721, 0.128298, 0.6981314, 0, 0, 0.34202, 0.9396927, 1200, 255, 1),
(66186, 2846, 530, 1,-2820.95, -11420.7, 5.26642, 6.07981, 0, 0, 0.101514, -0.994834, 1200, 255, 1),
(66188, 2846, 530, 1,-2315.082, -11191.03, 13.9421, 1.902409, 0, 0, 0.8141155, 0.580703, 1200, 255, 1),
(66194, 2846, 530, 1,-2816.642, -11219.69, 2.085383, 1.326448, 0, 0, 0.6156607, 0.7880114, 1200, 255, 1),
(66195, 2846, 530, 1,-2259.26, -12321.5, 57.2953, 6.24316, 0, 0, 0.0200129, -0.9998, 1200, 255, 1);

-- Pools 
DELETE FROM pool_template WHERE entry BETWEEN 25552 AND 25558;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25552,1,'Bloodmyst Isle - Tattered Chest - Pool 1'),
(25553,1,'Bloodmyst Isle - Tattered Chest - Pool 2'),
(25554,1,'Bloodmyst Isle - Tattered Chest - Pool 3'),
(25555,1,'Bloodmyst Isle - Tattered Chest - Pool 4'),
(25556,1,'Bloodmyst Isle - Tattered Chest - Pool 5'),
(25557,1,'Bloodmyst Isle - Tattered Chest - Pool 6'),
(25558,1,'Bloodmyst Isle - Tattered Chest - Pool 7');
-- only one can be spawned on each of pools.
DELETE FROM pool_gameobject WHERE guid IN (66178,85442,66145,66182,91361,66174,85470,85438,66177,66147,66138,66140,66180,66139,85472,66183,66146,66176,66141,85471,66186,66188,66194,66195);
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
-- 2 random spawns
(66178,25552,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 1'),
(85442,25552,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 1'),
-- Bristlelimb enclave
(66145,25553,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 2'),
(66182,25553,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 2'),
(91361,25553,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 2'),
 -- Bladewood
(66174,25554,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 3'),
(85470,25554,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 3'),
(85438,25554,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 3'),
-- Nazzivian
(66177,25555,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 4'),
(66147,25555,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 4'),
(66138,25555,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 4'),
(66188,25555,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 4'),
-- Ragefeather Ridge
(66140,25556,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 5'),
(66180,25556,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 5'),
(66139,25556,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 5'),
(85472,25556,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 5'),
-- Blacksilt shore
(66183,25557,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 6'),
(66146,25557,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 6'),
(66186,25557,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 6'),
(66194,25557,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 6'),
-- Ruins of Loreth'Aran & Wrathscale Lair
(66176,25558,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 7'),
(66141,25558,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 7'),
(85471,25558,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 7'),
(66195,25558,0,'2846 - Bloodmyst Isle - Tattered Chest - Pool 7');

-- Drop Redone
DELETE FROM gameobject_loot_template WHERE entry = 2278;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- consumable items - grup 1
(2278,2455,0,1,1,2,0),
(2278,858,0,1,1,2,0),
(2278,118,0,1,2,3,0),
-- consumable items - grup 2
(2278,1179,0,2,1,1,0),
(2278,414,0,2,1,1,0),
(2278,2287,0,2,1,1,0),
(2278,4541,0,2,1,1,0),
(2278,4537,0,2,1,1,0),
(2278,4605,0,2,1,1,0),
-- craft items - grup 3
(2278,2589,0,3,1,3,0),
(2278,2318,0,3,2,3,0),
(2278,2996,0,3,1,1,0),
(2278,2835,0,3,2,3,0),
(2278,2770,0,3,2,3,0),
(2278,785,0,3,1,2,0),
(2278,2447,0,3,2,4,0),
(2278,2450,0,3,1,2,0),
(2278,2449,0,3,2,3,0),
(2278,783,0,3,1,1,0),
(2278,765,0,3,1,1,0),
-- craft items(rare) - grup 4
(2278,774,9,4,1,1,0),
(2278,818,9,4,1,1,0),
(2278,1210,6,4,1,1,0),
(2278,1206,5,4,1,1,0),
(2278,2842,3,4,1,2,0),
(2278,3577,2,4,1,1,0),
-- carry items - grup 5
(2278,38,0,5,1,1,0),
(2278,6269,0,5,1,1,0),
(2278,6537,0,5,1,1,0),
(2278,6267,0,5,1,1,0),
(2278,9762,0,5,1,1,0),
(2278,6510,0,5,1,1,0),
(2278,2961,0,5,1,1,0),
(2278,2632,0,5,1,1,0),
(2278,6337,0,5,1,1,0),
(2278,6268,0,5,1,1,0),
(2278,15933,0,5,1,1,0),
(2278,9747,0,5,1,1,0),
(2278,4569,0,5,1,1,0),
(2278,6543,0,5,1,1,0),
(2278,9759,0,5,1,1,0),
(2278,4689,0,5,1,1,0),
(2278,2971,0,5,1,1,0),
(2278,3213,0,5,1,1,0),
(2278,6336,0,5,1,1,0),
(2278,6542,0,5,1,1,0),
(2278,9755,0,5,1,1,0),
(2278,9751,0,5,1,1,0),
(2278,3207,0,5,1,1,0),
(2278,9742,0,5,1,1,0),
(2278,3651,0,5,1,1,0),
(2278,9761,0,5,1,1,0),
(2278,1511,0,5,1,1,0),
(2278,2777,0,5,1,1,0),
(2278,2763,0,5,1,1,0),
(2278,3375,0,5,1,1,0),
(2278,1497,0,5,1,1,0),
(2278,1495,0,5,1,1,0),
(2278,2778,0,5,1,1,0),
(2278,1512,0,5,1,1,0),
(2278,1513,0,5,1,1,0),
(2278,1514,0,5,1,1,0),
(2278,1503,0,5,1,1,0),
(2278,1506,0,5,1,1,0),
(2278,1731,0,5,1,1,0),
(2278,1732,0,5,1,1,0),
(2278,1735,0,5,1,1,0),
(2278,1501,0,5,1,1,0),
(2278,1499,0,5,1,1,0),
(2278,1515,0,5,1,1,0),
(2278,1504,0,5,1,1,0),
(2278,1498,0,5,1,1,0),
(2278,1502,0,5,1,1,0),
(2278,1509,0,5,1,1,0),
(2278,1734,0,5,1,1,0),
(2278,1510,0,5,1,1,0),
(2278,1516,0,5,1,1,0),
(2278,1730,0,5,1,1,0),
(2278,1737,0,5,1,1,0),
(2278,3374,0,5,1,1,0),
(2278,2214,0,5,1,1,0),
(2278,1507,0,5,1,1,0),
(2278,2215,0,5,1,1,0),
(2278,4570,0,5,1,1,0),
(2278,2598,0,5,1,1,0),
(2278,2657,0,5,1,1,0),
(2278,4577,0,5,1,1,0),
(2278,2073,0,5,1,1,0),
(2278,6271,0,5,1,1,0),
(2278,2555,0,5,1,1,0),
(2278,5069,0,5,1,1,0),
(2278,8180,0,5,1,1,0),
(2278,2408,0,5,1,1,0),
(2278,4561,0,5,1,1,0),
(2278,4408,0,5,1,1,0),
(2278,5071,0,5,1,1,0),
(2278,4566,0,5,1,1,0),
(2278,5573,0,5,1,1,0);
-- update for gold drop
UPDATE gameobject_template SET mingold = 49, maxgold = 58 WHERE entry = 2846;

UPDATE gameobject_template SET data1=2278 WHERE entry IN(2846); -- add loot template to DB

-- [480]
-- Cruelfin
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 63004;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17496;
DELETE FROM creature_movement_template WHERE entry = 17496;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17496,1,-2814.57,-11604.2,1.48152,0,0,1.55134,0,0),
(17496,2,-2813.34,-11569.2,1.84373,0,0,1.46888,0,0),
(17496,3,-2809.57,-11538.9,2.85442,0,0,1.51993,0,0),
(17496,4,-2809.68,-11507.7,3.70625,0,0,1.64166,0,0),
(17496,5,-2815.36,-11462.8,3.47233,0,0,1.68879,0,0),
(17496,6,-2824.25,-11435.3,4.53325,0,0,1.90477,0,0),
(17496,7,-2828.94,-11413.9,3.7831,0,0,1.60632,0,0),
(17496,8,-2830.4,-11381,2.4203,0,0,1.59454,0,0),
(17496,9,-2832.08,-11343.7,2.53179,0,0,1.50815,0,0),
(17496,10,-2824.77,-11286.7,2.63238,0,0,1.32436,0,0),
(17496,11,-2831.14,-11322.5,2.82903,0,0,4.67408,0,0),
(17496,12,-2831.72,-11350.5,2.4931,0,0,4.7212,0,0),
(17496,13,-2830.79,-11389,2.72528,0,0,4.75654,0,0),
(17496,14,-2828.68,-11420.4,3.83855,0,0,4.88613,0,0),
(17496,15,-2823.76,-11439.8,4.3306,0,0,5.03535,0,0),
(17496,16,-2814.89,-11466.9,3.40746,0,0,4.87042,0,0),
(17496,17,-2808.68,-11508.2,3.71919,0,0,4.79581,0,0),
(17496,18,-2809.46,-11540.9,2.74078,0,0,4.60968,0,0),
(17496,19,-2812.99,-11577.2,1.52412,0,0,4.7,0,0),
(17496,20,-2812.85,-11610.6,1.64333,0,0,4.77461,0,0),
(17496,21,-2809.82,-11634.9,1.90057,0,0,4.88063,0,0),
(17496,22,-2803.9,-11665.7,1.61544,0,0,4.93954,0,0),
(17496,23,-2810.12,-11632.1,1.95185,0,0,1.72333,0,0);

-- [481]
DELETE FROM creature_equip_template WHERE entry=153;
INSERT INTO creature_equip_template VALUES(153,2147,0,0);
-- Gravis Slipknot
-- faction & correct equipment (we used ver.4.x.x)
UPDATE creature_template SET  FactionAlliance = 87, FactionHorde = 87, EquipmentTemplateId = 153 WHERE entry = 14221;

-- [482]
-- Vhel'kur
UPDATE creature SET spawndist = 0, MovementType = 2, position_x = -5140.628, position_y = 537.6068, position_z = 225.5867 WHERE guid = 76114;
UPDATE creature_template SET  InhabitType = 4, MovementType = 2 WHERE  entry = 21801;
DELETE FROM creature_template_addon WHERE entry = 21801;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(21801,0,33554432,1,0,0,0,'37509 37497');
DELETE FROM creature_movement_template WHERE entry = 21801;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(21801,1,-5140.628,537.6068,225.5867,1000,2180101,100,0,0),
(21801,2,-5047.682,660.9525,148.8644,0,0,100,0,0),
(21801,3,-5011.98,674.3496,148.8644,0,0,100,0,0),
(21801,4,-4981.461,669.827,148.8644,0,0,100,0,0),
(21801,5,-4959.014,632.2751,148.8644,0,0,100,0,0),
(21801,6,-4943.981,608.1472,148.8644,0,0,100,0,0),
(21801,7,-4929.495,593.4562,148.8644,0,0,100,0,0),
(21801,8,-4910.322,557.0013,148.8644,0,0,100,0,0),
(21801,9,-4886.5,522.941,148.8644,0,0,100,0,0),
(21801,10,-4860.481,492.9438,148.8644,0,0,100,0,0),
(21801,11,-4853.529,472.7724,148.8644,0,0,100,0,0),
(21801,12,-4853.905,449.3954,148.8644,0,0,100,0,0),
(21801,13,-4862.35,417.3469,148.8644,0,0,100,0,0),
(21801,14,-4904.073,347.1447,148.8644,0,0,100,0,0),
(21801,15,-4938.952,289.3222,148.8644,0,0,100,0,0),
(21801,16,-4959.224,247.5302,148.8644,0,0,100,0,0),
(21801,17,-4971.73,201.8298,148.8644,0,0,100,0,0),
(21801,18,-4979.256,156.9421,148.8644,0,0,100,0,0),
(21801,19,-4987.867,132.5271,148.8644,0,0,100,0,0),
(21801,20,-4998.63,107.5142,148.8644,0,0,100,0,0),
(21801,21,-5020.076,73.21224,148.8644,0,0,100,0,0),
(21801,22,-5061.159,55.51009,148.8644,0,0,100,0,0),
(21801,23,-5077.839,49.82715,148.8644,0,0,100,0,0),
(21801,24,-5112.819,49.43273,148.8644,0,0,100,0,0),
(21801,25,-5175.664,65.2347,163.3922,0,0,100,0,0),
(21801,26,-5198.992,107.9043,173.1977,0,0,100,0,0),
(21801,27,-5165.273,219.0713,198.2255,0,0,100,0,0),
(21801,28,-5113.013,300.7207,198.2255,0,0,100,0,0),
(21801,29,-5109.759,353.3949,226.7533,0,0,100,0,0),
(21801,30,-5113.028,378.9975,240.6144,0,0,100,0,0),
(21801,31,-5122.197,411.4973,243.2811,0,0,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2180101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2180101,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');

-- [483]
-- Bloodmyst escort
-- script targets
DELETE FROM spell_script_target WHERE entry IN (31611,30834);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(31611,1,17678,0),
(30834,1,17645,0);
-- addon handled by script
UPDATE creature_template_addon SET auras='' WHERE entry=17678;

-- [491]
-- Quest 11516
DELETE FROM spell_script_target WHERE entry IN (44877,44948);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(44877,1,24916,0),
(44948,1,24959,0);
UPDATE gameobject SET spawntimesecs=-180 WHERE guid IN (99819,99820,99821);

-- [492]
-- Quest 10613 / 10612
DELETE FROM dbscripts_on_spell WHERE id IN (38020);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,buddy_entry,search_radius,data_flags,comments) VALUES
(38020,0,15,38022,0,0,8,'Cast FRS Quest Credit');

-- [495]
-- Quest 4921
UPDATE creature_template SET GossipMenuId=2871 WHERE entry=10668;
DELETE FROM gossip_menu WHERE entry IN (2871,2872);
INSERT INTO gossip_menu (entry, text_id) VALUE
(2871, 3557),
(2872, 3558);
DELETE FROM conditions WHERE condition_entry=1095;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
(1095,9,4921,0);
DELETE FROM gossip_menu_option WHERE menu_id=2871;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(2871, 0, 0, 'I inspect the body further.', 1, 1, 2872, 0, 2871, 0, 0, NULL, 1095);
DELETE FROM dbscripts_on_gossip WHERE id=2871;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2871,0,8,10668,0,0,0,0,0,0,0,0,0,0,0,0,'Quest 4921 - Kill credit');

-- [496]
-- Arthur Moore
DELETE FROM creature WHERE guid IN(31884,61297); -- unify with UDB
DELETE FROM creature_addon WHERE guid IN(31884,61297);
DELETE FROM creature_movement WHERE id IN(31884,61297);
DELETE FROM game_event_creature WHERE guid IN(31884,61297);
DELETE FROM game_event_creature_data WHERE guid IN(31884,61297);
DELETE FROM creature_battleground WHERE guid IN(31884,61297);
DELETE FROM creature_linking WHERE guid IN(31884,61297) OR master_guid IN(31884,61297);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(61297,4588,0,1,0,0,1510.37,199.943,-62.1372,3.892084,300,0,0,1342,0,0,0);
-- [497]
-- Quests relations.

-- q.5041 'Supplies for the Crossroads'
-- q. shouldnt have any prequest .. and player must be allowed to take it with q.871
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 5041;

-- [498]
-- Gavis Slipknot
-- Loop drop corrected
DELETE FROM creature_loot_template WHERE  entry = 14221;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(14221,4306,25.9,0,1,3,0),
(14221,5113,12.9,0,1,1,0),
(14221,3505,8.1,0,1,1,0),
(14221,1707,5,0,1,1,0),
(14221,4338,4.5,0,1,1,0),
(14221,9864,4.1,0,1,1,0),
(14221,7447,4,0,1,1,0),
(14221,9856,3.8,0,1,1,0),
(14221,6986,3.6,0,1,1,0),
(14221,9859,3.5,0,1,1,0),
(14221,7437,3.3,0,1,1,0),
(14221,9850,3.1,0,1,1,0),
(14221,9849,3.1,0,1,1,0),
(14221,7448,2.9,0,1,1,0),
(14221,7461,2.8,0,1,1,0),
(14221,7407,2.7,0,1,1,0),
(14221,9861,2.6,0,1,1,0),
(14221,9855,2.5,0,1,1,0),
(14221,7438,2.4,0,1,1,0),
(14221,9848,2.4,0,1,1,0),
(14221,9870,2.3,0,1,1,0),
(14221,1708,2.2,0,1,1,0),
(14221,9868,2.1,0,1,1,0),
(14221,7369,2,0,1,1,0),
(14221,7446,2,0,1,1,0),
(14221,7353,1.9,0,1,1,0),
(14221,9869,1.9,0,1,1,0),
(14221,7444,1.8,0,1,1,0),
(14221,9863,1.8,0,1,1,0),
(14221,9871,1.7,0,1,1,0),
(14221,7435,1.6,0,1,1,0),
(14221,7436,1.6,0,1,1,0),
(14221,7418,1.5,0,1,1,0),
(14221,7434,1.5,0,1,1,0),
(14221,7462,1.4,0,1,1,0),
(14221,7443,1.4,0,1,1,0),
(14221,9851,1.3,0,1,1,0),
(14221,9846,1.3,0,1,1,0),
(14221,7433,1.3,0,1,1,0),
(14221,9862,1.3,0,1,1,0),
(14221,9845,1.2,0,1,1,0),
(14221,9872,1.2,0,1,1,0),
(14221,7458,1.2,0,1,1,0),
(14221,9854,1.1,0,1,1,0),
(14221,9891,1.1,0,1,1,0),
(14221,9852,1.1,0,1,1,0),
(14221,1710,1.1,0,1,1,0),
(14221,7457,1.1,0,1,1,0),
(14221,7456,1.1,0,1,1,0),
(14221,24047,1,1,-24047,1,0),
(14221,24052,1,1,-24052,1,0),
(14221,24054,1,1,-24054,1,0),
(14221,24056,1,1,-24056,1,0);

-- [500]
-- q.4867 'Urok Doomhowl'
-- Missing creatures added - empty guids reused -- UDB ONLY
-- 45095 - summoned unit only ... shouldnt be there at all
DELETE FROM creature WHERE guid IN (45095,61298,61300);
DELETE FROM creature_addon WHERE guid IN (45095,61298,61300);
DELETE FROM creature_movement WHERE id IN (45095,61298,61300);
DELETE FROM game_event_creature WHERE guid IN (45095,61298,61300);
DELETE FROM game_event_creature_data WHERE guid IN (45095,61298,61300);
DELETE FROM creature_battleground WHERE guid IN (45095,61298,61300);
DELETE FROM creature_linking WHERE guid IN (45095,61298,61300) OR master_guid IN (45095,61298,61300);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(45095,9197,229,1,0,109,-42.0831,-365.889,51.6238,5.266,10800,5,0,11485,11445,0,1),
(61298,9197,229,1,0,109,-14.8751,-384.718,48.9437,2.59957,10800,5,0,11485,11445,0,1),
(61300,9216,229,1,0,1106,-23.6814,-394.115,48.6378,2.11106,10800,5,0,14355,0,0,1);
-- Missing oblects added - empty guids reused -- UDB ONLY
DELETE FROM gameobject WHERE guid IN (66197,66201,66203,66204,66208,66209,66210,66211);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- Ogre Coup Summoning Circle
( 66197, 175571, 229, 1,-47.9095, -369.089, 51.5425, 1.378809, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66201, 175571, 229, 1,-27.8804, -385.891, 48.5067, 3.700105, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66203, 175571, 229, 1,-13.7275, -384.816, 48.9746, 3.68265, 0, 0, 0.400546, -0.916277, -65, 255, 1),
( 66204, 175571, 229, 1,-12.3689, -376.475, 49.335, 5.044002, 0, 0, 0.835255, -0.549863, -65, 255, 1),
( 66208, 175571, 229, 1,-24.8824, -369.619, 49.7059, 3.403396, 0, 0, 0.835255, -0.549863, -65, 255, 1),
( 66209, 175571, 229, 1,-34.5437, -370.233, 50.3396, 5.358161, 0, 0, 0.835255, -0.549863, -65, 255, 1),
-- Challenge to Urok
( 66210, 175584, 229, 1,-14.3415, -395.729, 48.5381, 2.862335, 0, 0, 0.839392, 0.543527, -7200, 255, 1),
-- Challenge to Urok Trap
( 66211, 175589, 229, 1,-14.3415, -395.729, 48.5381, 2.862335, 0, 0, 0.839392, 0.543527, 30, 255, 1);
-- Urok's Tribute Pile - position Y corrected
UPDATE gameobject SET position_y = -395.729 WHERE guid = 99791;
-- updates for all ogres in this event 
UPDATE creature_template SET FactionAlliance = 40, FactionHorde = 40, MovementType = 2, ExtraFlags = 0 WHERE entry IN (10584,10601,10602);
DELETE FROM creature_movement_template WHERE entry IN (10584,10601,10602);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10584,1,-18.9341,-389.926,48.6219,1000,1058401,255,0,0),
(10601,1,-18.9341,-389.926,48.6219,1000,1060101,255,0,0),
(10602,1,-18.9341,-389.926,48.6219,1000,1060201,255,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1058401,1060101,1060201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1058401,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1060101,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(1060201,0,20,1,10,0,0,8,0,0,0,0,0,0,0,0,'movement chenged to 1:random');

-- event
DELETE FROM dbscripts_on_event WHERE id = 4845;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4845,0,9,66210,7200,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,0,9,66197,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,0,9,66201,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66203,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66204,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66208,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(4845,1,9,66209,65,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
-- wave 1
(4845,5,10,10602,432000,0,0,0,1,0,0,0,-33.04, -385.57, 48.60, 5.98,'summon MAGUS'),
(4845,5,10,10601,432000,0,0,0,1,0,0,0,-16.12, -376.99, 49.20, 4.89,'summon ENFORCER'),
(4845,5,10,10601,432000,0,0,0,1,0,0,0,-25.13, -376.60, 48.94, 5.17,'summon ENFORCER'),
-- wave 2
(4845,13,10,10602,432000,0,0,0,1,0,0,0,-14.93, -381.99, 49.04, 4.70,'summon MAGUS'),
(4845,28,10,10602,432000,0,0,0,1,0,0,0,-35.47, -371.36, 50.22, 4.79,'summon MAGUS'),
(4845,28,10,10601,432000,0,0,0,1,0,0,0,-47.54, -368.11, 51.67, 5.70,'summon ENFORCER'),
-- wave 3
(4845,42,10,10602,432000,0,0,0,1,0,0,0,-33.04, -385.57, 48.60, 5.98,'summon MAGUS'),
(4845,42,10,10602,432000,0,0,0,1,0,0,0,-14.58, -375.16, 49.31, 4.73,'summon MAGUS'),
(4845,42,10,10601,432000,0,0,0,1,0,0,0,-24.91, -376.41, 48.95, 4.67,'summon ENFORCER'),
-- Urok
(4845,58,10,10602,432000,0,0,0,1,0,0,0,-47.54, -368.11, 51.67, 5.70,'summon MAGUS'),
(4845,66,10,10584,432000,0,0,0,1,0,0,0,-23.97, -391.89, 48.58, 1.68,'summon Urok');

-- targets for spell
DELETE FROM spell_script_target WHERE entry = 16452;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(16452,1,10601,0),
(16452,1,10602,0);

-- [519]
-- Fix signs in Wetlands

-- first signpost
-- Menethil
UPDATE gameobject SET position_x = -3597.88, position_y = -2713.78, position_z = 18.8364, orientation = -0.671953, rotation0 = 0, rotation1 = 0, rotation2 = -0.329691, rotation3 = 0.944089 WHERE guid = 13763;
-- Dun Modr
UPDATE gameobject SET position_x = -3597.65, position_y = -2713.63, position_z = 18.2805, orientation = -0.654499, rotation0 = 0.038501, rotation1 = -0.022276, rotation2 = -0.320761, rotation3 = 0.946115 WHERE guid = 14261;
-- Loch Modan
UPDATE gameobject SET position_x = -3597.21, position_y = -2714.68, position_z = 19.6138, orientation = 2.522, rotation0 = 0.029386, rotation1 = 0.07754, rotation2 = 0.949226, rotation3 = 0.30347 WHERE guid = 13762;
-- Grim Batol
UPDATE gameobject SET position_x = -3600.88, position_y = -2714.84, position_z = 18.5583, orientation = -3.14152, rotation0 = 0.69436, rotation1 = 0.117214, rotation2 = 0.700446, rotation3 = -0.116196 WHERE guid = 13764;
-- Dun Algaz
UPDATE gameobject SET position_x = -3597.3, position_y = -2714.84, position_z = 17.5196, orientation = 2.47837, rotation0 = 0.032618, rotation1 = 0.09473, rotation2 = 0.940761, rotation3 = 0.32393 WHERE guid = 13704;

-- second signpost
-- Menethil
UPDATE gameobject SET position_x = -3231.99, position_y = -2454.2, position_z = 13.4941, orientation = -0.183258, rotation0 = 0, rotation1 = 0, rotation2 = -0.091501, rotation3 = 0.995805 WHERE guid = 13760;
-- Loch Modan
UPDATE gameobject SET position_x = -3231.02, position_y = -2454.87, position_z = 14.9369, orientation = 2.95833, rotation0 = 0.001724, rotation1 = 0.113517, rotation2 = 0.989276, rotation3 = 0.091894 WHERE guid = 13761;
-- Dun Modr
UPDATE gameobject SET position_x = -3231.32, position_y = -2453.92, position_z = 15.5055, orientation = -1.75406, rotation0 = 0, rotation1 = 0, rotation2 = -0.768842, rotation3 = 0.639439 WHERE guid = 13720;
-- Dun Algaz
UPDATE gameobject SET position_x = -3231.02, position_y = -2454.8, position_z = 14.3332, orientation = 2.95833, rotation0 = 0.00877, rotation1 = 0.095444, rotation2 = 0.99122, rotation3 = 0.09108 WHERE guid = 13705;

-- [525]
-- William and Donna - Stormwind
-- old script redone using current db_scripts. 
UPDATE creature_movement_template SET script_id = 253301 WHERE entry = 2533 AND point = 1;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 5;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 8;
UPDATE creature_movement_template SET script_id = 253303 WHERE entry = 2533 AND point = 11;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 16;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 19;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 28;
UPDATE creature_movement_template SET script_id = 253303 WHERE entry = 2533 AND point = 38;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 44;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 49;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 54;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 62;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 67;
UPDATE creature_movement_template SET script_id = 253304 WHERE entry = 2533 AND point = 72;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 253301 AND 253306;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(253301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(253301,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'William - active'),
(253301,0,21,1,0,2532,79721,7 | 0x10,0,0,0,0,0,0,0,0,'Donna - active'),
(253301,1,0,0,0,0,0,0,2000005057,2000005058,2000005060,2000005061,0,0,0,0,''),
(253301,2,31,2532,100,0,0,0,0,0,0,0,0,0,0,0,''),
(253301,3,0,0,0,2532,79721,7,2000005062,2000005063,0,0,0,0,0,0,''),
(253302,1,0,0,0,0,0,0,2000005057,2000005058,2000005060,2000005061,0,0,0,0,''),
(253302,2,31,2532,100,0,0,0,0,0,0,0,0,0,0,0,''),
(253302,3,0,0,0,2532,79721,7,2000005062,2000005063,0,0,0,0,0,0,''),
(253303,1,0,0,0,0,0,0,2000005057,2000005058,2000005059,2000005061,0,0,0,0,''),
(253303,2,31,2532,100,0,0,0,0,0,0,0,0,0,0,0,''),
(253303,3,0,0,0,2532,79721,7,2000005062,2000005063,0,0,0,0,0,0,''),
(253304,1,0,0,0,0,0,0,2000005057,2000005058,2000005060,2000005061,0,0,0,0,''),
(253304,2,31,2532,100,0,0,0,0,0,0,0,0,0,0,0,''),
(253304,3,0,0,0,2532,79721,7,2000005062,2000005063,0,0,0,0,0,0,''),
(253304,3,21,0,0,2532,79721,7 | 0x10,0,0,0,0,0,0,0,0,'Donna - unactive'),
(253304,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'William - unactive');

-- [529]
-- Update few stats for new "Pet System"
-- Gelkis Rumbler
UPDATE creature_template SET Expansion = 0 WHERE entry = 4661;
-- only summoned minions for Gelkis EarthCaller
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 4661)
OR master_guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM creature WHERE id = 4661;

-- Deathforge Mine
-- UPDATE creature_template SET Expansion = 0, UnitClass = 1, RangedBaseAttackTime = 2000 WHERE entry = 19461;

-- [556]
-- Tirisfal Pumpkin
-- missing added - UDB free guids reused
DELETE FROM gameobject WHERE guid IN (45043,66254,66255,66256,66257,66292,66304,66305,66313,66314,66315,66316,66317,66847,66848,66849,66850,66851,85473,85474,85475,85476);
DELETE FROM game_event_gameobject WHERE guid IN (45043,66254,66255,66256,66257,66292,66304,66305,66313,66314,66315,66316,66317,66847,66848,66849,66850,66851,85473,85474,85475,85476);
DELETE FROM gameobject_battleground WHERE guid IN (45043,66254,66255,66256,66257,66292,66304,66305,66313,66314,66315,66316,66317,66847,66848,66849,66850,66851,85473,85474,85475,85476);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
( 45043, 375, 0, 1,2351.13, 1324.59, 33.3334, 0.293625, 0, 0, 0.146286, 0.989242, 120, 255, 1),
( 66254, 375, 0, 1,2363.91, 1348.38, 33.3324, 3.84784, 0, 0, 0.938297, -0.345831, 120, 255, 1),
( 66255, 375, 0, 1,2360.47, 1399.62, 33.0846, 3.9146, 0, 0, 0.926233, -0.376952, 120, 255, 1),
( 66256, 375, 0, 1,2340.72, 1352.37, 33.3341, 0.344954, 0, 0, 0.171623, 0.985163, 120, 255, 1),
( 66257, 375, 0, 1,2341.88, 1344.28, 33.3341, 5.63673, 0, 0, 0.31763, -0.948215, 120, 255, 1),
( 66292, 375, 0, 1,2305.16, 1357.46, 33.3335, 4.13272, 0, 0, 0.879701, -0.475526, 120, 255, 1),
( 66304, 375, 0, 1,2329.93, 1378.17, 33.3335, 0.446058, 0, 0, 0.221185, 0.975232, 120, 255, 1),
( 66305, 375, 0, 1,2318.93, 1398, 33.3335, 2.74335, 0, 0, 0.980241, 0.197809, 120, 255, 1),
( 66313, 375, 0, 1,2305.13, 1347.16, 33.3334, 4.94245, 0, 0, 0.621275, -0.783592, 120, 255, 1),
( 66314, 375, 0, 1,2300.79, 1352.3, 33.3334, 3.07713, 0, 0, 0.999481, 0.0322268, 120, 255, 1),
( 66315, 375, 0, 1,2276.21, 1362.27, 33.3335, 3.29704, 0, 0, 0.996981, -0.0776452, 120, 255, 1),
( 66316, 375, 0, 1,2265.59, 1354.08, 33.3335, 4.40528, 0, 0, 0.80694, -0.590634, 120, 255, 1),
( 66317, 375, 0, 1,2268.72, 1403.56, 33.3334, 0.24895, 0, 0, 0.124154, 0.992263, 120, 255, 1),
( 66847, 375, 0, 1,2287.5, 1419.42, 33.3334, 0.307855, 0, 0, 0.153321, 0.988177, 120, 255, 1),
( 66848, 375, 0, 1,2304.68, 1471.36, 33.3334, 1.05791, 0, 0, 0.504632, 0.863335, 120, 255, 1),
( 66849, 375, 0, 1,2304.19, 1477.65, 33.3334, 1.05791, 0, 0, 0.504632, 0.863335, 120, 255, 1),
( 66850, 375, 0, 1,2294.94, 1477.74, 33.3334, 6.25332, 0, 0, 0.0149322, -0.999889, 120, 255, 1),
( 66851, 375, 0, 1,2333.19, 1478.31, 33.3334, 0.468867, 0, 0, 0.232292, 0.972646, 120, 255, 1),
( 85473, 375, 0, 1,2339.75, 1485.74, 33.435, 0.417816, 0, 0, 0.207392, 0.978258, 120, 255, 1),
( 85474, 375, 0, 1,2362.05, 1474.94, 33.3341, 5.06267, 0, 0, 0.57308, -0.8195, 120, 255, 1),
( 85475, 375, 0, 1,2337, 1446.25, 33.3341, 4.10919, 0, 0, 0.885234, -0.465147, 120, 255, 1),
( 85476, 375, 0, 1,2337.31, 1453.2, 33.3341, 2.26351, 0, 0, 0.905159, 0.425073, 120, 255, 1);

-- update for existing ones
UPDATE gameobject SET spawntimesecs = 120 WHERE id = 375;

-- pools
-- should be spawned max 15 (31 total spawns)
DELETE FROM pool_template WHERE entry = 25559;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25559,15,'Tirisfal Pumpkin');
DELETE FROM pool_gameobject_template WHERE pool_entry = 25559;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(375, 25559, 0, '375 - Tirisfal Pumpkin');

-- [557]
-- Draenei Zone - polishing


-- q.9421 'Shaman Training' 
UPDATE quest_template SET OfferRewardEmote1 = 1, OfferRewardEmote2 = 1, OfferRewardEmote3 = 1, OfferRewardEmoteDelay2 = 2000, OfferRewardEmoteDelay3 = 5000 WHERE entry = 9421;

-- q.9409 'Urgent Delivery!'
-- follow-up fixed (quest window wont hang itself anymore) 
UPDATE quest_template SET NextQuestInChain = 9283 WHERE entry = 9409;

-- Zalduun
-- Waypoints + script
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 57213;
DELETE FROM creature_movement WHERE id = 57213;
UPDATE creature_template SET MovementType = 2 WHERE entry = 16502;
DELETE FROM creature_movement_template WHERE entry = 16502;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(16502,1,-4113.68,-13762,73.5694, 0, 0,5.80705, 0, 0),
(16502,2,-4110.51,-13765.2,73.6102, 0, 0,5.19209, 0, 0),
(16502,3,-4107.71,-13772.5,74.6982, 0, 0,5.80705, 0, 0),
(16502,4,-4102.51,-13772.3,74.7185, 0, 0,0.511104, 0, 0),
(16502,5,-4099.89,-13768,74.7256, 0, 0,1.36954, 0, 0),
(16502,6,-4102.44,-13763.8,74.5717, 0, 0,2.63796, 0, 0),
(16502,7,-4125.6,-13762,74.1406, 0, 0,3.4807, 0, 0),
(16502,8,-4129.88,-13764.2,74.5865, 0, 0,3.28513, 0, 0),
(16502,9,-4135.57,-13762.7,74.657, 0, 0,2.14081, 0, 0),
(16502,10,-4137.16,-13760,74.6108, 0, 0,1.35698, 0, 0),
(16502,11,-4135.66,-13756.6,74.5907, 0, 0,0.545662, 0, 0),
(16502,12,-4131.3,-13754.6,74.6109, 0, 0,6.14319, 0, 0),
(16502,13,-4127.9,-13756.6,74.2825, 0, 0,5.30675, 0, 0),
(16502,14,-4127.08,-13760.8,74.2562, 0, 0,5.74265, 0, 0),
(16502,15,-4121.58,-13761.4,73.5881, 0, 0,0.0354084, 0, 0),
(16502,16,-4113.68,-13762,73.5694, 0, 0,5.80705, 0, 0),
(16502,17,-4110.51,-13765.2,73.6102, 0, 0,5.19209, 0, 0),
(16502,18,-4107.71,-13772.5,74.6982, 0, 0,5.80705, 0, 0),
(16502,19,-4102.51,-13772.3,74.7185, 0, 0,0.511104, 0, 0),
(16502,20,-4099.89,-13768,74.7256, 0, 0,1.36954, 0, 0),
(16502,21,-4102.44,-13763.8,74.5717, 12000, 1650201,2.63796, 0, 0),
(16502,22,-4125.6,-13762,74.1406, 0, 0,3.4807, 0, 0),
(16502,23,-4129.88,-13764.2,74.5865, 0, 0,3.28513, 0, 0),
(16502,24,-4135.57,-13762.7,74.657, 0, 0,2.14081, 0, 0),
(16502,25,-4137.16,-13760,74.6108, 0, 0,1.35698, 0, 0),
(16502,26,-4135.66,-13756.6,74.5907, 0, 0,0.545662, 0, 0),
(16502,27,-4131.3,-13754.6,74.6109, 0, 0,6.14319, 0, 0),
(16502,28,-4127.9,-13756.6,74.2825, 0, 0,5.30675, 0, 0),
(16502,29,-4127.08,-13760.8,74.2562, 0, 0,5.74265, 0, 0),
(16502,30,-4121.58,-13761.4,73.5881, 0, 0,0.0354084, 0, 0),
(16502,31,-4113.68,-13762,73.5694, 0, 0,5.80705, 0, 0),
(16502,32,-4110.51,-13765.2,73.6102, 0, 0,5.19209, 0, 0),
(16502,33,-4107.71,-13772.5,74.6982, 0, 0,5.80705, 0, 0),
(16502,34,-4102.51,-13772.3,74.7185, 0, 0,0.511104, 0, 0),
(16502,35,-4099.89,-13768,74.7256, 0, 0,1.36954, 0, 0),
(16502,36,-4102.44,-13763.8,74.5717, 0, 0,2.63796, 0, 0),
(16502,37,-4125.6,-13762,74.1406, 0, 0,3.4807, 0, 0),
(16502,38,-4129.88,-13764.2,74.5865, 0, 0,3.28513, 0, 0),
(16502,39,-4135.57,-13762.7,74.657, 0, 0,2.14081, 0, 0),
(16502,40,-4137.16,-13760,74.6108, 0, 0,1.35698, 0, 0),
(16502,41,-4135.66,-13756.6,74.5907, 0, 0,0.545662, 0, 0),
(16502,42,-4131.3,-13754.6,74.6109, 0, 0,6.14319, 0, 0),
(16502,43,-4127.9,-13756.6,74.2825, 0, 0,5.30675, 0, 0),
(16502,44,-4127.08,-13760.8,74.2562, 0, 0,5.74265, 0, 0),
(16502,45,-4121.58,-13761.4,73.5881, 0, 0,0.0354084, 0, 0),
(16502,46,-4113.68,-13762,73.5694, 0, 0,5.80705, 0, 0),
(16502,47,-4110.51,-13765.2,73.6102, 0, 0,5.19209, 0, 0),
(16502,48,-4107.71,-13772.5,74.6982, 0, 0,5.80705, 0, 0),
(16502,49,-4102.51,-13772.3,74.7185, 0, 0,0.511104, 0, 0),
(16502,50,-4099.89,-13768,74.7256, 0, 0,1.36954, 0, 0),
(16502,51,-4102.44,-13763.8,74.5717, 0, 0,2.63796, 0, 0),
(16502,52,-4125.6,-13762,74.1406, 0, 0,3.4807, 0, 0),
(16502,53,-4129.88,-13764.2,74.5865, 0, 0,3.28513, 0, 0), 
(16502,54,-4135.57,-13762.7,74.657, 0, 0,2.14081, 0, 0),
(16502,55,-4137.16,-13760,74.6108, 0, 0,1.35698, 0, 0),
(16502,56,-4135.66,-13756.6,74.5907, 0, 0,0.545662, 0, 0),
(16502,57,-4131.3,-13754.6,74.6109, 0, 0,6.14319, 0, 0),
(16502,58,-4127.9,-13756.6,74.2825, 0, 0,5.30675, 0, 0),
(16502,59,-4127.08,-13760.8,74.2562, 0, 0,5.74265, 0, 0),
(16502,60,-4121.58,-13761.4,73.5881, 0, 0,0.0354084, 0, 0),
(16502,61,-4113.68,-13762,73.5694, 0, 0,5.80705, 0, 0),
(16502,62,-4110.51,-13765.2,73.6102, 0, 0,5.19209, 0, 0),
(16502,63,-4107.71,-13772.5,74.6982, 0, 0,5.80705, 0, 0),
(16502,64,-4102.51,-13772.3,74.7185, 0, 0,0.511104, 0, 0),
(16502,65,-4099.89,-13768,74.7256, 0, 0,1.36954, 0, 0),
(16502,66,-4102.44,-13763.8,74.5717, 0, 0,2.63796, 0, 0),
(16502,67,-4125.6,-13762,74.1406, 0, 0,3.4807, 0, 0),
(16502,68,-4129.88,-13764.2,74.5865, 12000, 1650202,3.28513, 0, 0),
(16502,69,-4135.57,-13762.7,74.657, 0, 0,2.14081, 0, 0),
(16502,70,-4137.16,-13760,74.6108, 0, 0,1.35698, 0, 0),
(16502,71,-4135.66,-13756.6,74.5907, 0, 0,0.545662, 0, 0),
(16502,72,-4131.3,-13754.6,74.6109, 0, 0,6.14319, 0, 0),
(16502,73,-4127.9,-13756.6,74.2825, 0, 0,5.30675, 0, 0),
(16502,74,-4127.08,-13760.8,74.2562, 0, 0,5.74265, 0, 0),
(16502,75,-4121.58,-13761.4,73.5881, 0, 0,0.0354084, 0, 0),
(16502,76,-4113.68,-13762,73.5694, 0, 0,5.80705, 0, 0),
(16502,77,-4110.51,-13765.2,73.6102, 0, 0,5.19209, 0, 0),
(16502,78,-4107.71,-13772.5,74.6982, 0, 0,5.80705, 0, 0),
(16502,79,-4102.51,-13772.3,74.7185, 0, 0,0.511104, 0, 0),
(16502,80,-4099.89,-13768,74.7256, 0, 0,1.36954, 0, 0),
(16502,81,-4102.44,-13763.8,74.5717, 0, 0,2.63796, 0, 0),
(16502,82,-4125.6,-13762,74.1406, 0, 0,3.4807, 0, 0),
(16502,83,-4129.88,-13764.2,74.5865, 0, 0,3.28513, 0, 0),
(16502,84,-4135.57,-13762.7,74.657, 0, 0,2.14081, 0, 0),
(16502,85,-4137.16,-13760,74.6108, 0, 0,1.35698, 0, 0),
(16502,86,-4135.66,-13756.6,74.5907, 0, 0,0.545662, 0, 0),
(16502,87,-4131.3,-13754.6,74.6109, 0, 0,6.14319, 0, 0),
(16502,88,-4127.9,-13756.6,74.2825, 0, 0,5.30675, 0, 0),
(16502,89,-4127.08,-13760.8,74.2562, 0, 0,5.74265, 0, 0),
(16502,90,-4121.58,-13761.4,73.5881, 0, 0,0.0354084, 0, 0),
(16502,91,-4113.68,-13762,73.5694, 0, 0,5.80705, 0, 0),
(16502,92,-4110.51,-13765.2,73.6102, 0, 0,5.19209, 0, 0),
(16502,93,-4107.71,-13772.5,74.6982, 0, 0,5.80705, 0, 0),
(16502,94,-4102.51,-13772.3,74.7185, 0, 0,0.511104, 0, 0),
(16502,95,-4099.89,-13768,74.7256, 0, 0,1.36954, 0, 0),
(16502,96,-4102.44,-13763.8,74.5717, 0, 0,2.63796, 0, 0),
(16502,97,-4125.6,-13762,74.1406, 0, 0,3.4807, 0, 0),
(16502,98,-4129.88,-13764.2,74.5865, 0, 0,3.28513, 0, 0), 
(16502,99,-4135.57,-13762.7,74.657, 0, 0,2.14081, 0, 0),
(16502,100,-4137.16,-13760,74.6108, 0, 0,1.35698, 0, 0),
(16502,101,-4135.66,-13756.6,74.5907, 0, 0,0.545662, 0, 0),
(16502,102,-4131.3,-13754.6,74.6109, 0, 0,6.14319, 0, 0),
(16502,103,-4127.9,-13756.6,74.2825, 0, 0,5.30675, 0, 0),
(16502,104,-4127.08,-13760.8,74.2562, 0, 0,5.74265, 0, 0),
(16502,105,-4121.58,-13761.4,73.5881, 0, 0,0.0354084, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1650201,1650202); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1650201,0,0,0,0,0,0,0,2000001010,0,0,0,0,0,0,0,''),
(1650201,2,3,0,0,0,0,0,0,0,0,0,0,0,0,4.31173,''),
(1650201,4,15,29170,0,16971,59238,1,0,0,0,0,0,0,0,0,''),
(1650202,0,0,0,0,0,0,0,2000001010,0,0,0,0,0,0,0,''),
(1650202,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0.157151,''),
(1650202,4,15,29170,0,16971,59240,1,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000001010;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001010,'Oh no!  I\'m losing this one!',0,0,0,0,NULL);
-- Injured Draenei
UPDATE creature SET Spawntimesecs = 10, curhealth = 12 WHERE id = 16971;
UPDATE creature_template SET RegenerateStats = 0 WHERE entry = 16971;

-- q.9371 'Botanist Taerix' 
UPDATE quest_template SET DetailsEmote1 = 1 WHERE entry = 9371;

-- q.9303 'Inoculation' 
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 9303;

-- q.9283 'Rescue the Survivors!'
-- Draenei Survivor -- missing added
DELETE FROM creature WHERE guid IN (76416,128970,128971,128972,128973,128975);
DELETE FROM creature_addon WHERE guid IN (76416,128970,128971,128972,128973,128975);
DELETE FROM creature_movement WHERE id IN (76416,128970,128971,128972,128973,128975);
DELETE FROM game_event_creature WHERE guid IN (76416,128970,128971,128972,128973,128975);
DELETE FROM game_event_creature_data WHERE guid IN (76416,128970,128971,128972,128973,128975);
DELETE FROM creature_battleground WHERE guid IN (76416,128970,128971,128972,128973,128975);
DELETE FROM creature_linking WHERE guid IN (76416,128970,128971,128972,128973,128975)
OR master_guid IN (76416,128970,128971,128972,128973,128975);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(76416,16483,530,1,0,0,-4070.36,-13914.9,87.7194,0.453713,60,0,0,57,0,0,0),
(128970,16483,530,1,0,0,-4175.48,-13482.1,44.74,3.001966,60,0,0,57,0,0,0),
(128971,16483,530,1,0,0,-4381.12,-13481.7,43.1182,0.453713,60,0,0,72,0,0,0),
(128972,16483,530,1,0,0,-4386.3,-13424.6,46.2821,2.949606,60,0,0,102,0,0,0),
(128973,16483,530,1,0,0,-4480.67,-13447.9,47.3222,5.794493,60,0,0,42,0,0,0),
(128975,16483,530,1,0,0,-3918.66,-13674.1,62.6927,0.397932,60,0,0,87,0,0,0);
UPDATE creature SET Spawntimesecs = 60 WHERE id = 16483;
UPDATE creature_template SET Expansion = 0, RegenerateStats = 0 WHERE entry = 16483;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 16483);
UPDATE creature_template_addon SET b2_1_flags = 1 WHERE entry = 16483;

-- q.9294 'Healing the Lake'
-- must automat. show up after prev quest competed.
-- new gossip must show up after q.9293 
UPDATE quest_template SET NextQuestInChain = 9294 WHERE entry = 9293;
UPDATE conditions SET value1 = 9293 WHERE condition_entry = 1033;

-- Respawntime corrected for 'Restless Spirit of Earth'
UPDATE creature SET Spawntimesecs = 60 WHERE id = 17179;

-- q.9451 'Call of Earth'
-- emote corrected 
UPDATE quest_template SET CompleteEmote = 6 WHERE entry = 9451;

-- q.9303 'Inoculation'
-- next quest must automat. show up after this one competed.
UPDATE quest_template SET NextQuestInChain = 9309 WHERE entry = 9303;

-- [560]
-- Teron Gorefiend, I am...(q.10639) -H  (q.10645) -A  -- Redone
DELETE FROM dbscripts_on_quest_start WHERE id = 10639;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10639,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(10639,1,0,0,0,0,0,0,2000000031,0,0,0,0,0,0,0,''),
(10639,4,44,21867,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10639,5,15,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'cast 37748'),
(10639,9,10,21877,300000,0,0,0,0,0,0,0,-4536.58,1028.76,8.8266,3.72963,'summon - Karsius the Ancient Watcher'),
(10639,11,10,21876,300000,0,0,0,0,0,0,0,-4504.67,1020.56,33.0728,2.93215,''),
(10639,11,10,21876,300000,0,0,0,0,0,0,0,-4509.67,1047.06,26.4582,3.78736,''),
(10639,11,10,21876,300000,0,0,0,0,0,0,0,-4537.54,1049.36,18.7409,4.41568,''),
(10639,11,10,21876,300000,0,0,0,0,0,0,0,-4551.17,1044.11,16.521,5.21853,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4523.75,1062.35,24.3041,4.43314,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4524.73,1009.76,21.3249,2.02458,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4515.91,1020.08,23.6738,2.72271,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4515.17,1033.11,20.7127,3.1765,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4525,1045.41,19.8945,4.15388,''),
(10639,13,1,333,0,21877,50,7,0,0,0,0,0,0,0,0,''),
(10639,15,0,4,0,21872,40,0,2000005473,0,0,0,0,0,0,0,''),
(10639,15,22,90,0x01 | 0x04 | 0x10 | 0x20,21877,50,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM dbscripts_on_event WHERE id = 14092;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14092,5,20,2,0,21867,100,7,0,0,0,0,0,0,0,0,'movement chenged to 2:iwaypoints');
-- spell should be casted by script. with delay
UPDATE quest_template SET SrcSpell = 0 WHERE entry IN (10639,10645);

-- Teron Gorefiend 
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, ExtraFlags = 0, MovementType = 0 WHERE entry = 21867;
UPDATE creature_template_addon SET mount = 0 WHERE entry = 21877;
DELETE FROM creature_template_spells WHERE entry = 21867;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(21867, 37729, 37727, 37788, 37728);
DELETE FROM dbscripts_on_creature_death WHERE id = 21797; -- Ancient Shadowmoon Spirit (this is not needed anymore)
DELETE FROM dbscripts_on_creature_death WHERE id = 21867;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21867,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(21867,0,0,0,0,21877,200,7,2000001011,0,0,0,0,0,0,0,''),
(21867,1,18,0,0,21877,200,7,0,0,0,0,0,0,0,0,'Karsius the Ancient Watcher despawn');
DELETE FROM dbscripts_on_creature_movement WHERE id = 2186701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2186701,0,24,10720,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2186701,7,0,0,0,0,0,0,2000005471,0,0,0,0,0,0,0,''),
(2186701,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2186701,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2186701,12,0,0,0,0,0,0,2000005472,0,0,0,0,0,0,0,''),
(2186701,13,1,22,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000001011;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001011,'Let this be a lesson to those that would do evil to our lands!',0,1,0,0,NULL);

-- Karsius the Ancient Watcher
UPDATE creature_template SET UnitFlags = 33536, ExtraFlags = 0 WHERE entry = 21877;
UPDATE creature_template_addon SET emote = 0, auras = 37497 WHERE entry = 21877;
DELETE FROM dbscripts_on_creature_death WHERE id = 21877;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21877,1,18,0,0,21867,200,7,0,0,0,0,0,0,0,0,''),
(21877,2,10,21867,32000,0,0,0,0,0,0,0,-4542.21,1023.72,9.66909,0.864165,'summon - Teron Gorefiend');

-- text should have 'talk' emote
UPDATE db_script_string SET emote = 1 WHERE entry = 2000000031;

-- spell target corrected
DELETE FROM spell_script_target WHERE entry IN (37748,37784);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(37748, 1, 21867),
(37784, 1, 21867);

