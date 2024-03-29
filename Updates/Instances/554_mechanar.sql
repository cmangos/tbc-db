/* DBScriptData
DBName: Tempest Keep - The Mechanar (Mecha)
DBScriptName: instance_mechanar
DB%Complete: 80
DBComment: 
Missing correct spawns for chests and maybe update their spawn_group
Missing correct waypoints for Mechano-Lord Capacitus
Add waittimemin and waittimemax when table structure changes
EndDBScriptData */

SET @CGUID := 5540000; -- creatures
SET @OGUID := 5540000; -- gameobjects
SET @SGGUID := 5540000; -- spawn_groups

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+1, 1, 117.62223,78.36094,14.92448, 100,1000, 0),
(@CGUID+1, 2, 149.63039,81.24523,6.4690247,100,0,0),
(@CGUID+1, 3, 169.93733,81.2677,0.36944586,100,0,0),
(@CGUID+1, 4, 188.18597,64.12248,-0.005838667,100,0,0),
(@CGUID+1, 5, 186.61266,47.3467,-0.006220245,100,0,0),
(@CGUID+1, 6, 164.64165,49.954487,-0.001837478,100,1000,0),
(@CGUID+2, 1, 76.8514,59.621902,14.924665, 100, 1000, 0), -- waittime 1-2 
(@CGUID+2, 2, 38.19203,59.687855,0.1630622, 100, 0, 0),
(@CGUID+2, 3, 30.011766,55.230145,0.1630622, 100, 0, 0),
(@CGUID+2, 4, 32.04149,39.386734,0.014305516, 100, 1000, 0), -- waittime 1-2 
(@CGUID+3, 1, 28.923302,-18.143108,-0.0005735572, 100, 0, 0),
(@CGUID+3, 2, 26.356697,-5.9867935,-0.000380761,3.33357, 10000, 0), -- 8 - 10 waittime
(@CGUID+3, 3, 29.69342,-15.448353,-0.00058285974, 100, 0, 0),
(@CGUID+3, 4, 35.844803,-23.9074,-0.0004889075, 100, 0, 0),
(@CGUID+3, 5, 43.611073,-26.751925,0.006033899,3.0368728, 10000, 0), -- 9 - 19 waittime
(@CGUID+3, 6, 35.844803,-23.9074,-0.0004889075, 100, 0, 0),
(@CGUID+4, 1, 27.243652,18.831352,-0.0004997472, 100, 0, 0),
(@CGUID+4, 2, 24.297773,7.9234104,-0.00028621498,2.96705961, 10000, 0), -- 8 - 12 waittime
(@CGUID+4, 3, 28.086344,21.93921,-0.00050851365, 100, 0, 0),
(@CGUID+4, 4, 41.327057,29.448656,0.0061041107,3.263765, 10000, 0), -- 10 - 16 waittime
(@CGUID+4, 5, 32.220608,26.515696,0.0071369237, 100, 0, 0),
(@CGUID+6, 1, 73.91813,-56.71242,14.924665, 100, 1000, 0), -- waittime 1-2 
(@CGUID+6, 2, 38.843502,-56.28604,0.22432718, 100, 0, 0),
(@CGUID+6, 3, 30.624844,-54.907387,0.26585943, 100, 0, 0),
(@CGUID+6, 4, 31.930918,-34.87634,0.010954779, 100, 1000, 0), -- waittime 1-2 
(@CGUID+21, 1, 197.953, 12.5222, -2.19211, 0, 0, 0),
(@CGUID+21, 2, 195.769, -10.0593, -2.19211, 0, 0, 0),
(@CGUID+21, 3, 200.292, -39.2775, -2.19211, 0, 0, 0),
(@CGUID+21, 4, 221.534, -38.9328, -2.19211, 0, 0, 0),
(@CGUID+21, 5, 222.264, 15.791, -2.19211, 0, 0, 0),
(@CGUID+23,1,90.85117,-74.31637,14.926526,100,0,0),
(@CGUID+23,2,96.893936,-71.07658,14.92652,100,0,0),
(@CGUID+23,3,105.08907,-74.979095,14.9298115,100,0,0),
(@CGUID+23,4,107.66785,-81.308876,14.931074,100,0,0),
(@CGUID+31,1,193.61458,-39.96439,0.0023763778,100,0,0),
(@CGUID+31,2,189.31216,-44.155567,0,100,0,0),
(@CGUID+31,3,181.85164,-77.11685,0.0077276435,100,0,0),
(@CGUID+31,4,167.87256,-78.7667,1.007633,100,0,0),
(@CGUID+31,5,120.14774,-74.052536,14.927823,100,0,0),
(@CGUID+31,6,167.87256,-78.7667,1.007633,100,0,0),
(@CGUID+31,7,181.85164,-77.11685,0.0077276435,100,0,0),
(@CGUID+32,1,132.1031,37.008965,0.003121846,100,0,0),
(@CGUID+32,2,142.23601,40.296707,0.005726555,100,0,0),
(@CGUID+32,3,144.87463,45.93079,0.008017367,100,0,0),
(@CGUID+32,4,158.54794,47.99082,0.0038790724,100,0,0),
(@CGUID+32,5,161.00502,53.83562,0.003132181,100,0,0),
(@CGUID+47, 1, 174.11919,37.801308,1.010456, 100, 1000, 0),
(@CGUID+47, 2, 179.0216,40.52939,-0.006131659, 100, 0, 0),
(@CGUID+47, 3, 185.691,41.82604,-0.006107603, 100, 0, 0),
(@CGUID+47, 4, 193.55858,41.26056,-0.0060337405, 100, 0, 0),
(@CGUID+47, 5, 197.70654,37.415173,-0.005917786, 100, 1000, 0),
(@CGUID+55, 1, 213.2274,-75.13932,0.004827803, 100, 1, 5),
(@CGUID+55, 2, 208.24849,-83.39652,0.0051163677, 100, 0, 0),
(@CGUID+55, 3, 201.05713,-94.47349,0.0055515133, 100, 0, 0),
(@CGUID+55, 4, 211.34688,-101.7175,9.806146, 100, 0, 0),
(@CGUID+55, 5, 221.76944,-105.02244,0.0001423994, 100, 0, 0),
(@CGUID+59, 1,203.69647,53.04169,-0.004259702, 100, 0, 0),
(@CGUID+59, 2, 233.31285,52.318443,0.021424541, 100, 0, 0),
(@CGUID+68, 1, 110.57969,69.03175,14.918284, 100, 1000, 0), -- waittime 0 - 2 seconds
(@CGUID+68, 2, 102.23087,58.490253,14.934289, 100, 0, 0),
(@CGUID+68, 3, 101.23074,46.33547,14.9244, 100, 0, 0),
(@CGUID+68, 4, 112.06979,40.35622,14.924257, 100, 1000, 0), -- waittime 0 - 2 seconds
(@CGUID+70,1,212.29579,-63.3326,0.0074739046,100,0,0),
(@CGUID+70,2,215.63664,-57.850872,0.0075872466,100,0,0),
(@CGUID+70,3,221.93794,-55.454258,0.008690897,100,0,0),
(@CGUID+70,4,229.27179,-57.646294,0.009516931,100,0,0),
(@CGUID+71, 1, 115.30892,-32.14138,14.919365, 100, 1000, 0),
(@CGUID+71, 2, 103.1169,-38.395683,14.924649,100, 0, 0),
(@CGUID+71, 3, 100.0206,-48.74694,14.92466,100, 0, 0),
(@CGUID+71, 4, 104.0157,-60.55514,14.924665,100, 0, 0),
(@CGUID+71, 5, 101.51141,-74.898766,14.93021,100, 1000, 0);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES

INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+33, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+34, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+35, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+36, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+37, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+38, 0, 0, 1, 28, 0, NULL), -- Mechanar Driller
(@CGUID+39, 0, 0, 1, 28, 0, NULL), -- Mechanar Wrecker
(@CGUID+40, 0, 0, 1, 28, 0, NULL), -- Mechanar Wrecker
(@CGUID+41, 0, 0, 1, 28, 0, NULL), -- Mechanar Wrecker
(@CGUID+42, 0, 0, 1, 28, 0, NULL), -- Mechanar Wrecker
(@CGUID+45, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+46, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+48, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+49, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+50, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+51, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+56, 0, 0, 1, 28, 0, NULL), -- Mechanar Tinkerer
(@CGUID+57, 0, 0, 1, 28, 0, NULL); -- Mechanar Tinkerer

-- REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(20481, 554, 19221, 4113, 0); -- Raging Flames -> Nethermancer Sepethrea

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 19166, 554, 3, 117.62223, 78.36094, 14.92448, 3.23146, 7200, 7200, 0, 4), -- Tempest-Forge Patroller
(@CGUID+2, 19166, 554, 3, 76.8514, 59.621902, 14.924665, 3.1380, 7200, 7200, 0, 4), -- Tempest-Forge Patroller
(@CGUID+3, 19166, 554, 3, 44.49996, -25.5979, 0.090351336, 3.453181, 7200, 7200, 0, 2), -- Tempest-Forge Patroller
(@CGUID+4, 19166, 554, 3, 40.954517, 28.962717, 0.08852234, 0.777655, 7200, 7200, 0, 2), -- Tempest-Forge Patroller
(@CGUID+5, 19166, 554, 3, 30.2196521, 2.91536, 0.0823943, 3.29867219, 7200, 7200, 0, 0), -- Tempest-Forge Patroller
(@CGUID+6, 19166, 554, 3, 73.91813, -56.71242, 14.924665, 3.18021, 7200, 7200, 0, 4), -- Tempest-Forge Patroller
(@CGUID+7, 19167, 554, 3, 119.3447, 85.911827, 15.016303, 3.4557, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+8, 19167, 554, 3, 77.8173, 64.1236, 15.0079, 3.26376, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+9, 19167, 554, 3, 37.3979, 64.6460, 0.24639, 4.13643, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+10, 19167, 554, 3, 30.724, -48.3542, 0.24584, 1.4311, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+11, 19167, 554, 3, 120.598472, -65.57369, 15.0079984, 3.246312, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+12, 19167, 554, 3, 77.903297, -51.98025, 15.007998, 3.316125, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+13, 19167, 554, 3, 37.17504, -51.86893, 0.246396, 4.118977, 7200, 7200, 0, 0), -- Bloodwarder Slayer
(@CGUID+14, 19168, 554, 3, 226.5947, 45.0895, 0.076829, 3.17649, 7200, 7200, 0, 0), -- Sunseeker Astromage
(@CGUID+15, 19168, 554, 3, 226.5711, 60.279705, 0.0791843, 3.08923, 7200, 7200, 0, 0), -- Sunseeker Astromage
(@CGUID+16, 19168, 554, 3, 272.154907, -24.658304, 26.4117317, 6.16101217, 10800, 10800, 0, 0), -- Sunseeker Astromage
(@CGUID+17, 19168, 554, 3, 272.07785, -20.9663429, 26.411729, 6.19591856, 10800, 10800, 0, 0), -- Sunseeker Astromage
(@CGUID+18, 19168, 554, 3, 309.3312072, 15.133928, 25.46950149, 3.071779, 10800, 10800, 0, 0), -- Sunseeker Astromage
(@CGUID+19, 19168, 554, 3, 309.38809, 5.2927131, 25.51544, 3.29867, 10800, 10800, 0, 0), -- Sunseeker Astromage
(@CGUID+20, 19218, 554, 3, 85.5275, 20.2005, 15.0044, 0.66322, 7200, 7200, 0, 0), -- Gatewatcher Gyro-Kill
(@CGUID+21, 19219, 554, 3, 210.416, 15.6408, -2.19211, 3.23112, 86400, 86400, 0, 2), -- Mechano-Lord Capacitus
(@CGUID+22, 19221, 554, 3, 326.516754, 13.1959295, 27.919878, 3.2288591, 86400, 86400, 0, 0), -- Nethermancer Sepethrea
(@CGUID+23, 19231, 554, 3, 90.85117,-74.31637,14.926526, 1.9576, 7200, 7200, 0, 4), -- Mechanar Crusher
(@CGUID+24, 19510, 554, 3, 165.6997, 85.55811, 1.7688, 3.2114, 7200, 7200, 0, 0), -- Bloodwarder Centurion
(@CGUID+25, 19510, 554, 3, 30.6968, 49.5820, 0.2443, 3.70009, 7200, 7200, 0, 0), -- Bloodwarder Centurion
(@CGUID+26, 19510, 554, 3, 165.8437805, -73.6566925, 1.726465, 3.2463, 7200, 7200, 0, 0), -- Bloodwarder Centurion
(@CGUID+27, 19510, 554, 3, 274.30203, -17.80636, 26.411733, 0.1570796, 10800, 10800, 0, 0), -- Bloodwarder Centurion
(@CGUID+28, 19510, 554, 3, 274.13446, -28.706228, 26.4117336, 0, 10800, 10800, 0, 0), -- Bloodwarder Centurion
(@CGUID+29, 19510, 554, 3, 309.5181575, 20.279687, 25.473518, 2.70526, 10800, 10800, 0, 0), -- Bloodwarder Centurion
(@CGUID+30, 19510, 554, 3, 309.24331665, 10.2549448, 25.4695, 3.17649, 10800, 10800, 0, 0), -- Bloodwarder Centurion
(@CGUID+31, 19710, 554, 3, 193.61458,-39.96439,0.002376377, 4.4057, 7200, 7200, 0, 2), -- Gatewatcher Iron-Hand
(@CGUID+32, 19712, 554, 3, 147.889, 45.0173, -0.00156292, 0.426625, 7200, 7200, 0, 4), -- Mechanar Driller
(@CGUID+33, 19712, 554, 3, 216.178588, -95.20417, 0.089169, 0.209439, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+34, 19712, 554, 3, 214.7920227, -83.15372, 0.089053, 5.51524, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+35, 19713, 554, 3, 227.934219, -52.084957, 0.08384, 0.052359, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+36, 19712, 554, 3, 223.733078, -62.98485, 0.08568, 5.044001, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+37, 19712, 554, 3, 109.6207, -55.27137, 15.0070, 0.680678, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+38, 19712, 554, 3, 108.42352, -42.77960, 15.0079984, 5.166174, 7200, 7200, 0, 0), -- Mechanar Driller
(@CGUID+39, 19713, 554, 3, 109.459, 58.57525, 15.0079, 5.28834, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+40, 19713, 554, 3, 112.692, 45.97577, 15.0079, 1.0122, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+41, 19713, 554, 3, 165.63903, -19.858942, 0.0833333, 5.881759643, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+42, 19713, 554, 3, 174.124847, -17.48858, 0.083334, 3.961897, 7200, 7200, 0, 0), -- Mechanar Wrecker
(@CGUID+43, 19716, 554, 3, 138.388519287109375, -41.2021713256835937, 0, 4.11427068, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+44, 19716, 554, 3, 134.8453216552734375, -43.4078445434570312, 0, 5.20408, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+45, 19716, 554, 3, 140.17654, 50.36528, 0.081192, 0.907571, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+46, 19716, 554, 3, 152.632965, 53.3561248, 0.079404, 2.687807, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+47, 19716, 554, 3, 174.11919, 37.801308, 1.010456,3.069, 7200, 7200, 0, 4), -- Mechanar Tinkerer
(@CGUID+48, 19716, 554, 3, 192.83818, 35.6950187, 0.0776353, 4.85201, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+49, 19716, 554, 3, 185.8190, 35.82398, 0.0775393, 4.764749, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+50, 19716, 554, 3, 134.556167, 45.114238, 0.08333, 1.32645, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+51, 19716, 554, 3, 180.1647, 34.5334, 0.07693833, 4.45058, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+52, 19716, 554, 3, 169.242, -12.2941, -0.00102673, 4.806, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+53, 19716, 554, 3, 173.388, -13.5083, -0.00102673, 3.74572, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+54, 19716, 554, 3, 209.166, -90.5678, 0.0000594996, 1.5309, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+55, 19716, 554, 3, 213.2274,-75.13932,0.004827803, 2.8345, 7200, 7200, 0, 4), -- Mechanar Tinkerer
(@CGUID+56, 19716, 554, 3, 99.9307632, -77.951622, 15.0107879, 3.9269, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+57, 19716, 554, 3, 92.3547973, -79.298606, 15.0079984, 5.1836, 7200, 7200, 0, 0), -- Mechanar Tinkerer
(@CGUID+58, 19716, 554, 3, 106.545, 52.6026, 14.9234, 0.0881336, 7200, 7200, 3, 1), -- Mechanar Tinkerer
(@CGUID+59, 19735, 554, 3, 203.69647,53.04169,-0.004259702, 3.1171770, 7200, 7200, 0, 2), -- Tempest-Forge Destroyer
(@CGUID+60, 19735, 554, 3, 290.618743, 29.120569, 25.469497, 1.692969, 7200, 7200, 0, 0), -- Tempest-Forge Destroyer
(@CGUID+61, 19735, 554, 3, 295.850036, -13.445477, 25.382963, 6.1353278, 7200, 7200, 3, 1), -- Tempest-Forge Destroyer
(@CGUID+62, 20059, 554, 3, 169.3725, 92.116249, 0.659512, 3.351, 7200, 7200, 0, 0), -- Sunseeker Netherbinder
(@CGUID+63, 20059, 554, 3, 31.831068, 47.368565, 0.17648034, 1.053, 7200, 7200, 0, 0), -- Sunseeker Netherbinder
(@CGUID+64, 20059, 554, 3, 31.82565, -48.63669, 0.24551535, 3.51334, 7200, 7200, 0, 0), -- Sunseeker Netherbinder
(@CGUID+65, 20059, 554, 3, 169.257659, -68.09396, 0.665288, 3.26376, 7200, 7200, 0, 0), -- Sunseeker Netherbinder
(@CGUID+66, 20988, 554, 3, 133.053, -39.9267, -0.00164767, 6.15486, 7200, 7200, 3, 1), -- Sunseeker Engineer
(@CGUID+67, 20988, 554, 3, 131.178, 40.8598, 0.007842, 1.00548, 7200, 7200, 3, 1), -- Sunseeker Engineer
(@CGUID+68, 20988, 554, 3, 110.57969, 69.03175, 14.918284, 2.63749, 7200, 7200, 0, 4), -- Sunseeker Engineer
(@CGUID+69, 20988, 554, 3, 138.596, -40.4336, -0.00164767, 3.13108, 7200, 7200, 3, 1), -- Sunseeker Engineer
(@CGUID+70, 20988, 554, 3, 212.29579,-63.3326,0.0074739046, 3.5050, 7200, 7200, 0, 4), -- Sunseeker Engineer
(@CGUID+71, 20988, 554, 3, 115.30892,-32.14138,14.919365, 0.93758809, 7200, 7200, 0, 2), -- Sunseeker Engineer
(@CGUID+72, 20990, 554, 3, 165.422, 77.96908, 1.84253, 3.29867, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+73, 20990, 554, 3, 119.439, 69.1739, 15.0079, 3.29867, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+74, 20990, 554, 3, 77.582, 55.403, 15.0079, 3.19395, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+75, 20990, 554, 3, 37.4106, 54.8214, 0.24639, 2.39110, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+76, 20990, 554, 3, 33.7580, 49.8961, 0.24240, 5.72467, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+77, 20990, 554, 3, 30.8605, -46.8066, 0.23633, 0.925, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+78, 20990, 554, 3, 168.9602, -87.276745, 0.789825, 3.19395, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+79, 20990, 554, 3, 120.378166, -82.303398, 15.0098361, 3.21140, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+80, 20990, 554, 3, 77.9449768, -60.83882, 15.007998, 3.4732, 7200, 7200, 0, 0), -- Bloodwarder Physician
(@CGUID+81, 20990, 554, 3, 37.46082, -60.79094, 0.246396, 2.6529, 7200, 7200, 0, 0); -- Bloodwarder Physician

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 183788, 554, 3, 0, 0, 0, 3.141592741012573242, 0, 0, -1, 0, 25, 25), -- Doodad_FactoryElevator01
(@OGUID+2, 184225, 554, 3, 73.9475, 149.684, 27.7701, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+3, 184226, 554, 3, 73.9475, 149.684, 27.7701, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+4, 184227, 554, 3, -38.0125, 0.10273, 0.504373, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+5, 184228, 554, 3, -38.0125, 0.10273, 0.504373, 3.14159, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+6, 184322, 554, 3, 242.87399, 52.314811, 1.596333, 3.141592, 0, 0, -1, 0, 43200, 43200), -- Mo'arg 2 Door
(@OGUID+7, 184449, 554, 3, 267.92807, 52.3148, 27.0425357, 3.1415927, 0, 0, -1, 0, 7200, 7200), -- Nethermancer Encounter Door
(@OGUID+8, 184465, 554, 1, 219.30024719, 74.085479, -0.0052579, 4.6774835, 0, 0, -0.71933937, 0.6946588, 10800, 10800), -- Cache of the Legion
(@OGUID+9, 184632, 554, 3, 236.45971, 52.36355, 1.65354, 3.14159, 0, 0, -1, 0, 43200, 43200), -- Mo'arg 1 Door
(@OGUID+10, 184849, 554, 2, 225.442, 83.4075, 0.002621, 4.74591, 0, 0, 0, 0, 86400, 86400), -- Cache of the Legion
-- RE-USE 11 - 13
(@OGUID+14, 185015, 554, 3, 163.6997833, -27.379201, 1.0089340, 4.729844, 0, 0, -0.700908, 0.713251, 120, 120), -- Overcharged Manacell
(@OGUID+15, 185015, 554, 3, 155.4228057, -29.732164, 1.0088200, 2.007128, 0, 0, 0.8433914, 0.537299, 120, 120), -- Overcharged Manacell
(@OGUID+16, 185015, 554, 3, 148.2663879, -35.250049, 1.0092339, 2.478367, 0, 0, 0.9455184, 0.3255689, 120, 120), -- Overcharged Manacell
(@OGUID+17, 185015, 554, 3, 145.1979064, -44.518516, 1.0091880, 2.740161, 0, 0, 0.9799242, 0.199370, 120, 120), -- Overcharged Manacell
(@OGUID+18, 0, 554, 3, 221.32, -90.15, 0.00, 3.73, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+19, 0, 554, 3, 131.80, -44.97, -0.00, 0.81, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+20, 0, 554, 3, 129.97, 45.00, 0.00, 5.51, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+21, 0, 554, 3, 243.344, 14.1168, -0.0019269, 0.50436, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+22, 0, 554, 3, 299.06, -46.0161, 25.3949, 6.1043, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
(@OGUID+23, 0, 554, 3, 143.472, 179.921, 25.5636, 1.36442, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest - Solid Adamantite Chest - spawn_group_entry
-- Charged Manacell's 
(@OGUID+24, 185018, 554, 3, 163.6997833, -27.3792018, 1.008934, 4.729844, 0, 0, -0.7009086, 0.713251, 120, 120), -- Charged Manacell
(@OGUID+25, 185018, 554, 3, 155.4228057, -29.7321643, 1.008820, 2.007128, 0, 0, 0.84339141, 0.537299, 120, 120), -- Charged Manacell
(@OGUID+26, 185018, 554, 3, 148.2663879, -35.2500495, 1.009233, 2.478367, 0, 0, 0.94551849, 0.325568, 120, 120), -- Charged Manacell
(@OGUID+27, 185018, 554, 3, 145.1979064, -44.5185165, 1.009188, 2.740161, 0, 0, 0.9799242, 0.1993703, 120, 120); -- Charged Manacell

INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES
(@OGUID+1, 0, -1), -- Doodad_FactoryElevator01
(@OGUID+2, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+3, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+4, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+5, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+6, 0, -1), -- Mo'arg 2 Door
(@OGUID+9, 0, -1); -- Mo'arg 1 Door

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(@CGUID+22, 0, 22804, 0, 0, 0, 2); -- Nethermancer Sepethrea (Feast of Winter Veil - Main Event)

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- ============
-- SPAWN GROUPS
-- ============

-- ======
-- SPAWN GROUPS
-- ======

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+1, 'The Mechanar - Bound / Solid Adamantite Chest', 1, 1, 0, 0, 0),
(@SGGUID+2, 'The Mechanar - Group 001', 0, 3, 0, 0, 0),
(@SGGUID+3, 'The Mechanar - Group 002', 0, 3, 0, 1, 0),
-- left side entrance to first boss
(@SGGUID+4, 'The Mechanar - Group 003', 0, 2, 0, 1, 0),
(@SGGUID+5, 'The Mechanar - Group 004', 0, 2, 0, 1, 0),
(@SGGUID+6, 'The Mechanar - Group 005', 0, 4, 0, 1, 0),
(@SGGUID+7, 'The Mechanar - Group 006', 0, 2, 0, 1, 0),
(@SGGUID+8, 'The Mechanar - Group 007', 0, 3, 0, 1, 0),
(@SGGUID+9, 'The Mechanar - Group 008 | Mechanar Trinkerer (4)', 0, 4, 0, 1, 0),
(@SGGUID+10, 'The Mechanar - Group 009 | Mechanar Driller - Sunseeker Engineer - Mechanar Trinkerer (3)', 0, 5, 0, 1, 0),
(@SGGUID+11, 'The Mechanar - Group 010 | Sunseeker Astromage (2)', 0, 2, 0, 1, 0),
-- right side entrance to first boss
(@SGGUID+12, 'The Mechanar - Group 011 | Bloodwarder Slayer - Bloodwarder Physician', 0, 2, 0, 1, 0),
(@SGGUID+13, 'The Mechanar - Group 012 | Bloodwarder Slayer - Bloodwarder Physician', 0, 2, 0, 1, 0),
(@SGGUID+14, 'The Mechanar - Group 013 | Mechanar Crusher | Mechanar Trinkerer (2)', 0, 3, 0, 1, 0),
(@SGGUID+15, 'The Mechanar - Group 014 | Mechanar Driller (2) | Sunseeker Engineer', 0, 3, 0, 1, 0),
(@SGGUID+16, 'The Mechanar - Group 015 | Bloodwarder Slayer - Bloodwarder Physician', 0, 2, 0, 1, 0),
(@SGGUID+17, 'The Mechanar - Group 016 | Bloodwarder Physician - Bloodwarder Centurion - Sunseeker Netherbinder', 0, 3, 0, 1, 0),
(@SGGUID+18, 'The Mechanar - Group 017 | Mechanar Driller (2) - Mechanar Tinkerer (2)', 0, 4, 0, 1, 0),
(@SGGUID+19, 'The Mechanar - Group 018 | Mechanar Driller - Mechanar Wrecker - Sunseeker Engineer', 0, 3, 0, 1, 0),
-- 2 groups at first boss
(@SGGUID+20, 'The Mechanar - Group 019 | Mechanar Tinkerer (2) - Mechanar Wrecker (2)', 0, 4, 0, 1, 0),
(@SGGUID+21, 'The Mechanar - Group 020 | Mechanar Tinkerer (2) - Sunseeker Engineer (2)', 0, 4, 0, 1, 0),
-- Groups on 2nd floor at 2nd boss
(@SGGUID+22, 'The Mechanar - Group 021 | Bloodwarder Centurion (2) - Sunseeker Astromage (2)', 0, 4, 0, 1, 0),
(@SGGUID+23, 'The Mechanar - Group 022 | Bloodwarder Centurion (2) - Sunseeker Astromage (2)', 0, 4, 0, 1, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+1, 184940, 0, 0, 0), -- Bound Adamantite Chest 
(@SGGUID+1, 184937, 0, 0, 0); -- Solid Adamantite Chest

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @OGUID+18, -1, 0),
(@SGGUID+1, @OGUID+19, -1, 0),
(@SGGUID+1, @OGUID+20, -1, 0),
(@SGGUID+1, @OGUID+21, -1, 0),
(@SGGUID+1, @OGUID+22, -1, 0),
(@SGGUID+1, @OGUID+23, -1, 0), 
(@SGGUID+2, @CGUID+63, 0, 0),
(@SGGUID+2, @CGUID+25, 1, 0),
(@SGGUID+2, @CGUID+76, 2, 0),
(@SGGUID+3, @CGUID+64, 0, 0),
(@SGGUID+3, @CGUID+10, 1, 0),
(@SGGUID+3, @CGUID+77, 2, 0),
-- left side entrance to first boss
(@SGGUID+4, @CGUID+75, 0, 0),
(@SGGUID+4, @CGUID+9, 1, 0),
(@SGGUID+5, @CGUID+74, 0, 0),
(@SGGUID+5, @CGUID+8, 1, 0),
(@SGGUID+6, @CGUID+68, 0, 0),
(@SGGUID+6, @CGUID+39, 1, 0),
(@SGGUID+6, @CGUID+40, 2, 0),
(@SGGUID+6, @CGUID+58, 3, 0),
(@SGGUID+7, @CGUID+7, 0, 0),
(@SGGUID+7, @CGUID+73, 1, 0),
(@SGGUID+8, @CGUID+62, 0, 0),
(@SGGUID+8, @CGUID+24, 1, 0),
(@SGGUID+8, @CGUID+72, 2, 0),
(@SGGUID+9, @CGUID+47, 0, 0),
(@SGGUID+9, @CGUID+48, 1, 0),
(@SGGUID+9, @CGUID+49, 2, 0),
(@SGGUID+9, @CGUID+51, 3, 0),
(@SGGUID+10, @CGUID+32, 0, 0),
(@SGGUID+10, @CGUID+67, 1, 0),
(@SGGUID+10, @CGUID+45, 2, 0),
(@SGGUID+10, @CGUID+46, 3, 0),
(@SGGUID+10, @CGUID+50, 4, 0),
(@SGGUID+11, @CGUID+14, 0, 0),
(@SGGUID+11, @CGUID+15, 1, 0),
-- lefr side entrance to first boss
(@SGGUID+12, @CGUID+13, 0, 0),
(@SGGUID+12, @CGUID+81, 1, 0),
(@SGGUID+13, @CGUID+12, 0, 0),
(@SGGUID+13, @CGUID+80, 1, 0),
(@SGGUID+14, @CGUID+23, 0, 0),
(@SGGUID+14, @CGUID+56, 1, 0),
(@SGGUID+14, @CGUID+57, 2, 0),
(@SGGUID+15, @CGUID+71, 0, 0), -- Sunseeker Engineer - grouped to both Mechanar Driller
(@SGGUID+15, @CGUID+37, 1, 0),
(@SGGUID+15, @CGUID+38, 2, 0),
(@SGGUID+16, @CGUID+11, 0, 0),
(@SGGUID+16, @CGUID+79, 1, 0),
(@SGGUID+17, @CGUID+26, 0, 0),
(@SGGUID+17, @CGUID+65, 1, 0),
(@SGGUID+17, @CGUID+78, 2, 0),
(@SGGUID+18, @CGUID+33, 0, 0),
(@SGGUID+18, @CGUID+34, 1, 0),
(@SGGUID+18, @CGUID+54, 2, 0),
(@SGGUID+18, @CGUID+55, 3, 0),
(@SGGUID+19, @CGUID+70, 0, 0),
(@SGGUID+19, @CGUID+35, 1, 0),
(@SGGUID+19, @CGUID+36, 2, 0),
(@SGGUID+20, @CGUID+41, 0, 0),
(@SGGUID+20, @CGUID+42, 1, 0),
(@SGGUID+20, @CGUID+52, 2, 0),
(@SGGUID+20, @CGUID+53, 3, 0),
(@SGGUID+21, @CGUID+66, 0, 0),
(@SGGUID+21, @CGUID+69, 1, 0),
(@SGGUID+21, @CGUID+43, 2, 0),
(@SGGUID+21, @CGUID+44, 3, 0),
(@SGGUID+22, @CGUID+29, 0, 0),
(@SGGUID+22, @CGUID+30, 1, 0),
(@SGGUID+22, @CGUID+18, 2, 0),
(@SGGUID+22, @CGUID+19, 3, 0),
(@SGGUID+23, @CGUID+27, 0, 0),
(@SGGUID+23, @CGUID+28, 1, 0),
(@SGGUID+23, @CGUID+16, 2, 0),
(@SGGUID+23, @CGUID+17, 3, 0);

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGGUID+2, 2, 2.5, 0, @SGGUID+2, 2, 'The Mechanar - Group 001'),
(@SGGUID+3, 2, 2.5, 0, @SGGUID+3, 2, 'The Mechanar - Group 002');

INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@SGGUID+2, 'The Mechanar - Group 001'),
(@SGGUID+3, 'The Mechanar - Group 002');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@SGGUID+2,1,31.831068, 47.368565, 0.17648034, 100,100,6),
(@SGGUID+2,2,22.140232,20.44575,-0.00017946586,3.176499,100,2005901),
(@SGGUID+3,1,31.82565, -48.63669, 0.24551535, 100,100,6),
(@SGGUID+3,2,23.20878,-18.283443,-0.00011080224,3.08923,100,2005901);

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2005901);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2005901, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn_group - change movement');

-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES