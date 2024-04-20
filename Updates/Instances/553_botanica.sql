/* DBScriptData
DBName: Tempest Keep - The Botanica
DBScriptName: -
DB%Complete: 85
DBComment:
* Recheck RP Scripts for Sunseeker Geomancer 18420
EndDBScriptData */

SET @CGUID := 5530000; -- creatures
SET @OGUID := 5530000; -- gameobjects
SET @PGUID := 49000; -- pools
SET @SGGUID := 5530000; -- spawn_groups
SET @STRINGID := 5530000; -- used for StringID's
SET @RELAYID := 5530000; -- used for dbscript_on_relay

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+6, 1, 6.788073, 151.4322, -5.4570436, 100, 0, 0),
(@CGUID+6, 2, 2.362805,147.59216,-5.540375, 100, 0, 0),
(@CGUID+6, 3, 1.4508862,134.90886,-5.5403657, 100, 0, 0),
(@CGUID+6, 4, 4.29729,131.94543,-5.5403824,4.7298421, 100,1799301),
(@CGUID+7, 1, -7.523286, 231.72736, -5.540363, 100, 0, 0),
(@CGUID+7, 2, -7.061299,213.17163,-5.540358,4.72984, 100, 1799301),
(@CGUID+8, 1, 6.1883936, 230.93802, -5.540376, 100, 0, 0),
(@CGUID+8, 2, 6.8805857,213.50626,-5.540371,4.7298421, 100, 1799301),
(@CGUID+9, 1, 32.346626, 283.20956, -5.5604477, 100, 0, 0),
(@CGUID+9, 2, 26.896982,287.0706,-4.1127744, 100, 0, 0),
(@CGUID+9, 3, 20.110651,286.30273,-1.8328751, 100, 0, 0),
(@CGUID+9, 4, 16.271194,284.02432,-1.5828129,3.071779, 100, 1799301),
(@CGUID+10, 1, 32.74755, 292.83197, -5.5621696, 100, 0, 0),
(@CGUID+10, 2, 21.091858,289.26254,-1.8360193, 100, 0, 0),
(@CGUID+10, 3, 16.016445,291.94034,-1.5188626,3.071779, 100, 1799301),
(@CGUID+11, 1,  75.01243, 283.88235, -5.3920293, 100, 0, 0),
(@CGUID+11, 2,  47.614925,284.43405,-5.6762114,3.0717, 100, 1799301),
(@CGUID+12, 1,  75.30202, 292.3356, -5.3812394, 100, 0, 0),
(@CGUID+12, 2,  47.417965,291.92233,-5.6771345,3.0717, 100, 1799301),
(@CGUID+15, 1, 2.71023, 59.10882, -5.62977, 100, 0, 0),
(@CGUID+15,	2, 2.616398,46.717686,-5.612038,4.817108,100,1799301),
(@CGUID+16, 1, -6.33425, 59.407, -5.55881, 0.030197, 0, 0),
(@CGUID+16, 2, -5.080652,46.597015,-5.6218123,4.81710863, 100,1799301),
(@CGUID+17, 1, 0.660349, 104.14, -5.63461, 2.63602, 0, 0),
(@CGUID+17, 2, -0.022206, 89.449295, -5.6558495, 100, 0, 0),
(@CGUID+17, 3, 2.641394, 89.34601, -5.6321697, 4.81710863, 100,1799301),
(@CGUID+18, 1, -2.99842, 104.287, -5.62851, 0.514356, 0, 0),
(@CGUID+18, 2, -5.041232,89.27867,-5.672416,4.817108, 100,1799301),
(@CGUID+19, 1, -8.37349, 150.82703, -5.4570227, 100, 0, 0),
(@CGUID+19, 2, -2.929497,133.55092,-5.540361, 100, 0, 0),
(@CGUID+19, 3, -5.799148,131.35872,-5.540354,4.729842, 100,1799301),
(@CGUID+26, 1, -161.2056, 391.8802, -17.6449, 1.954769, 16000, 1799301),
(@CGUID+26, 2, -162.1803, 409.8343, -17.70864, 100, 0, 1799304),
(@CGUID+26, 3, -162.6438, 427.7587, -17.79374, 100, 60000, 1799302),
(@CGUID+27, 1, -166.6638, 391.7631, -17.61385, 1.32645, 16000, 1799301),
(@CGUID+27, 2, -171.44, 422.8947, -17.74458, 1.72701, 60000, 1799303),
(@CGUID+36, 1, 76.77335, 282.6367, -5.3302107, 100, 0, 0),
(@CGUID+36, 2, 48.324623, 287.81854, -5.6766315, 100, 100, 1840401),
(@CGUID+40, 1, 14.184935, 177.34564, -5.540413, 100, 0, 0),
(@CGUID+40, 2, 14.394636, 191.62259, -5.540397, 100, 0, 0),
(@CGUID+40, 3, 9.744885, 197.85094, -5.5403867, 100, 0, 0),
(@CGUID+40, 4, -0.7083383, 202.68777, -5.5403733, 100, 0, 0),
(@CGUID+40, 5, -0.863688, 242.40205, -5.575537, 100, 0, 0),
(@CGUID+41, 1, 48.18709, 287.5947, -5.6766033, 100, 0, 0),
(@CGUID+41, 2, 9.004453, 288.18857, 0.010088495, 100, 0, 0),
(@CGUID+41, 3, -2.241252, 288.31714, 1.0406969, 100, 0, 0),
(@CGUID+41, 4, -15.361143, 288.29004, -0.9933745, 100, 0, 0),
(@CGUID+42,1,-1.203372,40.81776,-5.697605, 100, 0, 0),
(@CGUID+42,2,-1.29136,76.94684,-5.6766257, 100, 0, 0),
(@CGUID+42,3,-0.755125,111.97571,-5.6210504, 100, 0, 0),
(@CGUID+43, 1,  -0.733345, 122.922, -5.54038, 0, 0, 0),
(@CGUID+43, 2, -0.681508, 156.79243, -5.5403776, 100, 0, 0),
(@CGUID+43, 3, -16.622828, 182.00102, -5.540346, 100, 0, 0),
(@CGUID+43, 4, -15.95655, 167.93321, -5.5403438, 100, 0, 0),
(@CGUID+43, 5, -0.7087244, 156.81229, -5.5403714, 100, 0, 0),
(@CGUID+44, 1, 17.342175, 193.04478, -5.5404058, 0.94247776, 18000, 0), -- waittime between 5 and 30 seconds
(@CGUID+44, 2, 13.118124, 198.47266, -5.5403895, 0.85521131, 18000, 0), -- waittime between 5 and 30 seconds
(@CGUID+46, 1, -19.617546, 196.94617, -5.540346, 1.361356, 18000, 0), -- waittime between 5 and 30 seconds
(@CGUID+46, 2, -10.832382, 198.47723, -5.540348, 100, 0, 0),
(@CGUID+46, 3, -7.085683, 202.04625, -5.5403624, 100, 0, 0),
(@CGUID+46, 4, -8.21974, 204.3309, -5.5403585, 3.5604715, 18000, 0), -- waittime between 5 and 30 seconds
(@CGUID+46, 5, -12.490674, 195.6114, -5.540347, 100, 0, 0),
(@CGUID+46, 6, -16.424341, 194.29588, -5.5403495, 100, 0, 0),
(@CGUID+48, 1, 2.213683, 163.03323, -5.5403795, 2.251474618911743164, 17000, 0), -- waittime between 5 and 30 seconds
(@CGUID+48, 2, -4.294355, 161.2607, -5.540364, 100, 0, 0),
(@CGUID+48, 3, -6.205455, 163.51398, -5.54036, 100, 0, 0),
(@CGUID+48, 4, -6.24241, 166.6921, -5.5403614, 100, 0, 0),
(@CGUID+48, 5, -6.24241, 166.6921, -5.5403614,1.780235767364501953, 18000, 0), -- waittime between 5 and 30 seconds
(@CGUID+48, 6, -3.464332, 161.02238, -5.540366, 100, 0, 0),
(@CGUID+48, 7, 0.992403, 160.6039, -5.5403786, 100, 0, 0),
(@CGUID+52, 1, 162.23, 452.538, -5.41697, 4.74775, 15000, 1842005),
(@CGUID+52, 2, 162.23, 452.538, -5.41697, 4.74775, 19000, 1842006),
(@CGUID+52, 3, 163.493, 446.524, -6.9092, 4.91817, 0, 0),
(@CGUID+52, 4, 163.268, 441.86, -6.86923, 4.5883, 0, 0),
(@CGUID+52, 5, 162.006, 437.507, -6.83356, 4.22937, 0, 0),
(@CGUID+52, 6, 156.922, 435.956, -6.77183, 3.43769, 8000, 1842004),
(@CGUID+52, 7, 156.922, 435.956, -6.77183, 3.43769, 8000, 1842001),
(@CGUID+52, 8, 161.566, 437.091, -6.82662, 0.239552, 0, 0),
(@CGUID+52, 9, 163.727, 441.472, -6.87038, 1.23622, 0, 0),
(@CGUID+52, 10, 163.606, 446.25, -6.90634, 1.55666, 0, 0),
(@CGUID+52, 11, 162.23, 452.538, -5.41697, 4.74775, 2000, 0),
(@CGUID+53, 1, 88.4563, 495.092, -5.38647, 5.83944, 15000, 1842002),
(@CGUID+53, 2, 88.4563, 495.092, -5.38647, 5.83944, 19000, 1842003),
(@CGUID+53, 3, 97.2095, 493.595, -6.78375, 6.13632, 0, 0),
(@CGUID+53, 4, 102.952, 491.174, -6.76313, 6.25021, 8000, 1842004),
(@CGUID+53, 5, 97.2095, 493.595, -6.78375, 6.13632, 0, 0),
(@CGUID+53, 6, 88.4563, 495.092, -5.38647, 5.83944, 4000, 0),
(@CGUID+61, 1, 164.783, 501.235, -2.07282, 0.239551, 25000, 0),
(@CGUID+61, 2, 158.254, 492.187, -4.47891, 4.28121, 0, 0),
(@CGUID+61, 3, 136.829, 470.648, -1.59932, 3.93877, 0, 0),
(@CGUID+61, 4, 121.211, 455.423, -4.88299, 3.87829, 15000, 1842101),
(@CGUID+61, 5, 134.158, 467.606, -1.69619, 0.751624, 0, 0),
(@CGUID+61, 6, 158.166, 491.949, -4.52846, 0.748482, 0, 0),
(@CGUID+64, 1, 153.194, 402.43, -5.3864, 1.09406, 21000, 0),
(@CGUID+64, 2, 152.247, 399.99, -5.3864, 4.42258, 0, 0),
(@CGUID+64, 3, 153.166, 393.779, -5.3864, 4.85926, 0, 0),
(@CGUID+64, 4, 157.038, 387.449, -5.3864, 5.26139, 0, 0),
(@CGUID+64, 5, 160.205, 378.829, -5.3864, 4.99357, 0, 0),
(@CGUID+64, 6, 159.918, 377.573, -5.3864, 4.48777, 26000, 0),
(@CGUID+64, 7, 162.102, 381.613, -5.3864, 1.03202, 0, 0),
(@CGUID+64, 8, 161.551, 390.539, -5.3864, 1.60222, 0, 0),
(@CGUID+64, 9, 155.869, 395.531, -5.3864, 2.50621, 0, 0),
(@CGUID+64, 10, 151.97, 399.905, -5.3864, 2.29887, 0, 0),
(@CGUID+66, 1, 159.904, 402.942, -5.3864, 2.17163, 26000, 0),
(@CGUID+66, 2, 161.38, 401.344, -5.3864, 5.50722, 0, 0),
(@CGUID+66, 3, 168.674, 402.822, -5.3864, 6.18816, 0, 0),
(@CGUID+66, 4, 177.992, 404.019, -5.3864, 6.28162, 0, 0),
(@CGUID+66, 5, 182.163, 403.591, -5.3864, 5.64702, 0, 0),
(@CGUID+66, 6, 182.889, 396.989, -5.3864, 4.91896, 0, 0),
(@CGUID+66, 7, 181.288, 388.73, -5.3864, 4.46971, 0, 0),
(@CGUID+66, 8, 188.878, 381.951, -5.43289, 5.66351, 0, 0),
(@CGUID+66, 9, 191.392, 382.601, -5.44611, 0.146877, 0, 0),
(@CGUID+66, 10, 192.458, 383.717, -5.44123, 0.775196, 31000, 0),
(@CGUID+66, 11, 189.689, 381.902, -5.43911, 3.72201, 0, 0),
(@CGUID+66, 12, 182.847, 387.644, -5.38726, 2.44338, 0, 0),
(@CGUID+66, 13, 182.062, 400.955, -5.38726, 1.62971, 0, 0),
(@CGUID+66, 14, 178.353, 404.378, -5.38726, 2.39626, 0, 0),
(@CGUID+66, 15, 166.276, 401.489, -5.38726, 3.37644, 0, 0),
(@CGUID+66, 16, 161.438, 401.543, -5.38726, 3.16752, 0, 0),
(@CGUID+68, 1, 174.2612, 496.2471, -2.47682, 2.216568, 4000, 1842201),
(@CGUID+68, 2, 174.2612, 496.2471, -2.47682, 2.216568, 6000, 1842203),
(@CGUID+68, 3, 174.2612, 496.2471, -2.47682, 2.216568, 55000, 1842202),
(@CGUID+69, 1, 161.8249, 508.441, -2.508824, 5.480334, 25000, 0),
(@CGUID+69, 2, 161.8249, 508.441, -2.508824, 5.480334, 4000, 1842201),
(@CGUID+69, 3, 161.8249, 508.441, -2.508824, 5.480334, 6000, 1842203),
(@CGUID+69, 4, 161.8249, 508.441, -2.508824, 5.480334, 55000, 1842202),
(@CGUID+91, 1, 20.1188, 589.6809, -17.7396, 1.58825, 32000, 1950503), -- 1 Adjustment due to CallForHelp on Aggro: points 1,2,6 -> 20.1188, 589.6809, -17.7396 / 20.11373, 588.0859, -17.75986
(@CGUID+91, 2, 20.1188, 589.6809, -17.7396, 1.46975, 4000, 1950506), -- 2
(@CGUID+91, 3, 19.3148, 583.8, -17.8192, 4.30189, 0, 0),
(@CGUID+91, 4, 18.6946, 574.077, -17.9568, 4.89958, 6000, 1950504),
(@CGUID+91, 5, 19.3882, 583.435, -17.8253, 1.66296, 0, 0),
(@CGUID+91, 6, 20.1188, 589.6809, -17.7396, 1.46975, 30000, 0), -- 6
(@CGUID+92, 1, 1.54828, 505.5115, -5.231867, 2.286381, 10000, 1950501),
(@CGUID+92, 2, 1.54828, 505.5115, -5.231867, 2.286381, 85000, 1950506),
(@CGUID+93, 1, -4.288446, 505.2145, -5.225764, 0.8203048, 14000, 1950501),
(@CGUID+93, 2, -4.288446, 505.2145, -5.225764, 0.8203048, 11000, 1950502),
(@CGUID+93, 3, -4.288446, 505.2145, -5.225764, 0.8203048, 70000, 1950505),
(@CGUID+94, 1, -20.15363, 505.0298, -5.22962, 1.27409, 10000, 1950501),
(@CGUID+94, 2, -20.15363, 505.0298, -5.22962, 1.27409, 85000, 1950506),
(@CGUID+95, 1, -15.63476, 505.6329, -5.222799, 2.478368, 10000, 1950501),
(@CGUID+95, 2, -15.63476, 505.6329, -5.222799, 2.478368, 85000, 1950506),
(@CGUID+96, 1, -11.5331, 590.832, -17.7077, 1.39957, 32000, 1950503),
(@CGUID+96, 2, -11.5331, 590.832, -17.7077, 1.39957, 4000, 1950506),
(@CGUID+96, 3, -3.60459, 580.712, -17.8252, 5.37684, 0, 0),
(@CGUID+96, 4, -5.46937, 575.998, -17.8898, 4.46421, 6000, 1950504),
(@CGUID+96, 5, -3.59916, 581.005, -17.8215, 1.18831, 0, 0),
(@CGUID+96, 6, -11.5331, 590.832, -17.7077, 1.39957, 30000, 0),
(@CGUID+100, 1, -157.634, 411.701, -17.6124, 1.27409, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+101, 1, -177.217, 408.964, -17.6069, 2.07694, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+102, 1, -150.54, 400.302, -17.7579, 2.75762, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+103, 1, -172.605, 403.925, -17.6111, 4.74729, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+104, 1, -173.274, 390.129, -17.6073, 3.50811, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+105, 1, -177.095, 378.248, -17.6081, 5.18363, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+106, 1, -172.32, 380.316, -17.6107, 0.890118, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+107, 1, -166.857, 398.471, -17.6142, 4.2237, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+108, 1, -154.356, 386.376, -17.7216, 4.43314, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+109, 1, -179.922, 401.107, -17.6042, 0.488692, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+110, 1, -164.275, 375.683, -17.6168, 2.75762, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+111, 1, -152.4, 372.664, -17.6055, 0.331613, 1000, 1950701), -- Sunseeker Gene-Splicer Corpse
(@CGUID+121, 1, -14.2594, 491.108, -5.40935, 4.77539, 0, 0),
(@CGUID+121, 2, -8.55427, 483.309, -5.47117, 5.42413, 0, 0),
(@CGUID+121, 3, 2.78195, 481.305, -5.58427, 0.001745, 0, 0),
(@CGUID+121, 4, -8.53638, 482.843, -5.4743, 3.0381, 0, 0),
(@CGUID+121, 5, -15.5274, 491.044, -5.41147, 2.29275, 0, 0),
(@CGUID+121, 6, -17.9647, 501.451, -5.33586, 1.88906, 0, 0),
(@CGUID+122, 1, -4.02644, 494.172, -5.3942, 2.98076, 0, 0),
(@CGUID+122, 2, -9.07605, 497.28, -5.36563, 2.54251, 0, 0),
(@CGUID+122, 3, -13.1972, 502.904, -5.32566, 2.20321, 0, 0),
(@CGUID+122, 4, -11.7771, 511.38, -5.33284, 1.51992, 0, 0),
(@CGUID+122, 5, -12.8163, 503.922, -5.31762, 4.51621, 0, 0),
(@CGUID+122, 6, -8.46771, 497.311, -5.36527, 5.52231, 0, 0),
(@CGUID+122, 7, -3.33881, 493.658, -5.39807, 5.61813, 0, 0),
(@CGUID+122, 8, 6.10934, 493.845, -5.4377, 0.01981, 0, 0),
(@CGUID+122, 9, 15.9986, 496.659, -5.46175, 0.230297, 0, 0),
(@CGUID+122, 10, 6.36544, 494.456, -5.43269, 3.26036, 0, 0),
(@CGUID+127, 1, -23.5901, 562.602, -18.0989, 2.55595, 0, 0),
(@CGUID+127, 2, -30.229, 570.418, -17.9359, 2.33603, 0, 0),
(@CGUID+127, 3, -23.8211, 563.044, -18.0996, 5.40144, 0, 0),
(@CGUID+127, 4, -16.2925, 559.634, -18.1095, 5.87661, 0, 0),
(@CGUID+127, 5, 31.0858, 559.317, -18.1989, 6.12087, 0, 0),
(@CGUID+127, 6, 40.6974, 562.026, -17.609, 0.297927, 0, 0),
(@CGUID+127, 7, 31.3911, 559.043, -18.2044, 3.19369, 0, 0),
(@CGUID+127, 8, -15.7247, 559.729, -18.1073, 3.20704, 0, 0),
(@CGUID+133, 1, -11.1495, 518.438, -5.74976, 6.22769, 0, 0),
(@CGUID+133, 2, -4.07179, 518.313, -5.74221, 0.133783, 0, 0),
(@CGUID+133, 3, 6.70262, 522.214, -8.08245, 0.347411, 0, 0),
(@CGUID+133, 4, 17.3582, 529.537, -12.428, 0.643507, 0, 0),
(@CGUID+133, 5, 20.4706, 535.661, -15.3494, 1.08883, 0, 0),
(@CGUID+133, 6, 20.9221, 543.053, -18.4064, 1.5098, 0, 0),
(@CGUID+133, 7, 16.8279, 549.014, -18.3111, 2.17268, 0, 0),
(@CGUID+133, 8, 9.84162, 550.811, -18.2149, 2.72246, 0, 0),
(@CGUID+133, 9, -8.74968, 551.02, -18.2178, 2.9298, 0, 0),
(@CGUID+133, 10, -26.358, 551.434, -18.2145, 3.09945, 0, 0),
(@CGUID+133, 11, -36.5401, 550.107, -18.263, 3.27302, 0, 0),
(@CGUID+133, 12, -42.5133, 546.936, -18.3103, 3.59661, 0, 0),
(@CGUID+133, 13, -43.7557, 542.668, -18.4038, 4.42913, 0, 0),
(@CGUID+133, 14, -39.4576, 531.936, -14.0649, 5.13442, 0, 0),
(@CGUID+133, 15, -35.2496, 526.307, -10.4672, 5.35433, 0, 0),
(@CGUID+133, 16, -29.7596, 522.783, -8.69191, 5.71247, 0, 0),
(@CGUID+133, 17, -23.0708, 519.459, -6.90383, 5.82164, 0, 0),
(@CGUID+133, 18, -18.2628, 518.513, -5.97764, 6.24732, 0, 0);

INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(17975, 0, 1, 116.584, 455.602, -4.95288, 2.61773, 0, 0),
(17975, 0, 2, 115.153, 455.568, -4.89346, 3.33087, 10000, 1069),
(17975, 0, 3, 115.153, 455.568, -4.89346, 3.33087, 10000, 1797501),
(17975, 0, 4, 116.623, 455.478, -4.94902, 6.17716, 0, 0),
(17975, 0, 5, 120.628, 451.036, -4.92864, 5.62188, 0, 0),
(17975, 0, 6, 120.543, 449.982, -4.88372, 4.41551, 10000, 1069),
(17975, 0, 7, 120.543, 449.982, -4.88372, 4.41551, 10000, 1797501),
(17975, 0, 8, 120.796, 450.93, -4.93171, 1.61949, 0, 0),
-- Commander Sarannis
(17976, 0, 1, 125.72935,321.18497,-3.6359386, 100, 0, 0),
(17976, 0, 2, 151.0752,295.8979,-4.574456, 100, 1000, 1797601),
-- Bloodwarder Steward after Intro
(18404, 1, 1, 50.01569,292.96957,-5.64004, 100, 1000, 0),
(18404, 1, 2, 50.185688,282.52002,-5.6333885, 100, 1000, 0),
-- Bloodfalcon RP Waypoints 
-- cguid +30
(18155, 1, 1, -4.634653, 291.63293, 0.8281061, 100, 0, 0),
(18155, 1, 2, -4.589425, 284.45688, 0.84829205, 100, 0, 0),
(18155, 1, 3, -23.234816, 285.8802, -1.8473233, 100, 0, 0),
(18155, 1, 4, -29.06995, 287.01328, -1.8473243, 100, 1000, 1815501),
-- cguid +31
(18155, 2, 1, -32.633892, 313.6926, -2.9892454, 100, 2000, 0),
(18155, 2, 2, -36.44413, 294.66745, -1.847323, 100, 0, 0),
(18155, 2, 3, -42.860966, 291.474, -1.8473232, 100, 0, 0),
(18155, 2, 4, -36.010468, 279.61514, -1.8473252, 100, 0, 0),
(18155, 2, 5, -29.392775, 291.65842, -1.8473235, 100, 0, 0),
(18155, 2, 6, -36.823017, 294.92844, -1.8473228, 100, 1000, 1815501),
-- cguid+32
(18155, 3, 1, -30.482723, 259.80405, -3.4442956, 100, 2000, 0),
(18155, 3, 2, -36.03879, 280.80167, -1.8473251, 100, 0, 0),
(18155, 3, 3, -30.454828, 284.31418, -1.8473247, 100, 0, 0),
(18155, 3, 4, -36.54842, 295.91965, -1.8473227, 100, 0, 0),
(18155, 3, 5, -43.856365, 291.876, -1.8473231, 100, 0, 0),
(18155, 3, 6, -36.486675, 280.83936, -1.8473251, 100, 1000, 1815501),
-- cguid +34
(18155, 4, 1, 111.71642, 300.11435, -5.3999314, 100, 0, 0),
(18155, 4, 2, 120.55673, 289.947, -5.4101934, 100, 0, 0),
(18155, 4, 3, 124.90892, 284.409, -5.414986, 100, 0, 0),
(18155, 4, 4, 114.74198, 276.31375, -6.998992, 100, 0, 0),
(18155, 4, 5, 109.52783, 279.67487, -6.9367213, 100, 1000, 1815501),
-- cguid +35
(18155, 5, 1, 85.99113, 289.54016, -5.40623, 100, 0, 0),
(18155, 5, 2, 77.20944, 279.08054, -5.4442782, 100, 0, 0),
(18155, 5, 3, 84.07146, 264.81665, -5.4246054, 100, 0, 0),
(18155, 5, 4, 92.041145, 267.70798, -5.393035, 100, 0, 0),
(18155, 5, 5, 100.84679, 280.37253, -6.887546, 100, 1000, 1815501);

INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+44, 0, 0, 0, 69, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+45, 0, 8, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+46, 0, 0, 0, 69, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+47, 0, 8, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+48, 0, 0, 0, 69, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+49, 0, 0, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+50, 0, 0, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+51, 0, 0, 0, 69, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+54, 0, 0, 0, 69, 0, NULL), -- Sunseeker Researcher
(@CGUID+55, 0, 0, 1, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+56, 0, 0, 1, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+57, 0, 0, 1, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+58, 0, 0, 1, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+59, 0, 0, 0, 69, 0, NULL), -- Sunseeker Researcher
(@CGUID+60, 0, 0, 1, 69, 0, NULL), -- Sunseeker Researcher
(@CGUID+61, 0, 0, 1, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+62, 0, 0, 1, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+63, 0, 8, 0, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+65, 0, 8, 0, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+67, 0, 8, 0, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+68, 0, 0, 1, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+69, 0, 0, 1, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+86, 0, 0, 0, 69, 0, NULL), -- Sunseeker Chemist
(@CGUID+87, 0, 0, 1, 69, 0, NULL), -- Sunseeker Chemist
(@CGUID+88, 0, 0, 1, 69, 0, NULL), -- Sunseeker Chemist
(@CGUID+89, 0, 0, 1, 69, 0, NULL), -- Sunseeker Chemist
(@CGUID+90, 0, 0, 1, 0, 0, NULL), -- Sunseeker Chemist
(@CGUID+97, 0, 0, 0, 69, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+98, 0, 0, 0, 69, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+99, 0, 0, 0, 69, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+100, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+101, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+102, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+103, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+104, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+105, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+106, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+107, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+108, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+109, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+110, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+111, 0, 7, 1, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+112, 0, 0, 0, 69, 0, NULL), -- Sunseeker Herbalist
(@CGUID+113, 0, 0, 0, 69, 0, NULL), -- Sunseeker Herbalist
(@CGUID+116, 0, 0, 0, 69, 0, NULL), -- Sunseeker Harvester
(@CGUID+117, 0, 0, 0, 69, 0, NULL), -- Sunseeker Harvester
(@CGUID+118, 0, 0, 0, 69, 0, NULL), -- Sunseeker Harvester
(@CGUID+119, 0, 0, 0, 69, 0, NULL), -- Sunseeker Harvester
(@CGUID+179, 0, 8, 0, 0, 0, NULL); -- Bloodwarder Mender

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(17993, 0, 0, 0, 0, 0, NULL), -- Bloodwarder Protector
(17976, 0, 0, 1, 0, 0, '19818 34792'), -- Commander Sarannis
(19843, 0, 0, 1, 0, 0, '30831'); -- Nethervine Trickster

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@CGUID+63, @CGUID+54, 1155), -- Sunseeker Botanist -> Sunseeker Researcher
(@CGUID+86, @CGUID+54, 1155), -- Sunseeker Chemist -> Sunseeker Researcher
(@CGUID+144, @CGUID+54, 1155), -- Greater Frayer -> Sunseeker Researcher
(@CGUID+145, @CGUID+64, 1679), -- Greater Frayer -> Sunseeker Botanist
(@CGUID+57, @CGUID+89, 1155), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+58, @CGUID+89, 1155), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+67, @CGUID+89, 1155), -- Sunseeker Botanist -> Sunseeker Chemist
(@CGUID+148, @CGUID+89, 1155), -- Greater Frayer -> Sunseeker Chemist
(@CGUID+147, @CGUID+66, 1679), -- Greater Frayer -> Sunseeker Botanist
(@CGUID+56, @CGUID+87, 1155), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+62, @CGUID+87, 1155), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+55, @CGUID+88, 1155), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+59, @CGUID+88, 1155), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+65, @CGUID+88, 1155), -- Sunseeker Botanist -> Sunseeker Chemist
(@CGUID+146, @CGUID+88, 1155), -- Greater Frayer -> Sunseeker Chemist
(@CGUID+70, @CGUID+52, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+71, @CGUID+52, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+72, @CGUID+52, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+73, @CGUID+52, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+74, @CGUID+52, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+75, @CGUID+52, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+76, @CGUID+52, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+77, @CGUID+52, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+60, @CGUID+68, 1155), -- Sunseeker Researcher -> Sunseeker Botanist
(@CGUID+149, @CGUID+68, 1155), -- Greater Frayer -> Sunseeker Botanist
(@CGUID+69, @CGUID+90, 1155), -- Sunseeker Botanist -> Sunseeker Chemist
(@CGUID+150, @CGUID+90, 1155), -- Greater Frayer -> Sunseeker Chemist
(@CGUID+78, @CGUID+53, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+79, @CGUID+53, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+80, @CGUID+53, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+81, @CGUID+53, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+82, @CGUID+53, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+83, @CGUID+53, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+84, @CGUID+53, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+85, @CGUID+53, 1155), -- Frayer -> Sunseeker Geomancer
(@CGUID+92, @CGUID+93, 1155), -- Sunseeker Channeler -> Sunseeker Channeler
(@CGUID+94, @CGUID+95, 1155), -- Sunseeker Channeler -> Sunseeker Channeler
(@CGUID+114, @CGUID+120, 1155), -- Sunseeker Herbalist -> Sunseeker Harvester
(@CGUID+115, @CGUID+120, 1155), -- Sunseeker Herbalist -> Sunseeker Harvester
(@CGUID+128, @CGUID+133, 1679), -- Nethervine Inciter -> Nethervine Reaper
(@CGUID+126, @CGUID+125, 1155), -- Nethervine Inciter -> Nethervine Inciter
(@CGUID+131, @CGUID+125, 1155), -- Nethervine Reaper -> Nethervine Inciter
(@CGUID+132, @CGUID+125, 1155), -- Nethervine Reaper -> Nethervine Inciter
(@CGUID+124, @CGUID+123, 1155), -- Nethervine Inciter -> Nethervine Inciter
(@CGUID+129, @CGUID+123, 1155), -- Nethervine Reaper -> Nethervine Inciter
(@CGUID+130, @CGUID+123, 1155), -- Nethervine Reaper -> Nethervine Inciter
(@CGUID+98, @CGUID+117, 1155), -- Sunseeker Gene-Splicer -> Sunseeker Harvester
(@CGUID+118, @CGUID+117, 1155), -- Sunseeker Harvester -> Sunseeker Harvester
(@CGUID+153, @CGUID+117, 1155), -- Mutate Fleshlasher -> Sunseeker Harvester
(@CGUID+154, @CGUID+117, 1155), -- Mutate Fleshlasher -> Sunseeker Harvester
(@CGUID+97, @CGUID+151, 1155), -- Sunseeker Gene-Splicer -> Mutate Fleshlasher
(@CGUID+112, @CGUID+151, 1155), -- Sunseeker Herbalist -> Mutate Fleshlasher
(@CGUID+116, @CGUID+151, 1155), -- Sunseeker Harvester -> Mutate Fleshlasher
(@CGUID+152, @CGUID+151, 1155), -- Mutate Fleshlasher -> Mutate Fleshlasher
(@CGUID+99, @CGUID+155, 1155), -- Sunseeker Gene-Splicer -> Mutate Fleshlasher
(@CGUID+113, @CGUID+155, 1155), -- Sunseeker Herbalist -> Mutate Fleshlasher
(@CGUID+119, @CGUID+155, 1155), -- Sunseeker Harvester -> Mutate Fleshlasher
(@CGUID+156, @CGUID+155, 1155), -- Mutate Fleshlasher -> Mutate Fleshlasher
(@CGUID+13, @CGUID+14, 1155), -- Bloodwarder Protector -> Bloodwarder Protector
(@CGUID+134, @CGUID+183, 1155), -- Mutate Fear-Shrieker -> Mutate Horror
(@CGUID+135, @CGUID+183, 1155), -- Mutate Fear-Shrieker -> Mutate Horror
(@CGUID+184, @CGUID+183, 1155), -- Mutate Horror -> Mutate Horror
(@CGUID+137, @CGUID+136, 1155), -- Mutate Fear-Shrieker -> Mutate Fear-Shrieker
(@CGUID+185, @CGUID+136, 1155), -- Mutate Horror -> Mutate Fear-Shrieker
(@CGUID+186, @CGUID+136, 1155), -- Mutate Horror -> Mutate Fear-Shrieker
(@CGUID+138, @CGUID+187, 1155), -- Mutate Fear-Shrieker -> Mutate Horror
(@CGUID+139, @CGUID+187, 1155), -- Mutate Fear-Shrieker -> Mutate Horror
(@CGUID+188, @CGUID+187, 1155), -- Mutate Horror -> Mutate Horror
(@CGUID+157, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+159, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+160, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+161, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+162, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+163, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+164, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+165, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+166, @CGUID+158, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+167, @CGUID+175, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+168, @CGUID+175, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+169, @CGUID+175, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+170, @CGUID+175, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+171, @CGUID+175, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+172, @CGUID+175, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+173, @CGUID+175, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+174, @CGUID+175, 1155), -- Frayer Wildling -> Frayer Wildling
(@CGUID+176, @CGUID+175, 1155); -- Frayer Wildling -> Frayer Wildling

-- REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CGUID+54, 18421), (@CGUID+54, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+55, 18421), (@CGUID+55, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+56, 18421), (@CGUID+56, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+57, 18421), (@CGUID+57, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+58, 18421), (@CGUID+58, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+59, 18421), (@CGUID+59, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+62, 18421), (@CGUID+62, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+86, 18421), (@CGUID+86, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+87, 18421), (@CGUID+87, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+88, 18421), (@CGUID+88, 19486), -- Sunseeker Researcher, Sunseeker Chemist
(@CGUID+89, 18421), (@CGUID+89, 19486); -- Sunseeker Researcher, Sunseeker Chemist

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 17975, 553, 3, 118.742, 452.274, -4.89607, 0.796403, 86400, 86400, 0, 2), -- High Botanist Freywinn
(@CGUID+2, 17976, 553, 3, 125.72935,321.18497,-3.6359386, 5.47973, 86400, 86400, 0, 2), -- Commander Sarannis
(@CGUID+3, 17977, 553, 3, 63.84069, 391.8824, -27.89385, 3.211406, 86400, 86400, 0, 0), -- Warp Splinter
(@CGUID+4, 17978, 553, 3, 4.9486, 596.5779, -15.07834, 4.694936, 86400, 86400, 0, 0), -- Thorngrin the Tender
(@CGUID+5, 17980, 553, 3, -204.1253, 391.249, -11.19434, 0.01745329, 86400, 86400, 0, 0), -- Laj
(@CGUID+6, 17993, 553, 3, 6.788073, 151.4322, -5.4570436, 0.19198, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+7, 17993, 553, 3, -7.523286, 231.72736, -5.540363, 6.24230, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+8, 17993, 553, 3, 6.1883936, 230.93802, -5.540376, 3.1466, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+9, 17993, 553, 3, 32.346626, 283.20956, -5.5604477, 1.8325957, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+10, 17993, 553, 3, 32.74755, 292.83197, -5.5621696, 5.323254, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+11, 17993, 553, 3, 75.01243, 283.88235, -5.3920293, 1.762782, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+12, 17993, 553, 3, 75.30202, 292.3356, -5.3812394, 4.95673513, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+13, 17993, 553, 3, -164.9891, 473.0342, -17.74157, 1.570796, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+14, 17993, 553, 3, -157.6686, 471.7192, -17.74158, 1.762783, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+15, 17993, 553, 3, 2.71023, 59.10882, -5.62977, 3.12338, 7200, 7200, 0, 2), -- Bloodwarder Protector
(@CGUID+16, 17993, 553, 3, -6.33425, 59.407, -5.55881, 0.030197, 7200, 7200, 0, 2), -- Bloodwarder Protector
(@CGUID+17, 17993, 553, 3, 0.660349, 104.14, -5.63461, 2.63602, 7200, 7200, 0, 2), -- Bloodwarder Protector
(@CGUID+18, 17993, 553, 3, -2.99842, 104.287, -5.62851, 0.514356, 7200, 7200, 0, 2), -- Bloodwarder Protector
(@CGUID+19, 17993, 553, 3, -8.37349, 150.82703, -5.4570227, 0.191986, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+20, 17993, 553, 3, 151.661, 281.789, -4.33474, 1.61228, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+21, 17993, 553, 3, 153.757, 281.744, -4.00861, 2.17694, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+22, 17993, 553, 3, 165.165, 295.535, -4.37166, 3.11024, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+23, 17993, 553, 3, 164.969, 292.953, -4.00805, 2.37327, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+24, 17993, 553, 3, 161.403, 285.599, -3.09818, 1.74291, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+25, 17993, 553, 3, 163.108, 287.899, -3.3132, 2.55293, 7200, 7200, 0, 0), -- Bloodwarder Protector
(@CGUID+26, 17993, 553, 3, -161.2056, 391.8802, -17.6449, 1.954769, 7200, 7200, 0, 2), -- Bloodwarder Protector
(@CGUID+27, 17993, 553, 3, -166.6638, 391.7631, -17.61385, 1.32645, 7200, 7200, 0, 2), -- Bloodwarder Protector
(@CGUID+28, 17994, 553, 3, -35.5817, 287.674, -1.76399, 5.654867, 7200, 7200, 0, 0), -- Bloodwarder Falconer
(@CGUID+29, 17994, 553, 3, 102.0354, 286.8515, -6.792948, 0.8377581, 7200, 7200, 2, 1), -- Bloodwarder Falconer
(@CGUID+30, 18155, 553, 3, -29.06995,287.01328,-1.8473243, 0.007071402, 7200, 7200, 3, 1), -- Bloodfalcon
(@CGUID+31, 18155, 553, 3, -36.823017,294.92844,-1.8473228, 3.965074, 7200, 7200, 3, 1), -- Bloodfalcon
(@CGUID+32, 18155, 553, 3, -36.486675,280.83936,-1.8473251, 4.205199, 7200, 7200, 3, 1), -- Bloodfalcon
(@CGUID+33, 18155, 553, 3, 99.73528, 294.2418, -6.621962, 5.114256, 7200, 7200, 3, 1), -- Bloodfalcon
(@CGUID+34, 18155, 553, 3, 109.52783, 279.67487, -6.9367213, 2.450218, 7200, 7200, 3, 1), -- Bloodfalcon
(@CGUID+35, 18155, 553, 3, 100.84679,280.37253,-6.887546, 1.894372, 7200, 7200, 3, 1), -- Bloodfalcon
(@CGUID+36, 18404, 553, 3, 76.77335, 282.6367, -5.3302107, 1.815142, 7200, 7200, 0, 0), -- Bloodwarder Steward
(@CGUID+37, 18404, 553, 3, 149.565, 281.787, -4.65385, 1.01615, 7200, 7200, 0, 0), -- Bloodwarder Steward
(@CGUID+38, 18404, 553, 3, 165.194, 298.208, -4.77445, 3.85272, 7200, 7200, 0, 0), -- Bloodwarder Steward
(@CGUID+39, 18404, 553, 3, 159.136, 283.813, -3.27211, 1.29749, 7200, 7200, 0, 0), -- Bloodwarder Steward
(@CGUID+40, 18405, 553, 3, 14.3946, 191.623, -5.5404, 1.55611, 7200, 7200, 0, 4), -- Tempest-Forge Peacekeeper
(@CGUID+41, 18405, 553, 3, 9.004453, 288.18857, 0.010088495, 3.13537, 7200, 7200, 0, 4), -- Tempest-Forge Peacekeeper
(@CGUID+42, 18405, 553, 3, -0.891327, 103.078, -5.69279, 4.69708, 7200, 7200, 0, 2), -- Tempest-Forge Peacekeeper
(@CGUID+43, 18405, 553, 3, -0.733345, 122.922, -5.54038, 4.71166, 7200, 7200, 0, 2), -- Tempest-Forge Peacekeeper
(@CGUID+44, 18419, 553, 3, 17.342175,193.04478,-5.5404058,0.942477762699127197, 7200, 7200, 0, 2), -- Bloodwarder Greenkeeper
(@CGUID+45, 18419, 553, 3, 15.8812, 195.363, -5.45708, 0.244346, 7200, 7200, 0, 0), -- Bloodwarder Greenkeeper
(@CGUID+46, 18419, 553, 3, -19.617546,196.94617,-5.540346,1.361356854438781738, 7200, 7200, 0, 2), -- Bloodwarder Greenkeeper
(@CGUID+47, 18419, 553, 3, -14.2483, 197.646, -5.45702, 2.49582, 7200, 7200, 0, 0), -- Bloodwarder Greenkeeper
(@CGUID+48, 18419, 553, 3, 2.213683,163.03323,-5.5403795,2.251474618911743164, 7200, 7200, 0, 2), -- Bloodwarder Greenkeeper
(@CGUID+49, 18419, 553, 3, 3.13933, 253.476, -5.3924, 3.14159, 7200, 7200, 0, 0), -- Bloodwarder Greenkeeper
(@CGUID+50, 18419, 553, 3, -4.45333, 252.871, -5.39659, 0.0698132, 7200, 7200, 0, 0), -- Bloodwarder Greenkeeper
(@CGUID+51, 18419, 553, 3,-3.43691, 163.531, -5.45704, 1.15192, 7200, 7200, 0, 0), -- Bloodwarder Greenkeeper
(@CGUID+52, 18420, 553, 3, 162.23, 452.538, -5.41697, 4.74775, 7200, 7200, 0, 2), -- Sunseeker Geomancer
(@CGUID+53, 18420, 553, 3, 88.4563, 495.092, -5.38647, 5.83944, 7200, 7200, 0, 2), -- Sunseeker Geomancer
(@CGUID+54, 0, 553, 3, 152.061, 369.7167, -5.303072, 0.7853982, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+55, 0, 553, 3, 158.6152, 411.4069, -5.303119, 3.787364, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+56, 0, 553, 3, 176.3798, 392.6798, -5.303068, 3.769911, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+57, 0, 553, 3, 197.5445, 377.9596, -5.40067, 5.637414, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+58, 0, 553, 3, 199.5832, 372.1122, -5.435476, 0.6632251, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+59, 0, 553, 3, 152.883, 411.7469, -5.303121, 5.375614, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+60, 18421, 553, 3, 170.1024, 499.2883, -2.201025, 1.291544, 7200, 7200, 0, 0), -- Sunseeker Researcher
(@CGUID+61, 18421, 553, 3, 164.783, 501.235, -2.07282, 0.239551, 7200, 7200, 0, 2), -- Sunseeker Researcher
(@CGUID+62, 0, 553, 3, 175.8427, 387.1663, -5.303061, 2.234021, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+63, 18422, 553, 3, 158.9493, 369.8913, -5.303071, 0.4712389, 7200, 7200, 0, 0), -- Sunseeker Botanist
(@CGUID+64, 18422, 553, 3, 152.724, 401.763, -5.38639, 1.10902, 7200, 7200, 0, 2), -- Sunseeker Botanist
(@CGUID+65, 18422, 553, 3, 161.1868, 408.9511, -5.303116, 6.265732, 7200, 7200, 0, 0), -- Sunseeker Botanist
(@CGUID+66, 18422, 553, 3, 159.899, 402.71, -5.38639, 2.16378, 7200, 7200, 0, 2), -- Sunseeker Botanist
(@CGUID+67, 18422, 553, 3, 194.0215, 381.9612, -5.371202, 5.166174, 7200, 7200, 0, 0), -- Sunseeker Botanist
(@CGUID+68, 18422, 553, 3, 174.2612, 496.2471, -2.47682, 2.216568, 7200, 7200, 0, 2), -- Sunseeker Botanist
(@CGUID+69, 18422, 553, 3, 161.8249, 508.441, -2.508824, 5.480334, 7200, 7200, 0, 2), -- Sunseeker Botanist
(@CGUID+70, 18587, 553, 3, 168.887, 442.034, -6.92318, 3.42043, 7200, 7200, 3, 1), -- Frayer
(@CGUID+71, 18587, 553, 3, 171.384, 437.23, -6.93856, 4.57889, 7200, 7200, 3, 1), -- Frayer
(@CGUID+72, 18587, 553, 3, 165.965, 436.164, -6.87502, 3.31047, 7200, 7200, 3, 1), -- Frayer
(@CGUID+73, 18587, 553, 3, 162.939, 433.365, -6.83591, 1.92972, 7200, 7200, 3, 1), -- Frayer
(@CGUID+74, 18587, 553, 3, 160.993, 438.481, -6.82266, 1.33912, 7200, 7200, 3, 1), -- Frayer
(@CGUID+75, 18587, 553, 3, 154.784, 437.83, -6.75847, 3.11804, 7200, 7200, 3, 1), -- Frayer
(@CGUID+76, 18587, 553, 3, 152.573, 431.55, -6.71444, 4.02518, 7200, 7200, 3, 1), -- Frayer
(@CGUID+77, 18587, 553, 3, 148.663, 437.22, -6.69541, 0.616554, 7200, 7200, 3, 1), -- Frayer
(@CGUID+78, 18587, 553, 3, 106.105, 497.828, -6.85461, 3.17223, 7200, 7200, 3, 1), -- Frayer
(@CGUID+79, 18587, 553, 3, 106.341, 502.968, -6.91221, 5.29123, 7200, 7200, 3, 1), -- Frayer
(@CGUID+80, 18587, 553, 3, 103.268, 494.14, -6.80064, 3.66938, 7200, 7200, 0, 0), -- Frayer
(@CGUID+81, 18587, 553, 3, 107.35, 493.805, -6.82242, 3.66938, 7200, 7200, 3, 1), -- Frayer
(@CGUID+82, 18587, 553, 3, 102.983, 485.073, -6.70173, 3.69687, 7200, 7200, 3, 1), -- Frayer
(@CGUID+83, 18587, 553, 3, 99.0343, 483.894, -6.67042, 3.69687, 7200, 7200, 3, 1), -- Frayer
(@CGUID+84, 18587, 553, 3, 103.663, 480.451, -6.65843, 3.69687, 7200, 7200, 3, 1), -- Frayer
(@CGUID+85, 18587, 553, 3, 101.155, 490.86, -6.75729, 3.69687, 7200, 7200, 3, 1), -- Frayer
(@CGUID+86, 0, 553, 3, 152.3964, 375.2624, -5.303071, 5.427974, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+87, 0, 553, 3, 170.202, 387.4484, -5.303062, 0.541052, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+88, 0, 553, 3, 152.3955, 406.0444, -5.303119, 0.8552113, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+89, 0, 553, 3, 198.1311, 373.6621, -5.423732, 0.4712389, 7200, 7200, 0, 0), -- creature_spawn_entry
(@CGUID+90, 19486, 553, 3, 165.4046, 504.4181, -2.208594, 0.1047198, 7200, 7200, 0, 0), -- Sunseeker Chemist
(@CGUID+91, 19505, 553, 3, 19.99999, 588.3833, -17.67216, 1.58825, 7200, 7200, 0, 2), -- Sunseeker Channeler
(@CGUID+92, 19505, 553, 3, 1.54828, 505.5115, -5.231867, 2.286381, 7200, 7200, 0, 2), -- Sunseeker Channeler
(@CGUID+93, 19505, 553, 3, -4.288446, 505.2145, -5.225764, 0.8203048, 7200, 7200, 0, 2), -- Sunseeker Channeler
(@CGUID+94, 19505, 553, 3, -20.15363, 505.0298, -5.22962, 1.27409, 7200, 7200, 0, 2), -- Sunseeker Channeler
(@CGUID+95, 19505, 553, 3, -15.63476, 505.6329, -5.222799, 2.478368, 7200, 7200, 0, 2), -- Sunseeker Channeler
(@CGUID+96, 19505, 553, 3, -11.5331, 590.832, -17.7077, 1.39957, 7200, 7200, 0, 2), -- Sunseeker Channeler
(@CGUID+97, 19507, 553, 3, -131.5275, 507.6039, -17.74161, 4.153883, 7200, 7200, 0, 0), -- Sunseeker Gene-Splicer
(@CGUID+98, 19507, 553, 3, -150.3988, 526.5366, -17.74155, 3.630285, 7200, 7200, 0, 0), -- Sunseeker Gene-Splicer
(@CGUID+99, 19507, 553, 3, -160.4898, 499.152, -17.74157, 3.193953, 7200, 7200, 0, 0), -- Sunseeker Gene-Splicer
(@CGUID+100, 19507, 553, 3, -157.634, 411.701, -17.6124, 1.27409, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+101, 19507, 553, 3, -177.217, 408.964, -17.6069, 2.07694, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+102, 19507, 553, 3, -150.54, 400.302, -17.7579, 2.75762, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+103, 19507, 553, 3, -172.605, 403.925, -17.6111, 4.74729, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+104, 19507, 553, 3, -173.274, 390.129, -17.6073, 3.50811, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+105, 19507, 553, 3, -177.095, 378.248, -17.6081, 5.18363, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+106, 19507, 553, 3, -172.32, 380.316, -17.6107, 0.890118, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+107, 19507, 553, 3, -166.857, 398.471, -17.6142, 4.2237, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+108, 19507, 553, 3, -154.356, 386.376, -17.7216, 4.43314, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+109, 19507, 553, 3, -179.922, 401.107, -17.6042, 0.488692, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+110, 19507, 553, 3, -164.275, 375.683, -17.6168, 2.75762, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+111, 19507, 553, 3, -152.4, 372.664, -17.6055, 0.331613, 7200, 7200, 0, 2), -- Sunseeker Gene-Splicer
(@CGUID+112, 19508, 553, 3, -129.1739, 503.9626, -17.74162, 3.385939, 7200, 7200, 0, 0), -- Sunseeker Herbalist
(@CGUID+113, 19508, 553, 3, -163.5266, 504.2899, -17.74156, 3.909538, 7200, 7200, 0, 0), -- Sunseeker Herbalist
(@CGUID+114, 19508, 553, 3, -16.2609, 482.706, -5.38576, 3.94444, 7200, 7200, 0, 0), -- Sunseeker Herbalist
(@CGUID+115, 19508, 553, 3, -17.3213, 485.099, -5.36875, 2.96706, 7200, 7200, 0, 0), -- Sunseeker Herbalist
(@CGUID+116, 19509, 553, 3, -135.6872, 508.0049, -17.7416, 4.782202, 7200, 7200, 0, 0), -- Sunseeker Harvester
(@CGUID+117, 19509, 553, 3, -154.4782, 529.9067, -17.74155, 3.752458, 7200, 7200, 0, 0), -- Sunseeker Harvester
(@CGUID+118, 19509, 553, 3, -149.5856, 522.2166, -17.74157, 2.827433, 7200, 7200, 0, 0), -- Sunseeker Harvester
(@CGUID+119, 19509, 553, 3, -161.7712, 495.0295, -17.74158, 2.932153, 7200, 7200, 0, 0), -- Sunseeker Harvester
(@CGUID+120, 19509, 553, 3, -15.0387, 479.981, -5.40512, 1.39626, 7200, 7200, 0, 0), -- Sunseeker Harvester
(@CGUID+121, 19511, 553, 3, -15.4197, 496.312, -5.37234, 5.4326, 7200, 7200, 0, 2), -- Nethervine Inciter
(@CGUID+122, 19511, 553, 3, 1.368, 493.801, -5.4124, 2.88573, 7200, 7200, 0, 2), -- Nethervine Inciter
(@CGUID+123, 19511, 553, 3, -9.989522, 577.369, -17.7983, 1.134464, 7200, 7200, 0, 0), -- Nethervine Inciter
(@CGUID+124, 19511, 553, 3, -0.867442, 569.955, -17.8747, 1.448623, 7200, 7200, 0, 0), -- Nethervine Inciter
(@CGUID+125, 19511, 553, 3, 13.71863, 579.1215, -17.7867, 1.989675, 7200, 7200, 0, 0), -- Nethervine Inciter
(@CGUID+126, 19511, 553, 3, 13.1327, 569.8241, -17.9185, 1.797689, 7200, 7200, 0, 0), -- Nethervine Inciter
(@CGUID+127, 19511, 553, 3, -16.2073, 559.726, -18.1084, 3.0654, 7200, 7200, 0, 2), -- Nethervine Inciter
(@CGUID+128, 19511, 553, 3, -19.6808, 514.978, -5.89398, 5.61429, 7200, 7200, 0, 0), -- Nethervine Inciter
(@CGUID+129, 19512, 553, 3, -8.293036, 568.9183, -17.90353, 1.256637, 7200, 7200, 0, 0), -- Nethervine Reaper
(@CGUID+130, 19512, 553, 3, 0.125824, 576.9891, -17.7821, 1.413717, 7200, 7200, 0, 0), -- Nethervine Reaper
(@CGUID+131, 19512, 553, 3, 20.65789, 570.2673, -17.93285, 2.042035, 7200, 7200, 0, 0), -- Nethervine Reaper
(@CGUID+132, 19512, 553, 3, 22.30274, 579.251, -17.80825, 2.251475, 7200, 7200, 0, 0), -- Nethervine Reaper
(@CGUID+133, 19512, 553, 3, -18.8205, 518.483, -6.07107, 6.05097, 7200, 7200, 0, 2), -- Nethervine Reaper
(@CGUID+134, 19513, 553, 3, -178.0979, 414.2927, -17.60692, 5.61996, 7200, 7200, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+135, 19513, 553, 3, -170.7269, 408.1199, -17.61168, 0.6806784, 7200, 7200, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+136, 19513, 553, 3, -158.3327, 409.1942, -17.6105, 5.951573, 7200, 7200, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+137, 19513, 553, 3, -155.9134, 404.6889, -17.6097, 1.117011, 7200, 7200, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+138, 19513, 553, 3, -173.1014, 371.9724, -17.6119, 0.6981317, 7200, 7200, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+139, 19513, 553, 3, -157.7574, 376.5436, -17.61016, 2.076942, 7200, 7200, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+140, 19555, 553, 3, -18.0924, 509.914, 1.61268, 3.52556, 7200, 7200, 0, 0), -- TK Atrium Channel Target
(@CGUID+141, 19555, 553, 3, -1.83877, 510.545, 0.624383, 2.58309, 7200, 7200, 0, 0), -- TK Atrium Channel Target
(@CGUID+142, 19555, 553, 3, -9.87732, 599.763, -8.5421, 6.03884, 7200, 7200, 0, 0), -- TK Atrium Channel Target
(@CGUID+143, 19555, 553, 3, 20.0907, 599.71, -8.29904, 3.14159, 7200, 7200, 0, 0), -- TK Atrium Channel Target
(@CGUID+144, 19557, 553, 3, 160.6192, 371.0287, -5.303069, 3.246312, 7200, 7200, 0, 0), -- Greater Frayer
(@CGUID+145, 19557, 553, 3, 151.366, 400.148, -5.38639, 0.900887, 7200, 7200, 0, 0), -- Greater Frayer
(@CGUID+146, 19557, 553, 3, 163.0895, 409.0392, -5.303117, 2.600541, 7200, 7200, 0, 0), -- Greater Frayer
(@CGUID+147, 19557, 553, 3, 161.871, 399.913, -5.38639, 2.1049, 7200, 7200, 0, 0), -- Greater Frayer
(@CGUID+148, 19557, 553, 3, 194.8489, 380.1787, -5.383102, 1.675516, 7200, 7200, 0, 0), -- Greater Frayer
(@CGUID+149, 19557, 553, 3, 172.6151, 498.3585, -2.312288, 4.433136, 7200, 7200, 0, 0), -- Greater Frayer
(@CGUID+150, 19557, 553, 3, 163.7609, 507.1059, -2.360956, 3.508112, 7200, 7200, 0, 0), -- Greater Frayer
(@CGUID+151, 19598, 553, 3, -133.4, 518.873, -17.8247, 4.12176, 7200, 7200, 3, 1), -- Mutate Fleshlasher
(@CGUID+152, 19598, 553, 3, -126.586, 510.349, -17.8247, 2.6295, 7200, 7200, 3, 1), -- Mutate Fleshlasher
(@CGUID+153, 19598, 553, 3, -149.496, 533.72, -17.8249, 4.90715, 7200, 7200, 3, 1), -- Mutate Fleshlasher
(@CGUID+154, 19598, 553, 3, -145.39, 520.226, -17.8249, 3.71334, 7200, 7200, 3, 1), -- Mutate Fleshlasher
(@CGUID+155, 19598, 553, 3, -155.895, 511.581, -17.8249, 2.20537, 7200, 7200, 3, 1), -- Mutate Fleshlasher
(@CGUID+156, 19598, 553, 3, -154.103, 502.819, -17.8249, 5.08386, 7200, 7200, 3, 1), -- Mutate Fleshlasher
(@CGUID+157, 19608, 553, 3, -7.40264, 405.74, -28.8768, 0.568592, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+158, 19608, 553, 3, -11.3965, 409.641, -28.9496, 1.05554, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+159, 19608, 553, 3, -5.04485, 413.541, -28.7785, 0.851335, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+160, 19608, 553, 3, -2.76557, 407.948, -28.8031, 0.851335, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+161, 19608, 553, 3, 2.45118, 411.253, -27.8576, 0.851335, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+162, 19608, 553, 3, 1.42734, 417.668, -28.5357, 0.851335, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+163, 19608, 553, 3, -12.6501, 413.66, -28.9731, 0.851335, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+164, 19608, 553, 3, 8.47863, 406.905, -27.2781, 0.00703203, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+165, 19608, 553, 3, 5.30724, 405.438, -27.6309, 0.00703203, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+166, 19608, 553, 3, 17.547, 404.861, -27.1645, 3.80836, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+167, 19608, 553, 3, 23.7654, 371.145, -26.2477, 5.5166, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+168, 19608, 553, 3, 9.38162, 375.868, -26.9916, 5.46555, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+169, 19608, 553, 3, 17.2784, 379.591, -27.3824, 5.46555, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+170, 19608, 553, 3, 33.6453, 373.674, -26.3937, 5.46555, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+171, 19608, 553, 3, 10.53953, 360.2061, -27.91825, 4.641111, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+172, 19608, 553, 3, 1.964939, 378.8695, -27.9353, 3.421268, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+173, 19608, 553, 3, 13.03359, 381.2849, -27.96042, 5.918366, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+174, 19608, 553, 3, 23.2317, 359.402, -26.5154, 1.86057, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+175, 19608, 553, 3, 1.29839, 363.459, -28.1844, 2.15117, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+176, 19608, 553, 3, 16.9297, 368.371, -26.301, 0.360461, 7200, 7200, 3, 1), -- Frayer Wildling
(@CGUID+177, 19633, 553, 3, 10.61955, 202.3912, -5.457047, 4.13643, 7200, 7200, 0, 0), -- Bloodwarder Mender
(@CGUID+178, 19633, 553, 3, -11.26626, 201.1227, -5.457016, 5.51524, 7200, 7200, 0, 0), -- Bloodwarder Mender
(@CGUID+179, 19633, 553, 3, -0.755704, 255.12, -5.40764, 1.67552, 7200, 7200, 0, 0), -- Bloodwarder Mender
(@CGUID+180, 19633, 553, 3,  6.21388, 166.129, -5.54038, 5.40107, 7200, 7200, 2, 1), -- Bloodwarder Mender
(@CGUID+181, 19843, 553, 3, -65.9018, 560.5957, -17.78348, 0.7689893, 7200, 7200, 4, 1), -- Nethervine Trickster
(@CGUID+182, 19843, 553, 3, -79.93607, 549.6142, -17.78638, 3.643529, 7200, 7200, 3, 1), -- Nethervine Trickster
(@CGUID+183, 19865, 553, 3, -172.9828, 418.549, -17.63096, 2.548181, 7200, 7200, 0, 0), -- Mutate Horror
(@CGUID+184, 19865, 553, 3, -174.2672, 401.2795, -17.60785, 5.375614, 7200, 7200, 0, 0), -- Mutate Horror
(@CGUID+185, 19865, 553, 3, -151.5251, 413.8606, -17.60477, 3.735005, 7200, 7200, 0, 0), -- Mutate Horror
(@CGUID+186, 19865, 553, 3, -157.6454, 396.7041, -17.68925, 5.759586, 7200, 7200, 0, 0), -- Mutate Horror
(@CGUID+187, 19865, 553, 3, -164.3136, 371.2666, -17.61877, 5.899213, 7200, 7200, 0, 0), -- Mutate Horror
(@CGUID+188, 19865, 553, 3, -168.9936, 383.4474, -17.61235, 4.782202, 7200, 7200, 0, 0); -- Mutate Horror

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+1, 184215, 553, 1, 47.64511, -35.73307, -1.096961, 2.358326, 0, 0, 0.9242868, 0.3816986, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+2, 184216, 553, 2, 47.64511, -35.73307, -1.096961, 2.358326, 0, 0, 0.9242868, 0.3816986, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+3, 184217, 553, 1, 161.7445, 391.5876, -36.14458, 3.191312, 0, 0, -0.999691, 0.02485682, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+4, 184218, 553, 2, 161.7445, 391.5876, -36.14458, 3.191312, 0, 0, -0.999691, 0.02485682, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+5, 181270, 553, 3, 173.0421, 388.6885, -3.900286, 4.799657, 0, 0, -0.6755896, 0.7372779, 86400, 86400), -- Felweed
(@OGUID+6, 181270, 553, 3, -154.1918, 523.5183, -16.01933, 3.351047, 0, 0, -0.9945211, 0.1045355, 86400, 86400), -- Felweed
(@OGUID+7, 181270, 553, 3, 28.6266, 356.7638, -26.15407, 3.787367, 0, 0, -0.9483232, 0.3173059, 86400, 86400), -- Felweed
(@OGUID+8, 181270, 553, 3, 41.43266, 356.0775, -26.01737, 1.867502, 0, 0, 0.8038568, 0.5948228, 86400, 86400), -- Felweed
(@OGUID+9, 181270, 553, 3, 63.45014, 427.0817, -25.50683, 0.5410506, 0, 0, 0.2672377, 0.9636307, 86400, 86400), -- Felweed
(@OGUID+10, 181270, 553, 3, 9.857398, 418.2055, -27.59235, 5.201083, 0, 0, -0.5150375, 0.8571676, 86400, 86400), -- Felweed
(@OGUID+11, 181271, 553, 3, 0.634392, 165.9616, -3.672326, 3.769912, 0, 0, -0.9510565, 0.3090171, 86400, 86400), -- Dreaming Glory
(@OGUID+12, 181271, 553, 3, 155.0183, 409.8469, -3.525341, 6.19592, 0, 0, -0.04361916, 0.9990482, 86400, 86400), -- Dreaming Glory
(@OGUID+13, 181271, 553, 3, -22.20031, 502.6438, -4.840034, 0.3141584, 0, 0, 0.1564341, 0.9876884, 86400, 86400), -- Dreaming Glory
(@OGUID+14, 181277, 553, 3, -165.2932, 495.9111, -15.07489, 4.398232, 0, 0, -0.8090162, 0.5877863, 86400, 86400), -- Terocone
(@OGUID+15, 181279, 553, 3, -0.459927, 256.7108, -4.356128, 3.822273, 0, 0, -0.9426413, 0.3338076, 86400, 86400), -- Netherbloom
(@OGUID+16, 181279, 553, 3, 169.2339, 504.4491, 0.050639, 2.321287, 0, 0, 0.9170599, 0.3987495, 86400, 86400), -- Netherbloom
(@OGUID+17, 181279, 553, 3, 115.8156, 450.6175, -3.823856, 0.2792516, 0, 0, 0.1391726, 0.9902682, 86400, 86400), -- Netherbloom
(@OGUID+18, 184940, 553, 3, 154.0024, 377.8789, -5.386404, 1.902409, 0, 0, 0, 0, 86400, 86400), -- Bound Adamantite Chest
(@OGUID+19, 184941, 553, 3, 154.0024, 377.8789, -5.386404, 1.902409, 0, 0, 0, 0, 86400, 86400); -- Solid Adamantite Chest

INSERT INTO `gameobject_addon` (`guid`, `animprogress`, `state`) VALUES
(@OGUID+1, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+2, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+3, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+4, 0, 0); -- Instance_Portal_Difficulty_1

-- ======
-- EVENTS
-- ======

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(@CGUID+1, 0, 22805, 0, 0, 0, 2); -- High Botanist Freywinn (Feast of Winter Veil - Main Event)

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- ======
-- StringIDs
-- ======

DELETE FROM string_id WHERE Id BETWEEN @STRINGID+1 AND @STRINGID+9;
INSERT INTO `string_id` (Id, Name) VALUES 
(@STRINGID+1, 'BLOODWARDER_PROTECTOR_GROUP_01'),
(@STRINGID+2, 'BLOODWARDER_PROTECTOR_GROUP_02'),
(@STRINGID+3, 'BLOODWARDER_PROTECTOR_GROUP_03'),
(@STRINGID+4, 'BLOODWARDER_PROTECTOR_GROUP_04'),
(@STRINGID+5, 'BLOODWARDER_PROTECTOR_GROUP_05'),
(@STRINGID+6, 'BLOODWARDER_PROTECTOR_GROUP_06'),
(@STRINGID+7, 'BLOODFALCON_01'),
(@STRINGID+8, 'BLOODFALCON_02'),
(@STRINGID+9, 'BLOODFALCON_03'),
(@STRINGID+10, 'BLOODFALCON_04'),
(@STRINGID+11, 'BLOODFALCON_05'),
(@STRINGID+12, 'COMMANDER_SARANNIS_GROUP_01'), -- bloodwarder protector / steward groups before sarannis
(@STRINGID+13, 'COMMANDER_SARANNIS_GROUP_02'), -- bloodwarder protector / steward groups before sarannis
(@STRINGID+14, 'COMMANDER_SARANNIS_GROUP_03'); -- bloodwarder protector / steward groups before sarannis

DELETE FROM creature_spawn_data WHERE Id IN (1815501, 1815502, 1815503, 1815504, 1815505);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
-- Bloodfalcon StringIds
(@CGUID+30, '1815501'),
(@CGUID+31, '1815502'),
(@CGUID+32, '1815503'),
(@CGUID+34, '1815504'),
(@CGUID+35, '1815505');

DELETE FROM creature_spawn_data_template WHERE Entry IN (1815501, 1815502, 1815503, 1815504, 1815505);
INSERT INTO `creature_spawn_data_template` (`Entry`, `StringId`, `Name`) VALUES 
('1815501', @STRINGID+7, 'The Botanica - BLOODFALCON_01'), 
('1815502', @STRINGID+8, 'The Botanica - BLOODFALCON_02'), 
('1815503', @STRINGID+9, 'The Botanica - BLOODFALCON_03'),
('1815504', @STRINGID+10, 'The Botanica - BLOODFALCON_04'),
('1815505', @STRINGID+11, 'The Botanica - BLOODFALCON_05');

-- ============
-- SPAWN GROUPS
-- ============

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `WorldStateExpression`, `Flags`, `StringID`) VALUES
(@SGGUID+1, 'The Botanica - Group 001 - Bloodwarder Protector (2)', 0, 0, 0, 0, 1, @STRINGID+1),
(@SGGUID+2, 'The Botanica - Group 002 - Bloodwarder Protector (2)', 0, 0, 0, 0, 1, @STRINGID+2),
(@SGGUID+3, 'The Botanica - Group 003 - Bloodwarder Protector (2)', 0, 0, 0, 0, 1, @STRINGID+3),
(@SGGUID+4, 'The Botanica - Group 004 - Bloodwarder Greenkeeper (2) - Bloodwarder Mender', 0, 0, 0, 0, 1, 0),
(@SGGUID+5, 'The Botanica - Group 005 - Bloodwarder Greenkeeper (2) - Bloodwarder Mender', 0, 0, 0, 0, 1, 0),
(@SGGUID+6, 'The Botanica - Group 006 - Bloodwarder Greenkeeper (2) - Bloodwarder Mender', 0, 0, 0, 0, 1, 0),
(@SGGUID+7, 'The Botanica - Group 007 - Bloodwarder Protector (2)', 0, 0, 0, 0, 1, @STRINGID+4),
(@SGGUID+8, 'The Botanica - Group 008 - Bloodwarder Greenkeeper (2) - Bloodwarder Mender', 0, 0, 0, 0, 1, 0),
(@SGGUID+9, 'The Botanica - Group 009 - Bloodwarder Falconer - Bloodfalcon (3)', 0, 4, 0, 0, 3, 0),
(@SGGUID+10, 'The Botanica - Group 010 - Bloodwarder Protector (2)', 0, 0, 0, 0, 1, @STRINGID+5),
(@SGGUID+11, 'The Botanica - Group 011 - Bloodwarder Protector (2) - Bloodwarder Steward', 0, 0, 0, 0, 1, @STRINGID+6),
(@SGGUID+12, 'The Botanica - Group 012 - Bloodwarder Falconer - Bloodfalcon (3)', 0, 4, 0, 0, 1, 0),
(@SGGUID+13, 'The Botanica - Group 013 - Bloodwarder Steward - Bloodwarder Protector (2)', 0, 0, 0, 0, 1, @STRINGID+12),
(@SGGUID+14, 'The Botanica - Group 014 - Bloodwarder Steward - Bloodwarder Protector (2)', 0, 0, 0, 0, 1, @STRINGID+13),
(@SGGUID+15, 'The Botanica - Group 015 - Bloodwarder Steward - Bloodwarder Protector (2)', 0, 0, 0, 0, 1, @STRINGID+14);

-- INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @CGUID+15, 0, 0), -- Bloodwarder Protector - right
(@SGGUID+1, @CGUID+16, 1, 0), -- Bloodwarder Protector - left

(@SGGUID+2, @CGUID+17, 0, 0), -- Bloodwarder Protector - right
(@SGGUID+2, @CGUID+18, 1, 0), -- Bloodwarder Protector - left

(@SGGUID+3, @CGUID+6, 0, 0), -- Bloodwarder Protector - right
(@SGGUID+3, @CGUID+19, 1, 0), -- Bloodwarder Protector - left

(@SGGUID+4, @CGUID+180, 0, 0), -- Bloodwarder Mender
(@SGGUID+4, @CGUID+48, 1, 0), -- Bloodwarder Greenkeeper
(@SGGUID+4, @CGUID+51, 2, 0), -- Bloodwarder Greenkeeper

(@SGGUID+5, @CGUID+177, 0, 0), -- Bloodwarder Mender
(@SGGUID+5, @CGUID+45, 1, 0), -- Bloodwarder Greenkeeper
(@SGGUID+5, @CGUID+44, 2, 0), -- Bloodwarder Greenkeeper

(@SGGUID+6, @CGUID+178, 0, 0), -- Bloodwarder Mender
(@SGGUID+6, @CGUID+47, 1, 0), -- Bloodwarder Greenkeeper
(@SGGUID+6, @CGUID+46, 2, 0), -- Bloodwarder Greenkeeper

(@SGGUID+7, @CGUID+7, 0, 0), -- Bloodwarder Protector - left
(@SGGUID+7, @CGUID+8, 1, 0), -- Bloodwarder Protector - right

(@SGGUID+8, @CGUID+179, 0, 0), -- Bloodwarder Mender
(@SGGUID+8, @CGUID+49, 1, 0), -- Bloodwarder Greenkeeper
(@SGGUID+8, @CGUID+50, 2, 0), -- Bloodwarder Greenkeeper

(@SGGUID+9, @CGUID+28, 0, 0), -- Bloodwarder Falconer
(@SGGUID+9, @CGUID+30, 1, 0), -- Bloodfalcon
(@SGGUID+9, @CGUID+31, 2, 0), -- Bloodfalcon
(@SGGUID+9, @CGUID+32, 3, 0), -- Bloodfalcon

(@SGGUID+10, @CGUID+9, 0, 0), -- Bloodwarder Protector - right
(@SGGUID+10, @CGUID+10, 1, 0), -- Bloodwarder Protector - left

(@SGGUID+11, @CGUID+36, 0, 0), -- Bloodwarder Steward
(@SGGUID+11, @CGUID+11, 1, 0), -- Bloodwarder Protector - right
(@SGGUID+11, @CGUID+12, 2, 0), -- Bloodwarder Protector - left

(@SGGUID+12, @CGUID+29, 0, 0), -- Bloodwarder Falconer
(@SGGUID+12, @CGUID+33, 1, 0), -- Bloodfalcon
(@SGGUID+12, @CGUID+34, 2, 0), -- Bloodfalcon
(@SGGUID+12, @CGUID+35, 3, 0), -- Bloodfalcon

(@SGGUID+13, @CGUID+37, 0, 0), -- Bloodwarder Steward
(@SGGUID+13, @CGUID+20, 1, 0), -- Bloodwarder Protector
(@SGGUID+13, @CGUID+21, 2, 0), -- Bloodwarder Protector

(@SGGUID+14, @CGUID+39, 0, 0), -- Bloodwarder Steward
(@SGGUID+14, @CGUID+24, 1, 0), -- Bloodwarder Protector
(@SGGUID+14, @CGUID+25, 2, 0), -- Bloodwarder Protector

(@SGGUID+15, @CGUID+38, 0, 0), -- Bloodwarder Steward
(@SGGUID+15, @CGUID+22, 1, 0), -- Bloodwarder Protector
(@SGGUID+15, @CGUID+23, 2, 0); -- Bloodwarder Protector

-- INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
-- INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
-- INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+21, 2, 'The Botanica - Master Felweed (181270) / Terocone (181277) Pool'), -- gameobject
(@PGUID+22, 1, 'The Botanica - Master Dreaming Glory (181271) Pool'),
(@PGUID+23, 1, 'The Botanica - Master Netherbloom (181279) Pool'),
(@PGUID+24, 1, 'The Botanica - Bound / Solid Adamantite Chest');

-- INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID+5, @PGUID+21, 0, 'The Botanica - Felweed (181270)'),
(@OGUID+6, @PGUID+21, 0, 'The Botanica - Felweed (181270)'),
(@OGUID+7, @PGUID+21, 0, 'The Botanica - Felweed (181270)'),
(@OGUID+8, @PGUID+21, 0, 'The Botanica - Felweed (181270)'),
(@OGUID+9, @PGUID+21, 0, 'The Botanica - Felweed (181270)'),
(@OGUID+10, @PGUID+21, 0, 'The Botanica - Felweed (181270)'),
(@OGUID+11, @PGUID+22, 0, 'The Botanica - Dreaming Glory (181271)'),
(@OGUID+12, @PGUID+22, 0, 'The Botanica - Dreaming Glory (181271)'),
(@OGUID+13, @PGUID+22, 0, 'The Botanica - Dreaming Glory (181271)'),
(@OGUID+14, @PGUID+21, 0, 'The Botanica - Terocone (181277)'),
(@OGUID+15, @PGUID+23, 0, 'The Botanica - Netherbloom (181279)'),
(@OGUID+16, @PGUID+23, 0, 'The Botanica - Netherbloom (181279)'),
(@OGUID+17, @PGUID+23, 0, 'The Botanica - Netherbloom (181279)'),
(@OGUID+18, @PGUID+24, 0, 'The Botanica - Bound Adamantite Chest (184940)'),
(@OGUID+19, @PGUID+24, 0, 'The Botanica - Solid Adamantite Chest (184941)');

-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1797501,1799302,1799303,1799304,1799305,
1842001,1842002,1842003,1842004,1842005,1842006,1842101,1842201,1842202,1842203,1950501,1950502,1950503,1950504,1950505,1950506,1950701);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1797501, 0, 0, 0, 0, 0, 0, 0, 0, 16945, 16946, 16948, 16947, 0, 0, 0, 0, 'High Botanist Freywinn - Text'),
(1799302, 0, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Protector (Botanica) - Cast Suicide'),
(1799302, 17000, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Protector (Botanica) - Despawn'),
(1799303, 300, 0, 0, 0, 0, 0, 0, 0, 16994, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector - Text'),
(1799303, 1700, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Protector (Botanica) - Cast Suicide'), -- 3700
(1799303, 18200, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Protector (Botanica) - Despawn'),
(1799304, 200, 0, 0, 0, 0, 0, 0, 0, 16993, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector - Text'),
(1799305, 1000, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector (Botanica) - Salute'),
(1799305, 3000, 1, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector (Botanica) - Ready For Combat'),
(1799305, 3000, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector (Botanica) - Disable Waypoint Movement'),
(1842001, 1000, 0, 0, 0, 0, 0, 0, 0, 17178, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Geomancer - say'),
(1842002, 1000, 15, 34183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842003, 1000, 15, 34185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842004, 1000, 15, 34170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842004, 3000, 15, 34170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842004, 5000, 15, 34170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842005, 5000, 15, 34167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842006, 5000, 15, 34169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842101, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842101, 6000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842201, 0, 0, 0, 0, 0, 0, 0, 0, 17000, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Botanist in Botanica'),
(1842202, 0, 0, 0, 0, 0, 0, 0, 0, 16999, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Botanist in Botanica'),
(1842203, 0, 15, 34254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Botanist - Cast Rejuvenate Plant'),
(1950501, 0, 15, 34221, 0, 0, 19555, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Crystal Channel TK Atrium Channel Target'),
(1950502, 0, 15, 34200, 0, 0, 19511, @CGUID+122, 17, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Crystal Channel Nethervine Inciter'),
(1950502, 7000, 15, 34187, 0, 0, 19511, @CGUID+122, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Nethervine Inciter Casts Sunseeker Blessing'),
(1950503, 0, 15, 34221, 0, 0, 19555, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Crystal Channel TK Atrium Channel Target'),
(1950504, 2000, 15, 34222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Cast Sunseeker Blessing AOE'),
(1950505, 1000, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Emote'),
(1950506, 1000, 15, 34173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Cast Sunseeker Blessing'),
(1950701, 0, 48, 33554432, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Gene-Splicer - Add UNIT_FLAG_NOT_SELECTABLE'),
(1950701, 0, 22, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Gene-Splicer - Set Faction 190'),
(1950701, 1000, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Gene-Splicer - MovementType 0');

-- Reworked MovementScripts
-- Once Bota rework is done, we will only have one of this
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1797601, 1799301, 1815501, 1840401);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Commander Sarannis RP
(1797601, 0, 0, 45, 0, @RELAYID+3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis - 10% chance to yell, 10% chance to talk with friends'),
-- Sunseeker Protector entrance Intro 
(1799301, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector - Disable Waypoint Movement'),
(1799301, 2000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector - Emote Salute'),
(1799301, 4000, 0, 1, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector - Emote STATE_READY1H'),
-- Bloodfalcon after RP waypoints go back to rnd movement with 3y dist 
(1815501, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodfalcon - Disable Movement'),
(1815501, 1000, 0, 20, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodfalcon - RandomMovement 3yards'),
-- Bloodwarder Steward
(1840401, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Steward - Disable Waypoint Movement'),
(1840401, 1000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector - Emote Exclamation'),
(1840401, 4000, 0, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Steward - Move Waypoints');


DELETE FROM dbscript_random_templates WHERE id BETWEEN @RELAYID+1 AND @RELAYID+3;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
-- Bloodwarder Falconer RP script 
(@RELAYID+1, 1, @RELAYID+2, 0, 'Bloodwarder Falconer - random talk Bloodfalcon 01'),
(@RELAYID+1, 1, @RELAYID+3, 0, 'Bloodwarder Falconer - random talk Bloodfalcon 02'),
(@RELAYID+1, 1, @RELAYID+4, 0, 'Bloodwarder Falconer - random talk Bloodfalcon 02'),
-- 2nd Bloodwarder Falconer RP script
(@RELAYID+2, 1, @RELAYID+5, 0, 'Bloodwarder Falconer - random talk Bloodfalcon 03'),
(@RELAYID+2, 1, @RELAYID+6, 0, 'Bloodwarder Falconer - random talk Bloodfalcon 04'),
-- Commander Sarannis
(@RELAYID+3, 1, @RELAYID+7, 5, 'Commander Sarannis - random yell'),
(@RELAYID+3, 1, @RELAYID+8, 5, 'Commander Sarannis - talk event 01'),
(@RELAYID+3, 1, @RELAYID+9, 5, 'Commander Sarannis - talk event 02'),
(@RELAYID+3, 1, @RELAYID+10, 5, 'Commander Sarannis - talk event 03'),
(@RELAYID+3, 1, 0, 80, 'Commander Sarannis - nothing');

-- RelayScripts for RP handled via creature_ai_scripts
DELETE FROM dbscripts_on_relay WHERE id BETWEEN @RELAYID+1 AND @RELAYID+6;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Bloodwarder Greenkeeper at then end of first Hallway
-- On retail the rp can even happen if one of the Bloodwarder Greenkeepers is dead, to minimize dberrors we only let the rp happen when both are alive
(@RELAYID+1, 0, 0, 31, 18419, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'Bloodwarder Greenkeeper - Terminate Script if 2nd Bloodwarder Greenkeeper Found'),
(@RELAYID+1, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.06981, 'Bloodwarder Greenkeeper - Move Orientation'),
(@RELAYID+1, 0, 2, 3, 0, 0, 0, 18419, 8, 0, 0, 0, 0, 0, 0, 0, 0, 3.1415, 'Bloodwarder Greenkeeper (2) - Move Orientation'),
(@RELAYID+1, 0, 3, 1, 378, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0., 'Bloodwarder Greenkeeper - Emote StateTalk'),
(@RELAYID+1, 0, 4, 1, 378, 0, 0, 18419, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Greenkeeper (2) - Emote StateTalk'),
(@RELAYID+1, 7000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.14675, 'Bloodwarder Greenkeeper - Move Orientation'),
(@RELAYID+1, 7000, 1, 3, 0, 0, 0, 18419, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0.977, 'Bloodwarder Greenkeeper (2) - Move Orientation'),
(@RELAYID+1, 7000, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0., 'Bloodwarder Greenkeeper - Emote StateUseStanding'),
(@RELAYID+1, 7000, 3, 1, 69, 0, 0, 18419, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Greenkeeper (2) - Emote StateUseStanding'),
-- Bloodwarder Falconer RP 01 with Bloodfalcon CGUID+30
(@RELAYID+2,0,0,31,0,10,0,@STRINGID+7,10,0x800,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - search for string id - terminate if not found'),
(@RELAYID+2,1,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,6.265731, 'Bloodwarder Falconer - Change Orientation'),
(@RELAYID+2,1,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Emote Point'),
(@RELAYID+2,1,3,0,0,0,0,0,0,0,16783,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Say Text'),
(@RELAYID+2,1,4,20,2,1,0,@STRINGID+7,10,2048,2,0,0,0,0,0,0,0, 'StringId - start waypoints'),
-- Bloodwarder Falconer RP 02 with Bloodfalcon CGUID+31
(@RELAYID+3,0,0,31,0,10,0,@STRINGID+8,10,0x800,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - search for string id - terminate if not found'),
(@RELAYID+3,1,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.570796, 'Bloodwarder Falconer - Change Orientation'),
(@RELAYID+3,1,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Emote Point'),
(@RELAYID+3,1,3,0,0,0,0,0,0,0,16783,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Say Text'),
(@RELAYID+3,1,4,20,2,2,0,@STRINGID+8,10,2048,2,0,0,0,0,0,0,0, 'StringId - start waypoints'),
-- Bloodwarder Falconer RP 03 with Bloodfalcon CGUID+32
(@RELAYID+4,0,0,31,0,10,0,@STRINGID+9,10,0x800,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - search for string id - terminate if not found'),
(@RELAYID+4,1,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.7822, 'Bloodwarder Falconer - face StringID'),
(@RELAYID+4,1,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Emote Point'),
(@RELAYID+4,1,3,0,0,0,0,0,0,0,16783,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Say Text'),
(@RELAYID+4,1,4,20,2,3,0,@STRINGID+9,10,2048,2,0,0,0,0,0,0,0, 'StringId - start waypoints'),
-- 2nd Bloodwarder Falconer RP 01 with Bloodfalcone CGUID+34
(@RELAYID+5,0,0,31,0,10,0,@STRINGID+10,10,0x800,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - search for string id - terminate if not found'),
(@RELAYID+5,1,1,36,0,0,0,@STRINGID+10,10,2049,0,0,0,0,0,0,0,0,'Bloodwarder Falconer - face StringID'),
(@RELAYID+5,1,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Emote Point'),
(@RELAYID+5,1,3,0,0,0,0,0,0,0,16783,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Say Text'),
(@RELAYID+5,1,4,20,2,4,0,@STRINGID+10,10,2048,2,0,0,0,0,0,0,0, 'StringId - start waypoints'),
-- 2nd Bloodwarder Falconer RP 01 with Bloodfalcone CGUID+35
(@RELAYID+6,0,0,31,0,10,0,@STRINGID+11,10,0x800,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - search for string id - terminate if not found'),
(@RELAYID+6,1,1,36,0,0,0,@STRINGID+11,10,2049,0,0,0,0,0,0,0,0,'Bloodwarder Falconer - face StringID'),
(@RELAYID+6,1,2,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Emote Point'),
(@RELAYID+6,1,3,0,0,0,0,0,0,0,16783,0,0,0,0,0,0,0, 'Bloodwarder Falconer - Say Text'),
(@RELAYID+6,1,4,20,2,5,0,@STRINGID+11,10,2048,2,0,0,0,0,0,0,0, 'StringId - start waypoints'),
-- Commander Sarannis random Yell
(@RELAYID+7,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Stop Waypoint'),
(@RELAYID+7,1,0,3,0,0,0,0,0,0,0,0,0,0,155.922,290.894,-4.873918,0, 'Commander Sarannis - MoveToPoint'),
(@RELAYID+7,2000,0,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Emote Cheer'),
(@RELAYID+7,2000,1,0,0,0,0,0,0,0,16861,0,0,0,0,0,0,0, 'Commander Sarannis - Say Text'),
(@RELAYID+7,8000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Start Waypoint'),
-- Commander Sarannis talk event group 01
(@RELAYID+8,0,0,31,0,10,0,@STRINGID+12,20,0x800,0,0,0,0,0,0,0,0, 'Commander Sarannis - search for string id - terminate if not found'),
(@RELAYID+8,1,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Stop Waypoint'),
(@RELAYID+8,1,1,3,0,0,0,0,0,0,0,0,0,0,151.53856,284.7357,-4.882605,0, 'Commander Sarannis - MoveToPoint'),
(@RELAYID+8,3000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.7538, 'Commander Sarannis - Change Orientation'),
(@RELAYID+8,3000,1,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Emote OneShotSalute'),
(@RELAYID+8,3000,2,36,0,0,0,@STRINGID+12,5,2560,0,0,0,0,0,0,0,0, 'StringId - face Commander Sarannis'),
(@RELAYID+8,3000,3,1,66,0,0,@STRINGID+12,5,2560,0,0,0,0,0,0,0,0, 'StringId - Emote OneShotSalute'),
(@RELAYID+8,6000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Emote Talk'),
(@RELAYID+8,13000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Start Waypoint'),
-- Commander Sarannis talk event group 02
(@RELAYID+9,0,0,31,0,10,0,@STRINGID+13,20,0x800,0,0,0,0,0,0,0,0, 'Commander Sarannis - search for string id - terminate if not found'),
(@RELAYID+9,1,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Stop Waypoint'),
(@RELAYID+9,1,1,3,0,0,0,0,0,0,0,0,0,0,160.72835,289.48978,-4.2098813,0, 'Commander Sarannis - MoveToPoint'),
(@RELAYID+9,3000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5.693943, 'Commander Sarannis - Change Orientation'),
(@RELAYID+9,3000,1,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Emote OneShotSalute'),
(@RELAYID+9,3000,2,36,0,0,0,@STRINGID+13,5,2560,0,0,0,0,0,0,0,0, 'StringId - face Commander Sarannis'),
(@RELAYID+9,3000,3,1,66,0,0,@STRINGID+13,5,2560,0,0,0,0,0,0,0,0, 'StringId - Emote OneShotSalute'),
(@RELAYID+9,6000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Emote Talk'),
(@RELAYID+9,13000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Start Waypoint'),
-- Commander Sarannis talk event group 03
(@RELAYID+10,0,0,31,0,10,0,@STRINGID+14,20,0x800,0,0,0,0,0,0,0,0, 'Commander Sarannis - search for string id - terminate if not found'),
(@RELAYID+10,1,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Stop Waypoint'),
(@RELAYID+10,1,1,3,0,0,0,0,0,0,0,0,0,0,162.1837,295.61197,-4.9209743,0, 'Commander Sarannis - MoveToPoint'),
(@RELAYID+10,3000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,6.2574, 'Commander Sarannis - Change Orientation'),
(@RELAYID+10,3000,1,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Emote OneShotSalute'),
(@RELAYID+10,3000,2,36,0,0,0,@STRINGID+14,5,2560,0,0,0,0,0,0,0,0, 'StringId - face Commander Sarannis'),
(@RELAYID+10,3000,3,1,66,0,0,@STRINGID+14,5,2560,0,0,0,0,0,0,0,0, 'StringId - Emote OneShotSalute'),
(@RELAYID+10,6000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Emote Talk'),
(@RELAYID+10,13000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Commander Sarannis - Start Waypoint');

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


