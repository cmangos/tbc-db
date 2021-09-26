-- fix position of Belbi Quikswitch
UPDATE creature SET position_x=-5176.9, position_y=-624.369, position_z=397.947, orientation=0.715585 WHERE id=23710;
UPDATE broadcast_text SET SoundEntriesID1=10033 WHERE Id BETWEEN 22170 AND 22175; -- Belbi Quikswitch texts

DELETE FROM creature_template_addon WHERE entry IN (23527,23528,23487);
INSERT INTO creature_template_addon (entry, auras) VALUES
(23527, 36440), -- Teldrassil Pink Elekk
(23528, 36440), -- Azuremyst Pink Elekk
(23487, 39707); -- Wild Wolpertinger (spell 39707 doesn't exist, but will be added soon)

DELETE FROM creature WHERE guid IN (5302512,5302513,5302514);
DELETE FROM creature WHERE guid BETWEEN 5302515 AND 5302530;
DELETE FROM creature WHERE guid BETWEEN 101254 AND 101269;
DELETE FROM creature WHERE guid BETWEEN 5302531 AND 5302545;
DELETE FROM creature WHERE guid BETWEEN 101270 AND 101292;
DELETE FROM creature WHERE guid BETWEEN 101293 AND 101308;
DELETE FROM creature WHERE guid BETWEEN 101309 AND 101328;
DELETE FROM creature WHERE guid BETWEEN 101330 AND 101459;
DELETE FROM creature WHERE guid BETWEEN 101461 AND 101495;
DELETE FROM creature WHERE guid BETWEEN 5302546 AND 5302561;
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawndist, MovementType) VALUES
(5302512, 24501, 530, 1, -1926.79, 5562.97, -12.3448, 5.06145, 0, 0), -- Drohn's Distillery Apprentice
(5302513, 23511, 530, 1, -1906.3, 5569.85, -12.3448, 4.97419, 0, 0), -- Gordok Brew Apprentice
(5302514, 24545, 530, 1, -1882.76, 5575.42, -12.3448, 4.67748, 0, 0), -- Thunderbrew "Apprentice"

-- Teldrassil Pink Elekk
(5302515, 23527, 530, 1, -1858.695, 5579.19, -12.42814, 1.027785, 10, 1),
(5302516, 23527, 530, 1, -1876.107, 5543.581, -12.42813, 5.453162, 10, 1),
(5302517, 23527, 530, 1, -1957.161, 5531.783, -12.42814, 0.7368447, 10, 1),
(5302518, 23527, 530, 1, -1791.467, 5531.982, -12.42814, 3.725685, 10, 1),
(5302519, 23527, 530, 1, -1940.585, 5512.5, -12.42814, 3.566893, 10, 1),
(5302520, 23527, 530, 1, -1897.7, 5539.629, -12.42813, 2.073226, 10, 1),
(5302521, 23527, 530, 1, -1856.179, 5550.274, -12.42814, 4.728647, 10, 1),
(5302522, 23527, 530, 1, -1937.264, 5540.257, -12.42814, 3.692894, 10, 1),
(5302523, 23527, 530, 1, -1945.217, 5559.136, -12.42814, 4.118226, 10, 1),
(5302524, 23527, 530, 1, -1919.453, 5509.699, -12.42813, 1.765633, 10, 1),
(5302525, 23527, 530, 1, -1917.21, 5529.004, -12.42813, 2.385989, 10, 1),
(5302526, 23527, 530, 1, -1882.061, 5471.191, -12.42812, 4.631204, 10, 1),
(5302527, 23527, 530, 1, -1790.339, 5500.211, -12.42814, 1.41654, 10, 1),
(5302528, 23527, 530, 1, -1775.525, 5514.682, -12.42814, 1.25304, 10, 1),
(5302529, 23527, 530, 1, -1988.115, 5442.348, -12.42814, 0.8683074, 10, 1),
(5302530, 23527, 530, 1, -1961.616, 5505.062, -12.42814, 1.358342, 10, 1),
(101254, 23527, 1, 1, 9971.25, 2137.91, 1327.93, 0.871208, 10, 1),
(101255, 23527, 1, 1, 10008.5, 2208.25, 1327.82, 1.48579, 10, 1),
(101256, 23527, 1, 1, 10001.4, 2248.27, 1329.18, 2.25103, 10, 1),
(101257, 23527, 1, 1, 9956.31, 2232.14, 1332.17, 5.39161, 10, 1),
(101258, 23527, 1, 1, 9964, 2248.57, 1334.32, 1.24163, 10, 1),
(101259, 23527, 1, 1, 9958.73, 2195.76, 1327.94, 5.5453, 10, 1),
(101260, 23527, 1, 1, 9983.53, 2155.2, 1328.18, 0.890374, 10, 1),
(101261, 23527, 1, 1, 10006.8, 2181.27, 1329.09, 2.2175, 10, 1),
(101262, 23527, 1, 1, 9991.1, 2172.79, 1327.78, 1.6653, 10, 1),
(101263, 23527, 1, 1, 10005.4, 2227.1, 1330.2, 4.96046, 10, 1),
(101264, 23527, 1, 1, 9974.32, 2154.54, 1328.69, 6.16293, 10, 1),
(101265, 23527, 1, 1, 9978.23, 2253.19, 1333.33, 1.60498, 10, 1),
(101266, 23527, 1, 1, 9992.29, 2154.51, 1328.81, 1.57373, 10, 1),
(101267, 23527, 1, 1, 9993.82, 2139.68, 1330.12, 2.21204, 10, 1),
(101268, 23527, 1, 1, 9991.74, 2253.05, 1330.8, 4.03953, 10, 1),
(101269, 23527, 1, 1, 9986.09, 2140.14, 1328.81, 0.423745, 10, 1),

-- Azuremyst Pink Elekk
(5302531, 23528, 530, 1, -4018.65, -11833, 0.0954492, 4.28238, 10, 1),
(5302532, 23528, 530, 1, -4023.73, -11854.7, -0.0274676, 5.21769, 10, 1),
(5302533, 23528, 530, 1, -4040.48, -11883.6, -0.523277, 3.24535, 10, 1),
(5302534, 23528, 530, 1, -4033.48, -11899.9, -2.44418, 2.91993, 10, 1),
(5302535, 23528, 530, 1, -4015.65, -11891.3, -1.77314, 0.931278, 10, 1),
(5302536, 23528, 530, 1, -4051.98, -11890.3, -1.64453, 0.68298, 10, 1),
(5302537, 23528, 530, 1, -3995.23, -11904.8, -1.30878, 0.403353, 10, 1),
(5302538, 23528, 530, 1, -4044.42, -11905, -2.41717, 4.04526, 10, 1),
(5302539, 23528, 530, 1, -4029.29, -11912.5, -2.41717, 4.75087, 10, 1),
(5302540, 23528, 530, 1, -4010.05, -11912.1, -1.43524, 1.41477, 10, 1),
(5302541, 23528, 530, 1, -3957.11, -11864.2, 0.799605, 4.21054, 10, 1),
(5302542, 23528, 530, 1, -3975.18, -11884.3, 0.572506, 1.41818, 10, 1),
(5302543, 23528, 530, 1, -3990.5, -11923.7, 0.473576, 3.05043, 10, 1),
(5302544, 23528, 530, 1, -4015.78, -11920.1, -1.99774, 1.95188, 10, 1),
(5302545, 23528, 530, 1, -3999.72, -11933.7, -1.80908, 2.15801, 10, 1),

-- Elwynn Pink Elekk
(101270, 23507, 0, 1, -9060.98, 301.484, 93.9039, 1.26139, 10, 1),
(101271, 23507, 0, 1, -9083.74, 385.065, 92.8498, 4.45727, 10, 1),
(101272, 23507, 0, 1, -9045.78, 350.592, 94.1475, 2.45923, 10, 1),
(101273, 23507, 0, 1, -9069.61, 377.423, 92.6135, 4.98985, 10, 1),
(101274, 23507, 0, 1, -9083.58, 362.84, 93.5281, 4.70848, 10, 1),
(101275, 23507, 0, 1, -9029.62, 342.647, 93.3571, 1.09875, 10, 1),
(101276, 23507, 0, 1, -9092.02, 291.304, 94.7718, 0.802793, 10, 1),
(101277, 23507, 0, 1, -9075.5, 348.241, 93.1329, 4.67005, 10, 1),
(101278, 23507, 0, 1, -9147.86, 339.108, 90.0909, 2.7413, 10, 1),
(101279, 23507, 0, 1, -9128.34, 356.459, 92.8902, 5.39122, 10, 1),
(101280, 23507, 0, 1, -9082.88, 337.638, 93.798, 5.40713, 10, 1),
(101281, 23507, 0, 1, -9051.1, 365.711, 93.0833, 0.713307, 10, 1),
(101282, 23507, 0, 1, -9139.18, 379.434, 90.7553, 6.15004, 10, 1),
(101283, 23507, 0, 1, -9045.2, 335.464, 94.236, 3.61662, 10, 1),
(101284, 23507, 0, 1, -9158.38, 358.762, 89.2488, 5.11423, 10, 1),
(101285, 23507, 0, 1, -9080.92, 301.252, 93.1863, 2.28577, 10, 1),
(101286, 23507, 0, 1, -9112.18, 283.315, 98.9899, 3.49671, 10, 1),
(101287, 23507, 0, 1, -9109.53, 375.457, 93.9617, 4.58493, 10, 1),
(101288, 23507, 0, 1, -9060.91, 337.259, 94.0499, 4.24032, 10, 1),
(101289, 23507, 0, 1, -9112.74, 357.636, 93.566, 4.69289, 10, 1),
(101290, 23507, 0, 1, -9056.94, 350.605, 93.4274, 0.410787, 10, 1),
(101291, 23507, 0, 1, -9121.35, 370.819, 93.0836, 1.18646, 10, 1),
(101292, 23507, 0, 1, -9052.58, 318.682, 93.2172, 6.01937, 10, 1),

-- Wild Wolpertinger
(101293, 23487, 0, 1, -5214.65, -501.542, 387.941, 3.1269, 10, 1),
(101294, 23487, 0, 1, -5217.05, -533.464, 391.91, 5.83877, 10, 1),
(101295, 23487, 0, 1, -5182.1, -526.728, 394.129, 1.69806, 10, 1),
(101296, 23487, 0, 1, -5191.04, -599.01, 397.301, 0.783621, 10, 1),
(101297, 23487, 0, 1, -5181.23, -527.23, 394.306, 1.35189, 10, 1),
(101298, 23487, 0, 1, -5190.15, -499.478, 387.88, 0, 10, 1),
(101299, 23487, 0, 1, -5165.24, -545.868, 397.301, 4.69296, 10, 1),
(101300, 23487, 0, 1, -5209.27, -512.709, 389.573, 4.9389, 10, 1),
(101301, 23487, 0, 1, -5208, -571.167, 398.964, 1.22803, 10, 1),
(101302, 23487, 0, 1, -5162.18, -606.856, 398.068, 0.0605911, 10, 1),
(101303, 23487, 0, 1, -5202.41, -493.479, 388.482, 4.9071, 10, 1),
(101304, 23487, 0, 1, -5251.95, -465.952, 388.792, 5.74075, 10, 1),
(101305, 23487, 0, 1, -5269.35, -430.534, 391.448, 0.324223, 10, 1),
(101306, 23487, 0, 1, -5180.54, -488.882, 387.102, 0.174136, 10, 1),
(101307, 23487, 0, 1, -5325.29, -524.84, 391.68, 2.13631, 10, 1),
(101308, 23487, 0, 1, -5339.55, -539.553, 393.751, 1.67844, 10, 1),

(101309, 23700, 0, 1, -5185.96, -599.796, 396.473, 0.122173, 0, 0), -- Barleybrew Festive Keg
(101310, 23702, 0, 1, -5159.87, -631.808, 397.263, 5.06145, 0, 0), -- Thunderbrew Festive Keg
(101311, 23703, 0, 1, -5152.34, -604.997, 398.523, 5.60251, 0, 0), -- [DND] Brewfest Dark Iron Event Generator
(101312, 23703, 0, 1, -5115.21, -612.475, 402.23, 2.23402, 0, 0), -- [DND] Brewfest Dark Iron Event Generator
(101313, 23703, 0, 1, -5116.33, -616.3, 402.837, 1.55334, 0, 0), -- [DND] Brewfest Dark Iron Event Generator
(101314, 23706, 0, 1, -5146.53, -576.45, 397.259, 3.80482, 0, 0), -- Gordok Festive Keg
(101315, 23808, 0, 1, -5158.17, -628.813, 397.349, 5.18785, 3.44221, 1), -- [DND] Brewfest Keg Move to Target
(101316, 23808, 0, 1, -5183.85, -599.806, 397.301, 2.46844, 2.29327, 1), -- [DND] Brewfest Keg Move to Target
(101317, 23808, 0, 1, -5148.59, -578.905, 397.301, 5.2203, 2.70043, 1), -- [DND] Brewfest Keg Move to Target
(101318, 24109, 0, 1, -5167.12, -547.328, 397.259, 1.48353, 0, 0), -- [DND] Brewfest Target Dummy Move To Target
(101319, 24109, 0, 1, -5168.08, -538.463, 397.26, 5.28835, 0, 0), -- [DND] Brewfest Target Dummy Move To Target

(101320, 23894, 0, 1, -5185.22, -571.238, 397.264, 3.40339, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101321, 23894, 0, 1, -5174.79, -575.339, 397.422, 2.07694, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101322, 23894, 0, 1, -5180.45, -582.974, 397.854, 1.58825, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101323, 23894, 0, 1, -5166.21, -579.182, 397.285, 2.1293, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101324, 23894, 0, 1, -5180.45, -582.974, 397.854, 1.58825, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101325, 23894, 0, 1, -5136.89, -609.955, 397.718, 1.90241, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101326, 23894, 0, 1, -5143.15, -589.13, 397.306, 2.02458, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101327, 23894, 0, 1, -5166.21, -579.182, 397.285, 2.1293, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101328, 23894, 0, 1, -5159.99, -597.016, 398.187, 0.0698132, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
-- 101329 taken
(101330, 23894, 0, 1, -5135.09, -596.353, 397.369, 2.21657, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101331, 23894, 0, 1, -5143.85, -617.721, 397.956, 2.44346, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101332, 23894, 0, 1, -5151.16, -610.857, 398.621, 5.39307, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101333, 23894, 0, 1, -5169.62, -588.142, 397.98, 2.44346, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101334, 23894, 0, 1, -5157.72, -581.05, 397.26, 2.40855, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101335, 23894, 0, 1, -5185.22, -571.238, 397.264, 3.40339, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101336, 23894, 0, 1, -5140.27, -599.968, 397.882, 1.85005, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101337, 23894, 0, 1, -5150.87, -588.753, 397.427, 2.77507, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101338, 23894, 0, 1, -5159.71, -606.657, 398.217, 2.6529, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101339, 23894, 0, 1, -5174.79, -575.339, 397.422, 2.07694, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101340, 23894, 0, 1, -5168.71, -617.211, 397.364, 2.11185, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101341, 23894, 0, 1, -5176.47, -590.352, 397.805, 2.26893, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101342, 23894, 0, 1, -5169.52, -608.45, 397.445, 2.14675, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101343, 23894, 0, 1, -5170.46, -597.917, 398.077, 2.35619, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101344, 23894, 0, 1, -5159.14, -588.562, 397.652, 2.05949, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101345, 23894, 0, 1, -5144.65, -608.685, 398.363, 2.33874, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101346, 23894, 0, 1, -5151.18, -598.83, 398.031, 5.58505, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101347, 23894, 0, 1, -5159.81, -616.635, 397.946, 2.70526, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101348, 23894, 0, 1, -5150.43, -620.648, 398.043, 6.07375, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101349, 23894, 0, 1, -5140.27, -599.968, 397.882, 1.85005, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101350, 23894, 0, 1, -5150.87, -588.753, 397.427, 2.77507, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101351, 23894, 0, 1, -5143.85, -617.721, 397.956, 2.44346, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101352, 23894, 0, 1, -5151.16, -610.857, 398.621, 5.39307, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101353, 23894, 0, 1, -5174.79, -575.339, 397.422, 2.07694, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101354, 23894, 0, 1, -5169.52, -608.45, 397.445, 2.14675, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101355, 23894, 0, 1, -5170.46, -597.917, 398.077, 2.35619, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101356, 23894, 0, 1, -5159.14, -588.562, 397.652, 2.05949, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101357, 23894, 0, 1, -5159.71, -606.657, 398.217, 2.6529, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101358, 23894, 0, 1, -5144.65, -608.685, 398.363, 2.33874, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101359, 23894, 0, 1, -5168.71, -617.211, 397.364, 2.11185, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101360, 23894, 0, 1, -5176.47, -590.352, 397.805, 2.26893, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101361, 23894, 0, 1, -5150.43, -620.648, 398.043, 6.07375, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101362, 23894, 0, 1, -5180.45, -582.974, 397.854, 1.58825, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101363, 23894, 0, 1, -5143.15, -589.13, 397.306, 2.02458, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101364, 23894, 0, 1, -5166.21, -579.182, 397.285, 2.1293, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101365, 23894, 0, 1, -5159.99, -597.016, 398.187, 0.0698132, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101366, 23894, 0, 1, -5151.18, -598.83, 398.031, 5.58505, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101367, 23894, 0, 1, -5159.81, -616.635, 397.946, 2.70526, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101368, 23894, 0, 1, -5135.09, -596.353, 397.369, 2.21657, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101369, 23894, 0, 1, -5136.89, -609.955, 397.718, 1.90241, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101370, 23894, 0, 1, -5169.62, -588.142, 397.98, 2.44346, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101371, 23894, 0, 1, -5157.72, -581.05, 397.26, 2.40855, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101372, 23894, 0, 1, -5185.22, -571.238, 397.264, 3.40339, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101373, 24536, 0, 1, -5151.64, -605.771, 398.586, 1.91986, 0, 0), -- Dark Iron Herald
(101374, 27817, 0, 1, -4845.83, -861.923, 501.997, 4.46804, 0, 0), -- Brew Vendor
(101375, 23703, 1, 1, 1199.71, -4293.62, 21.2836, 5.60251, 0, 0), -- [DND] Brewfest Dark Iron Event Generator
(101376, 23703, 1, 1, 1195.84, -4296.19, 21.4236, 2.23402, 0, 0), -- [DND] Brewfest Dark Iron Event Generator
(101377, 23808, 1, 1, 1184.4, -4311.58, 21.3166, 3.19826, 4.49078, 1), -- [DND] Brewfest Keg Move to Target
(101378, 23808, 1, 1, 1220.12, -4295.97, 21.3166, 5.1018, 4.121, 1), -- [DND] Brewfest Keg Move to Target
(101379, 23808, 1, 1, 1184.43, -4275.28, 21.2707, 3.13497, 3.00156, 1), -- [DND] Brewfest Keg Move to Target
(101380, 24109, 1, 1, 1182.2, -4359.77, 21.3794, 1.91986, 0, 0), -- [DND] Brewfest Target Dummy Move To Target
(101381, 24109, 1, 1, 1180.39, -4350.72, 21.3795, 4.83456, 0, 0), -- [DND] Brewfest Target Dummy Move To Target
(101382, 23706, 1, 1, 1222.9, -4296.75, 21.2753, 5.61996, 0, 0), -- Gordok Festive Keg
(101383, 24372, 1, 1, 1184.32, -4314.62, 21.3792, 0.279253, 0, 0), -- Drohn's Distillery Festive Keg
(101384, 24373, 1, 1, 1182.84, -4273.28, 21.275, 3.54302, 0, 0), -- T'chali's Voodoo Brew Festive Keg
(101385, 27707, 1, 1, 1290.48, -4431.36, 27.0603, 0.10016, 0.574961, 1), -- Great Brewfest Kodo
(101386, 23487, 1, 1, 1192.17, -4391.77, 23.3998, 5.45201, 14.711, 1), -- Wild Wolpertinger
(101387, 23487, 1, 1, 1316.82, -4391.54, 26.1149, 4.89382, 12.7322, 1), -- Wild Wolpertinger
(101388, 23487, 1, 1, 1200.62, -4362.85, 23.5536, 0.981982, 10, 1), -- Wild Wolpertinger
(101389, 23487, 1, 1, 1266.68, -4374.73, 28.6303, 4.43852, 16.3432, 1), -- Wild Wolpertinger
(101390, 23487, 1, 1, 1245.67, -4417.2, 23.701, 3.23445, 14.5366, 1), -- Wild Wolpertinger
(101391, 23487, 1, 1, 1208.07, -4316.73, 21.3166, 6.2576, 0, 0), -- Wild Wolpertinger
(101392, 23487, 1, 1, 1158.88, -4393.67, 25.8442, 5.69302, 11.3766, 1), -- Wild Wolpertinger
(101393, 23487, 1, 1, 1206.02, -4316.73, 21.3166, 0.307994, 14.5454, 1), -- Wild Wolpertinger
(101394, 23487, 1, 1, 1152.92, -4413.92, 21.2271, 0.373927, 15.2933, 1), -- Wild Wolpertinger
(101395, 23487, 1, 1, 1157.14, -4338.71, 25.2393, 1.41978, 10, 1), -- Wild Wolpertinger
(101396, 23487, 1, 1, 1154.48, -4317.31, 21.52, 3.56012, 14.1845, 1), -- Wild Wolpertinger
(101397, 23487, 1, 1, 1156.36, -4272.65, 22.226, 1.88545, 11.0265, 1), -- Wild Wolpertinger
(101398, 23487, 1, 1, 1185.55, -4217.48, 24.3411, 4.11734, 0, 0), -- Wild Wolpertinger
(101399, 23487, 1, 1, 1255.99, -4280.23, 24.4416, 4.0995, 0, 0), -- Wild Wolpertinger
(101400, 23529, 1, 1, -1239.07, 209.684, 54.0106, 4.48788, 1.66064, 1), -- Mulgore Pink Elekk
(101401, 23529, 1, 1, -1304.34, 206.156, 60.6785, 3.12414, 0, 0), -- Mulgore Pink Elekk
(101402, 23529, 1, 1, -1346.46, 150.917, 54.5547, 3.69549, 1.96064, 1), -- Mulgore Pink Elekk
(101403, 23529, 1, 1, -1362.54, 131.02, 42.0974, 5.60664, 1.05266, 1), -- Mulgore Pink Elekk
(101404, 23529, 1, 1, -1381.69, 159.458, 28.9315, 5.73998, 0.944693, 1), -- Mulgore Pink Elekk
(101405, 23529, 1, 1, -1347.54, 197.13, 60.8574, 4.00139, 1.35507, 1), -- Mulgore Pink Elekk
(101406, 23529, 1, 1, -1269.76, 195.113, 59.4552, 3.5825, 1.31594, 1), -- Mulgore Pink Elekk
(101407, 23529, 1, 1, -1321.24, 172.094, 60.3871, 3.12834, 1.05651, 1), -- Mulgore Pink Elekk
(101408, 23529, 1, 1, -1272.93, 250.924, 23.8065, 2.11482, 1.4629, 1), -- Mulgore Pink Elekk
(101409, 23529, 1, 1, -1217.92, 217.149, 54.2436, 4.83831, 1.01438, 1), -- Mulgore Pink Elekk
(101410, 23529, 1, 1, -1316.22, 257.439, 13.327, 2.75309, 1.60335, 1), -- Mulgore Pink Elekk
(101411, 23529, 1, 1, -1344.47, 239.151, 7.76872, 2.24222, 1.61968, 1), -- Mulgore Pink Elekk
(101412, 23529, 1, 1, -1362.15, 240.234, 4.1303, 3.12781, 1.04293, 1), -- Mulgore Pink Elekk
(101413, 23529, 1, 1, -1372.18, 214.857, 11.7782, 4.94596, 1.37607, 1), -- Mulgore Pink Elekk
(101414, 23529, 1, 1, -1227.92, 231.593, 41.5749, 1.48716, 1.47295, 1), -- Mulgore Pink Elekk
(101415, 23529, 1, 1, -1394.55, 142.646, 22.248, 2.18349, 1.92139, 1), -- Mulgore Pink Elekk
(101416, 23529, 1, 1, -1247.17, 241.461, 32.9668, 3.43559, 1.32104, 1), -- Mulgore Pink Elekk
(101417, 23529, 1, 1, -1389.53, 179.744, 12.9783, 0.517619, 1.16455, 1), -- Mulgore Pink Elekk
(101418, 23529, 1, 1, -1396.52, 202.628, 3.6731, 1.33323, 1.55693, 1), -- Mulgore Pink Elekk
(101419, 23529, 1, 1, -1264.34, 262.577, 20.5991, 2.99867, 1.48147, 1), -- Mulgore Pink Elekk
(101420, 23529, 1, 1, -1226.94, 247.826, 30.6881, 4.89013, 1.29464, 1), -- Mulgore Pink Elekk
(101421, 23530, 0, 1, 1842.42, 196.023, 70.3996, 2.51344, 1.63339, 1), -- Tirisfal Pink Elekk
(101422, 23530, 0, 1, 1831.2, 283.262, 70.3996, 3.05841, 3.12397, 1), -- Tirisfal Pink Elekk
(101423, 23530, 0, 1, 1827.04, 194.611, 70.3996, 3.73314, 2.14165, 1), -- Tirisfal Pink Elekk
(101424, 23530, 0, 1, 1803.82, 283.817, 70.3996, 3.90551, 3.6654, 1), -- Tirisfal Pink Elekk
(101425, 23530, 0, 1, 1805.71, 219.024, 60.4139, 1.38033, 1.65844, 1), -- Tirisfal Pink Elekk
(101426, 23530, 0, 1, 1804.97, 257.166, 60.7882, 2.06714, 1.25444, 1), -- Tirisfal Pink Elekk
(101427, 23530, 0, 1, 1803.94, 192.523, 70.3996, 4.83099, 1.6524, 1), -- Tirisfal Pink Elekk
(101428, 23530, 0, 1, 1802.18, 189.488, 57.7717, 1.01677, 1.38707, 1), -- Tirisfal Pink Elekk
(101429, 23530, 0, 1, 1785.87, 260.492, 59.4377, 5.74029, 1.56485, 1), -- Tirisfal Pink Elekk
(101430, 23530, 0, 1, 1798.82, 288.212, 57.7717, 4.11285, 1.84467, 1), -- Tirisfal Pink Elekk
(101431, 23530, 0, 1, 1785.15, 216.019, 59.7112, 3.7746, 1.27786, 1), -- Tirisfal Pink Elekk
(101432, 23530, 0, 1, 1778.95, 288.844, 57.7717, 0.808049, 1.67005, 1), -- Tirisfal Pink Elekk
(101433, 23530, 0, 1, 1785.34, 193.325, 70.3996, 5.99799, 1.70285, 1), -- Tirisfal Pink Elekk
(101434, 23530, 0, 1, 1780.79, 284.307, 70.3996, 2.24734, 3.42367, 1), -- Tirisfal Pink Elekk
(101435, 23530, 0, 1, 1815.4, 327.13, 70.8127, 2.53888, 1.36955, 1), -- Tirisfal Pink Elekk
(101436, 23530, 0, 1, 1775.97, 189.572, 57.7717, 2.37756, 1.75202, 1), -- Tirisfal Pink Elekk
(101437, 23530, 0, 1, 1763.93, 284.535, 70.3996, 0.143143, 3.04475, 1), -- Tirisfal Pink Elekk
(101438, 23530, 0, 1, 1758.6, 192.374, 70.3996, 5.52399, 2.11301, 1), -- Tirisfal Pink Elekk
(101439, 23530, 0, 1, 1741.22, 224.993, 62.1875, 3.76126, 1.60239, 1), -- Tirisfal Pink Elekk
(101440, 23530, 0, 1, 1795.58, 327.88, 70.8165, 1.95359, 1.1183, 1), -- Tirisfal Pink Elekk
(101441, 23530, 0, 1, 1742.54, 254.986, 61.9937, 5.37307, 1.23037, 1), -- Tirisfal Pink Elekk
(101442, 23703, 1, 1, 1199.71, -4293.62, 21.2836, 5.60251, 5, 1), -- [DND] Brewfest Dark Iron Event Generator
(101443, 23703, 1, 1, 1195.84, -4296.19, 21.4236, 2.23402, 0, 0), -- [DND] Brewfest Dark Iron Event Generator
(101444, 23703, 1, 1, 1199.55, -4296.6, 21.4128, 1.55334, 0, 0), -- [DND] Brewfest Dark Iron Event Generator
(101445, 23703, 1, 1, 1199.55, -4296.6, 21.4128, 1.55334, 0, 0), -- [DND] Brewfest Dark Iron Event Generator
(101446, 23894, 1, 1, 1216.22, -4317.01, 21.2761, 2.44346, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101447, 23894, 1, 1, 1213.87, -4328.47, 21.275, 2.70526, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101448, 23894, 1, 1, 1208.68, -4322.27, 21.2876, 2.6529, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101449, 23894, 1, 1, 1204.06, -4330.97, 21.3787, 2.07694, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101450, 23894, 1, 1, 1204.33, -4315.41, 21.3754, 4.97419, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101451, 23894, 1, 1, 1198.8, -4323.04, 21.3794, 2.35619, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101452, 23894, 1, 1, 1209.89, -4310.15, 21.2896, 5.58505, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101453, 23894, 1, 1, 1196.57, -4307.76, 21.364, 2.1293, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101454, 23894, 1, 1, 1202.69, -4307.33, 21.2916, 5.39307, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101455, 23894, 1, 1, 1209.58, -4299.56, 21.275, 2.77507, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101456, 23894, 1, 1, 1202.77, -4300.24, 21.3636, 1.58825, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101457, 23894, 1, 1, 1197.32, -4315.78, 21.3793, 0.0698132, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101458, 23894, 1, 1, 1195.19, -4300.47, 21.5307, 2.26893, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101459, 23894, 1, 1, 1206.82, -4291.73, 21.275, 2.44346, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
-- 101460 taken
(101461, 23894, 1, 1, 1192.68, -4292.9, 21.3046, 4.2586, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101462, 23894, 1, 1, 1206.42, -4282.68, 21.2753, 4.69494, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101463, 23894, 1, 1, 1199.25, -4285.99, 21.2806, 1.90241, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101464, 23894, 1, 1, 1203.91, -4275.25, 21.2753, 2.11185, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101465, 23894, 1, 1, 1192.42, -4284.9, 21.275, 2.21657, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101466, 23894, 1, 1, 1185.89, -4293.42, 21.2887, 2.33874, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101467, 23894, 1, 1, 1178.17, -4290.69, 21.2557, 1.85005, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101468, 23894, 1, 1, 1196.84, -4277.9, 21.1771, 4.34587, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101469, 23894, 1, 1, 1185.17, -4285.06, 21.275, 3.40339, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101470, 23894, 1, 1, 1203.91, -4275.25, 21.2753, 2.11185, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101471, 23894, 1, 1, 1204.06, -4330.97, 21.3787, 2.07694, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101472, 23894, 1, 1, 1204.33, -4315.41, 21.3754, 4.97419, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101473, 23894, 1, 1, 1206.82, -4291.73, 21.275, 2.44346, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101474, 23894, 1, 1, 1192.42, -4284.9, 21.275, 2.21657, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101475, 23894, 1, 1, 1198.8, -4323.04, 21.3794, 2.35619, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101476, 23894, 1, 1, 1192.68, -4292.9, 21.3046, 4.2586, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101477, 23894, 1, 1, 1185.89, -4293.42, 21.2887, 2.33874, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101478, 23894, 1, 1, 1216.22, -4317.01, 21.2761, 2.44346, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101479, 23894, 1, 1, 1187.18, -4301.42, 21.3434, 6.07375, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101480, 23894, 1, 1, 1178.17, -4290.69, 21.2557, 1.85005, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101481, 23894, 1, 1, 1196.57, -4307.76, 21.364, 2.1293, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101482, 23894, 1, 1, 1202.69, -4307.33, 21.2916, 5.39307, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101483, 23894, 1, 1, 1213.87, -4328.47, 21.275, 2.70526, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101484, 23894, 1, 1, 1206.42, -4282.68, 21.2753, 4.69494, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101485, 23894, 1, 1, 1209.89, -4310.15, 21.2896, 5.58505, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101486, 23894, 1, 1, 1196.84, -4277.9, 21.1771, 4.34587, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101487, 23894, 1, 1, 1185.17, -4285.06, 21.275, 3.40339, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101488, 23894, 1, 1, 1208.68, -4322.27, 21.2876, 2.6529, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101489, 23894, 1, 1, 1209.58, -4299.56, 21.275, 2.77507, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101490, 23894, 1, 1, 1199.25, -4285.99, 21.2806, 1.90241, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101491, 23894, 1, 1, 1202.77, -4300.24, 21.3636, 1.58825, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101492, 23894, 1, 1, 1197.32, -4315.78, 21.3793, 0.0698132, 5, 1), -- [DND] Brewfest Dark Iron Spawn Bunny
(101493, 23894, 1, 1, 1195.19, -4300.47, 21.5307, 2.26893, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101494, 23894, 1, 1, 1187.18, -4301.42, 21.3434, 6.07375, 0, 0), -- [DND] Brewfest Dark Iron Spawn Bunny
(101495, 24536, 1, 1, 1200.25, -4294.45, 21.2866, 1.91986, 0, 0), -- Dark Iron Herald

(5302546, 23531, 530, 1, 9345.49, -7278.91, 14.3329, 4.7087, 4.91134, 1), -- Eversong Pink Elekk
(5302547, 23531, 530, 1, 9359, -7316.25, 8.34948, 5.6634, 5.54456, 1), -- Eversong Pink Elekk
(5302548, 23531, 530, 1, 9355.07, -7242.93, 8.4114, 5.60783, 6.82141, 1), -- Eversong Pink Elekk
(5302549, 23531, 530, 1, 9347.75, -7233.13, 12.2715, 4.02941, 2.49115, 1), -- Eversong Pink Elekk
(5302550, 23531, 530, 1, 9341.06, -7222.99, 13.0338, 1.81963, 4.45977, 1), -- Eversong Pink Elekk
(5302551, 23531, 530, 1, 9325.01, -7323.98, 14.2225, 2.21162, 3.11979, 1), -- Eversong Pink Elekk
(5302552, 23531, 530, 1, 9294.73, -7275.86, 15.9966, 5.78079, 6.02012, 1), -- Eversong Pink Elekk
(5302553, 23531, 530, 1, 9310.32, -7235.69, 14.5253, 4.79196, 2.75723, 1), -- Eversong Pink Elekk
(5302554, 23531, 530, 1, 9307.49, -7297.22, 14.7527, 5.68787, 3.00513, 1), -- Eversong Pink Elekk
(5302555, 23531, 530, 1, 9309.46, -7250.21, 13.6112, 5.40588, 3.1882, 1), -- Eversong Pink Elekk
(5302556, 23531, 530, 1, 9319.7, -7215.42, 14.9164, 0.473945, 4.18844, 1), -- Eversong Pink Elekk
(5302557, 23531, 530, 1, 9309.38, -7311.23, 17.3283, 5.24918, 3.03295, 1), -- Eversong Pink Elekk
(5302558, 23531, 530, 1, 9293.36, -7228.48, 16.849, 3.70553, 3.07553, 1), -- Eversong Pink Elekk
(5302559, 23531, 530, 1, 9286.97, -7313.13, 18.1526, 0.807982, 1.98368, 0), -- Eversong Pink Elekk
(5302560, 23531, 530, 1, 9287.74, -7287.99, 17.303, 5.52954, 4.06702, 1), -- Eversong Pink Elekk
(5302561, 23531, 530, 1, 9296.88, -7210.22, 16.349, 0.909811, 5.17273, 1); -- Eversong Pink Elekk

DELETE FROM game_event_creature WHERE guid IN (5302512,5302513,5302514);
DELETE FROM game_event_creature WHERE guid BETWEEN 5302515 AND 5302530;
DELETE FROM game_event_creature WHERE guid BETWEEN 101254 AND 101269;
DELETE FROM game_event_creature WHERE guid BETWEEN 5302531 AND 5302545;
DELETE FROM game_event_creature WHERE guid BETWEEN 101270 AND 101292;
DELETE FROM game_event_creature WHERE guid BETWEEN 101293 AND 101308;
DELETE FROM game_event_creature WHERE guid BETWEEN 101309 AND 101328;
DELETE FROM game_event_creature WHERE guid BETWEEN 101330 AND 101459;
DELETE FROM game_event_creature WHERE guid BETWEEN 101461 AND 101495;
DELETE FROM game_event_creature WHERE guid BETWEEN 5302546 AND 5302561;
INSERT INTO game_event_creature (guid, `event`) VALUES
(5302512, 26),
(5302513, 26),
(5302514, 26);
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 5302515 AND 5302530;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 101254 AND 101269;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 5302531 AND 5302545;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 101270 AND 101292;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 101293 AND 101308;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 101309 AND 101328;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 101330 AND 101459;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 101461 AND 101495;
INSERT INTO game_event_creature (guid, `event`)
SELECT guid, 26 FROM creature WHERE guid BETWEEN 5302546 AND 5302561;

-- Ipfelkofer Ironkeg 24710

-- Maeve Barleybrew 23683
-- gains aura 42271 Brewfest Barker Trap A

-- Ita Thunderbrew 23684
-- gains aura 42269 Brewfest Barker Trap B

-- Gordok Brew Barker 23685
-- gains aura 42272 Brewfest Barker Trap C

-- Tapper Swindlekeg 24711

-- Drohn's Distillery Barker 24492
-- gains aura 43942 Brewfest Barker Trap D

-- T'chali's Voodoo Brewery Barker 24493
-- gains aura 43943 Brewfest Barker Trap E

UPDATE broadcast_text SET ChatTypeID=0 WHERE id IN (22138, 22139, 22140); -- not yells

-- Dark Iron Brewer (inside Blackrock Depths Grim Guzzler)
-- casts 50631 Dark Iron Brewer Drinks on players
UPDATE gossip_menu_option SET action_script_id=964801 WHERE menu_id IN (9648,9652);

-- Brewfest - Direbrew Mole Machine Loc bunny
-- Direbrew Summon Loc bunny
-- Direbrew Goto Loc bunny
UPDATE creature_template SET UnitFlags=33554432 WHERE Entry IN (27890,26774,26775);

UPDATE creature SET position_x=-5606.95, position_y=-456.357, position_z=405.166, orientation=5.07891 WHERE id=27584; -- Darna Honeybock
-- 2007 Brewfest location? -5611.85, -474.369, 396.98, 4.79485

UPDATE creature SET position_x=833.6, position_y=-4514.69, position_z=6.00353, orientation=6.12611 WHERE id=28329; -- Slurpo Fizzykeg
-- 2007 Brewfest location? 859.606, -4494.68, 6.6345, 5.19148

-- [DND] Brewfest Dark Iron Spawn Bunny
UPDATE creature_template SET UnitFlags=33587200 WHERE Entry=23894;

-- (1, 186478, 1, 1183.53, -4277.55, 21.2707, 4.87562, 0, 0, -0.647107, 0.762399, -60, -60, 100, 1), -- Super Brew Stein
-- (2, 186478, 1, 1192.02, -4295.66, 21.4374, 0.383971, 0, 0, 0.190808, 0.981627, -60, -60, 100, 1), -- Super Brew Stein
-- (3, 186478, 1, 1177.98, -4286.28, 21.2707, 1.57963, 0, 0, 0.710222, 0.703978, -60, -60, 100, 1), -- Super Brew Stein

-- 11318 Now This is Ram Racing... Almost. (Alliance)
-- 11293 Bark for the Barleybrews!
-- 11294 Bark for the Thunderbrews!
-- 11409 Now This is Ram Racing... Almost. (Horde)
-- 11407 Bark for Drohn's Distillery!
-- 11408 Bark for T'chali's Voodoo Brewery!
UPDATE quest_template SET StartScript=11318 WHERE entry IN (11318,11293,11294,11409,11407,11408);
DELETE FROM dbscripts_on_quest_start WHERE id=11318;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(11318, 0, 0, 15, 42149, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Trigger Brewfest Racing Ram');

-- Horde and Alliance both get lent "Ramstein's Personal Ram" for these quests
-- 11122 There and Back Again
-- 11412 There and Back Again
UPDATE quest_template SET StartScript=11122 WHERE entry IN (11122,11412);
DELETE FROM dbscripts_on_quest_start WHERE id=11122;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(11122, 0, 0, 15, 43720, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Trigger Brewfest Racing Ram - Relay Race - Intro');

-- All Bark quests have a strict time limit of 4 minutes before they are automatically failed
UPDATE quest_template SET LimitTime=240 WHERE entry IN (11293,11294,11407,11408);

-- Quests in 2.4.3 reward Brewfest Prize Tokens instead of Brewfest Prize Tickets
UPDATE quest_template SET RewItemId1=37829 WHERE entry IN (11122,11412) AND RewItemId1=33455;
UPDATE quest_template SET RewItemId1=37829, RewItemCount1=15 WHERE entry IN (11293,11294,11407,11408) AND RewItemId1=33455;

-- Mole Machine Console 188498
-- 47674 Access Control Console - parent spell?
-- 47512 Summon Mole Machine PoV Bunny
DELETE FROM gossip_menu_option WHERE menu_id=9454;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('9454', '0', '0', 'Pull the console''s levers.', '26084', '1', '1', '-1', '0', '945401', '0', '0', NULL, '0', '0');
DELETE FROM dbscripts_on_gossip WHERE id=945401;
INSERT INTO dbscripts_on_gossip (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(945401, 0, 0, 15, 47512, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Summon Mole Machine PoV Bunny');
-- 21:45:43.453 gossip selected, 47512 casted
-- 21:45:43.453 summoned 26834 Mole Machine PoV Bunny casts 47489 Mole Machine Port Schedule on player
UPDATE creature_template SET UnitFlags=33554432 WHERE Entry=26834;
-- 21:45:43.453 player starts channeling 47513 on Mole Machine PoV Bunny - no data for this spell...
-- 21:45:43.578 ACTIVE_PLAYER_FIELD_FARSIGHT, CMSG_FAR_SIGHT
-- 21:45:44.453 player casts 49858 Make Bunny Summon Mole Machine, hits 27890 Brewfest - Direbrew Mole Machine Loc bunny
DELETE FROM spell_script_target WHERE entry=49858;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(49858, 1, 27890, 0);
-- 21:45:44.453 27890 Brewfest - Direbrew Mole Machine Loc bunny casts 47514 Summon Mole Machine on self - summons GO 188478
-- 21:45:48.469 player gains aura 47521 Mole Machine Player Hide and Root
-- 21:45:56.453 player casts 47673 Move Bind Sight, hits target 26834 Mole Machine PoV Bunny, teleports it to X: 824.809 Y: -176.166 Z: -49.7551 O: 0.479868
DELETE FROM spell_target_position WHERE id=47673;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(47673, 230, 824.809, -176.166, -49.7551, 0.479868);
-- 21:45:56.469 26834 Mole Machine PoV Bunny starts moving after teleport
-- (MovementMonsterSpline) (MovementSpline) [0] Points: X: 846.6591 Y: -166.882 Z: -45.41986
-- (MovementMonsterSpline) (MovementSpline) [1] Points: X: 861.3745 Y: -160.4283 Z: -46.94759
-- (MovementMonsterSpline) (MovementSpline) [2] Points: X: 876.1157 Y: -154.3881 Z: -47.39205
-- (MovementMonsterSpline) (MovementSpline) [3] Points: X: 901.6615 Y: -143.7775 Z: -49.22544
-- 21:45:56.469 player casts 47523 Mole Machine Port to Grim Guzzler, hits self and teleports to X: 901.068 Y: -143.939 Z: -49.755 O: 0.436332
DELETE FROM spell_target_position WHERE id=47523;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(47523, 230, 901.068, -143.939, -49.755, 0.436332);
-- 21:46:04.453 player casts 49858 Make Bunny Summon Mole Machine, hits 27890 Brewfest - Direbrew Mole Machine Loc bunny (triggers another cast of 47514 to summon drill GO)
-- 21:46:07.453 player casts 47676 Mole Machine Player Land on self, at same time remove aura 47521

DELETE FROM gossip_menu WHERE entry=8977;
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('8977', '12113', '0', '0');

DELETE FROM conditions WHERE condition_entry=10334;
INSERT INTO conditions VALUES
('10334', '1', '44689', '0', '0', '0', '1', 'NOT Player Has Aura: 44689, EffectIndex: 0');

-- condition aura 44689
DELETE FROM gossip_menu_option WHERE menu_id IN(8976, 8977);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('8976', '0', '0', 'Do you still need some help moving kegs from the crash site near Razor Hill?', '23546', '1', '1', '8976', '0', '0', '0', '0', '', '0', '10334'),
('8977', '0', '0', 'I''m ready to work for you today!  Give me that ram!', '23545', '1', '1', '-1', '0', '8977', '0', '0', '', '0', '0');

DELETE FROM dbscripts_on_gossip WHERE id=8977;
INSERT INTO dbscripts_on_gossip(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('8977', '0', '0', '15', '44368', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Brewfest - Daily - Relay Race Accept - QUEST - DND'),
('8977', '0', '0', '15', '44069', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast See Supplier Mark');



