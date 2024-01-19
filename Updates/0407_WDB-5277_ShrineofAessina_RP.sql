-- The Shrine of Aessina - Ashenvale
-- RP

-- Elenna Edune 24738
UPDATE creature SET position_x = 2782.6519, position_y = 671.998, position_z = 99.58998, orientation = 0.4014257, spawndist = 0, MovementType = 0 WHERE id IN (24738,24740); -- 24740 - pet
UPDATE `creature_template_addon` SET `auras` = 17220 WHERE `entry` = 24740;

-- moved to spawn group
DELETE FROM `spawn_group` WHERE id = 19896;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19896,'Ashenvale - The Shrine of Aessina - Elenna Edune 24738 & Goodie 24740 - Patrol', 0, 0, 0, 0x01);

DELETE FROM `spawn_group_spawn` WHERE id = 19896;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19896, 33027, 0),
(19896, 33070, 1);

DELETE FROM `spawn_group_formation` WHERE id = 19896;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19896, 3, 4, 0, 19896, 2, 'Ashenvale - The Shrine of Aessina - Elenna Edune 24738 & Goodie 24740 - Patrol');

DELETE FROM `waypoint_path` WHERE PathId IN (19896);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19896,1 ,2782.6519,671.998,99.58998,0.4014257,30000,9), -- active
(19896,2 ,2789.0254,670.83966,98.8424,100,1,2473801),
(19896,3 ,2798.2395,668.95264,98.54585,100,0,0),
(19896,4 ,2805.8335,668.64984,98.18671,100,0,0),
(19896,5 ,2815.2588,668.35156,98.26463,100,0,0),
(19896,6 ,2830.9133,670.86993,99.20157,100,0,0),
(19896,7 ,2840.3125,676.3179,99.3749  ,100,0,0),
(19896,8 ,2852.9724,682.52716,99.13583,100,0,0),
(19896,9 ,2864.5752,688.5472,99.790276,100,0,0),
(19896,10,2873.538,689.6528,99.404465 ,100,0,0),
(19896,11,2884.5896,680.5951,100.33989,100,0,0),
(19896,12,2897.5261,666.7349,106.47063,100,25000,2473802),
(19896,13,2890.59,679.68146,102.57707 ,100,0,0),
(19896,14,2884.0168,687.41614,98.85539,100,0,0),
(19896,15,2881.9883,697.75696,100.73749,100,55000,0),
(19896,16,2881.4778,709.8874,102.05069,100,0,0),
(19896,17,2854.3079,704.85736,102.302124,100,0,0),
(19896,18,2834.5469,698.6539,101.865585,100,0,0),
(19896,19,2819.0818,689.566,102.43527,100,0,0),
(19896,20,2806.4849,683.4639,101.393456,100,0,0),
(19896,21,2792.7126,675.0166,99.73263,100,0,0),
(19896,22,2775.3652,665.4934,100.015945,100,30000,2473803),
(19896,23,2775.2815,656.0078,98.33178  ,100,0,0),
(19896,24,2767.1204,652.9415,98.6825   ,100,0,0),
(19896,25,2751.242,656.08386,100.23845 ,100,0,0),
(19896,26,2744.2695,663.0127,102.21971 ,100,0,0),
(19896,27,2730.7874,666.13,103.34594   ,100,0,0),
(19896,28,2715.8735,657.7776,104.15244 ,100,0,0),
(19896,29,2696.1816,648.73645,104.71536,100,0,0),
(19896,30,2680.1816,649.1113,104.89474,100,90000,2473804),
(19896,31,2654.9915,641.52765,102.81556,100,10,2473805),
(19896,32,2629.3892,636.4705,102.495316,100,0,0),
(19896,33,2614.0063,632.5361,104.312035,100,0,0),
(19896,34,2600.0508,623.1497,106.607704,100,0,0),
(19896,35,2601.9377,589.58997,102.25118,100,0,0),
(19896,36,2627.3713,582.07135,101.81157,100,0,0),
(19896,37,2635.6572,586.52246,100.81128,100,0,0),
(19896,38,2650.4065,602.9108,100.65209 ,100,0,0),
(19896,39,2659.6934,618.2131,100.39602 ,100,0,0),
(19896,40,2672.9653,630.0827,102.412155,100,0,0),
(19896,41,2688.1772,643.78546,103.23697,100,0,0),
(19896,42,2710.8567,644.9182,101.42641 ,100,0,0),
(19896,43,2729.8008,646.36523,98.36789 ,100,0,0),
(19896,44,2746.0725,647.6156,97.828094 ,100,0,0),
(19896,45,2754.3545,661.93274,101.391884,100,0,0),
(19896,46,2760.6462,669.7832,101.84924 ,100,0,0),
(19896,47,2774.8164,674.3255,100.89554,100,59000,10), -- unactive
(19896,48,2782.6519,671.998,99.58998,100,0,0);

DELETE FROM `waypoint_path_name` WHERE PathId IN (19896);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19896,'Ashenvale - The Shrine of Aessina - Elenna Edune 24738 & Goodie 24740 - Patrol');

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2473801 AND 2473805;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2473801,1,0,0,0,0,0,0,0x04,23709,0,0,0,0,0,0,0,'text'),
(2473802,3000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2473802,22000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2473803,1,31,24737,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24737'),
(2473803,100,21,1,0,0,24737,50,7,0,0,0,0,0,0,0,0,'buddy 24737 active'),
(2473803,2500,3,0,0,0,24737,50,7,0,0,0,0,0,0,0,0.680678,'buddy - move'),
(2473803,3000,0,0,0,0,0,0,0x04,23712,0,0,0,0,0,0,0,'text'),
(2473803,12000,0,0,0,0,24737,50,7,23719,0,0,0,0,0,0,0,'buddy - text'),
(2473803,20000,0,0,0,0,0,0,0x04,23718,0,0,0,0,0,0,0,'text'),
(2473803,28000,0,0,0,0,24737,50,7,23720,0,0,0,0,0,0,0,'buddy - text'),
(2473803,28100,20,2,0,0,24737,50,7,0,0,0,0,0,0,0,0,'buddy - wps'),
(2473804,1,22,79,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'faction'),
(2473804,2,22,79,3,0,24740,33070,7|0x10,0,0,0,0,0,0,0,0,'buddy - faction'),
(2473805,1,22,80,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'faction'),
(2473805,2,22,1076,0,0,24740,33070,7|0x10,0,0,0,0,0,0,0,0,'buddy - faction');

-- unload if killed
DELETE FROM dbscripts_on_creature_death WHERE id IN (24738,24740);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24738,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(24740,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

-- Benjari Edune 24739
UPDATE creature_template SET MovementType = 0 WHERE Entry = 24739; -- equip 1 - 5305

-- William Dunadaire 24737
UPDATE creature_template SET MovementType = 0, `UnitFlags` = `UnitFlags`&~16 WHERE Entry = 24737; -- wps set by script

DELETE FROM creature_movement_template WHERE entry = 24737;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(24737,1 ,2772.0986,664.31433,100.179565,3.106686,6000,0),
(24737,2 ,2773.7263,669.63556,100.45758,100,1,2473701),
(24737,3 ,2770.9062,673.2002,101.08078 ,100,0,0),
(24737,4 ,2763.8245,675.9156,102.371025,100,0,0),
(24737,5 ,2757.8816,676.2958,103.528534,100,0,0),
(24737,6 ,2757.8816,676.2958,103.528534,2.2165682,45000,2473702),
(24737,7 ,2758.562,673.3567,103.35402,100,0,0),
(24737,8 ,2761.312,672.1067,102.35402,100,0,0),
(24737,9 ,2765.7424,670.91754,101.17951,100,0,0),
(24737,10,2773.7063,669.029,100.413376,100,0,0),
(24737,11,2776.0876,665.3186,99.89734,100,0,0),
(24737,12,2772.0986,664.31433,100.179565,100,0,0),
(24737,13,2772.0986,664.31433,100.179565,3.106686,2000,2473703); -- unactive + set idle

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2473701 AND 2473703;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2473701,1,0,0,0,0,0,0,0x04,23721,0,0,0,0,0,0,0,'text'),
(2473702,10,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'), -- he reacts diff depends if c.24735 is there or not (self check)
(2473702,100,35,6,20,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 6'), -- he reacts diff depends if c.24735 is there or not
(2473703,1,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2473703,10,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

UPDATE creature_template SET `MinLevel` = 18, `MaxLevel` = 22 WHERE Entry = 24736;

DELETE FROM dbscripts_on_relay WHERE id IN (19950,19951,19952);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19950,1,0,0,0,0,0,0,0x04,23728,0,0,0,0,0,0,0,'Part of Sulan Dunadaire 24736 EAI: text'),
(19950,6000,31,24737,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Sulan Dunadaire 24736 EAI: search for 24737'),
(19950,7000,0,0,0,0,24737,33005,7|0x10,23729,0,0,0,0,0,0,0,'Part of Sulan Dunadaire 24736 EAI: buddy - text'),
(19951,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Becanna Edune 24735 EAI: active'),
(19951,4000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Becanna Edune 24735 EAI: wps'),
(19952,1,31,24735,20,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of William Dunadaire 24737 EAI: search for 24735 - Terminate if alive'),
(19952,1000,0,0,0,0,0,0,0x04,23722,0,0,0,0,0,0,0,'Part of William Dunadaire 24737 EAI: text');
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `id` IN (23726,23721,23736);

-- Becanna Edune 24735
UPDATE creature SET position_x = 2754.5227, position_y = 678.6095, position_z = 104.834946, orientation = 5.7, spawndist = 0, MovementType = 0 WHERE id IN (24735);
DELETE FROM creature_movement WHERE Id=32943;
UPDATE creature_template SET MovementType = 0, `MinLevel` = 18, `MaxLevel` = 22 WHERE Entry = 24735;
UPDATE creature_template_addon SET auras = NULL WHERE Entry = 24735;
DELETE FROM creature_movement_template WHERE entry = 24735;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(24735,1 ,2754.5227,678.6095,104.834946,5.7,39000,2473501),
(24735,2 ,2750.2932,683.4411,104.68656,100,0,0),
(24735,3 ,2748.0613,685.1251,104.66753,100,33000,2473502),
(24735,4 ,2762.9268,675.5975,102.43157,100,0,0),
(24735,5 ,2778.9546,682.6302,101.77835,100,0,0),
(24735,6 ,2796.464,684.7155,101.51117 ,100,0,0),
(24735,7 ,2812.323,681.45996,101.07   ,100,0,0),
(24735,8 ,2825.1423,686.20557,101.543724,100,0,0),
(24735,9 ,2845.2947,696.2254,100.89094 ,100,0,0),
(24735,10,2862.7727,708.3454,103.341064,100,0,0),
(24735,11,2881.9204,714.58276,102.44963,100,0,0),
(24735,12,2884.913,728.46704,103.44713 ,100,0,0),
(24735,13,2876.5422,741.57837,113.34857,100,20000,2473503),
(24735,14,2880.6587,716.85767,102.76494,100,0,0),
(24735,15,2861.9854,698.20306,101.61369,100,0,0),
(24735,16,2835.1057,679.8427,100.569534,100,0,0),
(24735,17,2804.9243,671.65094,98.89709 ,100,0,0),
(24735,18,2788.295,686.0449,102.18335  ,100,0,0),
(24735,19,2785.2317,691.6434,103.58723 ,100,10000,2473504),
(24735,20,2776.6025,683.58154,102.19638,100,0,0),
(24735,21,2766.3435,676.24554,102.08353,100,0,0),
(24735,22,2758.6755,676.78766,103.4123 ,100,0,0),
(24735,23,2754.5227,678.6095,104.834946,100,0,0),
(24735,24,2754.5227,678.6095,104.834946,5.7246799,1000,2473505);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2473501 AND 2473505;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2473501,1,0,0,0,0,0,0,0x04,23730,0,0,0,0,0,0,0,'text'),
(2473501,8000,0,0,0,0,24737,33005,7|0x10,23723,0,0,0,0,0,0,0,'buddy - text'),
(2473501,15000,0,0,0,0,0,0,0x04,23731,0,0,0,0,0,0,0,'text'),
(2473501,23000,0,0,0,0,24737,33005,7|0x10,23725,0,0,0,0,0,0,0,'buddy - text'),
(2473501,29000,0,0,0,0,0,0,0x04,23732,0,0,0,0,0,0,0,'text'),
(2473501,38000,0,0,0,0,24737,33005,7|0x10,23726,0,0,0,0,0,0,0,'buddy - text'),
(2473502,3000,0,0,0,0,0,0,0x04,23734,0,0,0,0,0,0,0,'text'),
(2473502,11000,0,0,0,0,24734,32936,7|0x10,23737,0,0,0,0,0,0,0,'buddy - text'),
(2473502,20000,0,0,0,0,0,0,0x04,23735,0,0,0,0,0,0,0,'text'),
(2473502,28000,0,0,0,0,24734,32936,7|0x10,23738,0,0,0,0,0,0,0,'buddy - text'),
(2473502,31000,15,32356,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 32356'),
(2473503,1,14,32356,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unaura 32356'),
(2473503,100,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote 69'),
(2473503,18000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(2473503,19000,15,32356,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 32356'),
(2473504,1,14,32356,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unaura 32356'),
(2473504,2000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2473504,5000,0,0,0,0,0,0,0x04,23736,0,0,0,0,0,0,0,'text'),
(2473504,8000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2473505,1,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2473505,10,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

-- Aleanna Edune 24734
UPDATE creature SET position_x = 2750.697, position_y = 689.6003, position_z = 104.8626, orientation = 0.917687, spawndist = 0, MovementType = 4 WHERE id IN (24734); -- linear
DELETE FROM creature_movement WHERE Id=32943;
UPDATE creature_template SET MovementType = 0, `MinLevel` = 18, `MaxLevel` = 22 WHERE Entry = 24734;
UPDATE creature_template_addon SET auras = NULL WHERE Entry = 24734;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (32936, 24734);
REPLACE INTO `npc_text` (`ID`, `text0_1`) VALUES
(24734, 'Hello $R, it is a pleasure to make your acquaintance.');

DELETE FROM creature_movement_template WHERE entry = 24734;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(24734,1,2750.697,689.6003,104.8626,0.917687,45000,0),
(24734,2,2744.5671,685.795,104.64744,100,0,0),
(24734,3,2743.7808,683.38495,104.76545,100,25000,0);

-- Ghostpaw Runner 3823
UPDATE creature SET position_x = 2650.910156, position_y = 673.667053, position_z = 120.694778, orientation = 0.196051 WHERE guid = 34942;

UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` IN (24734,24735,24736,24737,24738,24739);
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 3.75) WHERE `entry` = 24740;

