-- CompleteScript for 10719
UPDATE `quest_template` SET `CompleteEmote`=6, `OfferRewardEmote1`=6, `CompleteScript`=10719 WHERE `entry`=10719;

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10719;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10719,0,0,0,0,0,2000001203,0,0,0,0,0,0,'Tree Warden Chawn - Samia, do you know who Kolphis Darkscale is?',0,0,0,0),
(10719,6,0,0,0,0,2000001204,0,0,0,21983,5,0,'Samia Inkling - Yes, he''s the second-in-command of the wyrmcult at the Blackwing Coven to the west.',0,0,0,0);
 
DELETE FROM `db_script_string` WHERE `entry` IN(2000001203,2000001204);
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001203, 'Samia, do you know who Kolphis Darkscale is?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'Tree Warden Chawn (Entry: 22007)'),
(2000001204, 'Yes, he''s the second-in-command of the wyrmcult at the Blackwing Coven to the west.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Samia Inkling (Entry: 21983)');

-- Ruuan Weald Sister
UPDATE `creature_template` SET `SpeedWalk`=1, `SpeedRun`=1 WHERE `entry`=22151;
UPDATE `creature` SET `spawndist`=1 WHERE `id`=22151;

-- Faradella
UPDATE `creature` SET `MovementType`=1, `spawndist`=2 WHERE `id`=22133;

-- Wildlord Antelarion and Natasha
UPDATE `creature_template` SET `MovementType`=2, `SpeedWalk`=0.8, `SpeedRun`=1 WHERE `entry`=22127;
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=77716;
DELETE FROM `creature_movement_template` WHERE `entry`=22127;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22127,1,2965.87,5451.405,144.6,0,0,0),
(22127,2,2989.799,5444.495,144.7546,0,0,0),
(22127,3,3012.288,5452.813,145.8248,0,0,0),
(22127,4,3024.481,5468.78,146.6219,0,0,0),
(22127,5,3025.23,5486.211,146.245,0,0,0),
(22127,6,3015.913,5508.873,145.675,0,0,0),
(22127,7,2993.654,5520.813,147.5274,0,0,0),
(22127,8,2964.142,5506.047,143.7217,0,0,0),
(22127,9,2954.419,5477.451,143.7476,0,0,0);

-- Natasha position and linking
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=22465;
UPDATE `creature` SET `position_x`=2957.818, `position_y`=5467.874, `position_z`=144.0698, `orientation`=5.12665 WHERE `guid`=78841;
DELETE FROM `creature_linking_template` WHERE `entry`=22465;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES 
(22465, 530, 22127, 512, 10);

-- Baron Sablemane's Blackwhelp
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=22130;
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=77717;
DELETE FROM `creature_movement_template` WHERE `entry`=22130;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(22130,1,3141.459,5916.694,-10.21386,0,5,0),
(22130,2,3111.554,5942.934,-10.21386,0,0,0),
(22130,3,3081.348,5965.027,-10.21386,0,0,0),
(22130,4,3052.944,5978.975,-10.21386,0,0,0),
(22130,5,3022.363,5991.264,-10.22802,0,0,0),
(22130,6,2989.27,6000.119,-9.367424,0,0,0),
(22130,7,2950.242,6011.064,-9.650537,0,0,0),
(22130,8,2928.957,6009.918,-6.68076,0,0,0),
(22130,9,2922.349,5996.865,-4.197477,0,0,0),
(22130,10,2922.682,5979.538,-0.3954749,0,0,0),
(22130,11,2922.809,5966.112,2.120234,0,0,0),
(22130,12,2920.988,5956.359,3.205439,10000,2213001,2.845945),
(22130,13,2919.043,5980.289,-0.3970618,0,0,0),
(22130,14,2920.615,6003.244,-5.015721,0,0,0),
(22130,15,2936.664,6011.377,-8.289087,0,0,0),
(22130,16,2960.906,6019.699,-10.29373,0,0,0),
(22130,17,2980.725,6011.264,-10.09777,0,0,0),
(22130,18,3005.522,6002.453,-10.1958,0,0,0),
(22130,19,3028.046,5991.421,-10.21386,0,0,0),
(22130,20,3056.347,5970.363,-10.21386,0,0,0),
(22130,21,3080.92,5943.794,-8.872309,0,0,0),
(22130,22,3089.03,5921.072,-6.160524,0,0,0),
(22130,23,3115.218,5885.857,-9.59289,0,0,0),
(22130,24,3138.145,5842.39,-10.21386,0,0,0),
(22130,25,3163.719,5825.851,-10.21997,0,0,0),
(22130,26,3199.535,5797.52,-10.21386,0,0,0),
(22130,27,3227.868,5779.435,-10.21386,0,0,0),
(22130,28,3256.714,5761.92,-10.22858,0,0,0),
(22130,29,3292.895,5739.279,-10.21386,0,0,0),
(22130,30,3323.592,5717.406,-5.783313,0,0,0),
(22130,31,3332.465,5700.103,-0.3124876,0,0,0),
(22130,32,3325.467,5687.385,4.199953,0,0,0),
(22130,33,3292.007,5668.854,17.32291,0,0,0),
(22130,34,3268.128,5656.997,28.61922,0,0,0),
(22130,35,3255.792,5645.363,35.10957,0,0,0),
(22130,36,3254.676,5626.036,39.23331,0,0,0),
(22130,37,3273.562,5607.64,44.33537,0,0,0),
(22130,38,3303.802,5597.209,55.42167,0,0,0),
(22130,39,3334.115,5593.503,68.83993,0,0,0),
(22130,40,3354.729,5590.245,76.99325,0,0,0),
(22130,41,3366.77,5580.229,83.22839,0,0,0),
(22130,42,3366.061,5559.37,90.39366,0,0,0),
(22130,43,3353.275,5535.034,106.386,0,0,0),
(22130,44,3340.226,5515.419,121.7325,0,0,0),
(22130,45,3330.91,5500.021,132.2509,0,0,0),
(22130,46,3323.318,5481.21,139.8629,0,0,0),
(22130,47,3300.827,5462.039,142.8612,0,0,0),
(22130,48,3272.235,5449.621,145.359,0,0,0),
(22130,49,3246.389,5449.659,145.9494,0,0,0),
(22130,50,3210.349,5458.483,146.8697,0,0,0),
(22130,51,3179.061,5464.77,147.1794,0,0,0),
(22130,52,3147.923,5471.24,147.1754,0,0,0),
(22130,53,3122.895,5476.839,145.9445,0,0,0),
(22130,54,3094.954,5475.776,144.6273,0,0,0),
(22130,55,3071.021,5470.755,143.9357,0,0,0),
(22130,56,3058.306,5473.833,144.9543,0,0,0),
(22130,57,3037.667,5473.834,146.3009,0,0,0),
(22130,58,3024.434,5482.746,146.5572,0,0,0),
(22130,59,3014.202,5495.434,145.4399,0,0,0),
(22130,60,2991.71,5493.346,143.4195,0,0,0),
(22130,61,2982.661,5489.647,143.6488,10000,2213002,4.397665),
(22130,62,3003.114,5491.401,143.4684,0,0,0),
(22130,63,3014.007,5481.097,143.6676,0,0,0),
(22130,64,3016.718,5472.964,145.8813,0,0,0),
(22130,65,3025.353,5469.419,146.7926,0,0,0),
(22130,66,3044.84,5472.928,145.8929,0,0,0),
(22130,67,3083.71,5473.674,143.2523,0,0,0),
(22130,68,3106.18,5476.167,145.2586,0,0,0),
(22130,69,3134.414,5472.515,146.5504,0,0,0),
(22130,70,3168.512,5466.346,147.2052,0,0,0),
(22130,71,3201.892,5460.705,146.9669,0,0,0),
(22130,72,3231.188,5456.162,146.4947,0,0,0),
(22130,73,3259.828,5451.724,145.8029,0,0,0),
(22130,74,3295.219,5461.457,143.2146,0,0,0),
(22130,75,3317.662,5476.092,140.9099,0,0,0),
(22130,76,3330.667,5501.135,131.9712,0,0,0),
(22130,77,3348.47,5528.857,111.69,0,0,0),
(22130,78,3365.997,5562.024,89.33824,0,0,0),
(22130,79,3367.488,5577.897,83.88855,0,0,0),
(22130,80,3353.381,5591.034,76.36776,0,0,0),
(22130,81,3324.551,5594.063,64.84331,0,0,0),
(22130,82,3298.242,5599.596,52.9326,0,0,0),
(22130,83,3272.557,5607.971,44.01432,0,0,0),
(22130,84,3253.493,5626.176,39.02848,0,0,0),
(22130,85,3254.004,5643.538,35.89326,0,0,0),
(22130,86,3265.88,5655.303,29.97761,0,0,0),
(22130,87,3284.407,5657.825,22.27706,0,0,0),
(22130,88,3299.763,5666.107,15.94637,0,0,0),
(22130,89,3320.978,5678.813,7.20923,0,0,0),
(22130,90,3332.755,5698.374,0.05676436,0,0,0),
(22130,91,3329.855,5711.47,-3.666125,0,0,0),
(22130,92,3315.277,5729.259,-9.704577,0,0,0),
(22130,93,3293.304,5735.026,-10.21386,0,0,0),
(22130,94,3269.74,5747.389,-10.21386,0,0,0),
(22130,95,3249.167,5760.182,-10.22858,0,0,0),
(22130,96,3225.627,5781.436,-10.21386,0,0,0),
(22130,97,3206.542,5803.588,-10.21386,0,0,0),
(22130,98,3196.38,5832.671,-8.869625,0,0,0),
(22130,99,3184.593,5859.826,-7.294672,0,0,0),
(22130,100,3164.367,5886.809,-8.661005,0,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2213001,2213002);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2213001,0,1,35,0,0,0,0,0,0,0,0,0,'Baron Sablemane''s Blackwhelp - OneShotAttackUnarmed',0,0,0,0),
(2213001,1,36,0,0,0,0,0,0,0,22103,2,3,'Baron Sablemane - Face Baron Sablemane''s Blackwhelp',0,0,0,0),
(2213001,2,0,4,0,0,0,0,0,0,22103,2,0,'Baron Sablemane - Random Text',0,0,0,0),
(2213001,2,35,5,2,0,0,0,0,0,0,0,0,'Baron Sablemane''s Blackwhelp - Throw AI Event Type 5 (A)',0,0,0,0),
(2213001,10,36,1,0,0,0,0,0,0,22103,2,0,'Baron Sablemane - Reset Facing',0,0,0,0),

(2213002,0,1,35,0,0,0,0,0,0,0,0,0,'Baron Sablemane''s Blackwhelp - OneShotAttackUnarmed',0,0,0,0),
(2213002,1,36,0,0,0,0,0,0,0,21983,5,3,'Samia Inkling - Face Baron Sablemane''s Blackwhelp',0,0,0,0),
(2213002,2,0,3,0,0,0,0,0,0,21983,5,0,'Samia Inkling - Random Text',0,0,0,0),
(2213002,2,35,5,5,0,0,0,0,0,0,0,0,'Baron Sablemane''s Blackwhelp - Throw AI Event Type 5 (A)',0,0,0,0),
(2213002,10,36,1,0,0,0,0,0,0,21983,5,0,'Samia Inkling - Reset Facing',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001205 AND 2000001220;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001205, 'Has he found the one, yet?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Samia Inkling (Entry: 21983)'),
(2000001206, 'What does the baron want?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Samia Inkling (Entry: 21983)'),
(2000001207, 'Ask him how he wants to proceed, then come right back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Samia Inkling (Entry: 21983)'),
(2000001208, 'Hi there, cutey!  Do me a favor... ask the Baron what he wants me to do about you know what.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Samia Inkling (Entry: 21983)'),
(2000001209, 'Tell him that our Cenarion friends have been most helpful.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Samia Inkling (Entry: 21983)'),
(2000001210, 'Tell him that they have refused his ''offer''.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Samia Inkling (Entry: 21983)'),
(2000001211, 'Deal with them?  How am I supposed to deal with them?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Samia Inkling (Entry: 21983)'),
(2000001212, 'Right.  We, uh, need to... examine... those blackwhelps.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Samia Inkling (Entry: 21983)'),

(2000001213, 'No.  Inform her that I''m still searching for the prophesied one that is to assist me in the battle.  There are very few promising candidates.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Baron Sablemane (Entry: 22103)'),
(2000001214, 'Hello, little one.  What news do you bring?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Baron Sablemane (Entry: 22103)'), -- emote 6, 1, 5
(2000001215, 'Tell her that I don''t want to be connected with it at this time.  The Cenarion Expedition should be more than happy to rid themselves of them.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Baron Sablemane (Entry: 22103)'),
(2000001216, 'Very well, but make certain she knows that the blackwhelps are to be captured first.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Baron Sablemane (Entry: 22103)'),
(2000001217, 'If they will not bend the knee, then she is to see to it that they are destroyed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Baron Sablemane (Entry: 22103)'),
(2000001218, 'Must I tell her every little thing to do?  I have larger issues of my own to deal with here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Baron Sablemane (Entry: 22103)'),
(2000001219, 'I did not sanction their actions.  Tell her to deal with it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Baron Sablemane (Entry: 22103)'),
(2000001220, 'Tell her to use the druids for that!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Baron Sablemane (Entry: 22103)');

DELETE FROM `dbscript_string_template` WHERE `id` IN(3,4);
INSERT INTO `dbscript_string_template` (`id`,`string_id`) VALUES
(3,2000001205),
(3,2000001206),
(3,2000001207),
(3,2000001208),
(3,2000001209),
(3,2000001210),
(3,2000001211),
(3,2000001212),

(4,2000001213),
(4,2000001214),
(4,2000001215),
(4,2000001216),
(4,2000001217),
(4,2000001218),
(4,2000001219),
(4,2000001220);

