/* DBScriptData
DBName: Tempest Keep - The Eye
DBScriptName: instance_the_eye
DB%Complete: 80
DBComment:
ToDO: Check for more RPs and rework Tempest-Smith RPs
EndDBScriptData */

SET @CGUID := 5500000; -- creatures
SET @OGUID := 5500000; -- gameobjects
SET @PGUID := 48800; -- pools
SET @SGGUID := 5500000; -- spawn_groups
SET @STRINGID := 5500000; -- used for StringID's
SET @RELAYID := 5500000; -- used for dbscript_relay

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- Phenix-Hawk
(@CGUID+62, 1, 357.12787,-90.9714,20.050905, 100, 0, 0),
(@CGUID+62, 2, 308.62036,-90.155365,20.179476, 100, 0, 0),
(@CGUID+62, 3, 278.25125,-78.9372,20.179789, 100, 0, 0),
(@CGUID+62, 4, 245.54774,-44.11123,20.179893, 100, 0, 0),
(@CGUID+62, 5, 237.7101,-3.185129,26.845533, 100, 0, 0),
(@CGUID+62, 6, 244.19905,41.52916,20.181135, 100, 0, 0),
(@CGUID+62, 7, 264.55344,65.30175,20.179731, 100, 0, 0),
(@CGUID+62, 8, 306.48563,88.13809,20.179314, 100, 0, 0),
(@CGUID+62, 9, 351.13263,89.27576,20.209774, 100, 0, 0),
(@CGUID+62, 10, 390.0448,72.604225,20.17925, 100, 0, 0),
(@CGUID+62, 11, 411.91235,43.539856,20.179478, 100, 0, 0),
(@CGUID+62, 12, 424.0854,14.535274,20.179274, 100, 0, 0),
(@CGUID+62, 13, 423.90387,-27.01116,20.179367, 100, 0, 0),
(@CGUID+62, 14, 409.96698,-46.97388,20.179514, 100, 0, 0),
(@CGUID+62, 15, 392.50244,-74.72135,20.179325, 100, 0, 0),
-- Phoenix-Hawk
(@CGUID+63, 1, 243.69856,-30.80361,20.173082, 100, 0, 0),
(@CGUID+63, 2, 251.01363,-49.446224,20.179844, 100, 0, 0),
(@CGUID+63, 3, 269.5972,-71.95888,20.180143, 100, 0, 0),
(@CGUID+63, 4, 295.8723,-83.535995,20.17968, 100, 0, 0),
(@CGUID+63, 5, 332.14322,-90.43943,20.276579, 100, 0, 0),
(@CGUID+63, 6, 371.6328,-83.46188,19.915161, 100, 0, 0),
(@CGUID+63, 7, 398.48242,-65.72802,20.179396, 100, 0, 0),
(@CGUID+63, 8, 409.35928,-46.213287,20.180698, 100, 0, 0),
-- Phoenix-Hawk
(@CGUID+64, 1, 244.32275,38.13153,20.180424, 100, 0, 0),
(@CGUID+64, 2, 258.2736,58.820984,20.17975, 100, 0, 0),
(@CGUID+64, 3, 284.328,78.01011,20.17977, 100, 0, 0),
(@CGUID+64, 4, 309.90018,86.33295,20.179213, 100, 0, 0),
(@CGUID+64, 5, 351.08105,85.944336,20.148655, 100, 0, 0),
(@CGUID+64, 6, 378.6678,78.538414,20.175188, 100, 0, 0),
(@CGUID+64, 7, 400.30106,58.746677,20.17938, 100, 0, 0),
(@CGUID+64, 8, 407.83536,44.418842,20.179426, 100, 0, 0),
-- Phoenix-Hawk
(@CGUID+65, 1, 393.09442,71.806984,20.179276, 100, 0, 0),
(@CGUID+65, 2, 364.4904,86.93881,19.899294, 100, 0, 0),
(@CGUID+65, 3, 315.06958,88.61644,20.179047, 100, 0, 0),
(@CGUID+65, 4, 278.68005,77.846535,20.179838, 100, 0, 0),
(@CGUID+65, 5, 247.10265,42.687233,20.1815, 100, 0, 0),
(@CGUID+65, 6, 238.54498,-0.783009,27.160498, 100, 0, 0),
(@CGUID+65, 7, 248.1438,-44.6957,20.179852, 100, 0, 0),
(@CGUID+65, 8, 267.64313,-70.481125,20.180151, 100, 0, 0),
(@CGUID+65, 9, 304.74136,-89.18661,20.17961, 100, 0, 0),
(@CGUID+65, 10, 342.51788,-91.57152,20.239727, 100, 0, 0),
(@CGUID+65, 11, 372.6342,-85.409676,19.976616, 100, 0, 0),
(@CGUID+65, 12, 390.3265,-72.53096,20.179314, 100, 0, 0),
(@CGUID+65, 13, 408.78253,-48.827328,20.180618, 100, 0, 0),
(@CGUID+65, 14, 423.3208,-14.964696,20.179365, 100, 0, 0),
(@CGUID+65, 15, 423.24957,11.023921,20.179274, 100, 0, 0),
(@CGUID+65, 16, 409.24487,45.13489,20.179453, 100, 0, 0),
-- Crystalcore Devastator
(@CGUID+67, 1, 475.72092,86.03086,20.252535, 100, 0, 0),
(@CGUID+67, 2, 486.81604,97.507996,20.289883, 100, 0, 0),
(@CGUID+67, 3, 497.40924,110.58228,20.289906, 100, 0, 0),
(@CGUID+67, 4, 507.257,127.883,20.271929, 100, 0, 0),
(@CGUID+67, 5, 514.15625,150.00967,20.235924, 100, 0, 0),
(@CGUID+67, 6, 520.88763,179.39882,20.278658, 100, 0, 0),
(@CGUID+67, 7, 518.6552,206.79694,20.289883, 100, 0, 0),
(@CGUID+67, 8, 511.54654,229.24347,20.301516, 100, 0, 0);

DELETE FROM `creature_movement_template` WHERE `entry` IN (19514);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(19514, 0, 1, 370.328, -32.5953, 44.0863, 100, 0, 0),
(19514, 0, 2, 383.009, -0.892289, 43.9995, 100, 0, 0),
(19514, 0, 3, 370.542, 31.2867, 43.8086, 100, 0, 0),
(19514, 0, 4, 332.547, 45.7709, 43.6697, 100, 0, 0),
(19514, 0, 5, 294.315, 30.9292, 43.8919, 100, 0, 0),
(19514, 0, 6, 282.064, -0.653615, 43.9197, 100, 0, 0),
(19514, 0, 7, 294.213, -32.4156, 43.6141, 100, 0, 0),
(19514, 0, 8, 332.342, -47.5406, 43.6975, 100, 0, 0);

DELETE FROM creature_spawn_data WHERE guid IN(@CGUID+3, @CGUID+62, @CGUID+63, @CGUID+64, @CGUID+65);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(@CGUID+3, 1),
(@CGUID+62, 1),
(@CGUID+63, 1),
(@CGUID+64, 1),
(@CGUID+65, 1);

-- INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(19514, 0, 0, 1, 0, 33554432, NULL), -- Al'ar
(19622, 0, 0, 1, 0, 0, NULL), -- Kael'thas Sunstrider
(20037, 0, 0, 0, 0, 0, '37318'), -- Tempest Falconer
(20039, 0, 0, 0, 0, 0, '19818'), -- Phoenix-Hawk - Double Attack
(21271, 0, 0, 1, 0, 0, '12787'); -- Infinity Blades

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(18806, 550, 18805, 4112, 0), -- Solarium Priest -> High Astromancer Solarian
(18925, 550, 18805, 4112, 0), -- Solarium Agent -> High Astromancer Solarian
(19551, 550, 19514, 12304, 0); -- Ember of Al'ar -> Al'ar

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 18805, 550, 1, 432.74, -373.645, 18.0138, 1.39626, 604800, 604800, 0, 0), -- High Astromancer Solarian
(@CGUID+2, 18928, 550, 1, 432.419, -373.063, 17.9609, 4.09901, 10800, 10800, 0, 0), -- Astromancer Solarian Spotlight
(@CGUID+3, 19514, 550, 1, 370.328, -32.5953, 44.0863, 3.19012, 604800, 604800, 0, 3), -- Al'ar
(@CGUID+4, 19516, 550, 1, 424.235, 403.475, 14.9773, 4.99164, 604800, 604800, 0, 0), -- Void Reaver
(@CGUID+5, 19622, 550, 1, 795.408, -1.60475, 48.8118, 3.14159, 604800, 604800, 0, 0), -- Kael'thas Sunstrider
(@CGUID+6, 20031, 550, 1, 476.057, -82.85, 20.235, 5.427, 10800, 10800, 0, 0), -- Bloodwarder Legionnaire
(@CGUID+7, 20031, 550, 1, 471.636, -86.907, 20.237, 5.449, 10800, 10800, 0, 0), -- Bloodwarder Legionnaire
(@CGUID+8, 0, 550, 1, 104.595, -11.3571, -2.25123, 2.46091, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+9, 0, 550, 1, 104.795, 8.55721, -2.25027, 3.80482, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+10, 0, 550, 1, 191.414, -5.72624, -2.35336, 3.01942, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+11, 20031, 550, 1, 489.89606, -337.79276, 17.875635, 5.2278, 10800, 10800, 0, 0), -- Bloodwarder Legionnaire
(@CGUID+12, 20031, 550, 1, 484.42255, -340.25052, 17.105478, 5.2034, 10800, 10800, 0, 0), -- Bloodwarder Legionnaire
(@CGUID+13, 20031, 550, 1, 430.8447, -293.36963, 19.610796, 3.240, 10800, 10800, 0, 0), -- Bloodwarder Legionnaire
(@CGUID+14, 20031, 550, 1, 431.00723, -299.4022, 18.825289, 3.2643, 10800, 10800, 0, 0), -- Bloodwarder Legionnaire
(@CGUID+15, 0, 550, 1, 191.375, 3.30484, -2.35456, 3.26377, 7200, 7200, 0, 0), -- spawn_group_squad
(@CGUID+16, 0, 550, 1, 108.604, 5.36372, -2.24215, 5.11381, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+17, 0, 550, 1, 62.1931, -6.53074, -2.34494, 2.74017, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+18, 0, 550, 1, 61.6321, 3.35163, -2.34492, 3.63028, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+19, 0, 550, 1, 188.956, 5.88125, -2.3803, 3.33358, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+20, 0, 550, 1, 108.159, -8.67961, -2.24247, 1.15192, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+21, 0, 550, 1, 58.5711, -10.2187, -2.34494, 2.26893, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+22, 0, 550, 1, 187.621, -10.937, -2.3892, 2.86234, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+23, 0, 550, 1, 188.992, -8.09278, -2.37145, 2.94961, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+24, 0, 550, 1, 53.3193, 7.81006, -2.34492, 4.5204, 7200, 7200, 0, 0), -- spawn_group_squad
(@CGUID+25, 0, 550, 1, 114.112, -8.94633, -2.24276, 1.90241, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+26, 0, 550, 1, 113.951, 5.66478, -2.24247, 4.36332, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+27, 0, 550, 1, 53.8861, -10.7066, -2.34495, 1.8326, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+28, 0, 550, 1, 57.8223, 7.00091, -2.34492, 4.10152, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+29, 0, 550, 1, 188.045, 8.61233, -2.39762, 3.42085, 10800, 10800, 0, 0), -- spawn_group_squad
(@CGUID+30, 20035, 550, 1, 61.8024, -1.52268, -2.41246, 0.00479514, 10800, 10800, 0, 0), -- Bloodwarder Marshal
(@CGUID+31, 20035, 550, 1, 639.83, 2.04339, 46.8622, 6.21337, 7200, 7200, 0, 0), -- Bloodwarder Marshal
(@CGUID+32, 20035, 550, 1, 724.668, 47.5516, 46.8622, 5.48033, 7200, 7200, 0, 0), -- Bloodwarder Marshal
(@CGUID+33, 20035, 550, 1, 728.804, -43.1283, 46.8621, 3.76991, 7200, 7200, 0, 0), -- Bloodwarder Marshal
(@CGUID+34, 0, 550, 1, 351.418, -316.259, 22.1003, 5.14872, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+35, 0, 550, 1, 505.606, -151.263, 20.3535, 2.56563, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+36, 0, 550, 1, 504.446, -156.253, 21.6161, 0.331613, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+37, 0, 550, 1, 504.087, -237.534, 20.3063, 3.82227, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+38, 20036, 550, 1, 60.1519, 0.705531, -2.34493, 5.72144, 10800, 10800, 0, 0), -- Bloodwarder Squire
(@CGUID+39, 20036, 550, 1, 60.3027, -3.7269, -2.34493, 0.576039, 10800, 10800, 0, 0), -- Bloodwarder Squire
(@CGUID+40, 0, 550, 1, 335.747, -376.818, 22.1003, 4.64258, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+41, 0, 550, 1, 510.537, -246.791, 20.2972, 6.17846, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+42, 0, 550, 1, 531.456, -366.802, 22.1002, 3.38594, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+43, 0, 550, 1, 513.288, -421.953, 22.1003, 5.11381, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+44, 0, 550, 1, 388.687, -457.694, 22.1003, 1.8326, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+45, 0, 550, 1, 438.087, -471.081, 22.1003, 1.39626, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+46, 20037, 550, 1, 285.916, 16.4682, -2.34852, 0.678321, 10800, 10800, 0, 0), -- Tempest Falconer
(@CGUID+47, 20037, 550, 1, 290.39, 13.2804, -2.30604, 6.23696, 10800, 10800, 0, 0), -- Tempest Falconer
(@CGUID+48, 20037, 550, 1, 373.944, -16.3073, -2.32662, 3.97025, 10800, 10800, 0, 0), -- Tempest Falconer
(@CGUID+49, 20037, 550, 1, 379.053, -16.1672, -2.30287, 3.60934, 10800, 10800, 0, 0), -- Tempest Falconer
(@CGUID+50, 20038, 550, 1, 375.688, -19.1652, -2.30335, 4.11309, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+51, 20038, 550, 1, 382.835, -20.5917, -2.30167, 3.46843, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+52, 20038, 550, 1, 371.292, -17.9986, -2.3044, 3.60761, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+53, 20038, 550, 1, 384.011, -14.3954, -2.30193, 3.61841, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+54, 20038, 550, 1, 292.569, 8.86988, -2.30605, 0.576295, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+55, 20038, 550, 1, 289.016, 13.9236, -2.30604, 5.804, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+56, 20038, 550, 1, 280.948, 11.1975, -2.30602, 0.0826095, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+57, 20038, 550, 1, 299, 16.0934, -2.30607, 4.09528, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+58, 20038, 550, 1, 294.354, 22.0526, -2.30605, 4.73032, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+59, 20038, 550, 1, 284.131, 21.6924, -2.30603, 5.30217, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+60, 20038, 550, 1, 379.177, -10.8088, -2.30328, 3.80249, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+61, 20038, 550, 1, 373.836, -10.8204, -2.30446, 3.93352, 10800, 10800, 0, 0), -- Phoenix-Hawk Hatchling
(@CGUID+62, 20039, 550, 1, 392.50244, -74.72135, 20.179325, 3.57221, 10800, 10800, 0, 2), -- Phoenix-Hawk
(@CGUID+63, 20039, 550, 1, 243.69856, -30.80361, 20.173082, 5.07862, 10800, 10800, 0, 4), -- Phoenix-Hawk
(@CGUID+64, 20039, 550, 1, 244.32275, 38.13153, 20.180424, 1.05579, 10800, 10800, 0, 4), -- Phoenix-Hawk
(@CGUID+65, 20039, 550, 1, 393.09442, 71.806984, 20.179276, 2.65501, 10800, 10800, 0, 2), -- Phoenix-Hawk
(@CGUID+66, 20040, 550, 1, 459.577, 337.187, 15.2522, 2.35619, 10800, 10800, 0, 0), -- Crystalcore Devastator
(@CGUID+67, 20040, 550, 1, 475.72092, 86.03086, 20.252535, 1.26854, 10800, 10800, 0, 4), -- Crystalcore Devastator
(@CGUID+68, 20040, 550, 1, 423.913, 327.611, 15.2007, 1.48353, 10800, 10800, 0, 0), -- Crystalcore Devastator
(@CGUID+69, 20040, 550, 1, 488.87756, 342.66516, 17.682777, 4.13185, 10800, 10800, 0, 0), -- Crystalcore Devastator
(@CGUID+70, 20041, 550, 1, 516.177, 243.245, 20.3168, 4.69494, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+71, 20041, 550, 1, 499.913, 234.991, 20.3294, 5.91667, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+72, 20041, 550, 1, 523.206, -137.925, 20.3386, 3.47321, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+73, 20041, 550, 1, 530.071, -158.822, 20.3428, 3.59538, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+74, 20041, 550, 1, 522.524, 136.295, 20.336, 2.94961, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+75, 20041, 550, 1, 528.337, 159.21, 20.3332, 3.07178, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+76, 20041, 550, 1, 393.282, 353.826, 15.3139, 0.349066, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+77, 20041, 550, 1, 389.993, 363.854, 15.3363, 0.279253, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+78, 20041, 550, 1, 476.323, 378.244, 15.319, 3.35103, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+79, 20041, 550, 1, 473.639, 388.329, 15.3246, 3.49066, 10800, 10800, 0, 0), -- Crystalcore Sentinel
(@CGUID+80, 20042, 550, 1, 397.997, 361.119, 14.9771, 3.42085, 10800, 10800, 0, 0), -- Tempest-Smith
(@CGUID+81, 20042, 550, 1, 457.151, 344.334, 14.9878, 4.99164, 10800, 10800, 0, 0), -- Tempest-Smith
(@CGUID+82, 20042, 550, 1, 468.497, 382.066, 14.9938, 0.925025, 10800, 10800, 0, 0), -- Tempest-Smith
(@CGUID+83, 20042, 550, 1, 426.618, 334.85, 14.6985, 4.29351, 10800, 10800, 0, 0), -- Tempest-Smith
(@CGUID+84, 20042, 550, 1, 490.7227, 338.2184, 18.172142, 4.09591, 10800, 10800, 0, 0), -- Tempest-Smith
(@CGUID+85, 20042, 550, 1, 484.1029, 342.70276, 17.150923, 3.96082, 10800, 10800, 0, 0), -- Tempest-Smith
(@CGUID+86, 0, 550, 1, 352.458, -319.709, 22.1003, 1.81514, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+87, 0, 550, 1, 344.225, -333.593, 22.1003, 2.28638, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+88, 0, 550, 1, 503.185, -146.249, 20.3612, 5.5676, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+89, 0, 550, 1, 502.495, -149.418, 20.3666, 4.90438, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+90, 0, 550, 1, 506.166, -154.226, 20.3567, 3.9619, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+91, 0, 550, 1, 508.967, -158.539, 20.3488, 2.74017, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+92, 0, 550, 1, 498.681, -241.203, 20.3193, 1.69297, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+93, 0, 550, 1, 335.097, -368.078, 22.1003, 6.05629, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+94, 0, 550, 1, 500.876, -238.636, 20.3007, 4.74729, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+95, 0, 550, 1, 340.303, -370.587, 22.1003, 2.28638, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+96, 0, 550, 1, 516.495, -247.968, 20.3432, 1.53589, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+97, 0, 550, 1, 514.988, -242.227, 20.329, 4.45059, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+98, 0, 550, 1, 516.322, -245.612, 20.313, 3.22886, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+99, 0, 550, 1, 330.858, -377.786, 22.1003, 5.91667, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+100, 0, 550, 1, 528.726, -364.973, 22.1002, 5.41052, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+101, 0, 550, 1, 527.223, -368.722, 22.1002, 0.680678, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+102, 0, 550, 1, 527.879, -381.096, 22.1001, 0.575959, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+103, 0, 550, 1, 518.084, -415.48, 22.1003, 0.331613, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+104, 0, 550, 1, 519.811, -413.351, 22.1003, 5.2709, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+105, 0, 550, 1, 380.025, -451.003, 22.1003, 3.47321, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+106, 0, 550, 1, 376.944, -455.145, 22.1003, 5.60251, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+107, 0, 550, 1, 439.473, -468.015, 22.1003, 3.90954, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+108, 0, 550, 1, 435.639, -466.829, 22.1003, 5.02655, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+109, 0, 550, 1, 428.962, -474.043, 22.1003, 1.90241, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+110, 0, 550, 1, 506.688, -157.552, 20.3571, 3.94444, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+111, 0, 550, 1, 354.351, -317.713, 22.1003, 3.29867, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+112, 0, 550, 1, 343.001, -330.82, 22.1003, 5.55015, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+113, 0, 550, 1, 346.987, -331.116, 22.1003, 2.47837, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+114, 0, 550, 1, 505.014, -159.059, 20.4535, 6.19592, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+115, 0, 550, 1, 503.468, -153.307, 20.5073, 5.5676, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+116, 0, 550, 1, 502.859, -151.514, 22.0813, 1.309, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+117, 0, 550, 1, 505.813, -148.402, 20.3507, 3.92699, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+118, 0, 550, 1, 338.58, -366.39, 22.1003, 4.99164, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+119, 0, 550, 1, 501.313, -241.167, 20.2896, 0.541052, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+120, 0, 550, 1, 507.289, -160.424, 20.3595, 2.32129, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+121, 0, 550, 1, 502.845, -244.156, 20.3911, 1.23918, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+122, 0, 550, 1, 513.877, -247.938, 20.2956, 1.62316, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+123, 0, 550, 1, 504.222, -240.496, 20.3758, 4.18879, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+124, 0, 550, 1, 512.657, -244.061, 20.3157, 5.65487, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+125, 0, 550, 1, 337.739, -380.531, 22.1003, 2.89725, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+126, 0, 550, 1, 526.949, -375.875, 22.1001, 4.90438, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+127, 0, 550, 1, 531.524, -379.077, 22.1002, 2.67035, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+128, 0, 550, 1, 512.518, -425.02, 22.1003, 0.802851, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+129, 0, 550, 1, 521.402, -415.551, 22.1003, 2.84489, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+130, 0, 550, 1, 515.806, -426.442, 22.1003, 2.56563, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+131, 0, 550, 1, 375.265, -452.356, 22.1003, 4.59022, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+132, 0, 550, 1, 391.798, -459.901, 22.1003, 3.94444, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+133, 0, 550, 1, 388.877, -462.481, 22.1003, 1.62316, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+134, 0, 550, 1, 427.989, -468.895, 22.1003, 4.62512, 7200, 7200, 0, 0), -- spawn_group_entry
(@CGUID+135, 20045, 550, 1, 487.1593, -339.02164, 17.490557, 5.1445, 10800, 10800, 0, 0), -- Nether Scryer
(@CGUID+136, 20045, 550, 1, 431.24652, -296.3426, 19.22379, 3.2407, 10800, 10800, 0, 0), -- Nether Scryer
(@CGUID+137, 20046, 550, 1, 473.847, -84.88, 20.216, 5.49388, 10800, 10800, 0, 0), -- Astromancer Lord
(@CGUID+138, 20047, 550, 1, 651.426, 87.7581, 46.8958, 2.32129, 7200, 7200, 0, 0), -- Crimson Hand Battle Mage
(@CGUID+139, 20047, 550, 1, 597.978, 114.958, 39.383, 2.79253, 7200, 7200, 0, 0), -- Crimson Hand Battle Mage
(@CGUID+140, 20047, 550, 1, 587.318, -118.038, 37.4877, 3.76991, 7200, 7200, 0, 0), -- Crimson Hand Battle Mage
(@CGUID+141, 20047, 550, 1, 595.457, -133.021, 36.7663, 2.98451, 7200, 7200, 0, 0), -- Crimson Hand Battle Mage
(@CGUID+142, 20047, 550, 1, 603.495, 125.062, 39.5998, 2.9147, 7200, 7200, 0, 0), -- Crimson Hand Battle Mage
(@CGUID+143, 20047, 550, 1, 641.158, -80.6899, 46.888, 4.18879, 7200, 7200, 0, 0), -- Crimson Hand Battle Mage
(@CGUID+144, 20047, 550, 1, 651.704, -86.6527, 46.9888, 3.82227, 7200, 7200, 0, 0), -- Crimson Hand Battle Mage
(@CGUID+145, 20047, 550, 1, 642.403, 80.5288, 46.891, 2.14675, 7200, 7200, 0, 0), -- Crimson Hand Battle Mage
(@CGUID+146, 20048, 550, 1, 596.609, -116.181, 39.0845, 3.56047, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+147, 20048, 550, 1, 590.499, 115.313, 37.5283, 2.47837, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+148, 20048, 550, 1, 598.221, 130.282, 37.6214, 3.21141, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+149, 20048, 550, 1, 601.667, -127.031, 39.08, 3.19395, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+150, 20048, 550, 1, 568.688, -132.15492, 33.953083, 0.487, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+151, 20048, 550, 1, 566.1901, 137.39757, 32.908386, 5.8718, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+152, 20048, 550, 1, 642.194, -5.84332, 46.8622, 0.122173, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+153, 20048, 550, 1, 570.14514, -135.88005, 33.909874, 0.487, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+154, 20048, 550, 1, 563.2037, 132.19359, 32.79257, 5.871, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+155, 20048, 550, 1, 645.018, -81.1729, 46.9552, 4.08407, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+156, 20048, 550, 1, 651.807, -89.1971, 46.8866, 3.76991, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+157, 20048, 550, 1, 723.4, 42.6383, 46.8622, 0.436332, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+158, 20048, 550, 1, 723.422, -42.6315, 46.8622, 5.34071, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+159, 20048, 550, 1, 644.955, 78.4049, 46.925, 2.18166, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+160, 20048, 550, 1, 651.478, 85.3616, 46.9853, 2.46091, 7200, 7200, 0, 0), -- Crimson Hand Centurion
(@CGUID+161, 20049, 550, 1, 594.701, 114.735, 38.6178, 2.67035, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+162, 20049, 550, 1, 598.754, -130.387, 37.9273, 3.08923, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+163, 20049, 550, 1, 601.037, 127.576, 38.6695, 3.05433, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+164, 20049, 550, 1, 642.273, 4.88217, 46.8622, 6.16101, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+165, 20049, 550, 1, 643.371, -78.528, 46.8777, 4.15388, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+166, 20049, 550, 1, 654.186, -91.0955, 46.8259, 3.68264, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+167, 20049, 550, 1, 728.148, 39.5604, 46.8622, 1.69297, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+168, 20049, 550, 1, 722.735, -47.1292, 46.8622, 0.471239, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+169, 20049, 550, 1, 654.737, 88.4818, 46.8289, 2.58309, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+170, 20049, 550, 1, 592.64, -116.013, 38.1448, 3.66519, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+171, 20049, 550, 1, 641.161, 77.8304, 46.8841, 2.07694, 7200, 7200, 0, 0), -- Crimson Hand Blood Knight
(@CGUID+172, 20050, 550, 1, 569.4054, -134.02185, 33.929092, 0.3858, 7200, 7200, 0, 0), -- Crimson Hand Inquisitor
(@CGUID+173, 20050, 550, 1, 564.6969, 134.79558, 32.850483, 5.8718, 7200, 7200, 0, 0), -- Crimson Hand Inquisitor
(@CGUID+174, 20050, 550, 1, 639.662, -3.34107, 46.8622, 0.0523599, 7200, 7200, 0, 0), -- Crimson Hand Inquisitor
(@CGUID+175, 20050, 550, 1, 730.171, 45.3477, 46.8622, 3.4383, 7200, 7200, 0, 0), -- Crimson Hand Inquisitor
(@CGUID+176, 20050, 550, 1, 727.479, -46.945, 46.8621, 2.11185, 7200, 7200, 0, 0), -- Crimson Hand Inquisitor
(@CGUID+177, 20052, 550, 1, 425.733, 323.265, 15.5336, 1.8675, 10800, 10800, 0, 0), -- Crystalcore Mechanic
(@CGUID+178, 20052, 550, 1, 481.119, 376.113, 15.8953, 2.37365, 10800, 10800, 0, 0), -- Crystalcore Mechanic
(@CGUID+179, 20052, 550, 1, 465.414, 336.68, 15.8237, 2.58309, 10800, 10800, 0, 0), -- Crystalcore Mechanic
(@CGUID+180, 20052, 550, 1, 454.04, 334.52, 15.2268, 0.279253, 10800, 10800, 0, 0), -- Crystalcore Mechanic
(@CGUID+181, 20052, 550, 1, 418.131, 328.526, 15.5518, 6.12611, 10800, 10800, 0, 0), -- Crystalcore Mechanic
(@CGUID+182, 20052, 550, 1, 390.007, 370.393, 15.2625, 4.27606, 10800, 10800, 0, 0), -- Crystalcore Mechanic
(@CGUID+183, 20052, 550, 1, 388.995, 355.609, 15.7319, 5.68977, 10800, 10800, 0, 0), -- Crystalcore Mechanic
(@CGUID+184, 20052, 550, 1, 469.932, 393.257, 15.0503, 5.06145, 10800, 10800, 0, 0), -- Crystalcore Mechanic
(@CGUID+185, 20060, 550, 1, 785.782, -20.3995, 48.8118, 2.30383, 604800, 604800, 0, 0), -- Lord Sanguinar
(@CGUID+186, 20062, 550, 1, 792.408, -13.2415, 48.8118, 2.68781, 604800, 604800, 0, 0), -- Grand Astromancer Capernian
(@CGUID+187, 20063, 550, 1, 792.725, 12.7754, 48.8118, 3.59538, 604800, 604800, 0, 0), -- Master Engineer Telonicus
(@CGUID+188, 20064, 550, 1, 785.807, 19.4862, 48.8118, 3.97935, 604800, 604800, 0, 0), -- Thaladred the Darkener

-- transition triggers, need to be explicitly in this order else animations wont work accordingly
(@CGUID+189, 22517, 550, 1, 799.8832, -39.79063, 86.04091, 3.316126, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+190, 22517, 550, 1, 799.4819, 38.38402, 84.18855, 3.839724, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+191, 22517, 550, 1, 847.8403, 14.67272, 64.72507, 3.787364, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+192, 22517, 550, 1, 847.9123, -16.27052, 64.80233, 4.660029, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+193, 22517, 550, 1, 844.8558, 6.185529, 65.86212, 0.2443461, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+194, 22517, 550, 1, 844.8883, -7.439569, 66.13985, 0.2443461, 300, 300, 0, 0), -- World Trigger (Large AOI)
-- explosion triggers
(@CGUID+195, 22517, 550, 1, 701.9359, 66.05067, 46.86216, 3.124139, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+196, 22517, 550, 1, 699.306, -67.62751, 46.86217, 1.518436, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+197, 22517, 550, 1, 665.1088, -0.950598, 46.86217, 4.415683, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+198, 22517, 550, 1, 708.8086, -0.769152, 46.86216, 5.148721, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+199, 22517, 550, 1, 732.9473, -0.566178, 46.86214, 3.612832, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+200, 22517, 550, 1, 766.7248, -0.726238, 50.13387, 0.1919862, 300, 300, 0, 0), -- World Trigger (Large AOI)
-- first group - casts 36201
(@CGUID+201, 22517, 550, 1, 778.8183, 56.69846, 126.9899, 2.513274, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+202, 22517, 550, 1, 798.8123, 61.56698, 115.3441, 3.769911, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+203, 22517, 550, 1, 786.0614, 65.85825, 100.4249, 3.263766, 300, 300, 0, 0), -- World Trigger (Large AOI)
-- second group - casts 36290
(@CGUID+204, 22517, 550, 1, 851.5966, 17.91289, 109.8992, 1.27409, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+205, 22517, 550, 1, 852.7165, -17.16145, 111.8991, 5.602507, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+206, 22517, 550, 1, 848.437, 30.28408, 92.7951, 4.817109, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+207, 22517, 550, 1, 847.2033, -31.35966, 99.57969, 0.8203048, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+208, 22517, 550, 1, 846.6299, -37.76403, 84.40607, 2.617994, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+209, 22517, 550, 1, 849.4088, 37.11266, 77.68398, 4.921828, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+210, 22517, 550, 1, 855.7502, -1.335043, 112.8265, 3.839724, 300, 300, 0, 0), -- World Trigger (Large AOI)
-- third group - casts 36291
(@CGUID+211, 22517, 550, 1, 785.4241, -52.29982, 134.9155, 4.712389, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+212, 22517, 550, 1, 800.0196, -62.71717, 109.6165, 1.605703, 300, 300, 0, 0), -- World Trigger (Large AOI)
(@CGUID+213, 22517, 550, 1, 775.7325, -61.36944, 119.4992, 5.8294, 300, 300, 0, 0), -- World Trigger (Large AOI)
--
(@CGUID+214, 12999, 550, 1, 425.4077, -0.379617, 80.36799, 0.9250245, 300, 300, 0, 0), -- World Invisible Trigger
(@CGUID+215, 15384, 550, 1, 388.7511, 31.73123, 20.26364, 4.625123, 300, 300, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+216, 15384, 550, 1, 388.7913, -33.10595, 20.26358, 4.852015, 300, 300, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+217, 15384, 550, 1, 335.6376, 59.48792, 17.93191, 1.832596, 300, 300, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+218, 15384, 550, 1, 332.723, -61.15897, 17.97906, 3.647738, 300, 300, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+219, 15384, 550, 1, 330.3438, -1.1002, 42.86049, 3.176499, 300, 300, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+220, 15384, 550, 1, 276.0723, -0.578703, 26.20747, 2.111848, 300, 300, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+221, 15384, 550, 1, 259.2285, 35.87902, 20.26298, 5.009095, 300, 300, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+222, 15384, 550, 1, 258.9592, -38.68707, 20.26289, 5.72468, 300, 300, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
(@CGUID+223, 22515, 550, 1, 810.1933, -0.727374, 50.13386, 3.141593, 300, 300, 0, 0), -- World Trigger
-- Some missing npcs
(@CGUID+224, 0, 550, 1, 425.113, -471.939, 22.1003, 0.261799, 7200, 7200, 0, 0); -- spawn_group_entry

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 184069, 550, 1, 743.056640625, 4.634430885314941406, 137.7958526611328125, 3.141592741012573242, 0, 0, -1, 0, 7200, 7200), -- Tempest Bridge Window
(@OGUID+2, 184324, 550, 1, 676.698486328125, 43.16431427001953125, 48.28136062622070312, 0.610865473747253417, 0, 0, 0.300705909729003906, 0.953716933727264404, 300, 300), -- Doodad_TK_Arcane_Door_Horiz04
(@OGUID+3, 184325, 550, 1, 676.5166015625, -44.5224761962890625, 48.28133010864257812, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881, 300, 300), -- Doodad_TK_Arcane_Door_Horiz03
(@OGUID+4, 184326, 550, 1, 654.1446533203125, -76.8280258178710937, 48.19501495361328125, 2.530723094940185546, 0, 0, 0.953716278076171875, 0.300707906484603881, 300, 300), -- Doodad_TK_Arcane_Door_Vert03
(@OGUID+5, 184327, 550, 1, 544.5379638671875, -143.139236450195312, 26.34531021118164062, 3.403396368026733398, 0, 0, -0.99144458770751953, 0.130528271198272705, 300, 300), -- Doodad_TK_Raid_Door03
(@OGUID+6, 184328, 550, 1, 654.129150390625, 75.33162689208984375, 48.19504547119140625, 0.610865473747253417, 0, 0, 0.300705909729003906, 0.953716933727264404, 300, 300), -- Doodad_TK_Arcane_Door_Vert04
(@OGUID+7, 184329, 550, 1, 544.62628173828125, 141.8879852294921875, 26.34531021118164062, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705, 300, 300), -- Doodad_TK_Raid_Door04
(@OGUID+8, 184596, 550, 1, 744.04461669921875, -44.6344795227050781, 46.66096878051757812, 3.141592741012573242, 0, 0, -1, 0, 300, 300), -- Doodad_Kael_Explode_FX_Right01
(@OGUID+9, 184597, 550, 1, 744.0447998046875, 42.35361862182617187, 46.66099929809570312, 3.141592741012573242, 0, 0, -1, 0, 300, 300); -- Doodad_Kael_Explode_FX_Left01

INSERT INTO `gameobject_addon` (`guid`, `state`) VALUES
(@OGUID+2, 0), -- Doodad_TK_Arcane_Door_Horiz04
(@OGUID+3, 0), -- Doodad_TK_Arcane_Door_Horiz03
(@OGUID+4, 0), -- Doodad_TK_Arcane_Door_Vert03
(@OGUID+5, 0), -- Doodad_TK_Raid_Door03
(@OGUID+6, 0), -- Doodad_TK_Arcane_Door_Vert04
(@OGUID+7, 0); -- Doodad_TK_Raid_Door04

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- ============
-- SPAWN GROUPS
-- ============

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
-- 3 possible Squads from left to right
-- Astromancer, Bloodwarder Vindicator, Bloodwarder Legionnaire, Bloodwarder Legionnaire,  Bloodwarder Vindicator, Star Scryer
-- Astromancer, Bloodwarder Vindicator, Bloodwarder Legionnaire, Bloodwarder Legionnaire, Astromancer, Star Scryer
-- Star Scryer, Bloodwarder Vindicator, Bloodwarder Legionnaire, Bloodwarder Legionnaire, Astromancer, Star Scryer
(@SGGUID+1, 'The Eye - Group 001 - Squad 001', 0, 6, @SGGUID+1, 3, @STRINGID+1), -- spawn_group_squad
-- 3 possible Squads from left front-back to right front-back
-- Bloodwarder Legionnaire, Astromancer, Star Scryer, Bloodwarder Legionnaire, Bloodwarder Vindicator, Star Scryer
-- Bloodwarder Legionnaire, Astromancer, Astromancer, Bloodwarder Legionnaire, Bloodwarder Vindicator, Star Scryer
-- Bloodwarder Legionnaire, Bloodwarder Vindicator, Astromancer, Bloodwarder Legionnaire, Bloodwarder Vindicator, Star Scryer
(@SGGUID+2, 'The Eye - Group 002 - Squad 002', 0, 6, @SGGUID+1, 3, @STRINGID+1), -- spawn_group_squad
-- 3 possible Squads from left to right
-- Star Scryer, Bloodwarder Vindicator, Bloodwarder Legionnaire, Bloodwarder Legionnaire, Astromancer, Star Scryer
-- Star Scryer, Bloodwarder Vindicator, Bloodwarder Legionnaire, Bloodwarder Legionnaire, Bloodwarder Vindicator, Astromancer
-- Star Scryer, Bloodwarder Vindicator, Bloodwarder Legionnaire, Bloodwarder Legionnaire, Astromancer, Astromancer
(@SGGUID+3, 'The Eye - Group 003 - Squad 003', 0, 6, @SGGUID+1, 3, @STRINGID+1), -- spawn_group_squad
(@SGGUID+4, 'The Eye - Group 004 - Patrol 001 - Bloodwarder Marshal | Bloodwarder Squire (2)', 0, 3, @SGGUID+1, 3, 0),
-- Al'ar room Patrol
(@SGGUID+5, 'The Eye - Group 005 - Patrol 002 - Tempest Falconer (2) | Phoenix-Hawk Hatchling (6)', 0, 0, @SGGUID+1, 3, @STRINGID+2),
(@SGGUID+6, 'The Eye - Group 006 - Patrol 003 - Tempest Falconer (2) | Phoenix-Hawk Hatchling (6)', 0, 0, @SGGUID+1, 3, @STRINGID+3),
-- Phoenix-Hawk group not respawning when Al'ar is Dead
(@SGGUID+7, 'The Eye - Group 007 - Phoenix-Hawk (4)', 0, 0, @SGGUID+1, 0, 0),
-- Solo Patrol not respawning when Void Reaver is Dead
(@SGGUID+8, 'The Eye - Group 008 - Crystalcore Devastator (1)', 0, 0, @SGGUID+2, 0, 0),
(@SGGUID+9, 'The Eye - Group 009 - Crystalcore Sentinel (2)', 0, 0, @SGGUID+2, 1, 0),
(@SGGUID+10, 'The Eye - Group 010 - Crystalcore Sentinel (2)', 0, 0, @SGGUID+2, 1, 0),
-- Void Reaver Room
(@SGGUID+11, 'The Eye - Group 011 - Tempest-Smith (1) | Crystalcore Sentinel (2) | Crystalcore Mechanic (2)', 0, 0, @SGGUID+2, 1, 0),
(@SGGUID+12, 'The Eye - Group 012 - Tempest-Smith (1) | Crystalcore Devastator (1) | Crystalcore Mechanic (2)', 0, 0, @SGGUID+2, 1, 0),
(@SGGUID+13, 'The Eye - Group 013 - Tempest-Smith (1) | Crystalcore Devastator (1) | Crystalcore Mechanic (2)', 0, 0, @SGGUID+2, 1, 0),
(@SGGUID+14, 'The Eye - Group 014 - Tempest-Smith (1) | Crystalcore Sentinel (2) | Crystalcore Mechanic (2)', 0, 0, @SGGUID+2, 1, 0),
(@SGGUID+15, 'The Eye - Group 015 - Patrol 004 - Crystalcore Devastator (1) | Tempest-Smith (2)', 0, 0, @SGGUID+2, 1, 0),
-- Solarian
(@SGGUID+16, 'The Eye - Group 016 - Patrol 005 - Astromancer Lorder (1) | Bloodwarder Legionnaire', 0, 0, @SGGUID+3, 1, 0),
(@SGGUID+17, 'The Eye - Group 017 - Crystalcore Sentinel (2)', 0, 0, @SGGUID+3, 1, 0),
-- Some research Info:
-- There are 5 groups (2 outside solarian room 3 inside solarian room) that are splited into 2 seperate groups (for spawn_entry) that are linked together
-- All groups will have 2 Bloodwarder Squire 5 Novice Astromancer and 5 Apprentice Star Scryer spawned splitted into following:
-- Left (group) side will always be 
-- 1 Bloodwarder Squire, 2 Novice Astromancer, 3 Apprentice Star Scryer
-- Right (group) side will alway be
-- 1 Bloodwarder Squire, 3 Novice Astromancer, 2 Apprentice Star Scryer
(@SGGUID+18, 'The Eye - Group 018 - LeftSide - Bloodwarder Squire (1) | Novice Astromancer (2) | Apprentice Star Scryer (3)', 0, 0, @SGGUID+3, 1, 0),
(@SGGUID+19, 'The Eye - Group 018 - RightSide - Bloodwarder Squire (1) | Novice Astromancer (3) | Apprentice Star Scryer (2)', 0, 0, @SGGUID+3, 1, 0),

(@SGGUID+20, 'The Eye - Group 019 - LeftSide - Bloodwarder Squire (1) | Novice Astromancer (2) | Apprentice Star Scryer (3)', 0, 0, @SGGUID+3, 1, 0),
(@SGGUID+21, 'The Eye - Group 019 - RightSide - Bloodwarder Squire (1) | Novice Astromancer (3) | Apprentice Star Scryer (2)', 0, 0, @SGGUID+3, 1, 0),

(@SGGUID+22, 'The Eye - Group 020 - LeftSide - Bloodwarder Squire (1) | Novice Astromancer (2) | Apprentice Star Scryer (3)', 0, 0, @SGGUID+3, 1, 0),
(@SGGUID+23, 'The Eye - Group 020 - RightSide - Bloodwarder Squire (1) | Novice Astromancer (3) | Apprentice Star Scryer (2)', 0, 0, @SGGUID+3, 1, 0),

(@SGGUID+24, 'The Eye - Group 021 - LeftSide - Bloodwarder Squire (1) | Novice Astromancer (2) | Apprentice Star Scryer (3)', 0, 0, @SGGUID+3, 1, 0),
(@SGGUID+25, 'The Eye - Group 021 - RightSide - Bloodwarder Squire (1) | Novice Astromancer (3) | Apprentice Star Scryer (2)', 0, 0, @SGGUID+3, 1, 0),

(@SGGUID+26, 'The Eye - Group 022 - LeftSide - Bloodwarder Squire (1) | Novice Astromancer (2) | Apprentice Star Scryer (3)', 0, 0, @SGGUID+3, 1, 0),
(@SGGUID+27, 'The Eye - Group 022 - RightSide - Bloodwarder Squire (1) | Novice Astromancer (3) | Apprentice Star Scryer (2)', 0, 0, @SGGUID+3, 1, 0),
-- Patrols in Solarian Room
(@SGGUID+28, 'The Eye - Group 023 - Patrol 006 - Nether Scryer (1) | Bloodwarder Legionnaire', 0, 0, @SGGUID+3, 1, 0),
(@SGGUID+29, 'The Eye - Group 024 - Patrol 007 - Nether Scryer (1) | Bloodwarder Legionnaire', 0, 0, @SGGUID+3, 1, 0),
-- Solarian
-- All groups in her room should aggro when you aggro her
(@SGGUID+30, 'The Eye - Group 025 - High Astromancer Solarian', 0, 0, 0, 0, 0),
-- Trash from Solarian -> Kael
(@SGGUID+31, 'The Eye - Group 026 - Crimson Hand Battle Mage (2) | Crimson Hand Blood Knight (2) | Crimson Hand Centurion (2)', 0, 0, @SGGUID+4, 1, 0),
(@SGGUID+32, 'The Eye - Group 027 - Patrol 008 - Crimson Hand inquisitor (1) | Crimson Hand Centurion (2)', 0, 0, @SGGUID+4, 1, 0),
(@SGGUID+33, 'The Eye - Group 028 - Crimson Hand Battle Mage (2) | Crimson Hand Blood Knight (2) | Crimson Hand Centurion (2)', 0, 0, @SGGUID+4, 1, 0),
-- Trash from Void Reaver -> Kael
(@SGGUID+34, 'The Eye - Group 029 - Crimson Hand Battle Mage (2) | Crimson Hand Blood Knight (2) | Crimson Hand Centurion (2)', 0, 0, @SGGUID+4, 1, 0),
(@SGGUID+35, 'The Eye - Group 030 - Patrol 009 - Crimson Hand inquisitor (1) | Crimson Hand Centurion (2)', 0, 0, @SGGUID+4, 1, 0),
(@SGGUID+36, 'The Eye - Group 031 - Crimson Hand Battle Mage (2) | Crimson Hand Blood Knight (2) | Crimson Hand Centurion (2)', 0, 0, @SGGUID+4, 1, 0),
-- Kael Room
(@SGGUID+37, 'The Eye - Group 032 - Crimson Hand Centurion | Crimson Hand Inquisitor | Bloodwarder Marshal | Crimson Hand Blood Knight', 0, 0, @SGGUID+4, 1, 0),
(@SGGUID+38, 'The Eye - Group 033 - Crimson Hand Centurion | Crimson Hand Inquisitor | Bloodwarder Marshal | Crimson Hand Blood Knight', 0, 0, @SGGUID+4, 1, 0),
(@SGGUID+39, 'The Eye - Group 033 - Crimson Hand Centurion | Crimson Hand Inquisitor | Bloodwarder Marshal | Crimson Hand Blood Knight', 0, 0, @SGGUID+4, 1, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+18, 20036, 1, 1, 0), (@SGGUID+18, 20043, 3, 3, 0), (@SGGUID+18, 20044, 2, 2, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer
(@SGGUID+19, 20036, 1, 1, 0), (@SGGUID+19, 20043, 2, 2, 0), (@SGGUID+19, 20044, 3, 3, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer

(@SGGUID+20, 20036, 1, 1, 0), (@SGGUID+20, 20043, 3, 3, 0), (@SGGUID+20, 20044, 2, 2, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer
(@SGGUID+21, 20036, 1, 1, 0), (@SGGUID+21, 20043, 2, 2, 0), (@SGGUID+21, 20044, 3, 3, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer

(@SGGUID+22, 20036, 1, 1, 0), (@SGGUID+22, 20043, 3, 3, 0), (@SGGUID+22, 20044, 2, 2, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer
(@SGGUID+23, 20036, 1, 1, 0), (@SGGUID+23, 20043, 2, 2, 0), (@SGGUID+23, 20044, 3, 3, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer

(@SGGUID+24, 20036, 1, 1, 0), (@SGGUID+24, 20043, 3, 3, 0), (@SGGUID+24, 20044, 2, 2, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer
(@SGGUID+25, 20036, 1, 1, 0), (@SGGUID+25, 20043, 2, 2, 0), (@SGGUID+25, 20044, 3, 3, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer

(@SGGUID+26, 20036, 1, 1, 0), (@SGGUID+26, 20043, 3, 3, 0), (@SGGUID+26, 20044, 2, 2, 0), -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer
(@SGGUID+27, 20036, 1, 1, 0), (@SGGUID+27, 20043, 2, 2, 0), (@SGGUID+27, 20044, 3, 3, 0); -- Bloodwarder Squire, Apprentice Star Scryer,  Novice Astromancer

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, @CGUID+24, -1), -- spawn_group_squad
(@SGGUID+1, @CGUID+28, -1), -- spawn_group_squad
(@SGGUID+1, @CGUID+18, -1), -- spawn_group_squad
(@SGGUID+1, @CGUID+17, -1), -- spawn_group_squad
(@SGGUID+1, @CGUID+21, -1), -- spawn_group_squad
(@SGGUID+1, @CGUID+27, -1), -- spawn_group_squad

(@SGGUID+2, @CGUID+9, -1), -- spawn_group_squad
(@SGGUID+2, @CGUID+16, -1), -- spawn_group_squad
(@SGGUID+2, @CGUID+26, -1), -- spawn_group_squad
(@SGGUID+2, @CGUID+8, -1), -- spawn_group_squad
(@SGGUID+2, @CGUID+20, -1), -- spawn_group_squad
(@SGGUID+2, @CGUID+25, -1), -- spawn_group_squad

(@SGGUID+3, @CGUID+29, -1), -- spawn_group_squad
(@SGGUID+3, @CGUID+19, -1), -- spawn_group_squad
(@SGGUID+3, @CGUID+15, -1), -- spawn_group_squad
(@SGGUID+3, @CGUID+10, -1), -- spawn_group_squad
(@SGGUID+3, @CGUID+23, -1), -- spawn_group_squad
(@SGGUID+3, @CGUID+22, -1), -- spawn_group_squad

(@SGGUID+4, @CGUID+30, 0), -- Bloodwarder Marshal
(@SGGUID+4, @CGUID+38, 1), -- Bloodwarder Squire
(@SGGUID+4, @CGUID+39, 2), -- Bloodwarder Squire

(@SGGUID+5, @CGUID+48, 0), -- Tempest Falconer
(@SGGUID+5, @CGUID+49, 1), -- Tempest Falconer
(@SGGUID+5, @CGUID+61, 2), -- Phoenix-Hawk Hatchling
(@SGGUID+5, @CGUID+60, 3), -- Phoenix-Hawk Hatchling
(@SGGUID+5, @CGUID+53, 4), -- Phoenix-Hawk Hatchling
(@SGGUID+5, @CGUID+52, 5), -- Phoenix-Hawk Hatchling
(@SGGUID+5, @CGUID+50, 6), -- Phoenix-Hawk Hatchling
(@SGGUID+5, @CGUID+51, 7), -- Phoenix-Hawk Hatchling

(@SGGUID+6, @CGUID+46, 0), -- Tempest Falconer
(@SGGUID+6, @CGUID+47, 1), -- Tempest Falconer
(@SGGUID+6, @CGUID+54, 2), -- Phoenix-Hawk Hatchling
(@SGGUID+6, @CGUID+57, 3), -- Phoenix-Hawk Hatchling
(@SGGUID+6, @CGUID+58, 4), -- Phoenix-Hawk Hatchling
(@SGGUID+6, @CGUID+59, 5), -- Phoenix-Hawk Hatchling
(@SGGUID+6, @CGUID+55, 6), -- Phoenix-Hawk Hatchling
(@SGGUID+6, @CGUID+56, 7), -- Phoenix-Hawk Hatchling

(@SGGUID+7, @CGUID+62, -1), -- Phoenix-Hawk
(@SGGUID+7, @CGUID+63, -1), -- Phoenix-Hawk
(@SGGUID+7, @CGUID+64, -1), -- Phoenix-Hawk
(@SGGUID+7, @CGUID+65, -1), -- Phoenix-Hawk

(@SGGUID+8, @CGUID+67, -1), -- Crystalcore Devastator

(@SGGUID+9, @CGUID+74, -1), -- Crystalcore Sentinel
(@SGGUID+9, @CGUID+75, -1), -- Crystalcore Sentinel

(@SGGUID+10, @CGUID+70, -1), -- Crystalcore Sentinel
(@SGGUID+10, @CGUID+71, -1), -- Crystalcore Sentinel

(@SGGUID+11, @CGUID+80, -1), -- Tempest-Smith
(@SGGUID+11, @CGUID+76, -1), -- Crystalcore Sentinel
(@SGGUID+11, @CGUID+77, -1), -- Crystalcore Sentinel
(@SGGUID+11, @CGUID+182, -1), -- Crystalcore Mechanic
(@SGGUID+11, @CGUID+183, -1), -- Crystalcore Mechanic

(@SGGUID+12, @CGUID+83, -1), -- Tempest-Smith
(@SGGUID+12, @CGUID+68, -1), -- Crystalcore Devastator
(@SGGUID+12, @CGUID+177, -1), -- Crystalcore Mechanic
(@SGGUID+12, @CGUID+181, -1), -- Crystalcore Mechanic

(@SGGUID+13, @CGUID+81, -1), -- Tempest-Smith
(@SGGUID+13, @CGUID+66, -1), -- Crystalcore Devastator
(@SGGUID+13, @CGUID+179, -1), -- Crystalcore Mechanic
(@SGGUID+13, @CGUID+180, -1), -- Crystalcore Mechanic

(@SGGUID+14, @CGUID+82, -1), -- Tempest-Smith
(@SGGUID+14, @CGUID+79, -1), -- Crystalcore Sentinel
(@SGGUID+14, @CGUID+78, -1), -- Crystalcore Sentinel
(@SGGUID+14, @CGUID+184, -1), -- Crystalcore Mechanic
(@SGGUID+14, @CGUID+178, -1), -- Crystalcore Mechanic

(@SGGUID+15, @CGUID+69, 0), -- Crystalcore Devastator
(@SGGUID+15, @CGUID+84, 1), -- Tempest-Smith
(@SGGUID+15, @CGUID+85, 2), -- Tempest-Smith

(@SGGUID+16, @CGUID+137, 0), -- Astromancer Lord
(@SGGUID+16, @CGUID+6, 1), -- Bloodwarder Legionnaire
(@SGGUID+16, @CGUID+7, 2), -- Bloodwarder Legionnaire

(@SGGUID+17, @CGUID+72, -1), -- Crystalcore Sentinel
(@SGGUID+17, @CGUID+73, -1), -- Crystalcore Sentinel

(@SGGUID+18, @CGUID+90, -1), -- spawn_group_entry
(@SGGUID+18, @CGUID+36, -1), -- spawn_group_entry
(@SGGUID+18, @CGUID+110, -1), -- spawn_group_entry
(@SGGUID+18, @CGUID+114, -1), -- spawn_group_entry
(@SGGUID+18, @CGUID+91, -1), -- spawn_group_entry
(@SGGUID+18, @CGUID+120, -1), -- spawn_group_entry

(@SGGUID+19, @CGUID+88, -1), -- spawn_group_entry
(@SGGUID+19, @CGUID+117, -1), -- spawn_group_entry
(@SGGUID+19, @CGUID+89, -1), -- spawn_group_entry
(@SGGUID+19, @CGUID+116, -1), -- spawn_group_entry
(@SGGUID+19, @CGUID+35, -1), -- spawn_group_entry
(@SGGUID+19, @CGUID+115, -1), -- spawn_group_entry

(@SGGUID+20, @CGUID+96, -1), -- spawn_group_entry
(@SGGUID+20, @CGUID+98, -1), -- spawn_group_entry
(@SGGUID+20, @CGUID+122, -1), -- spawn_group_entry
(@SGGUID+20, @CGUID+97, -1), -- spawn_group_entry
(@SGGUID+20, @CGUID+124, -1), -- spawn_group_entry
(@SGGUID+20, @CGUID+41, -1), -- spawn_group_entry

(@SGGUID+21, @CGUID+121, -1), -- spawn_group_entry
(@SGGUID+21, @CGUID+123, -1), -- spawn_group_entry
(@SGGUID+21, @CGUID+37, -1), -- spawn_group_entry
(@SGGUID+21, @CGUID+94, -1), -- spawn_group_entry
(@SGGUID+21, @CGUID+119, -1), -- spawn_group_entry
(@SGGUID+21, @CGUID+92, -1), -- spawn_group_entry


(@SGGUID+22, @CGUID+100, -1), -- spawn_group_entry
(@SGGUID+22, @CGUID+42, -1), -- spawn_group_entry
(@SGGUID+22, @CGUID+101, -1), -- spawn_group_entry
(@SGGUID+22, @CGUID+126, -1), -- spawn_group_entry
(@SGGUID+22, @CGUID+127, -1), -- spawn_group_entry
(@SGGUID+22, @CGUID+102, -1), -- spawn_group_entry

(@SGGUID+23, @CGUID+104, -1), -- spawn_group_entry
(@SGGUID+23, @CGUID+129, -1), -- spawn_group_entry
(@SGGUID+23, @CGUID+103, -1), -- spawn_group_entry
(@SGGUID+23, @CGUID+43, -1), -- spawn_group_entry
(@SGGUID+23, @CGUID+130, -1), -- spawn_group_entry
(@SGGUID+23, @CGUID+128, -1), -- spawn_group_entry

(@SGGUID+24, @CGUID+107, -1), -- spawn_group_entry
(@SGGUID+24, @CGUID+45, -1), -- spawn_group_entry
(@SGGUID+24, @CGUID+108, -1), -- spawn_group_entry
(@SGGUID+24, @CGUID+109, -1), -- spawn_group_entry
(@SGGUID+24, @CGUID+134, -1), -- spawn_group_entry
(@SGGUID+24, @CGUID+224, -1), -- spawn_group_entry

(@SGGUID+25, @CGUID+132, -1), -- spawn_group_entry
(@SGGUID+25, @CGUID+133, -1), -- spawn_group_entry
(@SGGUID+25, @CGUID+44, -1), -- spawn_group_entry
(@SGGUID+25, @CGUID+105, -1), -- spawn_group_entry
(@SGGUID+25, @CGUID+106, -1), -- spawn_group_entry
(@SGGUID+25, @CGUID+131, -1), -- spawn_group_entry

(@SGGUID+26, @CGUID+125, -1), -- spawn_group_entry
(@SGGUID+26, @CGUID+99, -1), -- spawn_group_entry
(@SGGUID+26, @CGUID+40, -1), -- spawn_group_entry
(@SGGUID+26, @CGUID+95, -1), -- spawn_group_entry
(@SGGUID+26, @CGUID+93, -1), -- spawn_group_entry
(@SGGUID+26, @CGUID+118, -1), -- spawn_group_entry

(@SGGUID+27, @CGUID+87, -1), -- spawn_group_entry
(@SGGUID+27, @CGUID+112, -1), -- spawn_group_entry
(@SGGUID+27, @CGUID+113, -1), -- spawn_group_entry
(@SGGUID+27, @CGUID+86, -1), -- spawn_group_entry
(@SGGUID+27, @CGUID+34, -1), -- spawn_group_entry
(@SGGUID+27, @CGUID+111, -1), -- spawn_group_entry

(@SGGUID+28, @CGUID+135, 0), -- Nether Scryer
(@SGGUID+28, @CGUID+11, 1), -- Bloodwarder Legionnaire
(@SGGUID+28, @CGUID+12, 2), -- Bloodwarder Legionnaire

(@SGGUID+29, @CGUID+136, 0), -- Nether Scryer
(@SGGUID+29, @CGUID+13, 1), -- Bloodwarder Legionnaire
(@SGGUID+29, @CGUID+14, 2), -- Bloodwarder Legionnaire

(@SGGUID+30, @CGUID+1, 0), -- High Astromancer Solarian

(@SGGUID+31, @CGUID+140, -1), -- Crimson Hand Battle Mage
(@SGGUID+31, @CGUID+170, -1), -- Crimson Hand Blood Knight
(@SGGUID+31, @CGUID+146, -1), -- Crimson Hand Centurion
(@SGGUID+31, @CGUID+149, -1), -- Crimson Hand Centurion
(@SGGUID+31, @CGUID+162, -1), -- Crimson Hand Blood Knight
(@SGGUID+31, @CGUID+141, -1), -- Crimson Hand Battle Mage

(@SGGUID+32, @CGUID+172, 0), -- Crimson Hand Inquisitor
(@SGGUID+32, @CGUID+150, 1), -- Crimson Hand Centurion
(@SGGUID+32, @CGUID+153, 2), -- Crimson Hand Centurion

(@SGGUID+33, @CGUID+143, -1), -- Crimson Hand Battle Mage
(@SGGUID+33, @CGUID+165, -1), -- Crimson Hand Blood Knight
(@SGGUID+33, @CGUID+155, -1), -- Crimson Hand Centurion
(@SGGUID+33, @CGUID+144, -1), -- Crimson Hand Battle Mage
(@SGGUID+33, @CGUID+156, -1), -- Crimson Hand Centurion
(@SGGUID+33, @CGUID+166, -1), -- Crimson Hand Blood Knight

(@SGGUID+34, @CGUID+148, -1), -- Crimson Hand Centurion
(@SGGUID+34, @CGUID+163, -1), -- Crimson Hand Blood Knight
(@SGGUID+34, @CGUID+142, -1), -- Crimson Hand Battle Mage
(@SGGUID+34, @CGUID+139, -1), -- Crimson Hand Battle Mage
(@SGGUID+34, @CGUID+161, -1), -- Crimson Hand Blood Knight
(@SGGUID+34, @CGUID+147, -1), -- Crimson Hand Centurion

(@SGGUID+35, @CGUID+173, 0), -- Crimson Hand Inquisitor
(@SGGUID+35, @CGUID+151, 1), -- Crimson Hand Centurion
(@SGGUID+35, @CGUID+154, 2), -- Crimson Hand Centurion

(@SGGUID+36, @CGUID+169, -1), -- Crimson Hand Blood Knight
(@SGGUID+36, @CGUID+138, -1), -- Crimson Hand Battle Mage
(@SGGUID+36, @CGUID+160, -1), -- Crimson Hand Centurion
(@SGGUID+36, @CGUID+159, -1), -- Crimson Hand Centurion
(@SGGUID+36, @CGUID+145, -1), -- Crimson Hand Battle Mage
(@SGGUID+36, @CGUID+171, -1), -- Crimson Hand Blood Knight

(@SGGUID+37, @CGUID+152, -1), -- Crimson Hand Centurion
(@SGGUID+37, @CGUID+174, -1), -- Crimson Hand Inquisitor 
(@SGGUID+37, @CGUID+31, -1), -- Bloodwarder Marshal
(@SGGUID+37, @CGUID+164, -1), -- Crimson Hand Blood Knight

(@SGGUID+38, @CGUID+157, -1), -- Crimson Hand Centurion
(@SGGUID+38, @CGUID+175, -1), -- Crimson Hand Inquisitor 
(@SGGUID+38, @CGUID+32, -1), -- Bloodwarder Marshal
(@SGGUID+38, @CGUID+167, -1), -- Crimson Hand Blood Knight

(@SGGUID+39, @CGUID+158, -1), -- Crimson Hand Centurion
(@SGGUID+39, @CGUID+176, -1), -- Crimson Hand Inquisitor 
(@SGGUID+39, @CGUID+33, -1), -- Bloodwarder Marshal
(@SGGUID+39, @CGUID+168, -1); -- Crimson Hand Blood Knight


INSERT INTO `spawn_group_squad` (`Id`, `SquadId`, `Guid`, `Entry`) VALUES 
(@SGGUID+1, 1, @CGUID+24, 20033), -- Astromancer
(@SGGUID+1, 1, @CGUID+28, 20032), -- Bloodwarder Vindicator
(@SGGUID+1, 1, @CGUID+18, 20031), -- Bloodwarder Legionnaire
(@SGGUID+1, 1, @CGUID+17, 20031), -- Bloodwarder Legionnaire
(@SGGUID+1, 1, @CGUID+21, 20032), -- Bloodwarder Vindicator
(@SGGUID+1, 1, @CGUID+27, 20034), -- Star Scryer

(@SGGUID+1, 2, @CGUID+24, 20033), -- Astromancer
(@SGGUID+1, 2, @CGUID+28, 20032), -- Bloodwarder Vindicator
(@SGGUID+1, 2, @CGUID+18, 20031), -- Bloodwarder Legionnaire
(@SGGUID+1, 2, @CGUID+17, 20031), -- Bloodwarder Legionnaire
(@SGGUID+1, 2, @CGUID+21, 20033), -- Astromancer
(@SGGUID+1, 2, @CGUID+27, 20034), -- Star Scryer

(@SGGUID+1, 3, @CGUID+24, 20034), -- Star Scryer
(@SGGUID+1, 3, @CGUID+28, 20032), -- Bloodwarder Vindicator
(@SGGUID+1, 3, @CGUID+18, 20031), -- Bloodwarder Legionnaire
(@SGGUID+1, 3, @CGUID+17, 20031), -- Bloodwarder Legionnaire
(@SGGUID+1, 3, @CGUID+21, 20033), -- Astromancer
(@SGGUID+1, 3, @CGUID+27, 20034), -- Star Scryer

(@SGGUID+2, 1, @CGUID+9, 20031), -- Bloodwarder Legionnaire
(@SGGUID+2, 1, @CGUID+16, 20033), -- Astromancer
(@SGGUID+2, 1, @CGUID+26, 20034), -- Star Scryer
(@SGGUID+2, 1, @CGUID+8, 20031), -- Bloodwarder Legionnaire
(@SGGUID+2, 1, @CGUID+20, 20032), -- Bloodwarder Vindicator
(@SGGUID+2, 1, @CGUID+25, 20034), -- Star Scryer

(@SGGUID+2, 2, @CGUID+9, 20031), -- Bloodwarder Legionnaire
(@SGGUID+2, 2, @CGUID+16, 20033), -- Astromancer
(@SGGUID+2, 2, @CGUID+26, 20033), -- Astromancer
(@SGGUID+2, 2, @CGUID+8, 20031), -- Bloodwarder Legionnaire
(@SGGUID+2, 2, @CGUID+20, 20032), -- Bloodwarder Vindicator
(@SGGUID+2, 2, @CGUID+25, 20034), -- Star Scryer

(@SGGUID+2, 3, @CGUID+9, 20031), -- Bloodwarder Legionnaire
(@SGGUID+2, 3, @CGUID+16, 20032), -- Bloodwarder Legionnaire
(@SGGUID+2, 3, @CGUID+26, 20033), -- Astromancer
(@SGGUID+2, 3, @CGUID+8, 20031), -- Bloodwarder Legionnaire
(@SGGUID+2, 3, @CGUID+20, 20032), -- Bloodwarder Vindicator
(@SGGUID+2, 3, @CGUID+25, 20034), -- Star Scryer

(@SGGUID+3, 1, @CGUID+29, 20034), -- Star Scryer
(@SGGUID+3, 1, @CGUID+19, 20032), -- Bloodwarder Vindicator
(@SGGUID+3, 1, @CGUID+15, 20031), -- Bloodwarder Legionnaire
(@SGGUID+3, 1, @CGUID+10, 20031), -- Bloodwarder Legionnaire
(@SGGUID+3, 1, @CGUID+23, 20033), -- Astromancer
(@SGGUID+3, 1, @CGUID+22, 20034), -- Star Scryer

(@SGGUID+3, 2, @CGUID+29, 20034), -- Star Scryer
(@SGGUID+3, 2, @CGUID+19, 20032), -- Bloodwarder Vindicator
(@SGGUID+3, 2, @CGUID+15, 20031), -- Bloodwarder Legionnaire
(@SGGUID+3, 2, @CGUID+10, 20031), -- Bloodwarder Legionnaire
(@SGGUID+3, 2, @CGUID+23, 20032), -- Bloodwarder Vindicator
(@SGGUID+3, 2, @CGUID+22, 20033), -- Astromancer

(@SGGUID+3, 3, @CGUID+29, 20034), -- Star Scryer
(@SGGUID+3, 3, @CGUID+19, 20032), -- Bloodwarder Vindicator
(@SGGUID+3, 3, @CGUID+15, 20031), -- Bloodwarder Legionnaire
(@SGGUID+3, 3, @CGUID+10, 20031), -- Bloodwarder Legionnaire
(@SGGUID+3, 3, @CGUID+23, 20033), -- Astromancer
(@SGGUID+3, 3, @CGUID+22, 20033); -- Astromancer

INSERT INTO `spawn_group_linked_group` (`Id`, `LinkedId`) VALUES
(@SGGUID+18, @SGGUID+19), (@SGGUID+19, @SGGUID+18),
(@SGGUID+20, @SGGUID+21), (@SGGUID+21, @SGGUID+20),
(@SGGUID+22, @SGGUID+23), (@SGGUID+23, @SGGUID+22),
(@SGGUID+24, @SGGUID+25), (@SGGUID+25, @SGGUID+24),
(@SGGUID+26, @SGGUID+27), (@SGGUID+27, @SGGUID+26),
-- All groups that should aggro when Solarian gets attacked
(@SGGUID+30, @SGGUID+22), (@SGGUID+30, @SGGUID+23), (@SGGUID+30, @SGGUID+24), (@SGGUID+30, @SGGUID+25), (@SGGUID+30, @SGGUID+26), (@SGGUID+30, @SGGUID+27), (@SGGUID+30, @SGGUID+28), (@SGGUID+30, @SGGUID+29);


INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+4, 2, 2, 0, @SGGUID+4, 2, 'The Eye - Group 004 - Patrol 001 - Bloodwarder Marshal | Bloodwarder Squire (2)'),
(@SGGUID+5, 0, 5, 0, @SGGUID+5, 2, 'The Eye - Group 005 - Patrol 002 - Tempest Falconer (2) | Phoenix-Hawk Hatchling (6)'),
(@SGGUID+6, 0, 5, 0, @SGGUID+7, 2, 'The Eye - Group 006 - Patrol 003 - Tempest Falconer (2) | Phoenix-Hawk Hatchling (6)'),
(@SGGUID+15, 2, 4, 0, @SGGUID+15, 4, 'The Eye - Group 015 - Patrol 004 - Crystalcore Devastator (1) | Tempest-Smith (2)'),
(@SGGUID+16, 2, 3, 0, @SGGUID+16, 4, 'The Eye - Group 016 - Patrol 005 - Astromancer Lorder (1) | Bloodwarder Legionnaire'),
(@SGGUID+28, 2, 3, 0, @SGGUID+28, 4, 'The Eye - Group 023 - Patrol 006 - Nether Scryer (1) | Bloodwarder Legionnaire'),
(@SGGUID+29, 2, 3, 0, @SGGUID+29, 4, 'The Eye - Group 024 - Patrol 007 - Nether Scryer (1) | Bloodwarder Legionnaire'),
(@SGGUID+32, 2, 3, 0, @SGGUID+32, 4, 'The Eye - Group 027 - Patrol 008 - Crimson Hand inquisitor (1) | Crimson Hand Centurion (2)'),
(@SGGUID+35, 2, 3, 0, @SGGUID+35, 4, 'The Eye - Group 030 - Patrol 009 - Crimson Hand inquisitor (1) | Crimson Hand Centurion (2)');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+4,'The Eye - Group 004 - Patrol 001 - Bloodwarder Marshal | Bloodwarder Squire (2)'),
(@SGGUID+5,'The Eye - Group 005 - Patrol 002 - Tempest Falconer (2) | Phoenix-Hawk Hatchling (6) - Path 1'),
(@SGGUID+6,'The Eye - Group 005 - Patrol 002 - Tempest Falconer (2) | Phoenix-Hawk Hatchling (6) - Path 2'),
(@SGGUID+7,'The Eye - Group 006 - Patrol 003 - Tempest Falconer (2) | Phoenix-Hawk Hatchling (6) - Path 1'),
(@SGGUID+8,'The Eye - Group 006 - Patrol 003 - Tempest Falconer (2) | Phoenix-Hawk Hatchling (6) - Path 2'),
(@SGGUID+15,'The Eye - Group 015 - Patrol 004 - Crystalcore Devastator (1) | Tempest-Smith (2)'),
(@SGGUID+16,'The Eye - Group 016 - Patrol 005 - Astromancer Lorder (1) | Bloodwarder Legionnaire'),
(@SGGUID+28,'The Eye - Group 023 - Patrol 006 - Nether Scryer (1) | Bloodwarder Legionnaire'),
(@SGGUID+29,'The Eye - Group 024 - Patrol 007 - Nether Scryer (1) | Bloodwarder Legionnaire'),
(@SGGUID+32,'The Eye - Group 027 - Patrol 008 - Crimson Hand inquisitor (1) | Crimson Hand Centurion (2)'),
(@SGGUID+35,'The Eye - Group 030 - Patrol 009 - Crimson Hand inquisitor (1) | Crimson Hand Centurion (2)');


INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Patrol 001
(@SGGUID+4, 1, 73.21876,-1.467932,-2.428264, 100, 0, 0),
(@SGGUID+4, 2, 90.9155,-1.446664,-2.391149, 100, 0, 0),
(@SGGUID+4, 3, 110.70197,-1.826883,-2.3415165, 100, 8000, 2003501),
(@SGGUID+4, 4, 139.67517,-1.740406,-2.4282646, 100, 0, 0),
(@SGGUID+4, 5, 167.337,-1.744653,-2.4282644, 100, 0, 0),
(@SGGUID+4, 6, 181.79326,-1.723237,-2.4566164, 100, 8000, 2003501),
(@SGGUID+4, 7, 219.74161,-0.849849,-2.4282396, 100, 0, 0),
(@SGGUID+4, 8, 250.74739,-0.837852,-2.4254498, 100, 0, 0),
(@SGGUID+4, 9, 285.23624,-0.667373,-2.3893993, 100, 16000, 0),
(@SGGUID+4, 10, 254.69905,-0.906747,-2.4255166, 100, 0, 0),
(@SGGUID+4, 11, 234.27116,-0.930597,-2.4254591, 100, 0, 0),
(@SGGUID+4, 12, 210.60254,-0.957067,-2.4282544, 100, 0, 0),
(@SGGUID+4, 13, 184.18263,-1.004889,-2.445923, 100, 8000, 2003501),
(@SGGUID+4, 14, 151.39961,-1.254917,-2.4282634, 100, 0, 0),
(@SGGUID+4, 15, 111.48205,-1.692717,-2.3092167, 100, 8000, 2003501),
(@SGGUID+4, 16, 77.92409,-1.4717377,-2.428264, 100, 0, 0),
(@SGGUID+4, 17, 59.693306,-1.38827,-2.428264, 100, 8000, 2003501),
-- Patrol 002 - Path 1
(@SGGUID+5, 1, 377.03555,-15.332716,-2.3867216, 100, 0, 0),
(@SGGUID+5, 2, 350.90543,-41.430454,-2.3856533, 100, 0, 0),
(@SGGUID+5, 3, 314.68127,-41.644608,-2.3894813, 100, 0, 0),
(@SGGUID+5, 4, 288.23596,-15.741143,-2.3894465, 100, 1000, 2003701), -- Change to random Movement for 15-30 seconds before changing to Path 2
-- Patrol 002 - Path 2
(@SGGUID+6, 1, 288.23596,-15.741143,-2.3894465, 100, 0, 0),
(@SGGUID+6, 2, 314.1068,-41.330368,-2.3894804, 100, 0, 0),
(@SGGUID+6, 3, 350.24118,-41.162407,-2.3858225, 100, 0, 0),
(@SGGUID+6, 4, 377.03555,-15.332716,-2.3867216, 100, 1000, 2003702), -- Change to random Movement for 15-30 seconds before changing to Path 2
-- Patrol 003 - Path 1
(@SGGUID+7, 1, 287.89716,14.272659,-2.3893754, 100, 0, 0),
(@SGGUID+7, 2, 314.9742,39.8861,-2.3890655, 100, 0, 0),
(@SGGUID+7, 3, 350.92532,39.619263,-2.3884583, 100, 0, 0),
(@SGGUID+7, 4, 376.66275,13.843831,-2.3868701, 100, 1000, 2003703), -- Change to random Movement for 15-30 seconds before changing to Path 2
-- Patrol 003 - Path 2
(@SGGUID+8, 1, 376.66275,13.843831,-2.3868701, 100, 1000, 0),
(@SGGUID+8, 2, 350.39078,39.908775,-2.3885098, 100, 0, 0),
(@SGGUID+8, 3, 314.34283,40.37823,-2.3890648, 100, 0, 0),
(@SGGUID+8, 4, 287.89716,14.272659,-2.3893754, 100, 1000, 2003704), -- Change to random Movement for 15-30 seconds before changing to Path 2
-- Patrol 004
(@SGGUID+15, 1, 488.87756,342.66516,17.682777, 100, 0, 0),
(@SGGUID+15, 2, 480.81116,330.3677,17.701866, 100, 0, 0),
(@SGGUID+15, 3, 460.9808,314.85217,17.816645, 100, 0, 0),
(@SGGUID+15, 4, 430.38788,306.61725,17.640047, 100, 0, 0),
(@SGGUID+15, 5, 402.40613,313.23843,18.359625, 100, 0, 0),
(@SGGUID+15, 6, 386.8443,324.3896,18.262718, 100, 0, 0),
-- Patrol 005
(@SGGUID+16, 1, 473.84668,-84.87884,20.216114, 100, 0, 0),
(@SGGUID+16, 2, 491.02115,-103.594,20.289865, 100, 0, 0),
(@SGGUID+16, 3, 502.49777,-118.99611,20.28987, 100, 0, 0),
(@SGGUID+16, 4, 511.05252,-140.89236,20.237894, 100, 0, 0),
(@SGGUID+16, 5, 517.2678,-163.51216,20.239647, 100, 0, 0),
(@SGGUID+16, 6, 520.61035,-185.82002,20.289864, 100, 0, 0),
(@SGGUID+16, 7, 517.4262,-208.08437,20.289856, 100, 0, 0),
(@SGGUID+16, 8, 511.51535,-232.16605,20.341183, 100, 0, 0),
-- Patrol 006
(@SGGUID+28, 1, 487.1593,-339.02164,17.490557, 100, 0, 0),
(@SGGUID+28, 2, 493.10938,-352.27258,17.425085, 100, 0, 0),
(@SGGUID+28, 3, 495.274,-374.78607,17.28109, 100, 0, 0),
(@SGGUID+28, 4, 491.7526,-395.2942,17.357338, 100, 0, 0),
(@SGGUID+28, 5, 467.38907,-425.20914,17.372616, 100, 0, 0),
(@SGGUID+28, 6, 439.38635,-435.45056,17.482557, 100, 0, 0),
(@SGGUID+28, 7, 405.18607,-431.40958,17.642626, 100, 0, 0),
(@SGGUID+28, 8, 381.10196,-408.29456,17.412575, 100, 0, 0),
(@SGGUID+28, 9, 371.08066,-386.68857,17.533276, 100, 0, 0),
(@SGGUID+28, 10, 370.50394,-367.0732,17.405085, 100, 0, 0),
(@SGGUID+28, 11, 374.15472,-348.67526,17.487862, 100, 0, 0),
(@SGGUID+28, 12, 383.51407,-331.20804,17.805042, 100, 0, 0),
(@SGGUID+28, 13, 399.2576,-317.97568,17.702955, 100, 0, 0),
(@SGGUID+28, 14, 417.19766,-309.42938,17.6053, 100, 0, 0),
(@SGGUID+28, 15, 432.46014,-306.89252,17.850367, 100, 0, 0),
-- Patrol 007
(@SGGUID+29, 1, 431.24652,-296.3426,19.22379, 100, 0, 0),
(@SGGUID+29, 2, 406.47583,-299.69058,19.35887, 100, 0, 0),
(@SGGUID+29, 3, 386.1362,-311.37195,19.263794, 100, 0, 0),
(@SGGUID+29, 4, 374.23172,-324.27585,19.34557, 100, 0, 0),
(@SGGUID+29, 5, 361.30313,-344.0715,19.270725, 100, 0, 0),
(@SGGUID+29, 6, 356.12393,-371.42795,19.313976, 100, 0, 0),
(@SGGUID+29, 7, 359.95117,-393.84915,19.193377, 100, 0, 0),
(@SGGUID+29, 8, 368.76376,-414.8379,19.26806, 100, 0, 0),
(@SGGUID+29, 9, 384.52292,-432.4314,19.266508, 100, 0, 0),
(@SGGUID+29, 10, 403.0607,-444.6788,19.3033, 100, 0, 0),
(@SGGUID+29, 11, 425.69485,-450.00244,19.294594, 100, 0, 0),
(@SGGUID+29, 12, 462.22357,-444.87628,19.263426, 100, 0, 0),
(@SGGUID+29, 13, 492.56067,-424.456,19.386421, 100, 0, 0),
(@SGGUID+29, 14, 504.81592,-404.91983,19.338032, 100, 0, 0),
(@SGGUID+29, 15, 510.29065,-382.46686,19.228214, 100, 0, 0),
(@SGGUID+29, 16, 509.67813,-363.055,19.14545, 100, 0, 0),
(@SGGUID+29, 17, 505.61807,-344.76736,19.232473, 100, 0, 0),
(@SGGUID+29, 18, 500.6301,-334.621,19.279722, 100, 0, 0),
-- Patrol 008
(@SGGUID+32, 1, 569.4054,-134.02185,33.929092, 100, 0, 0),
(@SGGUID+32, 2, 588.5716,-126.52433,36.050453, 100, 0, 0),
(@SGGUID+32, 3, 597.0831,-122.83465,38.35739, 100, 0, 0),
(@SGGUID+32, 4, 614.51105,-114.18895,44.410213, 100, 0, 0),
(@SGGUID+32, 5, 629.024,-104.85851,46.76857, 100, 0, 0),
(@SGGUID+32, 6, 644.30804,-89.03651,46.81918, 100, 0, 0),
(@SGGUID+32, 7, 658.1658,-70.976105,46.769356, 100, 0, 0),
-- Patrol 009
(@SGGUID+35, 1, 564.6969,134.79558,32.850483, 100, 0, 0),
(@SGGUID+35, 2, 578.00616,129.33405,35.686752, 100, 0, 0),
(@SGGUID+35, 3, 586.87726,125.51434,36.059555, 100, 0, 0),
(@SGGUID+35, 4, 596.7023,121.07731,38.24356, 100, 0, 0),
(@SGGUID+35, 5, 612.29346,113.80901,43.52018, 100, 0, 0),
(@SGGUID+35, 6, 627.3768,104.11148,46.740154, 100, 0, 0),
(@SGGUID+35, 7, 642.7598,88.49879,46.82853, 100, 0, 0),
(@SGGUID+35, 8, 657.5163,70.17264,46.771988, 100, 0, 0);

DELETE FROM `conditions` WHERE `condition_entry` IN (@SGGUID+1, @SGGUID+2, @SGGUID+3, @SGGUID+4);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(@SGGUID+1, 42, 4817, 1, 0, 0, 0, 'Al\'ar - Trash Respawn'),
(@SGGUID+2, 42, 4818, 1, 0, 0, 0, 'Void Reaver - Trash Respawn'),
(@SGGUID+3, 42, 4819, 1, 0, 0, 0, 'High Astromancer Solarian - Trash Respawn'),
(@SGGUID+4, 42, 4820, 1, 0, 0, 0, 'Kael\'thas Sunstrider - Trash Respawn');


DELETE FROM string_id WHERE Id IN (@STRINGID+1, @STRINGID+2, @STRINGID+3);
INSERT INTO `string_id` (Id, Name) VALUES 
(@STRINGID+1, 'TEMPEST_KEEP_MARSHAL_RP'),
(@STRINGID+2, 'TEMPEST_KEEP_FALCONER_RP_01'),
(@STRINGID+3, 'TEMPEST_KEEP_FALCONER_RP_01');

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2003501, 2003701, 2003702, 2003703, 2003704);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Bloodwarder Marshal Patrol
(2003501, 0, 0, 45, 0, @RELAYID+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Marshal - Start RandomScript'),
-- The Eye - Group 006 - Patrol 003 - random switching between random movement and waypoint movement
-- WaypointPath - SpawnGroup Formation leader starts script on last waypoint - Path 1
(2003701, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - Stop Waypoint'), -- Important to remove current waypoints, else we cant delete formation
(2003701, 0, 1, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - SendAIEvent A to self'), -- Inform self that we stoped to get random waittimer (guid cai)
(2003701, 1, 2, 51, 151, @SGGUID+5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - Remove Formation'), 
(2003701, 1000, 0, 20, 1, 10, 0, @STRINGID+2, 20, 2568, 0, 0, 0, 0, 0, 0, 0, 0, 'StringID - Change to Random Movement'), -- all npcs from spawn_group have stringid assigned and start random movement.
-- The Eye - Group 006 - Patrol 003 - random switching between random movement and waypoint movement
-- WaypointPath - SpawnGroup Formation leader starts script on last waypoint - Path 2
(2003702, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - Stop Waypoint'),
(2003702, 0, 1, 35, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - SendAIEvent B to self'), -- Inform self that we stoped to get random waittimer (guid cai)
(2003702, 1, 2, 51, 151, @SGGUID+5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - Remove Formation'),
(2003702, 1000, 0, 20, 1, 10, 0, @STRINGID+3, 20, 2568, 0, 0, 0, 0, 0, 0, 0, 0, 'StringID - Change to Random Movement'),
-- The Eye - Group 007 - Patrol 004 - random switching between random movement and waypoint movement
-- WaypointPath - SpawnGroup Formation leader starts script on last waypoint - Path 1
(2003703, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - Stop Waypoint'), -- Important to remove current waypoints, else we cant delete formation
(2003703, 0, 1, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - SendAIEvent A to self'), -- Inform self that we stoped to get random waittimer (guid cai)
(2003703, 1, 2, 51, 151, @SGGUID+6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - Remove Formation'),
(2003703, 1000, 0, 20, 1, 10, 0, @STRINGID+3, 20, 2568, 0, 0, 0, 0, 0, 0, 0, 0, 'StringID - Change to Random Movement'), -- all npcs from spawn_group have stringid assigned and start random movement.
-- The Eye - Group 007 - Patrol 004 - random switching between random movement and waypoint movement
-- WaypointPath - SpawnGroup Formation leader starts script on last waypoint - Path 2
(2003704, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - Stop Waypoint'),
(2003704, 0, 1, 35, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - SendAIEvent B to self'), -- Inform self that we stoped to get random waittimer (guid cai)
(2003704, 1, 2, 51, 151, @SGGUID+6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tempest Falconer - Remove Formation'),
(2003704, 1000, 0, 20, 1, 10, 0, @STRINGID+3, 20, 2568, 0, 0, 0, 0, 0, 0, 0, 0, 'StringID - Change to Random Movement');



DELETE FROM dbscripts_on_relay WHERE id IN (@RELAYID+1, @RELAYID+2, @RELAYID+3, @RELAYID+4, @RELAYID+5);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
-- Bloodwarder Marshal - RP with Group
(@RELAYID+1, 0, 0, 31, 0, 15, 0, @STRINGID+1, 15, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Bloodwarder Marshal - TerminateScript when no StringID found'),
(@RELAYID+1, 1, 2, 36, 0, 0, 0, @STRINGID+1, 15, 2560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - StringID - Face Bloodwarder Marshal'),
-- Delay Emoting a bit else you cant see it ingame cause it gets blocked from npcs turning movement
(@RELAYID+1, 1000, 0, 1, 113, 0, 0, @STRINGID+1, 15, 2560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - StringID - Emote OneShotSaluteNoSheath'),
(@RELAYID+1, 1000, 1, 35, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Bloodwarder Marshal - SendAIEvent A'),
(@RELAYID+1, 6000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Bloodwarder Marshal - Emote OneShotSalute'),
(@RELAYID+1, 6000, 1, 0, @RELAYID+5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Bloodwarder Marshal - Yell Text'),
(@RELAYID+1, 6000, 2, 36, 1, 0, 0, @STRINGID+1, 15, 2560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - StringID - Reset Facing'),
-- The Eye - Group 006 - Patrol 003 - Get back Formation and move waypoints - Path 2
-- Leader at last waypoint changes phase to 1 (guid cai) and starts this relay script after 15-30 seconds
(@RELAYID+2, 0, 0, 20, 0, 0, 0, @STRINGID+2, 15, 2560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Group 006 - StringID - Remove Random Movement'), -- all npcs from spawn_group have stringid assigned and will stop random movement
(@RELAYID+2, 0, 0, 51, 150, @SGGUID+5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 'The Eye - Group 006 - Patrol 003 - Add Formation'), -- add back to Formation - Type 0 - Spread 4
(@RELAYID+2, 0, 0, 20, 2, @SGGUID+6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Group 006 - Patrol 003 - Move Path 2'), -- start 2nd path
-- The Eye - Group 006 - Patrol 003 - Get back Formation and move waypoints - Path 1
(@RELAYID+3, 0, 0, 20, 0, 0, 0, @STRINGID+2, 15, 2560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Group 006 - StringID - Remove Random Movement'),
(@RELAYID+3, 0, 0, 51, 150, @SGGUID+5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 'The Eye - Group 006 - Patrol 003 - Add Formation'),
(@RELAYID+3, 0, 0, 20, 2, @SGGUID+5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Group 006 - Patrol 003 - Move Path 1'),
-- The Eye - Group 007 - Patrol 004 - Get back Formation and move waypoints - Path 2
-- Leader at last waypoint changes phase to 1 (guid cai) and starts this relay script after 15-30 seconds
(@RELAYID+4, 0, 0, 20, 0, 0, 0, @STRINGID+3, 15, 2560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Group 007 - StringID - Remove Random Movement'), -- all npcs from spawn_group have stringid assigned and will stop random movement
(@RELAYID+4, 0, 0, 51, 150, @SGGUID+6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 'The Eye - Group 007 - Patrol 004 - Add Formation'), -- add back to Formation - Type 0 - Spread 4
(@RELAYID+4, 0, 0, 20, 2, @SGGUID+8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Group 007 - Patrol 004 - Move Path 2'), -- start 2nd path
-- The Eye - Group 007 - Patrol 004 - Get back Formation and move waypoints - Path 1
(@RELAYID+5, 0, 0, 20, 0, 0, 0, @STRINGID+3, 15, 2560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Group 007 - StringID - Remove Random Movement'),
(@RELAYID+5, 0, 0, 51, 150, @SGGUID+6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 'The Eye - Group 007 - Patrol 004 - Add Formation'),
(@RELAYID+5, 0, 0, 20, 2, @SGGUID+7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Eye - Group 007 - Patrol 004 - Move Path 1');

DELETE FROM dbscript_random_templates WHERE id BETWEEN @RELAYID+1 AND @RELAYID+6;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
-- Bloodwarder Marshal 30% Chance to start relay script
(@RELAYID+1, 1, @RELAYID+1, 90, 'Bloodwarder Marshal - RP Script'),
(@RELAYID+1, 1, 0, 10, 'Bloodwarder Marshal - Nothing'),
-- Bloodwarder Legionnaire - Group 1 Texts
(@RELAYID+2, 0, 18030, 0, 'Bloodwarder Legionnaire Group 001 - Yell 1'),
(@RELAYID+2, 0, 18031, 0, 'Bloodwarder Legionnaire Group 001 - Yell 2'),
(@RELAYID+2, 0, 18032, 0, 'Bloodwarder Legionnaire Group 001 - Yell 3'),
-- Bloodwarder Legionnaire - Group 2 Texts
(@RELAYID+3, 0, 18035, 0, 'Bloodwarder Legionnaire Group 002 - Yell 1'),
(@RELAYID+3, 0, 18036, 0, 'Bloodwarder Legionnaire Group 002 - Yell 2'),
(@RELAYID+3, 0, 18037, 0, 'Bloodwarder Legionnaire Group 002 - Yell 3'),
-- Bloodwarder Legionnaire - Group 3 Texts
(@RELAYID+4, 0, 18038, 0, 'Bloodwarder Legionnaire Group 003 - Yell 1'),
(@RELAYID+4, 0, 18039, 0, 'Bloodwarder Legionnaire Group 003 - Yell 2'),
(@RELAYID+4, 0, 18040, 0, 'Bloodwarder Legionnaire Group 003 - Yell 3'),
-- Bloodwarder Marshal - answer
(@RELAYID+5, 0, 18045, 0, 'Bloodwarder Marshal - Yell 1'),
(@RELAYID+5, 0, 18046, 0, 'Bloodwarder Marshal - Yell 2'),
(@RELAYID+5, 0, 18047, 0, 'Bloodwarder Marshal - Yell 3'),
(@RELAYID+5, 0, 18048, 0, 'Bloodwarder Marshal - Yell 4'),
(@RELAYID+5, 0, 18049, 0, 'Bloodwarder Marshal - Yell 5'),
-- Tempest-Smith - random text
(@RELAYID+6, 0, 17839, 0, 'Tempest-Smith - Say 1'),
(@RELAYID+6, 0, 17841, 0, 'Tempest-Smith - Say 2');

-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES


