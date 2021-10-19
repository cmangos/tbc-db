-- fix position of Belbi Quikswitch
UPDATE creature SET position_x=-5176.9, position_y=-624.369, position_z=397.947, orientation=0.715585 WHERE id=23710;
UPDATE broadcast_text SET SoundEntriesID1=10033 WHERE Id BETWEEN 22170 AND 22175; -- Belbi Quikswitch texts

-- used by dbscripts in this file but in 926 updatefile
ALTER TABLE dbscripts_on_creature_death MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_creature_movement MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_event MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_gossip MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_go_template_use MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_go_use MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_quest_end MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_quest_start MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_relay MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_spell MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';

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
(5302559, 23531, 530, 1, 9286.97, -7313.13, 18.1526, 0.807982, 1.98368, 1), -- Eversong Pink Elekk
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

DELETE FROM creature_template_addon WHERE entry IN(24527);
INSERT INTO creature_template_addon(entry, auras) VALUES
(24527, '44067');

DELETE FROM gossip_menu WHERE entry=8977;
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('8977', '12113', '0', '0');

DELETE FROM conditions WHERE condition_entry IN(10334,10335,10336,10337,10338);
INSERT INTO conditions VALUES
('10334', '1', '44689', '0', '0', '0', '1', 'NOT Player Has Aura: 44689, EffectIndex: 0'),
('10335', '8', '11412', '0', '0', '0', '0', 'Quest ID 11412 Rewarded'),
('10336', '8', '11122', '0', '0', '0', '0', 'Quest ID 11122 Rewarded'),
('10337', '-1', '10335', '10334', '0', '0', '0', ''),
('10338', '-1', '10336', '10334', '0', '0', '0', '');

DELETE FROM conditions WHERE condition_entry IN(10339,10340,10341);
INSERT INTO conditions VALUES
('10339', '8', '11400', '0', '0', '0', '0', 'Quest ID 11400 Rewarded'),
('10340', '8', '11419', '0', '0', '0', '0', 'Quest ID 11419 Rewarded'),
('10341', '-2', '10339', '10340', '0', '0', '0', '');

DELETE FROM gossip_menu_option WHERE menu_id IN(8958);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('8958', '1', '0', 'I''d like to purchase a Brewfest riding ram.', '23463', '3', '128', '0', '0', '0', '0', '0', '', '0', '10341'),
('8958', '2', '0', 'Do I get a free mount?', '23444', '1', '1', '8959', '0', '0', '0', '0', '', '0', '0'),
('8958', '3', '0', 'How do I make my ram go faster?', '23445', '1', '1', '8960', '0', '0', '0', '0', '', '0', '0'),
('8958', '4', '0', 'What\'s with the different speeds?', '23446', '1', '1', '8961', '0', '0', '0', '0', '', '0', '0'),
('8958', '5', '0', 'Can I tire my ram out?', '23447', '1', '1', '8962', '0', '0', '0', '0', '', '0', '0'),
('8958', '6', '0', 'That all sounds very complicated...', '23448', '1', '1', '8963', '0', '0', '0', '0', '', '0', '0'),
('8958', '7', '0', 'Say, you wouldn\'t happen to have an extra set of reins...', '23654', '1', '1', '-1', '0', '8958', '0', '0', '', '0', '475');

UPDATE creature_template SET VendorTemplateId=601 WHERE entry IN(24468);
-- mounts with stamp should only cost gold
UPDATE npc_vendor_template SET ExtendedCost=0 WHERE item IN(33976,33977);


-- condition aura 44689
DELETE FROM gossip_menu_option WHERE menu_id IN(8976, 8977, 8934, 8953);
-- horde quest complete 11412
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('8976', '0', '0', 'Do you still need some help moving kegs from the crash site near Razor Hill?', '23546', '1', '1', '8977', '0', '0', '0', '0', '', '0', '10337'),
('8977', '0', '0', 'I''m ready to work for you today!  Give me that ram!', '23545', '1', '1', '-1', '0', '8977', '0', '0', '', '0', '0');

-- ally quest completed 11122
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('8934', '0', '0', 'Do you still need some help shipping kegs from Kharanos?', '23245', '1', '1', '8953', '0', '0', '0', '0', '', '0', '10338'),
('8953', '0', '0', 'I''m ready to work for you today!  Give me the good stuff!', '23378', '1', '1', '-1', '0', '8977', '0', '0', '', '0', '0');

DELETE FROM dbscripts_on_gossip WHERE id IN(8977,8953);
INSERT INTO dbscripts_on_gossip(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('8977', '0', '0', '15', '44368', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Brewfest - Daily - Relay Race Accept - QUEST - DND'),
('8977', '0', '0', '15', '44069', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast See Supplier Mark');

-- 11318 Now This is Ram Racing... Almost. (Alliance)
-- 11293 Bark for the Barleybrews!
-- 11294 Bark for the Thunderbrews!
-- 11409 Now This is Ram Racing... Almost. (Horde)
-- 11407 Bark for Drohn's Distillery!
-- 11408 Bark for T'chali's Voodoo Brewery!
DELETE FROM dbscripts_on_quest_start WHERE id IN(11318,11409,11293,11294,11407,11408);
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('11318', '0', '0', '15', '42149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Trigger Brewfest Racing Ram'),
('11409', '0', '0', '15', '42149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Trigger Brewfest Racing Ram'),
('11293', '0', '0', '15', '42149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Trigger Brewfest Racing Ram'),
('11294', '0', '0', '15', '42149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Trigger Brewfest Racing Ram'),
('11407', '0', '0', '15', '42149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Trigger Brewfest Racing Ram'),
('11408', '0', '0', '15', '42149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Trigger Brewfest Racing Ram');
UPDATE quest_template SET StartScript=entry WHERE entry IN(11318,11409,11293,11294,11407,11408);

DELETE FROM dbscripts_on_quest_start WHERE id IN(11122,11412);
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
('11122', '0', '0', '15', '43720', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Trigger Brewfest Racing Ram - Relay Race - Intro'),
('11122', '0', '0', '15', '44069', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast See Supplier Mark'),
('11412', '0', '0', '15', '43720', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Trigger Brewfest Racing Ram - Relay Race - Intro'),
('11412', '0', '0', '15', '44069', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast See Supplier Mark');
UPDATE quest_template SET StartScript=entry WHERE entry IN(11122,11412);

UPDATE quest_template SET PrevQuestId=11409 WHERE entry IN(12194);

INSERT INTO game_event_creature SELECT guid, 26 FROM creature WHERE id IN(19175,19169,19177,19176);

INSERT INTO game_event_creature SELECT guid, 26 FROM creature WHERE id IN(18927,19148,19171,19172);

INSERT INTO creature_questrelation VALUES
('28329', '12318');

UPDATE quest_template SET PrevQuestId=11446 WHERE entry=11409;
UPDATE quest_template SET PrevQuestId=11441 WHERE entry=11318;

DELETE FROM creature_questrelation WHERE quest=11446;
INSERT INTO creature_questrelation VALUES
('19175', '11446'),
('19169', '11446'),
('19177', '11446'),
('19176', '11446');

DELETE FROM creature_questrelation WHERE quest=11441;
INSERT INTO creature_questrelation VALUES
('18927', '11441'),
('19148', '11441'),
('19171', '11441'),
('19172', '11441');

-- TBC loot for coren direbrew - wotlk uses dungeon finder
UPDATE creature_template SET LootId=entry WHERE entry IN(23872);

DELETE FROM creature_loot_template WHERE entry IN(23872);
INSERT INTO creature_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(23872,38289, 20, 1, 1, 1, 0, ''),
(23872,38290, 20, 1, 1, 1, 0, ''),
(23872,38288, 20, 1, 1, 1, 0, ''),
(23872,38287, 20, 1, 1, 1, 0, ''),
(23872,37128, 10, 1, 1, 1, 0, ''),
(23872,37127, 10, 1, 1, 1, 0, ''),

(23872,37863, 5, 0, 1, 1, 0, ''),
(23872,37597, 4, 0, 1, 1, 0, ''),
(23872,37828, 2, 0, 1, 1, 0, ''),
(23872,33977, 2, 0, 1, 1, 0, ''),

(23872,38280, 100, 0, 1, 1, 4, ''),
(23872,38281, 100, 0, 1, 1, 3, '');

-- Add mechanic immunities for Coren Direbrew
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1|2|4|16|64|256|512|4096|65536|8388608|33554432|536870912 WHERE Entry=23872;

-- Alliance keg throwing quests should not require special event
UPDATE quest_template SET SpecialFlags=SpecialFlags&~2 WHERE entry IN(11293,11122);

-- Coren Direbrew does not have gossip in tbc
UPDATE creature_template SET GossipMenuId=0 WHERE entry IN(23872);

-- Apple Trap corrections
UPDATE gameobject SET position_x=1094.778 ,position_y=-4409.1606,position_z=20.863832,orientation=5.98648 WHERE guid IN(31763) AND id IN(186331);
DELETE FROM gameobject WHERE guid IN(31703) AND id IN(186331);

UPDATE quest_template SET PrevQuestId=11441 WHERE entry IN(12022);
UPDATE quest_template SET PrevQuestId=11446 WHERE entry IN(12191);

UPDATE quest_template SET EndText='You''re from the Brewfest camp? Glory day!  Brewfest may yet be saved.$B$B$N, Coren Direbrew must be stopped!  We cannot let him sabotage our sacred holiday.  Our brews must flow!' WHERE entry IN(12318);

-- game events for starting scheduled events
INSERT INTO game_event(entry, schedule_type, occurence, length, holiday, linkedTo, EventGroup, description) VALUES
('86', '1', '30', '15', '0', '26', '0', 'Brewfest: Dark Iron Attack'),
('87', '1', '1440', '15', '0', '26', '0', 'Brewfest: Keg tapping');

INSERT INTO game_event_time VALUES
('86', '2012-09-20 02:00:00', '2025-12-31 00:00:00'),
('87', '2012-09-20 17:55:00', '2025-12-31 00:00:00');

-- Coren Direbrew - make him use dynguid and add TBC respawntime (not applicable in wotlk)
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00100000 WHERE entry IN(23872);

-- Dark Iron Antagonist - correct flags
UPDATE creature_template SET Faction=35,UnitFlags=33024 WHERE entry IN(23795);
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 10000; -- doesnt have PRIMARY KEY atm (soonTM), not that this delete matters
INSERT INTO creature_spawn_data_template(entry,Faction,UnitFlags) VALUES
(10000,54,32768);

-- disable quest Welcome to brewfest
DELETE FROM creature_involvedrelation WHERE quest IN(11442,11447);
DELETE FROM creature_questrelation WHERE quest IN(11442,11447);

-- BRD Console PoV Bunny pathing
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(26834,1,1,846.65906,-166.88196,-45.419857,0,0,100),
(26834,1,2,861.37445,-160.42833,-46.94759,0,0,100),
(26834,1,3,876.1157,-154.38808,-47.39205,0,0,100),
(26834,1,4,901.6615,-143.77754,-49.225437,1000,0,100);

-- Honorary brewer stamps - different for horde and alliance
DELETE FROM conditions WHERE condition_entry IN(10343,10344);
INSERT INTO conditions VALUES
('10343', '-1', '477', '4', '0', '0', '0', ''),
('10344', '-1', '477', '3', '0', '0', '0', '');

DELETE FROM npc_vendor_template WHERE entry IN(602) AND item IN(33978,34028);
INSERT INTO npc_vendor_template VALUES
('602', '33978', '0', '0', '2273', '10343', '\"Honorary Brewer\" Hand Stamp'),
('602', '34028', '0', '0', '2273', '10344', '\"Honorary Brewer\" Hand Stamp');

-- Dark Iron Attack Event daily relations
DELETE FROM gameobject_questrelation WHERE quest IN(12020,12192);
INSERT INTO gameobject_questrelation VALUES
('189989', '12020'),
('189990', '12192');

DELETE FROM creature_involvedrelation WHERE quest IN(12020,12192);
INSERT INTO creature_involvedrelation VALUES
('27215', '12020'),
('27216', '12192');

-- Keg Tapping event - partial
REPLACE INTO `creature_movement_template` (`entry`, pathId, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(10540, 1, 1, 1931.806152, -4162.047363, 41.432510, 100.000000, 0, 0), -- spline 0/13
(10540, 1, 2, 1930.806152, -4162.047363, 41.182510, 100.000000, 0, 0), -- spline 1/13
(10540, 1, 3, 1929.306152, -4163.547363, 41.182510, 100.000000, 0, 0), -- spline 2/13
(10540, 1, 4, 1928.556152, -4164.547363, 41.432510, 100.000000, 0, 0), -- spline 3/13
(10540, 1, 5, 1923.806152, -4169.297363, 41.432510, 100.000000, 0, 0), -- spline 4/13
(10540, 1, 6, 1923.806152, -4172.047363, 41.432510, 100.000000, 0, 0), -- spline 5/13
(10540, 1, 7, 1923.806152, -4172.547363, 41.432510, 100.000000, 0, 0), -- spline 6/13
(10540, 1, 8, 1923.806152, -4174.797363, 41.432510, 100.000000, 0, 0), -- spline 7/13
(10540, 1, 9, 1924.056152, -4180.047363, 41.682510, 100.000000, 0, 0), -- spline 8/13
(10540, 1, 10, 1924.056152, -4181.047363, 42.182510, 100.000000, 0, 0), -- spline 9/13
(10540, 1, 11, 1924.056152, -4185.047363, 42.182510, 100.000000, 0, 0), -- spline 10/13
(10540, 1, 12, 1924.306152, -4186.297363, 42.182510, 100.000000, 0, 0), -- spline 11/13
(10540, 1, 13, 1924.306152, -4188.547363, 42.182510, 100.000000, 0, 0), -- spline 12/13
(10540, 1, 14, 1924.054199, -4190.336426, 41.942905, 100.000000, 0, 0), -- spline 13/13
(10540, 1, 15, 1923.778076, -4172.072266, 41.257515, 100.000000, 0, 0), -- spline 0/15
(10540, 1, 16, 1923.778076, -4172.572266, 41.257515, 100.000000, 0, 0), -- spline 1/15
(10540, 1, 17, 1924.028076, -4174.822266, 41.257515, 100.000000, 0, 0), -- spline 2/15
(10540, 1, 18, 1924.028076, -4180.072266, 41.507515, 100.000000, 0, 0), -- spline 3/15
(10540, 1, 19, 1924.028076, -4181.322266, 42.007515, 100.000000, 0, 0), -- spline 4/15
(10540, 1, 20, 1924.278076, -4185.322266, 42.007515, 100.000000, 0, 0), -- spline 5/15
(10540, 1, 21, 1924.278076, -4186.572266, 42.007515, 100.000000, 0, 0), -- spline 6/15
(10540, 1, 22, 1924.278076, -4188.822266, 42.007515, 100.000000, 0, 0), -- spline 7/15
(10540, 1, 23, 1924.278076, -4190.072266, 42.007515, 100.000000, 0, 0), -- spline 8/15
(10540, 1, 24, 1924.278076, -4192.322266, 42.007515, 100.000000, 0, 0), -- spline 9/15
(10540, 1, 25, 1924.278076, -4193.822266, 42.007515, 100.000000, 0, 0), -- spline 10/15
(10540, 1, 26, 1924.278076, -4196.072266, 42.007515, 100.000000, 0, 0), -- spline 11/15
(10540, 1, 27, 1924.528076, -4199.072266, 42.007515, 100.000000, 0, 0), -- spline 12/15
(10540, 1, 28, 1924.778076, -4202.072266, 42.007515, 100.000000, 0, 0), -- spline 13/15
(10540, 1, 29, 1924.778076, -4206.322266, 42.257515, 100.000000, 0, 0), -- spline 14/15
(10540, 1, 30, 1924.980225, -4208.843750, 42.094872, 100.000000, 0, 0), -- spline 15/15
(10540, 1, 31, 1924.317749, -4188.820801, 42.018894, 100.000000, 0, 0), -- spline 0/18
(10540, 1, 32, 1924.317749, -4190.320801, 42.018894, 100.000000, 0, 0), -- spline 1/18
(10540, 1, 33, 1924.317749, -4192.570801, 42.018894, 100.000000, 0, 0), -- spline 2/18
(10540, 1, 34, 1924.567749, -4194.070801, 42.018894, 100.000000, 0, 0), -- spline 3/18
(10540, 1, 35, 1924.567749, -4196.320801, 42.018894, 100.000000, 0, 0), -- spline 4/18
(10540, 1, 36, 1924.817749, -4199.320801, 42.018894, 100.000000, 0, 0), -- spline 5/18
(10540, 1, 37, 1924.817749, -4202.320801, 42.018894, 100.000000, 0, 0), -- spline 6/18
(10540, 1, 38, 1925.067749, -4206.570801, 42.268894, 100.000000, 0, 0), -- spline 7/18
(10540, 1, 39, 1925.317749, -4208.570801, 42.268894, 100.000000, 0, 0), -- spline 8/18
(10540, 1, 40, 1925.317749, -4211.570801, 42.268894, 100.000000, 0, 0), -- spline 9/18
(10540, 1, 41, 1925.317749, -4212.820801, 41.768894, 100.000000, 0, 0), -- spline 10/18
(10540, 1, 42, 1925.317749, -4213.320801, 41.268894, 100.000000, 0, 0), -- spline 11/18
(10540, 1, 43, 1925.817749, -4217.820801, 41.268894, 100.000000, 0, 0), -- spline 12/18
(10540, 1, 44, 1925.817749, -4219.320801, 41.268894, 100.000000, 0, 0), -- spline 13/18
(10540, 1, 45, 1926.317749, -4223.570801, 41.518894, 100.000000, 0, 0), -- spline 14/18
(10540, 1, 46, 1926.317749, -4224.570801, 42.018894, 100.000000, 0, 0), -- spline 15/18
(10540, 1, 47, 1926.317749, -4225.070801, 42.268894, 100.000000, 0, 0), -- spline 16/18
(10540, 1, 48, 1926.317749, -4225.320801, 42.268894, 100.000000, 0, 0), -- spline 17/18
(10540, 1, 49, 1926.672974, -4228.453613, 42.094879, 100.000000, 0, 0), -- spline 18/18
(10540, 1, 50, 1925.986572, -4218.032715, 41.169476, 100.000000, 0, 0), -- spline 0/18
(10540, 1, 51, 1926.236572, -4219.782715, 41.169476, 100.000000, 0, 0), -- spline 1/18
(10540, 1, 52, 1926.486572, -4223.782715, 41.419476, 100.000000, 0, 0), -- spline 2/18
(10540, 1, 53, 1926.736572, -4224.782715, 42.169476, 100.000000, 0, 0), -- spline 3/18
(10540, 1, 54, 1926.736572, -4225.282715, 42.169476, 100.000000, 0, 0), -- spline 4/18
(10540, 1, 55, 1926.736572, -4225.782715, 42.169476, 100.000000, 0, 0), -- spline 5/18
(10540, 1, 56, 1926.986572, -4228.532715, 42.169476, 100.000000, 0, 0), -- spline 6/18
(10540, 1, 57, 1926.986572, -4230.532715, 42.169476, 100.000000, 0, 0), -- spline 7/18
(10540, 1, 58, 1926.986572, -4231.282715, 42.169476, 100.000000, 0, 0), -- spline 8/18
(10540, 1, 59, 1926.986572, -4234.782715, 42.169476, 100.000000, 0, 0), -- spline 9/18
(10540, 1, 60, 1927.236572, -4237.532715, 42.169476, 100.000000, 0, 0), -- spline 10/18
(10540, 1, 61, 1927.486572, -4239.282715, 42.169476, 100.000000, 0, 0), -- spline 11/18
(10540, 1, 62, 1927.486572, -4240.532715, 42.169476, 100.000000, 0, 0), -- spline 12/18
(10540, 1, 63, 1927.736572, -4243.532715, 42.169476, 100.000000, 0, 0), -- spline 13/18
(10540, 1, 64, 1927.736572, -4244.032715, 42.169476, 100.000000, 0, 0), -- spline 14/18
(10540, 1, 65, 1927.986572, -4246.782715, 41.669476, 100.000000, 0, 0), -- spline 15/18
(10540, 1, 66, 1927.986572, -4247.032715, 41.669476, 100.000000, 0, 0), -- spline 16/18
(10540, 1, 67, 1927.986572, -4249.782715, 40.919476, 100.000000, 0, 0), -- spline 17/18
(10540, 1, 68, 1928.236938, -4252.463379, 39.892578, 100.000000, 0, 0), -- spline 18/18
(10540, 1, 69, 1927.316650, -4234.630371, 42.094475, 100.000000, 0, 0), -- spline 0/21
(10540, 1, 70, 1927.566650, -4237.630371, 42.094475, 100.000000, 0, 0), -- spline 1/21
(10540, 1, 71, 1927.566650, -4239.380371, 42.094475, 100.000000, 0, 0), -- spline 2/21
(10540, 1, 72, 1927.816650, -4240.630371, 42.094475, 100.000000, 0, 0), -- spline 3/21
(10540, 1, 73, 1927.816650, -4243.630371, 42.094475, 100.000000, 0, 0), -- spline 4/21
(10540, 1, 74, 1928.066650, -4244.130371, 42.094475, 100.000000, 0, 0), -- spline 5/21
(10540, 1, 75, 1928.066650, -4246.880371, 41.844475, 100.000000, 0, 0), -- spline 6/21
(10540, 1, 76, 1928.066650, -4247.380371, 41.844475, 100.000000, 0, 0), -- spline 7/21
(10540, 1, 77, 1928.316650, -4250.130371, 40.844475, 100.000000, 0, 0), -- spline 8/21
(10540, 1, 78, 1928.566650, -4252.380371, 40.094475, 100.000000, 0, 0), -- spline 9/21
(10540, 1, 79, 1928.566650, -4253.130371, 39.844475, 100.000000, 0, 0), -- spline 10/21
(10540, 1, 80, 1928.566650, -4256.630371, 38.844475, 100.000000, 0, 0), -- spline 11/21
(10540, 1, 81, 1928.816650, -4260.130371, 37.594475, 100.000000, 0, 0), -- spline 12/21
(10540, 1, 82, 1928.816650, -4261.380371, 37.094475, 100.000000, 0, 0), -- spline 13/21
(10540, 1, 83, 1929.066650, -4266.380371, 35.094475, 100.000000, 0, 0), -- spline 14/21
(10540, 1, 84, 1929.316650, -4270.380371, 33.344475, 100.000000, 0, 0), -- spline 15/21
(10540, 1, 85, 1929.316650, -4270.630371, 33.094475, 100.000000, 0, 0), -- spline 16/21
(10540, 1, 86, 1929.566650, -4273.880371, 30.844475, 100.000000, 0, 0), -- spline 17/21
(10540, 1, 87, 1929.566650, -4274.630371, 30.594475, 100.000000, 0, 0), -- spline 18/21
(10540, 1, 88, 1929.566650, -4275.880371, 30.594475, 100.000000, 0, 0), -- spline 19/21
(10540, 1, 89, 1930.066650, -4280.380371, 30.094475, 100.000000, 0, 0), -- spline 20/21
(10540, 1, 90, 1930.164307, -4283.760742, 28.689339, 100.000000, 0, 0), -- spline 21/21
(10540, 1, 91, 1929.436523, -4266.775391, 34.739967, 100.000000, 0, 0), -- spline 0/12
(10540, 1, 92, 1929.686523, -4270.525391, 32.989967, 100.000000, 0, 0), -- spline 1/12
(10540, 1, 93, 1929.686523, -4271.025391, 32.739967, 100.000000, 0, 0), -- spline 2/12
(10540, 1, 94, 1929.936523, -4274.275391, 30.739965, 100.000000, 0, 0), -- spline 3/12
(10540, 1, 95, 1929.936523, -4274.775391, 30.489965, 100.000000, 0, 0), -- spline 4/12
(10540, 1, 96, 1929.936523, -4276.025391, 30.239965, 100.000000, 0, 0), -- spline 5/12
(10540, 1, 97, 1930.186523, -4280.775391, 29.989965, 100.000000, 0, 0), -- spline 6/12
(10540, 1, 98, 1930.436523, -4283.775391, 28.989965, 100.000000, 0, 0), -- spline 7/12
(10540, 1, 99, 1930.936523, -4287.025391, 27.989965, 100.000000, 0, 0), -- spline 8/12
(10540, 1, 100, 1931.936523, -4298.025391, 24.739965, 100.000000, 0, 0), -- spline 9/12
(10540, 1, 101, 1932.186523, -4298.525391, 24.489965, 100.000000, 0, 0), -- spline 10/12
(10540, 1, 102, 1933.186523, -4307.525391, 22.489965, 100.000000, 0, 0), -- spline 11/12
(10540, 1, 103, 1933.460938, -4309.124023, 21.817581, 100.000000, 0, 0), -- spline 12/12
(10540, 1, 104, 1932.393677, -4298.326172, 24.418600, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 105, 1932.393677, -4298.826172, 24.418600, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 106, 1933.393677, -4307.826172, 22.668600, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 107, 1933.393677, -4309.076172, 22.168600, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 108, 1933.393677, -4315.826172, 20.918600, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 109, 1933.393677, -4317.576172, 20.668600, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 110, 1933.393677, -4324.576172, 20.418600, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 111, 1933.393677, -4329.826172, 20.168600, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 112, 1933.393677, -4333.076172, 20.168600, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 113, 1933.393677, -4340.576172, 19.918600, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 114, 1933.419678, -4352.133789, 19.499468, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 115, 1933.569092, -4341.054688, 20.005335, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 116, 1933.569092, -4352.054688, 20.005335, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 117, 1934.819092, -4355.804688, 20.005335, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 118, 1934.819092, -4358.304688, 20.505335, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 119, 1935.069092, -4364.554688, 21.755335, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 120, 1935.069092, -4365.554688, 22.005335, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 121, 1935.819092, -4375.054688, 20.755335, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 122, 1936.706177, -4387.961914, 20.446465, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 123, 1936.206787, -4375.236328, 20.968605, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 124, 1936.956787, -4387.986328, 20.968605, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 125, 1937.456787, -4390.736328, 20.968605, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 126, 1937.456787, -4390.986328, 20.968605, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 127, 1939.206787, -4402.236328, 21.968605, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 128, 1940.456787, -4412.486328, 22.468605, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 129, 1942.206787, -4422.986328, 22.718605, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 130, 1942.206787, -4423.736328, 22.468605, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 131, 1942.957886, -4428.248047, 22.609735, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 132, 1942.199585, -4423.181641, 22.696533, 100.000000, 0, 0), -- spline 0/11
(10540, 1, 133, 1942.199585, -4423.931641, 22.696533, 100.000000, 0, 0), -- spline 1/11
(10540, 1, 134, 1942.949585, -4428.181641, 22.696533, 100.000000, 0, 0), -- spline 2/11
(10540, 1, 135, 1942.449585, -4429.431641, 22.696533, 100.000000, 0, 0), -- spline 3/11
(10540, 1, 136, 1939.199585, -4438.181641, 23.196533, 100.000000, 0, 0), -- spline 4/11
(10540, 1, 137, 1937.199585, -4442.681641, 23.196533, 100.000000, 0, 0), -- spline 5/11
(10540, 1, 138, 1935.699585, -4446.931641, 22.946533, 100.000000, 0, 0), -- spline 6/11
(10540, 1, 139, 1934.449585, -4450.681641, 23.196533, 100.000000, 0, 0), -- spline 7/11
(10540, 1, 140, 1932.449585, -4455.931641, 23.446533, 100.000000, 0, 0), -- spline 8/11
(10540, 1, 141, 1932.199585, -4456.681641, 23.446533, 100.000000, 0, 0), -- spline 9/11
(10540, 1, 142, 1929.949585, -4462.681641, 23.446533, 100.000000, 0, 0), -- spline 10/11
(10540, 1, 143, 1927.748901, -4467.763184, 23.060984, 100.000000, 0, 0), -- spline 11/11
(10540, 1, 144, 1935.642700, -4447.173340, 23.252312, 100.000000, 0, 0), -- spline 0/11
(10540, 1, 145, 1934.142700, -4450.923340, 23.252312, 100.000000, 0, 0), -- spline 1/11
(10540, 1, 146, 1932.142700, -4456.173340, 23.252312, 100.000000, 0, 0), -- spline 2/11
(10540, 1, 147, 1931.892700, -4456.923340, 23.252312, 100.000000, 0, 0), -- spline 3/11
(10540, 1, 148, 1929.642700, -4462.923340, 23.252312, 100.000000, 0, 0), -- spline 4/11
(10540, 1, 149, 1927.642700, -4467.673340, 23.252312, 100.000000, 0, 0), -- spline 5/11
(10540, 1, 150, 1925.892700, -4470.673340, 23.252312, 100.000000, 0, 0), -- spline 6/11
(10540, 1, 151, 1920.642700, -4479.923340, 23.002312, 100.000000, 0, 0), -- spline 7/11
(10540, 1, 152, 1916.892700, -4486.673340, 23.252312, 100.000000, 0, 0), -- spline 8/11
(10540, 1, 153, 1916.142700, -4487.923340, 23.252312, 100.000000, 0, 0), -- spline 9/11
(10540, 1, 154, 1915.892700, -4488.173340, 23.252312, 100.000000, 0, 0), -- spline 10/11
(10540, 1, 155, 1911.351196, -4495.850586, 23.747881, 100.000000, 0, 0), -- spline 11/11
(10540, 1, 156, 1911.395508, -4495.838379, 24.101770, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 157, 1907.145508, -4502.338379, 24.851770, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 158, 1902.145508, -4510.588379, 25.601770, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 159, 1900.895508, -4512.588379, 25.851770, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 160, 1900.145508, -4513.838379, 26.101770, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 161, 1898.895508, -4515.838379, 26.601770, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 162, 1897.895508, -4517.588379, 27.351770, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 163, 1895.895508, -4520.588379, 28.351770, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 164, 1895.097900, -4521.763672, 28.107178, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 165, 1898.649414, -4516.081543, 26.724510, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 166, 1897.649414, -4517.831543, 27.224510, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 167, 1895.649414, -4520.831543, 28.224510, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 168, 1895.149414, -4521.831543, 28.224510, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 169, 1891.149414, -4523.081543, 27.974510, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 170, 1885.149414, -4524.831543, 27.474510, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 171, 1868.899414, -4530.581543, 25.224510, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 172, 1866.840698, -4531.351074, 24.781046, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 173, 1885.275635, -4525.166016, 27.341827, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 174, 1868.525635, -4530.416016, 25.091827, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 175, 1866.775635, -4531.166016, 24.841827, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 176, 1865.275635, -4531.416016, 24.841827, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 177, 1860.525635, -4532.166016, 24.591827, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 178, 1851.775635, -4533.916016, 23.841827, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 179, 1845.275635, -4535.166016, 22.591827, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 180, 1839.849365, -4536.229004, 21.133713, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 181, 1851.506592, -4533.926758, 23.505863, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 182, 1845.006592, -4535.176758, 22.505863, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 183, 1839.756592, -4535.926758, 21.505863, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 184, 1837.506592, -4535.676758, 21.005863, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 185, 1824.006592, -4533.926758, 20.255863, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 186, 1820.756592, -4533.426758, 20.005863, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 187, 1810.256592, -4532.176758, 21.255863, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 188, 1802.006592, -4531.176758, 21.505863, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 189, 1798.756592, -4530.926758, 21.755863, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 190, 1795.643433, -4530.472168, 21.410524, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 191, 1809.975342, -4532.200195, 21.266445, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 192, 1801.725342, -4530.950195, 21.516445, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 193, 1798.475342, -4530.700195, 21.766445, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 194, 1795.725342, -4530.450195, 21.766445, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 195, 1792.475342, -4530.200195, 22.016445, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 196, 1791.225342, -4530.200195, 22.016445, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 197, 1790.475342, -4529.950195, 22.266445, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 198, 1781.725342, -4529.450195, 23.766445, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 199, 1778.475342, -4528.950195, 24.266445, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 200, 1768.263916, -4528.273926, 24.993416, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 201, 1778.104004, -4528.845215, 24.479462, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 202, 1768.354004, -4528.095215, 25.479462, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 203, 1768.104004, -4527.845215, 25.479462, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 204, 1766.604004, -4526.595215, 25.729462, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 205, 1760.354004, -4520.345215, 26.229462, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 206, 1751.604004, -4511.845215, 27.229462, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 207, 1748.604004, -4508.845215, 27.229462, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 208, 1744.104004, -4504.595215, 27.479462, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 209, 1740.604004, -4501.095215, 27.979462, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 210, 1736.604004, -4497.345215, 28.479462, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 211, 1735.807251, -4496.861816, 28.439249, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 212, 1743.859863, -4504.465820, 27.620266, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 213, 1740.359863, -4500.965820, 28.370266, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 214, 1736.609863, -4497.215820, 28.620266, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 215, 1736.109863, -4496.715820, 28.870266, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 216, 1733.609863, -4485.715820, 30.370266, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 217, 1733.109863, -4484.215820, 30.870266, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 218, 1730.859863, -4473.715820, 33.370266, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 219, 1730.026489, -4471.454102, 33.532116, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 220, 1733.588501, -4485.481445, 30.829548, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 221, 1733.088501, -4483.981445, 31.079548, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 222, 1730.838501, -4473.481445, 33.329548, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 223, 1730.338501, -4471.231445, 33.579548, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 224, 1732.588501, -4465.481445, 34.579548, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 225, 1732.838501, -4464.481445, 35.079548, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 226, 1733.588501, -4462.731445, 35.329548, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 227, 1736.588501, -4454.481445, 36.829548, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 228, 1737.088501, -4452.981445, 36.829548, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 229, 1738.088501, -4450.231445, 37.079548, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 230, 1742.115723, -4438.880371, 37.670620, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 231, 1742.163086, -4438.590820, 37.720322, 100.000000, 0, 0), -- spline 0/4
(10540, 1, 232, 1741.663086, -4434.590820, 37.470322, 100.000000, 0, 0), -- spline 1/4
(10540, 1, 233, 1740.913086, -4429.340820, 37.220322, 100.000000, 0, 0), -- spline 2/4
(10540, 1, 234, 1740.163086, -4424.590820, 36.720322, 100.000000, 0, 0), -- spline 3/4
(10540, 1, 235, 1739.576416, -4419.385254, 35.991768, 100.000000, 0, 0), -- spline 4/4
(10540, 1, 236, 1740.918457, -4429.047852, 37.386368, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 237, 1740.168457, -4424.297852, 36.636368, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 238, 1739.668457, -4419.047852, 36.136368, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 239, 1738.668457, -4417.797852, 36.386368, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 240, 1733.668457, -4409.797852, 37.386368, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 241, 1730.418457, -4404.547852, 35.636368, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 242, 1729.918457, -4403.797852, 35.386368, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 243, 1729.918457, -4403.797852, 35.136368, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 244, 1728.168457, -4400.797852, 34.886368, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 245, 1723.300049, -4393.657227, 32.886715, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 246, 1730.034912, -4404.161621, 35.639034, 100.000000, 0, 0), -- spline 0/11
(10540, 1, 247, 1729.784912, -4403.661621, 35.389034, 100.000000, 0, 0), -- spline 1/11
(10540, 1, 248, 1729.784912, -4403.411621, 35.139034, 100.000000, 0, 0), -- spline 2/11
(10540, 1, 249, 1727.784912, -4400.661621, 34.639034, 100.000000, 0, 0), -- spline 3/11
(10540, 1, 250, 1723.284912, -4393.411621, 33.139034, 100.000000, 0, 0), -- spline 4/11
(10540, 1, 251, 1722.784912, -4392.661621, 32.889034, 100.000000, 0, 0), -- spline 5/11
(10540, 1, 252, 1719.784912, -4389.161621, 32.389034, 100.000000, 0, 0), -- spline 6/11
(10540, 1, 253, 1714.784912, -4382.411621, 30.889034, 100.000000, 0, 0), -- spline 7/11
(10540, 1, 254, 1714.284912, -4381.911621, 30.389034, 100.000000, 0, 0), -- spline 8/11
(10540, 1, 255, 1711.784912, -4378.411621, 29.139034, 100.000000, 0, 0), -- spline 9/11
(10540, 1, 256, 1709.284912, -4375.161621, 27.639034, 100.000000, 0, 0), -- spline 10/11
(10540, 1, 257, 1708.116333, -4374.068359, 26.909826, 100.000000, 0, 0), -- spline 11/11
(10540, 1, 258, 1711.492432, -4378.435547, 28.857590, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 259, 1708.992432, -4375.185547, 27.357590, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 260, 1707.992432, -4374.185547, 27.107590, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 261, 1706.742432, -4374.685547, 26.857590, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 262, 1703.492432, -4376.435547, 26.607590, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 263, 1700.242432, -4378.185547, 26.107590, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 264, 1696.492432, -4379.935547, 25.857590, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 265, 1695.992432, -4380.185547, 25.607590, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 266, 1692.992432, -4381.685547, 25.107590, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 267, 1689.102295, -4383.508301, 24.033331, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 268, 1700.018066, -4378.033203, 25.760298, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 269, 1696.268066, -4380.033203, 25.510298, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 270, 1695.768066, -4380.283203, 25.260298, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 271, 1692.518066, -4381.783203, 24.760298, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 272, 1689.018066, -4383.533203, 24.260298, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 273, 1686.518066, -4386.283203, 24.260298, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 274, 1681.518066, -4391.533203, 21.760298, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 275, 1680.018066, -4392.783203, 21.010298, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 276, 1671.518066, -4401.283203, 19.260298, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 277, 1666.018066, -4407.033203, 18.260298, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 278, 1664.261353, -4408.598145, 17.520422, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 279, 1671.434448, -4401.320801, 19.074173, 100.000000, 0, 0), -- spline 0/13
(10540, 1, 280, 1665.684448, -4407.070801, 17.824173, 100.000000, 0, 0), -- spline 1/13
(10540, 1, 281, 1664.184448, -4408.570801, 17.574173, 100.000000, 0, 0), -- spline 2/13
(10540, 1, 282, 1654.434448, -4413.320801, 16.824173, 100.000000, 0, 0), -- spline 3/13
(10540, 1, 283, 1649.684448, -4415.820801, 16.824173, 100.000000, 0, 0), -- spline 4/13
(10540, 1, 284, 1648.684448, -4416.320801, 16.574173, 100.000000, 0, 0), -- spline 5/13
(10540, 1, 285, 1642.934448, -4419.070801, 15.824173, 100.000000, 0, 0), -- spline 6/13
(10540, 1, 286, 1641.684448, -4419.820801, 15.824173, 100.000000, 0, 0), -- spline 7/13
(10540, 1, 287, 1635.684448, -4422.820801, 15.074173, 100.000000, 0, 0), -- spline 8/13
(10540, 1, 288, 1635.184448, -4423.070801, 15.074173, 100.000000, 0, 0), -- spline 9/13
(10540, 1, 289, 1631.934448, -4424.570801, 14.324173, 100.000000, 0, 0), -- spline 10/13
(10540, 1, 290, 1629.684448, -4425.820801, 14.074173, 100.000000, 0, 0), -- spline 11/13
(10540, 1, 291, 1629.184448, -4426.070801, 13.824173, 100.000000, 0, 0), -- spline 12/13
(10540, 1, 292, 1625.859009, -4427.929688, 12.834855, 100.000000, 0, 0), -- spline 13/13
(10540, 1, 293, 1635.518311, -4423.048828, 14.811006, 100.000000, 0, 0), -- spline 0/15
(10540, 1, 294, 1634.768311, -4423.298828, 14.811006, 100.000000, 0, 0), -- spline 1/15
(10540, 1, 295, 1631.768311, -4425.048828, 14.061006, 100.000000, 0, 0), -- spline 2/15
(10540, 1, 296, 1629.518311, -4426.048828, 13.811006, 100.000000, 0, 0), -- spline 3/15
(10540, 1, 297, 1629.018311, -4426.298828, 13.561006, 100.000000, 0, 0), -- spline 4/15
(10540, 1, 298, 1625.768311, -4428.048828, 13.061006, 100.000000, 0, 0), -- spline 5/15
(10540, 1, 299, 1621.018311, -4429.548828, 12.061006, 100.000000, 0, 0), -- spline 6/15
(10540, 1, 300, 1615.018311, -4431.048828, 10.561006, 100.000000, 0, 0), -- spline 7/15
(10540, 1, 301, 1612.018311, -4431.548828, 9.811006, 100.000000, 0, 0), -- spline 8/15
(10540, 1, 302, 1609.768311, -4432.298828, 9.311006, 100.000000, 0, 0), -- spline 9/15
(10540, 1, 303, 1607.268311, -4432.798828, 8.311006, 100.000000, 0, 0), -- spline 10/15
(10540, 1, 304, 1604.018311, -4433.548828, 7.811006, 100.000000, 0, 0), -- spline 11/15
(10540, 1, 305, 1600.268311, -4433.548828, 7.561006, 100.000000, 0, 0), -- spline 12/15
(10540, 1, 306, 1591.018311, -4436.298828, 6.811006, 100.000000, 0, 0), -- spline 13/15
(10540, 1, 307, 1590.268311, -4436.298828, 6.561006, 100.000000, 0, 0), -- spline 14/15
(10540, 1, 308, 1586.272339, -4437.666992, 5.967215, 100.000000, 0, 0), -- spline 15/15
(10540, 1, 309, 1590.644043, -4436.134766, 6.912611, 100.000000, 0, 0), -- spline 0/11
(10540, 1, 310, 1590.144043, -4436.384766, 6.662611, 100.000000, 0, 0), -- spline 1/11
(10540, 1, 311, 1586.394043, -4437.384766, 6.412611, 100.000000, 0, 0), -- spline 2/11
(10540, 1, 312, 1583.394043, -4435.884766, 6.662611, 100.000000, 0, 0), -- spline 3/11
(10540, 1, 313, 1581.144043, -4434.634766, 6.662611, 100.000000, 0, 0), -- spline 4/11
(10540, 1, 314, 1575.644043, -4431.634766, 6.662611, 100.000000, 0, 0), -- spline 5/11
(10540, 1, 315, 1574.894043, -4430.884766, 6.662611, 100.000000, 0, 0), -- spline 6/11
(10540, 1, 316, 1571.144043, -4428.884766, 6.912611, 100.000000, 0, 0), -- spline 7/11
(10540, 1, 317, 1563.894043, -4425.134766, 7.662611, 100.000000, 0, 0), -- spline 8/11
(10540, 1, 318, 1559.644043, -4422.884766, 8.162611, 100.000000, 0, 0), -- spline 9/11
(10540, 1, 319, 1555.394043, -4420.384766, 8.662611, 100.000000, 0, 0), -- spline 10/11
(10540, 1, 320, 1554.700317, -4420.197266, 8.541108, 100.000000, 0, 0), -- spline 11/11
(10540, 1, 321, 1563.625244, -4424.932617, 7.791972, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 322, 1559.375244, -4422.682617, 8.541972, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 323, 1555.125244, -4420.432617, 9.041972, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 324, 1554.625244, -4420.182617, 9.041972, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 325, 1545.625244, -4418.432617, 10.291972, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 326, 1535.625244, -4416.682617, 11.791972, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 327, 1526.125244, -4414.932617, 13.791972, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 328, 1525.625244, -4414.932617, 14.041972, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 329, 1521.125244, -4413.932617, 15.791972, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 330, 1520.625244, -4413.932617, 15.791972, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 331, 1518.900879, -4413.668457, 16.128433, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 332, 1535.233643, -4416.371094, 11.969387, 100.000000, 0, 0), -- spline 0/11
(10540, 1, 333, 1525.983643, -4414.871094, 13.969387, 100.000000, 0, 0), -- spline 1/11
(10540, 1, 334, 1525.483643, -4414.871094, 14.219387, 100.000000, 0, 0), -- spline 2/11
(10540, 1, 335, 1520.733643, -4414.121094, 15.969387, 100.000000, 0, 0), -- spline 3/11
(10540, 1, 336, 1520.483643, -4413.871094, 15.969387, 100.000000, 0, 0), -- spline 4/11
(10540, 1, 337, 1518.983643, -4413.621094, 16.469387, 100.000000, 0, 0), -- spline 5/11
(10540, 1, 338, 1511.983643, -4414.121094, 18.719387, 100.000000, 0, 0), -- spline 6/11
(10540, 1, 339, 1511.233643, -4414.121094, 18.969387, 100.000000, 0, 0), -- spline 7/11
(10540, 1, 340, 1501.983643, -4414.621094, 21.969387, 100.000000, 0, 0), -- spline 8/11
(10540, 1, 341, 1495.233643, -4415.121094, 22.969387, 100.000000, 0, 0), -- spline 9/11
(10540, 1, 342, 1493.233643, -4415.371094, 23.219387, 100.000000, 0, 0), -- spline 10/11
(10540, 1, 343, 1487.569214, -4415.608398, 23.770048, 100.000000, 0, 0), -- spline 11/11
(10540, 1, 344, 1501.662842, -4414.612305, 22.132511, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 345, 1495.162842, -4415.112305, 23.132511, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 346, 1492.912842, -4415.362305, 23.132511, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 347, 1487.662842, -4415.612305, 23.882511, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 348, 1485.662842, -4415.862305, 24.382511, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 349, 1481.662842, -4416.362305, 25.382511, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 350, 1478.662842, -4416.612305, 25.382511, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 351, 1440.591187, -4421.426758, 25.235395, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 352, 1440.887329, -4421.114258, 25.485397, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 353, 1439.387329, -4413.864258, 25.485397, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 354, 1437.887329, -4407.364258, 25.485397, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 355, 1437.387329, -4405.114258, 25.485397, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 356, 1436.137329, -4398.614258, 25.485397, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 357, 1435.637329, -4396.364258, 25.485397, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 358, 1434.137329, -4389.864258, 25.485397, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 359, 1433.606567, -4388.097656, 25.235399, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 360, 1435.333008, -4396.179688, 25.485401, 100.000000, 0, 0), -- spline 0/5
(10540, 1, 361, 1433.833008, -4389.429688, 25.485401, 100.000000, 0, 0), -- spline 1/5
(10540, 1, 362, 1433.583008, -4387.929688, 25.485401, 100.000000, 0, 0), -- spline 2/5
(10540, 1, 363, 1433.583008, -4387.179688, 25.485401, 100.000000, 0, 0), -- spline 3/5
(10540, 1, 364, 1431.333008, -4373.429688, 25.485401, 100.000000, 0, 0), -- spline 4/5
(10540, 1, 365, 1429.532227, -4363.587891, 25.235399, 100.000000, 0, 0), -- spline 5/5
(10540, 1, 366, 1431.217285, -4373.255859, 25.485409, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 367, 1429.467285, -4363.505859, 25.485409, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 368, 1421.717285, -4364.505859, 25.485409, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 369, 1415.217285, -4365.255859, 25.485409, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 370, 1413.217285, -4365.505859, 25.485409, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 371, 1406.467285, -4366.255859, 25.485409, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 372, 1404.217285, -4366.505859, 25.485409, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 373, 1395.661865, -4367.430664, 25.235416, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 374, 1415.150635, -4365.242676, 25.715324, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 375, 1412.900635, -4365.492676, 25.715324, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 376, 1406.150635, -4366.242676, 25.715324, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 377, 1403.900635, -4366.492676, 25.715324, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 378, 1395.650635, -4367.492676, 25.715324, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 379, 1394.900635, -4367.492676, 25.715324, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 380, 1387.900635, -4368.242676, 27.215324, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 381, 1384.900635, -4368.742676, 27.215324, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 382, 1381.900635, -4366.242676, 26.215324, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 383, 1364.062134, -4371.616211, 26.195240, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 384, 1384.715820, -4368.873047, 27.136070, 100.000000, 0, 0), -- spline 0/3
(10540, 1, 385, 1381.715820, -4366.123047, 26.386070, 100.000000, 0, 0), -- spline 1/3
(10540, 1, 386, 1363.965820, -4371.623047, 26.636070, 100.000000, 0, 0), -- spline 2/3
(10540, 1, 387, 1327.415161, -4379.170410, 26.257177, 100.000000, 0, 0), -- spline 3/3
(10540, 1, 388, 1327.307861, -4379.111328, 26.317314, 100.000000, 0, 0), -- spline 0/1
(10540, 1, 389, 1287.278198, -4392.685059, 26.390841, 100.000000, 0, 0), -- spline 1/1
-- 1 SECONDS LATER: Client interacts with Creature Javnir Nashak (Guid: 177 Entry: 15012).
(10540, 1, 390, 1287.252441, -4392.759766, 26.453970, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 391, 1265.502441, -4402.259766, 26.203970, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 392, 1262.002441, -4403.759766, 25.953970, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 393, 1259.252441, -4405.009766, 25.703970, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 394, 1256.502441, -4406.259766, 25.703970, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 395, 1253.752441, -4407.509766, 25.453970, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 396, 1251.752441, -4408.259766, 25.203970, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 397, 1251.480713, -4408.478027, 25.077862, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 398, 1259.016357, -4405.312988, 25.817165, 100.000000, 0, 0), -- spline 0/14
(10540, 1, 399, 1256.266357, -4406.312988, 25.567165, 100.000000, 0, 0), -- spline 1/14
(10540, 1, 400, 1253.516357, -4407.562988, 25.317165, 100.000000, 0, 0), -- spline 2/14
(10540, 1, 401, 1251.516357, -4408.562988, 25.067165, 100.000000, 0, 0), -- spline 3/14
(10540, 1, 402, 1251.516357, -4408.562988, 25.317165, 100.000000, 0, 0), -- spline 4/14
(10540, 1, 403, 1251.516357, -4408.562988, 25.067165, 100.000000, 0, 0), -- spline 5/14
(10540, 1, 404, 1248.766357, -4409.812988, 24.817165, 100.000000, 0, 0), -- spline 6/14
(10540, 1, 405, 1246.266357, -4410.812988, 24.567165, 100.000000, 0, 0), -- spline 7/14
(10540, 1, 406, 1244.516357, -4411.562988, 24.317165, 100.000000, 0, 0), -- spline 8/14
(10540, 1, 407, 1242.516357, -4412.312988, 24.317165, 100.000000, 0, 0), -- spline 9/14
(10540, 1, 408, 1239.766357, -4413.562988, 24.067165, 100.000000, 0, 0), -- spline 10/14
(10540, 1, 409, 1238.016357, -4414.312988, 23.817165, 100.000000, 0, 0), -- spline 11/14
(10540, 1, 410, 1236.266357, -4415.312988, 23.567165, 100.000000, 0, 0), -- spline 12/14
(10540, 1, 411, 1234.516357, -4416.062988, 23.317165, 100.000000, 0, 0), -- spline 13/14
(10540, 1, 412, 1233.424194, -4416.598633, 22.731060, 100.000000, 0, 0), -- spline 14/14
(10540, 1, 413, 1248.761719, -4409.386719, 24.799004, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 414, 1246.011719, -4410.636719, 24.549004, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 415, 1244.261719, -4411.386719, 24.299004, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 416, 1242.261719, -4412.386719, 24.049004, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 417, 1239.511719, -4413.636719, 24.049004, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 418, 1237.761719, -4414.386719, 23.799004, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 419, 1236.011719, -4415.136719, 23.549004, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 420, 1234.261719, -4416.136719, 23.299004, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 421, 1233.511719, -4416.386719, 23.049004, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 422, 1218.511719, -4408.886719, 23.549004, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 423, 1210.651978, -4405.246094, 23.205236, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 424, 1218.234619, -4408.890625, 23.461098, 100.000000, 0, 0), -- spline 0/5
(10540, 1, 425, 1210.984619, -4404.890625, 23.461098, 100.000000, 0, 0), -- spline 1/5
(10540, 1, 426, 1209.234619, -4401.390625, 23.461098, 100.000000, 0, 0), -- spline 2/5
(10540, 1, 427, 1206.984619, -4397.140625, 23.711098, 100.000000, 0, 0), -- spline 3/5
(10540, 1, 428, 1204.984619, -4392.640625, 23.961098, 100.000000, 0, 0), -- spline 4/5
(10540, 1, 429, 1202.845459, -4388.561035, 24.003395, 100.000000, 0, 0), -- spline 5/5
(10540, 1, 430, 1208.953125, -4401.336914, 23.599823, 100.000000, 0, 0), -- spline 0/13
(10540, 1, 431, 1207.203125, -4396.836914, 23.849823, 100.000000, 0, 0), -- spline 1/13
(10540, 1, 432, 1204.953125, -4392.336914, 24.099823, 100.000000, 0, 0), -- spline 2/13
(10540, 1, 433, 1203.203125, -4388.336914, 24.099823, 100.000000, 0, 0), -- spline 3/13
(10540, 1, 434, 1203.703125, -4384.336914, 24.349823, 100.000000, 0, 0), -- spline 4/13
(10540, 1, 435, 1203.953125, -4382.336914, 24.599823, 100.000000, 0, 0), -- spline 5/13
(10540, 1, 436, 1204.453125, -4379.586914, 24.849823, 100.000000, 0, 0), -- spline 6/13
(10540, 1, 437, 1206.953125, -4364.836914, 24.849823, 100.000000, 0, 0), -- spline 7/13
(10540, 1, 438, 1207.203125, -4362.836914, 24.349823, 100.000000, 0, 0), -- spline 8/13
(10540, 1, 439, 1207.453125, -4361.836914, 24.099823, 100.000000, 0, 0), -- spline 9/13
(10540, 1, 440, 1207.453125, -4360.836914, 23.599823, 100.000000, 0, 0), -- spline 10/13
(10540, 1, 441, 1207.703125, -4359.836914, 23.349823, 100.000000, 0, 0), -- spline 11/13
(10540, 1, 442, 1207.703125, -4358.836914, 22.849823, 100.000000, 0, 0), -- spline 12/13
(10540, 1, 443, 1207.719727, -4357.923828, 22.441650, 100.000000, 0, 0), -- spline 13/13
(10540, 1, 444, 1206.693115, -4364.607422, 24.753265, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 445, 1206.943115, -4362.607422, 24.253265, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 446, 1207.193115, -4361.607422, 24.003265, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 447, 1207.193115, -4360.607422, 23.503265, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 448, 1207.443115, -4359.607422, 23.253265, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 449, 1207.443115, -4358.607422, 23.003265, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 450, 1207.693115, -4357.607422, 22.753265, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 451, 1207.443115, -4355.607422, 22.253265, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 452, 1207.443115, -4354.607422, 22.003265, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 453, 1207.193115, -4352.607422, 21.753265, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 454, 1204.823364, -4330.090332, 21.316643, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 455, 1205.101318, -4329.828125, 21.605457, 100.000000, 0, 0), -- spline 0/1
(10540, 1, 456, 1205.401978, -4289.867188, 21.316637, 100.000000, 0, 0), -- spline 1/1
(10540, 1, 457, 1205.665283, -4289.916992, 21.566639, 100.000000, 0, 0), -- spline 0/1
(10540, 1, 458, 1207.260376, -4279.397949, 21.316637, 100.000000, 1000, 1054002), -- spline 1/1
(10540, 1, 459, 1207.950928, -4276.057129, 21.254156, 100.000000, 0, 0), -- spline 0/4
(10540, 1, 460, 1202.950928, -4269.057129, 21.254156, 100.000000, 0, 0), -- spline 1/4
(10540, 1, 461, 1206.200928, -4261.057129, 21.254156, 100.000000, 0, 0), -- spline 2/4
(10540, 1, 462, 1211.700928, -4262.807129, 21.254156, 100.000000, 0, 0), -- spline 3/4
(10540, 1, 463, 1209.141602, -4268.716309, 21.191675, 100.000000, 0, 0), -- spline 4/4
(10540, 1, 464, 1208.630005, -4268.430176, 22.328600, 4.3051133, 159000, 1054003), -- no splines in this packet
-- yes there is a gap here
(10540, 1, 467, 1211.622070, -4263.036133, 21.510460, 100.000000, 0, 0), -- spline 0/4
(10540, 1, 468, 1206.372070, -4261.536133, 21.510460, 100.000000, 0, 0), -- spline 1/4
(10540, 1, 469, 1202.872070, -4264.286133, 21.510460, 100.000000, 0, 0), -- spline 2/4
(10540, 1, 470, 1202.122070, -4270.536133, 21.760460, 100.000000, 0, 0), -- spline 3/4
(10540, 1, 471, 1207.614136, -4273.642090, 21.192318, 100.000000, 1000, 1054004), -- spline 4/4
(10540, 1, 472, 1206.567749, -4282.021484, 21.504480, 100.000000, 0, 0), -- spline 0/1
(10540, 1, 473, 1205.521362, -4320.401367, 21.316643, 100.000000, 0, 0), -- spline 1/1
(10540, 1, 474, 1205.628662, -4320.382324, 21.712154, 100.000000, 0, 0), -- spline 0/5
(10540, 1, 475, 1203.878662, -4355.132324, 22.212154, 100.000000, 0, 0), -- spline 1/5
(10540, 1, 476, 1203.878662, -4357.132324, 22.462154, 100.000000, 0, 0), -- spline 2/5
(10540, 1, 477, 1203.628662, -4359.132324, 22.712154, 100.000000, 0, 0), -- spline 3/5
(10540, 1, 478, 1203.628662, -4360.132324, 22.962154, 100.000000, 0, 0), -- spline 4/5
(10540, 1, 479, 1203.378662, -4360.792969, 23.107666, 100.000000, 0, 0), -- spline 5/5
(10540, 1, 480, 1203.938965, -4355.326172, 22.105171, 100.000000, 0, 0), -- spline 0/13
(10540, 1, 481, 1203.938965, -4357.326172, 22.605171, 100.000000, 0, 0), -- spline 1/13
(10540, 1, 482, 1203.688965, -4359.326172, 22.855171, 100.000000, 0, 0), -- spline 2/13
(10540, 1, 483, 1203.688965, -4360.326172, 23.105171, 100.000000, 0, 0), -- spline 3/13
(10540, 1, 484, 1203.688965, -4360.826172, 23.355171, 100.000000, 0, 0), -- spline 4/13
(10540, 1, 485, 1203.688965, -4362.826172, 24.105171, 100.000000, 0, 0), -- spline 5/13
(10540, 1, 486, 1203.688965, -4364.826172, 24.605171, 100.000000, 0, 0), -- spline 6/13
(10540, 1, 487, 1203.688965, -4365.826172, 24.855171, 100.000000, 0, 0), -- spline 7/13
(10540, 1, 488, 1203.688965, -4367.576172, 24.855171, 100.000000, 0, 0), -- spline 8/13
(10540, 1, 489, 1203.688965, -4382.576172, 24.605171, 100.000000, 0, 0), -- spline 9/13
(10540, 1, 490, 1203.438965, -4384.576172, 24.355171, 100.000000, 0, 0), -- spline 10/13
(10540, 1, 491, 1203.438965, -4386.576172, 24.105171, 100.000000, 0, 0), -- spline 11/13
(10540, 1, 492, 1203.438965, -4392.576172, 23.855171, 100.000000, 0, 0), -- spline 12/13
(10540, 1, 493, 1203.269409, -4396.475098, 23.708229, 100.000000, 0, 0), -- spline 13/13
(10540, 1, 494, 1203.485840, -4384.760742, 24.488741, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 495, 1203.485840, -4386.760742, 24.238741, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 496, 1203.485840, -4392.760742, 23.988741, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 497, 1203.485840, -4396.510742, 23.988741, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 498, 1209.485840, -4399.760742, 23.488741, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 499, 1216.235840, -4404.010742, 23.488741, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 500, 1223.735840, -4408.760742, 23.238741, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 501, 1230.485840, -4413.010742, 22.988741, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 502, 1231.661377, -4413.842285, 22.647375, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 503, 1224.110229, -4408.759766, 23.277138, 100.000000, 0, 0), -- spline 0/14
(10540, 1, 504, 1230.860229, -4413.009766, 23.027138, 100.000000, 0, 0), -- spline 1/14
(10540, 1, 505, 1231.860229, -4413.509766, 23.027138, 100.000000, 0, 0), -- spline 2/14
(10540, 1, 506, 1234.860229, -4413.009766, 23.277138, 100.000000, 0, 0), -- spline 3/14
(10540, 1, 507, 1235.860229, -4412.759766, 23.527138, 100.000000, 0, 0), -- spline 4/14
(10540, 1, 508, 1237.860229, -4412.259766, 23.777138, 100.000000, 0, 0), -- spline 5/14
(10540, 1, 509, 1239.360229, -4411.759766, 24.027138, 100.000000, 0, 0), -- spline 6/14
(10540, 1, 510, 1242.360229, -4411.009766, 24.277138, 100.000000, 0, 0), -- spline 7/14
(10540, 1, 511, 1244.360229, -4410.509766, 24.277138, 100.000000, 0, 0), -- spline 8/14
(10540, 1, 512, 1246.360229, -4410.009766, 24.527138, 100.000000, 0, 0), -- spline 9/14
(10540, 1, 513, 1249.110229, -4409.509766, 24.777138, 100.000000, 0, 0), -- spline 10/14
(10540, 1, 514, 1251.110229, -4409.009766, 25.027138, 100.000000, 0, 0), -- spline 11/14
(10540, 1, 515, 1254.110229, -4408.259766, 25.277138, 100.000000, 0, 0), -- spline 12/14
(10540, 1, 516, 1256.860229, -4407.509766, 25.527138, 100.000000, 0, 0), -- spline 13/14
(10540, 1, 517, 1257.699219, -4407.615234, 25.519146, 100.000000, 0, 0), -- spline 14/14
(10540, 1, 518, 1249.333496, -4409.453125, 24.976446, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 519, 1251.333496, -4408.953125, 25.226446, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 520, 1254.333496, -4408.203125, 25.476446, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 521, 1257.083496, -4407.453125, 25.476446, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 522, 1257.833496, -4407.453125, 25.726446, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 523, 1259.833496, -4406.703125, 25.726446, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 524, 1263.583496, -4405.203125, 25.976446, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 525, 1266.333496, -4403.953125, 26.226446, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 526, 1269.083496, -4402.703125, 26.476446, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 527, 1297.114502, -4391.480957, 26.390841, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 528, 1297.368408, -4391.237305, 26.562767, 100.000000, 0, 0), -- spline 0/1
(10540, 1, 529, 1332.052368, -4381.335449, 26.257177, 100.000000, 0, 0), -- spline 1/1
(10540, 1, 530, 1332.388428, -4381.160156, 26.435886, 100.000000, 0, 0), -- spline 0/2
(10540, 1, 531, 1367.638428, -4371.160156, 26.185886, 100.000000, 0, 0), -- spline 1/2
(10540, 1, 532, 1369.740723, -4370.431152, 26.074364, 100.000000, 0, 0), -- spline 2/2
-- 2 SECONDS LATER: Music 11815 starts playing.
(10540, 1, 533, 1367.720703, -4370.986816, 26.361214, 100.000000, 0, 0), -- spline 0/2
(10540, 1, 534, 1369.720703, -4370.486816, 26.361214, 100.000000, 0, 0), -- spline 1/2
(10540, 1, 535, 1380.667358, -4369.262695, 26.074364, 100.000000, 0, 0), -- spline 2/2
(10540, 1, 536, 1370.049561, -4370.058594, 26.154882, 100.000000, 0, 0), -- spline 0/11
(10540, 1, 537, 1380.799561, -4369.058594, 26.154882, 100.000000, 0, 0), -- spline 1/11
(10540, 1, 538, 1384.799561, -4368.808594, 27.154882, 100.000000, 0, 0), -- spline 2/11
(10540, 1, 539, 1388.049561, -4368.558594, 27.154882, 100.000000, 0, 0), -- spline 3/11
(10540, 1, 540, 1395.049561, -4368.058594, 25.654882, 100.000000, 0, 0), -- spline 4/11
(10540, 1, 541, 1397.299561, -4367.808594, 25.654882, 100.000000, 0, 0), -- spline 5/11
(10540, 1, 542, 1404.049561, -4367.308594, 25.654882, 100.000000, 0, 0), -- spline 6/11
(10540, 1, 543, 1406.299561, -4367.058594, 25.654882, 100.000000, 0, 0), -- spline 7/11
(10540, 1, 544, 1413.049561, -4366.558594, 25.654882, 100.000000, 0, 0), -- spline 8/11
(10540, 1, 545, 1415.299561, -4366.308594, 25.654882, 100.000000, 0, 0), -- spline 9/11
(10540, 1, 546, 1421.799561, -4365.808594, 25.654882, 100.000000, 0, 0), -- spline 10/11
(10540, 1, 547, 1426.833130, -4365.240723, 25.235401, 100.000000, 0, 0), -- spline 11/11
(10540, 1, 548, 1413.394287, -4366.367188, 25.485405, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 549, 1415.644287, -4366.367188, 25.485405, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 550, 1422.144287, -4365.617188, 25.485405, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 551, 1426.894287, -4365.117188, 25.485405, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 552, 1433.394287, -4392.117188, 25.485405, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 553, 1434.394287, -4396.367188, 25.485405, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 554, 1435.144287, -4398.617188, 25.485405, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 555, 1436.644287, -4405.117188, 25.485405, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 556, 1437.144287, -4407.617188, 25.485405, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 557, 1438.470215, -4412.732910, 25.235395, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 558, 1433.782959, -4392.520508, 25.485401, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 559, 1434.782959, -4396.520508, 25.485401, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 560, 1435.282959, -4398.770508, 25.485401, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 561, 1437.032959, -4405.520508, 25.485401, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 562, 1437.532959, -4407.770508, 25.485401, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 563, 1438.782959, -4412.520508, 25.485401, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 564, 1439.782959, -4413.770508, 25.485401, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 565, 1445.532959, -4421.520508, 25.485401, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 566, 1447.842407, -4424.719727, 25.235397, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 567, 1437.502930, -4407.751953, 25.485399, 100.000000, 0, 0), -- spline 0/5
(10540, 1, 568, 1438.752930, -4412.751953, 25.485399, 100.000000, 0, 0), -- spline 1/5
(10540, 1, 569, 1439.752930, -4413.751953, 25.485399, 100.000000, 0, 0), -- spline 2/5
(10540, 1, 570, 1445.752930, -4421.501953, 25.485399, 100.000000, 0, 0), -- spline 3/5
(10540, 1, 571, 1448.002930, -4424.501953, 25.485399, 100.000000, 0, 0), -- spline 4/5
(10540, 1, 572, 1478.043579, -4419.425781, 25.235397, 100.000000, 0, 0), -- spline 5/5
(10540, 1, 573, 1478.343140, -4419.235352, 25.423317, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 574, 1481.843140, -4418.485352, 25.423317, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 575, 1485.343140, -4417.735352, 24.423317, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 576, 1485.593140, -4417.735352, 24.423317, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 577, 1489.593140, -4416.985352, 23.673317, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 578, 1492.843140, -4416.235352, 23.173317, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 579, 1495.843140, -4415.485352, 23.173317, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 580, 1501.593140, -4414.235352, 22.173317, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 581, 1503.484863, -4413.803223, 21.111237, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 582, 1489.833252, -4416.835938, 23.610662, 100.000000, 0, 0), -- spline 0/12
(10540, 1, 583, 1493.083252, -4416.085938, 23.360662, 100.000000, 0, 0), -- spline 1/12
(10540, 1, 584, 1496.083252, -4415.585938, 22.860662, 100.000000, 0, 0), -- spline 2/12
(10540, 1, 585, 1501.833252, -4414.335938, 21.860662, 100.000000, 0, 0), -- spline 3/12
(10540, 1, 586, 1503.833252, -4413.835938, 21.360662, 100.000000, 0, 0), -- spline 4/12
(10540, 1, 587, 1508.583252, -4414.085938, 19.860662, 100.000000, 0, 0), -- spline 5/12
(10540, 1, 588, 1512.333252, -4414.335938, 18.860662, 100.000000, 0, 0), -- spline 6/12
(10540, 1, 589, 1520.333252, -4415.085938, 16.110662, 100.000000, 0, 0), -- spline 7/12
(10540, 1, 590, 1525.333252, -4415.335938, 14.360662, 100.000000, 0, 0), -- spline 8/12
(10540, 1, 591, 1525.583252, -4415.585938, 14.110662, 100.000000, 0, 0), -- spline 9/12
(10540, 1, 592, 1525.833252, -4415.585938, 14.110662, 100.000000, 0, 0), -- spline 10/12
(10540, 1, 593, 1535.083252, -4416.085938, 12.110662, 100.000000, 0, 0), -- spline 11/12
(10540, 1, 594, 1543.300171, -4416.806641, 10.282280, 100.000000, 0, 0), -- spline 12/12
(10540, 1, 595, 1535.472046, -4416.295898, 11.810273, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 596, 1543.472046, -4416.795898, 10.560273, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 597, 1545.972046, -4418.295898, 10.060273, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 598, 1555.972046, -4425.545898, 8.810273, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 599, 1557.222046, -4426.545898, 8.560273, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 600, 1561.472046, -4429.045898, 7.810273, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 601, 1567.722046, -4433.295898, 7.060273, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 602, 1571.972046, -4436.295898, 6.310273, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 603, 1572.972046, -4437.045898, 5.810273, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 604, 1577.184204, -4440.118164, 4.879912, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 605, 1561.817505, -4429.264648, 7.568570, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 606, 1567.817505, -4433.264648, 7.068570, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 607, 1572.317505, -4436.264648, 6.318570, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 608, 1573.317505, -4437.014648, 5.818570, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 609, 1577.317505, -4439.764648, 5.318570, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 610, 1580.817505, -4439.514648, 5.318570, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 611, 1587.567505, -4438.764648, 6.068570, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 612, 1591.067505, -4438.514648, 6.318570, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 613, 1600.067505, -4437.264648, 6.818570, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 614, 1603.567505, -4437.264648, 7.068570, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 615, 1604.911987, -4437.424316, 6.865386, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 616, 1587.444580, -4439.121094, 5.752072, 100.000000, 0, 0), -- spline 0/18
(10540, 1, 617, 1591.060913, -4438.770020, 5.883084, 100.000000, 0, 0), -- spline 1/18
(10540, 1, 618, 1600.000000, -4437.558594, 6.440737, 100.000000, 0, 0), -- spline 2/18
(10540, 1, 619, 1603.675293, -4437.458008, 6.598505, 100.000000, 0, 0), -- spline 3/18
(10540, 1, 620, 1604.911987, -4437.424316, 6.865386, 100.000000, 0, 0), -- spline 4/18
(10540, 1, 621, 1610.126709, -4434.911621, 8.017854, 100.000000, 0, 0), -- spline 5/18
(10540, 1, 622, 1612.411377, -4433.811035, 9.076544, 100.000000, 0, 0), -- spline 6/18
(10540, 1, 623, 1612.675537, -4433.683594, 9.167688, 100.000000, 0, 0), -- spline 7/18
(10540, 1, 624, 1616.864380, -4431.665527, 10.234881, 100.000000, 0, 0), -- spline 8/18
(10540, 1, 625, 1620.671265, -4429.831543, 11.743256, 100.000000, 0, 0), -- spline 9/18
(10540, 1, 626, 1620.851929, -4429.744141, 11.856876, 100.000000, 0, 0), -- spline 10/18
(10540, 1, 627, 1621.068359, -4429.640137, 11.879962, 100.000000, 0, 0), -- spline 11/18
(10540, 1, 628, 1624.402100, -4428.033691, 12.609742, 100.000000, 0, 0), -- spline 12/18
(10540, 1, 629, 1628.549072, -4426.035645, 13.459380, 100.000000, 0, 0), -- spline 13/18
(10540, 1, 630, 1628.744873, -4425.941406, 13.515090, 100.000000, 0, 0), -- spline 14/18
(10540, 1, 631, 1633.994141, -4423.412109, 14.576755, 100.000000, 0, 0), -- spline 15/18
(10540, 1, 632, 1635.212524, -4422.825195, 14.753055, 100.000000, 0, 0), -- spline 16/18
(10540, 1, 633, 1640.758545, -4420.153320, 15.351522, 100.000000, 0, 0), -- spline 17/18
(10540, 1, 634, 1641.131104, -4419.973633, 15.362081, 100.000000, 0, 0), -- spline 18/18
(10540, 1, 635, 1634.367798, -4423.219727, 14.914330, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 636, 1635.367798, -4422.469727, 15.164330, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 637, 1641.117798, -4419.969727, 15.664330, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 638, 1641.367798, -4419.719727, 15.664330, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 639, 1642.867798, -4418.969727, 15.914330, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 640, 1647.867798, -4416.219727, 16.664330, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 641, 1649.367798, -4415.469727, 16.664330, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 642, 1653.617798, -4413.219727, 16.914330, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 643, 1665.617798, -4406.969727, 17.914330, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 644, 1670.612183, -4404.162598, 18.534758, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 645, 1665.767944, -4406.537598, 18.240047, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 646, 1670.767944, -4404.037598, 18.990047, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 647, 1680.017944, -4394.037598, 20.990047, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 648, 1684.517944, -4389.787598, 22.990047, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 649, 1687.017944, -4387.037598, 24.490047, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 650, 1688.517944, -4385.787598, 24.490047, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 651, 1692.517944, -4381.537598, 24.740047, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 652, 1695.517944, -4378.287598, 24.740047, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 653, 1698.279907, -4375.517578, 24.934732, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 654, 1695.696533, -4378.357422, 25.037426, 100.000000, 0, 0), -- spline 0/11
(10540, 1, 655, 1698.446533, -4375.607422, 25.287426, 100.000000, 0, 0), -- spline 1/11
(10540, 1, 656, 1700.196533, -4375.857422, 25.537426, 100.000000, 0, 0), -- spline 2/11
(10540, 1, 657, 1702.196533, -4376.357422, 26.287426, 100.000000, 0, 0), -- spline 3/11
(10540, 1, 658, 1709.946533, -4378.607422, 28.787426, 100.000000, 0, 0), -- spline 4/11
(10540, 1, 659, 1711.196533, -4378.857422, 29.037426, 100.000000, 0, 0), -- spline 5/11
(10540, 1, 660, 1711.946533, -4379.107422, 29.537426, 100.000000, 0, 0), -- spline 6/11
(10540, 1, 661, 1714.196533, -4381.857422, 30.287426, 100.000000, 0, 0), -- spline 7/11
(10540, 1, 662, 1714.696533, -4382.357422, 30.537426, 100.000000, 0, 0), -- spline 8/11
(10540, 1, 663, 1720.196533, -4389.107422, 32.287426, 100.000000, 0, 0), -- spline 9/11
(10540, 1, 664, 1729.446533, -4399.607422, 34.287426, 100.000000, 0, 0), -- spline 10/11
(10540, 1, 665, 1730.313232, -4400.795898, 34.510902, 100.000000, 0, 0), -- spline 11/11
(10540, 1, 666, 1720.544189, -4389.010742, 32.518105, 100.000000, 0, 0), -- spline 0/6
(10540, 1, 667, 1729.544189, -4399.510742, 34.268105, 100.000000, 0, 0), -- spline 1/6
(10540, 1, 668, 1730.294189, -4400.510742, 34.768105, 100.000000, 0, 0), -- spline 2/6
(10540, 1, 669, 1731.294189, -4402.260742, 35.768105, 100.000000, 0, 0), -- spline 3/6
(10540, 1, 670, 1734.544189, -4408.010742, 37.268105, 100.000000, 0, 0), -- spline 4/6
(10540, 1, 671, 1735.044189, -4408.760742, 37.268105, 100.000000, 0, 0), -- spline 5/6
(10540, 1, 672, 1736.419312, -4411.233887, 36.856022, 100.000000, 0, 0), -- spline 6/6
(10540, 1, 673, 1729.840576, -4399.798828, 34.551956, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 674, 1730.590576, -4400.798828, 35.051956, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 675, 1731.590576, -4402.548828, 35.801956, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 676, 1734.590576, -4408.048828, 37.301956, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 677, 1735.090576, -4408.798828, 37.301956, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 678, 1736.340576, -4411.048828, 37.051956, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 679, 1737.090576, -4413.048828, 36.801956, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 680, 1738.840576, -4417.548828, 36.301956, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 681, 1740.771729, -4423.227539, 36.449905, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 682, 1736.484619, -4411.298340, 37.015839, 100.000000, 0, 0), -- spline 0/10
(10540, 1, 683, 1737.234619, -4413.298340, 36.765839, 100.000000, 0, 0), -- spline 1/10
(10540, 1, 684, 1738.734619, -4417.798340, 36.515839, 100.000000, 0, 0), -- spline 2/10
(10540, 1, 685, 1740.734619, -4423.298340, 36.765839, 100.000000, 0, 0), -- spline 3/10
(10540, 1, 686, 1740.484619, -4425.298340, 36.765839, 100.000000, 0, 0), -- spline 4/10
(10540, 1, 687, 1739.984619, -4428.798340, 37.265839, 100.000000, 0, 0), -- spline 5/10
(10540, 1, 688, 1738.984619, -4433.798340, 37.515839, 100.000000, 0, 0), -- spline 6/10
(10540, 1, 689, 1737.984619, -4440.298340, 38.015839, 100.000000, 0, 0), -- spline 7/10
(10540, 1, 690, 1735.984619, -4453.048340, 36.765839, 100.000000, 0, 0), -- spline 8/10
(10540, 1, 691, 1735.984619, -4453.548340, 36.765839, 100.000000, 0, 0), -- spline 9/10
(10540, 1, 692, 1735.855103, -4454.739258, 36.477997, 100.000000, 0, 0), -- spline 10/10
(10540, 1, 693, 1736.120850, -4453.198730, 36.932167, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 694, 1736.120850, -4453.698730, 36.682167, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 695, 1735.870850, -4454.698730, 36.682167, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 696, 1734.120850, -4462.448730, 35.432167, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 697, 1733.870850, -4465.198730, 34.932167, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 698, 1733.370850, -4467.198730, 34.432167, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 699, 1732.120850, -4473.698730, 33.432167, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 700, 1729.688354, -4483.747559, 30.953257, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 701, 1731.948608, -4474.166992, 33.287392, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 702, 1729.948608, -4483.666992, 31.037390, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 703, 1731.448608, -4486.416992, 30.537390, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 704, 1731.698608, -4486.916992, 30.287390, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 705, 1737.198608, -4496.666992, 28.787390, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 706, 1740.448608, -4502.916992, 28.037390, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 707, 1742.198608, -4506.166992, 27.537390, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 708, 1743.429810, -4508.659668, 27.023243, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 709, 1740.711792, -4503.127441, 27.747589, 100.000000, 0, 0), -- spline 0/5
(10540, 1, 710, 1742.461792, -4506.627441, 27.247589, 100.000000, 0, 0), -- spline 1/5
(10540, 1, 711, 1743.711792, -4508.627441, 27.247589, 100.000000, 0, 0), -- spline 2/5
(10540, 1, 712, 1750.211792, -4513.627441, 26.997589, 100.000000, 0, 0), -- spline 3/5
(10540, 1, 713, 1758.961792, -4520.877441, 26.247589, 100.000000, 0, 0), -- spline 4/5
(10540, 1, 714, 1765.450562, -4526.487793, 25.317133, 100.000000, 0, 0), -- spline 5/5
(10540, 1, 715, 1765.686768, -4526.131836, 25.497227, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 716, 1766.936768, -4526.131836, 25.497227, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 717, 1773.936768, -4526.381836, 24.747227, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 718, 1778.436768, -4526.381836, 24.247227, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 719, 1784.686768, -4526.381836, 23.247227, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 720, 1790.186768, -4526.381836, 22.247227, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 721, 1793.686768, -4526.631836, 21.997227, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 722, 1801.436768, -4526.631836, 21.247227, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 723, 1806.686768, -4526.631836, 20.997227, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 724, 1813.812988, -4526.950195, 20.085726, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 725, 1807.061279, -4526.952637, 20.868149, 100.000000, 0, 0), -- spline 0/7
(10540, 1, 726, 1814.061279, -4526.952637, 20.618149, 100.000000, 0, 0), -- spline 1/7
(10540, 1, 727, 1815.311279, -4527.202637, 20.368149, 100.000000, 0, 0), -- spline 2/7
(10540, 1, 728, 1818.811279, -4528.202637, 20.118149, 100.000000, 0, 0), -- spline 3/7
(10540, 1, 729, 1827.311279, -4530.702637, 20.618149, 100.000000, 0, 0), -- spline 4/7
(10540, 1, 730, 1837.561279, -4533.202637, 21.368149, 100.000000, 0, 0), -- spline 5/7
(10540, 1, 731, 1845.061279, -4535.202637, 22.368149, 100.000000, 0, 0), -- spline 6/7
(10540, 1, 732, 1847.313843, -4536.050293, 22.482712, 100.000000, 0, 0), -- spline 7/7
(10540, 1, 733, 1837.826660, -4533.179688, 21.349112, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 734, 1845.326660, -4535.179688, 22.599112, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 735, 1847.576660, -4535.679688, 22.849112, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 736, 1852.076660, -4534.679688, 23.849112, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 737, 1860.326660, -4532.429688, 24.599112, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 738, 1866.826660, -4530.929688, 24.849112, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 739, 1868.326660, -4530.429688, 25.099112, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 740, 1886.076660, -4526.429688, 27.599112, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 741, 1886.313843, -4526.333984, 27.447969, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 742, 1867.186646, -4530.814453, 24.834667, 100.000000, 0, 0), -- spline 0/12
(10540, 1, 743, 1868.686646, -4530.564453, 25.084667, 100.000000, 0, 0), -- spline 1/12
(10540, 1, 744, 1886.436646, -4526.064453, 27.584667, 100.000000, 0, 0), -- spline 2/12
(10540, 1, 745, 1886.686646, -4526.064453, 27.584667, 100.000000, 0, 0), -- spline 3/12
(10540, 1, 746, 1890.436646, -4522.064453, 27.834667, 100.000000, 0, 0), -- spline 4/12
(10540, 1, 747, 1891.686646, -4520.814453, 27.834667, 100.000000, 0, 0), -- spline 5/12
(10540, 1, 748, 1892.936646, -4519.314453, 27.584667, 100.000000, 0, 0), -- spline 6/12
(10540, 1, 749, 1895.436646, -4516.814453, 27.334667, 100.000000, 0, 0), -- spline 7/12
(10540, 1, 750, 1897.936646, -4514.564453, 26.584667, 100.000000, 0, 0), -- spline 8/12
(10540, 1, 751, 1900.186646, -4512.314453, 25.584667, 100.000000, 0, 0), -- spline 9/12
(10540, 1, 752, 1901.936646, -4510.314453, 25.334667, 100.000000, 0, 0), -- spline 10/12
(10540, 1, 753, 1910.186646, -4502.064453, 24.584667, 100.000000, 0, 0), -- spline 11/12
(10540, 1, 754, 1910.519165, -4501.822754, 24.443089, 100.000000, 0, 0), -- spline 12/12
(10540, 1, 755, 1910.419922, -4501.860840, 24.712761, 100.000000, 0, 0), -- spline 0/8
(10540, 1, 756, 1910.669922, -4501.610840, 24.712761, 100.000000, 0, 0), -- spline 1/8
(10540, 1, 757, 1917.919922, -4489.610840, 23.712761, 100.000000, 0, 0), -- spline 2/8
(10540, 1, 758, 1919.419922, -4487.360840, 23.712761, 100.000000, 0, 0), -- spline 3/8
(10540, 1, 759, 1922.919922, -4481.360840, 23.462761, 100.000000, 0, 0), -- spline 4/8
(10540, 1, 760, 1923.669922, -4480.360840, 23.462761, 100.000000, 0, 0), -- spline 5/8
(10540, 1, 761, 1929.169922, -4471.360840, 23.712761, 100.000000, 0, 0), -- spline 6/8
(10540, 1, 762, 1929.669922, -4470.860840, 23.712761, 100.000000, 0, 0), -- spline 7/8
(10540, 1, 763, 1929.965332, -4470.183105, 23.446611, 100.000000, 0, 0), -- spline 8/8
(10540, 1, 764, 1923.323853, -4481.083496, 23.122448, 100.000000, 0, 0), -- spline 0/14
(10540, 1, 765, 1923.823853, -4480.333496, 23.122448, 100.000000, 0, 0), -- spline 1/14
(10540, 1, 766, 1929.323853, -4471.333496, 23.622448, 100.000000, 0, 0), -- spline 2/14
(10540, 1, 767, 1929.823853, -4470.583496, 23.622448, 100.000000, 0, 0), -- spline 3/14
(10540, 1, 768, 1930.323853, -4469.833496, 23.622448, 100.000000, 0, 0), -- spline 4/14
(10540, 1, 769, 1932.323853, -4463.083496, 23.622448, 100.000000, 0, 0), -- spline 5/14
(10540, 1, 770, 1933.823853, -4458.083496, 23.622448, 100.000000, 0, 0), -- spline 6/14
(10540, 1, 771, 1934.073853, -4457.083496, 23.622448, 100.000000, 0, 0), -- spline 7/14
(10540, 1, 772, 1935.823853, -4451.583496, 23.372448, 100.000000, 0, 0), -- spline 8/14
(10540, 1, 773, 1936.073853, -4451.083496, 23.372448, 100.000000, 0, 0), -- spline 9/14
(10540, 1, 774, 1937.573853, -4446.583496, 22.872448, 100.000000, 0, 0), -- spline 10/14
(10540, 1, 775, 1938.573853, -4443.333496, 23.122448, 100.000000, 0, 0), -- spline 11/14
(10540, 1, 776, 1939.823853, -4439.333496, 23.122448, 100.000000, 0, 0), -- spline 12/14
(10540, 1, 777, 1942.573853, -4430.833496, 22.872448, 100.000000, 0, 0), -- spline 13/14
(10540, 1, 778, 1943.297363, -4428.407715, 22.655220, 100.000000, 0, 0), -- spline 14/14
(10540, 1, 779, 1939.872192, -4439.026367, 23.222317, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 780, 1942.622192, -4430.526367, 22.722317, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 781, 1943.372192, -4428.276367, 22.722317, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 782, 1942.622192, -4424.276367, 22.722317, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 783, 1941.122192, -4412.776367, 22.472317, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 784, 1939.622192, -4402.776367, 21.972317, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 785, 1938.122192, -4392.526367, 21.222317, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 786, 1938.122192, -4391.526367, 21.222317, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 787, 1937.872192, -4390.276367, 20.972317, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 788, 1936.926636, -4383.108398, 20.434366, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 789, 1938.135254, -4391.232422, 21.219406, 100.000000, 0, 0), -- spline 0/4
(10540, 1, 790, 1937.885254, -4390.232422, 20.969406, 100.000000, 0, 0), -- spline 1/4
(10540, 1, 791, 1936.885254, -4382.982422, 20.969406, 100.000000, 0, 0), -- spline 2/4
(10540, 1, 792, 1935.885254, -4375.232422, 20.969406, 100.000000, 0, 0), -- spline 3/4
(10540, 1, 793, 1934.050415, -4366.658691, 21.663225, 100.000000, 0, 0), -- spline 4/4
(10540, 1, 794, 1935.517334, -4374.965332, 20.774426, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 795, 1934.017334, -4366.465332, 21.774426, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 796, 1934.017334, -4365.965332, 22.024426, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 797, 1934.017334, -4365.215332, 21.774426, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 798, 1933.517334, -4361.215332, 20.774426, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 799, 1933.267334, -4359.215332, 20.524426, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 800, 1933.267334, -4358.715332, 20.524426, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 801, 1933.267334, -4358.465332, 20.024426, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 802, 1933.017334, -4356.465332, 20.024426, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 803, 1931.204468, -4345.593262, 19.503464, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 804, 1933.060547, -4359.031738, 20.722992, 100.000000, 0, 0), -- spline 0/9
(10540, 1, 805, 1933.060547, -4358.531738, 20.722992, 100.000000, 0, 0), -- spline 1/9
(10540, 1, 806, 1933.060547, -4358.281738, 20.472992, 100.000000, 0, 0), -- spline 2/9
(10540, 1, 807, 1932.810547, -4356.031738, 19.972992, 100.000000, 0, 0), -- spline 3/9
(10540, 1, 808, 1931.560547, -4345.281738, 19.972992, 100.000000, 0, 0), -- spline 4/9
(10540, 1, 809, 1931.810547, -4333.781738, 19.972992, 100.000000, 0, 0), -- spline 5/9
(10540, 1, 810, 1932.060547, -4320.781738, 20.722992, 100.000000, 0, 0), -- spline 6/9
(10540, 1, 811, 1932.060547, -4316.781738, 20.972992, 100.000000, 0, 0), -- spline 7/9
(10540, 1, 812, 1932.560547, -4302.531738, 23.472992, 100.000000, 0, 0), -- spline 8/9
(10540, 1, 813, 1932.218750, -4301.202148, 23.682980, 100.000000, 0, 0), -- spline 9/9
(10540, 1, 814, 1932.260010, -4302.137695, 23.766716, 100.000000, 0, 0), -- spline 0/6
(10540, 1, 815, 1932.260010, -4300.887695, 24.016716, 100.000000, 0, 0), -- spline 1/6
(10540, 1, 816, 1932.010010, -4298.887695, 24.516716, 100.000000, 0, 0), -- spline 2/6
(10540, 1, 817, 1932.010010, -4298.387695, 24.516716, 100.000000, 0, 0), -- spline 3/6
(10540, 1, 818, 1930.760010, -4287.137695, 27.766716, 100.000000, 0, 0), -- spline 4/6
(10540, 1, 819, 1930.260010, -4280.637695, 29.766716, 100.000000, 0, 0), -- spline 5/6
(10540, 1, 820, 1929.615845, -4276.802246, 30.097139, 100.000000, 0, 0), -- spline 6/6
(10540, 1, 821, 1930.676147, -4286.819824, 27.882313, 100.000000, 0, 0), -- spline 0/14
(10540, 1, 822, 1929.926147, -4280.569824, 30.132313, 100.000000, 0, 0), -- spline 1/14
(10540, 1, 823, 1929.676147, -4276.569824, 30.632313, 100.000000, 0, 0), -- spline 2/14
(10540, 1, 824, 1929.676147, -4275.319824, 30.632313, 100.000000, 0, 0), -- spline 3/14
(10540, 1, 825, 1929.676147, -4274.819824, 30.632313, 100.000000, 0, 0), -- spline 4/14
(10540, 1, 826, 1929.676147, -4274.069824, 30.882313, 100.000000, 0, 0), -- spline 5/14
(10540, 1, 827, 1929.676147, -4270.819824, 32.882313, 100.000000, 0, 0), -- spline 6/14
(10540, 1, 828, 1929.676147, -4270.319824, 33.382313, 100.000000, 0, 0), -- spline 7/14
(10540, 1, 829, 1929.176147, -4261.819824, 37.132313, 100.000000, 0, 0), -- spline 8/14
(10540, 1, 830, 1929.176147, -4260.319824, 37.632313, 100.000000, 0, 0), -- spline 9/14
(10540, 1, 831, 1929.176147, -4256.569824, 38.882313, 100.000000, 0, 0), -- spline 10/14
(10540, 1, 832, 1928.926147, -4253.069824, 39.882313, 100.000000, 0, 0), -- spline 11/14
(10540, 1, 833, 1928.676147, -4250.069824, 40.882313, 100.000000, 0, 0), -- spline 12/14
(10540, 1, 834, 1928.676147, -4249.569824, 41.132313, 100.000000, 0, 0), -- spline 13/14
(10540, 1, 835, 1928.480713, -4248.565918, 41.157040, 100.000000, 0, 0), -- spline 14/14
(10540, 1, 836, 1928.709839, -4256.401367, 39.180279, 100.000000, 0, 0), -- spline 0/12
(10540, 1, 837, 1928.709839, -4252.901367, 39.930279, 100.000000, 0, 0), -- spline 1/12
(10540, 1, 838, 1928.459839, -4249.901367, 40.930279, 100.000000, 0, 0), -- spline 2/12
(10540, 1, 839, 1928.459839, -4249.151367, 41.180279, 100.000000, 0, 0), -- spline 3/12
(10540, 1, 840, 1928.459839, -4248.401367, 41.430279, 100.000000, 0, 0), -- spline 4/12
(10540, 1, 841, 1928.459839, -4247.151367, 41.680279, 100.000000, 0, 0), -- spline 5/12
(10540, 1, 842, 1928.209839, -4243.901367, 42.180279, 100.000000, 0, 0), -- spline 6/12
(10540, 1, 843, 1927.959839, -4242.901367, 42.180279, 100.000000, 0, 0), -- spline 7/12
(10540, 1, 844, 1927.959839, -4239.901367, 42.180279, 100.000000, 0, 0), -- spline 8/12
(10540, 1, 845, 1927.959839, -4236.651367, 42.180279, 100.000000, 0, 0), -- spline 9/12
(10540, 1, 846, 1927.709839, -4234.651367, 42.180279, 100.000000, 0, 0), -- spline 10/12
(10540, 1, 847, 1927.459839, -4230.651367, 42.180279, 100.000000, 0, 0), -- spline 11/12
(10540, 1, 848, 1926.990845, -4227.588867, 42.094879, 100.000000, 0, 0), -- spline 12/12
(10540, 1, 849, 1928.062256, -4244.043945, 41.995796, 100.000000, 0, 0), -- spline 0/14
(10540, 1, 850, 1928.062256, -4242.543945, 41.995796, 100.000000, 0, 0), -- spline 1/14
(10540, 1, 851, 1927.812256, -4239.543945, 41.995796, 100.000000, 0, 0), -- spline 2/14
(10540, 1, 852, 1927.562256, -4236.543945, 41.995796, 100.000000, 0, 0), -- spline 3/14
(10540, 1, 853, 1927.562256, -4234.543945, 41.995796, 100.000000, 0, 0), -- spline 4/14
(10540, 1, 854, 1927.312256, -4230.293945, 42.245796, 100.000000, 0, 0), -- spline 5/14
(10540, 1, 855, 1927.062256, -4227.293945, 42.245796, 100.000000, 0, 0), -- spline 6/14
(10540, 1, 856, 1926.812256, -4225.293945, 42.245796, 100.000000, 0, 0), -- spline 7/14
(10540, 1, 857, 1926.562256, -4224.293945, 41.745796, 100.000000, 0, 0), -- spline 8/14
(10540, 1, 858, 1926.562256, -4223.793945, 41.495796, 100.000000, 0, 0), -- spline 9/14
(10540, 1, 859, 1926.312256, -4219.293945, 41.245796, 100.000000, 0, 0), -- spline 10/14
(10540, 1, 860, 1925.812256, -4213.543945, 41.245796, 100.000000, 0, 0), -- spline 11/14
(10540, 1, 861, 1925.562256, -4212.293945, 41.995796, 100.000000, 0, 0), -- spline 12/14
(10540, 1, 862, 1925.562256, -4211.793945, 42.245796, 100.000000, 0, 0), -- spline 13/14
(10540, 1, 863, 1924.926880, -4208.509277, 42.094872, 100.000000, 0, 0), -- spline 14/14
(10540, 1, 864, 1926.607666, -4223.958984, 41.845062, 100.000000, 0, 0), -- spline 0/12
(10540, 1, 865, 1926.607666, -4223.708984, 41.595062, 100.000000, 0, 0), -- spline 1/12
(10540, 1, 866, 1926.107666, -4218.958984, 41.345062, 100.000000, 0, 0), -- spline 2/12
(10540, 1, 867, 1925.607666, -4213.208984, 41.345062, 100.000000, 0, 0), -- spline 3/12
(10540, 1, 868, 1925.607666, -4211.958984, 42.095062, 100.000000, 0, 0), -- spline 4/12
(10540, 1, 869, 1925.607666, -4211.708984, 42.345062, 100.000000, 0, 0), -- spline 5/12
(10540, 1, 870, 1925.107666, -4208.458984, 42.345062, 100.000000, 0, 0), -- spline 6/12
(10540, 1, 871, 1925.107666, -4206.708984, 42.345062, 100.000000, 0, 0), -- spline 7/12
(10540, 1, 872, 1924.857666, -4200.458984, 42.095062, 100.000000, 0, 0), -- spline 8/12
(10540, 1, 873, 1924.857666, -4196.458984, 42.095062, 100.000000, 0, 0), -- spline 9/12
(10540, 1, 874, 1924.857666, -4194.208984, 42.095062, 100.000000, 0, 0), -- spline 10/12
(10540, 1, 875, 1924.857666, -4192.458984, 42.095062, 100.000000, 0, 0), -- spline 11/12
(10540, 1, 876, 1924.529541, -4192.148926, 41.942909, 100.000000, 0, 0), -- spline 12/12
(10540, 1, 877, 1924.803223, -4208.176758, 42.257263, 100.000000, 0, 0), -- spline 0/16
(10540, 1, 878, 1924.803223, -4206.426758, 42.257263, 100.000000, 0, 0), -- spline 1/16
(10540, 1, 879, 1924.803223, -4200.176758, 42.007263, 100.000000, 0, 0), -- spline 2/16
(10540, 1, 880, 1924.553223, -4196.176758, 42.007263, 100.000000, 0, 0), -- spline 3/16
(10540, 1, 881, 1924.553223, -4193.926758, 42.007263, 100.000000, 0, 0), -- spline 4/16
(10540, 1, 882, 1924.553223, -4192.426758, 42.007263, 100.000000, 0, 0), -- spline 5/16
(10540, 1, 883, 1924.553223, -4191.926758, 42.007263, 100.000000, 0, 0), -- spline 6/16
(10540, 1, 884, 1924.553223, -4188.676758, 42.007263, 100.000000, 0, 0), -- spline 7/16
(10540, 1, 885, 1924.553223, -4186.426758, 42.007263, 100.000000, 0, 0), -- spline 8/16
(10540, 1, 886, 1924.553223, -4185.176758, 42.007263, 100.000000, 0, 0), -- spline 9/16
(10540, 1, 887, 1924.553223, -4183.676758, 42.007263, 100.000000, 0, 0), -- spline 10/16
(10540, 1, 888, 1924.553223, -4182.426758, 42.007263, 100.000000, 0, 0), -- spline 11/16
(10540, 1, 889, 1924.553223, -4181.176758, 42.007263, 100.000000, 0, 0), -- spline 12/16
(10540, 1, 890, 1924.553223, -4180.176758, 41.507263, 100.000000, 0, 0), -- spline 13/16
(10540, 1, 891, 1924.303223, -4174.926758, 41.257263, 100.000000, 0, 0), -- spline 14/16
(10540, 1, 892, 1924.303223, -4171.426758, 41.257263, 100.000000, 0, 0), -- spline 15/16
(10540, 1, 893, 1924.024048, -4170.905273, 40.919659, 100.000000, 0, 0), -- spline 16/16
(10540, 1, 894, 1926.041016, -4169.332031, 41.170891, 100.000000, 0, 0), -- spline 0/1
(10540, 1, 895, 1934.057983, -4162.258301, 40.922119, 100.000000, 0, 0), -- spline 1/1
(10540, 1, 896, 1934.057983, -4162.258301, 40.922119, 2.181661605834960937, 1000, 1054005); -- no splines in this packet

-- delete point 465 466 and add point 1
-- DELETE FROM creature_movement_template WHERE point IN(465,466);
UPDATE creature_movement_template SET point=point-2 WHERE entry IN(10540) AND pathId IN(1) AND point >465;
UPDATE creature_movement_template SET point=point+1000 WHERE entry IN(10540) AND pathId IN(1);
UPDATE creature_movement_template SET point=point-999 WHERE entry IN(10540) AND pathId IN(1);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(10540,1,1,1934.058,-4162.2583,40.92212,1000,1054001,100);

UPDATE broadcast_text SET ChatTypeID=1 WHERE Id IN(22015,22016,22017,22018,22019,22020,22021,21919,21920,21921,21922,21923);

DELETE FROM dbscripts_on_creature_movement WHERE id IN(1054001,1054046,1054047,1054048,1054092);
REPLACE INTO dbscripts_on_creature_movement VALUES
('1054001', '0', '0', '24', '12346', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin mount and change speed'),
('1054001', '0', '1', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin set run'),
('1054001', '0', '2', '48', '256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin add unitflag immune to player'),
('1054001', '0', '3', '22', '1074', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin change faction'),
('1054001', '0', '4', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin remove npcflag questgiver'),
('1054001', '0', '5', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin set active'),

('1054002', '0', '0', '24', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin dismount and change speed'),
('1054002', '0', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin set walk'),

('1054003', '13000', '0', '1', '396', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin play emote'),
('1054003', '13000', '0', '0', '0', '0', '0', '0', '109988', '17', '22015', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin say 1'),
('1054003', '26000', '0', '0', '0', '0', '0', '0', '109988', '17', '22016', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin say 2'),
('1054003', '42000', '0', '0', '0', '0', '0', '0', '109988', '17', '22017', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin say 3'),
('1054003', '58000', '0', '0', '0', '0', '0', '0', '109988', '17', '22018', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin say 4'),
('1054003', '74000', '0', '0', '0', '0', '0', '0', '109988', '17', '22019', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin say 5'),
('1054003', '83000', '0', '0', '0', '0', '0', '0', '109988', '20', '23867', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 1'),
('1054003', '85000', '0', '0', '0', '0', '0', '0', '109988', '20', '23866', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 2'),
('1054003', '86000', '0', '1', '253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin play emote'),
('1054003', '88000', '0', '0', '0', '0', '0', '0', '109988', '20', '23865', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 3'),
('1054003', '91000', '0', '0', '0', '0', '0', '0', '109988', '20', '23864', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 4'),
('1054003', '94000', '0', '0', '0', '0', '0', '0', '109988', '20', '23863', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 5'),
('1054003', '94500', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin remove emotestate'),
('1054003', '94500', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.296705961227416992', '0', 'Voljin face'),
('1054003', '96000', '0', '1', '234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin play emote'),
('1054003', '99000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin remove emotestate'),
('1054003', '107000', '0', '42', '0', '0', '0', '0', '0', '0', '13861', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin set item'),
('1054003', '107000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.188790321350097656', '0', 'Voljin face'),
('1054003', '110000', '0', '0', '0', '0', '0', '0', '109988', '17', '22020', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin say 6'),
('1054003', '121000', '0', '0', '0', '0', '0', '0', '109988', '17', '22021', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin say 7'),
('1054003', '124000', '0', '15', '42138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin Cast 6634 on everyone'),
('1054003', '124000', '0', '1', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin play emote'),
('1054003', '124500', '0', '36', '0', '0', '0', '24484', '50', 0x203, '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Revelers turn to voljin'),
('1054003', '127000', '0', '1', '92', '0', '0', '24484', '50', 0x203, '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Revelers emote'),
('1054003', '127500', '0', '1', '253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin play emote'),
('1054003', '132000', '0', '1', '92', '0', '0', '24484', '50', 0x203, '153', '21', '22', '71', '0', '0', '0', '0', '0', 'Revelers emote'),
('1054003', '132500', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin play emote'),
('1054003', '132500', '1', '1', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin play emote'),
('1054003', '143000', '0', '1', '71', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin play emote'),
('1054003', '159000', '0', '36', '1', '0', '0', '24484', '50', 0x203, '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Revelers reset orientation'),

('1054004', '0', '0', '24', '12346', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin mount and change speed'),
('1054004', '0', '1', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin set run'),

('1054005', '0', '0', '24', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin dismount and change speed'),
('1054005', '0', '0', '48', '256', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin remove unitflag immune to player'),
('1054005', '0', '0', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin add npcflag questgiver'),
('1054005', '0', '0', '22', '125', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin change faction'),
('1054005', '0', '0', '20', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin Change Movement To 0 - Idle'),
('1054005', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin set inactive'),
('1054005', '0', '0', '42', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Voljin reset items');

REPLACE INTO `creature_movement_template` (`entry`, pathId, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7937, 1, 1, -4827.952148, -1259.004150, 505.701599, 100.000000, 0, 0), -- spline 0/7
(7937, 1, 2, -4828.952148, -1262.504150, 502.201599, 100.000000, 0, 0), -- spline 1/7
(7937, 1, 3, -4829.202148, -1264.004150, 502.201599, 100.000000, 0, 0), -- spline 2/7
(7937, 1, 4, -4829.452148, -1265.254150, 502.201599, 100.000000, 0, 0), -- spline 3/7
(7937, 1, 5, -4830.202148, -1269.504150, 502.201599, 100.000000, 0, 0), -- spline 4/7
(7937, 1, 6, -4837.952148, -1269.004150, 502.201599, 100.000000, 0, 0), -- spline 5/7
(7937, 1, 7, -4856.702148, -1267.754150, 502.201599, 100.000000, 0, 0), -- spline 6/7
(7937, 1, 8, -4858.276367, -1267.848633, 501.867859, 100.000000, 0, 0), -- spline 7/7
(7937, 1, 9, -4856.854004, -1267.613892, 502.117859, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 10, -4858.354004, -1267.613892, 502.117859, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 11, -4861.854004, -1266.613892, 502.117859, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 12, -4869.354004, -1264.863892, 502.117859, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 13, -4881.604004, -1261.613892, 502.117859, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 14, -4883.123535, -1261.211182, 501.867859, 100.000000, 0, 0), -- spline 5/5
(7937, 1, 15, -4869.614258, -1264.468018, 502.117859, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 16, -4881.864258, -1261.218018, 502.117859, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 17, -4883.114258, -1260.968018, 502.117859, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 18, -4891.614258, -1256.718018, 502.117859, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 19, -4900.364258, -1252.218018, 502.117859, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 20, -4909.042480, -1248.032349, 501.867828, 100.000000, 0, 0), -- spline 5/5
(7937, 1, 21, -4900.587891, -1252.200806, 502.011871, 100.000000, 0, 0), -- spline 0/7
(7937, 1, 22, -4909.087891, -1247.700806, 502.011871, 100.000000, 0, 0), -- spline 1/7
(7937, 1, 23, -4911.587891, -1246.450806, 502.011871, 100.000000, 0, 0), -- spline 2/7
(7937, 1, 24, -4913.837891, -1245.200806, 502.011871, 100.000000, 0, 0), -- spline 3/7
(7937, 1, 25, -4913.837891, -1245.200806, 501.761871, 100.000000, 0, 0), -- spline 4/7
(7937, 1, 26, -4926.087891, -1238.700806, 501.761871, 100.000000, 0, 0), -- spline 5/7
(7937, 1, 27, -4926.837891, -1238.200806, 501.761871, 100.000000, 0, 0), -- spline 6/7
(7937, 1, 28, -4939.223145, -1231.688110, 501.655884, 100.000000, 0, 0), -- spline 7/7
(7937, 1, 29, -4926.205078, -1238.455688, 501.903870, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 30, -4926.955078, -1237.955688, 501.903870, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 31, -4938.955078, -1231.455688, 501.903870, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 32, -4940.955078, -1227.705688, 501.903870, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 33, -4941.455078, -1226.955688, 501.903870, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 34, -4944.705078, -1220.705688, 501.903870, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 35, -4944.955078, -1220.455688, 501.903870, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 36, -4948.455078, -1214.205688, 501.903870, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 37, -4956.959961, -1198.827271, 501.648315, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 38, -4957.067383, -1198.470459, 501.906097, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 39, -4963.567383, -1191.970459, 501.906097, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 40, -4969.317383, -1186.220459, 501.906097, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 41, -4974.567383, -1180.470459, 501.906097, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 42, -4978.567383, -1176.470459, 501.906097, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 43, -4989.618652, -1165.527954, 501.653961, 100.000000, 0, 0), -- spline 5/5
(7937, 1, 44, -4989.644531, -1165.189209, 501.920044, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 45, -4990.644531, -1160.939209, 501.920044, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 46, -4994.144531, -1147.439209, 501.920044, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 47, -4995.394531, -1142.939209, 501.920044, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 48, -4996.644531, -1138.189209, 501.920044, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 49, -4998.394531, -1131.439209, 501.920044, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 50, -4998.875000, -1130.494995, 501.686035, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 51, -4995.716309, -1142.591309, 501.912994, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 52, -4996.966309, -1137.841309, 501.912994, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 53, -4998.716309, -1131.091309, 501.912994, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 54, -4998.966309, -1130.341309, 501.912994, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 55, -4999.966309, -1127.841309, 501.912994, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 56, -5001.716309, -1122.841309, 501.912994, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 57, -5001.966309, -1121.841309, 501.912994, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 58, -5003.966309, -1117.091309, 501.912994, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 59, -5005.130371, -1114.774170, 501.671143, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 60, -4999.916992, -1127.414795, 501.933167, 100.000000, 0, 0), -- spline 0/7
(7937, 1, 61, -5001.916992, -1122.414795, 501.933167, 100.000000, 0, 0), -- spline 1/7
(7937, 1, 62, -5002.416992, -1121.664795, 501.933167, 100.000000, 0, 0), -- spline 2/7
(7937, 1, 63, -5004.166992, -1117.164795, 501.933167, 100.000000, 0, 0), -- spline 3/7
(7937, 1, 64, -5005.166992, -1114.664795, 501.933167, 100.000000, 0, 0), -- spline 4/7
(7937, 1, 65, -5010.416992, -1113.664795, 501.933167, 100.000000, 0, 0), -- spline 5/7
(7937, 1, 66, -5012.416992, -1113.414795, 501.933167, 100.000000, 0, 0), -- spline 6/7
(7937, 1, 67, -5016.498535, -1112.683228, 501.680420, 100.000000, 0, 0), -- spline 7/7
(7937, 1, 68, -5005.019531, -1114.531494, 501.914825, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 69, -5010.769531, -1113.531494, 501.914825, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 70, -5012.269531, -1113.031494, 501.914825, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 71, -5016.269531, -1112.531494, 501.914825, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 72, -5016.269531, -1111.531494, 501.914825, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 73, -5016.769531, -1100.781494, 501.914825, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 74, -5017.269531, -1092.031494, 501.914825, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 75, -5017.269531, -1090.781494, 501.914825, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 76, -5017.929688, -1084.480835, 501.652100, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 77, -5017.295898, -1091.870605, 501.960449, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 78, -5017.295898, -1090.620605, 501.960449, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 79, -5017.795898, -1084.120605, 501.710449, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 80, -5017.545898, -1083.120605, 501.710449, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 81, -5017.045898, -1077.620605, 501.960449, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 82, -5016.795898, -1076.620605, 501.960449, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 83, -5016.045898, -1066.620605, 501.960449, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 84, -5015.795898, -1063.120605, 501.960449, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 85, -5015.166504, -1056.827393, 501.742249, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 86, -5016.926758, -1077.552490, 501.959351, 100.000000, 0, 0), -- spline 0/11
(7937, 1, 87, -5016.926758, -1076.552490, 501.959351, 100.000000, 0, 0), -- spline 1/11
(7937, 1, 88, -5015.926758, -1066.302490, 501.959351, 100.000000, 0, 0), -- spline 2/11
(7937, 1, 89, -5015.426758, -1062.802490, 501.959351, 100.000000, 0, 0), -- spline 3/11
(7937, 1, 90, -5014.926758, -1056.802490, 501.959351, 100.000000, 0, 0), -- spline 4/11
(7937, 1, 91, -5014.676758, -1055.552490, 501.959351, 100.000000, 0, 0), -- spline 5/11
(7937, 1, 92, -5013.426758, -1048.802490, 501.959351, 100.000000, 0, 0), -- spline 6/11
(7937, 1, 93, -5013.176758, -1047.802490, 501.959351, 100.000000, 0, 0), -- spline 7/11
(7937, 1, 94, -5012.426758, -1044.552490, 501.959351, 100.000000, 0, 0), -- spline 8/11
(7937, 1, 95, -5011.176758, -1039.302490, 501.959351, 100.000000, 0, 0), -- spline 9/11
(7937, 1, 96, -5011.176758, -1038.802490, 501.959351, 100.000000, 0, 0), -- spline 10/11
(7937, 1, 97, -5010.514648, -1036.034546, 501.686279, 100.000000, 0, 0), -- spline 11/11
(7937, 1, 98, -5012.095215, -1044.130127, 501.936707, 100.000000, 0, 0), -- spline 0/7
(7937, 1, 99, -5011.095215, -1038.880127, 501.936707, 100.000000, 0, 0), -- spline 1/7
(7937, 1, 100, -5010.845215, -1038.630127, 501.936707, 100.000000, 0, 0), -- spline 2/7
(7937, 1, 101, -5010.345215, -1035.880127, 501.936707, 100.000000, 0, 0), -- spline 3/7
(7937, 1, 102, -5008.595215, -1031.130127, 501.936707, 100.000000, 0, 0), -- spline 4/7
(7937, 1, 103, -5004.095215, -1018.630127, 501.936707, 100.000000, 0, 0), -- spline 5/7
(7937, 1, 104, -5003.095215, -1016.380127, 501.936707, 100.000000, 0, 0), -- spline 6/7
(7937, 1, 105, -5001.087891, -1010.659180, 501.657684, 100.000000, 0, 0), -- spline 7/7
(7937, 1, 106, -5002.873047, -1016.132996, 501.908997, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 107, -5000.873047, -1010.382996, 501.908997, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 108, -4996.873047, -1001.132996, 501.908997, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 109, -4996.123047, -999.132996, 501.908997, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 110, -4994.623047, -996.382996, 501.908997, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 111, -4993.514648, -993.492432, 501.660675, 100.000000, 0, 0), -- spline 5/5
(7937, 1, 112, -4996.685547, -1000.914917, 501.909546, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 113, -4995.685547, -998.914917, 501.909546, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 114, -4994.435547, -995.914917, 501.909546, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 115, -4993.435547, -993.164917, 501.909546, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 116, -4993.185547, -991.664917, 501.909546, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 117, -4991.435547, -980.914917, 501.909546, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 118, -4989.525879, -968.020813, 501.659454, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 119, -4991.538086, -980.584839, 501.912933, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 120, -4989.538086, -967.834839, 501.912933, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 121, -4992.288086, -964.084839, 501.912933, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 122, -4997.538086, -956.334839, 501.912933, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 123, -5001.288086, -950.334839, 501.912933, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 124, -5002.288086, -949.084839, 501.912933, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 125, -5005.331055, -945.092896, 501.665405, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 126, -4997.622070, -956.086670, 501.909485, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 127, -5001.622070, -950.086670, 501.909485, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 128, -5002.622070, -948.836670, 501.909485, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 129, -5005.372070, -944.836670, 501.909485, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 130, -5006.122070, -943.336670, 501.909485, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 131, -5015.872070, -928.336670, 501.909485, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 132, -5016.850098, -927.165344, 501.659424, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 133, -5005.104492, -944.921265, 501.911743, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 134, -5006.104492, -943.421265, 501.911743, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 135, -5015.854492, -927.921265, 501.911743, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 136, -5016.604492, -926.921265, 501.911743, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 137, -5009.604492, -920.171265, 501.911743, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 138, -5005.104492, -915.421265, 501.911743, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 139, -5000.854492, -910.921265, 501.911743, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 140, -4995.604492, -905.421265, 501.911743, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 141, -4993.035156, -902.796082, 501.659363, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 142, -4995.468750, -905.139404, 501.906464, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 143, -4992.718750, -902.639404, 501.906464, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 144, -4991.468750, -900.389404, 501.906464, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 145, -4990.718750, -899.139404, 501.906464, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 146, -4987.468750, -893.139404, 501.906464, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 147, -4981.360840, -882.278015, 501.653534, 100.000000, 0, 0), -- spline 5/5
(7937, 1, 148, -4987.440918, -892.694824, 501.842468, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 149, -4981.440918, -881.944824, 501.842468, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 150, -4982.940918, -880.444824, 501.842468, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 151, -4983.190918, -880.194824, 501.842468, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 152, -4986.940918, -875.694824, 497.592468, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 153, -4991.440918, -870.694824, 497.342468, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 154, -4996.678223, -864.570129, 497.030609, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 155, -4991.433594, -870.453003, 497.244507, 100.000000, 0, 0), -- spline 0/14
(7937, 1, 156, -4996.683594, -864.203003, 497.244507, 100.000000, 0, 0), -- spline 1/14
(7937, 1, 157, -4998.183594, -858.453003, 497.244507, 100.000000, 0, 0), -- spline 2/14
(7937, 1, 158, -5010.183594, -845.203003, 497.244507, 100.000000, 0, 0), -- spline 3/14
(7937, 1, 159, -5014.683594, -840.453003, 497.244507, 100.000000, 0, 0), -- spline 4/14
(7937, 1, 160, -5016.683594, -838.203003, 497.244507, 100.000000, 0, 0), -- spline 5/14
(7937, 1, 161, -5017.183594, -837.703003, 497.244507, 100.000000, 0, 0), -- spline 6/14
(7937, 1, 162, -5017.433594, -837.453003, 496.744507, 100.000000, 0, 0), -- spline 7/14
(7937, 1, 163, -5019.433594, -835.203003, 496.744507, 100.000000, 0, 0), -- spline 8/14
(7937, 1, 164, -5019.683594, -834.953003, 497.244507, 100.000000, 0, 0), -- spline 9/14
(7937, 1, 165, -5020.683594, -833.703003, 497.244507, 100.000000, 0, 0), -- spline 10/14
(7937, 1, 166, -5021.433594, -833.203003, 497.244507, 100.000000, 0, 0), -- spline 11/14
(7937, 1, 167, -5023.183594, -832.203003, 495.994507, 100.000000, 0, 0), -- spline 12/14
(7937, 1, 168, -5024.183594, -831.703003, 495.744507, 100.000000, 0, 0), -- spline 13/14
(7937, 1, 169, -5025.879395, -828.444275, 495.377106, 100.000000, 0, 0), -- spline 14/14
(7937, 1, 170, -5019.851074, -834.875732, 496.937439, 100.000000, 0, 0), -- spline 0/7
(7937, 1, 171, -5019.851074, -834.625732, 497.187439, 100.000000, 0, 0), -- spline 1/7
(7937, 1, 172, -5021.101074, -833.625732, 497.187439, 100.000000, 0, 0), -- spline 2/7
(7937, 1, 173, -5021.601074, -832.875732, 497.187439, 100.000000, 0, 0), -- spline 3/7
(7937, 1, 174, -5023.351074, -831.875732, 495.937439, 100.000000, 0, 0), -- spline 4/7
(7937, 1, 175, -5024.601074, -831.625732, 495.687439, 100.000000, 0, 0), -- spline 5/7
(7937, 1, 176, -5025.851074, -828.125732, 495.687439, 100.000000, 0, 0), -- spline 6/7
(7937, 1, 177, -5044.836914, -792.055176, 495.213226, 100.000000, 0, 0), -- spline 7/7
(7937, 1, 178, -5044.946289, -791.719238, 495.348022, 100.000000, 0, 0), -- spline 0/21
(7937, 1, 179, -5049.196289, -782.719238, 495.098022, 100.000000, 0, 0), -- spline 1/21
(7937, 1, 180, -5049.946289, -780.969238, 494.598022, 100.000000, 0, 0), -- spline 2/21
(7937, 1, 181, -5050.696289, -779.469238, 494.348022, 100.000000, 0, 0), -- spline 3/21
(7937, 1, 182, -5051.946289, -776.719238, 493.348022, 100.000000, 0, 0), -- spline 4/21
(7937, 1, 183, -5052.696289, -774.969238, 492.598022, 100.000000, 0, 0), -- spline 5/21
(7937, 1, 184, -5053.696289, -773.219238, 492.098022, 100.000000, 0, 0), -- spline 6/21
(7937, 1, 185, -5054.196289, -772.219238, 491.348022, 100.000000, 0, 0), -- spline 7/21
(7937, 1, 186, -5054.946289, -770.469238, 490.598022, 100.000000, 0, 0), -- spline 8/21
(7937, 1, 187, -5055.446289, -769.469238, 489.848022, 100.000000, 0, 0), -- spline 9/21
(7937, 1, 188, -5055.696289, -768.469238, 489.598022, 100.000000, 0, 0), -- spline 10/21
(7937, 1, 189, -5056.196289, -767.719238, 488.848022, 100.000000, 0, 0), -- spline 11/21
(7937, 1, 190, -5057.446289, -764.969238, 488.098022, 100.000000, 0, 0), -- spline 12/21
(7937, 1, 191, -5057.946289, -763.969238, 487.598022, 100.000000, 0, 0), -- spline 13/21
(7937, 1, 192, -5058.446289, -763.219238, 486.848022, 100.000000, 0, 0), -- spline 14/21
(7937, 1, 193, -5058.946289, -762.219238, 486.348022, 100.000000, 0, 0), -- spline 15/21
(7937, 1, 194, -5059.196289, -761.469238, 485.598022, 100.000000, 0, 0), -- spline 16/21
(7937, 1, 195, -5060.196289, -759.469238, 485.348022, 100.000000, 0, 0), -- spline 17/21
(7937, 1, 196, -5060.446289, -758.719238, 484.598022, 100.000000, 0, 0), -- spline 18/21
(7937, 1, 197, -5060.946289, -757.719238, 484.098022, 100.000000, 0, 0), -- spline 19/21
(7937, 1, 198, -5061.446289, -756.969238, 483.598022, 100.000000, 0, 0), -- spline 20/21
(7937, 1, 199, -5062.458496, -755.132507, 482.423157, 100.000000, 0, 0), -- spline 21/21
(7937, 1, 200, -5058.226563, -763.853149, 487.350586, 100.000000, 0, 0), -- spline 0/32
(7937, 1, 201, -5058.726563, -762.853149, 486.600586, 100.000000, 0, 0), -- spline 1/32
(7937, 1, 202, -5058.976563, -762.103149, 486.100586, 100.000000, 0, 0), -- spline 2/32
(7937, 1, 203, -5059.476563, -761.103149, 485.350586, 100.000000, 0, 0), -- spline 3/32
(7937, 1, 204, -5060.476563, -759.353149, 485.100586, 100.000000, 0, 0), -- spline 4/32
(7937, 1, 205, -5060.726563, -758.353149, 484.350586, 100.000000, 0, 0), -- spline 5/32
(7937, 1, 206, -5061.226563, -757.603149, 483.850586, 100.000000, 0, 0), -- spline 6/32
(7937, 1, 207, -5061.726563, -756.603149, 483.350586, 100.000000, 0, 0), -- spline 7/32
(7937, 1, 208, -5062.476563, -754.853149, 482.600586, 100.000000, 0, 0), -- spline 8/32
(7937, 1, 209, -5064.226563, -754.103149, 481.850586, 100.000000, 0, 0), -- spline 9/32
(7937, 1, 210, -5065.226563, -753.853149, 481.100586, 100.000000, 0, 0), -- spline 10/32
(7937, 1, 211, -5067.226563, -753.353149, 480.350586, 100.000000, 0, 0), -- spline 11/32
(7937, 1, 212, -5067.976563, -753.103149, 479.600586, 100.000000, 0, 0), -- spline 12/32
(7937, 1, 213, -5069.976563, -752.353149, 478.850586, 100.000000, 0, 0), -- spline 13/32
(7937, 1, 214, -5070.976563, -752.103149, 478.350586, 100.000000, 0, 0), -- spline 14/32
(7937, 1, 215, -5072.726563, -751.353149, 478.100586, 100.000000, 0, 0), -- spline 15/32
(7937, 1, 216, -5073.726563, -751.103149, 477.350586, 100.000000, 0, 0), -- spline 16/32
(7937, 1, 217, -5074.726563, -750.603149, 476.850586, 100.000000, 0, 0), -- spline 17/32
(7937, 1, 218, -5075.726563, -750.353149, 476.600586, 100.000000, 0, 0), -- spline 18/32
(7937, 1, 219, -5076.476563, -749.853149, 475.850586, 100.000000, 0, 0), -- spline 19/32
(7937, 1, 220, -5078.226563, -749.353149, 475.100586, 100.000000, 0, 0), -- spline 20/32
(7937, 1, 221, -5079.226563, -748.853149, 474.600586, 100.000000, 0, 0), -- spline 21/32
(7937, 1, 222, -5079.976563, -748.603149, 474.350586, 100.000000, 0, 0), -- spline 22/32
(7937, 1, 223, -5081.976563, -747.853149, 473.850586, 100.000000, 0, 0), -- spline 23/32
(7937, 1, 224, -5082.976563, -747.603149, 473.600586, 100.000000, 0, 0), -- spline 24/32
(7937, 1, 225, -5085.726563, -746.603149, 472.350586, 100.000000, 0, 0), -- spline 25/32
(7937, 1, 226, -5086.726563, -746.103149, 472.100586, 100.000000, 0, 0), -- spline 26/32
(7937, 1, 227, -5087.476563, -745.853149, 471.850586, 100.000000, 0, 0), -- spline 27/32
(7937, 1, 228, -5088.476563, -745.353149, 471.600586, 100.000000, 0, 0), -- spline 28/32
(7937, 1, 229, -5090.476563, -744.853149, 470.850586, 100.000000, 0, 0), -- spline 29/32
(7937, 1, 230, -5092.226563, -744.103149, 470.600586, 100.000000, 0, 0), -- spline 30/32
(7937, 1, 231, -5093.226563, -743.603149, 470.100586, 100.000000, 0, 0), -- spline 31/32
(7937, 1, 232, -5094.947754, -743.177124, 469.325439, 100.000000, 0, 0), -- spline 32/32
(7937, 1, 233, -5080.330078, -748.229858, 474.071594, 100.000000, 0, 0), -- spline 0/35
(7937, 1, 234, -5082.080078, -747.729858, 473.571594, 100.000000, 0, 0), -- spline 1/35
(7937, 1, 235, -5083.080078, -747.229858, 473.321594, 100.000000, 0, 0), -- spline 2/35
(7937, 1, 236, -5085.830078, -746.229858, 472.321594, 100.000000, 0, 0), -- spline 3/35
(7937, 1, 237, -5086.830078, -745.979858, 472.071594, 100.000000, 0, 0), -- spline 4/35
(7937, 1, 238, -5087.830078, -745.729858, 471.571594, 100.000000, 0, 0), -- spline 5/35
(7937, 1, 239, -5088.830078, -745.479858, 471.321594, 100.000000, 0, 0), -- spline 6/35
(7937, 1, 240, -5090.580078, -744.729858, 470.571594, 100.000000, 0, 0), -- spline 7/35
(7937, 1, 241, -5092.580078, -743.979858, 470.321594, 100.000000, 0, 0), -- spline 8/35
(7937, 1, 242, -5093.580078, -743.729858, 469.821594, 100.000000, 0, 0), -- spline 9/35
(7937, 1, 243, -5094.830078, -743.229858, 469.571594, 100.000000, 0, 0), -- spline 10/35
(7937, 1, 244, -5094.830078, -743.229858, 469.321594, 100.000000, 0, 0), -- spline 11/35
(7937, 1, 245, -5096.830078, -743.229858, 468.821594, 100.000000, 0, 0), -- spline 12/35
(7937, 1, 246, -5097.830078, -743.229858, 468.571594, 100.000000, 0, 0), -- spline 13/35
(7937, 1, 247, -5099.830078, -742.979858, 468.321594, 100.000000, 0, 0), -- spline 14/35
(7937, 1, 248, -5100.830078, -742.979858, 468.071594, 100.000000, 0, 0), -- spline 15/35
(7937, 1, 249, -5102.830078, -742.979858, 467.571594, 100.000000, 0, 0), -- spline 16/35
(7937, 1, 250, -5103.830078, -742.979858, 467.321594, 100.000000, 0, 0), -- spline 17/35
(7937, 1, 251, -5104.830078, -742.979858, 466.821594, 100.000000, 0, 0), -- spline 18/35
(7937, 1, 252, -5106.580078, -742.979858, 466.571594, 100.000000, 0, 0), -- spline 19/35
(7937, 1, 253, -5107.580078, -742.979858, 466.321594, 100.000000, 0, 0), -- spline 20/35
(7937, 1, 254, -5109.580078, -742.979858, 465.821594, 100.000000, 0, 0), -- spline 21/35
(7937, 1, 255, -5111.580078, -742.979858, 465.321594, 100.000000, 0, 0), -- spline 22/35
(7937, 1, 256, -5113.580078, -742.729858, 464.821594, 100.000000, 0, 0), -- spline 23/35
(7937, 1, 257, -5115.580078, -742.729858, 464.321594, 100.000000, 0, 0), -- spline 24/35
(7937, 1, 258, -5116.580078, -742.729858, 463.821594, 100.000000, 0, 0), -- spline 25/35
(7937, 1, 259, -5118.580078, -742.729858, 463.321594, 100.000000, 0, 0), -- spline 26/35
(7937, 1, 260, -5120.580078, -742.729858, 462.821594, 100.000000, 0, 0), -- spline 27/35
(7937, 1, 261, -5122.580078, -742.729858, 462.321594, 100.000000, 0, 0), -- spline 28/35
(7937, 1, 262, -5124.580078, -742.729858, 462.071594, 100.000000, 0, 0), -- spline 29/35
(7937, 1, 263, -5125.580078, -742.729858, 461.821594, 100.000000, 0, 0), -- spline 30/35
(7937, 1, 264, -5127.580078, -742.479858, 461.321594, 100.000000, 0, 0), -- spline 31/35
(7937, 1, 265, -5129.580078, -742.479858, 460.821594, 100.000000, 0, 0), -- spline 32/35
(7937, 1, 266, -5131.580078, -742.479858, 460.321594, 100.000000, 0, 0), -- spline 33/35
(7937, 1, 267, -5132.580078, -742.479858, 459.821594, 100.000000, 0, 0), -- spline 34/35
(7937, 1, 268, -5133.947266, -742.492188, 459.278473, 100.000000, 0, 0), -- spline 35/35
(7937, 1, 269, -5125.024414, -742.310547, 461.958832, 100.000000, 0, 0), -- spline 0/33
(7937, 1, 270, -5126.024414, -742.310547, 461.458832, 100.000000, 0, 0), -- spline 1/33
(7937, 1, 271, -5128.024414, -742.310547, 460.958832, 100.000000, 0, 0), -- spline 2/33
(7937, 1, 272, -5130.024414, -742.310547, 460.458832, 100.000000, 0, 0), -- spline 3/33
(7937, 1, 273, -5132.024414, -742.310547, 459.958832, 100.000000, 0, 0), -- spline 4/33
(7937, 1, 274, -5133.024414, -742.310547, 459.708832, 100.000000, 0, 0), -- spline 5/33
(7937, 1, 275, -5134.024414, -742.310547, 459.458832, 100.000000, 0, 0), -- spline 6/33
(7937, 1, 276, -5136.024414, -741.810547, 458.958832, 100.000000, 0, 0), -- spline 7/33
(7937, 1, 277, -5136.774414, -741.560547, 458.458832, 100.000000, 0, 0), -- spline 8/33
(7937, 1, 278, -5138.774414, -741.310547, 457.958832, 100.000000, 0, 0), -- spline 9/33
(7937, 1, 279, -5140.774414, -740.810547, 457.458832, 100.000000, 0, 0), -- spline 10/33
(7937, 1, 280, -5142.774414, -740.560547, 456.958832, 100.000000, 0, 0), -- spline 11/33
(7937, 1, 281, -5143.774414, -740.310547, 456.708832, 100.000000, 0, 0), -- spline 12/33
(7937, 1, 282, -5145.774414, -740.060547, 456.458832, 100.000000, 0, 0), -- spline 13/33
(7937, 1, 283, -5146.774414, -739.810547, 456.208832, 100.000000, 0, 0), -- spline 14/33
(7937, 1, 284, -5148.774414, -739.310547, 455.708832, 100.000000, 0, 0), -- spline 15/33
(7937, 1, 285, -5150.274414, -739.060547, 455.208832, 100.000000, 0, 0), -- spline 16/33
(7937, 1, 286, -5151.274414, -738.810547, 455.208832, 100.000000, 0, 0), -- spline 17/33
(7937, 1, 287, -5152.274414, -738.560547, 454.708832, 100.000000, 0, 0), -- spline 18/33
(7937, 1, 288, -5154.274414, -738.560547, 454.208832, 100.000000, 0, 0), -- spline 19/33
(7937, 1, 289, -5156.274414, -738.060547, 453.708832, 100.000000, 0, 0), -- spline 20/33
(7937, 1, 290, -5158.274414, -737.810547, 453.208832, 100.000000, 0, 0), -- spline 21/33
(7937, 1, 291, -5159.274414, -737.560547, 452.958832, 100.000000, 0, 0), -- spline 22/33
(7937, 1, 292, -5160.274414, -737.310547, 452.708832, 100.000000, 0, 0), -- spline 23/33
(7937, 1, 293, -5162.274414, -737.060547, 452.458832, 100.000000, 0, 0), -- spline 24/33
(7937, 1, 294, -5164.274414, -736.560547, 451.958832, 100.000000, 0, 0), -- spline 25/33
(7937, 1, 295, -5166.024414, -736.310547, 451.458832, 100.000000, 0, 0), -- spline 26/33
(7937, 1, 296, -5167.024414, -736.060547, 451.208832, 100.000000, 0, 0), -- spline 27/33
(7937, 1, 297, -5169.024414, -735.560547, 450.708832, 100.000000, 0, 0), -- spline 28/33
(7937, 1, 298, -5171.024414, -735.310547, 450.208832, 100.000000, 0, 0), -- spline 29/33
(7937, 1, 299, -5172.024414, -735.060547, 449.958832, 100.000000, 0, 0), -- spline 30/33
(7937, 1, 300, -5173.024414, -734.810547, 449.458832, 100.000000, 0, 0), -- spline 31/33
(7937, 1, 301, -5175.024414, -734.560547, 448.958832, 100.000000, 0, 0), -- spline 32/33
(7937, 1, 302, -5175.900879, -734.439087, 448.475128, 100.000000, 0, 0), -- spline 33/33
(7937, 1, 303, -5166.462891, -735.965942, 451.256866, 100.000000, 0, 0), -- spline 0/28
(7937, 1, 304, -5167.462891, -735.715942, 450.756866, 100.000000, 0, 0), -- spline 1/28
(7937, 1, 305, -5169.212891, -735.465942, 450.256866, 100.000000, 0, 0), -- spline 2/28
(7937, 1, 306, -5171.212891, -734.965942, 449.756866, 100.000000, 0, 0), -- spline 3/28
(7937, 1, 307, -5172.212891, -734.965942, 449.506866, 100.000000, 0, 0), -- spline 4/28
(7937, 1, 308, -5173.212891, -734.715942, 449.256866, 100.000000, 0, 0), -- spline 5/28
(7937, 1, 309, -5175.212891, -734.215942, 448.756866, 100.000000, 0, 0), -- spline 6/28
(7937, 1, 310, -5175.962891, -734.215942, 448.756866, 100.000000, 0, 0), -- spline 7/28
(7937, 1, 311, -5177.212891, -732.715942, 448.256866, 100.000000, 0, 0), -- spline 8/28
(7937, 1, 312, -5178.712891, -731.215942, 448.006866, 100.000000, 0, 0), -- spline 9/28
(7937, 1, 313, -5179.962891, -729.715942, 447.756866, 100.000000, 0, 0), -- spline 10/28
(7937, 1, 314, -5181.462891, -728.465942, 447.506866, 100.000000, 0, 0), -- spline 11/28
(7937, 1, 315, -5182.462891, -726.965942, 447.256866, 100.000000, 0, 0), -- spline 12/28
(7937, 1, 316, -5183.212891, -726.215942, 446.756866, 100.000000, 0, 0), -- spline 13/28
(7937, 1, 317, -5184.462891, -724.715942, 446.256866, 100.000000, 0, 0), -- spline 14/28
(7937, 1, 318, -5185.962891, -723.215942, 446.006866, 100.000000, 0, 0), -- spline 15/28
(7937, 1, 319, -5186.712891, -722.715942, 445.756866, 100.000000, 0, 0), -- spline 16/28
(7937, 1, 320, -5187.962891, -721.215942, 445.256866, 100.000000, 0, 0), -- spline 17/28
(7937, 1, 321, -5189.462891, -719.965942, 444.756866, 100.000000, 0, 0), -- spline 18/28
(7937, 1, 322, -5190.712891, -718.465942, 444.256866, 100.000000, 0, 0), -- spline 19/28
(7937, 1, 323, -5191.462891, -717.715942, 444.006866, 100.000000, 0, 0), -- spline 20/28
(7937, 1, 324, -5192.712891, -716.215942, 443.756866, 100.000000, 0, 0), -- spline 21/28
(7937, 1, 325, -5193.462891, -715.465942, 443.506866, 100.000000, 0, 0), -- spline 22/28
(7937, 1, 326, -5194.962891, -713.965942, 443.006866, 100.000000, 0, 0), -- spline 23/28
(7937, 1, 327, -5195.462891, -713.215942, 442.756866, 100.000000, 0, 0), -- spline 24/28
(7937, 1, 328, -5196.962891, -711.965942, 442.256866, 100.000000, 0, 0), -- spline 25/28
(7937, 1, 329, -5197.712891, -711.215942, 442.006866, 100.000000, 0, 0), -- spline 26/28
(7937, 1, 330, -5198.212891, -710.465942, 441.506866, 100.000000, 0, 0), -- spline 27/28
(7937, 1, 331, -5199.098633, -709.798157, 440.966095, 100.000000, 0, 0), -- spline 28/28
(7937, 1, 332, -5189.692383, -719.517578, 444.634277, 100.000000, 0, 0), -- spline 0/37
(7937, 1, 333, -5190.942383, -718.267578, 444.134277, 100.000000, 0, 0), -- spline 1/37
(7937, 1, 334, -5191.692383, -717.517578, 443.884277, 100.000000, 0, 0), -- spline 2/37
(7937, 1, 335, -5192.942383, -716.017578, 443.384277, 100.000000, 0, 0), -- spline 3/37
(7937, 1, 336, -5193.692383, -715.267578, 443.134277, 100.000000, 0, 0), -- spline 4/37
(7937, 1, 337, -5195.192383, -713.767578, 442.634277, 100.000000, 0, 0), -- spline 5/37
(7937, 1, 338, -5195.692383, -713.017578, 442.384277, 100.000000, 0, 0), -- spline 6/37
(7937, 1, 339, -5197.192383, -711.517578, 441.884277, 100.000000, 0, 0), -- spline 7/37
(7937, 1, 340, -5197.942383, -710.767578, 441.634277, 100.000000, 0, 0), -- spline 8/37
(7937, 1, 341, -5198.442383, -710.267578, 441.384277, 100.000000, 0, 0), -- spline 9/37
(7937, 1, 342, -5199.192383, -709.517578, 441.134277, 100.000000, 0, 0), -- spline 10/37
(7937, 1, 343, -5199.442383, -708.517578, 440.884277, 100.000000, 0, 0), -- spline 11/37
(7937, 1, 344, -5199.942383, -707.767578, 440.634277, 100.000000, 0, 0), -- spline 12/37
(7937, 1, 345, -5200.192383, -706.767578, 440.384277, 100.000000, 0, 0), -- spline 13/37
(7937, 1, 346, -5200.692383, -705.767578, 440.134277, 100.000000, 0, 0), -- spline 14/37
(7937, 1, 347, -5201.442383, -704.017578, 439.634277, 100.000000, 0, 0), -- spline 15/37
(7937, 1, 348, -5202.192383, -702.267578, 439.134277, 100.000000, 0, 0), -- spline 16/37
(7937, 1, 349, -5202.442383, -701.267578, 438.884277, 100.000000, 0, 0), -- spline 17/37
(7937, 1, 350, -5203.192383, -699.517578, 438.384277, 100.000000, 0, 0), -- spline 18/37
(7937, 1, 351, -5203.692383, -698.517578, 438.134277, 100.000000, 0, 0), -- spline 19/37
(7937, 1, 352, -5203.942383, -697.517578, 437.884277, 100.000000, 0, 0), -- spline 20/37
(7937, 1, 353, -5205.192383, -695.017578, 437.634277, 100.000000, 0, 0), -- spline 21/37
(7937, 1, 354, -5205.942383, -693.267578, 437.134277, 100.000000, 0, 0), -- spline 22/37
(7937, 1, 355, -5206.692383, -691.517578, 436.634277, 100.000000, 0, 0), -- spline 23/37
(7937, 1, 356, -5207.192383, -690.517578, 436.384277, 100.000000, 0, 0), -- spline 24/37
(7937, 1, 357, -5208.442383, -687.767578, 435.884277, 100.000000, 0, 0), -- spline 25/37
(7937, 1, 358, -5208.692383, -686.767578, 435.634277, 100.000000, 0, 0), -- spline 26/37
(7937, 1, 359, -5209.442383, -685.017578, 435.134277, 100.000000, 0, 0), -- spline 27/37
(7937, 1, 360, -5210.192383, -683.267578, 434.634277, 100.000000, 0, 0), -- spline 28/37
(7937, 1, 361, -5210.692383, -682.267578, 434.384277, 100.000000, 0, 0), -- spline 29/37
(7937, 1, 362, -5211.442383, -680.517578, 434.134277, 100.000000, 0, 0), -- spline 30/37
(7937, 1, 363, -5211.942383, -679.517578, 433.884277, 100.000000, 0, 0), -- spline 31/37
(7937, 1, 364, -5212.192383, -678.517578, 433.634277, 100.000000, 0, 0), -- spline 32/37
(7937, 1, 365, -5212.942383, -676.767578, 433.134277, 100.000000, 0, 0), -- spline 33/37
(7937, 1, 366, -5213.942383, -675.017578, 432.634277, 100.000000, 0, 0), -- spline 34/37
(7937, 1, 367, -5214.692383, -673.017578, 432.134277, 100.000000, 0, 0), -- spline 35/37
(7937, 1, 368, -5215.442383, -671.267578, 431.634277, 100.000000, 0, 0), -- spline 36/37
(7937, 1, 369, -5216.064453, -670.326172, 431.081635, 100.000000, 0, 0), -- spline 37/37
(7937, 1, 370, -5213.272949, -676.541626, 432.984192, 100.000000, 0, 0), -- spline 0/35
(7937, 1, 371, -5214.022949, -674.541626, 432.484192, 100.000000, 0, 0), -- spline 1/35
(7937, 1, 372, -5214.772949, -672.791626, 431.984192, 100.000000, 0, 0), -- spline 2/35
(7937, 1, 373, -5215.772949, -671.041626, 431.484192, 100.000000, 0, 0), -- spline 3/35
(7937, 1, 374, -5216.022949, -670.041626, 431.234192, 100.000000, 0, 0), -- spline 4/35
(7937, 1, 375, -5216.772949, -668.291626, 430.984192, 100.000000, 0, 0), -- spline 5/35
(7937, 1, 376, -5217.022949, -667.291626, 430.484192, 100.000000, 0, 0), -- spline 6/35
(7937, 1, 377, -5217.522949, -665.291626, 429.984192, 100.000000, 0, 0), -- spline 7/35
(7937, 1, 378, -5218.272949, -663.291626, 429.734192, 100.000000, 0, 0), -- spline 8/35
(7937, 1, 379, -5218.522949, -662.541626, 429.484192, 100.000000, 0, 0), -- spline 9/35
(7937, 1, 380, -5218.772949, -661.541626, 428.984192, 100.000000, 0, 0), -- spline 10/35
(7937, 1, 381, -5219.272949, -659.541626, 428.734192, 100.000000, 0, 0), -- spline 11/35
(7937, 1, 382, -5219.772949, -658.541626, 428.484192, 100.000000, 0, 0), -- spline 12/35
(7937, 1, 383, -5220.022949, -657.791626, 427.984192, 100.000000, 0, 0), -- spline 13/35
(7937, 1, 384, -5220.272949, -656.791626, 427.734192, 100.000000, 0, 0), -- spline 14/35
(7937, 1, 385, -5220.772949, -654.791626, 427.234192, 100.000000, 0, 0), -- spline 15/35
(7937, 1, 386, -5221.022949, -653.791626, 426.984192, 100.000000, 0, 0), -- spline 16/35
(7937, 1, 387, -5221.522949, -652.291626, 426.734192, 100.000000, 0, 0), -- spline 17/35
(7937, 1, 388, -5221.772949, -651.291626, 426.734192, 100.000000, 0, 0), -- spline 18/35
(7937, 1, 389, -5222.272949, -649.291626, 426.234192, 100.000000, 0, 0), -- spline 19/35
(7937, 1, 390, -5222.772949, -648.291626, 425.984192, 100.000000, 0, 0), -- spline 20/35
(7937, 1, 391, -5223.022949, -647.541626, 425.734192, 100.000000, 0, 0), -- spline 21/35
(7937, 1, 392, -5223.522949, -645.541626, 425.484192, 100.000000, 0, 0), -- spline 22/35
(7937, 1, 393, -5223.772949, -644.541626, 424.984192, 100.000000, 0, 0), -- spline 23/35
(7937, 1, 394, -5224.522949, -642.791626, 424.484192, 100.000000, 0, 0), -- spline 24/35
(7937, 1, 395, -5225.022949, -640.791626, 424.234192, 100.000000, 0, 0), -- spline 25/35
(7937, 1, 396, -5225.772949, -638.791626, 423.734192, 100.000000, 0, 0), -- spline 26/35
(7937, 1, 397, -5226.022949, -638.041626, 423.484192, 100.000000, 0, 0), -- spline 27/35
(7937, 1, 398, -5226.522949, -636.041626, 422.984192, 100.000000, 0, 0), -- spline 28/35
(7937, 1, 399, -5226.772949, -635.041626, 422.734192, 100.000000, 0, 0), -- spline 29/35
(7937, 1, 400, -5227.522949, -633.041626, 422.234192, 100.000000, 0, 0), -- spline 30/35
(7937, 1, 401, -5227.772949, -632.291626, 421.984192, 100.000000, 0, 0), -- spline 31/35
(7937, 1, 402, -5228.022949, -631.291626, 421.734192, 100.000000, 0, 0), -- spline 32/35
(7937, 1, 403, -5229.022949, -628.291626, 421.234192, 100.000000, 0, 0), -- spline 33/35
(7937, 1, 404, -5229.272949, -627.541626, 420.984192, 100.000000, 0, 0), -- spline 34/35
(7937, 1, 405, -5229.887207, -626.333313, 420.353821, 100.000000, 0, 0), -- spline 35/35
(7937, 1, 406, -5227.621094, -633.005737, 421.967194, 100.000000, 0, 0), -- spline 0/33
(7937, 1, 407, -5228.121094, -632.005737, 421.717194, 100.000000, 0, 0), -- spline 1/33
(7937, 1, 408, -5228.371094, -631.005737, 421.467194, 100.000000, 0, 0), -- spline 2/33
(7937, 1, 409, -5229.121094, -628.255737, 420.967194, 100.000000, 0, 0), -- spline 3/33
(7937, 1, 410, -5229.621094, -627.255737, 420.717194, 100.000000, 0, 0), -- spline 4/33
(7937, 1, 411, -5229.871094, -626.005737, 420.467194, 100.000000, 0, 0), -- spline 5/33
(7937, 1, 412, -5230.121094, -625.005737, 420.217194, 100.000000, 0, 0), -- spline 6/33
(7937, 1, 413, -5230.621094, -623.255737, 419.717194, 100.000000, 0, 0), -- spline 7/33
(7937, 1, 414, -5231.121094, -621.255737, 419.467194, 100.000000, 0, 0), -- spline 8/33
(7937, 1, 415, -5231.371094, -620.255737, 418.967194, 100.000000, 0, 0), -- spline 9/33
(7937, 1, 416, -5231.621094, -619.255737, 418.717194, 100.000000, 0, 0), -- spline 10/33
(7937, 1, 417, -5232.121094, -617.505737, 418.467194, 100.000000, 0, 0), -- spline 11/33
(7937, 1, 418, -5232.371094, -616.505737, 418.217194, 100.000000, 0, 0), -- spline 12/33
(7937, 1, 419, -5233.121094, -614.505737, 417.967194, 100.000000, 0, 0), -- spline 13/33
(7937, 1, 420, -5233.621094, -612.505737, 417.467194, 100.000000, 0, 0), -- spline 14/33
(7937, 1, 421, -5233.871094, -611.505737, 417.217194, 100.000000, 0, 0), -- spline 15/33
(7937, 1, 422, -5234.121094, -610.005737, 416.967194, 100.000000, 0, 0), -- spline 16/33
(7937, 1, 423, -5234.371094, -609.005737, 416.467194, 100.000000, 0, 0), -- spline 17/33
(7937, 1, 424, -5234.871094, -607.005737, 416.217194, 100.000000, 0, 0), -- spline 18/33
(7937, 1, 425, -5235.121094, -606.005737, 415.967194, 100.000000, 0, 0), -- spline 19/33
(7937, 1, 426, -5235.371094, -605.005737, 415.717194, 100.000000, 0, 0), -- spline 20/33
(7937, 1, 427, -5235.621094, -604.255737, 415.467194, 100.000000, 0, 0), -- spline 21/33
(7937, 1, 428, -5236.121094, -602.255737, 415.217194, 100.000000, 0, 0), -- spline 22/33
(7937, 1, 429, -5236.371094, -601.255737, 414.717194, 100.000000, 0, 0), -- spline 23/33
(7937, 1, 430, -5236.621094, -600.255737, 414.467194, 100.000000, 0, 0), -- spline 24/33
(7937, 1, 431, -5236.871094, -599.255737, 414.217194, 100.000000, 0, 0), -- spline 25/33
(7937, 1, 432, -5237.371094, -597.505737, 413.717194, 100.000000, 0, 0), -- spline 26/33
(7937, 1, 433, -5237.621094, -596.505737, 413.467194, 100.000000, 0, 0), -- spline 27/33
(7937, 1, 434, -5238.121094, -594.505737, 413.217194, 100.000000, 0, 0), -- spline 28/33
(7937, 1, 435, -5238.371094, -593.505737, 412.967194, 100.000000, 0, 0), -- spline 29/33
(7937, 1, 436, -5238.871094, -591.505737, 412.717194, 100.000000, 0, 0), -- spline 30/33
(7937, 1, 437, -5239.621094, -589.755737, 412.217194, 100.000000, 0, 0), -- spline 31/33
(7937, 1, 438, -5240.371094, -586.755737, 411.217194, 100.000000, 0, 0), -- spline 32/33
(7937, 1, 439, -5240.579102, -586.586731, 410.658478, 100.000000, 0, 0), -- spline 33/33
(7937, 1, 440, -5238.674805, -593.354553, 412.868225, 100.000000, 0, 0), -- spline 0/27
(7937, 1, 441, -5239.174805, -591.354553, 412.368225, 100.000000, 0, 0), -- spline 1/27
(7937, 1, 442, -5239.674805, -589.354553, 412.118225, 100.000000, 0, 0), -- spline 2/27
(7937, 1, 443, -5240.424805, -586.604553, 410.868225, 100.000000, 0, 0), -- spline 3/27
(7937, 1, 444, -5240.674805, -586.354553, 410.868225, 100.000000, 0, 0), -- spline 4/27
(7937, 1, 445, -5240.674805, -585.354553, 410.618225, 100.000000, 0, 0), -- spline 5/27
(7937, 1, 446, -5240.924805, -583.354553, 409.868225, 100.000000, 0, 0), -- spline 6/27
(7937, 1, 447, -5240.924805, -582.354553, 409.368225, 100.000000, 0, 0), -- spline 7/27
(7937, 1, 448, -5241.174805, -579.354553, 408.118225, 100.000000, 0, 0), -- spline 8/27
(7937, 1, 449, -5241.424805, -576.354553, 407.118225, 100.000000, 0, 0), -- spline 9/27
(7937, 1, 450, -5241.424805, -573.354553, 405.868225, 100.000000, 0, 0), -- spline 10/27
(7937, 1, 451, -5241.674805, -570.354553, 404.868225, 100.000000, 0, 0), -- spline 11/27
(7937, 1, 452, -5241.924805, -567.354553, 403.618225, 100.000000, 0, 0), -- spline 12/27
(7937, 1, 453, -5241.924805, -566.604553, 403.368225, 100.000000, 0, 0), -- spline 13/27
(7937, 1, 454, -5242.174805, -564.604553, 403.368225, 100.000000, 0, 0), -- spline 14/27
(7937, 1, 455, -5242.424805, -561.604553, 402.118225, 100.000000, 0, 0), -- spline 15/27
(7937, 1, 456, -5242.424805, -560.604553, 401.618225, 100.000000, 0, 0), -- spline 16/27
(7937, 1, 457, -5242.674805, -558.604553, 400.868225, 100.000000, 0, 0), -- spline 17/27
(7937, 1, 458, -5242.674805, -557.604553, 400.618225, 100.000000, 0, 0), -- spline 18/27
(7937, 1, 459, -5242.924805, -555.604553, 399.868225, 100.000000, 0, 0), -- spline 19/27
(7937, 1, 460, -5242.924805, -554.604553, 399.368225, 100.000000, 0, 0), -- spline 20/27
(7937, 1, 461, -5243.174805, -551.604553, 398.368225, 100.000000, 0, 0), -- spline 21/27
(7937, 1, 462, -5243.424805, -548.854553, 397.118225, 100.000000, 0, 0), -- spline 22/27
(7937, 1, 463, -5243.674805, -545.854553, 396.118225, 100.000000, 0, 0), -- spline 23/27
(7937, 1, 464, -5243.674805, -544.854553, 395.618225, 100.000000, 0, 0), -- spline 24/27
(7937, 1, 465, -5243.924805, -542.854553, 395.368225, 100.000000, 0, 0), -- spline 25/27
(7937, 1, 466, -5244.174805, -540.854553, 394.618225, 100.000000, 0, 0), -- spline 26/27
(7937, 1, 467, -5244.361816, -540.320618, 393.839020, 100.000000, 0, 0), -- spline 27/27
(7937, 1, 468, -5242.658691, -560.409302, 401.304443, 100.000000, 0, 0), -- spline 0/27
(7937, 1, 469, -5242.908691, -558.409302, 400.554443, 100.000000, 0, 0), -- spline 1/27
(7937, 1, 470, -5242.908691, -557.409302, 400.304443, 100.000000, 0, 0), -- spline 2/27
(7937, 1, 471, -5243.158691, -555.409302, 399.554443, 100.000000, 0, 0), -- spline 3/27
(7937, 1, 472, -5243.158691, -554.409302, 399.054443, 100.000000, 0, 0), -- spline 4/27
(7937, 1, 473, -5243.408691, -551.409302, 398.054443, 100.000000, 0, 0), -- spline 5/27
(7937, 1, 474, -5243.658691, -548.409302, 396.804443, 100.000000, 0, 0), -- spline 6/27
(7937, 1, 475, -5243.908691, -545.409302, 395.804443, 100.000000, 0, 0), -- spline 7/27
(7937, 1, 476, -5243.908691, -544.409302, 395.304443, 100.000000, 0, 0), -- spline 8/27
(7937, 1, 477, -5244.158691, -542.409302, 395.054443, 100.000000, 0, 0), -- spline 9/27
(7937, 1, 478, -5244.408691, -540.409302, 394.304443, 100.000000, 0, 0), -- spline 10/27
(7937, 1, 479, -5244.408691, -540.159302, 394.054443, 100.000000, 0, 0), -- spline 11/27
(7937, 1, 480, -5245.158691, -537.159302, 393.054443, 100.000000, 0, 0), -- spline 12/27
(7937, 1, 481, -5245.158691, -536.159302, 392.554443, 100.000000, 0, 0), -- spline 13/27
(7937, 1, 482, -5245.658691, -534.159302, 392.304443, 100.000000, 0, 0), -- spline 14/27
(7937, 1, 483, -5246.158691, -532.409302, 391.554443, 100.000000, 0, 0), -- spline 15/27
(7937, 1, 484, -5246.408691, -531.409302, 391.054443, 100.000000, 0, 0), -- spline 16/27
(7937, 1, 485, -5246.658691, -530.409302, 390.554443, 100.000000, 0, 0), -- spline 17/27
(7937, 1, 486, -5246.908691, -529.409302, 390.054443, 100.000000, 0, 0), -- spline 18/27
(7937, 1, 487, -5247.658691, -526.659302, 389.054443, 100.000000, 0, 0), -- spline 19/27
(7937, 1, 488, -5247.908691, -525.659302, 388.804443, 100.000000, 0, 0), -- spline 20/27
(7937, 1, 489, -5248.158691, -524.659302, 388.304443, 100.000000, 0, 0), -- spline 21/27
(7937, 1, 490, -5248.408691, -522.909302, 387.804443, 100.000000, 0, 0), -- spline 22/27
(7937, 1, 491, -5248.658691, -521.909302, 387.554443, 100.000000, 0, 0), -- spline 23/27
(7937, 1, 492, -5249.158691, -519.909302, 387.304443, 100.000000, 0, 0), -- spline 24/27
(7937, 1, 493, -5249.408691, -517.909302, 387.054443, 100.000000, 0, 0), -- spline 25/27
(7937, 1, 494, -5249.908691, -515.909302, 386.804443, 100.000000, 0, 0), -- spline 26/27
(7937, 1, 495, -5255.684570, -492.658844, 386.359406, 100.000000, 0, 0), -- spline 27/27
(7937, 1, 496, -5255.514648, -492.329376, 386.609589, 100.000000, 0, 0), -- spline 0/1
(7937, 1, 497, -5238.793945, -476.716370, 386.359406, 100.000000, 0, 0), -- spline 1/1
(7937, 1, 498, -5238.533691, -476.762573, 386.407928, 100.000000, 0, 0), -- spline 0/1
(7937, 1, 499, -5219.835938, -468.625488, 386.456451, 100.000000, 0, 0), -- spline 1/1
(7937, 1, 500, -5219.636719, -468.719299, 386.759064, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 501, -5217.386719, -472.969299, 387.259064, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 502, -5215.886719, -475.469299, 387.509064, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 503, -5215.386719, -476.469299, 387.759064, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 504, -5214.386719, -478.219299, 388.259064, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 505, -5213.386719, -479.719299, 388.759064, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 506, -5212.386719, -481.469299, 389.009064, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 507, -5211.386719, -482.969299, 389.259064, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 508, -5209.879883, -485.800995, 389.097809, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 509, -5215.037598, -476.324036, 387.908325, 100.000000, 0, 0), -- spline 0/24
(7937, 1, 510, -5214.037598, -478.074036, 388.658325, 100.000000, 0, 0), -- spline 1/24
(7937, 1, 511, -5213.037598, -479.824036, 388.908325, 100.000000, 0, 0), -- spline 2/24
(7937, 1, 512, -5212.037598, -481.574036, 389.408325, 100.000000, 0, 0), -- spline 3/24
(7937, 1, 513, -5211.037598, -483.324036, 389.658325, 100.000000, 0, 0), -- spline 4/24
(7937, 1, 514, -5209.537598, -485.824036, 389.408325, 100.000000, 0, 0), -- spline 5/24
(7937, 1, 515, -5208.787598, -488.824036, 389.158325, 100.000000, 0, 0), -- spline 6/24
(7937, 1, 516, -5207.287598, -494.574036, 388.908325, 100.000000, 0, 0), -- spline 7/24
(7937, 1, 517, -5206.787598, -496.324036, 388.658325, 100.000000, 0, 0), -- spline 8/24
(7937, 1, 518, -5206.787598, -497.324036, 388.408325, 100.000000, 0, 0), -- spline 9/24
(7937, 1, 519, -5204.537598, -505.824036, 388.658325, 100.000000, 0, 0), -- spline 10/24
(7937, 1, 520, -5204.037598, -507.824036, 388.908325, 100.000000, 0, 0), -- spline 11/24
(7937, 1, 521, -5203.537598, -509.824036, 389.158325, 100.000000, 0, 0), -- spline 12/24
(7937, 1, 522, -5203.037598, -511.574036, 389.408325, 100.000000, 0, 0), -- spline 13/24
(7937, 1, 523, -5202.537598, -513.574036, 389.658325, 100.000000, 0, 0), -- spline 14/24
(7937, 1, 524, -5202.037598, -515.574036, 389.908325, 100.000000, 0, 0), -- spline 15/24
(7937, 1, 525, -5201.287598, -518.324036, 390.158325, 100.000000, 0, 0), -- spline 16/24
(7937, 1, 526, -5200.787598, -520.324036, 390.408325, 100.000000, 0, 0), -- spline 17/24
(7937, 1, 527, -5200.287598, -522.324036, 390.658325, 100.000000, 0, 0), -- spline 18/24
(7937, 1, 528, -5200.037598, -523.324036, 390.908325, 100.000000, 0, 0), -- spline 19/24
(7937, 1, 529, -5199.537598, -525.074036, 391.408325, 100.000000, 0, 0), -- spline 20/24
(7937, 1, 530, -5199.037598, -527.074036, 392.158325, 100.000000, 0, 0), -- spline 21/24
(7937, 1, 531, -5198.787598, -528.074036, 392.658325, 100.000000, 0, 0), -- spline 22/24
(7937, 1, 532, -5198.287598, -530.074036, 393.408325, 100.000000, 0, 0), -- spline 23/24
(7937, 1, 533, -5197.693359, -532.207031, 393.625519, 100.000000, 0, 0), -- spline 24/24
(7937, 1, 534, -5200.509766, -520.541687, 390.582489, 100.000000, 0, 0), -- spline 0/16
(7937, 1, 535, -5200.009766, -522.541687, 390.832489, 100.000000, 0, 0), -- spline 1/16
(7937, 1, 536, -5199.759766, -523.541687, 391.082489, 100.000000, 0, 0), -- spline 2/16
(7937, 1, 537, -5199.259766, -525.541687, 391.582489, 100.000000, 0, 0), -- spline 3/16
(7937, 1, 538, -5198.759766, -527.291687, 392.332489, 100.000000, 0, 0), -- spline 4/16
(7937, 1, 539, -5198.509766, -528.291687, 392.832489, 100.000000, 0, 0), -- spline 5/16
(7937, 1, 540, -5198.009766, -530.291687, 393.582489, 100.000000, 0, 0), -- spline 6/16
(7937, 1, 541, -5197.509766, -532.291687, 393.832489, 100.000000, 0, 0), -- spline 7/16
(7937, 1, 542, -5196.759766, -534.041687, 394.582489, 100.000000, 0, 0), -- spline 8/16
(7937, 1, 543, -5196.259766, -535.041687, 395.082489, 100.000000, 0, 0), -- spline 9/16
(7937, 1, 544, -5196.009766, -536.041687, 395.332489, 100.000000, 0, 0), -- spline 10/16
(7937, 1, 545, -5195.259766, -537.791687, 396.082489, 100.000000, 0, 0), -- spline 11/16
(7937, 1, 546, -5194.509766, -539.541687, 396.582489, 100.000000, 0, 0), -- spline 12/16
(7937, 1, 547, -5194.009766, -541.291687, 396.832489, 100.000000, 0, 0), -- spline 13/16
(7937, 1, 548, -5193.259766, -543.041687, 397.082489, 100.000000, 0, 0), -- spline 14/16
(7937, 1, 549, -5192.509766, -545.041687, 397.332489, 100.000000, 0, 0), -- spline 15/16
(7937, 1, 550, -5186.912598, -559.871643, 397.279358, 100.000000, 0, 0), -- spline 16/16
(7937, 1, 551, -5192.323242, -545.176025, 397.571777, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 552, -5186.573242, -559.926025, 397.571777, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 553, -5175.823242, -576.176025, 397.821777, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 554, -5169.823242, -585.426025, 398.071777, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 555, -5167.573242, -588.926025, 398.321777, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 556, -5162.631836, -596.646179, 398.129303, 100.000000, 0, 0), -- spline 5/5
-- 5 SECONDS LATER: Music 11810 starts playing.
(7937, 1, 557, -5167.347656, -589.115417, 398.296997, 100.000000, 0, 0), -- spline 0/4
(7937, 1, 558, -5162.347656, -596.615417, 398.296997, 100.000000, 0, 0), -- spline 1/4
(7937, 1, 559, -5155.597656, -602.115417, 398.546997, 100.000000, 0, 0), -- spline 2/4
(7937, 1, 560, -5151.847656, -605.115417, 398.796997, 100.000000, 0, 0), -- spline 3/4
(7937, 1, 561, -5147.561035, -608.926514, 398.599487, 100.000000, 1000, 793702), -- spline 4/4
(7937, 1, 562, -5139.006836, -615.827515, 397.954712, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 563, -5136.006836, -614.077515, 397.954712, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 564, -5131.006836, -612.577515, 397.954712, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 565, -5127.006836, -615.327515, 397.954712, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 566, -5126.756836, -621.327515, 397.954712, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 567, -5128.006836, -623.327515, 397.704712, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 568, -5133.452637, -619.228516, 397.309937, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 569, -5133.330078, -619.487000, 398.657013, 2.4729888, 208000, 793703), -- no splines in this packet
-- yes there is a gap here
(7937, 1, 573, -5130.895508, -620.933289, 397.752045, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 574, -5127.895508, -623.183289, 397.752045, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 575, -5126.395508, -621.433289, 398.002045, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 576, -5128.895508, -613.683289, 397.752045, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 577, -5133.395508, -610.933289, 398.002045, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 578, -5138.460449, -614.879578, 397.847076, 100.000000, 1000, 793704), -- spline 5/5
(7937, 1, 579, -5140.143555, -613.464355, 398.285767, 100.000000, 0, 0), -- spline 0/4
(7937, 1, 580, -5142.393555, -611.464355, 398.535767, 100.000000, 0, 0), -- spline 1/4
(7937, 1, 581, -5146.393555, -608.464355, 398.785767, 100.000000, 0, 0), -- spline 2/4
(7937, 1, 582, -5153.143555, -603.214355, 398.535767, 100.000000, 0, 0), -- spline 3/4
(7937, 1, 583, -5157.326660, -600.049133, 398.224487, 100.000000, 0, 0), -- spline 4/4
(7937, 1, 584, -5153.292969, -602.896118, 398.612000, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 585, -5157.292969, -599.896118, 398.362000, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 586, -5162.292969, -593.396118, 398.112000, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 587, -5168.042969, -585.646118, 397.862000, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 588, -5170.542969, -582.646118, 397.862000, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 589, -5177.292969, -573.896118, 397.612000, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 590, -5184.867188, -564.525024, 397.279358, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 591, -5177.662109, -573.646240, 397.579590, 100.000000, 0, 0), -- spline 0/14
(7937, 1, 592, -5184.662109, -564.396240, 397.329590, 100.000000, 0, 0), -- spline 1/14
(7937, 1, 593, -5191.662109, -543.646240, 397.079590, 100.000000, 0, 0), -- spline 2/14
(7937, 1, 594, -5192.412109, -540.896240, 396.829590, 100.000000, 0, 0), -- spline 3/14
(7937, 1, 595, -5193.162109, -538.896240, 396.579590, 100.000000, 0, 0), -- spline 4/14
(7937, 1, 596, -5193.412109, -537.896240, 396.329590, 100.000000, 0, 0), -- spline 5/14
(7937, 1, 597, -5193.912109, -536.896240, 395.829590, 100.000000, 0, 0), -- spline 6/14
(7937, 1, 598, -5194.412109, -535.146240, 395.329590, 100.000000, 0, 0), -- spline 7/14
(7937, 1, 599, -5194.662109, -534.146240, 394.829590, 100.000000, 0, 0), -- spline 8/14
(7937, 1, 600, -5195.162109, -533.146240, 394.579590, 100.000000, 0, 0), -- spline 9/14
(7937, 1, 601, -5195.412109, -532.146240, 394.329590, 100.000000, 0, 0), -- spline 10/14
(7937, 1, 602, -5195.662109, -531.396240, 394.079590, 100.000000, 0, 0), -- spline 11/14
(7937, 1, 603, -5196.412109, -529.396240, 393.329590, 100.000000, 0, 0), -- spline 12/14
(7937, 1, 604, -5196.912109, -527.396240, 392.329590, 100.000000, 0, 0), -- spline 13/14
(7937, 1, 605, -5197.948242, -525.364929, 391.128693, 100.000000, 0, 0), -- spline 14/14
(7937, 1, 606, -5193.306641, -538.725342, 396.579224, 100.000000, 0, 0), -- spline 0/27
(7937, 1, 607, -5193.806641, -537.725342, 396.329224, 100.000000, 0, 0), -- spline 1/27
(7937, 1, 608, -5194.056641, -536.725342, 395.829224, 100.000000, 0, 0), -- spline 2/27
(7937, 1, 609, -5194.556641, -534.725342, 395.329224, 100.000000, 0, 0), -- spline 3/27
(7937, 1, 610, -5195.056641, -533.975342, 394.829224, 100.000000, 0, 0), -- spline 4/27
(7937, 1, 611, -5195.306641, -532.975342, 394.579224, 100.000000, 0, 0), -- spline 5/27
(7937, 1, 612, -5195.556641, -531.975342, 394.079224, 100.000000, 0, 0), -- spline 6/27
(7937, 1, 613, -5196.056641, -530.975342, 393.829224, 100.000000, 0, 0), -- spline 7/27
(7937, 1, 614, -5196.556641, -529.225342, 393.079224, 100.000000, 0, 0), -- spline 8/27
(7937, 1, 615, -5197.306641, -527.225342, 392.329224, 100.000000, 0, 0), -- spline 9/27
(7937, 1, 616, -5198.056641, -525.225342, 391.579224, 100.000000, 0, 0), -- spline 10/27
(7937, 1, 617, -5198.556641, -523.225342, 391.079224, 100.000000, 0, 0), -- spline 11/27
(7937, 1, 618, -5199.306641, -521.225342, 390.579224, 100.000000, 0, 0), -- spline 12/27
(7937, 1, 619, -5199.806641, -519.475342, 390.329224, 100.000000, 0, 0), -- spline 13/27
(7937, 1, 620, -5200.806641, -516.475342, 390.079224, 100.000000, 0, 0), -- spline 14/27
(7937, 1, 621, -5201.306641, -514.725342, 389.829224, 100.000000, 0, 0), -- spline 15/27
(7937, 1, 622, -5202.056641, -512.725342, 389.579224, 100.000000, 0, 0), -- spline 16/27
(7937, 1, 623, -5202.806641, -510.975342, 389.329224, 100.000000, 0, 0), -- spline 17/27
(7937, 1, 624, -5203.056641, -509.225342, 389.079224, 100.000000, 0, 0), -- spline 18/27
(7937, 1, 625, -5204.056641, -506.475342, 388.829224, 100.000000, 0, 0), -- spline 19/27
(7937, 1, 626, -5204.556641, -504.475342, 388.579224, 100.000000, 0, 0), -- spline 20/27
(7937, 1, 627, -5205.556641, -501.725342, 388.329224, 100.000000, 0, 0), -- spline 21/27
(7937, 1, 628, -5207.306641, -496.975342, 388.579224, 100.000000, 0, 0), -- spline 22/27
(7937, 1, 629, -5207.806641, -494.975342, 388.829224, 100.000000, 0, 0), -- spline 23/27
(7937, 1, 630, -5208.806641, -492.225342, 389.079224, 100.000000, 0, 0), -- spline 24/27
(7937, 1, 631, -5210.306641, -487.475342, 389.329224, 100.000000, 0, 0), -- spline 25/27
(7937, 1, 632, -5212.556641, -480.725342, 389.079224, 100.000000, 0, 0), -- spline 26/27
(7937, 1, 633, -5213.334473, -479.160919, 388.504791, 100.000000, 0, 0), -- spline 27/27
(7937, 1, 634, -5207.439453, -496.888672, 388.206451, 100.000000, 0, 0), -- spline 0/11
(7937, 1, 635, -5208.072266, -494.990234, 388.456451, 100.000000, 0, 0), -- spline 1/11
(7937, 1, 636, -5209.021484, -492.142578, 388.706451, 100.000000, 0, 0), -- spline 2/11
(7937, 1, 637, -5210.603516, -487.396484, 388.956451, 100.000000, 0, 0), -- spline 3/11
(7937, 1, 638, -5212.818359, -480.751953, 388.706451, 100.000000, 0, 0), -- spline 4/11
(7937, 1, 639, -5213.334473, -479.160919, 388.504791, 100.000000, 0, 0), -- spline 5/11
(7937, 1, 640, -5213.333984, -479.160156, 388.331451, 100.000000, 0, 0), -- spline 6/11
(7937, 1, 641, -5214.591797, -477.605469, 387.706451, 100.000000, 0, 0), -- spline 7/11
(7937, 1, 642, -5215.849609, -476.050781, 387.331451, 100.000000, 0, 0), -- spline 8/11
(7937, 1, 643, -5217.107422, -474.496094, 386.831451, 100.000000, 0, 0), -- spline 9/11
(7937, 1, 644, -5217.736328, -473.718750, 386.581451, 100.000000, 0, 0), -- spline 10/11
(7937, 1, 645, -5222.962891, -467.265259, 386.456451, 100.000000, 0, 0), -- spline 11/11
(7937, 1, 646, -5212.890137, -480.798615, 388.771576, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 647, -5213.390137, -479.048615, 388.771576, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 648, -5213.390137, -479.048615, 388.521576, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 649, -5214.640137, -477.548615, 387.771576, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 650, -5215.890137, -476.048615, 387.521576, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 651, -5217.140137, -474.548615, 387.271576, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 652, -5217.640137, -473.798615, 387.021576, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 653, -5222.890137, -467.298615, 386.771576, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 654, -5255.018066, -491.177399, 386.273956, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 655, -5254.750977, -491.238037, 386.671509, 100.000000, 0, 0), -- spline 0/14
(7937, 1, 656, -5247.000977, -517.988037, 386.921509, 100.000000, 0, 0), -- spline 1/14
(7937, 1, 657, -5246.750977, -518.738037, 387.171509, 100.000000, 0, 0), -- spline 2/14
(7937, 1, 658, -5246.250977, -520.738037, 387.671509, 100.000000, 0, 0), -- spline 3/14
(7937, 1, 659, -5246.000977, -521.738037, 387.921509, 100.000000, 0, 0), -- spline 4/14
(7937, 1, 660, -5245.750977, -522.738037, 388.171509, 100.000000, 0, 0), -- spline 5/14
(7937, 1, 661, -5245.250977, -524.738037, 388.421509, 100.000000, 0, 0), -- spline 6/14
(7937, 1, 662, -5244.500977, -527.488037, 389.671509, 100.000000, 0, 0), -- spline 7/14
(7937, 1, 663, -5244.000977, -528.488037, 389.671509, 100.000000, 0, 0), -- spline 8/14
(7937, 1, 664, -5243.750977, -529.488037, 389.921509, 100.000000, 0, 0), -- spline 9/14
(7937, 1, 665, -5243.500977, -530.488037, 390.421509, 100.000000, 0, 0), -- spline 10/14
(7937, 1, 666, -5243.000977, -533.238037, 391.671509, 100.000000, 0, 0), -- spline 11/14
(7937, 1, 667, -5242.500977, -535.238037, 392.421509, 100.000000, 0, 0), -- spline 12/14
(7937, 1, 668, -5242.000977, -537.238037, 392.921509, 100.000000, 0, 0), -- spline 13/14
(7937, 1, 669, -5241.619141, -538.359375, 393.011383, 100.000000, 0, 0), -- spline 14/14
(7937, 1, 670, -5245.200684, -524.854736, 388.448975, 100.000000, 0, 0), -- spline 0/26
(7937, 1, 671, -5244.450684, -527.854736, 389.698975, 100.000000, 0, 0), -- spline 1/26
(7937, 1, 672, -5244.200684, -528.854736, 389.948975, 100.000000, 0, 0), -- spline 2/26
(7937, 1, 673, -5243.950684, -529.604736, 390.198975, 100.000000, 0, 0), -- spline 3/26
(7937, 1, 674, -5243.450684, -530.604736, 390.698975, 100.000000, 0, 0), -- spline 4/26
(7937, 1, 675, -5242.950684, -533.604736, 391.948975, 100.000000, 0, 0), -- spline 5/26
(7937, 1, 676, -5242.450684, -535.354736, 392.698975, 100.000000, 0, 0), -- spline 6/26
(7937, 1, 677, -5241.950684, -537.354736, 392.948975, 100.000000, 0, 0), -- spline 7/26
(7937, 1, 678, -5241.700684, -538.354736, 393.448975, 100.000000, 0, 0), -- spline 8/26
(7937, 1, 679, -5241.700684, -541.354736, 394.448975, 100.000000, 0, 0), -- spline 9/26
(7937, 1, 680, -5241.450684, -544.354736, 395.698975, 100.000000, 0, 0), -- spline 10/26
(7937, 1, 681, -5241.450684, -547.354736, 396.698975, 100.000000, 0, 0), -- spline 11/26
(7937, 1, 682, -5241.450684, -550.354736, 397.948975, 100.000000, 0, 0), -- spline 12/26
(7937, 1, 683, -5241.450684, -553.104736, 398.698975, 100.000000, 0, 0), -- spline 13/26
(7937, 1, 684, -5241.450684, -556.104736, 399.948975, 100.000000, 0, 0), -- spline 14/26
(7937, 1, 685, -5241.450684, -558.104736, 400.698975, 100.000000, 0, 0), -- spline 15/26
(7937, 1, 686, -5241.200684, -560.104736, 400.948975, 100.000000, 0, 0), -- spline 16/26
(7937, 1, 687, -5241.200684, -561.104736, 401.448975, 100.000000, 0, 0), -- spline 17/26
(7937, 1, 688, -5241.200684, -564.104736, 402.698975, 100.000000, 0, 0), -- spline 18/26
(7937, 1, 689, -5241.200684, -566.104736, 403.448975, 100.000000, 0, 0), -- spline 19/26
(7937, 1, 690, -5241.200684, -567.104736, 403.698975, 100.000000, 0, 0), -- spline 20/26
(7937, 1, 691, -5241.200684, -570.104736, 404.948975, 100.000000, 0, 0), -- spline 21/26
(7937, 1, 692, -5241.200684, -573.104736, 405.948975, 100.000000, 0, 0), -- spline 22/26
(7937, 1, 693, -5241.200684, -576.104736, 407.198975, 100.000000, 0, 0), -- spline 23/26
(7937, 1, 694, -5240.950684, -579.104736, 408.198975, 100.000000, 0, 0), -- spline 24/26
(7937, 1, 695, -5240.950684, -580.104736, 408.698975, 100.000000, 0, 0), -- spline 25/26
(7937, 1, 696, -5241.001953, -580.922607, 408.494415, 100.000000, 0, 0), -- spline 26/26
(7937, 1, 697, -5240.956055, -567.404907, 404.046631, 100.000000, 0, 0), -- spline 0/33
(7937, 1, 698, -5240.956055, -570.404907, 405.046631, 100.000000, 0, 0), -- spline 1/33
(7937, 1, 699, -5240.956055, -573.404907, 406.296631, 100.000000, 0, 0), -- spline 2/33
(7937, 1, 700, -5240.956055, -576.404907, 407.296631, 100.000000, 0, 0), -- spline 3/33
(7937, 1, 701, -5240.706055, -579.404907, 408.546631, 100.000000, 0, 0), -- spline 4/33
(7937, 1, 702, -5240.706055, -580.404907, 408.796631, 100.000000, 0, 0), -- spline 5/33
(7937, 1, 703, -5240.706055, -580.904907, 408.796631, 100.000000, 0, 0), -- spline 6/33
(7937, 1, 704, -5240.456055, -581.904907, 409.296631, 100.000000, 0, 0), -- spline 7/33
(7937, 1, 705, -5240.456055, -582.904907, 409.546631, 100.000000, 0, 0), -- spline 8/33
(7937, 1, 706, -5240.206055, -583.904907, 410.046631, 100.000000, 0, 0), -- spline 9/33
(7937, 1, 707, -5239.456055, -586.904907, 411.296631, 100.000000, 0, 0), -- spline 10/33
(7937, 1, 708, -5238.956055, -589.654907, 412.046631, 100.000000, 0, 0), -- spline 11/33
(7937, 1, 709, -5238.706055, -590.654907, 412.546631, 100.000000, 0, 0), -- spline 12/33
(7937, 1, 710, -5238.706055, -591.654907, 412.796631, 100.000000, 0, 0), -- spline 13/33
(7937, 1, 711, -5237.956055, -594.654907, 413.046631, 100.000000, 0, 0), -- spline 14/33
(7937, 1, 712, -5237.706055, -596.404907, 413.296631, 100.000000, 0, 0), -- spline 15/33
(7937, 1, 713, -5237.206055, -598.404907, 413.796631, 100.000000, 0, 0), -- spline 16/33
(7937, 1, 714, -5236.956055, -599.404907, 414.046631, 100.000000, 0, 0), -- spline 17/33
(7937, 1, 715, -5236.956055, -600.404907, 414.296631, 100.000000, 0, 0), -- spline 18/33
(7937, 1, 716, -5236.706055, -602.154907, 414.796631, 100.000000, 0, 0), -- spline 19/33
(7937, 1, 717, -5236.456055, -603.154907, 415.046631, 100.000000, 0, 0), -- spline 20/33
(7937, 1, 718, -5236.206055, -604.154907, 415.296631, 100.000000, 0, 0), -- spline 21/33
(7937, 1, 719, -5235.956055, -606.154907, 415.796631, 100.000000, 0, 0), -- spline 22/33
(7937, 1, 720, -5235.706055, -607.154907, 416.296631, 100.000000, 0, 0), -- spline 23/33
(7937, 1, 721, -5235.456055, -608.154907, 416.546631, 100.000000, 0, 0), -- spline 24/33
(7937, 1, 722, -5235.206055, -610.154907, 416.796631, 100.000000, 0, 0), -- spline 25/33
(7937, 1, 723, -5234.956055, -611.154907, 417.046631, 100.000000, 0, 0), -- spline 26/33
(7937, 1, 724, -5234.456055, -612.904907, 417.296631, 100.000000, 0, 0), -- spline 27/33
(7937, 1, 725, -5234.206055, -614.904907, 417.796631, 100.000000, 0, 0), -- spline 28/33
(7937, 1, 726, -5233.706055, -616.904907, 418.296631, 100.000000, 0, 0), -- spline 29/33
(7937, 1, 727, -5233.206055, -618.904907, 418.796631, 100.000000, 0, 0), -- spline 30/33
(7937, 1, 728, -5233.206055, -619.904907, 419.046631, 100.000000, 0, 0), -- spline 31/33
(7937, 1, 729, -5232.706055, -621.904907, 419.296631, 100.000000, 0, 0), -- spline 32/33
(7937, 1, 730, -5232.683105, -622.365479, 419.163147, 100.000000, 0, 0), -- spline 33/33
(7937, 1, 731, -5234.232422, -613.280945, 417.719971, 100.000000, 0, 0), -- spline 0/32
(7937, 1, 732, -5233.732422, -615.280945, 418.219971, 100.000000, 0, 0), -- spline 1/32
(7937, 1, 733, -5233.482422, -617.280945, 418.469971, 100.000000, 0, 0), -- spline 2/32
(7937, 1, 734, -5232.982422, -619.280945, 418.969971, 100.000000, 0, 0), -- spline 3/32
(7937, 1, 735, -5232.982422, -620.030945, 419.219971, 100.000000, 0, 0), -- spline 4/32
(7937, 1, 736, -5232.482422, -622.030945, 419.469971, 100.000000, 0, 0), -- spline 5/32
(7937, 1, 737, -5232.482422, -622.280945, 419.469971, 100.000000, 0, 0), -- spline 6/32
(7937, 1, 738, -5232.232422, -623.280945, 419.719971, 100.000000, 0, 0), -- spline 7/32
(7937, 1, 739, -5231.732422, -624.280945, 420.219971, 100.000000, 0, 0), -- spline 8/32
(7937, 1, 740, -5231.232422, -626.280945, 420.469971, 100.000000, 0, 0), -- spline 9/32
(7937, 1, 741, -5230.732422, -627.030945, 420.719971, 100.000000, 0, 0), -- spline 10/32
(7937, 1, 742, -5230.232422, -629.030945, 420.969971, 100.000000, 0, 0), -- spline 11/32
(7937, 1, 743, -5229.982422, -630.030945, 421.469971, 100.000000, 0, 0), -- spline 12/32
(7937, 1, 744, -5229.232422, -631.780945, 421.719971, 100.000000, 0, 0), -- spline 13/32
(7937, 1, 745, -5228.732422, -633.780945, 422.469971, 100.000000, 0, 0), -- spline 14/32
(7937, 1, 746, -5227.982422, -635.530945, 422.969971, 100.000000, 0, 0), -- spline 15/32
(7937, 1, 747, -5227.732422, -636.530945, 423.219971, 100.000000, 0, 0), -- spline 16/32
(7937, 1, 748, -5226.732422, -639.280945, 423.469971, 100.000000, 0, 0), -- spline 17/32
(7937, 1, 749, -5226.232422, -641.030945, 423.969971, 100.000000, 0, 0), -- spline 18/32
(7937, 1, 750, -5225.982422, -642.030945, 424.219971, 100.000000, 0, 0), -- spline 19/32
(7937, 1, 751, -5225.482422, -644.030945, 424.719971, 100.000000, 0, 0), -- spline 20/32
(7937, 1, 752, -5224.732422, -645.780945, 425.219971, 100.000000, 0, 0), -- spline 21/32
(7937, 1, 753, -5224.232422, -647.780945, 425.719971, 100.000000, 0, 0), -- spline 22/32
(7937, 1, 754, -5223.482422, -649.530945, 425.969971, 100.000000, 0, 0), -- spline 23/32
(7937, 1, 755, -5222.982422, -651.530945, 426.469971, 100.000000, 0, 0), -- spline 24/32
(7937, 1, 756, -5222.232422, -653.530945, 426.969971, 100.000000, 0, 0), -- spline 25/32
(7937, 1, 757, -5221.732422, -655.280945, 427.469971, 100.000000, 0, 0), -- spline 26/32
(7937, 1, 758, -5220.982422, -657.280945, 427.969971, 100.000000, 0, 0), -- spline 27/32
(7937, 1, 759, -5220.732422, -658.280945, 428.469971, 100.000000, 0, 0), -- spline 28/32
(7937, 1, 760, -5219.732422, -661.030945, 428.969971, 100.000000, 0, 0), -- spline 29/32
(7937, 1, 761, -5218.982422, -663.030945, 429.219971, 100.000000, 0, 0), -- spline 30/32
(7937, 1, 762, -5218.482422, -664.780945, 429.969971, 100.000000, 0, 0), -- spline 31/32
(7937, 1, 763, -5218.049316, -666.389526, 430.134186, 100.000000, 0, 0), -- spline 32/32
(7937, 1, 764, -5221.406250, -655.668457, 427.747131, 100.000000, 0, 0), -- spline 0/25
(7937, 1, 765, -5220.656250, -657.418457, 428.247131, 100.000000, 0, 0), -- spline 1/25
(7937, 1, 766, -5220.406250, -658.418457, 428.497131, 100.000000, 0, 0), -- spline 2/25
(7937, 1, 767, -5219.406250, -661.168457, 428.997131, 100.000000, 0, 0), -- spline 3/25
(7937, 1, 768, -5218.906250, -663.168457, 429.497131, 100.000000, 0, 0), -- spline 4/25
(7937, 1, 769, -5218.156250, -665.168457, 430.247131, 100.000000, 0, 0), -- spline 5/25
(7937, 1, 770, -5217.906250, -666.418457, 430.497131, 100.000000, 0, 0), -- spline 6/25
(7937, 1, 771, -5217.406250, -667.418457, 430.747131, 100.000000, 0, 0), -- spline 7/25
(7937, 1, 772, -5216.656250, -669.168457, 431.247131, 100.000000, 0, 0), -- spline 8/25
(7937, 1, 773, -5215.656250, -670.918457, 431.747131, 100.000000, 0, 0), -- spline 9/25
(7937, 1, 774, -5214.906250, -672.668457, 432.247131, 100.000000, 0, 0), -- spline 10/25
(7937, 1, 775, -5214.156250, -674.668457, 432.497131, 100.000000, 0, 0), -- spline 11/25
(7937, 1, 776, -5213.156250, -676.168457, 432.997131, 100.000000, 0, 0), -- spline 12/25
(7937, 1, 777, -5212.656250, -677.918457, 433.497131, 100.000000, 0, 0), -- spline 13/25
(7937, 1, 778, -5211.656250, -679.668457, 433.747131, 100.000000, 0, 0), -- spline 14/25
(7937, 1, 779, -5210.906250, -681.668457, 434.247131, 100.000000, 0, 0), -- spline 15/25
(7937, 1, 780, -5210.406250, -682.418457, 434.497131, 100.000000, 0, 0), -- spline 16/25
(7937, 1, 781, -5210.156250, -683.418457, 434.997131, 100.000000, 0, 0), -- spline 17/25
(7937, 1, 782, -5209.156250, -685.168457, 435.247131, 100.000000, 0, 0), -- spline 18/25
(7937, 1, 783, -5207.906250, -687.918457, 435.747131, 100.000000, 0, 0), -- spline 19/25
(7937, 1, 784, -5207.156250, -689.668457, 436.247131, 100.000000, 0, 0), -- spline 20/25
(7937, 1, 785, -5206.406250, -691.668457, 436.747131, 100.000000, 0, 0), -- spline 21/25
(7937, 1, 786, -5205.906250, -692.418457, 436.997131, 100.000000, 0, 0), -- spline 22/25
(7937, 1, 787, -5205.156250, -694.168457, 437.497131, 100.000000, 0, 0), -- spline 23/25
(7937, 1, 788, -5204.156250, -696.168457, 437.747131, 100.000000, 0, 0), -- spline 24/25
(7937, 1, 789, -5204.001953, -696.851929, 437.848724, 100.000000, 0, 0), -- spline 25/25
(7937, 1, 790, -5209.746582, -683.643616, 435.158081, 100.000000, 0, 0), -- spline 0/30
(7937, 1, 791, -5208.996582, -685.393616, 435.408081, 100.000000, 0, 0), -- spline 1/30
(7937, 1, 792, -5207.746582, -688.143616, 435.908081, 100.000000, 0, 0), -- spline 2/30
(7937, 1, 793, -5206.996582, -689.893616, 436.408081, 100.000000, 0, 0), -- spline 3/30
(7937, 1, 794, -5205.996582, -691.893616, 436.908081, 100.000000, 0, 0), -- spline 4/30
(7937, 1, 795, -5205.746582, -692.643616, 437.158081, 100.000000, 0, 0), -- spline 5/30
(7937, 1, 796, -5204.746582, -694.643616, 437.658081, 100.000000, 0, 0), -- spline 6/30
(7937, 1, 797, -5203.996582, -696.393616, 437.908081, 100.000000, 0, 0), -- spline 7/30
(7937, 1, 798, -5203.746582, -696.893616, 438.158081, 100.000000, 0, 0), -- spline 8/30
(7937, 1, 799, -5203.246582, -697.643616, 438.408081, 100.000000, 0, 0), -- spline 9/30
(7937, 1, 800, -5202.496582, -699.643616, 438.908081, 100.000000, 0, 0), -- spline 10/30
(7937, 1, 801, -5201.996582, -700.393616, 439.158081, 100.000000, 0, 0), -- spline 11/30
(7937, 1, 802, -5201.246582, -702.393616, 439.658081, 100.000000, 0, 0), -- spline 12/30
(7937, 1, 803, -5200.746582, -703.893616, 439.908081, 100.000000, 0, 0), -- spline 13/30
(7937, 1, 804, -5200.246582, -704.893616, 439.908081, 100.000000, 0, 0), -- spline 14/30
(7937, 1, 805, -5199.746582, -705.643616, 440.158081, 100.000000, 0, 0), -- spline 15/30
(7937, 1, 806, -5198.996582, -707.393616, 440.658081, 100.000000, 0, 0), -- spline 16/30
(7937, 1, 807, -5198.496582, -708.393616, 441.158081, 100.000000, 0, 0), -- spline 17/30
(7937, 1, 808, -5198.246582, -709.393616, 441.408081, 100.000000, 0, 0), -- spline 18/30
(7937, 1, 809, -5197.746582, -710.143616, 441.658081, 100.000000, 0, 0), -- spline 19/30
(7937, 1, 810, -5196.746582, -712.143616, 442.158081, 100.000000, 0, 0), -- spline 20/30
(7937, 1, 811, -5196.496582, -712.893616, 442.408081, 100.000000, 0, 0), -- spline 21/30
(7937, 1, 812, -5195.496582, -714.643616, 442.908081, 100.000000, 0, 0), -- spline 22/30
(7937, 1, 813, -5194.746582, -716.643616, 443.408081, 100.000000, 0, 0), -- spline 23/30
(7937, 1, 814, -5194.246582, -717.393616, 443.658081, 100.000000, 0, 0), -- spline 24/30
(7937, 1, 815, -5193.496582, -719.393616, 443.908081, 100.000000, 0, 0), -- spline 25/30
(7937, 1, 816, -5192.996582, -720.143616, 444.158081, 100.000000, 0, 0), -- spline 26/30
(7937, 1, 817, -5192.746582, -721.143616, 444.658081, 100.000000, 0, 0), -- spline 27/30
(7937, 1, 818, -5192.246582, -722.143616, 444.908081, 100.000000, 0, 0), -- spline 28/30
(7937, 1, 819, -5191.496582, -723.893616, 445.408081, 100.000000, 0, 0), -- spline 29/30
(7937, 1, 820, -5191.173340, -724.604309, 445.300079, 100.000000, 0, 0), -- spline 30/30
(7937, 1, 821, -5196.493652, -712.214233, 442.375183, 100.000000, 0, 0), -- spline 0/24
(7937, 1, 822, -5196.243652, -713.214233, 442.625183, 100.000000, 0, 0), -- spline 1/24
(7937, 1, 823, -5195.243652, -714.964233, 443.125183, 100.000000, 0, 0), -- spline 2/24
(7937, 1, 824, -5194.493652, -716.714233, 443.625183, 100.000000, 0, 0), -- spline 3/24
(7937, 1, 825, -5193.993652, -717.714233, 443.875183, 100.000000, 0, 0), -- spline 4/24
(7937, 1, 826, -5193.243652, -719.464233, 444.125183, 100.000000, 0, 0), -- spline 5/24
(7937, 1, 827, -5192.743652, -720.464233, 444.375183, 100.000000, 0, 0), -- spline 6/24
(7937, 1, 828, -5192.493652, -721.464233, 444.875183, 100.000000, 0, 0), -- spline 7/24
(7937, 1, 829, -5191.993652, -722.214233, 445.125183, 100.000000, 0, 0), -- spline 8/24
(7937, 1, 830, -5191.243652, -723.964233, 445.625183, 100.000000, 0, 0), -- spline 9/24
(7937, 1, 831, -5190.993652, -724.464233, 445.625183, 100.000000, 0, 0), -- spline 10/24
(7937, 1, 832, -5189.993652, -724.964233, 445.625183, 100.000000, 0, 0), -- spline 11/24
(7937, 1, 833, -5188.243652, -725.964233, 446.125183, 100.000000, 0, 0), -- spline 12/24
(7937, 1, 834, -5186.493652, -726.964233, 446.625183, 100.000000, 0, 0), -- spline 13/24
(7937, 1, 835, -5184.993652, -727.964233, 447.125183, 100.000000, 0, 0), -- spline 14/24
(7937, 1, 836, -5183.493652, -728.964233, 447.375183, 100.000000, 0, 0), -- spline 15/24
(7937, 1, 837, -5181.743652, -729.964233, 447.625183, 100.000000, 0, 0), -- spline 16/24
(7937, 1, 838, -5180.743652, -730.464233, 447.875183, 100.000000, 0, 0), -- spline 17/24
(7937, 1, 839, -5178.993652, -731.464233, 448.125183, 100.000000, 0, 0), -- spline 18/24
(7937, 1, 840, -5177.493652, -732.464233, 448.375183, 100.000000, 0, 0), -- spline 19/24
(7937, 1, 841, -5176.493652, -732.964233, 448.625183, 100.000000, 0, 0), -- spline 20/24
(7937, 1, 842, -5175.743652, -733.464233, 448.625183, 100.000000, 0, 0), -- spline 21/24
(7937, 1, 843, -5173.993652, -734.464233, 449.125183, 100.000000, 0, 0), -- spline 22/24
(7937, 1, 844, -5172.243652, -735.464233, 449.625183, 100.000000, 0, 0), -- spline 23/24
(7937, 1, 845, -5171.363281, -736.283203, 449.691437, 100.000000, 0, 0), -- spline 24/24
(7937, 1, 846, -5177.058105, -732.652710, 448.648376, 100.000000, 0, 0), -- spline 0/26
(7937, 1, 847, -5176.308105, -733.152710, 448.898376, 100.000000, 0, 0), -- spline 1/26
(7937, 1, 848, -5175.308105, -733.652710, 448.898376, 100.000000, 0, 0), -- spline 2/26
(7937, 1, 849, -5173.808105, -734.652710, 449.398376, 100.000000, 0, 0), -- spline 3/26
(7937, 1, 850, -5172.058105, -735.652710, 449.898376, 100.000000, 0, 0), -- spline 4/26
(7937, 1, 851, -5171.058105, -736.152710, 450.148376, 100.000000, 0, 0), -- spline 5/26
(7937, 1, 852, -5169.058105, -736.152710, 450.648376, 100.000000, 0, 0), -- spline 6/26
(7937, 1, 853, -5167.058105, -736.402710, 451.148376, 100.000000, 0, 0), -- spline 7/26
(7937, 1, 854, -5166.058105, -736.402710, 451.398376, 100.000000, 0, 0), -- spline 8/26
(7937, 1, 855, -5164.058105, -736.652710, 451.898376, 100.000000, 0, 0), -- spline 9/26
(7937, 1, 856, -5162.058105, -736.902710, 452.398376, 100.000000, 0, 0), -- spline 10/26
(7937, 1, 857, -5160.058105, -736.902710, 452.898376, 100.000000, 0, 0), -- spline 11/26
(7937, 1, 858, -5158.058105, -737.152710, 453.148376, 100.000000, 0, 0), -- spline 12/26
(7937, 1, 859, -5157.058105, -737.152710, 453.398376, 100.000000, 0, 0), -- spline 13/26
(7937, 1, 860, -5155.308105, -737.402710, 453.898376, 100.000000, 0, 0), -- spline 14/26
(7937, 1, 861, -5153.558105, -737.652710, 454.398376, 100.000000, 0, 0), -- spline 15/26
(7937, 1, 862, -5152.558105, -737.652710, 454.648376, 100.000000, 0, 0), -- spline 16/26
(7937, 1, 863, -5151.558105, -737.902710, 454.898376, 100.000000, 0, 0), -- spline 17/26
(7937, 1, 864, -5149.558105, -737.902710, 455.398376, 100.000000, 0, 0), -- spline 18/26
(7937, 1, 865, -5147.558105, -738.152710, 455.898376, 100.000000, 0, 0), -- spline 19/26
(7937, 1, 866, -5146.558105, -738.152710, 456.148376, 100.000000, 0, 0), -- spline 20/26
(7937, 1, 867, -5145.558105, -738.402710, 456.648376, 100.000000, 0, 0), -- spline 21/26
(7937, 1, 868, -5143.558105, -738.402710, 457.148376, 100.000000, 0, 0), -- spline 22/26
(7937, 1, 869, -5141.558105, -738.652710, 457.648376, 100.000000, 0, 0), -- spline 23/26
(7937, 1, 870, -5139.558105, -738.902710, 458.148376, 100.000000, 0, 0), -- spline 24/26
(7937, 1, 871, -5137.558105, -738.902710, 458.648376, 100.000000, 0, 0), -- spline 25/26
(7937, 1, 872, -5135.557129, -739.469788, 458.744781, 100.000000, 0, 0), -- spline 26/26
(7937, 1, 873, -5147.136719, -738.406860, 456.105774, 100.000000, 0, 0), -- spline 0/31
(7937, 1, 874, -5146.136719, -738.406860, 456.355774, 100.000000, 0, 0), -- spline 1/31
(7937, 1, 875, -5145.136719, -738.656860, 456.855774, 100.000000, 0, 0), -- spline 2/31
(7937, 1, 876, -5143.136719, -738.656860, 457.355774, 100.000000, 0, 0), -- spline 3/31
(7937, 1, 877, -5141.136719, -738.906860, 457.855774, 100.000000, 0, 0), -- spline 4/31
(7937, 1, 878, -5139.136719, -739.156860, 458.355774, 100.000000, 0, 0), -- spline 5/31
(7937, 1, 879, -5137.136719, -739.156860, 458.855774, 100.000000, 0, 0), -- spline 6/31
(7937, 1, 880, -5135.386719, -739.406860, 459.105774, 100.000000, 0, 0), -- spline 7/31
(7937, 1, 881, -5133.386719, -739.656860, 459.605774, 100.000000, 0, 0), -- spline 8/31
(7937, 1, 882, -5131.386719, -739.906860, 460.355774, 100.000000, 0, 0), -- spline 9/31
(7937, 1, 883, -5129.386719, -739.906860, 460.855774, 100.000000, 0, 0), -- spline 10/31
(7937, 1, 884, -5127.386719, -740.156860, 461.355774, 100.000000, 0, 0), -- spline 11/31
(7937, 1, 885, -5125.386719, -740.406860, 461.855774, 100.000000, 0, 0), -- spline 12/31
(7937, 1, 886, -5123.636719, -740.406860, 462.105774, 100.000000, 0, 0), -- spline 13/31
(7937, 1, 887, -5122.636719, -740.406860, 462.355774, 100.000000, 0, 0), -- spline 14/31
(7937, 1, 888, -5121.636719, -740.406860, 462.605774, 100.000000, 0, 0), -- spline 15/31
(7937, 1, 889, -5119.636719, -740.656860, 463.105774, 100.000000, 0, 0), -- spline 16/31
(7937, 1, 890, -5117.636719, -740.656860, 463.605774, 100.000000, 0, 0), -- spline 17/31
(7937, 1, 891, -5116.636719, -740.656860, 464.105774, 100.000000, 0, 0), -- spline 18/31
(7937, 1, 892, -5114.636719, -740.906860, 464.355774, 100.000000, 0, 0), -- spline 19/31
(7937, 1, 893, -5112.636719, -741.156860, 464.855774, 100.000000, 0, 0), -- spline 20/31
(7937, 1, 894, -5110.636719, -741.156860, 465.355774, 100.000000, 0, 0), -- spline 21/31
(7937, 1, 895, -5108.636719, -741.406860, 465.855774, 100.000000, 0, 0), -- spline 22/31
(7937, 1, 896, -5107.636719, -741.406860, 466.105774, 100.000000, 0, 0), -- spline 23/31
(7937, 1, 897, -5105.636719, -741.656860, 466.605774, 100.000000, 0, 0), -- spline 24/31
(7937, 1, 898, -5104.636719, -741.656860, 466.855774, 100.000000, 0, 0), -- spline 25/31
(7937, 1, 899, -5103.636719, -741.906860, 467.355774, 100.000000, 0, 0), -- spline 26/31
(7937, 1, 900, -5101.636719, -741.906860, 467.855774, 100.000000, 0, 0), -- spline 27/31
(7937, 1, 901, -5100.636719, -742.156860, 468.105774, 100.000000, 0, 0), -- spline 28/31
(7937, 1, 902, -5099.636719, -742.156860, 468.105774, 100.000000, 0, 0), -- spline 29/31
(7937, 1, 903, -5098.636719, -742.156860, 468.605774, 100.000000, 0, 0), -- spline 30/31
(7937, 1, 904, -5098.459473, -742.540833, 468.273682, 100.000000, 0, 0), -- spline 31/31
(7937, 1, 905, -5117.411133, -740.946899, 463.960083, 100.000000, 0, 0), -- spline 0/35
(7937, 1, 906, -5116.411133, -740.946899, 464.210083, 100.000000, 0, 0), -- spline 1/35
(7937, 1, 907, -5114.411133, -741.196899, 464.460083, 100.000000, 0, 0), -- spline 2/35
(7937, 1, 908, -5112.411133, -741.446899, 464.960083, 100.000000, 0, 0), -- spline 3/35
(7937, 1, 909, -5110.411133, -741.446899, 465.460083, 100.000000, 0, 0), -- spline 4/35
(7937, 1, 910, -5108.411133, -741.696899, 465.960083, 100.000000, 0, 0), -- spline 5/35
(7937, 1, 911, -5107.411133, -741.696899, 466.460083, 100.000000, 0, 0), -- spline 6/35
(7937, 1, 912, -5105.411133, -741.946899, 466.960083, 100.000000, 0, 0), -- spline 7/35
(7937, 1, 913, -5104.411133, -741.946899, 467.210083, 100.000000, 0, 0), -- spline 8/35
(7937, 1, 914, -5103.411133, -742.196899, 467.460083, 100.000000, 0, 0), -- spline 9/35
(7937, 1, 915, -5101.411133, -742.196899, 467.960083, 100.000000, 0, 0), -- spline 10/35
(7937, 1, 916, -5100.411133, -742.446899, 468.210083, 100.000000, 0, 0), -- spline 11/35
(7937, 1, 917, -5099.411133, -742.446899, 468.460083, 100.000000, 0, 0), -- spline 12/35
(7937, 1, 918, -5098.411133, -742.446899, 468.710083, 100.000000, 0, 0), -- spline 13/35
(7937, 1, 919, -5098.161133, -742.446899, 468.710083, 100.000000, 0, 0), -- spline 14/35
(7937, 1, 920, -5097.161133, -742.696899, 468.960083, 100.000000, 0, 0), -- spline 15/35
(7937, 1, 921, -5095.411133, -743.446899, 469.460083, 100.000000, 0, 0), -- spline 16/35
(7937, 1, 922, -5094.411133, -743.696899, 469.710083, 100.000000, 0, 0), -- spline 17/35
(7937, 1, 923, -5092.411133, -744.196899, 470.460083, 100.000000, 0, 0), -- spline 18/35
(7937, 1, 924, -5090.661133, -744.696899, 470.710083, 100.000000, 0, 0), -- spline 19/35
(7937, 1, 925, -5088.911133, -745.196899, 471.460083, 100.000000, 0, 0), -- spline 20/35
(7937, 1, 926, -5086.911133, -745.696899, 471.960083, 100.000000, 0, 0), -- spline 21/35
(7937, 1, 927, -5084.911133, -746.196899, 472.460083, 100.000000, 0, 0), -- spline 22/35
(7937, 1, 928, -5083.161133, -746.696899, 472.960083, 100.000000, 0, 0), -- spline 23/35
(7937, 1, 929, -5082.161133, -746.946899, 473.460083, 100.000000, 0, 0), -- spline 24/35
(7937, 1, 930, -5080.161133, -747.446899, 474.210083, 100.000000, 0, 0), -- spline 25/35
(7937, 1, 931, -5078.161133, -747.946899, 474.710083, 100.000000, 0, 0), -- spline 26/35
(7937, 1, 932, -5076.411133, -748.446899, 475.460083, 100.000000, 0, 0), -- spline 27/35
(7937, 1, 933, -5075.411133, -748.696899, 476.210083, 100.000000, 0, 0), -- spline 28/35
(7937, 1, 934, -5072.411133, -749.446899, 477.210083, 100.000000, 0, 0), -- spline 29/35
(7937, 1, 935, -5071.411133, -749.946899, 477.960083, 100.000000, 0, 0), -- spline 30/35
(7937, 1, 936, -5068.661133, -750.696899, 478.960083, 100.000000, 0, 0), -- spline 31/35
(7937, 1, 937, -5067.661133, -750.946899, 479.710083, 100.000000, 0, 0), -- spline 32/35
(7937, 1, 938, -5065.661133, -751.446899, 480.210083, 100.000000, 0, 0), -- spline 33/35
(7937, 1, 939, -5064.661133, -751.696899, 480.460083, 100.000000, 0, 0), -- spline 34/35
(7937, 1, 940, -5064.617676, -752.035217, 480.722961, 100.000000, 0, 0), -- spline 35/35
(7937, 1, 941, -5072.134277, -749.816162, 477.678223, 100.000000, 0, 0), -- spline 0/37
(7937, 1, 942, -5071.134277, -750.066162, 478.178223, 100.000000, 0, 0), -- spline 1/37
(7937, 1, 943, -5068.384277, -750.816162, 479.428223, 100.000000, 0, 0), -- spline 2/37
(7937, 1, 944, -5067.384277, -751.066162, 480.178223, 100.000000, 0, 0), -- spline 3/37
(7937, 1, 945, -5065.384277, -751.816162, 480.428223, 100.000000, 0, 0), -- spline 4/37
(7937, 1, 946, -5064.384277, -752.066162, 480.678223, 100.000000, 0, 0), -- spline 5/37
(7937, 1, 947, -5064.384277, -752.066162, 481.178223, 100.000000, 0, 0), -- spline 6/37
(7937, 1, 948, -5064.384277, -752.066162, 480.678223, 100.000000, 0, 0), -- spline 7/37
(7937, 1, 949, -5063.884277, -752.816162, 481.428223, 100.000000, 0, 0), -- spline 8/37
(7937, 1, 950, -5063.384277, -753.816162, 481.678223, 100.000000, 0, 0), -- spline 9/37
(7937, 1, 951, -5062.884277, -754.566162, 482.428223, 100.000000, 0, 0), -- spline 10/37
(7937, 1, 952, -5062.384277, -755.566162, 482.678223, 100.000000, 0, 0), -- spline 11/37
(7937, 1, 953, -5062.134277, -756.316162, 483.428223, 100.000000, 0, 0), -- spline 12/37
(7937, 1, 954, -5061.634277, -757.316162, 483.928223, 100.000000, 0, 0), -- spline 13/37
(7937, 1, 955, -5061.134277, -758.316162, 484.178223, 100.000000, 0, 0), -- spline 14/37
(7937, 1, 956, -5060.884277, -759.066162, 484.428223, 100.000000, 0, 0), -- spline 15/37
(7937, 1, 957, -5060.384277, -760.066162, 485.178223, 100.000000, 0, 0), -- spline 16/37
(7937, 1, 958, -5059.884277, -760.816162, 485.678223, 100.000000, 0, 0), -- spline 17/37
(7937, 1, 959, -5059.384277, -761.816162, 485.928223, 100.000000, 0, 0), -- spline 18/37
(7937, 1, 960, -5058.884277, -762.566162, 486.428223, 100.000000, 0, 0), -- spline 19/37
(7937, 1, 961, -5058.134277, -764.316162, 487.178223, 100.000000, 0, 0), -- spline 20/37
(7937, 1, 962, -5057.634277, -765.316162, 487.678223, 100.000000, 0, 0), -- spline 21/37
(7937, 1, 963, -5057.134277, -766.066162, 488.428223, 100.000000, 0, 0), -- spline 22/37
(7937, 1, 964, -5056.634277, -767.066162, 488.928223, 100.000000, 0, 0), -- spline 23/37
(7937, 1, 965, -5056.134277, -767.566162, 489.428223, 100.000000, 0, 0), -- spline 24/37
(7937, 1, 966, -5055.634277, -768.566162, 489.928223, 100.000000, 0, 0), -- spline 25/37
(7937, 1, 967, -5055.134277, -769.316162, 490.178223, 100.000000, 0, 0), -- spline 26/37
(7937, 1, 968, -5054.634277, -770.316162, 490.678223, 100.000000, 0, 0), -- spline 27/37
(7937, 1, 969, -5054.384277, -771.066162, 490.928223, 100.000000, 0, 0), -- spline 28/37
(7937, 1, 970, -5053.884277, -772.066162, 491.678223, 100.000000, 0, 0), -- spline 29/37
(7937, 1, 971, -5053.384277, -772.816162, 491.928223, 100.000000, 0, 0), -- spline 30/37
(7937, 1, 972, -5052.884277, -773.816162, 492.428223, 100.000000, 0, 0), -- spline 31/37
(7937, 1, 973, -5051.884277, -775.566162, 492.928223, 100.000000, 0, 0), -- spline 32/37
(7937, 1, 974, -5050.384277, -778.316162, 494.178223, 100.000000, 0, 0), -- spline 33/37
(7937, 1, 975, -5049.634277, -780.066162, 494.678223, 100.000000, 0, 0), -- spline 34/37
(7937, 1, 976, -5048.634277, -781.816162, 494.928223, 100.000000, 0, 0), -- spline 35/37
(7937, 1, 977, -5047.634277, -783.566162, 495.178223, 100.000000, 0, 0), -- spline 36/37
(7937, 1, 978, -5047.007324, -784.957764, 495.095551, 100.000000, 0, 0), -- spline 37/37
(7937, 1, 979, -5055.775391, -767.811157, 489.852509, 100.000000, 0, 0), -- spline 0/14
(7937, 1, 980, -5055.525391, -768.811157, 490.102509, 100.000000, 0, 0), -- spline 1/14
(7937, 1, 981, -5055.025391, -769.561157, 490.352509, 100.000000, 0, 0), -- spline 2/14
(7937, 1, 982, -5054.525391, -770.561157, 490.852509, 100.000000, 0, 0), -- spline 3/14
(7937, 1, 983, -5054.025391, -771.311157, 491.352509, 100.000000, 0, 0), -- spline 4/14
(7937, 1, 984, -5053.525391, -772.311157, 491.852509, 100.000000, 0, 0), -- spline 5/14
(7937, 1, 985, -5053.025391, -773.061157, 492.102509, 100.000000, 0, 0), -- spline 6/14
(7937, 1, 986, -5052.525391, -774.061157, 492.602509, 100.000000, 0, 0), -- spline 7/14
(7937, 1, 987, -5051.775391, -775.811157, 493.102509, 100.000000, 0, 0), -- spline 8/14
(7937, 1, 988, -5050.275391, -778.561157, 494.102509, 100.000000, 0, 0), -- spline 9/14
(7937, 1, 989, -5049.275391, -780.311157, 494.602509, 100.000000, 0, 0), -- spline 10/14
(7937, 1, 990, -5048.275391, -782.061157, 495.102509, 100.000000, 0, 0), -- spline 11/14
(7937, 1, 991, -5047.525391, -783.811157, 495.352509, 100.000000, 0, 0), -- spline 12/14
(7937, 1, 992, -5046.775391, -785.061157, 495.352509, 100.000000, 0, 0), -- spline 13/14
(7937, 1, 993, -5029.021973, -825.450989, 495.377106, 100.000000, 0, 0), -- spline 14/14
(7937, 1, 994, -5028.871094, -825.382690, 495.906830, 100.000000, 0, 0), -- spline 0/13
(7937, 1, 995, -5024.871094, -830.132690, 495.906830, 100.000000, 0, 0), -- spline 1/13
(7937, 1, 996, -5024.121094, -831.132690, 495.906830, 100.000000, 0, 0), -- spline 2/13
(7937, 1, 997, -5023.621094, -832.382690, 495.906830, 100.000000, 0, 0), -- spline 3/13
(7937, 1, 998, -5022.371094, -833.632690, 497.156830, 100.000000, 0, 0), -- spline 4/13
(7937, 1, 999, -5021.121094, -835.132690, 497.156830, 100.000000, 0, 0), -- spline 5/13
(7937, 1, 1000, -5020.621094, -835.632690, 497.156830, 100.000000, 0, 0), -- spline 6/13
(7937, 1, 1001, -5020.621094, -835.632690, 496.906830, 100.000000, 0, 0), -- spline 7/13
(7937, 1, 1002, -5018.621094, -838.132690, 496.906830, 100.000000, 0, 0), -- spline 8/13
(7937, 1, 1003, -5018.371094, -838.382690, 497.156830, 100.000000, 0, 0), -- spline 9/13
(7937, 1, 1004, -5018.121094, -838.632690, 497.156830, 100.000000, 0, 0), -- spline 10/13
(7937, 1, 1005, -5015.871094, -841.132690, 497.156830, 100.000000, 0, 0), -- spline 11/13
(7937, 1, 1006, -5011.621094, -845.882690, 497.406830, 100.000000, 0, 0), -- spline 12/13
(7937, 1, 1007, -5003.054688, -855.700378, 497.064392, 100.000000, 0, 0), -- spline 13/13
(7937, 1, 1008, -5002.908691, -855.779602, 497.393921, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 1009, -5001.158691, -857.779602, 497.393921, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 1010, -4991.408691, -870.279602, 497.393921, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 1011, -4987.158691, -875.779602, 497.643921, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 1012, -4983.658691, -880.529602, 501.893921, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 1013, -4983.408691, -880.779602, 501.893921, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 1014, -4981.005859, -883.998718, 501.646332, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 1015, -4987.347656, -875.929321, 497.599518, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 1016, -4983.597656, -880.679321, 501.849518, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 1017, -4983.347656, -880.929321, 501.849518, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 1018, -4981.097656, -883.929321, 501.849518, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 1019, -4987.597656, -892.679321, 501.849518, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 1020, -4989.347656, -894.929321, 501.849518, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 1021, -4992.597656, -899.429321, 501.849518, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 1022, -4996.097656, -904.429321, 501.849518, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 1023, -5000.584473, -910.687744, 501.659393, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 1024, -4992.575684, -899.562134, 501.897003, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 1025, -4996.325684, -904.812134, 501.897003, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 1026, -5000.825684, -911.062134, 501.897003, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 1027, -5004.825684, -915.562134, 501.897003, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 1028, -5008.825684, -920.562134, 501.897003, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 1029, -5010.575684, -922.562134, 501.897003, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 1030, -5014.988281, -927.506287, 501.659424, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 1031, -5008.979980, -920.635986, 501.909302, 100.000000, 0, 0), -- spline 0/7
(7937, 1, 1032, -5010.729980, -922.885986, 501.909302, 100.000000, 0, 0), -- spline 1/7
(7937, 1, 1033, -5014.729980, -927.385986, 501.909302, 100.000000, 0, 0), -- spline 2/7
(7937, 1, 1034, -5014.229980, -928.385986, 501.909302, 100.000000, 0, 0), -- spline 3/7
(7937, 1, 1035, -5005.479980, -942.635986, 501.909302, 100.000000, 0, 0), -- spline 4/7
(7937, 1, 1036, -5002.229980, -948.385986, 501.909302, 100.000000, 0, 0), -- spline 5/7
(7937, 1, 1037, -5001.479980, -949.885986, 501.909302, 100.000000, 0, 0), -- spline 6/7
(7937, 1, 1038, -4998.551758, -954.949036, 501.659241, 100.000000, 0, 0), -- spline 7/7
(7937, 1, 1039, -5002.050781, -948.552246, 501.910889, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 1040, -5001.300781, -950.052246, 501.910889, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 1041, -4998.300781, -955.052246, 501.910889, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 1042, -4997.550781, -956.552246, 501.910889, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 1043, -4993.300781, -965.052246, 501.910889, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 1044, -4990.912598, -970.068237, 501.659454, 100.000000, 0, 0), -- spline 5/5
(7937, 1, 1045, -4993.335938, -965.209229, 501.910034, 100.000000, 0, 0), -- spline 0/4
(7937, 1, 1046, -4990.835938, -969.959229, 501.910034, 100.000000, 0, 0), -- spline 1/4
(7937, 1, 1047, -4992.335938, -980.209229, 501.910034, 100.000000, 0, 0), -- spline 2/4
(7937, 1, 1048, -4994.085938, -991.709229, 501.910034, 100.000000, 0, 0), -- spline 3/4
(7937, 1, 1049, -4994.282715, -994.189880, 501.660858, 100.000000, 0, 0), -- spline 4/4
(7937, 1, 1050, -4992.346191, -980.356628, 501.908020, 100.000000, 0, 0), -- spline 0/9
(7937, 1, 1051, -4994.096191, -992.106628, 501.908020, 100.000000, 0, 0), -- spline 1/9
(7937, 1, 1052, -4994.346191, -994.106628, 501.908020, 100.000000, 0, 0), -- spline 2/9
(7937, 1, 1053, -4995.096191, -996.106628, 501.908020, 100.000000, 0, 0), -- spline 3/9
(7937, 1, 1054, -4996.096191, -999.356628, 501.908020, 100.000000, 0, 0), -- spline 4/9
(7937, 1, 1055, -4997.096191, -1001.356628, 501.908020, 100.000000, 0, 0), -- spline 5/9
(7937, 1, 1056, -5002.346191, -1015.606628, 501.908020, 100.000000, 0, 0), -- spline 6/9
(7937, 1, 1057, -5003.096191, -1017.356628, 501.908020, 100.000000, 0, 0), -- spline 7/9
(7937, 1, 1058, -5008.096191, -1031.106689, 501.908020, 100.000000, 0, 0), -- spline 8/9
(7937, 1, 1059, -5008.796387, -1032.185181, 501.656586, 100.000000, 0, 0), -- spline 9/9
(7937, 1, 1060, -5008.460938, -1031.273438, 501.699127, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 1061, -5008.710938, -1032.273438, 501.699127, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 1062, -5009.460938, -1035.523438, 501.949127, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 1063, -5010.460938, -1038.523438, 501.949127, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 1064, -5010.460938, -1038.773438, 501.949127, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 1065, -5011.960938, -1044.273438, 501.949127, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 1066, -5012.960938, -1047.523438, 501.949127, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 1067, -5013.210938, -1048.773438, 501.949127, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 1068, -5015.105469, -1054.397949, 501.740936, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 1069, -5009.773438, -1035.548584, 501.918518, 100.000000, 0, 0), -- spline 0/16
(7937, 1, 1070, -5010.773438, -1038.798584, 501.918518, 100.000000, 0, 0), -- spline 1/16
(7937, 1, 1071, -5010.773438, -1039.048584, 501.918518, 100.000000, 0, 0), -- spline 2/16
(7937, 1, 1072, -5012.273438, -1044.548584, 501.918518, 100.000000, 0, 0), -- spline 3/16
(7937, 1, 1073, -5013.023438, -1047.798584, 501.918518, 100.000000, 0, 0), -- spline 4/16
(7937, 1, 1074, -5013.273438, -1049.048584, 501.918518, 100.000000, 0, 0), -- spline 5/16
(7937, 1, 1075, -5014.773438, -1054.298584, 501.918518, 100.000000, 0, 0), -- spline 6/16
(7937, 1, 1076, -5014.773438, -1056.048584, 501.918518, 100.000000, 0, 0), -- spline 7/16
(7937, 1, 1077, -5015.023438, -1063.298584, 501.918518, 100.000000, 0, 0), -- spline 8/16
(7937, 1, 1078, -5015.023438, -1066.298584, 501.918518, 100.000000, 0, 0), -- spline 9/16
(7937, 1, 1079, -5015.023438, -1078.798584, 501.918518, 100.000000, 0, 0), -- spline 10/16
(7937, 1, 1080, -5015.023438, -1079.298584, 501.918518, 100.000000, 0, 0), -- spline 11/16
(7937, 1, 1081, -5015.023438, -1082.548584, 501.918518, 100.000000, 0, 0), -- spline 12/16
(7937, 1, 1082, -5015.023438, -1083.048584, 501.918518, 100.000000, 0, 0), -- spline 13/16
(7937, 1, 1083, -5015.023438, -1090.048584, 501.918518, 100.000000, 0, 0), -- spline 14/16
(7937, 1, 1084, -5015.023438, -1090.798584, 501.918518, 100.000000, 0, 0), -- spline 15/16
(7937, 1, 1085, -5015.340820, -1094.967651, 501.671661, 100.000000, 0, 0), -- spline 16/16
(7937, 1, 1086, -5015.074219, -1082.808594, 501.943909, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 1087, -5015.074219, -1083.308594, 501.943909, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 1088, -5015.074219, -1090.058594, 501.943909, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 1089, -5015.074219, -1090.808594, 501.943909, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 1090, -5015.074219, -1095.058594, 501.943909, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 1091, -5014.574219, -1098.808594, 501.943909, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 1092, -5013.074219, -1111.558594, 501.943909, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 1093, -5013.074219, -1113.308594, 501.943909, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 1094, -5012.894043, -1114.154419, 501.680725, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 1095, -5014.486328, -1099.071045, 501.924255, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 1096, -5012.986328, -1111.571045, 501.924255, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 1097, -5012.736328, -1113.321045, 501.924255, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 1098, -5012.736328, -1113.821045, 501.924255, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 1099, -5010.736328, -1114.321045, 501.924255, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 1100, -5003.986328, -1115.571045, 501.924255, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 1101, -5003.680176, -1115.796875, 501.676941, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 1102, -5012.976074, -1111.665039, 501.914398, 100.000000, 0, 0), -- spline 0/12
(7937, 1, 1103, -5012.726074, -1113.665039, 501.914398, 100.000000, 0, 0), -- spline 1/12
(7937, 1, 1104, -5012.726074, -1114.165039, 501.914398, 100.000000, 0, 0), -- spline 2/12
(7937, 1, 1105, -5010.726074, -1114.415039, 501.914398, 100.000000, 0, 0), -- spline 3/12
(7937, 1, 1106, -5003.976074, -1115.665039, 501.914398, 100.000000, 0, 0), -- spline 4/12
(7937, 1, 1107, -5003.726074, -1115.915039, 501.914398, 100.000000, 0, 0), -- spline 5/12
(7937, 1, 1108, -5003.476074, -1116.165039, 501.914398, 100.000000, 0, 0), -- spline 6/12
(7937, 1, 1109, -5001.976074, -1121.665039, 501.914398, 100.000000, 0, 0), -- spline 7/12
(7937, 1, 1110, -5001.726074, -1122.665039, 501.914398, 100.000000, 0, 0), -- spline 8/12
(7937, 1, 1111, -5000.226074, -1127.665039, 501.914398, 100.000000, 0, 0), -- spline 9/12
(7937, 1, 1112, -4999.226074, -1131.165039, 501.914398, 100.000000, 0, 0), -- spline 10/12
(7937, 1, 1113, -4997.226074, -1137.915039, 501.914398, 100.000000, 0, 0), -- spline 11/12
(7937, 1, 1114, -4996.204590, -1141.948486, 501.659454, 100.000000, 0, 0), -- spline 12/12
(7937, 1, 1115, -4997.068359, -1138.068359, 501.916382, 100.000000, 0, 0), -- spline 0/8
(7937, 1, 1116, -4996.068359, -1142.068359, 501.916382, 100.000000, 0, 0), -- spline 1/8
(7937, 1, 1117, -4992.818359, -1147.318359, 501.916382, 100.000000, 0, 0), -- spline 2/8
(7937, 1, 1118, -4986.318359, -1158.568359, 501.916382, 100.000000, 0, 0), -- spline 3/8
(7937, 1, 1119, -4985.318359, -1160.318359, 501.916382, 100.000000, 0, 0), -- spline 4/8
(7937, 1, 1120, -4985.068359, -1160.818359, 501.916382, 100.000000, 0, 0), -- spline 5/8
(7937, 1, 1121, -4976.568359, -1175.318359, 501.916382, 100.000000, 0, 0), -- spline 6/8
(7937, 1, 1122, -4974.318359, -1179.568359, 501.916382, 100.000000, 0, 0), -- spline 7/8
(7937, 1, 1123, -4971.610840, -1184.308228, 501.657104, 100.000000, 0, 0), -- spline 8/8
(7937, 1, 1124, -4976.481445, -1175.663696, 501.906403, 100.000000, 0, 0), -- spline 0/7
(7937, 1, 1125, -4973.981445, -1179.913696, 501.906403, 100.000000, 0, 0), -- spline 1/7
(7937, 1, 1126, -4971.481445, -1184.413696, 501.906403, 100.000000, 0, 0), -- spline 2/7
(7937, 1, 1127, -4969.731445, -1186.663696, 501.906403, 100.000000, 0, 0), -- spline 3/7
(7937, 1, 1128, -4964.231445, -1194.163696, 501.906403, 100.000000, 0, 0), -- spline 4/7
(7937, 1, 1129, -4960.731445, -1199.413696, 501.906403, 100.000000, 0, 0), -- spline 5/7
(7937, 1, 1130, -4949.731445, -1214.913696, 501.906403, 100.000000, 0, 0), -- spline 6/7
(7937, 1, 1131, -4947.507813, -1218.224243, 501.665710, 100.000000, 0, 0), -- spline 7/7
(7937, 1, 1132, -4949.345703, -1215.243408, 501.910126, 100.000000, 0, 0), -- spline 0/7
(7937, 1, 1133, -4947.345703, -1218.243408, 501.910126, 100.000000, 0, 0), -- spline 1/7
(7937, 1, 1134, -4944.845703, -1220.493408, 501.910126, 100.000000, 0, 0), -- spline 2/7
(7937, 1, 1135, -4944.345703, -1220.743408, 501.910126, 100.000000, 0, 0), -- spline 3/7
(7937, 1, 1136, -4939.595703, -1224.743408, 501.910126, 100.000000, 0, 0), -- spline 4/7
(7937, 1, 1137, -4927.345703, -1235.993408, 501.910126, 100.000000, 0, 0), -- spline 5/7
(7937, 1, 1138, -4925.345703, -1237.743408, 501.910126, 100.000000, 0, 0), -- spline 6/7
(7937, 1, 1139, -4918.033203, -1244.359863, 501.659393, 100.000000, 0, 0), -- spline 7/7
(7937, 1, 1140, -4926.935547, -1236.078613, 501.760071, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 1141, -4924.935547, -1237.828613, 501.760071, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 1142, -4917.685547, -1244.078613, 501.760071, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 1143, -4914.435547, -1246.078613, 501.760071, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 1144, -4914.185547, -1246.078613, 502.010071, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 1145, -4911.935547, -1247.078613, 502.010071, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 1146, -4904.270020, -1251.224731, 501.867828, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 1147, -4914.112305, -1246.230469, 501.763641, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 1148, -4913.862305, -1246.230469, 502.013641, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 1149, -4911.862305, -1247.480469, 502.013641, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 1150, -4901.362305, -1252.480469, 502.013641, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 1151, -4892.112305, -1256.980469, 502.013641, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 1152, -4889.834961, -1258.531860, 501.867859, 100.000000, 0, 0), -- spline 5/5
(7937, 1, 1153, -4901.113770, -1252.756226, 502.117859, 100.000000, 0, 0), -- spline 0/4
(7937, 1, 1154, -4891.863770, -1257.256226, 502.117859, 100.000000, 0, 0), -- spline 1/4
(7937, 1, 1155, -4889.613770, -1258.506226, 502.117859, 100.000000, 0, 0), -- spline 2/4
(7937, 1, 1156, -4881.613770, -1261.756226, 502.117859, 100.000000, 0, 0), -- spline 3/4
(7937, 1, 1157, -4871.240723, -1266.628540, 501.867859, 100.000000, 0, 0), -- spline 4/4
(7937, 1, 1158, -4881.373047, -1262.157471, 502.117859, 100.000000, 0, 0), -- spline 0/5
(7937, 1, 1159, -4870.873047, -1266.407471, 502.117859, 100.000000, 0, 0), -- spline 1/5
(7937, 1, 1160, -4869.873047, -1266.407471, 502.117859, 100.000000, 0, 0), -- spline 2/5
(7937, 1, 1161, -4863.623047, -1267.407471, 502.117859, 100.000000, 0, 0), -- spline 3/5
(7937, 1, 1162, -4856.873047, -1268.157471, 502.117859, 100.000000, 0, 0), -- spline 4/5
(7937, 1, 1163, -4851.079102, -1269.056519, 501.867859, 100.000000, 0, 0), -- spline 5/5
(7937, 1, 1164, -4871.054688, -1266.578125, 502.117889, 100.000000, 0, 0), -- spline 0/6
(7937, 1, 1165, -4869.804688, -1266.828125, 502.117889, 100.000000, 0, 0), -- spline 1/6
(7937, 1, 1166, -4863.304688, -1267.328125, 502.117889, 100.000000, 0, 0), -- spline 2/6
(7937, 1, 1167, -4856.804688, -1268.078125, 502.117889, 100.000000, 0, 0), -- spline 3/6
(7937, 1, 1168, -4851.054688, -1268.828125, 502.117889, 100.000000, 0, 0), -- spline 4/6
(7937, 1, 1169, -4836.804688, -1268.328125, 502.117889, 100.000000, 0, 0), -- spline 5/6
(7937, 1, 1170, -4830.097656, -1268.516479, 501.867920, 100.000000, 0, 0), -- spline 6/6
(7937, 1, 1171, -4829.112305, -1265.338013, 502.201599, 100.000000, 0, 0), -- spline 0/4
(7937, 1, 1172, -4828.862305, -1264.088013, 502.201599, 100.000000, 0, 0), -- spline 1/4
(7937, 1, 1173, -4828.862305, -1262.838013, 502.201599, 100.000000, 0, 0), -- spline 2/4
(7937, 1, 1174, -4828.112305, -1259.088013, 505.701599, 100.000000, 0, 0), -- spline 3/4
(7937, 1, 1175, -4827.627441, -1257.159546, 506.035309, 100.000000, 0, 0), -- spline 4/4
(7937, 1, 1176, -4827.627441, -1257.159546, 506.035309, 4.572762489318847656, 1000, 793705); -- no splines in this packet

-- delete point 570 571 572 and add point 1
-- DELETE FROM creature_movement_template WHERE point IN(570,571,572);
UPDATE creature_movement_template SET point=point-3 WHERE entry IN(7937) AND pathId IN(1) AND point >570;
UPDATE creature_movement_template SET point=point+2000 WHERE entry IN(7937) AND pathId IN(1);
UPDATE creature_movement_template SET point=point-1999 WHERE entry IN(7937) AND pathId IN(1);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(7937,1,1,-4827.6274,-1257.1595,506.0353,1000,793701,100);

UPDATE broadcast_text SET ChatTypeID=1 WHERE Id IN(23863,23864,23865,23866,23867,21957,21988,21989,21990,21994,21991,21999,21992,21993,21924,22001);

DELETE FROM dbscripts_on_creature_movement WHERE id IN(793701,793741,793742,793743,793783);
REPLACE INTO dbscripts_on_creature_movement VALUES
('793701', '0', '0', '24', '12346', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque mount and change speed'),
('793701', '0', '1', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque set run'),
('793701', '0', '2', '48', '256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque add unitflag immune to player'),
('793701', '0', '3', '29', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque remove npcflag questgiver'),
('793701', '0', '5', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque set active'),

('793702', '0', '0', '24', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque dismount and change speed'),
('793702', '0', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque set walk'),

('793703', '6000', '0', '1', '396', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque play emote'),
('793703', '6000', '0', '0', '0', '0', '0', '0', '110004', '17', '21957', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 1'),
('793703', '27500', '0', '0', '0', '0', '0', '0', '110004', '17', '21988', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 2'),
('793703', '55000', '0', '0', '0', '0', '0', '0', '110004', '17', '21989', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 3'),
('793703', '82500', '0', '0', '0', '0', '0', '0', '110004', '17', '21990', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 4'),
('793703', '94000', '0', '0', '0', '0', '0', '0', '88874', '20', '21994', '0', '0', '0', '0', '0', '0', '0', '0', 'Maeve Barleybrew say 1'),
('793703', '97000', '0', '0', '0', '0', '0', '0', '110004', '17', '21991', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 5'),
('793703', '100000', '0', '0', '0', '0', '0', '0', '88874', '20', '21999', '0', '0', '0', '0', '0', '0', '0', '0', 'Maeve Barleybrew say 2'),
('793703', '106000', '0', '0', '0', '0', '0', '0', '110004', '17', '21992', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 6'),
('793703', '110000', '0', '0', '0', '0', '0', '0', '110004', '20', '21923', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 1'),
('793703', '113000', '0', '0', '0', '0', '0', '0', '110004', '20', '21922', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 2'),
('793703', '113500', '0', '0', '0', '0', '0', '0', '110004', '17', '21993', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 7'),
('793703', '116000', '0', '1', '253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque play emote'),
('793703', '116000', '0', '0', '0', '0', '0', '0', '110004', '20', '21921', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 3'),
('793703', '119000', '0', '0', '0', '0', '0', '0', '110004', '20', '21920', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 4'),
('793703', '121000', '0', '0', '0', '0', '0', '0', '110004', '20', '21919', '0', '0', '0', '0', '0', '0', '0', '0', 'Brewfest crowd 5'),
('793703', '121500', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.543018341064453125', '0', 'Mekkatorque face'),
('793703', '121500', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque clear emote'),
('793703', '123000', '0', '1', '234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque play emote'),
('793703', '126000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque clear emote'),
('793703', '129000', '0', '42', '0', '0', '0', '0', '0', '0', '33963', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque set item'),
('793703', '132500', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.094395160675048828', '0', 'Mekkatorque face'),
('793703', '136000', '0', '0', '0', '0', '0', '0', '110004', '17', '21924', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 8'),
('793703', '147500', '0', '0', '0', '0', '0', '0', '110004', '17', '22001', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque say 9'),
('793703', '150500', '0', '15', '42138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque Cast 6634 on everyone'),
('793703', '150500', '0', '1', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque play emote'),
('793703', '151000', '0', '36', '0', '0', '0', '24484', '50', 0x203, '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Revelers turn to Mekkatorque'),
('793703', '153500', '0', '1', '92', '0', '0', '24484', '50', 0x203, '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Revelers emote'),
('793703', '153500', '0', '1', '253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque play emote'),
('793703', '158500', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque clear emote'),
('793703', '158500', '0', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque play emote'),
('793703', '158500', '0', '1', '92', '0', '0', '24484', '50', 0x203, '153', '21', '22', '71', '0', '0', '0', '0', '0', 'Revelers emote'),
('793703', '170500', '0', '1', '153', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque play emote'),

('793704', '0', '0', '24', '12346', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque mount and change speed'),
('793704', '0', '1', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque set run'),

('793705', '0', '0', '24', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque dismount and change speed'),
('793705', '0', '0', '48', '256', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque remove unitflag immune to player'),
('793705', '0', '0', '29', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque add npcflag questgiver'),
('793705', '0', '0', '20', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque Change Movement To 0 - Idle'),
('793705', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque set inactive'),
('793705', '0', '0', '42', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mekkatorque reset items');


