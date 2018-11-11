/* DBScriptData
DBName: Hellfire Citadel - The Shattered Halls
DBScriptName: instance_shattered_halls
DB%Complete: 80
DBComment:
* reuse Freed GUIDs for Creature Group Pooling
* gladiator fighting script to certain %threshold - Research
* training dummy script like in garadar with hit animation on the dummy
* groups need to be restructured and hallway scripts have to be made to substitute these static spawned groups
* Shattered Hand Heathen at the entrance might be pooled with Shattered Hand Savage (1:1 pool, changed to 3:2 static atm)
* Shattered Hand Legionnaire need "Substutite Dead Group Member Mechanic"
EndDBScriptData */

SET @CGUID := 5400000; -- creatures
SET @OGUID := 5400000; -- gameobjects
SET @PGUID := 48000; -- pools

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID+74, 1, 62.7101, 2.91998, -13.0349, 0, 0, 1670001),
(@CGUID+74, 2, 56.5515, 2.61235, -13.1199, 0, 0, 1670001),
(@CGUID+74, 3, 50.393, 2.30471, -13.2049, 0, 0, 1670001),
(@CGUID+74, 4, 38.6893, 1.72007, -13.1907, 0, 0, 1670001),
(@CGUID+74, 5, 37.24, 1.64768, -13.1956, 0, 0, 1670001),
(@CGUID+74, 6, 21.5489, 1.67225, -13.1886, 0, 0, 1670001),
(@CGUID+74, 7, 9.57407, 1.84343, -13.1916, 0, 0, 1670001),
(@CGUID+74, 8, 21.5489, 1.67225, -13.1886, 0, 0, 1670001),
(@CGUID+74, 9, 37.24, 1.64768, -13.1956, 0, 0, 1670001),
(@CGUID+74, 10, 55.6437, 2.6325, -13.2086, 0, 0, 1670001),
(@CGUID+77, 1, 57.0575, 73.036, -13.1202, 0, 0, 1670002),
(@CGUID+77, 2, 60.1673, 75.9561, -13.223, 0, 0, 1670002),
(@CGUID+77, 3, 64.0052, 79.5599, -13.2225, 0, 0, 1670002),
(@CGUID+77, 4, 73.1336, 78.9491, -13.2227, 0, 0, 1670002),
(@CGUID+77, 5, 80.2024, 73.1727, -13.2225, 0, 0, 1670002),
(@CGUID+77, 6, 73.1336, 78.9491, -13.2227, 0, 0, 1670002),
(@CGUID+77, 7, 64.0052, 79.5599, -13.2225, 0, 0, 1670002),
(@CGUID+77, 8, 56.9667, 74.2579, -13.2229, 0, 0, 1670002),
(@CGUID+78, 1, 76.4215, 261.567, -13.2031, 0, 0, 0),
(@CGUID+78, 2, 76.4215, 261.567, -13.2031, 0, 0, 0),
(@CGUID+78, 3, 66.6358, 268.749, -13.2008, 0, 0, 0),
(@CGUID+78, 4, 69.7139, 263.393, -13.201, 0, 0, 0),
(@CGUID+78, 5, 69.6648, 257.303, -13.2001, 0, 0, 0),
(@CGUID+78, 6, 69.7602, 263.401, -13.2011, 0, 0, 0),
(@CGUID+78, 7, 69.7602, 263.401, -13.2011, 0.541052, 0, 0),
(@CGUID+78, 8, 76.4215, 261.567, -13.2031, 0, 0, 0),
(@CGUID+78, 9, 66.6358, 268.749, -13.2008, 0, 0, 0),
(@CGUID+78, 10, 76.4215, 261.567, -13.2031, 0, 0, 0),
(@CGUID+78, 11, 66.6358, 268.749, -13.2008, 0, 0, 0),
(@CGUID+78, 12, 69.7139, 263.393, -13.201, 0, 0, 0),
(@CGUID+78, 13, 69.7139, 263.393, -13.201, 4.69494, 0, 0),
(@CGUID+78, 14, 69.6648, 257.303, -13.2001, 0, 0, 0),
(@CGUID+78, 15, 69.7602, 263.401, -13.2011, 0, 0, 0),
(@CGUID+78, 16, 63.4647, 269.655, -13.1999, 0, 0, 0),
(@CGUID+78, 17, 64.4153, 277.185, -13.2015, 0, 0, 0),
(@CGUID+78, 18, 72.1938, 278.969, -13.2044, 0, 0, 0),
(@CGUID+78, 19, 80.1167, 274.187, -13.2064, 0, 0, 0),
(@CGUID+78, 20, 88.3872, 265.499, -13.2078, 0, 0, 0),
(@CGUID+78, 21, 84.6359, 258.439, -13.2054, 0, 0, 0),
(@CGUID+78, 22, 76.9477, 257.962, -13.2027, 0, 0, 0),
(@CGUID+109, 1, 208.781, 157.507, -42.2841, 0, 0, 0),
(@CGUID+109, 2, 204.672, 157.262, -42.338, 0, 0, 0),
(@CGUID+109, 3, 200.564, 157.017, -42.3919, 0, 0, 0),
(@CGUID+109, 4, 191.801, 156.494, -42.3675, 0, 0, 0),
(@CGUID+109, 5, 188.834, 156.318, -42.3626, 0, 0, 0),
(@CGUID+109, 6, 188.834, 156.318, -42.3626, 0, 0, 0),
(@CGUID+109, 7, 173.756, 158.343, -42.3484, 0, 0, 0),
(@CGUID+109, 8, 164.909, 162.791, -42.3396, 0, 0, 0),
(@CGUID+109, 9, 155.078, 169.182, -43.113, 0, 0, 0),
(@CGUID+109, 10, 138.186, 182.209, -46.1408, 0, 0, 0),
(@CGUID+109, 11, 129.483, 194.904, -48.3247, 0, 0, 0),
(@CGUID+109, 12, 121.166, 212.933, -48.6825, 0, 0, 0),
(@CGUID+109, 13, 120.617, 233.686, -46.492, 0, 0, 0),
(@CGUID+109, 14, 123.362, 245.1, -45.1537, 0, 0, 0),
(@CGUID+109, 15, 128.454, 239.689, -45.7313, 0, 0, 0),
(@CGUID+109, 16, 127.277, 223.089, -47.6913, 0, 0, 0),
(@CGUID+109, 17, 125.95, 215.666, -48.407, 0, 0, 0),
(@CGUID+109, 18, 130.311, 198.841, -48.5123, 0, 0, 0),
(@CGUID+109, 19, 141.065, 186.745, -46.2314, 0, 0, 0),
(@CGUID+109, 20, 153.516, 175.231, -43.6068, 0, 0, 0),
(@CGUID+109, 21, 160.805, 169.901, -42.6202, 0, 0, 0),
(@CGUID+109, 22, 173.268, 163.253, -42.3472, 0, 0, 0),
(@CGUID+109, 23, 189.937, 163.27, -42.3548, 0, 0, 0),
(@CGUID+109, 24, 204.351, 157.219, -42.42, 0, 0, 0),
(@CGUID+110, 1, 210.848, 161.595, -42.2951, 100, 1000, 5),
(@CGUID+110, 2, 206.148, 162.308, -42.343, 100, 0, 0),
(@CGUID+110, 3, 201.449, 163.02, -42.3909, 100, 0, 0),
(@CGUID+110, 4, 195.171, 163.972, -42.3668, 100, 0, 0),
(@CGUID+110, 5, 192.864, 164.322, -42.3624, 100, 0, 0),
(@CGUID+110, 6, 185.363, 165.272, -42.339, 100, 0, 0),
(@CGUID+110, 7, 178.693, 166.118, -42.0879, 100, 0, 0),
(@CGUID+110, 8, 178.028, 166.202, -42.0973, 100, 0, 0),
(@CGUID+110, 9, 178.028, 166.202, -42.0973, 100, 0, 0),
(@CGUID+110, 10, 166.318, 169.741, -42.1037, 100, 0, 0),
(@CGUID+110, 11, 155.029, 177.772, -43.6118, 100, 0, 0),
(@CGUID+110, 12, 142.266, 189.677, -46.5907, 100, 0, 0),
(@CGUID+110, 13, 131.14, 203.608, -48.8394, 100, 0, 0),
(@CGUID+110, 14, 127.192, 216.227, -48.4439, 100, 0, 0),
(@CGUID+110, 15, 127.055, 230.763, -46.8783, 100, 0, 0),
(@CGUID+110, 16, 127.269, 244.19, -45.1538, 100, 0, 0),
(@CGUID+110, 17, 124.92, 255.491, -45.2476, 100, 0, 0),
(@CGUID+110, 18, 120.452, 249.473, -45.1982, 100, 0, 0),
(@CGUID+110, 19, 120.655, 230.804, -46.8631, 100, 0, 0),
(@CGUID+110, 20, 121.295, 217.322, -48.2715, 100, 0, 0),
(@CGUID+110, 21, 123.283, 203.541, -48.7075, 100, 0, 0),
(@CGUID+110, 22, 128.151, 193.247, -48.2969, 100, 0, 0),
(@CGUID+110, 23, 141.356, 180.626, -45.5281, 100, 0, 0),
(@CGUID+110, 24, 148.569, 174.72, -44.0388, 100, 0, 0),
(@CGUID+110, 25, 159.804, 166.573, -42.5221, 100, 0, 0),
(@CGUID+110, 26, 171.079, 161.572, -42.3455, 100, 0, 0),
(@CGUID+110, 27, 185.74, 157.802, -42.3595, 100, 0, 0),
(@CGUID+110, 28, 199.637, 158.023, -42.3893, 100, 0, 0),
(@CGUID+110, 29, 203.456, 159.606, -42.4103, 100, 0, 0),
(@CGUID+110, 30, 192.864, 164.322, -42.3624, 100, 0, 0),
(@CGUID+110, 31, 178.028, 166.202, -42.0973, 100, 0, 0),
(@CGUID+110, 32, 166.318, 169.741, -42.1037, 100, 0, 0),
(@CGUID+110, 33, 155.029, 177.772, -43.6118, 100, 0, 0),
(@CGUID+110, 34, 142.266, 189.677, -46.5907, 100, 0, 0),
(@CGUID+110, 35, 131.14, 203.608, -48.8394, 100, 0, 0),
(@CGUID+110, 36, 127.192, 216.227, -48.4439, 100, 0, 0),
(@CGUID+110, 37, 127.055, 230.763, -46.8783, 100, 0, 0),
(@CGUID+110, 38, 127.269, 244.19, -45.1538, 100, 0, 0),
(@CGUID+110, 39, 124.92, 255.491, -45.2476, 100, 0, 0),
(@CGUID+110, 40, 120.452, 249.473, -45.1982, 100, 0, 0),
(@CGUID+110, 41, 120.655, 230.804, -46.8631, 100, 0, 0),
(@CGUID+110, 42, 121.295, 217.322, -48.2715, 100, 0, 0),
(@CGUID+110, 43, 123.283, 203.541, -48.7075, 100, 0, 0),
(@CGUID+110, 44, 128.151, 193.247, -48.2969, 100, 0, 0),
(@CGUID+110, 45, 141.356, 180.626, -45.5281, 100, 0, 0),
(@CGUID+110, 46, 148.569, 174.72, -44.0388, 100, 0, 0),
(@CGUID+110, 47, 159.804, 166.573, -42.5221, 100, 0, 0),
(@CGUID+110, 48, 171.079, 161.572, -42.3455, 100, 0, 0),
(@CGUID+110, 49, 185.74, 157.802, -42.3595, 100, 0, 0),
(@CGUID+110, 50, 199.637, 158.023, -42.3893, 100, 0, 0),
(@CGUID+110, 51, 205.919, 162.355, -42.4253, 100, 0, 0),
(@CGUID+111, 1, 207.999, 167.217, -42.2706, 100, 1000, 5),
(@CGUID+111, 2, 204.797, 165.539, -42.3308, 100, 0, 0),
(@CGUID+111, 3, 201.595, 163.861, -42.3909, 100, 0, 0),
(@CGUID+111, 4, 198.155, 162.058, -42.3768, 100, 0, 0),
(@CGUID+111, 5, 189.875, 157.719, -42.3605, 100, 0, 0),
(@CGUID+111, 6, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 7, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 8, 168.82, 171.661, -41.896, 100, 0, 0),
(@CGUID+111, 9, 153.42, 166.476, -43.112, 100, 0, 0),
(@CGUID+111, 10, 149.418, 187.537, -45.0883, 100, 0, 0),
(@CGUID+111, 11, 123.671, 194.798, -48.4265, 100, 0, 0),
(@CGUID+111, 12, 130.132, 225.833, -47.4372, 100, 0, 0),
(@CGUID+111, 13, 118.149, 241.914, -45.4721, 100, 0, 0),
(@CGUID+111, 14, 130.132, 225.833, -47.4372, 100, 0, 0),
(@CGUID+111, 15, 123.483, 194.851, -48.4398, 100, 0, 0),
(@CGUID+111, 16, 149.418, 187.537, -45.0883, 100, 0, 0),
(@CGUID+111, 17, 153.42, 166.476, -43.112, 100, 0, 0),
(@CGUID+111, 18, 168.82, 171.661, -41.896, 100, 0, 0),
(@CGUID+111, 19, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 20, 203.842, 166.232, -42.4048, 100, 0, 0),
(@CGUID+111, 21, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 22, 168.82, 171.661, -41.896, 100, 0, 0),
(@CGUID+111, 23, 153.42, 166.476, -43.112, 100, 0, 0),
(@CGUID+111, 24, 149.418, 187.537, -45.0883, 100, 0, 0),
(@CGUID+111, 25, 123.671, 194.798, -48.4265, 100, 0, 0),
(@CGUID+111, 26, 130.132, 225.833, -47.4372, 100, 0, 0),
(@CGUID+111, 27, 118.149, 241.914, -45.4721, 100, 0, 0),
(@CGUID+111, 28, 130.132, 225.833, -47.4372, 100, 0, 0),
(@CGUID+111, 29, 123.483, 194.851, -48.4398, 100, 0, 0),
(@CGUID+111, 30, 149.418, 187.537, -45.0883, 100, 0, 0),
(@CGUID+111, 31, 153.42, 166.476, -43.112, 100, 0, 0),
(@CGUID+111, 32, 168.82, 171.661, -41.896, 100, 0, 0),
(@CGUID+111, 33, 184.366, 154.832, -42.3587, 100, 0, 0),
(@CGUID+111, 34, 203.842, 166.232, -42.4048, 100, 0, 0),
(@CGUID+112, 1, 135.003, 263.02, -45.1575, 100, 0, 0),
(@CGUID+112, 2, 130.864, 258.34, -45.1872, 100, 0, 0),
(@CGUID+112, 3, 126.724, 253.66, -45.2169, 100, 0, 0),
(@CGUID+112, 4, 118.551, 244.42, -45.1415, 100, 0, 0),
(@CGUID+112, 5, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 6, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 7, 128.595, 213.186, -48.9869, 100, 0, 0),
(@CGUID+112, 8, 125.9, 188.994, -48.0359, 100, 0, 0),
(@CGUID+112, 9, 148.549, 186.426, -45.1298, 100, 0, 0),
(@CGUID+112, 10, 154.665, 166.411, -42.9921, 100, 0, 0),
(@CGUID+112, 11, 187.899, 166.881, -42.3449, 100, 0, 0),
(@CGUID+112, 12, 201.779, 154.332, -42.4044, 100, 0, 0),
(@CGUID+112, 13, 187.899, 166.881, -42.3449, 100, 0, 0),
(@CGUID+112, 14, 154.665, 166.411, -42.9921, 100, 0, 0),
(@CGUID+112, 15, 148.549, 186.426, -45.1298, 100, 0, 0),
(@CGUID+112, 16, 125.9, 188.994, -48.0359, 100, 0, 0),
(@CGUID+112, 17, 128.595, 213.186, -48.9869, 100, 0, 0),
(@CGUID+112, 18, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 19, 130.402, 258.117, -45.2686, 100, 0, 0),
(@CGUID+112, 20, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 21, 128.595, 213.186, -48.9869, 100, 0, 0),
(@CGUID+112, 22, 125.9, 188.994, -48.0359, 100, 0, 0),
(@CGUID+112, 23, 148.549, 186.426, -45.1298, 100, 0, 0),
(@CGUID+112, 24, 154.665, 166.411, -42.9921, 100, 0, 0),
(@CGUID+112, 25, 187.899, 166.881, -42.3449, 100, 0, 0),
(@CGUID+112, 26, 201.779, 154.332, -42.4044, 100, 0, 0),
(@CGUID+112, 27, 187.899, 166.881, -42.3449, 100, 0, 0),
(@CGUID+112, 28, 154.665, 166.411, -42.9921, 100, 0, 0),
(@CGUID+112, 29, 148.549, 186.426, -45.1298, 100, 0, 0),
(@CGUID+112, 30, 125.9, 188.994, -48.0359, 100, 0, 0),
(@CGUID+112, 31, 128.595, 213.186, -48.9869, 100, 0, 0),
(@CGUID+112, 32, 116.469, 242.065, -45.4651, 100, 0, 0),
(@CGUID+112, 33, 130.402, 258.117, -45.2686, 100, 0, 0),
(@CGUID+134, 1, 46.3248, 59.879, -12.9904, 0, 1000, 5),
(@CGUID+134, 2, 53.246, 58.0863, -13.1067, 0, 0, 0),
(@CGUID+134, 3, 60.1673, 56.2936, -13.223, 0, 0, 0),
(@CGUID+134, 4, 62.0403, 55.8085, -13.2236, 0, 0, 0),
(@CGUID+134, 5, 66.1605, 54.7413, -13.2229, 0, 0, 0),
(@CGUID+134, 6, 66.8337, 51.6796, -13.2228, 0, 0, 0),
(@CGUID+134, 7, 67.2014, 50.007, -13.2218, 0, 0, 0),
(@CGUID+134, 8, 69.3164, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+134, 9, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+134, 10, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+134, 11, 65.8643, 14.4801, -13.2172, 0, 0, 0),
(@CGUID+134, 12, 57.2744, 7.4202, -13.215, 0, 0, 0),
(@CGUID+134, 13, 45.6987, 6.42616, -13.1906, 100, 2000, 7),
(@CGUID+135, 1, 93.9537, 62.0803, -13.0053, 0, 1000, 5),
(@CGUID+135, 2, 83.755, 57.2887, -13.114, 0, 0, 0),
(@CGUID+135, 3, 73.5564, 52.4972, -13.2227, 0, 0, 0),
(@CGUID+135, 4, 73.2092, 50.007, -13.2218, 0, 0, 0),
(@CGUID+135, 5, 71.868, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+135, 6, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+135, 7, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+135, 8, 63.0987, 2.38798, -13.1956, 0, 0, 0),
(@CGUID+135, 9, 36.6416, -1.55471, -13.1958, 0, 0, 0),
(@CGUID+135, 10, 25.2589, -4.47658, -13.1882, 0, 0, 0),
(@CGUID+135, 11, 12.3784, -2.32701, -13.1913, 100, 2000, 7),
(@CGUID+136, 1, 53.5243, 60.0879, -13.0071, 0, 1000, 5),
(@CGUID+136, 2, 56.8458, 57.6507, -13.1151, 0, 0, 0),
(@CGUID+136, 3, 60.1673, 55.2135, -13.223, 0, 0, 0),
(@CGUID+136, 4, 61.37, 54.3309, -13.2237, 0, 0, 0),
(@CGUID+136, 5, 64.9833, 51.6796, -13.2229, 0, 0, 0),
(@CGUID+136, 6, 67.2627, 50.007, -13.2218, 0, 0, 0),
(@CGUID+136, 7, 67.693, 49.6913, -13.2218, 0, 0, 0),
(@CGUID+136, 8, 67.8674, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+136, 9, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+136, 10, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+136, 11, 64.0192, 12.3123, -13.219, 0, 0, 0),
(@CGUID+136, 12, 46.6975, 4.63054, -13.1906, 0, 0, 0),
(@CGUID+136, 13, 33.7657, 6.79465, -13.1942, 0, 0, 0),
(@CGUID+136, 14, 22.7783, 7.14236, -13.1889, 100, 2000, 7),
(@CGUID+137, 1, 106.598, 60.561, -12.978, 0, 1000, 5),
(@CGUID+137, 2, 90.0297, 57.4987, -13.1003, 0, 0, 0),
(@CGUID+137, 3, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+137, 4, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+137, 5, 71.4676, 45.247, -13.2218, 0, 0, 0),
(@CGUID+137, 6, 70.8612, 26.3303, -13.191, 0, 0, 0),
(@CGUID+137, 7, 69.0497, 8.98774, -13.2077, 0, 0, 0),
(@CGUID+137, 8, 62.9846, -0.321715, -13.1952, 0, 0, 0),
(@CGUID+137, 9, 57.8027, -0.197392, -13.2067, 100, 2000, 7),
(@CGUID+138, 1, 102.326, 62.6656, -12.9871, 0, 1000, 5),
(@CGUID+138, 2, 87.9912, 57.5445, -13.1049, 0, 0, 0),
(@CGUID+138, 3, 73.6565, 52.4234, -13.2226, 0, 0, 0),
(@CGUID+138, 4, 71.5909, 37.8002, -13.2262, 0, 0, 0),
(@CGUID+138, 5, 70.0568, 10.5743, -13.2209, 0, 0, 0),
(@CGUID+138, 6, 52.6026, -0.81406, -13.2027, 0, 0, 0),
(@CGUID+138, 7, 37.0071, -1.50796, -13.1959, 100, 2000, 7),
(@CGUID+169, 1, 488.894, 233.942, 0.326259, 0, 0, 0),
(@CGUID+169, 2, 486.995, 226.79, 0.256551, 0, 0, 0),
(@CGUID+169, 3, 478.431, 226.508, 0.262045, 0, 0, 0),
(@CGUID+169, 4, 477.013, 237.889, 0.259224, 0, 0, 0),
(@CGUID+169, 5, 487.671, 239.068, 0.253113, 0, 0, 0),
(@CGUID+169, 6, 488.32, 233.606, 0.287945, 0, 0, 0),
(@CGUID+169, 7, 477.156, 233.095, 0.262481, 0, 0, 0),
(@CGUID+170, 1, 548.785, 234.515, 0.272964, 0, 0, 0),
(@CGUID+170, 2, 549.377, 226.822, 0.259893, 0, 0, 0),
(@CGUID+170, 3, 561.08, 227.476, 0.254573, 0, 0, 0),
(@CGUID+170, 4, 561.64, 237.475, 0.255532, 0, 0, 0),
(@CGUID+170, 5, 555.007, 240.95, 0.242657, 0, 0, 0),
(@CGUID+170, 6, 547.999, 238.192, 0.259347, 0, 0, 0),
(@CGUID+170, 7, 547.687, 233.316, 0.391582, 0, 0, 0),
(@CGUID+170, 8, 561.061, 234.231, 0.259537, 0, 0, 0),
(@CGUID+171, 1, 546.471, 145.545, 0.4824, 0, 0, 0),
(@CGUID+171, 2, 546.047, 140.29, 0.364988, 0, 0, 0),
(@CGUID+171, 3, 551.961, 136.194, 0.25952, 0, 0, 0),
(@CGUID+171, 4, 558.133, 137.992, 0.261497, 0, 0, 0),
(@CGUID+171, 5, 560.846, 143.908, 0.257708, 0, 0, 0),
(@CGUID+171, 6, 556.532, 151.794, 0.247789, 0, 0, 0),
(@CGUID+171, 7, 548.102, 150.781, 0.257746, 0, 0, 0),
(@CGUID+171, 8, 546.247, 145.992, 0.482844, 0, 0, 0),
(@CGUID+171, 9, 560.542, 144.799, 0.258607, 0, 0, 0),
(@CGUID+172, 1, 477.852, 143.286, 0.257273, 0, 0, 0),
(@CGUID+172, 2, 479.88, 137.296, 0.261108, 0, 0, 0),
(@CGUID+172, 3, 485.133, 136.294, 0.26037, 0, 0, 0),
(@CGUID+172, 4, 491.34, 139.769, 0.307239, 0, 0, 0),
(@CGUID+172, 5, 492.285, 146.517, 0.560964, 0, 0, 0),
(@CGUID+172, 6, 487.665, 151.593, 0.251122, 0, 0, 0),
(@CGUID+172, 7, 479.172, 150.648, 0.253457, 0, 0, 0),
(@CGUID+172, 8, 475.358, 144.452, 0.255146, 0, 0, 0),
(@CGUID+172, 9, 490.636, 144.562, 0.466811, 0, 0, 0),
(@CGUID+222, 1, 517.5042, 110.2721, 1.933732, 100, 0, 0),
(@CGUID+222, 2, 521.549011, 134.203003, 1.932780, 100, 0, 0),
(@CGUID+264, 1, 513.052, 153.843, 1.9244, 100, 0, 0),
(@CGUID+264, 2, 524.306, 152.404, 1.9236, 100, 0, 0),
(@CGUID+265, 1, 381.3262, -18.90952, 1.910223, 100, 0, 0),
(@CGUID+265, 2, 365.755, -24.64996, 1.910089, 100, 0, 0),
(@CGUID+265, 3, 382.0464, -32.39672, 1.907751, 100, 0, 0),
(@CGUID+265, 4, 365.755, -24.64996, 1.910089, 100, 0, 0),
(@CGUID+267, 1, 365.3776, -68.21585, 1.921432, 100, 0, 0),
(@CGUID+267, 2, 381.3918, -74.53922, 1.918724, 100, 0, 0),
(@CGUID+282, 1, 76.5898, 203.889, -13.1954, 100, 0, 0),
(@CGUID+282, 2, 62.5537, 203.886, -13.1971, 100, 0, 0),
(@CGUID+283, 1, 518.919, 68.903, 1.9103, 100, 0, 0),
(@CGUID+283, 2, 505.479, 58.5282, 1.9274, 100, 0, 0),
(@CGUID+283, 3, 473.636, 57.6172, 1.9303, 100, 0, 0),
(@CGUID+283, 4, 429.107, 57.5724, 2.047, 100, 0, 0),
(@CGUID+283, 5, 473.636, 57.6172, 1.9303, 100, 0, 0),
(@CGUID+283, 6, 505.479, 58.5282, 1.9274, 100, 0, 0),
(@CGUID+283, 7, 518.919, 68.903, 1.9103, 100, 0, 0),
(@CGUID+283, 8, 518.249, 109.256, 1.9397, 100, 0, 0),
(@CGUID+299, 1, 319.66, -84.301, 1.9296, 100, 0, 0),
(@CGUID+299, 2, 364.524, -84.1685, 1.9203, 100, 0, 0),
(@CGUID+299, 3, 374.822, -69.1961, 1.916, 100, 0, 0),
(@CGUID+299, 4, 374.414, -15.9977, 1.9386, 100, 0, 0),
(@CGUID+299, 5, 374.822, -69.1961, 1.916, 100, 0, 0),
(@CGUID+299, 6, 364.524, -84.1685, 1.9203, 100, 0, 0),
(@CGUID+299, 7, 319.66, -84.301, 1.9296, 100, 0, 0),
(@CGUID+299, 8, 284.386, -84.4404, 2.0522, 100, 0, 0),
(@CGUID+302, 1, 356.6418, -75.4379, 1.913136, 100, 0, 0),
(@CGUID+302, 2, 354.8625, -90.40958, 1.935186, 100, 0, 0),
(@CGUID+302, 3, 356.6418, -75.4379, 1.913136, 100, 0, 0),
(@CGUID+302, 4, 368.5422, -87.62833, 1.911937, 100, 0, 0),
(@CGUID+304, 1, 287.6111, -86.71504, 1.967747, 100, 0, 0),
(@CGUID+304, 2, 287.5467, -89.24807, 1.969789, 100, 0, 0),
(@CGUID+304, 3, 282.0956, -88.32939, 2.11288, 100, 0, 0),
(@CGUID+304, 4, 284.0128, -90.10754, 2.062754, 100, 0, 0),
(@CGUID+312, 1, 521.23, 217.629, 1.9231, 100, 0, 0),
(@CGUID+312, 2, 529.804, 226.039, 1.9306, 100, 0, 0),
(@CGUID+316, 1, 519.973, 195.178, 1.9408, 100, 0, 0),
(@CGUID+316, 2, 518.643, 215.888, 1.9158, 100, 0, 0),
(@CGUID+316, 3, 519.973, 195.178, 1.9408, 100, 0, 0),
(@CGUID+316, 4, 518.815, 171.06, 1.9415, 100, 0, 0),
(@CGUID+316, 5, 503.082, 150.078, 1.9316, 100, 0, 0),
(@CGUID+316, 6, 511.24, 137.681, 1.9329, 100, 0, 0),
(@CGUID+316, 7, 526.518, 137.52, 1.9338, 100, 0, 0),
(@CGUID+316, 8, 533.75, 154.742, 1.9302, 100, 0, 0),
(@CGUID+316, 9, 518.815, 171.06, 1.9415, 100, 0, 0);

DELETE FROM creature_movement_template WHERE entry=16807;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
-- Grand Warlock Nethekurse
(16807, 0, 1, 171.8228, 289.9769, -8.185595, 100, 0, 0),
(16807, 0, 2, 178.5562, 288.1734, -7.933493, 100, 0, 0),
(16807, 0, 3, 184.7897, 290.3699, -8.18139, 100, 0, 0),
(16807, 0, 4, 178.5562, 288.1734, -7.933493, 100, 0, 0);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+52, 0, 0, 0, 0, 333, 0, '18950'), -- Shattered Hand Sentry
(@CGUID+53, 0, 0, 0, 0, 333, 0, '18950'), -- Shattered Hand Sentry
(@CGUID+54, 0, 0, 0, 0, 333, 0, '18950'), -- Shattered Hand Sentry
(@CGUID+55, 0, 0, 0, 0, 333, 0, '18950'), -- Shattered Hand Sentry
(@CGUID+63, 0, 0, 0, 0, 0, 0, '8876 16093'), -- Shattered Hand Brawler
(@CGUID+64, 0, 0, 0, 0, 0, 0, '8876 16093'), -- Shattered Hand Brawler
(@CGUID+65, 0, 0, 0, 0, 0, 0, '8876 16093'), -- Shattered Hand Brawler
(@CGUID+68, 0, 0, 0, 0, 0, 0, '16093'), -- Shadowmoon Acolyte
(@CGUID+70, 0, 0, 0, 0, 375, 0, NULL), -- Shattered Hand Reaver
(@CGUID+71, 0, 0, 0, 0, 375, 0, NULL), -- Shattered Hand Reaver
(@CGUID+72, 0, 0, 0, 0, 375, 0, NULL), -- Shattered Hand Reaver
(@CGUID+79, 0, 0, 2, 0, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+80, 0, 0, 2, 0, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+81, 0, 0, 2, 0, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+132, 0, 0, 0, 0, 333, 0, NULL), -- Shattered Hand Heathen
(@CGUID+133, 0, 0, 0, 0, 333, 0, NULL), -- Shattered Hand Heathen
(@CGUID+134, 0, 0, 0, 0, 333, 0, NULL), -- Shattered Hand Heathen
(@CGUID+135, 0, 0, 0, 0, 333, 0, NULL), -- Shattered Hand Heathen
(@CGUID+136, 0, 0, 0, 0, 333, 0, NULL), -- Shattered Hand Heathen
(@CGUID+137, 0, 0, 0, 0, 333, 0, NULL), -- Shattered Hand Heathen
(@CGUID+138, 0, 0, 0, 0, 333, 0, NULL), -- Shattered Hand Heathen
(@CGUID+274, 0, 0, 0, 0, 389, 0, NULL), -- Shattered Hand Heathen
(@CGUID+275, 0, 0, 2, 0, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+276, 0, 0, 2, 0, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+277, 0, 0, 2, 0, 214, 0, NULL), -- Shattered Hand Sharpshooter
(@CGUID+278, 0, 0, 0, 0, 375, 0, NULL), -- Shattered Hand Reaver
(@CGUID+279, 0, 0, 0, 0, 375, 0, NULL), -- Shattered Hand Reaver
(@CGUID+280, 0, 0, 0, 0, 389, 0, NULL), -- Shattered Hand Savage
(@CGUID+281, 0, 0, 0, 0, 389, 0, NULL), -- Shattered Hand Savage
(@CGUID+313, 0, 0, 0, 0, 389, 0, NULL), -- Shattered Hand Savage
(@CGUID+314, 0, 0, 0, 0, 389, 0, NULL), -- Shattered Hand Savage
(@CGUID+315, 0, 0, 0, 0, 389, 0, NULL); -- Shattered Hand Heathen

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(16507, 0, 0, 0, 0, 0, 0, '18950'), -- Shattered Hand Sentry
(16593, 0, 0, 1, 16, 0, 0, '8876'), -- Shattered Hand Brawler
(16700, 0, 0, 0, 0, 0, 0, '30472'), -- Shattered Hand Legionnaire
(16704, 0, 0, 2, 0, 0, 0, NULL), -- Shattered Hand Sharpshooter
(16808, 0, 0, 0, 0, 0, 0, '19818'), -- Warchief Kargath Bladefist -- stealth detect?
(17462, 0, 0, 0, 0, 0, 0, '18950'), -- Shattered Hand Zealot
(17464, 0, 0, 0, 0, 389, 0, '19818'), -- Shattered Hand Gladiator -- Needs Script Faction 16, 1693 ~ 75-80% HP
(17471, 0, 0, 0, 0, 0, 0, NULL), -- Lesser Shadow Fissure
(17578, 0, 0, 0, 0, 0, 0, '7056'), -- Training Dummy
(17669, 0, 0, 0, 0, 0, 0, '18950'), -- Rabid Warhound
(17671, 0, 0, 0, 0, 333, 0, '12782 18950'), -- Shattered Hand Champion
(17693, 0, 0, 0, 0, 0, 0, '18950'), -- Shattered Hand Scout
(17695, 0, 0, 1, 16, 0, 0, '30991'), -- Shattered Hand Assassin
(18370, 0, 0, 0, 0, 0, 0, '32250'), -- Wild Shadow Fissure
(20923, 0, 0, 0, 0, 0, 0, '18950'); -- Blood Guard Porung

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@CGUID+134, @CGUID+74, 1024), -- Shattered Hand Savage -> Shattered Hand Legionnaire
(@CGUID+135, @CGUID+74, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+136, @CGUID+74, 1024), -- Shattered Hand Savage -> Shattered Hand Legionnaire
(@CGUID+137, @CGUID+74, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+138, @CGUID+74, 1024), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+52, @CGUID+53, 1167), -- Shattered Hand Sentry -> Shattered Hand Sentry
-- (@CGUID+219, @CGUID+139, 1167), -- Shadowmoon Darkcaster -> Shattered Hand Heathen -- or each side together
-- (@CGUID+67, @CGUID+142, 1167), -- Shadowmoon Acolyte -> Shattered Hand Heathen
-- (@CGUID+220, @CGUID+141, 1167), -- Shadowmoon Darkcaster -> Shattered Hand Heathen
-- (@CGUID+66, @CGUID+140, 1167), -- Shadowmoon Acolyte -> Shattered Hand Heathen
(@CGUID+54, @CGUID+55, 1167), -- Shattered Hand Sentry -> Shattered Hand Sentry
(@CGUID+79, @CGUID+75, 1167), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+80, @CGUID+75, 1167), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+132, @CGUID+75, 1167), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+70, @CGUID+75, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+81, @CGUID+76, 1167), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+71, @CGUID+76, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+72, @CGUID+76, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+133, @CGUID+76, 1167), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+275, @CGUID+282, 1167), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+279, @CGUID+282, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+277, @CGUID+282, 1167), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+278, @CGUID+282, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+276, @CGUID+282, 1167), -- Shattered Hand Sharpshooter -> Shattered Hand Legionnaire
(@CGUID+69, @CGUID+78, 1167), -- Shadowmoon Acolyte -> Shattered Hand Legionnaire
(@CGUID+73, @CGUID+78, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+221, @CGUID+78, 1167), -- Shadowmoon Darkcaster -> Shattered Hand Legionnaire
(@CGUID+90, @CGUID+78, 1167), -- Fel Orc Convert -> Shattered Hand Legionnaire
(@CGUID+56, @CGUID+78, 1167), -- Shattered Hand Savage -> Shattered Hand Legionnaire
(@CGUID+89, @CGUID+78, 1167), -- Fel Orc Convert -> Shattered Hand Legionnaire
(@CGUID+187, @CGUID+189, 1167), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+188, @CGUID+189, 1167), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+98, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+99, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+100, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+101, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+102, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+103, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+104, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+105, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+106, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+107, @CGUID+94, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+108, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+113, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+114, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+115, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+116, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+117, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+118, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+119, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+120, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+121, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+122, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+123, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+124, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+125, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+126, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+127, @CGUID+97, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+128, @CGUID+96, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+129, @CGUID+93, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+130, @CGUID+95, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+131, @CGUID+92, 1679), -- Creeping Oozeling -> Creeping Ooze
(@CGUID+146, @CGUID+148, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+147, @CGUID+148, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+150, @CGUID+149, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+151, @CGUID+149, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+152, @CGUID+149, 3), -- Shattered Hand Zealot -> Shattered Hand Zealot
(@CGUID+149, @CGUID+143, 1), -- Shattered Hand Zealot -> Shattered Hand Archer
(@CGUID+153, @CGUID+169, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+154, @CGUID+169, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+155, @CGUID+169, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+156, @CGUID+169, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+157, @CGUID+170, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+158, @CGUID+170, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+159, @CGUID+170, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+160, @CGUID+170, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+161, @CGUID+171, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+162, @CGUID+171, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+163, @CGUID+171, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+164, @CGUID+171, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+165, @CGUID+172, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+166, @CGUID+172, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+167, @CGUID+172, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+168, @CGUID+172, 1167), -- Shattered Hand Gladiator -> Shattered Hand Centurion
(@CGUID+307, @CGUID+312, 1167), -- Shattered Hand Savage -> Shattered Hand Legionnaire
(@CGUID+308, @CGUID+312, 1167), -- Shadowmoon Acolyte -> Shattered Hand Legionnaire
(@CGUID+309, @CGUID+312, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+310, @CGUID+312, 1167), -- Shattered Hand Savage -> Shattered Hand Legionnaire
(@CGUID+311, @CGUID+312, 1167), -- Shattered Hand Savage -> Shattered Hand Legionnaire
(@CGUID+317, @CGUID+316, 1679), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+318, @CGUID+316, 1679), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+259, @CGUID+264, 1167), -- Shattered Hand Heathen -> Shattered Hand Legionnaire
(@CGUID+260, @CGUID+264, 1167), -- Shadowmoon Darkcaster -> Shattered Hand Legionnaire
(@CGUID+261, @CGUID+264, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+320, @CGUID+264, 1167), -- Shadowmoon Acolyte -> Shattered Hand Legionnaire
(@CGUID+319, @CGUID+264, 1167), -- Shattered Hand Reaver -> Shattered Hand Legionnaire
(@CGUID+192, @CGUID+193, 1167), -- Shattered Hand Champion -> Shattered Hand Champion
(@CGUID+284, @CGUID+283, 1679), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+285, @CGUID+283, 1679), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+196, @CGUID+197, 1167), -- Shattered Hand Champion -> Shattered Hand Champion
(@CGUID+263, @CGUID+262, 1167), -- Shattered Hand Champion -> Shattered Hand Champion
(@CGUID+300, @CGUID+299, 1679), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+301, @CGUID+299, 1679), -- Rabid Warhound -> Shattered Hand Houndmaster
(@CGUID+306, @CGUID+305, 1167); -- Shattered Hand Champion -> Shattered Hand Champion

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(16809, 540, 16808, 1, 0), -- Warbringer O'mrogg -> Warchief Kargath Bladefist
(17427, 540, 17427, 3, 0), -- Shattered Hand Archer -> Shattered Hand Archer
(17461, 540, 17427, 3, 0), -- Shattered Hand Blood Guard -> Shattered Hand Archer
(20923, 540, 17427, 3, 0); -- Blood Guard Porung -> Shattered Hand Archer

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(@CGUID+1, 2110, 540, 3, 115.869, 223.215, -47.7406, 1.51629, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+2, 2110, 540, 3, -10.3597, 6.42759, -13.2078, 5.64778, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+3, 2110, 540, 3, 501.895, 293.72, 1.9389, 5.75975, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+4, 2110, 540, 3, 251.579, 263.924, -13.2118, 4.73688, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+5, 2110, 540, 3, 177.031, 300.648, -8.19186, 3.68007, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+6, 2110, 540, 3, 47.0979, 254.544, -13.0907, 1.07684, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+7, 2110, 540, 3, 320.906, 294.456, 2.01263, 2.98451, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+8, 2110, 540, 3, 344.047, 335.721, 1.9456, 3.23042, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+9, 2110, 540, 3, 501.513, 293.966, 1.93947, 0.445941, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+10, 2110, 540, 3, 119.419, 255.938, -45.2524, 0.830412, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+11, 2110, 540, 3, 413.007, 92.7835, 1.03479, 0.917774, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+12, 2110, 540, 3, 203.879, 165.702, -42.4057, 6.14243, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+13, 2110, 540, 3, 501.594, 53.5415, 1.94273, 0.330827, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+14, 2110, 540, 3, 133.197, 261.577, -13.2012, 2.3947, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+15, 2110, 540, 3, 49.8876, 281.703, -13.1265, 4.09254, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+16, 2110, 540, 3, 159.809, 246.503, -13.1881, 2.41328, 86400, 86400, 5, 0, 0, 1), -- Black Rat
(@CGUID+17, 2914, 540, 3, 169.113, 160.488, -42.3438, 6.15895, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+18, 2914, 540, 3, 196.605, 156.598, -42.3818, 2.6321, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+19, 2914, 540, 3, 124.75, 221.811, -47.8098, 4.6856, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+20, 2914, 540, 3, 127.502, 195.562, -48.3811, 5.06052, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+21, 2914, 540, 3, 158.569, 179.447, -43.3181, 2.12398, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+22, 2914, 540, 3, 184.983, 157.058, -42.359, 2.86419, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+23, 2914, 540, 3, 180.964, 221.136, -19.9495, 4.79997, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+24, 2914, 540, 3, 176.379, 194.505, -29.3616, 2.21331, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+25, 2914, 540, 3, 119.84, 234.17, -46.3605, 3.14159, 86400, 86400, 10, 0, 0, 1), -- Snake
(@CGUID+26, 4075, 540, 3, 93.8544, 77.9175, -13.2221, 1.79534, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+27, 4075, 540, 3, 336.401, -80.9012, 1.93798, 4.28647, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+28, 4075, 540, 3, 74.3365, 12.5382, -13.2194, 4.50366, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+29, 4075, 540, 3, 348.926, 15.3367, 1.05846, 5.78935, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+30, 4075, 540, 3, 46.9932, 279.064, -13.1237, 5.7629, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+31, 4075, 540, 3, 46.9123, 63.7751, -13.1153, 5.46641, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+32, 4075, 540, 3, 502.01, 293.909, 1.93946, 1.97847, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+33, 4075, 540, 3, 368.352, -47.8858, 1.93028, 1.12947, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+34, 4075, 540, 3, 194.412, 245.801, -13.1823, 2.82348, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+35, 4075, 540, 3, 536.59, 295.011, 1.94342, 6.26132, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+36, 4075, 540, 3, 526.892, 338.525, 2.11571, 0.276872, 86400, 86400, 5, 0, 0, 1), -- Rat
(@CGUID+37, 9699, 540, 3, 58.3455, 220.712, -13.2181, 2.27722, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+38, 9699, 540, 3, 58.5732, 225.986, -13.1171, 4.85973, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+39, 9699, 540, 3, 57.4501, 111.621, -13.2218, 5.81864, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+40, 9699, 540, 3, 82.703, 112.605, -13.1385, 1.80114, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+41, 9699, 540, 3, 81.9415, 225.795, -13.1873, 5.65857, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+42, 9699, 540, 3, 81.9493, 221.776, -13.2032, 4.03066, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+43, 9699, 540, 3, 50.9596, 188.825, -13.2365, 0.78815, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+44, 9699, 540, 3, 49.4711, 151.141, -13.1444, 2.51327, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+45, 9699, 540, 3, 56.0556, 223.233, -13.2109, 5.97285, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+46, 9699, 540, 3, 80.5337, 116.628, -13.2218, 3.8644, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+47, 9699, 540, 3, 475.297, 328.561, 1.93489, 0.559711, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+48, 9699, 540, 3, 474.959, 302.775, 2.0046, 2.09439, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+49, 9699, 540, 3, 437.785, 299.469, 1.90173, 2.05887, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+50, 9699, 540, 3, 365.673, 327.968, 1.91816, 3.92003, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+51, 9699, 540, 3, 86.9678, 155.807, -13.1448, 1.74533, 86400, 86400, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+52, 16507, 540, 3, 65.572, 39.0145, -13.2211, 4.76371, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sentry
(@CGUID+53, 16507, 540, 3, 74.3971, 39.177, -13.2211, 4.3341, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sentry
(@CGUID+54, 16507, 540, 3, 64.9133, 95.2946, -13.2228, 4.8577, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sentry
(@CGUID+55, 16507, 540, 3, 75.3152, 95.737, -13.2228, 4.45951, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sentry
(@CGUID+56, 16523, 540, 3, 72.6862, 267.434, -13.1023, 3.94444, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Savage
-- (@CGUID+57, 16593, 540, 3, 309.952, -85.0858, 1.91646, 6.28175, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
-- (@CGUID+58, 16593, 540, 3, 515.126, 278.282, 1.91803, 1.70523, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
-- (@CGUID+59, 16593, 540, 3, 523.378, 279.885, 1.91803, 1.54815, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
-- (@CGUID+60, 16593, 540, 3, 68.6549, 200.035, -13.1973, 4.79336, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
-- (@CGUID+61, 16593, 540, 3, 302.413, -78.5592, 1.9382, 0.0103457, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
-- (@CGUID+62, 16593, 540, 3, 301.13, -91.7611, 1.9382, 0.0260537, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
(@CGUID+63, 16593, 540, 3, 43.5588, 265.281, -10.7783, 1.658063, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
(@CGUID+64, 16593, 540, 3, 43.5914, 253.725, -10.9988, 1.58825, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
(@CGUID+65, 16593, 540, 3, 69.6697, 286.034, -10.8391, 0.122173, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Brawler
(@CGUID+66, 16594, 540, 3, 82.4351, 76.1707, -13.1121, 3.735, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Acolyte
(@CGUID+67, 16594, 540, 3, 63.3135, 84.0945, -13.1156, 4.66003, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Acolyte
(@CGUID+68, 16594, 540, 3, 83.5451, 286.75, -10.8789, 3.036873, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Acolyte
(@CGUID+69, 16594, 540, 3, 83.3397, 265.004, -13.1239, 3.66519, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Acolyte
(@CGUID+70, 16699, 540, 3, 71.5349, 130.864, -13.1991, 4.62365, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+71, 16699, 540, 3, 63.2694, 185.208, -13.2393, 4.73753, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+72, 16699, 540, 3, 72.4708, 184.452, -13.238, 4.72051, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+73, 16699, 540, 3, 77.862, 270.631, -13.1145, 3.89208, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+74, 16700, 540, 3, 62.7101, 2.91998, -13.0349, 3.16464, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+75, 16700, 540, 3, 68.7698, 133.221, -13.1937, 4.72575, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Legionnaire
(@CGUID+76, 16700, 540, 3, 69.5766, 186.23, -13.2424, 4.69381, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Legionnaire
(@CGUID+77, 16700, 540, 3, 57.0575, 73.036, -13.1202, 0.753955, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+78, 16700, 540, 3, 76.4215, 261.567, -13.2031, 100, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+79, 16704, 540, 3, 74.8027, 130.074, -13.2007, 4.62365, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+80, 16704, 540, 3, 62.9769, 129.768, -13.1948, 5.01111, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+81, 16704, 540, 3, 76.022, 183.854, -13.2361, 4.65506, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+82, 16807, 540, 3, 178.928, 289.487, -8.18744, 4.70166, 86400, 86400, 0, 0, 0, 2), -- Grand Warlock Nethekurse
(@CGUID+83, 16808, 540, 3, 231.25, -83.64489, 5.023408, 6.265732, 86400, 86400, 0, 0, 0, 0), -- Warchief Kargath Bladefist
(@CGUID+84, 16809, 540, 3, 373.489, 56.7953, -7.29401, 0.730151, 86400, 86400, 0, 0, 0, 0), -- Warbringer O'mrogg
(@CGUID+85, 17083, 540, 3, 172.556, 258.227, -13.191, 1.41189, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Convert
(@CGUID+86, 17083, 540, 3, 165.181, 261.511, -13.1926, 0.942743, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Convert
(@CGUID+87, 17083, 540, 3, 182.482, 258.635, -13.1788, 1.70929, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Convert
(@CGUID+88, 17083, 540, 3, 189.616, 259.866, -13.1966, 1.95748, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Convert
(@CGUID+89, 17083, 540, 3, 78.1933, 264.122, -13.1129, 3.71755, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Convert
(@CGUID+90, 17083, 540, 3, 67.6849, 270.865, -13.1014, 4.17134, 7200, 7200, 0, 0, 0, 0), -- Fel Orc Convert
(@CGUID+91, 17302, 540, 3, 149.408, -83.9418, 2.01231, 1.11701, 86400, 86400, 0, 0, 0, 0), -- Hellfire Military Hard Mode Timer
(@CGUID+92, 17356, 540, 3, 138.423, 189.354, -46.8948, 1.83825, 7200, 7200, 5, 0, 0, 1), -- Creeping Ooze
(@CGUID+93, 17356, 540, 3, 162.355, 169.274, -42.4084, 1.87538, 7200, 7200, 5, 0, 0, 1), -- Creeping Ooze
(@CGUID+94, 17356, 540, 3, 147.502, 179.938, -44.5792, 2.4191, 7200, 7200, 5, 0, 0, 1), -- Creeping Ooze
(@CGUID+95, 17356, 540, 3, 191.868, 162.182, -42.3617, 2.2475, 7200, 7200, 5, 0, 0, 1), -- Creeping Ooze
(@CGUID+96, 17356, 540, 3, 175.914, 164.713, -42.2624, 2.7796, 7200, 7200, 5, 0, 0, 1), -- Creeping Ooze
(@CGUID+97, 17356, 540, 3, 124.141, 208.786, -48.894, 2.27221, 7200, 7200, 5, 0, 0, 1), -- Creeping Ooze
(@CGUID+98, 17357, 540, 3, 163.768, 166.468, -42.3358, 2.51788, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+99, 17357, 540, 3, 140.024, 189.972, -46.8456, 2.38138, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+100, 17357, 540, 3, 150.414, 178.932, -44.1642, 2.29484, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+101, 17357, 540, 3, 164.897, 169.435, -42.1612, 2.22609, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+102, 17357, 540, 3, 137.191, 186.834, -46.7469, 1.70266, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+103, 17357, 540, 3, 149.655, 181.523, -44.4461, 2.34902, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+104, 17357, 540, 3, 147.165, 182.024, -44.9088, 2.34902, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+105, 17357, 540, 3, 159.993, 167.41, -42.5863, 2.7268, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+106, 17357, 540, 3, 145.066, 179.112, -44.8451, 2.30583, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+107, 17357, 540, 3, 147.843, 177.019, -44.2836, 2.36159, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+108, 17357, 540, 3, 140.323, 187.314, -46.3915, 1.83066, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+109, 17357, 540, 3, 208.781, 157.507, -42.2841, 3.20117, 10, 10, 0, 0, 0, 2), -- Creeping Oozeling
(@CGUID+110, 17357, 540, 3, 210.848, 161.595, -42.2951, 2.99115, 10, 10, 0, 0, 0, 2), -- Creeping Oozeling
(@CGUID+111, 17357, 540, 3, 207.999, 167.217, -42.2706, 3.62433, 10, 10, 0, 0, 0, 2), -- Creeping Oozeling
(@CGUID+112, 17357, 540, 3, 135.003, 263.02, -45.1575, 3.98822, 10, 10, 0, 0, 0, 2), -- Creeping Oozeling
(@CGUID+113, 17357, 540, 3, 193.846, 159.943, -42.3644, 2.30662, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+114, 17357, 540, 3, 136.148, 189.949, -47.2087, 1.78513, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+115, 17357, 540, 3, 124.402, 210.795, -48.9305, 3.9438, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+116, 17357, 540, 3, 194.568, 162.28, -42.3654, 2.79357, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+117, 17357, 540, 3, 191.95, 164.168, -42.3563, 2.79357, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+118, 17357, 540, 3, 178.068, 162.26, -42.3361, 2.76215, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+119, 17357, 540, 3, 126.863, 206.611, -48.8628, 1.44017, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+120, 17357, 540, 3, 176.454, 167.258, -42.0528, 2.76608, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+121, 17357, 540, 3, 121.906, 209.147, -48.9523, 1.86679, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+122, 17357, 540, 3, 123.8, 205.96, -48.7739, 5.99503, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+123, 17357, 540, 3, 174.927, 162.66, -42.3366, 2.79749, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+124, 17357, 540, 3, 191.397, 159.199, -42.3587, 2.39888, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+125, 17357, 540, 3, 163.06, 171.363, -42.3153, 2.52574, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+126, 17357, 540, 3, 179.021, 165.185, -42.152, 2.73466, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+127, 17357, 540, 3, 126.955, 210.208, -49.0893, 2.4013, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+128, 17357, 540, 3, 174.108, 165.207, -42.2668, 2.82891, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+129, 17357, 540, 3, 160.462, 170.581, -42.7061, 1.87512, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+130, 17357, 540, 3, 190.181, 162.989, -42.3513, 2.35767, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+131, 17357, 540, 3, 138.444, 191.164, -47.1833, 6.21809, 7200, 7200, 0, 0, 0, 0), -- Creeping Oozeling
(@CGUID+132, 17420, 540, 3, 66.2363, 130.973, -13.196, 4.80743, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen -- maybe pooled with Shattered Hand Savage
(@CGUID+133, 17420, 540, 3, 67.1698, 183.923, -13.2365, 4.69381, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen
(@CGUID+134, 17420, 540, 3, 46.3248, 59.879, -12.9904, 0, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+135, 17420, 540, 3, 93.9537, 62.0803, -13.0053, 0, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+136, 17420, 540, 3, 53.5243, 60.0879, -13.0071, 0, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+137, 17420, 540, 3, 106.598, 60.561, -12.978, 0, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+138, 17420, 540, 3, 102.326, 62.6656, -12.9871, 0, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+139, 17420, 540, 3, 54.4005, 77.7188, -13.1093, 5.55015, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen
(@CGUID+140, 17420, 540, 3, 84.0513, 74.3693, -13.1203, 3.71755, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen
(@CGUID+141, 17420, 540, 3, 75.3346, 83.7984, -13.1169, 4.13643, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen
(@CGUID+142, 17420, 540, 3, 65.4234, 84.6101, -13.1184, 4.60767, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen
(@CGUID+143, 17427, 540, 3, 514.5014, 319.6571, 2.042556, 3.368485, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Archer
(@CGUID+144, 17427, 540, 3, 514.8049, 312.0412, 2.036432, 3.001966, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Archer
(@CGUID+145, 17461, 540, 1, 512.6873, 315.6516, 2.040503, 2.984513, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Blood Guard
(@CGUID+146, 17462, 540, 3, 338.854, 312.779, 1.91817, 1.46265, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Zealot
(@CGUID+147, 17462, 540, 3, 336.91, 315.106, 1.91817, 0.17067, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Zealot
(@CGUID+148, 17462, 540, 3, 339.462, 318.231, 1.91786, 4.66315, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Zealot
(@CGUID+149, 17462, 540, 3, 499.912, 321.851, 1.94442, 3.26121, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Zealot
(@CGUID+150, 17462, 540, 3, 498.971, 310.249, 1.94442, 2.8371, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Zealot
(@CGUID+151, 17462, 540, 3, 501.247, 318.65, 1.94352, 3.2832, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Zealot
(@CGUID+152, 17462, 540, 3, 500.503, 313.616, 1.94355, 3.05544, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Zealot
(@CGUID+153, 17464, 540, 3, 484.7101, 228.6204, 0.2637859, 0.1717992, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+154, 17464, 540, 3, 483.2578, 237.5195, 0.2584997, 0.6143849, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+155, 17464, 540, 3, 484.7308, 238.5586, 0.2574458, 3.755978, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+156, 17464, 540, 3, 486.1626, 228.8724, 0.2778895, 3.313391, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+157, 17464, 540, 3, 548.5923, 228.6846, 0.4044583, 5.979727, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+158, 17464, 540, 3, 555.0992, 238.7755, 0.3294373, 5.404207, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+159, 17464, 540, 3, 558.6774, 234.4561, 0.3471324, 2.234460, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+160, 17464, 540, 3, 555.4427, 226.5396, 0.3495834, 2.854925, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+161, 17464, 540, 3, 549.194, 141.8354, 0.3548833, 6.141387, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+162, 17464, 540, 3, 552.132, 149.6014, 0.3331723, 5.47626, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+163, 17464, 540, 3, 554.6675, 146.9543, 0.2431367, 2.334695, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+164, 17464, 540, 3, 552.8227, 141.3174, 0.261879, 2.999802, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+165, 17464, 540, 3, 483.5475, 139.4899, 0.3403123, 0.1774868, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+166, 17464, 540, 3, 480.1908, 144.1539, 0.3408363, 0.8439918, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+167, 17464, 540, 3, 484.6209, 149.1361, 0.3307303, 3.985587, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+168, 17464, 540, 3, 489.5807, 140.5721, 0.4669733, 3.319079, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Gladiator
(@CGUID+169, 17465, 540, 3, 482.66, 233.56, 0.254553, 0.0431869, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Centurion
(@CGUID+170, 17465, 540, 3, 555.097, 234.431, 0.254016, 3.13765, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Centurion
(@CGUID+171, 17465, 540, 3, 552.912, 145.053, 0.250317, 2.98136, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Centurion
(@CGUID+172, 17465, 540, 3, 483.874, 144.226, 0.250255, 3.32065, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Centurion
(@CGUID+173, 17552, 540, 3, 191.091, 279.152, 6.34782, 1.00312, 86400, 86400, 0, 0, 0, 0), -- Hellfire Death Brazier
(@CGUID+174, 17552, 540, 3, 165.173, 278.996, 7.50297, 0.586188, 86400, 86400, 0, 0, 0, 0), -- Hellfire Death Brazier
(@CGUID+175, 17552, 540, 3, 179.624, 258.152, 7.79562, 0.680079, 86400, 86400, 0, 0, 0, 0), -- Hellfire Death Brazier
(@CGUID+176, 17578, 540, 3, 511.147, 130.799, 1.92598, 0.488524, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+177, 17578, 540, 3, 511.778, 117.368, 1.9168, 0.548997, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+178, 17578, 540, 3, 522.42, 117.163, 1.91874, 1.087, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+179, 17578, 540, 3, 511.992, 192.58, 1.93087, 0.162584, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+180, 17578, 540, 3, 525.785, 181.549, 1.92531, 2.97213, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+181, 17578, 540, 3, 511.152, 208.69, 1.90768, 0.22384, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+182, 17611, 540, 3, 336.707, -84.0521, 1.99244, 3.12414, 86400, 86400, 0, 0, 0, 0), -- Warchief's Portal
-- (@CGUID+183, 17622, 540, 3, 522.562, 218.903, 1.92645, 1.57014, 7200, 7200, 0, 0, 0, 0), -- Sharpshooter Guard
-- (@CGUID+184, 17622, 540, 3, 518.124, 218.962, 1.92134, 1.57014, 7200, 7200, 0, 0, 0, 0), -- Sharpshooter Guard
-- (@CGUID+185, 17622, 540, 3, 107.171, 263.394, -13.223, 3.11652, 7200, 7200, 0, 0, 0, 0), -- Sharpshooter Guard
-- (@CGUID+186, 17622, 540, 3, 106.153, 270.77, -13.223, 3.11259, 7200, 7200, 0, 0, 0, 0), -- Sharpshooter Guard
(@CGUID+187, 17669, 540, 3, 101.729, 262.265, -13.2171, 3.13714, 7200, 7200, 0, 0, 0, 0), -- Rabid Warhound
(@CGUID+188, 17669, 540, 3, 101.762, 269.832, -13.2199, 3.13714, 7200, 7200, 0, 0, 0, 0), -- Rabid Warhound
(@CGUID+189, 17670, 540, 3, 107.029, 266.682, -13.222, 3.1738, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Houndmaster
-- (@CGUID+190, 17671, 540, 3, 512.984, 107.969, 1.93758, 1.51526, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
-- (@CGUID+191, 17671, 540, 3, 523.381, 107.758, 1.93875, 1.68282, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+192, 17671, 540, 3, 513.087, 94.7579, 1.90828, 1.60951, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+193, 17671, 540, 3, 523.138, 94.6208, 1.90828, 1.55715, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
-- (@CGUID+194, 17671, 540, 3, 484.281, 51.2979, 1.91697, 0.245535, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
-- (@CGUID+195, 17671, 540, 3, 472.769, 65.183, 1.92978, 6.19885, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+196, 17671, 540, 3, 465.579, 49.8267, 1.9288, 0.157045, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+197, 17671, 540, 3, 454.893, 65.7382, 1.92061, 6.23341, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+198, 17687, 540, 3, 475.607, 317.259, 1.93511, 3.53184, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+199, 17687, 540, 3, 474.604, 316.266, 1.93224, 3.52502, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+200, 17687, 540, 3, 458.635, 316.226, 1.9386, 1.09048, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+201, 17687, 540, 3, 442.53, 312.552, 1.89971, 4.90947, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+202, 17687, 540, 3, 443.132, 315.544, 1.98497, 0, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+203, 17687, 540, 3, 425.697, 315.906, 1.9384, 0.0896327, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+204, 17687, 540, 3, 424.878, 314.647, 1.94027, 5.80904, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+205, 17687, 540, 3, 405.523, 315.378, 1.89959, 3.40177, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+206, 17687, 540, 3, 317.974, 314.801, 1.9146, 0.34688, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+207, 17687, 540, 3, 317.211, 315.742, 1.91492, 1.1656, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+208, 17687, 540, 3, 351.347, 315.593, 1.91816, 4.00343, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+209, 17687, 540, 3, 351.773, 317.038, 1.91816, 0.501879, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+210, 17687, 540, 3, 368.151, 317.076, 1.9157, 1.26919, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+211, 17687, 540, 3, 369.298, 320.104, 1.91694, 1.42251, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+212, 17687, 540, 3, 384.094, 319.218, 1.93988, 2.53266, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+213, 17687, 540, 3, 384.278, 314.477, 1.93969, 3.99809, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+214, 17687, 540, 3, 408.506, 316.692, 1.91144, 0.0542292, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+215, 17687, 540, 3, 294.722, 317.899, 1.91816, 0.186297, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+216, 17687, 540, 3, 287.066, 315.53, 1.87145, 6.21995, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+217, 17687, 540, 3, 455.513, 317.784, 1.94178, 3.58176, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+218, 17693, 540, 3, 342.09, 316.053, 1.91817, 3.10806, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Scout
(@CGUID+219, 17694, 540, 3, 56.461, 79.2481, -13.0995, 5.46288, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Darkcaster
(@CGUID+220, 17694, 540, 3, 77.3988, 82.8904, -13.1101, 3.9619, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Darkcaster
(@CGUID+221, 17694, 540, 3, 72.871, 274.047, -13.1036, 4.08407, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Darkcaster
(@CGUID+222, 17695, 540, 3, 518.3307, 125.028, 1.981626, 4.529583, 86400, 86400, 0, 0, 0, 2), -- Shattered Hand Assassin
-- (@CGUID+223, 17695, 540, 3, 343.544, 320.971, 1.91699, 3.16915, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
-- (@CGUID+224, 17695, 540, 3, 342.917, 310.972, 1.91699, 3.14166, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
-- (@CGUID+225, 17695, 540, 3, 172.6816, -80.65692, 2.083456, 2.041111, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
-- (@CGUID+226, 17695, 540, 3, 167.8295, -86.55783, 1.994963, 4.702784, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
-- (@CGUID+227, 17695, 540, 3, 292.149, -82.25267, 1.997391, 5.102002, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
-- (@CGUID+228, 19523, 540, 3, 374.379, 51.2857, 30.6439, 0.0349066, 86400, 86400, 0, 0, 0, 0), -- O'mrogg's Left Head
-- (@CGUID+229, 19524, 540, 3, 374.357, 64.5048, 31.2206, 6.07375, 86400, 86400, 0, 0, 0, 0), -- O'mrogg's Right Head
(@CGUID+230, 20709, 540, 3, 249.962, -98.2689, 5.0227, 3.61283, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+231, 20709, 540, 3, 251.623, -84.1218, 5.02172, 5.25344, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+232, 20709, 540, 3, 260.148, -83.7987, 4.18425, 2.6529, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+233, 20709, 540, 3, 190.912, -84.5878, 2.68429, 5.75959, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+234, 20709, 540, 3, 223.158, -83.8724, 5.02341, 6.10865, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+235, 20709, 540, 3, 223.486, -68.3885, 5.02341, 0.942478, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+236, 20709, 540, 3, 215.421, -89.0572, 5.02342, 5.21853, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+237, 20709, 540, 3, 198.564, -84.262, 3.9186, 4.01426, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+238, 20709, 540, 3, 235.637, -99.7462, 5.02341, 5.34071, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+239, 20709, 540, 3, 207.548, -84.2186, 5.02176, 0.122173, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+240, 20709, 540, 3, 236.281, -68.8607, 5.02341, 5.14872, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+241, 20709, 540, 3, 229.37, -63.3378, 5.02341, 2.75762, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+242, 20709, 540, 3, 222.929, -99.3172, 5.02341, 0.366519, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+243, 20709, 540, 3, 229.213, -91.2796, 5.02341, 0.244346, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+244, 20709, 540, 3, 243.45, -77.2963, 5.0234, 4.55531, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+245, 20709, 540, 3, 267.997, -84.1363, 3.17459, 5.86431, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+246, 20709, 540, 3, 209.371, -97.9959, 5.02256, 5.25344, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+247, 20709, 540, 3, 229.574, -76.4437, 5.02341, 2.14675, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+248, 20709, 540, 3, 242.707, -90.59, 5.02341, 5.11381, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+249, 20709, 540, 3, 216.092, -104.188, 5.0228, 1.48353, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+250, 20709, 540, 3, 216.282, -64.6925, 5.02281, 3.75246, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+251, 20709, 540, 3, 249.602, -69.3923, 5.0222, 1.39626, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+252, 20709, 540, 3, 229.357, -104.793, 5.02341, 3.4383, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+253, 20709, 540, 3, 210.256, -70.4671, 5.02276, 0.925025, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+254, 20709, 540, 3, 216.1, -78.2583, 5.02342, 5.09636, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+255, 20709, 540, 3, 235.918, -83.9248, 5.02341, 1.81514, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+256, 20709, 540, 3, 242.375, -63.7785, 5.02294, 3.05433, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+257, 20709, 540, 3, 243.196, -104.702, 5.02294, 5.14872, 86400, 86400, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+258, 20923, 540, 2, 512.6873, 315.6516, 2.040503, 2.984513, 86400, 86400, 0, 0, 0, 0), -- Blood Guard Porung
(@CGUID+259, 17420, 540, 3, 517.953, 147.302, 1.92749, 1.28571, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen
(@CGUID+260, 17694, 540, 3, 524.261, 148.377, 1.92894, 2.05776, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Darkcaster
(@CGUID+261, 16699, 540, 3, 521.292, 147.236, 1.92796, 1.67448, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+262, 17671, 540, 3, 377.21, -9.37007, 1.915, 1.66335, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+263, 17671, 540, 3, 370.305, -10.1071, 1.92163, 1.60444, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+264, 16700, 540, 3, 524.306, 152.404, 1.92361, 3.02694, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+265, 17695, 540, 3, 380.2267, -31.53144, 1.908013, 2.697728, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Assassin
(@CGUID+266, 17695, 540, 3, 374.586, -46.7073, 1.9149, 2.44247, 7200, 7200, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+267, 17695, 540, 3, 366.7008, -68.73834, 1.921208, 2.765528, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Assassin
-- (@CGUID+268, 17695, 540, 3, 255.539, 271.457, -13.2214, 3.7196, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
-- (@CGUID+269, 17695, 540, 3, 249.822, 278.099, -13.2214, 3.66855, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
-- (@CGUID+270, 17695, 540, 3, 522.598, 261.011, 1.9455, 1.49693, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
-- (@CGUID+271, 17695, 540, 3, 516.742, 261.347, 1.9455, 1.50007, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
-- (@CGUID+272, 17695, 540, 3, 492.056, 62.2633, 1.93799, 6.22895, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
-- (@CGUID+273, 17695, 540, 3, 491.793, 56.1323, 1.93364, 6.19832, 86400, 86400, 0, 0, 0, 0), -- Shattered Hand Assassin
(@CGUID+274, 17420, 540, 3, 512.464, 131.663, 1.92606, 3.72829, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen
(@CGUID+275, 16704, 540, 3, 62.3102, 207.759, -13.1978, 4.7401, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+276, 16704, 540, 3, 77.1728, 207.646, -13.1964, 4.6223, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+277, 16704, 540, 3, 69.8649, 212.634, -13.2109, 4.65764, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sharpshooter
(@CGUID+278, 16699, 540, 3, 73.4567, 209.972, -13.2053, 4.60659, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+279, 16699, 540, 3, 66.0253, 210.383, -13.2053, 4.7244, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+280, 16523, 540, 3, 513.719, 119.954, 1.89271, 4.02832, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Savage
(@CGUID+281, 16523, 540, 3, 523.853, 120.123, 1.90081, 4.3841, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Savage
(@CGUID+282, 16700, 540, 3, 62.5538, 203.886, -13.1971, 0.000229836, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+283, 17670, 540, 3, 518.249, 109.256, 1.93975, 1.57866, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Houndmaster
(@CGUID+284, 17669, 540, 3, 515.445, 106.184, 1.93429, 1.57866, 7200, 7200, 0, 0, 0, 0), -- Rabid Warhound
(@CGUID+285, 17669, 540, 3, 520.66, 106.225, 1.93429, 1.57866, 7200, 7200, 0, 0, 0, 0), -- Rabid Warhound
(@CGUID+286, 17695, 540, 3, 518.477, 173.616, 1.9417, 1.6165, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+287, 17695, 540, 3, 517.895, 202.398, 1.9305, 1.5851, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+288, 17695, 540, 3, 257.455, 307.29, -5.471, 4.4046, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+289, 17695, 540, 3, 297.21, 316.263, 1.917, 3.1127, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+290, 17695, 540, 3, 320.005, 328.762, 1.9297, 4.495, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+291, 17695, 540, 3, 330.883, 296.918, 1.9263, 1.4672, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+292, 17695, 540, 3, 427.249, 57.6792, 2.0958, 0.0103, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+293, 17695, 540, 3, 531.541, 333.608, 2.1095, 3.9334, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+294, 17695, 540, 3, 467.415, 57.921, 1.936, 0.0064, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+295, 17695, 540, 3, 274.497, 317.332, -0.3597, 6.27, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
-- (@CGUID+296, 17695, 540, 3, 513.532, 101.959, 1.923, 6.27, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
-- (@CGUID+297, 17695, 540, 3, 522.042, 103.098, 1.923, 6.27, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+298, 17695, 540, 3, 315.915, 58.2639, 1.0244, 6.2479, 86400, 86400, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+299, 17670, 540, 3, 284.386, -84.4405, 2.0522, 6.28306, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Houndmaster
(@CGUID+300, 17669, 540, 3, 281.243, -81.5338, 2.13436, 6.28306, 7200, 7200, 0, 0, 0, 0), -- Rabid Warhound
(@CGUID+301, 17669, 540, 3, 281.242, -87.1548, 2.13436, 6.28306, 7200, 7200, 0, 0, 0, 0), -- Rabid Warhound
(@CGUID+302, 17695, 540, 3, 363.8085, -82.77927, 1.913863, 5.48575, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Assassin
(@CGUID+303, 17695, 540, 3, 319.64, -84.401, 1.9295, 3.1195, 7200, 7200, 5, 0, 0, 1), -- Shattered Hand Assassin
(@CGUID+304, 17695, 540, 3, 287.0375, -88.17879, 2.06635, 1.347343, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Assassin
(@CGUID+305, 17671, 540, 3, 277.489, -77.9325, 1.75056, 6.26107, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+306, 17671, 540, 3, 277.239, -89.2278, 1.8988, 6.26107, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Champion
(@CGUID+307, 16523, 540, 3, 530.849, 222.267, 1.93884, 2.42317, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Savage
(@CGUID+308, 16594, 540, 3, 528.314, 221.395, 1.93961, 2.5779, 7200, 7200, 0, 0, 0, 0), -- Shadowmoon Acolyte
(@CGUID+309, 16699, 540, 3, 528.544, 218.872, 1.9375, 2.48365, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+310, 16523, 540, 3, 525.508, 218.829, 1.93186, 2.4915, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Savage
(@CGUID+311, 16523, 540, 3, 525.811, 216.323, 1.93222, 2.51506, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Savage
(@CGUID+312, 16700, 540, 3, 529.804, 226.039, 1.93066, 3.93899, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Legionnaire
(@CGUID+313, 16523, 540, 3, 514.952, 193.188, 1.93514, 3.38036, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Savage
(@CGUID+314, 16523, 540, 3, 523.916, 181.768, 1.92525, 6.0666, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Savage
(@CGUID+315, 17420, 540, 3, 512.925, 209.197, 1.91431, 3.39292, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Heathen
(@CGUID+316, 17670, 540, 3, 518.815, 171.06, 1.94158, 3.09919, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Houndmaster
(@CGUID+317, 17669, 540, 3, 520.182, 167.783, 1.94016, 3.09684, 7200, 7200, 0, 0, 0, 0), -- Rabid Warhound
(@CGUID+318, 17669, 540, 3, 520.444, 173.615, 1.94172, 3.09684, 7200, 7200, 0, 0, 0, 0), -- Rabid Warhound
(@CGUID+319, 16699, 540, 3, 512.442, 150.36, 1.92749, 0.816827, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Reaver
(@CGUID+320, 16594, 540, 3, 515.09, 148.282, 1.92749, 0.875732, 7200, 7200, 0, 0, 0, 0); -- Shadowmoon Acolyte

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+1, 181679, 540, 3, 168.66, 291.89, -6.93, 0, 0, 0, 0, 0, 180, 180, 0, 1), -- Fel Brazier
(@OGUID+2, 181679, 540, 3, 187.77, 292.46, -7.33, 0, 0, 0, 0, 0, 180, 180, 0, 1), -- Fel Brazier
(@OGUID+3, 182539, 540, 3, 141.516, 266.366, -11.5682, 3.14159, 0, 0, 0, 0, 120, 120, 0, 1), -- Grand Warlock Chamber Door
(@OGUID+4, 182540, 540, 3, 214.488, 266.167, -11.5181, 0, 0, 0, 0, 0, 120, 120, 0, 1), -- Grand Warlock Chamber Door
(@OGUID+5, 184177, 540, 3, -42.0439, -26.523, -14.1031, -1.70302, 0, 0, 0, 0, 0, 0, 0, 0), -- Doodad_InstancePortal_PurpleDifficulty01
(@OGUID+6, 184178, 540, 3, -42.0505, -26.5066, -14.0962, -1.69993, 0, 0, 0, 0, 0, 0, 0, 0), -- Doodad_InstancePortal_PurpleDifficultyIcon01
(@OGUID+7, 184940, 540, 3, 473.4622, 144.0872, 0.594992, 0.06981169, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Bound Adamantite Chest
(@OGUID+8, 184941, 540, 3, 473.4622, 144.0872, 0.594992, 0.06981169, 0, 0, 0, 0, 86400, 86400, 100, 1); -- Solid Adamantite Chest

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+1, 3, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@PGUID+71, 1, 'Shattered Halls - Master Chest Pool'); -- gameobject

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+222, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+223, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+224, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+268, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+269, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+270, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+271, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+272, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+273, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+286, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+287, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+288, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+289, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+290, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+291, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+292, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+293, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+294, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+295, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+296, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
-- (@CGUID+297, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)'),
(@CGUID+298, @PGUID+1, 0, 'Shattered Halls - Shattered Hand Assassin (17695)');

-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@OGUID+7, @PGUID+71, 0, 'Shadow Labyrinth - Bound Adamantite Chest (184940)'),
(@OGUID+8, @PGUID+71, 0, 'Shadow Labyrinth - Solid Adamantite Chest (184941)');

-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(@CGUID+82, 0, 22800, 0, 0, 0, 2); -- Grand Warlock Nethekurse (Feast of Winter Veil - Main Event)

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscript_string WHERE entry BETWEEN 2000001260 AND 2000001269;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000001260,'Show them no quarter! Form up!',10191,1,0,15,'Shattered Hand Legionnaire'),
(2000001261,'Form ranks and make the intruders pay!',10190,1,0,15,'Shattered Hand Legionnaire'),
(2000001262,'Get ready! This shouldn''t take long...',10189,1,0,15,'Shattered Hand Legionnaire'),
(2000001263,'Form up! Let''s make quick work of them!',10188,1,0,15,'Shattered Hand Legionnaire'),
(2000001264,'Line up and crush these fools!',10187,1,0,15,'Shattered Hand Legionnaire'),

(2000001265,'Power to the Fel Horde!',0,0,0,5,'Shattered Hand Legionnaire'),
(2000001266,'Break their bones!',0,0,0,5,'Shattered Hand Legionnaire'),
(2000001267,'Know your master, you worthless mutts!',0,0,0,25,'Shattered Hand Legionnaire'),

(2000001268,'Serve the Fel Horde!',0,0,0,5,'Shattered Hand Legionnaire'),
(2000001269,'We''ll drink their blood and feast on their bones!',0,0,0,15,'Shattered Hand Legionnaire');

DELETE FROM dbscripts_on_relay WHERE id IN (10113,10114,10115,10116,10117,10118,10119,10120);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(10113,0,0,10051,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - random yell'),
(10113,0,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - send Custom AI Event A'),
(10114,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - pause waypoints'),
(10114,3,37,0,0,0,17420,20,2,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - move to Heathen'),
(10114,4,36,0,0,0,17420,20,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - face Legionnaire'),
(10114,4,36,0,0,0,17420,5,1,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - face Heathen'),
(10114,5,1,66,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - OneShotSalute'),
(10114,6,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotSalute'),
(10114,7,1,1,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - OneShotTalk'),
(10114,8,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotExclamation'),
(10114,9,36,1,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - reset orientation'),
(10114,10,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - unpause waypoints'),

(10115,5,45,0,10052,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - 50% force bow, 50% force cheer'),

(10116,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - pause waypoints'),
(10116,3,37,0,0,0,17420,20,2,0,0,0,0,0,0,0,0,'Legionnaire - move to Heathen'),
(10116,5,36,0,0,0,17420,3,0,0,0,0,0,0,0,0,0,'Heathen - face Legionnaire'),
(10116,5,36,0,0,0,17694,3,0,0,0,0,0,0,0,0,0,'Darkcaster - face Legionnaire'),
(10116,5,36,0,0,0,16594,3,0,0,0,0,0,0,0,0,0,'Acolyte - face Legionnaire'),
(10116,7,36,0,0,0,17420,3,1,0,0,0,0,0,0,0,0,'Legionnaire - face Heathen'),
(10116,8,45,0,10053,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - 50% force kneel & laugh, 50% force stand & salute'),
(10116,14,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - unpause waypoints'),

(10117,0,28,8,0,0,17420,3,0,0,0,0,0,0,0,0,0,'Heathen - Kneel'),
(10117,0,28,8,0,0,17694,3,0,0,0,0,0,0,0,0,0,'Darkcaster - Kneel'),
(10117,0,28,8,0,0,16594,3,0,0,0,0,0,0,0,0,0,'Acolyte - Kneel'),
(10117,2,0,0,0,0,0,0,0,2000001267,0,0,0,0,0,0,0,'Legionnaire - say'),
(10117,4,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,'Legionnaire - Laugh'),

(10118,0,28,0,0,0,17420,3,0,0,0,0,0,0,0,0,0,'Heathen - Stand'),
(10118,0,28,0,0,0,17694,3,0,0,0,0,0,0,0,0,0,'Darkcaster - Stand'),
(10118,0,28,0,0,0,16594,3,0,0,0,0,0,0,0,0,0,'Acolyte - Stand'),
(10118,1,1,113,0,0,17420,3,0,0,0,0,0,0,0,0,0,'Heathen - Salute'),
(10118,1,1,113,0,0,17694,3,0,0,0,0,0,0,0,0,0,'Darkcaster - Salute'),
(10118,1,1,113,0,0,16594,3,0,0,0,0,0,0,0,0,0,'Acolyte - Salute'),
(10118,3,0,0,0,0,0,0,0,2000001265,2000001266,0,0,0,0,0,0,'Legionnaire - say'),

(10119,0,0,0,0,0,0,0,0,2000001268,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - say'),
(10119,0,35,7,40,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - send Custom AI Event C'),

(10120,0,0,0,0,0,0,0,0,2000001269,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - say'),
(10120,0,35,8,40,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - send Custom AI Event D');

DELETE FROM dbscript_random_templates WHERE id IN (10050,10051,10052,10053,10054);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10050, 1, 10113, 10, 'Shattered Hand Legionnaire - yell'),
(10050, 1, 10114, 10, 'Shattered Hand Legionnaire - approach ally'),
(10050, 1, 0, 80, 'Shattered Hand Legionnaire - nothing'),

(10051, 0, 2000001260, 0, 'Shattered Hand Legionnaire - random yell 1'),
(10051, 0, 2000001261, 0, 'Shattered Hand Legionnaire - random yell 2'),
(10051, 0, 2000001262, 0, 'Shattered Hand Legionnaire - random yell 3'),
(10051, 0, 2000001263, 0, 'Shattered Hand Legionnaire - random yell 4'),
(10051, 0, 2000001264, 0, 'Shattered Hand Legionnaire - random yell 5'),

(10052, 1, 10119, 0, 'Shattered Hand Legionnaire - force bow'),
(10052, 1, 10120, 0, 'Shattered Hand Legionnaire - force cheer'),

(10053, 1, 10117, 0, 'Shattered Hand Legionnaire - force kneel & laugh'),
(10053, 1, 10118, 0, 'Shattered Hand Legionnaire - force stand & salute'),

(10054, 1, 10115, 10, 'Shattered Hand Legionnaire - force bow/cheer'),
(10054, 1, 10116, 10, 'Shattered Hand Legionnaire - talk event'),
(10054, 1, 0, 80, 'Shattered Hand Legionnaire - nothing');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1670001,1670002);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1670001, 0, 45, 0, 10050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Hand Legionnaire - 10% chance to yell, 10% chance to talk'),
(1670002, 0, 45, 0, 10054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Legionnaire - 10% force bow/cheer, 10% talk event');

-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES


