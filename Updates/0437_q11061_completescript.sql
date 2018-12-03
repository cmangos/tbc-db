-- A Father's Duty q.11061 Completescript
-- Script is started by spell 41109 (which is in quest_template data)
DELETE FROM spell_target_position WHERE id=41108;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(41108, 530, 2330.46, 7303.28, 365.7003, 3.54216);

DELETE FROM `creature_movement_template` WHERE `entry`=23365;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23365,1,2330.46,7303.28,365.7003,19000,2336501,2.710254),
(23365,2,2388.48,7323.022,366.0821,0,0,100),
(23365,3,2403.956,7326.238,365.3166,0,0,100),
(23365,4,2425.602,7328.778,366.0603,0,0,100),
(23365,5,2456.905,7328.807,364.9909,0,0,100),
(23365,6,2478.453,7318.382,365.0911,0,0,100),
(23365,7,2489.64,7319.959,367.9602,0,0,100),
(23365,8,2499.269,7322.674,371.8641,0,0,100),
(23365,9,2507.406,7322.218,374.0491,0,0,100),
(23365,10,2513.396,7324.969,374.6715,0,0,100),
(23365,11,2506.65,7334.407,376.5914,0,0,100),
(23365,12,2501.301,7339.496,378.507,0,0,100),
(23365,15,2502.115,7354.8,380.4968,28000,2336502,1.518436),
(23365,16,2501.762,7340.44,378.7509,0,0,100),
(23365,17,2504.961,7335.365,376.9442,0,0,100),
(23365,18,2514.731,7329.022,375.3513,0,0,100),
(23365,19,2523.857,7323.703,373.4666,0,0,100),
(23365,20,2530.638,7314.663,373.4666,5000,2336503,100),
(23365,21,2533.652,7313.149,374.7746,0,0,100),
(23365,22,2533.447,7316.091,376.6632,0,0,100),
(23365,23,2533.632,7318.173,374.5524,0,0,100),
(23365,24,2535.23,7315.936,375.0524,0,0,100),
(23365,25,2537.44,7314.543,375.5802,0,0,100),
(23365,26,2537.963,7317.232,375.3579,0,0,100),
(23365,27,2536.23,7319.043,376.0521,0,0,100),
(23365,28,2533.874,7320.764,375.08,0,0,100),
(23365,29,2530.911,7318.042,374.4968,0,0,100),
(23365,31,2530.487,7316.014,376.4689,0,0,100),
(23365,32,2528.512,7319.185,375.4412,0,0,100),
(23365,33,2529.733,7322.888,376.1076,0,0,100),
(23365,34,2531.962,7323.523,376.4968,0,0,100),
(23365,35,2537.023,7322.074,376.2847,0,0,100),
(23365,36,2541.908,7319.018,375.09,0,0,100),
(23365,37,2547.636,7318.503,375.2287,0,0,100),
(23365,38,2558.549,7312.783,375.2287,0,0,100),
(23365,39,2567.508,7306.688,375.2287,0,0,100),
(23365,40,2575.549,7305.697,378.951,0,0,100),
(23365,41,2571.671,7308.094,383.7288,0,0,100),
(23365,42,2561.646,7313.308,387.7843,0,0,100),
(23365,43,2555.156,7311.284,383.8676,0,0,100),
(23365,44,2560.29,7306.233,378.8124,0,0,100),
(23365,45,2563.351,7296.057,378.8124,0,0,100),
(23365,46,2567.216,7299.937,378.8124,0,0,100),
(23365,47,2573.686,7298.948,365.813,1000,2336504,100),
(23365,48,2573.686,7298.948,365.813,8500,2336505,4.921828),
(23365,49,2593.253,7268.279,364.9899,0,0,100),
(23365,50,2591.54,7239.053,364.9277,0,0,100),
(23365,51,2578.906,7225.053,364.9814,0,0,100),
(23365,52,2574.136,7205.383,364.1418,0,0,100),
(23365,53,2583.654,7164.126,364.8251,1000,1,100);

DELETE FROM `creature_movement_template` WHERE `entry`=23380;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(23380,1,2573.233,7295.982,365.5504,1500,5,1.58825),
(23380,2,2591.895,7269.491,364.827,0,0,100),
(23380,3,2595.734,7247.869,364.185,0,0,100),
(23380,4,2583.377,7237.241,364.5394,0,0,100),
(23380,5,2569.756,7223.433,363.8503,0,0,100),
(23380,6,2575.606,7193.863,363.8637,0,0,100),
(23380,7,2587.886,7161.841,364.5957,0,0,100),
(23380,8,2603.697,7122.514,365.4023,0,0,100),
(23380,9,2607.468,7087.224,365.3389,1,1000,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 2336501 AND 2336505;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2336501,3,0,0,0,0,2000001551,0,0,0,0,0,0,'Torkus Jr. - Thank you for helping us with the flasks.',0,0,0,0),
(2336501,7,0,0,0,0,2000001552,0,0,0,0,0,0,'Torkus Jr. - Now that the flasks are ready, we can show the Skyguard our moves!',0,0,0,0),
(2336501,9,1,92,0,0,0,0,0,0,0,0,0,'Torkus Jr. - OneShotEatNoSheathe',0,0,0,0),
(2336501,9,42,0,0,0,3699,0,0,0,0,0,0,'Torkus Jr. - Set Equipment 3699',0,0,0,0),
(2336501,13,1,92,0,0,0,0,0,0,0,0,0,'Torkus Jr. - OneShotEatNoSheathe',0,0,0,0),
(2336501,13,42,0,0,0,2198,0,0,0,0,0,0,'Torkus Jr. - Set Equipment 2198',0,0,0,0),
(2336501,17,0,0,0,0,2000001553,0,0,0,0,0,0,'Torkus Jr. - Watch out, Skyguard. Here comes Torkus Jr.!',0,0,0,0),
(2336501,17,42,1,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Reset Equipment',0,0,0,0),

(2336502,2,28,8,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Set Stand State Kneel',0,0,0,0),
(2336502,2,0,0,0,0,2000001554,0,0,0,0,0,0,'Torkus Jr. - Commander, sir! Cadet Torkus Jr. reporting for duty, sir!',0,0,0,0),
(2336502,5,0,0,0,0,2000001560,0,0,0,23334,10,7,'Sky Commander Keller - Look here, lad. I admire your dedication, but I''m not sure how to tell you this... You''re an ogre, son.',0,0,0,0),
(2336502,7,28,0,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Set Stand State Stand',0,0,0,0),
(2336502,8,1,1,0,0,0,0,0,0,23334,5,7,'Sky Commander Keller - OneShotTalk',0,0,0,0),
(2336502,14,0,0,0,0,2000001555,0,0,0,0,0,0,'Torkus Jr. - Yes, sir. An ogre, sir. But give us a chance, sir! We''ve been preparing for this since the first time the Skyguard flew over Ogri''la, sir!',0,0,0,0),
(2336502,22,0,0,0,0,2000001561,0,0,0,23334,10,7,'Sky Commander Keller - I don''t think yer hearin'' me. Nether rays just aren''t made for --',0,0,0,0),
(2336502,26,0,0,0,0,2000001556,0,0,0,0,0,0,'Torkus Jr. - Nonsense!',0,0,0,0),
(2336502,26,0,0,0,0,2000001557,0,0,0,0,0,0,'Torkus Jr. - %s makes a gesture of dismissal and heads for the launch pad.',0,0,0,0),

(2336503,1,0,0,0,0,2000001558,0,0,0,0,0,0,'Torkus Jr. - Bronco? That sounds like a good one!',0,0,0,0),
(2336503,3,0,0,0,0,2000001563,0,0,0,22987,10,7,'Skyguard Nether Ray - %s cowers in fear as it realizies what the ogre has in mind.',0,0,0,0),
(2336503,4,24,21444,0,0,0,0,0,0,0,0,8,'Torkus Jr. - Mount Up',0,0,0,0),
(2336503,4,39,1,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Set Fly On',0,0,0,0),
(2336503,5,0,0,0,0,2000001562,0,0,0,23334,60,7,'Sky Commander Keller - No, lad, not Bronco! He''s not been broken yet! You''ll get yerself killed up there!',0,0,0,0),

(2336504,0,24,0,0,0,0,0,0,0,0,0,0,'Torkus Jr. - UnMount',0,0,0,0),
(2336504,0,39,0,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Fly Off',0,0,0,0),
(2336504,0,25,1,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Set Run On',0,0,0,0),
(2336504,1,15,41123,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Cast Summon Bronco',0,0,0,0),

(2336505,0,28,1,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Set Stand State Sit',0,0,0,0),
(2336505,3,0,0,0,0,2000001564,0,0,0,23380,10,7,'Bronco - %s hisses loudly at Torkus Jr.',0,0,0,0),
(2336505,5,0,0,0,0,2000001559,0,0,0,0,0,0,'Torkus Jr. - Come back, Mr. Bronco! We''re gonna be in the Skyguard together!',0,0,0,0),
(2336505,8,28,0,0,0,0,0,0,0,0,0,0,'Torkus Jr. - Set Stand State Stand',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001551 AND 2000001564;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001551, 'Thank you for helping us with the flasks.', 0, 0, 0, 1, 'Torkus Jr. (Entry: 23365)'),
(2000001552, 'Now that the flasks are ready, we can show the Skyguard our moves!', 0, 0, 0, 1, 'Torkus Jr. (Entry: 23365)'),
(2000001553, 'Watch out, Skyguard. Here comes Torkus Jr.!', 0, 0, 0, 15, 'Torkus Jr. (Entry: 23365)'),
(2000001554, 'Commander, sir! Cadet Torkus Jr. reporting for duty, sir!', 0, 0, 0, 0, 'Torkus Jr. (Entry: 23365)'),
(2000001555, 'Yes, sir. An ogre, sir. But give us a chance, sir! We''ve been preparing for this since the first time the Skyguard flew over Ogri''la, sir!', 0, 0, 0, 1, 'Torkus Jr. (Entry: 23365)'),
(2000001556, 'Nonsense!', 0, 0, 0, 11, 'Torkus Jr. (Entry: 23365)'),
(2000001557, '%s makes a gesture of dismissal and heads for the launch pad.', 0, 2, 0, 0, 'Torkus Jr. (Entry: 23365)'),
(2000001558, 'Bronco? That sounds like a good one!', 0, 0, 0, 1, 'Torkus Jr. (Entry: 23365)'),
(2000001559, 'Come back, Mr. Bronco! We''re gonna be in the Skyguard together!', 0, 1, 0, 15, 'Torkus Jr. (Entry: 23365)'),

(2000001560, 'Look here, lad. I admire your dedication, but I''m not sure how to tell you this... You''re an ogre, son.', 0, 0, 0, 5, 'Sky Commander Keller (Entry: 23334)'),
(2000001561, 'I don''t think yer hearin'' me. Nether rays just aren''t made for --', 0, 0, 0, 1, 'Sky Commander Keller (Entry: 23334)'),
(2000001562, 'No, lad, not Bronco! He''s not been broken yet! You''ll get yerself killed up there!', 0, 1, 0, 5, 'Sky Commander Keller (Entry: 23334)'),

(2000001563, '%s cowers in fear as it realizies what the ogre has in mind.', 0, 2, 0, 0, 'Skyguard Nether Ray (Entry: 22987)'),

(2000001564, '%s hisses loudly at Torkus Jr.', 0, 2, 0, 35, 'Bronco (Entry: 23380)');


