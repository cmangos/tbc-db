/* DBScriptData
DBName: Hellfire Citadel - The Shattered Halls
DBScriptName: instance_shattered_halls
DB%Complete: 80
DBComment:
EndDBScriptData */

SET @CGUID := 5400000; -- creatures
SET @OGUID := 5400000; -- gameobjects
SET @SGGUID := 5400000; -- spawn_groups
SET @CONDITIONID := 54000; -- Condition id
SET @WSID := 54000; -- Worldstate id
SET @RElAYID := 540000; -- Relay Scripts

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(@CGUID+120, 1, 62.7101, 2.91998, -13.0349, 0, 0, 1670001),
(@CGUID+120, 2, 56.5515, 2.61235, -13.1199, 0, 0, 1670001),
(@CGUID+120, 3, 50.393, 2.30471, -13.2049, 0, 0, 1670001),
(@CGUID+120, 4, 38.6893, 1.72007, -13.1907, 0, 0, 1670001),
(@CGUID+120, 5, 37.24, 1.64768, -13.1956, 0, 0, 1670001),
(@CGUID+120, 6, 21.5489, 1.67225, -13.1886, 0, 0, 1670001),
(@CGUID+120, 7, 9.57407, 1.84343, -13.1916, 0, 0, 1670001),
(@CGUID+120, 8, 21.5489, 1.67225, -13.1886, 0, 0, 1670001),
(@CGUID+120, 9, 37.24, 1.64768, -13.1956, 0, 0, 1670001),
(@CGUID+120, 10, 55.6437, 2.6325, -13.2086, 0, 0, 1670001),
(@CGUID+121, 1, 46.3248, 59.879, -12.9904, 0, 1000, 5),
(@CGUID+121, 2, 53.246, 58.0863, -13.1067, 0, 0, 0),
(@CGUID+121, 3, 60.1673, 56.2936, -13.223, 0, 0, 0),
(@CGUID+121, 4, 62.0403, 55.8085, -13.2236, 0, 0, 0),
(@CGUID+121, 5, 66.1605, 54.7413, -13.2229, 0, 0, 0),
(@CGUID+121, 6, 66.8337, 51.6796, -13.2228, 0, 0, 0),
(@CGUID+121, 7, 67.2014, 50.007, -13.2218, 0, 0, 0),
(@CGUID+121, 8, 69.3164, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+121, 9, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+121, 10, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+121, 11, 65.8643, 14.4801, -13.2172, 0, 0, 0),
(@CGUID+121, 12, 57.2744, 7.4202, -13.215, 0, 0, 0),
(@CGUID+121, 13, 45.6987, 6.42616, -13.1906, 100, 2000, 1742001),
(@CGUID+122, 1, 83.755, 57.2887, -13.114, 0, 1000, 5),
(@CGUID+122, 2, 73.5564, 52.4972, -13.2227, 0, 0, 0),
(@CGUID+122, 3, 73.2092, 50.007, -13.2218, 0, 0, 0),
(@CGUID+122, 4, 71.868, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+122, 5, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+122, 6, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+122, 7, 63.0987, 2.38798, -13.1956, 0, 0, 0),
(@CGUID+122, 8, 36.6416, -1.55471, -13.1958, 0, 0, 0),
(@CGUID+122, 9, 25.2589, -4.47658, -13.1882, 0, 0, 0),
(@CGUID+122, 10, 12.3784, -2.32701, -13.1913, 100, 2000, 1742001),
(@CGUID+123, 1, 53.5243, 60.0879, -13.0071, 0, 1000, 5),
(@CGUID+123, 2, 56.8458, 57.6507, -13.1151, 0, 0, 0),
(@CGUID+123, 3, 60.1673, 55.2135, -13.223, 0, 0, 0),
(@CGUID+123, 4, 61.37, 54.3309, -13.2237, 0, 0, 0),
(@CGUID+123, 5, 64.9833, 51.6796, -13.2229, 0, 0, 0),
(@CGUID+123, 6, 67.2627, 50.007, -13.2218, 0, 0, 0),
(@CGUID+123, 7, 67.693, 49.6913, -13.2218, 0, 0, 0),
(@CGUID+123, 8, 67.8674, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+123, 9, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+123, 10, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+123, 11, 64.0192, 12.3123, -13.219, 0, 0, 0),
(@CGUID+123, 12, 46.6975, 4.63054, -13.1906, 0, 0, 0),
(@CGUID+123, 13, 33.7657, 6.79465, -13.1942, 0, 0, 0),
(@CGUID+123, 14, 22.7783, 7.14236, -13.1889, 100, 2000, 1742001),
(@CGUID+124, 1, 90.0297, 57.4987, -13.1003, 0, 1000, 5),
(@CGUID+124, 2, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+124, 3, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+124, 4, 71.4676, 45.247, -13.2218, 0, 0, 0),
(@CGUID+124, 5, 70.8612, 26.3303, -13.191, 0, 0, 0),
(@CGUID+124, 6, 69.0497, 8.98774, -13.2077, 0, 0, 0),
(@CGUID+124, 7, 62.9846, -0.321715, -13.1952, 0, 0, 0),
(@CGUID+124, 8, 57.8027, -0.197392, -13.2067, 100, 2000, 1742001),
(@CGUID+125, 1, 87.9912, 57.5445, -13.1049, 0, 1000, 5),
(@CGUID+125, 2, 73.6565, 52.4234, -13.2226, 0, 0, 0),
(@CGUID+125, 3, 71.5909, 37.8002, -13.2262, 0, 0, 0),
(@CGUID+125, 4, 70.0568, 10.5743, -13.2209, 0, 0, 0),
(@CGUID+125, 5, 52.6026, -0.81406, -13.2027, 0, 0, 0),
(@CGUID+125, 6, 37.0071, -1.50796, -13.1959, 100, 2000, 1742001),
(@CGUID+126, 1, 46.3248, 59.879, -12.9904, 0, 1000, 5),
(@CGUID+126, 2, 53.246, 58.0863, -13.1067, 0, 0, 0),
(@CGUID+126, 3, 60.1673, 56.2936, -13.223, 0, 0, 0),
(@CGUID+126, 4, 62.0403, 55.8085, -13.2236, 0, 0, 0),
(@CGUID+126, 5, 66.1605, 54.7413, -13.2229, 0, 0, 0),
(@CGUID+126, 6, 66.8337, 51.6796, -13.2228, 0, 0, 0),
(@CGUID+126, 7, 67.2014, 50.007, -13.2218, 0, 0, 0),
(@CGUID+126, 8, 69.3164, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+126, 9, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+126, 10, 69.6013, 39.0919, -13.2298, 0, 0, 0),
(@CGUID+126, 11, 65.8643, 14.4801, -13.2172, 0, 0, 0),
(@CGUID+126, 12, 57.2744, 7.4202, -13.215, 0, 0, 0),
(@CGUID+126, 13, 45.6987, 6.42616, -13.1906, 100, 2000, 1742001),
(@CGUID+127, 2, 83.755, 57.2887, -13.114, 0, 1000, 5),
(@CGUID+127, 3, 73.5564, 52.4972, -13.2227, 0, 0, 0),
(@CGUID+127, 4, 73.2092, 50.007, -13.2218, 0, 0, 0),
(@CGUID+127, 5, 71.868, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+127, 6, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+127, 7, 70.8613, 33.1676, -13.2132, 0, 0, 0),
(@CGUID+127, 8, 63.0987, 2.38798, -13.1956, 0, 0, 0),
(@CGUID+127, 9, 36.6416, -1.55471, -13.1958, 0, 0, 0),
(@CGUID+127, 10, 25.2589, -4.47658, -13.1882, 0, 0, 0),
(@CGUID+127, 11, 12.3784, -2.32701, -13.1913, 100, 2000, 1742001),
(@CGUID+128, 1, 53.5243, 60.0879, -13.0071, 0, 1000, 5),
(@CGUID+128, 2, 56.8458, 57.6507, -13.1151, 0, 0, 0),
(@CGUID+128, 3, 60.1673, 55.2135, -13.223, 0, 0, 0),
(@CGUID+128, 4, 61.37, 54.3309, -13.2237, 0, 0, 0),
(@CGUID+128, 5, 64.9833, 51.6796, -13.2229, 0, 0, 0),
(@CGUID+128, 6, 67.2627, 50.007, -13.2218, 0, 0, 0),
(@CGUID+128, 7, 67.693, 49.6913, -13.2218, 0, 0, 0),
(@CGUID+128, 8, 67.8674, 40.3876, -13.2218, 0, 0, 0),
(@CGUID+128, 9, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+128, 10, 67.8932, 39.0141, -13.2296, 0, 0, 0),
(@CGUID+128, 11, 64.0192, 12.3123, -13.219, 0, 0, 0),
(@CGUID+128, 12, 46.6975, 4.63054, -13.1906, 0, 0, 0),
(@CGUID+128, 13, 33.7657, 6.79465, -13.1942, 0, 0, 0),
(@CGUID+128, 14, 22.7783, 7.14236, -13.1889, 100, 2000, 1742001),
(@CGUID+129, 1, 90.0297, 57.4987, -13.1003, 0, 1000, 5),
(@CGUID+129, 2, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+129, 3, 73.4619, 54.4364, -13.2227, 0, 0, 0),
(@CGUID+129, 4, 71.4676, 45.247, -13.2218, 0, 0, 0),
(@CGUID+129, 5, 70.8612, 26.3303, -13.191, 0, 0, 0),
(@CGUID+129, 6, 69.0497, 8.98774, -13.2077, 0, 0, 0),
(@CGUID+129, 7, 62.9846, -0.321715, -13.1952, 0, 0, 0),
(@CGUID+129, 8, 57.8027, -0.197392, -13.2067, 100, 2000, 1742001),
(@CGUID+130, 1, 87.9912, 57.5445, -13.1049, 0, 1000, 5),
(@CGUID+130, 2, 73.6565, 52.4234, -13.2226, 0, 0, 0),
(@CGUID+130, 3, 71.5909, 37.8002, -13.2262, 0, 0, 0),
(@CGUID+130, 4, 70.0568, 10.5743, -13.2209, 0, 0, 0),
(@CGUID+130, 5, 52.6026, -0.81406, -13.2027, 0, 0, 0),
(@CGUID+130, 6, 37.0071, -1.50796, -13.1959, 100, 2000, 1742001),
(@CGUID+133, 1, 56.966682,74.25795,-13.222891, 0, 0, 0),
(@CGUID+133, 2, 64.00517,79.559944,-13.22254, 0, 0, 0),
(@CGUID+133, 3, 73.133644, 78.94907, -13.222672, 0, 0, 0),
(@CGUID+133, 4, 80.202415, 73.17268,-13.22248, 0, 0, 0),
(@CGUID+133, 5, 73.133644, 78.94907, -13.222672, 0, 0, 0),
(@CGUID+133, 6, 64.00517, 79.559944, -13.22254, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
-- Critters
(@CGUID+1, 2110, 540, 3, 115.869, 223.215, -47.7406, 1.51629, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+2, 2110, 540, 3, -10.3597, 6.42759, -13.2078, 5.64778, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+3, 2110, 540, 3, 501.895, 293.72, 1.9389, 5.75975, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+4, 2110, 540, 3, 251.579, 263.924, -13.2118, 4.73688, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+5, 2110, 540, 3, 177.031, 300.648, -8.19186, 3.68007, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+6, 2110, 540, 3, 47.0979, 254.544, -13.0907, 1.07684, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+7, 2110, 540, 3, 320.906, 294.456, 2.01263, 2.98451, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+8, 2110, 540, 3, 344.047, 335.721, 1.9456, 3.23042, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+9, 2110, 540, 3, 501.513, 293.966, 1.93947, 0.445941, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+10, 2110, 540, 3, 119.419, 255.938, -45.2524, 0.830412, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+11, 2110, 540, 3, 413.007, 92.7835, 1.03479, 0.917774, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+12, 2110, 540, 3, 203.879, 165.702, -42.4057, 6.14243, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+13, 2110, 540, 3, 501.594, 53.5415, 1.94273, 0.330827, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+14, 2110, 540, 3, 133.197, 261.577, -13.2012, 2.3947, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+15, 2110, 540, 3, 49.8876, 281.703, -13.1265, 4.09254, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+16, 2110, 540, 3, 159.809, 246.503, -13.1881, 2.41328, 900, 900, 5, 0, 0, 1), -- Black Rat
(@CGUID+17, 2914, 540, 3, 169.113, 160.488, -42.3438, 6.15895, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+18, 2914, 540, 3, 196.605, 156.598, -42.3818, 2.6321, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+19, 2914, 540, 3, 124.75, 221.811, -47.8098, 4.6856, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+20, 2914, 540, 3, 127.502, 195.562, -48.3811, 5.06052, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+21, 2914, 540, 3, 158.569, 179.447, -43.3181, 2.12398, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+22, 2914, 540, 3, 184.983, 157.058, -42.359, 2.86419, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+23, 2914, 540, 3, 180.964, 221.136, -19.9495, 4.79997, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+24, 2914, 540, 3, 176.379, 194.505, -29.3616, 2.21331, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+25, 2914, 540, 3, 119.84, 234.17, -46.3605, 3.14159, 900, 900, 10, 0, 0, 1), -- Snake
(@CGUID+26, 4075, 540, 3, 93.8544, 77.9175, -13.2221, 1.79534, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+27, 4075, 540, 3, 336.401, -80.9012, 1.93798, 4.28647, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+28, 4075, 540, 3, 74.3365, 12.5382, -13.2194, 4.50366, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+29, 4075, 540, 3, 348.926, 15.3367, 1.05846, 5.78935, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+30, 4075, 540, 3, 46.9932, 279.064, -13.1237, 5.7629, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+31, 4075, 540, 3, 46.9123, 63.7751, -13.1153, 5.46641, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+32, 4075, 540, 3, 502.01, 293.909, 1.93946, 1.97847, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+33, 4075, 540, 3, 368.352, -47.8858, 1.93028, 1.12947, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+34, 4075, 540, 3, 194.412, 245.801, -13.1823, 2.82348, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+35, 4075, 540, 3, 536.59, 295.011, 1.94342, 6.26132, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+36, 4075, 540, 3, 526.892, 338.525, 2.11571, 0.276872, 900, 900, 5, 0, 0, 1), -- Rat
(@CGUID+37, 9699, 540, 3, 58.3455, 220.712, -13.2181, 2.27722, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+38, 9699, 540, 3, 58.5732, 225.986, -13.1171, 4.85973, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+39, 9699, 540, 3, 57.4501, 111.621, -13.2218, 5.81864, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+40, 9699, 540, 3, 82.703, 112.605, -13.1385, 1.80114, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+41, 9699, 540, 3, 81.9415, 225.795, -13.1873, 5.65857, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+42, 9699, 540, 3, 81.9493, 221.776, -13.2032, 4.03066, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+43, 9699, 540, 3, 50.9596, 188.825, -13.2365, 0.78815, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+44, 9699, 540, 3, 49.4711, 151.141, -13.1444, 2.51327, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+45, 9699, 540, 3, 56.0556, 223.233, -13.2109, 5.97285, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+46, 9699, 540, 3, 80.5337, 116.628, -13.2218, 3.8644, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+47, 9699, 540, 3, 475.297, 328.561, 1.93489, 0.559711, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+48, 9699, 540, 3, 474.959, 302.775, 2.0046, 2.09439, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+49, 9699, 540, 3, 437.785, 299.469, 1.90173, 2.05887, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+50, 9699, 540, 3, 365.673, 327.968, 1.91816, 3.92003, 900, 900, 5, 0, 0, 1), -- Fire Beetle
(@CGUID+51, 9699, 540, 3, 86.9678, 155.807, -13.1448, 1.74533, 900, 900, 5, 0, 0, 1), -- Fire Beetle
-- Triggers/Dummys
(@CGUID+52, 17302, 540, 3, 149.408, -83.94183, 2.01231, 1.117011, 86400, 86400, 0, 0, 0, 0), -- Hellfire Military Hard Mode Timer
(@CGUID+53, 17552, 540, 3, 191.091, 279.1522, 6.347817, 1.003119, 86400, 86400, 0, 0, 0, 0), -- Hellfire Death Brazier
(@CGUID+54, 17552, 540, 3, 165.1729, 278.9961, 7.502974, 0.5861885, 86400, 86400, 0, 0, 0, 0), -- Hellfire Death Brazier
(@CGUID+55, 17552, 540, 3, 179.6241, 258.1517, 7.795619, 0.6800787, 86400, 86400, 0, 0, 0, 0), -- Hellfire Death Brazier
(@CGUID+56, 17578, 540, 3, 508.1696, 131.2284, 2.018857, 1.22173, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+57, 17578, 540, 3, 512.5972, 119.7658, 1.994586, 0.6632251, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+58, 17578, 540, 3, 523.4672, 119.2777, 1.946144, 2.042035, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+59, 17578, 540, 3, 512.9296, 186.9605, 2.00013, 0.7679449, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+60, 17578, 540, 3, 525.0672, 176.6558, 2.016024, 2.356194, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+61, 17578, 540, 3, 512.1739, 205.3514, 2.007787, 0.6981317, 86400, 86400, 0, 0, 0, 0), -- Training Dummy
(@CGUID+62, 17611, 540, 3, 336.7071, -84.05206, 1.992441, 3.124139, 86400, 86400, 0, 0, 0, 0), -- Warchief's Portal
(@CGUID+63, 15384, 540, 3, 280.4014, -91.7462, 1.821993, 2.443461, 86400, 86400, 0, 0, 0, 0), -- OLDWorld Trigger (DO NOT DELETE)
-- Flame Arrow triggers for run of flames event
(@CGUID+64, 17687, 540, 3, 475.607, 317.259, 1.93511, 3.53184, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+65, 17687, 540, 3, 474.604, 316.266, 1.93224, 3.52502, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+66, 17687, 540, 3, 458.635, 316.226, 1.9386, 1.09048, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+67, 17687, 540, 3, 442.53, 312.552, 1.89971, 4.90947, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+68, 17687, 540, 3, 443.132, 315.544, 1.98497, 0, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+69, 17687, 540, 3, 425.697, 315.906, 1.9384, 0.0896327, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+70, 17687, 540, 3, 424.878, 314.647, 1.94027, 5.80904, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+71, 17687, 540, 3, 405.523, 315.378, 1.89959, 3.40177, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+72, 17687, 540, 3, 317.974, 314.801, 1.9146, 0.34688, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+73, 17687, 540, 3, 317.211, 315.742, 1.91492, 1.1656, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+74, 17687, 540, 3, 351.347, 315.593, 1.91816, 4.00343, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+75, 17687, 540, 3, 351.773, 317.038, 1.91816, 0.501879, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+76, 17687, 540, 3, 368.151, 317.076, 1.9157, 1.26919, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+77, 17687, 540, 3, 369.298, 320.104, 1.91694, 1.42251, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+78, 17687, 540, 3, 384.094, 319.218, 1.93988, 2.53266, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+79, 17687, 540, 3, 384.278, 314.477, 1.93969, 3.99809, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+80, 17687, 540, 3, 408.506, 316.692, 1.91144, 0.0542292, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+81, 17687, 540, 3, 294.722, 317.899, 1.91816, 0.186297, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+82, 17687, 540, 3, 287.066, 315.53, 1.87145, 6.21995, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
(@CGUID+83, 17687, 540, 3, 455.513, 317.784, 1.94178, 3.58176, 7200, 7200, 10, 0, 0, 1), -- Flame Arrow
-- Endboss dummy targets for Blade Dance
(@CGUID+84, 20709, 540, 3, 249.962, -98.2689, 5.0227, 3.61283, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+85, 20709, 540, 3, 251.623, -84.1218, 5.02172, 5.25344, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+86, 20709, 540, 3, 260.148, -83.7987, 4.18425, 2.6529, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+87, 20709, 540, 3, 190.912, -84.5878, 2.68429, 5.75959, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+88, 20709, 540, 3, 223.158, -83.8724, 5.02341, 6.10865, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+89, 20709, 540, 3, 223.486, -68.3885, 5.02341, 0.942478, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+90, 20709, 540, 3, 215.421, -89.0572, 5.02342, 5.21853, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+91, 20709, 540, 3, 198.564, -84.262, 3.9186, 4.01426, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+92, 20709, 540, 3, 235.637, -99.7462, 5.02341, 5.34071, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+93, 20709, 540, 3, 207.548, -84.2186, 5.02176, 0.122173, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+94, 20709, 540, 3, 236.281, -68.8607, 5.02341, 5.14872, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+95, 20709, 540, 3, 229.37, -63.3378, 5.02341, 2.75762, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+96, 20709, 540, 3, 222.929, -99.3172, 5.02341, 0.366519, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+97, 20709, 540, 3, 229.213, -91.2796, 5.02341, 0.244346, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+98, 20709, 540, 3, 243.45, -77.2963, 5.0234, 4.55531, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+99, 20709, 540, 3, 267.997, -84.1363, 3.17459, 5.86431, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+100, 20709, 540, 3, 209.371, -97.9959, 5.02256, 5.25344, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+101, 20709, 540, 3, 229.574, -76.4437, 5.02341, 2.14675, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+102, 20709, 540, 3, 242.707, -90.59, 5.02341, 5.11381, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+103, 20709, 540, 3, 216.092, -104.188, 5.0228, 1.48353, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+104, 20709, 540, 3, 216.282, -64.6925, 5.02281, 3.75246, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+105, 20709, 540, 3, 249.602, -69.3923, 5.0222, 1.39626, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+106, 20709, 540, 3, 229.357, -104.793, 5.02341, 3.4383, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+107, 20709, 540, 3, 210.256, -70.4671, 5.02276, 0.925025, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+108, 20709, 540, 3, 216.1, -78.2583, 5.02342, 5.09636, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+109, 20709, 540, 3, 235.918, -83.9248, 5.02341, 1.81514, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+110, 20709, 540, 3, 242.375, -63.7785, 5.02294, 3.05433, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
(@CGUID+111, 20709, 540, 3, 243.196, -104.702, 5.02294, 5.14872, 60, 120, 0, 0, 0, 0), -- Blade Dance Target
-- First Hallway
(@CGUID+120, 16700, 540, 3, 62.7101, 2.91998, -13.0349, 3.16464, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Legionnaire
-- normal
(@CGUID+121, 0, 540, 1, 46.3248, 59.879, -12.9904, 0, 5, 5, 0, 0, 0, 2), -- creature_spawn_entry
(@CGUID+122, 0, 540, 1, 83.755, 57.2887, -13.114, 3.15, 5, 5, 0, 0, 0, 2), -- creature_spawn_entry
(@CGUID+123, 0, 540, 1, 53.5243, 60.0879, -13.0071, 0, 5, 5, 0, 0, 0, 2), -- creature_spawn_entry
(@CGUID+124, 0, 540, 1, 90.0297, 57.4987, -13.1003, 3.261756, 5, 5, 0, 0, 0, 2), -- creature_spawn_entry
(@CGUID+125, 0, 540, 1, 87.9912, 57.5445, -13.1049, 3.2617, 5, 5, 0, 0, 0, 2), -- creature_spawn_entry
-- heroic
(@CGUID+126, 17420, 540, 2, 46.3248, 59.879, -12.9904, 0, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+127, 17420, 540, 2, 83.755, 57.2887, -13.114, 3.15, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+128, 17420, 540, 2, 53.5243, 60.0879, -13.0071, 0, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+129, 17420, 540, 2,  90.0297, 57.4987, -13.1003, 3.261756, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
(@CGUID+130, 17420, 540, 2, 87.9912, 57.5445, -13.1049, 3.2617, 5, 5, 0, 0, 0, 2), -- Shattered Hand Heathen
-- Group of 2 sentrys
(@CGUID+131, 16507, 540, 3, 66.47607, 41.36766, -13.13848, 4.694936, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sentry
(@CGUID+132, 16507, 540, 3, 73.12358, 41.20788, -13.13848, 4.625123, 7200, 7200, 0, 0, 0, 0), -- Shattered Hand Sentry
-- Big Legionnaire group in first room
(@CGUID+133, 16700, 540, 3, 56.966682,74.25795,-13.222891, 0, 7200, 7200, 0, 0, 0, 2), -- Shattered Hand Legionnaire
-- 4 Groups with a pair of 2 npc
-- normal behavior:
-- caster/brawler either left or right + savage/heathen on the other side
-- heroic:
-- caster/brawler left or right + heathen other side
-- group 1 normal
(@CGUID+134, 0, 540, 1, 54.4005, 77.7188, -13.1093, 5.55015, 7200, 7200, 0, 0, 0, 0), -- left
(@CGUID+135, 0, 540, 1,  56.461, 79.2481, -13.0995, 5.46288, 7200, 7200, 0, 0, 0, 0), -- right
-- group 1 heroic
(@CGUID+136, 0, 540, 2, 54.4005, 77.7188, -13.1093, 5.55015, 7200, 7200, 0, 0, 0, 0), -- left
(@CGUID+137, 0, 540, 2,  56.461, 79.2481, -13.0995, 5.46288, 7200, 7200, 0, 0, 0, 0), -- right
-- group 2 normal
(@CGUID+138, 0, 540, 1, 63.3135, 84.0945, -13.1156, 4.66003, 7200, 7200, 0, 0, 0, 0), -- left
(@CGUID+139, 0, 540, 1,  65.4234, 84.6101, -13.1184, 4.60767, 7200, 7200, 0, 0, 0, 0), -- right
-- group 2 heroic
(@CGUID+140, 0, 540, 2, 63.3135, 84.0945, -13.1156, 4.66003, 7200, 7200, 0, 0, 0, 0), -- left
(@CGUID+141, 0, 540, 2,  65.4234, 84.6101, -13.1184, 4.60767, 7200, 7200, 0, 0, 0, 0), -- right
-- group 3 normal
(@CGUID+142, 0, 540, 1, 75.3346, 83.7984, -13.1169, 4.13643, 7200, 7200, 0, 0, 0, 0), -- left
(@CGUID+143, 0, 540, 1,  77.3988, 82.8904, -13.1101, 3.9619, 7200, 7200, 0, 0, 0, 0), -- right
-- group 3 heroic
(@CGUID+144, 0, 540, 2, 75.3346, 83.7984, -13.1169, 4.13643, 7200, 7200, 0, 0, 0, 0), -- left
(@CGUID+145, 0, 540, 2,  77.3988, 82.8904, -13.1101, 3.9619, 7200, 7200, 0, 0, 0, 0), -- right
-- group 4 normal
(@CGUID+146, 0, 540, 1, 82.4351, 76.1707, -13.1121, 3.735, 7200, 7200, 0, 0, 0, 0), -- left
(@CGUID+147, 0, 540, 1,  84.0513, 74.3693, -13.1203, 3.71755, 7200, 7200, 0, 0, 0, 0), -- right
-- group 4 heroic
(@CGUID+148, 0, 540, 2, 82.4351, 76.1707, -13.1121, 3.735, 7200, 7200, 0, 0, 0, 0), -- left
(@CGUID+149, 0, 540, 2,  84.0513, 74.3693, -13.1203, 3.71755, 7200, 7200, 0, 0, 0, 0); -- right

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+1, 181679, 540, 3, 168.66, 291.89, -6.93, 0, 0, 0, 0, 0, 180, 180, 0, 1), -- Fel Brazier
(@OGUID+2, 181679, 540, 3, 187.77, 292.46, -7.33, 0, 0, 0, 0, 0, 180, 180, 0, 1), -- Fel Brazier
(@OGUID+3, 182539, 540, 3, 141.5157, 266.3664, -11.56821, 3.141593, 0, 0, -1, 0, 120, 120, 255, 1), -- Grand Warlock Chamber Door
(@OGUID+4, 182540, 540, 3, 214.4881, 266.1671, -11.51811, 0, 0, 0, 0, 1, 120, 120, 255, 1), -- Grand Warlock Chamber Door
(@OGUID+5, 184177, 540, 1, -42.05605, -26.77249, -13.51534, 1.469793, 0, 0, 0.6705103, 0.7419003, 0, 0, 0, 0), -- Doodad_InstancePortal_PurpleDifficulty01
(@OGUID+6, 184178, 540, 2, -42.05605, -26.77249, -13.51534, 1.469793, 0, 0, 0.6705103, 0.7419003, 0, 0, 0, 0), -- Doodad_InstancePortal_PurpleDifficultyIcon01
(@OGUID+7, 184940, 540, 3, 473.4622, 144.0872, 0.594992, 0.06981169, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Bound Adamantite Chest
(@OGUID+8, 184941, 540, 3, 473.4622, 144.0872, 0.594992, 0.06981169, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Solid Adamantite Chest
(@OGUID+9, 181671, 540, 3, 330.75064, 74.205864, 1.079237, 3.1590624, 0, 0, -0.99996185, 0.008734641, 86400, 86400, 255, 1), -- Fel Horde Banner
(@OGUID+10, 181671, 540, 3, 330.79465, 41.026054, 1.070399, 0.017452462, 0, 0, 0.00872612, 0.9999619, 86400, 86400, 255, 1), -- Fel Horde Banner
(@OGUID+11, 181435, 540, 3, 242.159, -75.06284, -9.304095, 4.886921, 0, 0, -0.6427879, 0.7660442, 86400, 86400, 100, 1), -- Doodad_OnyziasLairLavaTrap80
(@OGUID+12, 181436, 540, 3, 232.8329, -98.32433, -11.76173, 0.6981294, 0, 0, 0.3420191, 0.939693, 86400, 86400, 100, 1), -- Doodad_OnyziasLairLavaTrap79
(@OGUID+13, 181437, 540, 3, 222.6859, -78.63619, -11.1251, 3.752462, 0, 0, -0.9537163, 0.3007079, 86400, 86400, 100, 1), -- Doodad_OnyziasLairLavaTrap78
(@OGUID+14, 181438, 540, 3, 257.0056, -102.1912, -5.668888, 4.450591, 0, 0, -0.7933531, 0.6087617, 86400, 86400, 100, 1), -- Doodad_OnyziasLairLavaTrap64
(@OGUID+15, 181439, 540, 3, 260.3188, -79.31659, -6.418934, 5.846854, 0, 0, -0.2164392, 0.9762961, 86400, 86400, 100, 1), -- Doodad_OnyziasLairLavaTrap72
(@OGUID+16, 181440, 540, 3, 215.4215, -112.6428, -6.456299, 2.007125, 0, 0, 0.8433905, 0.5373012, 86400, 86400, 100, 1), -- Doodad_OnyziasLairLavaTrap81
(@OGUID+17, 181441, 540, 3, 220.3093, -54.90799, -6.456299, 2.007125, 0, 0, 0.8433905, 0.5373012, 86400, 86400, 100, 1), -- Doodad_OnyziasLairLavaTrap82
(@OGUID+18, 181442, 540, 3, 197.2586, -84.19016, -7.345709, 2.007125, 0, 0, 0.8433905, 0.5373012, 86400, 86400, 100, 1); -- Doodad_OnyziasLairLavaTrap83

-- ======
-- SPAWN GROUPS
-- ======

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Shattered Halls - Master Chest', 1, 1, 0, 0),
-- First Legionnaire Groups
(@SGGUID+2, 'Shattered Halls - First Group (Normal)', 0, 5, @CONDITIONID+1, 0),
(@SGGUID+3, 'Shattered Halls - First Group (Heroic)', 0, 5, @CONDITIONID+1, 0),
(@SGGUID+4, 'Shattered Halls - HallOfFathers - Group 1 - Normal', 0, 2, 0, 1),
(@SGGUID+5, 'Shattered Halls - HallOfFathers - Group 1 - Heroic', 0, 2, 0, 1),
(@SGGUID+6, 'Shattered Halls - HallOfFathers - Group 2 - Normal', 0, 2, 0, 1),
(@SGGUID+7, 'Shattered Halls - HallOfFathers - Group 2 - Heroic', 0, 2, 0, 1),
(@SGGUID+8, 'Shattered Halls - HallOfFathers - Group 3 - Normal', 0, 2, 0, 1),
(@SGGUID+9, 'Shattered Halls - HallOfFathers - Group 3 - Heroic', 0, 2, 0, 1),
(@SGGUID+10, 'Shattered Halls - HallOfFathers - Group 4 - Normal', 0, 2, 0, 1),
(@SGGUID+11, 'Shattered Halls - HallOfFathers - Group 4 - Heroic', 0, 2, 0, 1);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+2, 16523, 0, 5, 0), (@SGGUID+2, 17420, 0, 5, 0), -- Shattered Hand Savage/Heathen (normal)
(@SGGUID+4, 16523, 0, 1, 0), (@SGGUID+4, 16593, 0, 1, 0), (@SGGUID+4, 16594, 0, 1, 0), (@SGGUID+4, 17420, 0, 1, 0), (@SGGUID+4, 17694, 0, 1, 0), -- Normal
(@SGGUID+5, 16593, 0, 1, 0), (@SGGUID+5, 16594, 0, 1, 0), (@SGGUID+5, 17420, 1, 1, 0), (@SGGUID+5, 17694, 0, 1, 0), -- Heroic
(@SGGUID+6, 16523, 0, 1, 0), (@SGGUID+6, 16593, 0, 1, 0), (@SGGUID+6, 16594, 0, 1, 0), (@SGGUID+6, 17420, 0, 1, 0), (@SGGUID+6, 17694, 0, 1, 0), -- Normal
(@SGGUID+7, 16593, 0, 1, 0), (@SGGUID+7, 16594, 0, 1, 0), (@SGGUID+7, 17420, 1, 1, 0), (@SGGUID+7, 17694, 0, 1, 0), -- Heroic
(@SGGUID+8, 16523, 0, 1, 0), (@SGGUID+8, 16593, 0, 1, 0), (@SGGUID+8, 16594, 0, 1, 0), (@SGGUID+8, 17420, 0, 1, 0), (@SGGUID+8, 17694, 0, 1, 0), -- Normal
(@SGGUID+9, 16593, 0, 1, 0), (@SGGUID+9, 16594, 0, 1, 0), (@SGGUID+9, 17420, 1, 1, 0), (@SGGUID+9, 17694, 0, 1, 0), -- Heroic
(@SGGUID+10, 16523, 0, 1, 0), (@SGGUID+10, 16593, 0, 1, 0), (@SGGUID+10, 16594, 0, 1, 0), (@SGGUID+10, 17420, 0, 1, 0), (@SGGUID+10, 17694, 0, 1, 0), -- Normal
(@SGGUID+11, 16593, 0, 1, 0), (@SGGUID+11, 16594, 0, 1, 0), (@SGGUID+11, 17420, 1, 1, 0), (@SGGUID+11, 17694, 0, 1, 0); -- Heroic


INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, @OGUID+7, -1), -- Shattered Halls - Bound Adamantite Chest (184940)
(@SGGUID+1, @OGUID+8, -1), -- Shattered Halls - Solid Adamantite Chest (184941)
(@SGGUID+2, @OGUID+121, -1), -- Shattered Hand Heathen - Shattered Hand Savage
(@SGGUID+2, @OGUID+122, -1), -- Shattered Hand Heathen - Shattered Hand Savage
(@SGGUID+2, @OGUID+123, -1), -- Shattered Hand Heathen - Shattered Hand Savage
(@SGGUID+2, @OGUID+124, -1), -- Shattered Hand Heathen - Shattered Hand Savage
(@SGGUID+2, @OGUID+125, -1), -- Shattered Hand Heathen - Shattered Hand Savage
(@SGGUID+3, @OGUID+126, -1), -- Shattered Hand Heathen 
(@SGGUID+3, @OGUID+127, -1), -- Shattered Hand Heathen 
(@SGGUID+3, @OGUID+128, -1), -- Shattered Hand Heathen 
(@SGGUID+3, @OGUID+129, -1), -- Shattered Hand Heathen 
(@SGGUID+3, @OGUID+130, -1), -- Shattered Hand Heathen 
-- Group 1 normal
(@SGGUID+4, @OGUID+134, -1), 
(@SGGUID+4, @OGUID+135, -1), 
-- Group 1 heroic
(@SGGUID+5, @OGUID+136, -1),
(@SGGUID+5, @OGUID+137, -1), 
-- Group 2 normal
(@SGGUID+6, @OGUID+138, -1),
(@SGGUID+6, @OGUID+139, -1),
-- Group 1 heroic
(@SGGUID+7, @OGUID+140, -1),
(@SGGUID+7, @OGUID+141, -1),
-- Group 3 normal
(@SGGUID+8, @OGUID+142, -1),
(@SGGUID+8, @OGUID+143, -1),
-- Group 3 heroic
(@SGGUID+9, @OGUID+144, -1),
(@SGGUID+9, @OGUID+145, -1),
-- Group 4 normal
(@SGGUID+10, @OGUID+146, -1),
(@SGGUID+10, @OGUID+147, -1),
-- Group 4 heroic
(@SGGUID+11, @OGUID+148, -1),
(@SGGUID+11, @OGUID+149, -1);

-- INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES

DELETE FROM worldstate_name WHERE Id BETWEEN @WSID+1 AND @WSID+5;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@WSID+1, 'Shattered Halls - First Hallway - Legionnaire');

DELETE FROM conditions WHERE condition_entry BETWEEN @CONDITIONID+1 AND @CONDITIONID+9;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@CONDITIONID+1, '42', @WSID+1, '0', '1', '0', '0', 'Shattered Halls - First Hallway');

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(@CGUID+82, 0, 22800, 0, 0, 0, 2); -- Grand Warlock Nethekurse (Feast of Winter Veil - Main Event)

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscripts_on_relay WHERE id BETWEEN @RElAYID AND @RElAYID+51;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(@RElAYID+1,0,0,0,10051,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - random yell'),
(@RElAYID+1,0,0,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - send Custom AI Event A'),

(@RElAYID+2,0,0,31,17420,6,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - Search for Heaven'),
(@RElAYID+2,0,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - pause waypoints'),
(@RElAYID+2,3000,0,37,0,0,2,17420,20,2,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - move to Heathen'),
(@RElAYID+2,4000,0,36,0,0,0,17420,20,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - face Legionnaire'),
(@RElAYID+2,4000,0,36,0,0,0,17420,5,1,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - face Heathen'),
(@RElAYID+2,5000,0,1,66,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - OneShotSalute'),
(@RElAYID+2,7000,0,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotSalute'),
(@RElAYID+2,9000,0,1,1,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - OneShotTalk'),
(@RElAYID+2,10000,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotExclamation'),
(@RElAYID+2,11000,0,36,1,0,0,17420,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Heathen - reset orientation'),
(@RElAYID+2,13000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - unpause waypoints'),

(@RElAYID+3,0,0,31,16523,6,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - Search for Savage'),
(@RElAYID+3,0,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - pause waypoints'),
(@RElAYID+3,3000,0,37,0,0,2,16523,20,2,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - move to Savage'),
(@RElAYID+3,4000,0,36,0,0,0,16523,20,0,0,0,0,0,0,0,0,0,'Shattered Hand Savage - face Legionnaire'),
(@RElAYID+3,4000,0,36,0,0,0,16523,5,1,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - face Savage'),
(@RElAYID+3,5000,0,1,66,0,0,16523,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Savage - OneShotSalute'),
(@RElAYID+3,7000,0,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotSalute'),
(@RElAYID+3,9000,0,1,1,0,0,16523,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Savage - OneShotTalk'),
(@RElAYID+3,10000,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - OneShotExclamation'),
(@RElAYID+3,11000,0,36,1,0,0,16523,5,0,0,0,0,0,0,0,0,0,'Shattered Hand Savage - reset orientation'),
(@RElAYID+3,13000,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shattered Hand Legionnaire - unpause waypoints'),
-- till 50 are rp scripts, 50+ are guid based OnDeath scripts from event ai
(@RElAYID+51,0,0,31,0,50,0,0,@CGUID+120,25,0,0,0,0,0,0,0,0,'First Hallway - Terminate script only if legionnaire is alive'), 
(@RElAYID+51,0,1,35,0,0,0,16700,@CGUID+120,17,0,0,0,0,0,0,0,0,'First Hallway - send JustDied Event on Death');

DELETE FROM dbscript_random_templates WHERE id IN (10050, 10051);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10050, 1, @RElAYID+1, 10, 'Shattered Hand Legionnaire - yell'),
(10050, 1, @RElAYID+2, 10, 'Shattered Hand Legionnaire - approach ally Heathen'),
(10050, 1, @RElAYID+3, 10, 'Shattered Hand Legionnaire - approach ally Savage'),
(10050, 1, 0, 70, 'Shattered Hand Legionnaire - nothing'),

(10051, 0, 16350, 0, 'Shattered Hand Legionnaire - random yell 1'),
(10051, 0, 17461, 0, 'Shattered Hand Legionnaire - random yell 2'),
(10051, 0, 16349, 0, 'Shattered Hand Legionnaire - random yell 3'),
(10051, 0, 16347, 0, 'Shattered Hand Legionnaire - random yell 4'),
(10051, 0, 16346, 0, 'Shattered Hand Legionnaire - random yell 5');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1670001,1670002, 1742001);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1670001, 0, 45, 0, 10050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Hand Legionnaire - 10% chance to yell, 20% chance to talk'),
(1742001, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Halls - Waypoint Pause'),
(1742001, 1000, 2, 169, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Halls - EMOTE_STATE_READY1H');

-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES