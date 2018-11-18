/* DBScriptData
DBName: Tempest Keep - The Botanica
DBScriptName: -
DB%Complete: 80
DBComment:
* ACID Recheck
* 17976 should also have serverside aura 34792
EndDBScriptData */

SET @CGUID := 5530000; -- creatures
SET @OGUID := 5530000; -- gameobjects
SET @PGUID := 49000; -- pools

-- =========
-- CREATURES
-- =========

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID+1, 1, 116.584, 455.602, -4.95288, 2.61773, 0, 0),
(@CGUID+1, 2, 115.153, 455.568, -4.89346, 3.33087, 10000, 1069),
(@CGUID+1, 3, 115.153, 455.568, -4.89346, 3.33087, 10000, 1797501),
(@CGUID+1, 4, 116.623, 455.478, -4.94902, 6.17716, 0, 0),
(@CGUID+1, 5, 120.628, 451.036, -4.92864, 5.62188, 0, 0),
(@CGUID+1, 6, 120.543, 449.982, -4.88372, 4.41551, 10000, 1069),
(@CGUID+1, 7, 120.543, 449.982, -4.88372, 4.41551, 10000, 1797501),
(@CGUID+1, 8, 120.796, 450.93, -4.93171, 1.61949, 0, 0),
(@CGUID+2, 1, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 2, 120.012, 327.677, -4.99033, 5.47973, 0, 0),
(@CGUID+2, 3, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 4, 120.012, 327.677, -4.99033, 5.47973, 0, 0),
(@CGUID+2, 5, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 6, 151.954, 283.758, -4.67356, 4.76895, 3000, 8298601),
(@CGUID+2, 7, 151.954, 283.758, -4.67356, 4.76895, 6000, 1378),
(@CGUID+2, 8, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 9, 162.8, 295.447, -4.80194, 0.02357, 3000, 8298603),
(@CGUID+2, 10, 162.8, 295.447, -4.80194, 0.02357, 6000, 1378),
(@CGUID+2, 11, 152.491, 294.444, -4.6658, 2.39233, 0, 0),
(@CGUID+2, 12, 120.012, 327.677, -4.99033, 5.47973, 0, 0),
(@CGUID+2, 13, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 14, 120.012, 327.677, -4.99033, 5.47973, 0, 0),
(@CGUID+2, 15, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 16, 159.54, 287.615, -4.10529, 5.3792, 3000, 8298602),
(@CGUID+2, 17, 159.54, 287.615, -4.10529, 5.3792, 6000, 1378),
(@CGUID+2, 18, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 19, 151.954, 283.758, -4.67356, 4.76895, 3000, 8298601),
(@CGUID+2, 20, 151.954, 283.758, -4.67356, 4.76895, 6000, 1378),
(@CGUID+2, 21, 152.491, 294.444, -4.6658, 2.39233, 0, 0),
(@CGUID+2, 22, 120.012, 327.677, -4.99033, 5.47973, 0, 0),
(@CGUID+2, 23, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 24, 120.012, 327.677, -4.99033, 5.47973, 0, 0),
(@CGUID+2, 25, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 26, 162.8, 295.447, -4.80194, 0.02357, 3000, 8298603),
(@CGUID+2, 27, 162.8, 295.447, -4.80194, 0.02357, 6000, 1378),
(@CGUID+2, 28, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 29, 159.54, 287.615, -4.10529, 5.3792, 3000, 8298602),
(@CGUID+2, 30, 159.54, 287.615, -4.10529, 5.3792, 6000, 1378),
(@CGUID+2, 31, 152.491, 294.444, -4.6658, 2.39233, 0, 0),
(@CGUID+2, 32, 120.012, 327.677, -4.99033, 5.47973, 0, 0),
(@CGUID+2, 33, 152.491, 294.444, -4.6658, 5.52686, 0, 0),
(@CGUID+2, 34, 159.54, 287.615, -4.10529, 5.3792, 10000, 1797601),
(@CGUID+6, 1, 9.0511, 160.359, -5.54034, 4.42808, 8000, 0),
(@CGUID+6, 2, 7.00565, 151.863, -5.54034, 4.61972, 0, 0),
(@CGUID+6, 3, 2.13972, 149.017, -5.54034, 3.65525, 0, 0),
(@CGUID+6, 4, 2.85909, 133.568, -5.54034, 4.71868, 0, 0),
(@CGUID+6, 5, 4.66944, 131.582, -5.53933, 4.39113, 10000, 8315101),
(@CGUID+7, 1, -14.7259, 244.255, -5.21435, 6.01145, 8000, 0),
(@CGUID+7, 2, -3.16054, 243.291, -5.5165, 0.021216, 0, 0),
(@CGUID+7, 3, -3.54976, 215.113, -5.53931, 4.55846, 0, 0),
(@CGUID+7, 4, -5.03136, 214.278, -5.54035, 4.38648, 10000, 8315101),
(@CGUID+8, 1, 12.5368, 244.131, -5.27665, 3.28297, 8000, 0),
(@CGUID+8, 2, 2.36405, 242.874, -5.51154, 3.34423, 0, 0),
(@CGUID+8, 3, 2.44798, 215.308, -5.54035, 4.78387, 0, 0),
(@CGUID+8, 4, 3.94135, 214.042, -5.54035, 4.79017, 10000, 8315101),
(@CGUID+15, 1, 0.319128, 93.3509, -5.65202, 4.74977, 2000, 0),
(@CGUID+15, 2, 0.304653, 53.7379, -5.65205, 4.80789, 0, 0),
(@CGUID+15, 3, 0.246856, 49.9056, -5.61616, 4.84559, 0, 0),
(@CGUID+15, 4, 1.77807, 47.0135, -5.52788, 5.07885, 0, 0),
(@CGUID+15, 5, 2.35202, 46.2708, -5.53589, 4.48292, 10000, 8315101),
(@CGUID+16, 1, -2.91064, 93.3038, -5.65202, 4.66102, 2000, 0),
(@CGUID+16, 2, -3.09647, 53.6826, -5.65205, 4.75056, 0, 0),
(@CGUID+16, 3, -2.9898, 50.0713, -5.62371, 3.9573, 0, 0),
(@CGUID+16, 4, -3.98776, 46.8545, -5.53157, 4.35943, 0, 0),
(@CGUID+16, 5, -4.7336, 45.9968, -5.55443, 4.8874, 10000, 8315101),
(@CGUID+19, 1, -10.473, 160.51, -5.54034, 4.94409, 8000, 0),
(@CGUID+19, 2, -9.05886, 151.889, -5.54034, 4.99122, 0, 0),
(@CGUID+19, 3, -3.30866, 147.948, -5.54034, 5.68237, 0, 0),
(@CGUID+19, 4, -3.96269, 134.198, -5.54034, 4.71083, 0, 0),
(@CGUID+19, 5, -5.29153, 130.642, -5.53917, 4.81372, 10000, 8315101),
(@CGUID+26, 1, -155.507, 389.66, -17.7781, 2.1041, 16000, 1799301),
(@CGUID+26, 2, -155.507, 389.66, -17.7781, 2.1041, 0, 0),
(@CGUID+26, 3, -161.64, 398.266, -17.734, 2.23573, 0, 0),
(@CGUID+26, 4, -157.994, 405.455, -17.6956, 0.805515, 0, 1799304),
(@CGUID+26, 5, -164.289, 411.495, -17.7221, 2.44307, 0, 0),
(@CGUID+26, 6, -169.039, 407.652, -17.6985, 1.72701, 60000, 1799302),
(@CGUID+27, 1, -160.717, 374.429, -17.6977, 2.19363, 16000, 1799301),
(@CGUID+27, 2, -160.717, 374.429, -17.6977, 2.19363, 0, 0),
(@CGUID+27, 3, -167.591, 389.41, -17.6984, 1.9899, 0, 0),
(@CGUID+27, 4, -170.008, 400.085, -17.696, 1.75349, 0, 0),
(@CGUID+27, 5, -161.852, 407.783, -17.6985, 1.7294, 0, 1799303),
(@CGUID+27, 6, -163.747, 428.245, -17.7801, 1.72701, 60000, 1799302),
(@CGUID+36, 1, 50.9215, 293.818, -5.63032, 1.68861, 0, 0),
(@CGUID+36, 2, 50.4144, 282.994, -5.64831, 4.90482, 0, 0),
(@CGUID+40, 1, 13.2272, 178.591, -5.5404, 5.07526, 0, 0),
(@CGUID+40, 2, 13.7786, 193.285, -5.5404, 1.59438, 0, 0),
(@CGUID+40, 3, 9.13868, 197.798, -5.5404, 2.30752, 5000, 0),
(@CGUID+40, 4, -0.635412, 203.851, -5.5404, 2.58712, 0, 0),
(@CGUID+40, 5, -0.660702, 223.381, -5.5404, 1.5881, 0, 0),
(@CGUID+40, 6, -0.571616, 247.901, -5.51829, 1.44751, 0, 0),
(@CGUID+40, 7, -0.697975, 222.215, -5.54037, 4.71005, 3000, 0),
(@CGUID+40, 8, -0.301946, 204.186, -5.54037, 4.2663, 0, 0),
(@CGUID+40, 9, 8.68828, 198.154, -5.54037, 5.7028, 0, 0),
(@CGUID+40, 10, 13.1168, 194.426, -5.54037, 5.58342, 0, 0),
(@CGUID+41, 1, 1.07692, 288.114, 1.03451, 0, 0, 0),
(@CGUID+41, 2, 21.3242, 287.963, -1.84732, 0, 0, 0),
(@CGUID+41, 3, 0.477138, 288.18, 1.06289, 0, 0, 0),
(@CGUID+41, 4, -15.096, 288.706, -0.936859, 0, 0, 0),
(@CGUID+42, 1, -1.23806, 53.2298, -5.65058, 1.58023, 0, 0),
(@CGUID+42, 2, -1.05688, 93.7442, -5.6518, 1.73888, 0, 0),
(@CGUID+42, 3, -0.781224, 113.317, -5.58331, 1.75852, 0, 0),
(@CGUID+42, 4, -1.38405, 95.682, -5.65011, 4.73989, 0, 0),
(@CGUID+42, 5, -1.40982, 55.0453, -5.65189, 4.76188, 0, 0),
(@CGUID+42, 6, -1.02573, 43.8376, -5.60675, 4.63622, 0, 0),
(@CGUID+43, 1, -0.68236, 155.411, -5.5395, 0, 0, 0),
(@CGUID+43, 2, -15.2839, 169.103, -5.5395, 0, 0, 0),
(@CGUID+43, 3, -15.7084, 183.927, -5.5395, 0, 0, 0),
(@CGUID+43, 4, -14.9384, 169.299, -5.5395, 0, 0, 0),
(@CGUID+43, 5, -1.41195, 155.483, -5.5395, 0, 0, 0),
(@CGUID+43, 6, -0.859962, 128.029, -5.5395, 0, 0, 0),
(@CGUID+44, 1, 13.8952, 197.464, -5.54041, 0.944012, 18000, 1069),
(@CGUID+44, 2, 15.0475, 193.183, -5.54122, 5.06034, 0, 0),
(@CGUID+44, 3, 16.6998, 192.651, -5.54122, 1.01789, 0, 0),
(@CGUID+44, 4, 17.8517, 192.876, -5.54122, 1.01789, 20000, 1069),
(@CGUID+44, 5, 17.5705, 192.439, -5.54122, 6.14419, 0, 0),
(@CGUID+44, 6, 14.347, 193.671, -5.54122, 2.7764, 0, 0),
(@CGUID+44, 7, 13.4535, 196.095, -5.54122, 2.07583, 0, 0),
(@CGUID+46, 1, -19.4848, 197.125, -5.54034, 1.06967, 29000, 1069),
(@CGUID+46, 2, -18.3153, 195.691, -5.54122, 5.31716, 0, 0),
(@CGUID+46, 3, -14.4761, 195.052, -5.54122, 6.11827, 0, 0),
(@CGUID+46, 4, -9.28239, 198.789, -5.54122, 0.623626, 0, 0),
(@CGUID+46, 5, -7.14421, 203.369, -5.54122, 1.55354, 0, 0),
(@CGUID+46, 6, -8.27586, 203.442, -5.54122, 3.07721, 24000, 1069),
(@CGUID+46, 7, -6.73612, 202.567, -5.54122, 5.76642, 0, 0),
(@CGUID+46, 8, -8.75032, 199.727, -5.54122, 4.15635, 0, 0),
(@CGUID+46, 9, -13.0694, 195.498, -5.54122, 3.85475, 0, 0),
(@CGUID+46, 10, -17.5981, 194.664, -5.54122, 3.32383, 0, 0),
(@CGUID+46, 11, -19.281, 195.896, -5.54122, 2.41276, 0, 0),
(@CGUID+48, 1, -0.268618, 160.028, -5.5395, 0, 0, 0),
(@CGUID+48, 2, -4.24328, 161.149, -5.5395, 0, 0, 0),
(@CGUID+48, 3, -6.01467, 167.23, -5.5395, 1.6093, 34000, 1069),
(@CGUID+48, 4, -3.54166, 160.511, -5.5395, 0, 0, 0),
(@CGUID+48, 5, 2.36906, 161.495, -5.5395, 0, 0, 0),
(@CGUID+48, 6, 2.31835, 163.18, -5.54038, 2.31852, 16000, 1069),
(@CGUID+49, 1, 4.00238, 252.355, -5.47518, 1.10514, 22000, 1069),
(@CGUID+49, 2, 4.00238, 252.355, -5.47518, 2.97588, 7000, 1378),
(@CGUID+49, 3, 4.00238, 252.355, -5.47518, 1.10514, 30000, 1069),
(@CGUID+49, 4, 4.00238, 252.355, -5.47518, 2.97588, 7000, 1378),
(@CGUID+49, 5, 4.00238, 252.355, -5.47518, 1.10514, 16000, 1069),
(@CGUID+49, 6, 4.00238, 252.355, -5.47518, 2.97588, 7000, 1378),
(@CGUID+50, 1, -4.23689, 254.019, -5.4428, 2.29894, 22000, 1069),
(@CGUID+50, 2, -4.23689, 254.019, -5.4428, 6.05072, 7000, 1378),
(@CGUID+50, 3, -4.23689, 254.019, -5.4428, 2.29894, 30000, 1069),
(@CGUID+50, 4, -4.23689, 254.019, -5.4428, 6.05072, 7000, 1378),
(@CGUID+50, 5, -4.23689, 254.019, -5.4428, 2.29894, 16000, 1069),
(@CGUID+50, 6, -4.23689, 254.019, -5.4428, 6.05072, 7000, 1378),
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
(@CGUID+68, 1, 174.814, 495.449, -2.62112, 2.26981, 4000, 1842201),
(@CGUID+68, 2, 174.814, 495.449, -2.62112, 2.26981, 6000, 1842203),
(@CGUID+68, 3, 174.814, 495.449, -2.62112, 2.26981, 55000, 1842202),
(@CGUID+69, 1, 159.537, 508.659, -2.74336, 5.86693, 25000, 0),
(@CGUID+69, 2, 159.537, 508.659, -2.74336, 5.86693, 4000, 1842201),
(@CGUID+69, 3, 159.537, 508.659, -2.74336, 5.86693, 6000, 1842203),
(@CGUID+69, 4, 159.537, 508.659, -2.74336, 5.86693, 55000, 1842202),
(@CGUID+91, 1, 20.1188, 589.6809, -17.7396, 1.58825, 32000, 1950503), -- 1 Adjustment due to CallForHelp on Aggro: points 1,2,6 -> 20.1188, 589.6809, -17.7396 / 20.11373, 588.0859, -17.75986
(@CGUID+91, 2, 20.1188, 589.6809, -17.7396, 1.46975, 4000, 1950506), -- 2
(@CGUID+91, 3, 19.3148, 583.8, -17.8192, 4.30189, 0, 0),
(@CGUID+91, 4, 18.6946, 574.077, -17.9568, 4.89958, 6000, 1950504),
(@CGUID+91, 5, 19.3882, 583.435, -17.8253, 1.66296, 0, 0),
(@CGUID+91, 6, 20.1188, 589.6809, -17.7396, 1.46975, 30000, 0), -- 6
(@CGUID+92, 1, 0.743981, 504.74, -5.31987, 2.01692, 10000, 1950501),
(@CGUID+92, 2, 0.743981, 504.74, -5.31987, 2.01692, 85000, 1950506),
(@CGUID+93, 1, -7.07519, 507.14, -5.29541, 0.657381, 14000, 1950501),
(@CGUID+93, 2, -7.07519, 507.14, -5.29541, 0.657381, 11000, 1950502),
(@CGUID+93, 3, -7.07519, 507.14, -5.29541, 0.657381, 70000, 1950505),
(@CGUID+94, 1, -24.473, 507.265, -5.30362, 0.22148, 10000, 1950501),
(@CGUID+94, 2, -24.473, 507.265, -5.30362, 0.22148, 85000, 1950506),
(@CGUID+95, 1, -17.5918, 505.421, -5.3076, 2.01692, 10000, 1950501),
(@CGUID+95, 2, -17.5918, 505.421, -5.3076, 2.08525, 85000, 1950506),
(@CGUID+96, 1, -11.5331, 590.832, -17.7077, 1.39957, 32000, 1950503),
(@CGUID+96, 2, -11.5331, 590.832, -17.7077, 1.39957, 4000, 1950506),
(@CGUID+96, 3, -3.60459, 580.712, -17.8252, 5.37684, 0, 0),
(@CGUID+96, 4, -5.46937, 575.998, -17.8898, 4.46421, 6000, 1950504),
(@CGUID+96, 5, -3.59916, 581.005, -17.8215, 1.18831, 0, 0),
(@CGUID+96, 6, -11.5331, 590.832, -17.7077, 1.39957, 30000, 0),
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

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+6, 0, 0, 1, 0, 0, 0, NULL), -- Bloodwarder Protector
(@CGUID+7, 0, 0, 1, 0, 0, 0, NULL), -- Bloodwarder Protector
(@CGUID+8, 0, 0, 1, 0, 0, 0, NULL), -- Bloodwarder Protector
(@CGUID+9, 0, 0, 1, 0, 333, 0, NULL), -- Bloodwarder Protector
(@CGUID+10, 0, 0, 1, 0, 333, 0, NULL), -- Bloodwarder Protector
(@CGUID+11, 0, 0, 1, 0, 333, 0, NULL), -- Bloodwarder Protector
(@CGUID+12, 0, 0, 1, 0, 333, 0, NULL), -- Bloodwarder Protector
(@CGUID+15, 0, 0, 1, 0, 0, 0, NULL), -- Bloodwarder Protector
(@CGUID+16, 0, 0, 1, 0, 0, 0, NULL), -- Bloodwarder Protector
(@CGUID+17, 0, 0, 1, 0, 333, 0, NULL), -- Bloodwarder Protector
(@CGUID+18, 0, 0, 1, 0, 333, 0, NULL), -- Bloodwarder Protector
(@CGUID+19, 0, 0, 1, 0, 0, 0, NULL), -- Bloodwarder Protector
(@CGUID+44, 0, 0, 0, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+45, 0, 8, 0, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+46, 0, 0, 0, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+47, 0, 8, 0, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+49, 0, 0, 0, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+50, 0, 0, 0, 0, 0, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+51, 0, 0, 0, 0, 69, 0, NULL), -- Bloodwarder Greenkeeper
(@CGUID+54, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Researcher
(@CGUID+55, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+56, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+57, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+58, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+59, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Researcher
(@CGUID+60, 0, 0, 1, 0, 69, 0, NULL), -- Sunseeker Researcher
(@CGUID+61, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+62, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Researcher
(@CGUID+63, 0, 8, 0, 0, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+65, 0, 8, 0, 0, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+67, 0, 8, 0, 0, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+68, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+69, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Botanist
(@CGUID+86, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Chemist
(@CGUID+87, 0, 0, 1, 0, 69, 0, NULL), -- Sunseeker Chemist
(@CGUID+88, 0, 0, 1, 0, 69, 0, NULL), -- Sunseeker Chemist
(@CGUID+89, 0, 0, 1, 0, 69, 0, NULL), -- Sunseeker Chemist
(@CGUID+90, 0, 0, 1, 0, 0, 0, NULL), -- Sunseeker Chemist
(@CGUID+97, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+98, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+99, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+100, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+101, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+102, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+103, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+104, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+105, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+106, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+107, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+108, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+109, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+110, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+111, 0, 7, 1, 0, 0, 0, NULL), -- Sunseeker Gene-Splicer
(@CGUID+112, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Herbalist
(@CGUID+113, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Herbalist
(@CGUID+116, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Harvester
(@CGUID+117, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Harvester
(@CGUID+118, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Harvester
(@CGUID+119, 0, 0, 0, 0, 69, 0, NULL), -- Sunseeker Harvester
(@CGUID+179, 0, 8, 0, 0, 0, 0, NULL); -- Bloodwarder Mender

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(17976, 0, 0, 1, 16, 0, 0, '19818'), -- Commander Sarannis
(19843, 0, 0, 1, 16, 0, 0, '30831'); -- Nethervine Trickster

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@CGUID+15, @CGUID+16, 1167), -- Bloodwarder Protector -> Bloodwarder Protector
(@CGUID+17, @CGUID+18, 1167), -- Bloodwarder Protector -> Bloodwarder Protector
(@CGUID+6, @CGUID+19, 1167), -- Bloodwarder Protector -> Bloodwarder Protector
(@CGUID+48, @CGUID+51, 1167), -- Bloodwarder Greenkeeper -> Bloodwarder Greenkeeper
(@CGUID+180, @CGUID+51, 1167), -- Bloodwarder Mender -> Bloodwarder Greenkeeper
(@CGUID+46, @CGUID+47, 1167), -- Bloodwarder Greenkeeper -> Bloodwarder Greenkeeper
(@CGUID+178, @CGUID+47, 1167), -- Bloodwarder Mender -> Bloodwarder Greenkeeper
(@CGUID+44, @CGUID+177, 1167), -- Bloodwarder Greenkeeper -> Bloodwarder Mender
(@CGUID+45, @CGUID+177, 1167), -- Bloodwarder Greenkeeper -> Bloodwarder Mender
(@CGUID+8, @CGUID+7, 1167), -- Bloodwarder Protector -> Bloodwarder Protector
(@CGUID+49, @CGUID+179, 1167), -- Bloodwarder Greenkeeper -> Bloodwarder Mender
(@CGUID+50, @CGUID+179, 1167), -- Bloodwarder Greenkeeper -> Bloodwarder Mender
(@CGUID+30, @CGUID+28, 1167), -- Bloodfalcon -> Bloodwarder Falconer
(@CGUID+31, @CGUID+28, 1167), -- Bloodfalcon -> Bloodwarder Falconer
(@CGUID+32, @CGUID+28, 1167), -- Bloodfalcon -> Bloodwarder Falconer
(@CGUID+9, @CGUID+10, 1167), -- Bloodwarder Protector -> Bloodwarder Protector
(@CGUID+11, @CGUID+36, 1167), -- Bloodwarder Protector -> Bloodwarder Steward
(@CGUID+12, @CGUID+36, 1167), -- Bloodwarder Protector -> Bloodwarder Steward
(@CGUID+33, @CGUID+29, 1167), -- Bloodfalcon -> Bloodwarder Falconer
(@CGUID+34, @CGUID+29, 1167), -- Bloodfalcon -> Bloodwarder Falconer
(@CGUID+35, @CGUID+29, 1167), -- Bloodfalcon -> Bloodwarder Falconer
(@CGUID+20, @CGUID+37, 1167), -- Bloodwarder Protector -> Bloodwarder Steward
(@CGUID+21, @CGUID+37, 1167), -- Bloodwarder Protector -> Bloodwarder Steward
(@CGUID+24, @CGUID+39, 1167), -- Bloodwarder Protector -> Bloodwarder Steward
(@CGUID+25, @CGUID+39, 1167), -- Bloodwarder Protector -> Bloodwarder Steward
(@CGUID+22, @CGUID+38, 1167), -- Bloodwarder Protector -> Bloodwarder Steward
(@CGUID+23, @CGUID+38, 1167), -- Bloodwarder Protector -> Bloodwarder Steward
(@CGUID+63, @CGUID+54, 1167), -- Sunseeker Botanist -> Sunseeker Researcher
(@CGUID+86, @CGUID+54, 1167), -- Sunseeker Chemist -> Sunseeker Researcher
(@CGUID+144, @CGUID+54, 1167), -- Greater Frayer -> Sunseeker Researcher
(@CGUID+145, @CGUID+64, 1679), -- Greater Frayer -> Sunseeker Botanist
(@CGUID+57, @CGUID+89, 1167), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+58, @CGUID+89, 1167), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+67, @CGUID+89, 1167), -- Sunseeker Botanist -> Sunseeker Chemist
(@CGUID+148, @CGUID+89, 1167), -- Greater Frayer -> Sunseeker Chemist
(@CGUID+147, @CGUID+66, 1679), -- Greater Frayer -> Sunseeker Botanist
(@CGUID+56, @CGUID+87, 1167), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+62, @CGUID+87, 1167), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+55, @CGUID+88, 1167), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+59, @CGUID+88, 1167), -- Sunseeker Researcher -> Sunseeker Chemist
(@CGUID+65, @CGUID+88, 1167), -- Sunseeker Botanist -> Sunseeker Chemist
(@CGUID+146, @CGUID+88, 1167), -- Greater Frayer -> Sunseeker Chemist
(@CGUID+70, @CGUID+52, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+71, @CGUID+52, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+72, @CGUID+52, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+73, @CGUID+52, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+74, @CGUID+52, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+75, @CGUID+52, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+76, @CGUID+52, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+77, @CGUID+52, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+60, @CGUID+68, 1167), -- Sunseeker Researcher -> Sunseeker Botanist
(@CGUID+149, @CGUID+68, 1167), -- Greater Frayer -> Sunseeker Botanist
(@CGUID+69, @CGUID+90, 1167), -- Sunseeker Botanist -> Sunseeker Chemist
(@CGUID+150, @CGUID+90, 1167), -- Greater Frayer -> Sunseeker Chemist
(@CGUID+78, @CGUID+53, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+79, @CGUID+53, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+80, @CGUID+53, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+81, @CGUID+53, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+82, @CGUID+53, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+83, @CGUID+53, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+84, @CGUID+53, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+85, @CGUID+53, 1167), -- Frayer -> Sunseeker Geomancer
(@CGUID+92, @CGUID+93, 1167), -- Sunseeker Channeler -> Sunseeker Channeler
(@CGUID+94, @CGUID+95, 1167), -- Sunseeker Channeler -> Sunseeker Channeler
(@CGUID+114, @CGUID+120, 1167), -- Sunseeker Herbalist -> Sunseeker Harvester
(@CGUID+115, @CGUID+120, 1167), -- Sunseeker Herbalist -> Sunseeker Harvester
(@CGUID+128, @CGUID+133, 1679), -- Nethervine Inciter -> Nethervine Reaper
(@CGUID+126, @CGUID+125, 1167), -- Nethervine Inciter -> Nethervine Inciter
(@CGUID+131, @CGUID+125, 1167), -- Nethervine Reaper -> Nethervine Inciter
(@CGUID+132, @CGUID+125, 1167), -- Nethervine Reaper -> Nethervine Inciter
(@CGUID+124, @CGUID+123, 1167), -- Nethervine Inciter -> Nethervine Inciter
(@CGUID+129, @CGUID+123, 1167), -- Nethervine Reaper -> Nethervine Inciter
(@CGUID+130, @CGUID+123, 1167), -- Nethervine Reaper -> Nethervine Inciter
(@CGUID+98, @CGUID+117, 1167), -- Sunseeker Gene-Splicer -> Sunseeker Harvester
(@CGUID+118, @CGUID+117, 1167), -- Sunseeker Harvester -> Sunseeker Harvester
(@CGUID+153, @CGUID+117, 1167), -- Mutate Fleshlasher -> Sunseeker Harvester
(@CGUID+154, @CGUID+117, 1167), -- Mutate Fleshlasher -> Sunseeker Harvester
(@CGUID+97, @CGUID+151, 1167), -- Sunseeker Gene-Splicer -> Mutate Fleshlasher
(@CGUID+112, @CGUID+151, 1167), -- Sunseeker Herbalist -> Mutate Fleshlasher
(@CGUID+116, @CGUID+151, 1167), -- Sunseeker Harvester -> Mutate Fleshlasher
(@CGUID+152, @CGUID+151, 1167), -- Mutate Fleshlasher -> Mutate Fleshlasher
(@CGUID+99, @CGUID+155, 1167), -- Sunseeker Gene-Splicer -> Mutate Fleshlasher
(@CGUID+113, @CGUID+155, 1167), -- Sunseeker Herbalist -> Mutate Fleshlasher
(@CGUID+119, @CGUID+155, 1167), -- Sunseeker Harvester -> Mutate Fleshlasher
(@CGUID+156, @CGUID+155, 1167), -- Mutate Fleshlasher -> Mutate Fleshlasher
(@CGUID+13, @CGUID+14, 1167), -- Bloodwarder Protector -> Bloodwarder Protector
(@CGUID+134, @CGUID+183, 1167), -- Mutate Fear-Shrieker -> Mutate Horror
(@CGUID+135, @CGUID+183, 1167), -- Mutate Fear-Shrieker -> Mutate Horror
(@CGUID+184, @CGUID+183, 1167), -- Mutate Horror -> Mutate Horror
(@CGUID+137, @CGUID+136, 1167), -- Mutate Fear-Shrieker -> Mutate Fear-Shrieker
(@CGUID+185, @CGUID+136, 1167), -- Mutate Horror -> Mutate Fear-Shrieker
(@CGUID+186, @CGUID+136, 1167), -- Mutate Horror -> Mutate Fear-Shrieker
(@CGUID+138, @CGUID+187, 1167), -- Mutate Fear-Shrieker -> Mutate Horror
(@CGUID+139, @CGUID+187, 1167), -- Mutate Fear-Shrieker -> Mutate Horror
(@CGUID+188, @CGUID+187, 1167), -- Mutate Horror -> Mutate Horror
(@CGUID+157, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+159, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+160, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+161, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+162, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+163, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+164, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+165, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+166, @CGUID+158, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+167, @CGUID+175, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+168, @CGUID+175, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+169, @CGUID+175, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+170, @CGUID+175, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+171, @CGUID+175, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+172, @CGUID+175, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+173, @CGUID+175, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+174, @CGUID+175, 1167), -- Frayer Wildling -> Frayer Wildling
(@CGUID+176, @CGUID+175, 1167); -- Frayer Wildling -> Frayer Wildling

-- REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(@CGUID+1, 17975, 553, 3, 118.742, 452.274, -4.89607, 0.796403, 86400, 86400, 0, 0, 0, 2), -- High Botanist Freywinn
(@CGUID+2, 17976, 553, 3, 120.012, 327.677, -4.99033, 5.47973, 86400, 86400, 0, 0, 0, 2), -- Commander Sarannis
(@CGUID+3, 17977, 553, 3, 65.8663, 392.454, -27.9772, 3.0984, 86400, 86400, 0, 0, 0, 0), -- Warp Splinter
(@CGUID+4, 17978, 553, 3, 5.03811, 593.451, -15.1414, 4.68254, 86400, 86400, 0, 0, 0, 0), -- Thorngrin the Tender
(@CGUID+5, 17980, 553, 3, -203.962, 390.84, -11.1781, 0.0518439, 86400, 86400, 0, 0, 0, 0), -- Laj
(@CGUID+6, 17993, 553, 3, 9.0511, 160.359, -5.54034, 4.42808, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Protector
(@CGUID+7, 17993, 553, 3, -14.7259, 244.255, -5.21435, 6.01145, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Protector
(@CGUID+8, 17993, 553, 3, 12.5368, 244.131, -5.27665, 3.28297, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Protector
(@CGUID+9, 17993, 553, 3, 15.7168, 284.394, -1.44363, 2.76937, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+10, 17993, 553, 3, 15.8236, 291.783, -1.47023, 3.74327, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+11, 17993, 553, 3, 47.1522, 284.676, -5.67585, 2.93823, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+12, 17993, 553, 3, 47.263, 291.679, -5.67585, 3.49587, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+13, 17993, 553, 3, -165.246, 472.491, -17.8247, 1.4263, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+14, 17993, 553, 3, -157.169, 471.525, -17.8247, 1.36739, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+15, 17993, 553, 3, 0.319128, 93.3509, -5.65202, 4.74977, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Protector
(@CGUID+16, 17993, 553, 3, -2.91064, 93.3038, -5.65202, 4.66102, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Protector
(@CGUID+17, 17993, 553, 3, 2.61628, 90.4882, -5.64622, 4.33368, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+18, 17993, 553, 3, -5.64378, 90.6378, -5.64235, 4.93059, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+19, 17993, 553, 3, -10.473, 160.51, -5.54034, 4.94409, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Protector
(@CGUID+20, 17993, 553, 3, 151.661, 281.789, -4.33474, 1.61228, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+21, 17993, 553, 3, 153.757, 281.744, -4.00861, 2.17694, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+22, 17993, 553, 3, 165.165, 295.535, -4.37166, 3.11024, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+23, 17993, 553, 3, 164.969, 292.953, -4.00805, 2.37327, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+24, 17993, 553, 3, 161.403, 285.599, -3.09818, 1.74291, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+25, 17993, 553, 3, 163.108, 287.899, -3.3132, 2.55293, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Protector
(@CGUID+26, 17993, 553, 3, -155.507, 389.66, -17.7781, 2.1041, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Protector
(@CGUID+27, 17993, 553, 3, -160.717, 374.429, -17.6977, 2.19363, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Protector
(@CGUID+28, 17994, 553, 3, -34.7252, 287.805, -1.84731, 2.18113, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Falconer
(@CGUID+29, 17994, 553, 3, 100.147, 291.115, -6.74449, 0.21604, 7200, 7200, 3, 0, 0, 1), -- Bloodwarder Falconer
(@CGUID+30, 18155, 553, 3, -31.6639, 291.06, -1.84731, 5.8136, 7200, 7200, 10, 0, 0, 1), -- Bloodfalcon
(@CGUID+31, 18155, 553, 3, -39.27, 287.635, -1.84731, 3.86188, 7200, 7200, 10, 0, 0, 1), -- Bloodfalcon
(@CGUID+32, 18155, 553, 3, -34.1896, 283.212, -1.84731, 5.66044, 7200, 7200, 10, 0, 0, 1), -- Bloodfalcon
(@CGUID+33, 18155, 553, 3, 106.133, 295.168, -6.73334, 3.58147, 7200, 7200, 10, 0, 0, 1), -- Bloodfalcon
(@CGUID+34, 18155, 553, 3, 106.163, 286.767, -6.81783, 2.23058, 7200, 7200, 10, 0, 0, 1), -- Bloodfalcon
(@CGUID+35, 18155, 553, 3, 97.7568, 284.952, -6.81234, 2.28163, 7200, 7200, 10, 0, 0, 1), -- Bloodfalcon
(@CGUID+36, 18404, 553, 3, 50.4144, 282.994, -5.64831, 1.66981, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Steward
(@CGUID+37, 18404, 553, 3, 149.565, 281.787, -4.65385, 1.01615, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Steward
(@CGUID+38, 18404, 553, 3, 165.194, 298.208, -4.77445, 3.85272, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Steward
(@CGUID+39, 18404, 553, 3, 159.136, 283.813, -3.27211, 1.29749, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Steward
(@CGUID+40, 18405, 553, 3, 14.0417, 186.274, -5.54034, 4.61588, 7200, 7200, 0, 0, 0, 2), -- Tempest-Forge Peacekeeper
(@CGUID+41, 18405, 553, 3, -17.7493, 288.036, -1.50225, 3.13537, 7200, 7200, 0, 0, 0, 2), -- Tempest-Forge Peacekeeper
(@CGUID+42, 18405, 553, 3, -1.15049, 43.6785, -5.60109, 4.72246, 7200, 7200, 0, 0, 0, 2), -- Tempest-Forge Peacekeeper
(@CGUID+43, 18405, 553, 3, -0.544267, 126.423, -5.53933, 1.64223, 7200, 7200, 0, 0, 0, 2), -- Tempest-Forge Peacekeeper
(@CGUID+44, 18419, 553, 3, 13.8952, 197.464, -5.54041, 0.944012, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Greenkeeper
(@CGUID+45, 18419, 553, 3, 16.2932, 195.016, -5.54041, 0.366745, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Greenkeeper
(@CGUID+46, 18419, 553, 3, -19.4848, 197.125, -5.54034, 1.06967, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Greenkeeper
(@CGUID+47, 18419, 553, 3, -13.7922, 197.698, -5.54033, 2.3538, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Greenkeeper
(@CGUID+48, 18419, 553, 3, 1.14457, 162.3, -5.54036, 1.77654, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Greenkeeper
(@CGUID+49, 18419, 553, 3, 4.00238, 252.355, -5.47518, 1.10514, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Greenkeeper
(@CGUID+50, 18419, 553, 3, -4.23689, 254.019, -5.4428, 2.29894, 7200, 7200, 0, 0, 0, 2), -- Bloodwarder Greenkeeper
(@CGUID+51, 18419, 553, 3, -2.82268, 162.395, -5.54036, 1.45845, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Greenkeeper
(@CGUID+52, 18420, 553, 3, 162.23, 452.538, -5.41697, 4.74775, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Geomancer
(@CGUID+53, 18420, 553, 3, 88.4563, 495.092, -5.38647, 5.83944, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Geomancer
(@CGUID+54, 18421, 553, 3, 152.792, 368.803, -5.39437, 0.971583, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Researcher
(@CGUID+55, 18421, 553, 3, 157.859, 413, -5.38639, 4.38647, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Researcher
(@CGUID+56, 18421, 553, 3, 175.628, 393.674, -5.38583, 3.98592, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Researcher
(@CGUID+57, 18421, 553, 3, 196.725, 375.837, -5.49607, 0.117831, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Researcher
(@CGUID+58, 18421, 553, 3, 199.939, 372.079, -5.52151, 0.867887, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Researcher
(@CGUID+59, 18421, 553, 3, 151.078, 410.242, -5.38645, 6.27927, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Researcher
(@CGUID+60, 18421, 553, 3, 170.872, 498.51, -2.35577, 1.77108, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Researcher
(@CGUID+61, 18421, 553, 3, 164.783, 501.235, -2.07282, 0.239551, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Researcher
(@CGUID+62, 18421, 553, 3, 175.843, 387.166, -5.30306, 2.23402, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Researcher
(@CGUID+63, 18422, 553, 3, 157.213, 367.2, -5.41774, 6.28087, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Botanist
(@CGUID+64, 18422, 553, 3, 152.724, 401.763, -5.38639, 1.10902, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Botanist
(@CGUID+65, 18422, 553, 3, 163.059, 410.22, -5.38639, 5.25592, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Botanist
(@CGUID+66, 18422, 553, 3, 159.899, 402.71, -5.38639, 2.16378, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Botanist
(@CGUID+67, 18422, 553, 3, 193.121, 377.741, -5.46704, 5.41142, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Botanist
(@CGUID+68, 18422, 553, 3, 174.814, 495.449, -2.62112, 2.26981, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Botanist
(@CGUID+69, 18422, 553, 3, 159.537, 508.659, -2.74336, 5.86693, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Botanist
(@CGUID+70, 18587, 553, 3, 168.887, 442.034, -6.92318, 3.42043, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+71, 18587, 553, 3, 171.384, 437.23, -6.93856, 4.57889, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+72, 18587, 553, 3, 165.965, 436.164, -6.87502, 3.31047, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+73, 18587, 553, 3, 162.939, 433.365, -6.83591, 1.92972, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+74, 18587, 553, 3, 160.993, 438.481, -6.82266, 1.33912, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+75, 18587, 553, 3, 154.784, 437.83, -6.75847, 3.11804, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+76, 18587, 553, 3, 152.573, 431.55, -6.71444, 4.02518, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+77, 18587, 553, 3, 148.663, 437.22, -6.69541, 0.616554, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+78, 18587, 553, 3, 106.105, 497.828, -6.85461, 3.17223, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+79, 18587, 553, 3, 106.341, 502.968, -6.91221, 5.29123, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+80, 18587, 553, 3, 103.268, 494.14, -6.80064, 3.66938, 7200, 7200, 0, 0, 0, 0), -- Frayer
(@CGUID+81, 18587, 553, 3, 107.35, 493.805, -6.82242, 3.66938, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+82, 18587, 553, 3, 102.983, 485.073, -6.70173, 3.69687, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+83, 18587, 553, 3, 99.0343, 483.894, -6.67042, 3.69687, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+84, 18587, 553, 3, 103.663, 480.451, -6.65843, 3.69687, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+85, 18587, 553, 3, 101.155, 490.86, -6.75729, 3.69687, 7200, 7200, 3, 0, 0, 1), -- Frayer
(@CGUID+86, 19486, 553, 3, 152.338, 375.192, -5.38734, 5.4405, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Chemist
(@CGUID+87, 19486, 553, 3, 169.486, 387.83, -5.38639, 0.629924, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Chemist
(@CGUID+88, 19486, 553, 3, 151.895, 406.235, -5.38639, 1.02262, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Chemist
(@CGUID+89, 19486, 553, 3, 196.994, 373.283, -5.49978, 0.451626, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Chemist
(@CGUID+90, 19486, 553, 3, 164.605, 505.64, -2.36451, 6.07113, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Chemist
(@CGUID+91, 19505, 553, 3, 19.99999, 588.3833, -17.67216, 1.58825, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Channeler
(@CGUID+92, 19505, 553, 3, 0.743981, 504.74, -5.31987, 2.01692, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Channeler
(@CGUID+93, 19505, 553, 3, -7.07519, 507.14, -5.29541, 0.657381, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Channeler
(@CGUID+94, 19505, 553, 3, -24.473, 507.265, -5.30362, 0.22148, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Channeler
(@CGUID+95, 19505, 553, 3, -17.5918, 505.421, -5.3076, 2.08525, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Channeler
(@CGUID+96, 19505, 553, 3, -11.5331, 590.832, -17.7077, 1.39957, 7200, 7200, 0, 0, 0, 2), -- Sunseeker Channeler
(@CGUID+97, 19507, 553, 3, -133.021, 508.123, -17.8247, 4.58514, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Gene-Splicer
(@CGUID+98, 19507, 553, 3, -150.865, 525.923, -17.8238, 3.51153, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Gene-Splicer
(@CGUID+99, 19507, 553, 3, -160.597, 499.904, -17.8249, 3.47772, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Gene-Splicer
(@CGUID+100, 19507, 553, 3, -157.634, 411.701, -17.6124, 1.27409, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+101, 19507, 553, 3, -177.217, 408.964, -17.6069, 2.07694, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+102, 19507, 553, 3, -150.54, 400.302, -17.7579, 2.75762, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+103, 19507, 553, 3, -172.605, 403.925, -17.6111, 4.74729, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+104, 19507, 553, 3, -173.274, 390.129, -17.6073, 3.50811, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+105, 19507, 553, 3, -177.095, 378.248, -17.6081, 5.18363, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+106, 19507, 553, 3, -172.32, 380.316, -17.6107, 0.890118, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+107, 19507, 553, 3, -166.857, 398.471, -17.6142, 4.2237, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+108, 19507, 553, 3, -154.356, 386.376, -17.7216, 4.43314, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+109, 19507, 553, 3, -179.922, 401.107, -17.6042, 0.488692, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+110, 19507, 553, 3, -164.275, 375.683, -17.6168, 2.75762, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+111, 19507, 553, 3, -152.4, 372.664, -17.6055, 0.331613, 7200, 7200, 0, 0, 1, 0), -- Sunseeker Gene-Splicer
(@CGUID+112, 19508, 553, 3, -129.737, 504.99, -17.8238, 3.72123, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Herbalist
(@CGUID+113, 19508, 553, 3, -163.41, 504.118, -17.8238, 4.0291, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Herbalist
(@CGUID+114, 19508, 553, 3, -16.2609, 482.706, -5.38576, 3.94444, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Herbalist
(@CGUID+115, 19508, 553, 3, -17.3213, 485.099, -5.36875, 2.96706, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Herbalist
(@CGUID+116, 19509, 553, 3, -136.26, 507.361, -17.8249, 4.19637, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Harvester
(@CGUID+117, 19509, 553, 3, -154.764, 529.822, -17.8238, 4.18854, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Harvester
(@CGUID+118, 19509, 553, 3, -150.717, 521.538, -17.8249, 2.80621, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Harvester
(@CGUID+119, 19509, 553, 3, -162.198, 494.549, -17.8249, 2.68839, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Harvester
(@CGUID+120, 19509, 553, 3, -15.0387, 479.981, -5.40512, 1.39626, 7200, 7200, 0, 0, 0, 0), -- Sunseeker Harvester
(@CGUID+121, 19511, 553, 3, -15.4197, 496.312, -5.37234, 5.4326, 7200, 7200, 0, 0, 0, 2), -- Nethervine Inciter
(@CGUID+122, 19511, 553, 3, 1.368, 493.801, -5.4124, 2.88573, 7200, 7200, 0, 0, 0, 2), -- Nethervine Inciter
(@CGUID+123, 19511, 553, 3, -9.989522, 577.369, -17.7983, 1.134464, 7200, 7200, 0, 0, 0, 0), -- Nethervine Inciter
(@CGUID+124, 19511, 553, 3, -0.867442, 569.955, -17.8747, 1.448623, 7200, 7200, 0, 0, 0, 0), -- Nethervine Inciter
(@CGUID+125, 19511, 553, 3, 13.71863, 579.1215, -17.7867, 1.989675, 7200, 7200, 0, 0, 0, 0), -- Nethervine Inciter
(@CGUID+126, 19511, 553, 3, 13.1327, 569.8241, -17.9185, 1.797689, 7200, 7200, 0, 0, 0, 0), -- Nethervine Inciter
(@CGUID+127, 19511, 553, 3, -16.2073, 559.726, -18.1084, 3.0654, 7200, 7200, 0, 0, 0, 2), -- Nethervine Inciter
(@CGUID+128, 19511, 553, 3, -19.6808, 514.978, -5.89398, 5.61429, 7200, 7200, 0, 0, 0, 0), -- Nethervine Inciter
(@CGUID+129, 19512, 553, 3, -8.293036, 568.9183, -17.90353, 1.256637, 7200, 7200, 0, 0, 0, 0), -- Nethervine Reaper
(@CGUID+130, 19512, 553, 3, 0.125824, 576.9891, -17.7821, 1.413717, 7200, 7200, 0, 0, 0, 0), -- Nethervine Reaper
(@CGUID+131, 19512, 553, 3, 20.65789, 570.2673, -17.93285, 2.042035, 7200, 7200, 0, 0, 0, 0), -- Nethervine Reaper
(@CGUID+132, 19512, 553, 3, 22.30274, 579.251, -17.80825, 2.251475, 7200, 7200, 0, 0, 0, 0), -- Nethervine Reaper
(@CGUID+133, 19512, 553, 3, -18.8205, 518.483, -6.07107, 6.05097, 7200, 7200, 0, 0, 0, 2), -- Nethervine Reaper
(@CGUID+134, 19513, 553, 3, -179.26, 413.633, -17.6885, 4.20814, 7200, 7200, 0, 0, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+135, 19513, 553, 3, -174.099, 408.19, -17.6913, 5.89674, 7200, 7200, 0, 0, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+136, 19513, 553, 3, -160.795, 405.768, -17.6949, 5.12784, 7200, 7200, 0, 0, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+137, 19513, 553, 3, -156.22, 402.327, -17.7852, 5.65798, 7200, 7200, 0, 0, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+138, 19513, 553, 3, -175.537, 378.661, -17.6926, 4.7155, 7200, 7200, 0, 0, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+139, 19513, 553, 3, -153.73, 377.347, -17.6915, 3.34498, 7200, 7200, 0, 0, 0, 0), -- Mutate Fear-Shrieker
(@CGUID+140, 19555, 553, 3, -18.0924, 509.914, 1.61268, 3.52556, 7200, 7200, 0, 0, 0, 0), -- TK Atrium Channel Target
(@CGUID+141, 19555, 553, 3, -1.83877, 510.545, 0.624383, 2.58309, 7200, 7200, 0, 0, 0, 0), -- TK Atrium Channel Target
(@CGUID+142, 19555, 553, 3, -9.87732, 599.763, -8.5421, 6.03884, 7200, 7200, 0, 0, 0, 0), -- TK Atrium Channel Target
(@CGUID+143, 19555, 553, 3, 20.0907, 599.71, -8.29904, 3.14159, 7200, 7200, 0, 0, 0, 0), -- TK Atrium Channel Target
(@CGUID+144, 19557, 553, 3, 159.302, 367.64, -5.41133, 3.52488, 7200, 7200, 0, 0, 0, 0), -- Greater Frayer
(@CGUID+145, 19557, 553, 3, 151.366, 400.148, -5.38639, 0.900887, 7200, 7200, 0, 0, 0, 0), -- Greater Frayer
(@CGUID+146, 19557, 553, 3, 164.377, 408.295, -5.38641, 2.15514, 7200, 7200, 0, 0, 0, 0), -- Greater Frayer
(@CGUID+147, 19557, 553, 3, 161.871, 399.913, -5.38639, 2.1049, 7200, 7200, 0, 0, 0, 0), -- Greater Frayer
(@CGUID+148, 19557, 553, 3, 194.601, 376.902, -5.47873, 2.65074, 7200, 7200, 0, 0, 0, 0), -- Greater Frayer
(@CGUID+149, 19557, 553, 3, 173.692, 496.74, -2.51852, 5.33679, 7200, 7200, 0, 0, 0, 0), -- Greater Frayer
(@CGUID+150, 19557, 553, 3, 162.363, 507.301, -2.5377, 2.6625, 7200, 7200, 0, 0, 0, 0), -- Greater Frayer
(@CGUID+151, 19598, 553, 3, -133.4, 518.873, -17.8247, 4.12176, 7200, 7200, 3, 0, 0, 1), -- Mutate Fleshlasher
(@CGUID+152, 19598, 553, 3, -126.586, 510.349, -17.8247, 2.6295, 7200, 7200, 3, 0, 0, 1), -- Mutate Fleshlasher
(@CGUID+153, 19598, 553, 3, -149.496, 533.72, -17.8249, 4.90715, 7200, 7200, 3, 0, 0, 1), -- Mutate Fleshlasher
(@CGUID+154, 19598, 553, 3, -145.39, 520.226, -17.8249, 3.71334, 7200, 7200, 3, 0, 0, 1), -- Mutate Fleshlasher
(@CGUID+155, 19598, 553, 3, -155.895, 511.581, -17.8249, 2.20537, 7200, 7200, 3, 0, 0, 1), -- Mutate Fleshlasher
(@CGUID+156, 19598, 553, 3, -154.103, 502.819, -17.8249, 5.08386, 7200, 7200, 3, 0, 0, 1), -- Mutate Fleshlasher
(@CGUID+157, 19608, 553, 3, -7.40264, 405.74, -28.8768, 0.568592, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+158, 19608, 553, 3, -11.3965, 409.641, -28.9496, 1.05554, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+159, 19608, 553, 3, -5.04485, 413.541, -28.7785, 0.851335, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+160, 19608, 553, 3, -2.76557, 407.948, -28.8031, 0.851335, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+161, 19608, 553, 3, 2.45118, 411.253, -27.8576, 0.851335, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+162, 19608, 553, 3, 1.42734, 417.668, -28.5357, 0.851335, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+163, 19608, 553, 3, -12.6501, 413.66, -28.9731, 0.851335, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+164, 19608, 553, 3, 8.47863, 406.905, -27.2781, 0.00703203, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+165, 19608, 553, 3, 5.30724, 405.438, -27.6309, 0.00703203, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+166, 19608, 553, 3, 17.547, 404.861, -27.1645, 3.80836, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+167, 19608, 553, 3, 23.7654, 371.145, -26.2477, 5.5166, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+168, 19608, 553, 3, 9.38162, 375.868, -26.9916, 5.46555, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+169, 19608, 553, 3, 17.2784, 379.591, -27.3824, 5.46555, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+170, 19608, 553, 3, 33.6453, 373.674, -26.3937, 5.46555, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+171, 19608, 553, 3, 48.5151, 367.157, -27.7453, 5.46555, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+172, 19608, 553, 3, 54.0026, 360.482, -26.8436, 5.46555, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+173, 19608, 553, 3, 49.4192, 355.22, -25.9677, 3.27036, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+174, 19608, 553, 3, 23.2317, 359.402, -26.5154, 1.86057, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+175, 19608, 553, 3, 1.29839, 363.459, -28.1844, 2.15117, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+176, 19608, 553, 3, 16.9297, 368.371, -26.301, 0.360461, 7200, 7200, 3, 0, 0, 1), -- Frayer Wildling
(@CGUID+177, 19633, 553, 3, 9.96607, 201.49, -5.54034, 4.46653, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Mender
(@CGUID+178, 19633, 553, 3, -10.8899, 200.943, -5.54034, 5.33439, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Mender
(@CGUID+179, 19633, 553, 3, -0.803799, 255.715, -5.489, 1.28576, 7200, 7200, 0, 0, 0, 0), -- Bloodwarder Mender
(@CGUID+180, 19633, 553, 3, 6.15941, 166.406, -5.54122, 1.51584, 7200, 7200, 3, 0, 0, 1), -- Bloodwarder Mender
(@CGUID+181, 19843, 553, 3, -76.9737, 558.159, -17.7822, 0.634591, 7200, 7200, 5, 0, 0, 1), -- Nethervine Trickster
(@CGUID+182, 19843, 553, 3, -88.6611, 547.244, -17.8057, 0.557306, 7200, 7200, 5, 0, 0, 1), -- Nethervine Trickster
(@CGUID+183, 19865, 553, 3, -176.416, 417.391, -17.6969, 3.70156, 7200, 7200, 0, 0, 0, 0), -- Mutate Horror
(@CGUID+184, 19865, 553, 3, -178.451, 397.761, -17.6878, 0.458639, 7200, 7200, 0, 0, 0, 0), -- Mutate Horror
(@CGUID+185, 19865, 553, 3, -153.927, 415.133, -17.6938, 4.2796, 7200, 7200, 0, 0, 0, 0), -- Mutate Horror
(@CGUID+186, 19865, 553, 3, -150.972, 395.511, -17.8314, 1.30294, 7200, 7200, 0, 0, 0, 0), -- Mutate Horror
(@CGUID+187, 19865, 553, 3, -158.512, 382.764, -17.7646, 4.55449, 7200, 7200, 0, 0, 0, 0), -- Mutate Horror
(@CGUID+188, 19865, 553, 3, -171.692, 386.431, -17.6929, 4.62911, 7200, 7200, 0, 0, 0, 0); -- Mutate Horror

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+1, 184215, 553, 3, 47.5461, -35.5614, 1.41111, 2.35619, 0, 0, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+2, 184216, 553, 3, 47.5461, -35.5614, 1.41111, 2.35619, 0, 0, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+3, 184217, 553, 3, 159.893, 391.743, -34.6478, 3.14159, 0, 0, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_0
(@OGUID+4, 184218, 553, 3, 159.893, 391.743, -34.6478, 3.14159, 0, 0, 0, 0, 0, 0, 0, 0), -- Instance_Portal_Difficulty_1
(@OGUID+5, 181270, 553, 3, 173.0421, 388.6885, -3.900286, 4.799657, 0, 0, -0.6755896, 0.7372779, 86400, 86400, 100, 1), -- Felweed
(@OGUID+6, 181270, 553, 3, -154.1918, 523.5183, -16.01933, 3.351047, 0, 0, -0.9945211, 0.1045355, 86400, 86400, 100, 1), -- Felweed
(@OGUID+7, 181270, 553, 3, 28.6266, 356.7638, -26.15407, 3.787367, 0, 0, -0.9483232, 0.3173059, 86400, 86400, 100, 1), -- Felweed
(@OGUID+8, 181270, 553, 3, 35.2637, 352.591, -25.9644, 4.416, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Felweed
(@OGUID+9, 181270, 553, 3, 70.1794, 432.941, -24.8402, 0.3532, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Felweed
(@OGUID+10, 181271, 553, 3, 0.634392, 165.9616, -3.672326, 3.769912, 0, 0, -0.9510565, 0.3090171, 86400, 86400, 100, 1), -- Dreaming Glory
(@OGUID+11, 181271, 553, 3, 155.0183, 409.8469, -3.525341, 6.19592, 0, 0, -0.04361916, 0.9990482, 86400, 86400, 100, 1), -- Dreaming Glory
(@OGUID+12, 181271, 553, 3, -22.20031, 502.6438, -4.840034, 0.3141584, 0, 0, 0.1564341, 0.9876884, 86400, 86400, 100, 1), -- Dreaming Glory
(@OGUID+13, 181277, 553, 3, -165.2932, 495.9111, -15.07489, 4.398232, 0, 0, -0.8090162, 0.5877863, 86400, 86400, 100, 1), -- Terocone
(@OGUID+14, 181279, 553, 3, -0.459927, 256.7108, -4.356128, 3.822273, 0, 0, -0.9426413, 0.3338076, 86400, 86400, 100, 1), -- Netherbloom
(@OGUID+15, 181279, 553, 3, 169.2339, 504.4491, 0.050639, 2.321287, 0, 0, 0.9170599, 0.3987495, 86400, 86400, 100, 1), -- Netherbloom
(@OGUID+16, 181279, 553, 3, 115.8156, 450.6175, -3.823856, 0.2792516, 0, 0, 0.1391726, 0.9902682, 86400, 86400, 100, 1), -- Netherbloom
(@OGUID+17, 184940, 553, 3, 154.0024, 377.8789, -5.386404, 1.902409, 0, 0, 0, 0, 86400, 86400, 100, 1), -- Bound Adamantite Chest
(@OGUID+18, 184941, 553, 3, 154.0024, 377.8789, -5.386404, 1.902409, 0, 0, 0, 0, 86400, 86400, 100, 1); -- Solid Adamantite Chest

-- ======
-- EVENTS
-- ======

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(@CGUID+1, 0, 22805, 0, 0, 0, 2); -- High Botanist Freywinn (Feast of Winter Veil - Main Event)

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
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
(@OGUID+10, @PGUID+22, 0, 'The Botanica - Dreaming Glory (181271)'),
(@OGUID+11, @PGUID+22, 0, 'The Botanica - Dreaming Glory (181271)'),
(@OGUID+12, @PGUID+22, 0, 'The Botanica - Dreaming Glory (181271)'),
(@OGUID+13, @PGUID+21, 0, 'The Botanica - Terocone (181277)'),
(@OGUID+14, @PGUID+23, 0, 'The Botanica - Netherbloom (181279)'),
(@OGUID+15, @PGUID+23, 0, 'The Botanica - Netherbloom (181279)'),
(@OGUID+16, @PGUID+23, 0, 'The Botanica - Netherbloom (181279)'),
(@OGUID+17, @PGUID+24, 0, 'The Botanica - Bound Adamantite Chest (184940)'),
(@OGUID+18, @PGUID+24, 0, 'The Botanica - Solid Adamantite Chest (184941)');

-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1797501,1797601,1799301,1799302,1799303,1799304,1842001,1842002,1842003,1842004,1842005,1842006,1842101,1842201,1842202,1842203);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1950501,1950502,1950503,1950504,1950505,1950506,8298601,8298602,8298603,8315101);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1797501, 0, 0, 0, 0, 0, 0, 0, 0, 2000005554, 2000005555, 2000005556, 2000005557, 0, 0, 0, 0, ''),
(1797601, 0, 0, 0, 0, 0, 0, 0, 0, 2000005550, 0, 0, 0, 0, 0, 0, 0, ''),
(1799301, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Protector (Botanica) - Run Mode On'),
(1799302, 0, 15, 37493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Protector (Botanica) - Feign Death'),
(1799302, 15, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Protector (Botanica) - Despawn'),
(1799303, 0, 0, 0, 0, 0, 0, 0, 0, 2000005558, 0, 0, 0, 0, 0, 0, 0, ''),
(1799304, 0, 0, 0, 0, 0, 0, 0, 0, 2000005559, 0, 0, 0, 0, 0, 0, 0, ''),
(1842001, 1, 0, 0, 0, 0, 0, 0, 0, 2000005551, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Geomancer - say'),
(1842002, 1, 15, 34183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842003, 1, 15, 34185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842004, 1, 15, 34170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842004, 3, 15, 34170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842004, 5, 15, 34170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842005, 5, 15, 34167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842006, 5, 15, 34169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842101, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842101, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1842201, 0, 0, 0, 0, 0, 0, 0, 0, 2000005552, 0, 0, 0, 0, 0, 0, 0, ''),
(1842202, 0, 0, 0, 0, 0, 0, 0, 0, 2000005553, 0, 0, 0, 0, 0, 0, 0, ''),
(1842203, 0, 15, 34254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Botanist - Cast Rejuvenate Plant'),
(1950501, 0, 15, 34221, 0, 0, 19555, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Crystal Channel TK Atrium Channel Target'),
(1950502, 0, 15, 34200, 0, 0, 19511, @CGUID+122, 17, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Crystal Channel Nethervine Inciter'),
(1950502, 7, 15, 34187, 0, 0, 19511, @CGUID+122, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Nethervine Inciter Casts Sunseeker Blessing'),
(1950503, 0, 15, 34221, 0, 0, 19555, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Crystal Channel TK Atrium Channel Target'),
(1950504, 2, 15, 34222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Cast Sunseeker Blessing AOE'),
(1950505, 1, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Emote'),
(1950506, 1, 15, 34173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunseeker Channeler (Botanica) - Cast Sunseeker Blessing'),
(8298601, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Salute'),
(8298601, 1, 1, 66, 0, 0, 18404, @CGUID+37, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Steward Salute'),
(8298601, 1, 1, 66, 0, 0, 17993, @CGUID+20, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Protector Salute'),
(8298601, 1, 1, 66, 0, 0, 17993, @CGUID+21, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Protector Salute'),
(8298602, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Salute'),
(8298602, 1, 1, 66, 0, 0, 17993, @CGUID+24, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Protector Salute'),
(8298602, 1, 1, 66, 0, 0, 17993, @CGUID+25, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Protector Salute'),
(8298602, 1, 1, 66, 0, 0, 18404, @CGUID+39, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Steward Salute'),
(8298603, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Salute'),
(8298603, 1, 1, 66, 0, 0, 18404, @CGUID+38, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Steward Salute'),
(8298603, 1, 1, 66, 0, 0, 17993, @CGUID+22, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Protector Salute'),
(8298603, 1, 1, 66, 0, 0, 17993, @CGUID+23, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Sarannis (Botanica) - Bloodwarder Protector Salute'),
(8315101, 1, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector (Botanica) - Salute'),
(8315101, 3, 1, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector (Botanica) - Ready For Combat'),
(8315101, 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodwarder Protector (Botanica) - Disable Waypoint Movement');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000005550 AND 2000005559;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000005550, 'We must not fail our leader!  Kael''thas will redeem us!', 0, 1, 0, 4, 'Commander Sarannis in Botanica'),
(2000005551, 'Hmm...Frost, Fire, and Arcane defenses respond faster than Batch 7, but Nature defenses remain passive.', 0, 0, 0, 1, 'Sunseeker Geomancer in Botanica'),
(2000005552, 'Hmm...', 0, 0, 0, 1, 'Sunseeker Botanist in Botanica'),
(2000005553, 'Yes. That did the trick.', 0, 0, 0, 1, 'Sunseeker Botanist in Botanica'),
(2000005554, '...mumble...Petals of Fire...mumble...', 0, 0, 0, 69, 'High Botanist Freywinn in Botanica'),
(2000005555, '...mumble mumble...', 0, 0, 0, 69, 'High Botanist Freywinn in Botanica'),
(2000005556, '...with the right mixture, perhaps...', 0, 0, 0, 69, 'High Botanist Freywinn in Botanica'),
(2000005557, '...thorny vines...mumble...ouch!', 0, 0, 0, 69, 'High Botanist Freywinn in Botanica'),
(2000005558, 'Get out of here, there are too many of them! Escape while you can!', 0, 1, 0, 0, 'Sunseeker Protector in Botanica'),
(2000005559, 'Help! Someone help us!', 0, 1, 0, 0, 'Sunseeker Protector in Botanica');

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


