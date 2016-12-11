-- Classic [1034]
-- Winterspring - Rak'shiri 
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 64, SpeedWalk = 1, SpeedRun = (10 / 7), MovementType = 2, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 10200;
UPDATE creature SET modelid = 0,position_x = 8021.76, position_y = -3946.803, position_z = 687.1479, orientation = 6.225225, MovementType = 2 WHERE id = 10200;
DELETE FROM creature_movement_template WHERE entry = 10200;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10200,1, 8028.811, -3947.212, 687.1479, 0, 0, 0, 0, 0),
(10200,2, 8037.275, -3942.646, 687.1479, 0, 0, 0, 0, 0),
(10200,3, 8046.581, -3938.139, 687.1479, 0, 0, 0, 0, 0),
(10200,4, 8052.147, -3930.226, 687.1479, 0, 0, 0, 0, 0),
(10200,5, 8053.363, -3919.330, 687.1479, 0, 0, 0, 0, 0),
(10200,6, 8042.460, -3905.253, 687.1479, 0, 0, 0, 0, 0),
(10200,7, 8036.599, -3897.281, 687.1479, 0, 0, 0, 0, 0),
(10200,8, 8026.449, -3889.370, 687.1479, 0, 0, 0, 0, 0),
(10200,9, 8018.806, -3883.733, 687.1479, 0, 0, 0, 0, 0),
(10200,10, 8010.596, -3876.309, 687.1479, 0, 0, 0, 0, 0),
(10200,11, 8000.862, -3872.118, 687.1479, 0, 0, 0, 0, 0),
(10200,12, 7992.011, -3874.467, 687.1479, 0, 0, 0, 0, 0),
(10200,13, 7985.668, -3879.896, 687.1479, 0, 0, 0, 0, 0),
(10200,14, 7980.295, -3887.226, 687.1479, 0, 0, 0, 0, 0),
(10200,15, 7982.961, -3899.094, 687.1479, 0, 0, 0, 0, 0),
(10200,16, 7988.211, -3905.684, 687.1479, 0, 0, 0, 0, 0),
(10200,17, 8000.712, -3905.205, 687.1479, 0, 0, 0, 0, 0),
(10200,18, 8007.098, -3908.700, 687.1479, 0, 0, 0, 0, 0),
(10200,19, 8012.041, -3917.679, 687.1479, 0, 0, 0, 0, 0),
(10200,20, 8013.973, -3929.078, 687.1479, 0, 0, 0, 0, 0),
(10200,21, 8014.293, -3941.990, 687.1479, 0, 0, 0, 0, 0),
(10200,22, 8018.936, -3946.639, 687.1479, 0, 0, 0, 0, 0);

-- Classic [1028]
-- Fixed respawn time of minerals in DM East 
UPDATE gameobject SET spawntimesecs = 40 * 60 WHERE map = 429 AND id = 175404;

-- Classic [1027]
-- Winterspring updates 
-- Added missing WP to creature 10807 (Brumeran) in Winterspring
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10807;
UPDATE creature SET MovementType = 2 WHERE id = 10807;
DELETE FROM creature_movement_template WHERE entry = 10807;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10807, 1, 5794.21, -4756.73, 776.631, 0, 0, 0, 0, 0),
(10807, 2, 5767.78, -4750.23, 776.266, 0, 0, 0, 0, 0),
(10807, 3, 5741.93, -4739.3, 776.337, 0, 0, 0, 0, 0),
(10807, 4, 5729.39, -4728.64, 776.861, 0, 0, 0, 0, 0),
(10807, 5, 5716.83, -4712.63, 780.549, 0, 0, 0, 0, 0),
(10807, 6, 5701.37, -4690.78, 780.221, 0, 0, 0, 0, 0),
(10807, 7, 5685.64, -4666.45, 775.247, 0, 0, 0, 0, 0),
(10807, 8, 5663.94, -4633.49, 770.941, 0, 0, 0, 0, 0),
(10807, 9, 5652.06, -4612.04, 769.91, 0, 0, 0, 0, 0),
(10807, 10, 5605.16, -4523.35, 761.301, 0, 0, 0, 0, 0),
(10807, 11, 5596.44, -4510.74, 761.037, 0, 0, 0, 0, 0),
(10807, 12, 5578.46, -4501.28, 758.607, 0, 0, 0, 0, 0),
(10807, 13, 5546.2, -4498.32, 757.152, 0, 0, 0, 0, 0),
(10807, 14, 5536.28, -4498.46, 756.273, 0, 0, 0, 0, 0),
(10807, 15, 5548.03, -4498.12, 757.283, 0, 0, 0, 0, 0),
(10807, 16, 5580.57, -4501.62, 758.791, 0, 0, 0, 0, 0),
(10807, 17, 5596.8, -4510.74, 761.013, 0, 0, 0, 0, 0),
(10807, 18, 5607.1, -4525.25, 761.14, 0, 0, 0, 0, 0),
(10807, 19, 5652.85, -4611.9, 769.809, 0, 0, 0, 0, 0),
(10807, 20, 5663.82, -4632.54, 770.918, 0, 0, 0, 0, 0),
(10807, 21, 5688.06, -4666.14, 775.173, 0, 0, 0, 0, 0),
(10807, 22, 5701.32, -4688.96, 779.968, 0, 0, 0, 0, 0),
(10807, 23, 5716.02, -4709.93, 780.711, 0, 0, 0, 0, 0),
(10807, 24, 5732.58, -4729.74, 776.94, 0, 0, 0, 0, 0),
(10807, 25, 5743.5, -4739.83, 776.143, 0, 0, 0, 0, 0),
(10807, 26, 5768.83, -4750.62, 776.265, 0, 0, 0, 0, 0),
(10807, 27, 5791.36, -4756.39, 776.534, 0, 0, 0, 0, 0),
(10807, 28, 5800.65, -4754.66, 775.339, 0, 0, 0, 0, 0),
(10807, 29, 5810.53, -4747.72, 770.679, 0, 0, 0, 0, 0),
(10807, 30, 5825.56, -4722.8, 761.2, 0, 0, 0, 0, 0),
(10807, 31, 5847.45, -4695.13, 756.06, 0, 0, 0, 0, 0),
(10807, 32, 5846.56, -4653.15, 751.855, 0, 0, 0, 0, 0),
(10807, 33, 5852.02, -4626.78, 748.715, 0, 0, 0, 0, 0),
(10807, 34, 5857.67, -4617.24, 746.566, 0, 0, 0, 0, 0),
(10807, 35, 5873.96, -4604.09, 740.28, 0, 0, 0, 0, 0),
(10807, 36, 5906.14, -4580.95, 726.465, 0, 0, 0, 0, 0),
(10807, 37, 5933.6, -4552.5, 719.467, 0, 0, 0, 0, 0),
(10807, 38, 5948.97, -4526.39, 714.178, 0, 0, 0, 0, 0),
(10807, 39, 5966, -4490.83, 706.834, 0, 0, 0, 0, 0),
(10807, 40, 5983.18, -4454.48, 707.231, 0, 0, 0, 0, 0),
(10807, 41, 6004.34, -4417.37, 710.368, 0, 0, 0, 0, 0),
(10807, 42, 6043.83, -4367.21, 715.066, 0, 0, 0, 0, 0),
(10807, 43, 6083.28, -4327.06, 725.178, 0, 0, 0, 0, 0),
(10807, 44, 6120.37, -4306.62, 731.31, 0, 0, 0, 0, 0),
(10807, 45, 6166.59, -4284.45, 744.508, 0, 0, 0, 0, 0),
(10807, 46, 6191.89, -4270.68, 738.337, 0, 0, 0, 0, 0),
(10807, 47, 6245.56, -4242.19, 736.044, 0, 0, 0, 0, 0),
(10807, 48, 6307.77, -4218.71, 722.994, 0, 0, 0, 0, 0),
(10807, 49, 6355.26, -4200.94, 713.745, 0, 0, 0, 0, 0),
(10807, 50, 6392.92, -4182.05, 703.888, 0, 0, 0, 0, 0),
(10807, 51, 6357.57, -4201.57, 713.224, 0, 0, 0, 0, 0),
(10807, 52, 6311.36, -4220.95, 723.374, 0, 0, 0, 0, 0),
(10807, 53, 6246.39, -4244.92, 735.806, 0, 0, 0, 0, 0),
(10807, 54, 6192.39, -4270.93, 738.002, 0, 0, 0, 0, 0),
(10807, 55, 6168.06, -4284.54, 744.458, 0, 0, 0, 0, 0),
(10807, 56, 6124.04, -4304.35, 731.797, 0, 0, 0, 0, 0),
(10807, 57, 6081.23, -4327.11, 724.821, 0, 0, 0, 0, 0),
(10807, 58, 6044.83, -4366.46, 715.08, 0, 0, 0, 0, 0),
(10807, 59, 6007.47, -4413.15, 710.907, 0, 0, 0, 0, 0),
(10807, 60, 5983.53, -4455.11, 707.048, 0, 0, 0, 0, 0),
(10807, 61, 5965.38, -4490.02, 706.943, 0, 0, 0, 0, 0),
(10807, 62, 5948.68, -4526.07, 714.223, 0, 0, 0, 0, 0),
(10807, 63, 5934.61, -4551.4, 719.322, 0, 0, 0, 0, 0),
(10807, 64, 5907.66, -4580.78, 725.546, 0, 0, 0, 0, 0),
(10807, 65, 5873.21, -4606.02, 740.637, 0, 0, 0, 0, 0),
(10807, 66, 5862.26, -4614.75, 744.791, 0, 0, 0, 0, 0),
(10807, 67, 5853.82, -4625.17, 748.087, 0, 0, 0, 0, 0),
(10807, 68, 5845.46, -4654.04, 752.156, 0, 0, 0, 0, 0),
(10807, 69, 5844.74, -4689.32, 755.539, 0, 0, 0, 0, 0),
(10807, 70, 5824.63, -4722.99, 761.315, 0, 0, 0, 0, 0),
(10807, 71, 5809.48, -4746.69, 770.559, 0, 0, 0, 0, 0),
(10807, 72, 5799.53, -4755.23, 775.666, 0, 0, 0, 0, 0);
-- Moved waypoints for Ursius to creature_movement_template table
-- because this NPC is unique 
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10806;
UPDATE creature SET MovementType = 2 WHERE id = 10806;
DELETE FROM creature_movement WHERE id = 41757;
DELETE FROM creature_movement_template WHERE entry = 10806;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10806, 1, 7392.47, -4863.76, 717.538, 0, 0, 0, 0, 0),
(10806, 2, 7386.98, -4854.89, 717.025, 0, 0, 0, 0, 0),
(10806, 3, 7382.2, -4849.15, 714.358, 0, 0, 0, 0, 0),
(10806, 4, 7377.91, -4843.06, 709.955, 0, 0, 0, 0, 0),
(10806, 5, 7374.17, -4833.31, 707.622, 0, 0, 0, 0, 0),
(10806, 6, 7367.56, -4826.19, 706.673, 0, 0, 0, 0, 0),
(10806, 7, 7356.6, -4819.11, 705.119, 0, 0, 0, 0, 0),
(10806, 8, 7346.57, -4817.34, 704.422, 0, 0, 0, 0, 0),
(10806, 9, 7338.89, -4814.45, 701.118, 0, 0, 0, 0, 0),
(10806, 10, 7332.93, -4808.81, 695.472, 0, 0, 0, 0, 0),
(10806, 11, 7324.25, -4803.01, 694.299, 0, 0, 0, 0, 0),
(10806, 12, 7313.4, -4808.02, 696.404, 0, 0, 0, 0, 0),
(10806, 13, 7304.99, -4811.13, 695.083, 0, 0, 0, 0, 0),
(10806, 14, 7294.66, -4812.62, 688.862, 0, 0, 0, 0, 0),
(10806, 15, 7280.04, -4809.81, 685.032, 0, 0, 0, 0, 0),
(10806, 16, 7267.66, -4804.58, 683.578, 0, 0, 0, 0, 0),
(10806, 17, 7256.03, -4799.48, 684.846, 0, 0, 0, 0, 0),
(10806, 18, 7246.93, -4792.95, 688.579, 0, 0, 0, 0, 0),
(10806, 19, 7233.74, -4783.62, 692.866, 0, 0, 0, 0, 0),
(10806, 20, 7227.48, -4781.13, 699.379, 0, 0, 0, 0, 0),
(10806, 21, 7222.56, -4779.32, 702.658, 0, 0, 0, 0, 0),
(10806, 22, 7214.65, -4774.53, 706.959, 0, 0, 0, 0, 0),
(10806, 23, 7206.99, -4768.56, 715.328, 0, 0, 0, 0, 0),
(10806, 24, 7197.63, -4766.04, 718.111, 0, 0, 0, 0, 0),
(10806, 25, 7187.17, -4766.88, 722.862, 0, 0, 0, 0, 0),
(10806, 26, 7176.04, -4767.88, 726.34, 0, 0, 0, 0, 0),
(10806, 27, 7158.39, -4772.67, 728.308, 0, 0, 0, 0, 0),
(10806, 28, 7146.15, -4775.98, 730.806, 0, 0, 0, 0, 0),
(10806, 29, 7130.09, -4779.49, 732.639, 0, 0, 0, 0, 0),
(10806, 30, 7119.01, -4778.06, 733.071, 0, 0, 0, 0, 0),
(10806, 31, 7107.81, -4778.12, 736.737, 0, 0, 0, 0, 0),
(10806, 32, 7093.41, -4773.02, 740.822, 0, 0, 0, 0, 0),
(10806, 33, 7080.23, -4769.07, 743.451, 0, 0, 0, 0, 0),
(10806, 34, 7063.14, -4761.69, 744.717, 0, 0, 0, 0, 0),
(10806, 35, 7048.81, -4751.61, 741.236, 0, 0, 0, 0, 0),
(10806, 36, 7040.23, -4731.74, 734.484, 0, 0, 0, 0, 0),
(10806, 37, 7033.46, -4721.02, 734.604, 0, 0, 0, 0, 0),
(10806, 38, 7022.16, -4709.08, 735.978, 0, 0, 0, 0, 0),
(10806, 39, 7013.91, -4698.55, 739.685, 0, 0, 0, 0, 0),
(10806, 40, 7009.08, -4688.44, 743.001, 0, 0, 0, 0, 0),
(10806, 41, 7010.87, -4675.89, 746.968, 0, 0, 0, 0, 0),
(10806, 42, 7017.92, -4665.31, 752.719, 0, 0, 0, 0, 0),
(10806, 43, 7020.02, -4651.64, 756.594, 0, 0, 0, 0, 0),
(10806, 44, 7012.05, -4647.55, 755.447, 0, 0, 0, 0, 0),
(10806, 45, 7002.2, -4644.09, 751.775, 0, 0, 0, 0, 0),
(10806, 46, 6993.5, -4640.75, 749.158, 0, 0, 0, 0, 0),
(10806, 47, 6980.03, -4632, 750.785, 0, 0, 0, 0, 0),
(10806, 48, 6976.06, -4642.05, 748.789, 0, 0, 0, 0, 0),
(10806, 49, 6994.9, -4644.68, 749.273, 0, 0, 0, 0, 0),
(10806, 50, 7004.91, -4647.66, 753.137, 0, 0, 0, 0, 0),
(10806, 51, 7013.32, -4650.74, 755.831, 0, 0, 0, 0, 0),
(10806, 52, 7025.52, -4660.47, 755.501, 0, 0, 0, 0, 0),
(10806, 53, 7025.86, -4674.66, 750.418, 0, 0, 0, 0, 0),
(10806, 54, 7024.98, -4684.34, 748.902, 0, 0, 0, 0, 0),
(10806, 55, 7017.76, -4686.15, 747.49, 0, 0, 0, 0, 0),
(10806, 56, 7010.29, -4689.55, 742.97, 0, 0, 0, 0, 0),
(10806, 57, 7012.05, -4702.11, 737.811, 0, 0, 0, 0, 0),
(10806, 58, 7016.5, -4714.78, 735.262, 0, 0, 0, 0, 0),
(10806, 59, 7020.46, -4724.02, 736.569, 0, 0, 0, 0, 0),
(10806, 60, 7027.68, -4739.57, 739.237, 0, 0, 0, 0, 0),
(10806, 61, 7034.47, -4752.03, 742.704, 0, 0, 0, 0, 0),
(10806, 62, 7045.98, -4764.76, 746.637, 0, 0, 0, 0, 0),
(10806, 63, 7058.23, -4774.53, 750.034, 0, 0, 0, 0, 0),
(10806, 64, 7068.01, -4778.17, 749.764, 0, 0, 0, 0, 0),
(10806, 65, 7078.76, -4779.57, 747.332, 0, 0, 0, 0, 0),
(10806, 66, 7092.94, -4779.63, 744.443, 0, 0, 0, 0, 0),
(10806, 67, 7105.6, -4776.52, 737.177, 0, 0, 0, 0, 0),
(10806, 68, 7115.29, -4775.7, 733.084, 0, 0, 0, 0, 0),
(10806, 69, 7130.93, -4776.73, 731.908, 0, 0, 0, 0, 0),
(10806, 70, 7153.58, -4774.45, 729.665, 0, 0, 0, 0, 0),
(10806, 71, 7164.17, -4770.8, 727.533, 0, 0, 0, 0, 0),
(10806, 72, 7174.96, -4761.62, 727.535, 0, 0, 0, 0, 0),
(10806, 73, 7184.6, -4760.66, 724.858, 0, 0, 0, 0, 0),
(10806, 74, 7198.73, -4761.51, 719.09, 0, 0, 0, 0, 0),
(10806, 75, 7212.3, -4758.14, 717.17, 0, 0, 0, 0, 0),
(10806, 76, 7224.75, -4755.78, 710.305, 0, 0, 0, 0, 0),
(10806, 77, 7228.49, -4758.9, 707.014, 0, 0, 0, 0, 0),
(10806, 78, 7223.53, -4769.22, 702.701, 0, 0, 0, 0, 0),
(10806, 79, 7220.49, -4775.61, 703.898, 0, 0, 0, 0, 0),
(10806, 80, 7216.82, -4782.13, 703.347, 0, 0, 0, 0, 0),
(10806, 81, 7213.77, -4789.75, 700.667, 0, 0, 0, 0, 0),
(10806, 82, 7217.39, -4793.82, 697.248, 0, 0, 0, 0, 0),
(10806, 83, 7220, -4797.1, 694.03, 0, 0, 0, 0, 0),
(10806, 84, 7229.3, -4799.91, 690.164, 0, 0, 0, 0, 0),
(10806, 85, 7247.28, -4804.95, 686.025, 0, 0, 0, 0, 0),
(10806, 86, 7270.05, -4806.01, 683.494, 0, 0, 0, 0, 0),
(10806, 87, 7286.59, -4803.12, 683.779, 0, 0, 0, 0, 0),
(10806, 88, 7291.67, -4814.98, 688.04, 0, 0, 0, 0, 0),
(10806, 89, 7297.18, -4814.11, 690.571, 0, 0, 0, 0, 0),
(10806, 90, 7305.28, -4812.83, 695.358, 0, 0, 0, 0, 0),
(10806, 91, 7313.95, -4810.56, 696.792, 0, 0, 0, 0, 0),
(10806, 92, 7316.1, -4815.38, 699.242, 0, 0, 0, 0, 0),
(10806, 93, 7312.7, -4823.64, 702.979, 0, 0, 0, 0, 0),
(10806, 94, 7314.2, -4831.71, 706.757, 0, 0, 0, 0, 0),
(10806, 95, 7318.58, -4832.64, 709.229, 0, 0, 0, 0, 0),
(10806, 96, 7325.25, -4833.66, 715.018, 0, 0, 0, 0, 0),
(10806, 97, 7332.31, -4830.25, 714.763, 0, 0, 0, 0, 0),
(10806, 98, 7342.48, -4825.56, 709.241, 0, 0, 0, 0, 0),
(10806, 99, 7347.32, -4823.64, 707.8, 0, 0, 0, 0, 0),
(10806, 100, 7356.01, -4821.47, 705.914, 0, 0, 0, 0, 0),
(10806, 101, 7367.44, -4826.87, 707.032, 0, 0, 0, 0, 0),
(10806, 102, 7372.68, -4835.88, 709.016, 0, 0, 0, 0, 0),
(10806, 103, 7378.35, -4843.68, 710.309, 0, 0, 0, 0, 0),
(10806, 104, 7382.27, -4850.01, 715.1, 0, 0, 0, 0, 0),
(10806, 105, 7386.34, -4856.25, 717.67, 0, 0, 0, 0, 0);
-- Added missing equipment to NPC 10196 (General Cobaltann) and changed its rank to rare elite
-- Added missing spawns position and added them to a pool
UPDATE creature_template SET Rank = 2, EquipmentTemplateId = 117 WHERE Entry = 10196;
DELETE FROM `creature_equip_template` WHERE `entry`=117;
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('117','11317','0','0');

DELETE FROM creature WHERE guid IN (54961,55052);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(54961, 10196, 1, 1, 0, 0, 6153.17, -4164.74, 797.163, 1.70246, 43200, 5, 0, 8097, 7860, 0, 1),
(55052, 10196, 1, 1, 0, 0, 6189.21, -4553.49, 714.408, 1.57288, 43200, 5, 0, 8097, 7860, 0, 1);
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE id = 10196;
DELETE FROM pool_creature_template WHERE id = 10196;
INSERT INTO pool_creature_template VALUES
(10196, 25482, 0, 'Winterspring - General Cobaltann');
DELETE FROM pool_template WHERE entry = 25482;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25482, 1, 'Winterspring - General Cobaltann');

-- Classic [1026]
-- DM:N 
-- Wandering Eye of Kilrogg - new model
-- Wandering Eye of Kilrogg - update move / runspeed
-- Guard Mol'dar, Slip'kik, Fengus - update move / runspeed
UPDATE creature_template SET SpeedWalk = 2 WHERE Entry = 14321;
UPDATE creature_template SET SpeedWalk = 2 WHERE Entry = 14323;
UPDATE creature_template SET SpeedWalk = 2 WHERE Entry = 14326;
UPDATE creature_template SET ModelId1 = 14430, SpeedWalk = (10 / 2.5), SpeedRun = (10 / 7) WHERE Entry = 14386;  

-- Classic [1025]
-- Gravis Slipknot - an alternative model caused this guy to be invisible
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 2582;

-- Classic [1024]
-- Added missing equipment to NPC 11141 (Spirit of Trey Lightforge) in Felwood  
UPDATE creature_template SET EquipmentTemplateId = 118 WHERE Entry = 11141;
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('118','13316','0','0');

-- Classic [1022]
-- Crushridge Plunderer are tiny, tiny creatures
UPDATE creature_template SET Scale = 0 WHERE Entry = 2416; 

-- Classic [1021]
-- STV - Stranglethorn Fever
-- Description was given twice, a proper objective should be given instead.
UPDATE quest_template SET Objectives ='Seek out Witch Doctor Unbagwa and have him summon Mokk the Savage. Bring the Heart of Mokk to Fin Fizracket.' WHERE entry = 348;

-- Classic [1020]
-- LBRS - Chamber of Battle
DELETE FROM creature WHERE guid IN (45813, 45814, 45815, 45816, 45817, 45758, 45759, 45812, 45822, 45821, 45820, 45811, 45819, 45760, 45809, 45761, 45810, 45818);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(45813, 9692, 229, 1, 0, 0, -37.5607, -521.641, 87.7160, 3.45575, 7200, 0, 0, 8613, 0, 0, 0),
(45814, 9696, 229, 1, 0, 0, -36.2227, -523.632, 87.4320, 3.56047, 7200, 0, 0, 2784, 0, 0, 0),
(45815, 9583, 229, 1, 0, 0, -53.6383, -442.827, 78.2854, 4.70957, 7200, 0, 0, 8883, 0, 0, 2),
(45816, 9693, 229, 1, 0, 0, -72.4302, -520.961, 82.3316, 3.40339, 7200, 0, 0, 7107, 2369, 0, 0),
(45817, 9268, 229, 1, 0, 0, -77.5619, -516.932, 81.4632, 4.52040, 7200, 0, 0, 8613, 0, 0, 0),
(45758, 9696, 229, 1, 0, 0, -47.1127, -480.153, 77.9991, 2.82743, 7200, 0, 0, 2784, 0, 0, 0),
(45759, 9692, 229, 1, 0, 0, -49.4956, -482.156, 77.9991, 2.37365, 7200, 0, 0, 8613, 0, 0, 0),
(45812, 9696, 229, 1, 0, 0, -51.8879, -483.818, 77.9991, 1.88496, 7200, 0, 0, 2784, 0, 0, 0),
(45822, 9693, 229, 1, 0, 0, -57.4802, -487.082, 77.9991, 3.22886, 7200, 0, 0, 7107, 2369, 0, 0),
(45821, 9583, 229, 1, 0, 0, -58.8099, -481.005, 77.9991, 4.41568, 7200, 0, 0, 8883, 0, 0, 0),
(45820, 9268, 229, 1, 0, 0, -63.3201, -485.629, 77.9991, 0.85521, 7200, 0, 0, 8613, 0, 0, 0),
(45811, 9583, 229, 1, 0, 0, -56.9907, -427.546, 77.8323, 1.44862, 7200, 0, 0, 8883, 0, 0, 0),
(45819, 9583, 229, 1, 0, 0, -43.5588, -515.171, 88.5866, 3.70166, 7200, 0, 0, 8883, 0, 0, 0),
(45760, 9268, 229, 1, 0, 0, -49.6838, -514.303, 88.3960, 5.44524, 7200, 0, 0, 8613, 0, 0, 0),
(45809, 9693, 229, 1, 0, 0, -47.7750, -520.564, 87.5643, 1.30227, 7200, 0, 0, 7107, 2369, 0, 0),
(45761, 9696, 229, 1, 0, 0, -38.1504, -519.232, 88.0403, 3.36848, 7200, 0, 0, 2784, 0, 0, 0),
(45810, 9216, 229, 1, 0, 0, -79.4547, -523.615, 82.6267, 0.80285, 7200, 0, 0, 14355, 0, 0, 0),
(45818, 9216, 229, 1, 0, 0, -49.0348, -427.765, 77.8322, 1.64061, 7200, 0, 0, 14355, 0, 0, 0);
DELETE FROM creature_movement WHERE id = 45815; 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(45815, 1, -53.7135, -469.510, 77.8413, 0, 0, 0, 0, 0),
(45815, 2, -57.2509, -477.311, 77.9158, 0, 0, 0, 0, 0),
(45815, 3, -61.6685, -480.695, 77.9158, 0, 0, 0, 0, 0),
(45815, 4, -68.0847, -485.191, 77.9158, 0, 0, 0, 0, 0),
(45815, 5, -76.1309, -488.445, 77.9158, 0, 0, 0, 0, 0),
(45815, 6, -78.7550, -497.510, 77.9866, 0, 0, 0, 0, 0),
(45815, 7, -77.5000, -506.460, 79.4722, 0, 0, 0, 0, 0),
(45815, 8, -73.2358, -515.496, 81.0900, 0, 0, 0, 0, 0),
(45815, 9, -65.7134, -519.569, 82.9049, 0, 0, 0, 0, 0),
(45815, 10, -57.8619, -517.623, 86.6360, 0, 0, 0, 0, 0),
(45815, 11, -50.2694, -512.905, 88.2413, 0, 0, 0, 0, 0),
(45815, 12, -47.6077, -508.537, 88.6223, 0, 0, 0, 0, 0),
(45815, 13, -43.8517, -499.036, 90.1431, 0, 0, 0, 0, 0),
(45815, 14, -33.9322, -488.698, 90.6663, 0, 0, 0, 0, 0),
(45815, 15, -43.8517, -499.036, 90.1431, 0, 0, 0, 0, 0),
(45815, 16, -47.6077, -508.537, 88.6223, 0, 0, 0, 0, 0),
(45815, 17, -50.2694, -512.905, 88.2413, 0, 0, 0, 0, 0),
(45815, 18, -57.8619, -517.623, 86.6360, 0, 0, 0, 0, 0),
(45815, 19, -65.7134, -519.569, 82.9049, 0, 0, 0, 0, 0),
(45815, 20, -73.2358, -515.496, 81.0900, 0, 0, 0, 0, 0),
(45815, 21, -77.5000, -506.460, 79.4722, 0, 0, 0, 0, 0),
(45815, 22, -78.7550, -497.510, 77.9866, 0, 0, 0, 0, 0),
(45815, 23, -76.1309, -488.445, 77.9158, 0, 0, 0, 0, 0),
(45815, 24, -68.0847, -485.191, 77.9158, 0, 0, 0, 0, 0),
(45815, 25, -61.6685, -480.695, 77.9158, 0, 0, 0, 0, 0),
(45815, 26, -57.2509, -477.311, 77.9158, 0, 0, 0, 0, 0),
(45815, 27, -53.7135, -469.510, 77.8413, 0, 0, 0, 0, 0),
(45815, 28, -53.3688, -431.997, 78.2854, 0, 0, 0, 0, 0);

-- Classic [1019]
-- Fixed respawn time of herbs in Dire Maul. Set respawn time to 40 min instead of 3
UPDATE gameobject SET spawntimesecs = 40 * 60 WHERE map = 429 AND id IN (176584, 142145, 142144);

-- Classic [1013]
-- BWL - Swingtimers
UPDATE creature_template SET MeleeBaseAttackTime = 4000, RangedBaseAttackTime = 4000 WHERE Entry = 12435;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14456;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12557;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12422;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12420;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12416;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 13996;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 13020;
UPDATE creature_template SET MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 12467;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12463;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12465;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12464;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12468;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14022;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14024;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14025;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14023;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12017;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12459;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12458;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12457;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 16604;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12461;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12460;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14401;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11983;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14601;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11981;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14020;
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11583;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 14605;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14668;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103 WHERE Entry = 14261;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14262;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14263;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14264;
UPDATE creature_template SET FactionAlliance = 103, FactionHorde = 103 WHERE Entry = 14302;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 13976;

-- Classic [1012]
-- Razorgore's brood
UPDATE gameobject SET animprogress = 100 WHERE id = 177807;
UPDATE gameobject_template SET faction = 14, flags = 0 WHERE entry = 177807; 

-- Classic [1011]
-- UBRS door
UPDATE gameobject_template SET faction = 114 WHERE entry = 175533;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175532;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175531;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175530;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175529;
UPDATE gameobject_template SET faction = 114 WHERE entry = 175528;
UPDATE gameobject_template SET faction = 114 WHERE entry = 164725;

-- Classic [1010]
-- Mr. Vaelastrasz' doors
UPDATE gameobject SET animprogress = 100 WHERE id = 179364;  
UPDATE gameobject SET animprogress = 100 WHERE id = 176965;  
UPDATE gameobject SET animprogress = 100 WHERE id = 176964;
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 179364;  
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 176965;  
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 176964;  

-- Classic [1008]
-- Broodlord Lashlayer's door 
UPDATE gameobject SET animprogress = 100 WHERE id = 179365;  
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 179365; 

-- Classic [1007]
-- Lord Victor Whatever's doors
UPDATE gameobject SET animprogress = 100 WHERE id = 179117;  
UPDATE gameobject SET animprogress = 100 WHERE id = 176966; 
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 179117;  
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 176966; 

-- Classic [1006] 
-- Chromaggus' door 
UPDATE gameobject SET orientation = 5.340709 WHERE id = 179148;
UPDATE gameobject SET animprogress = 100 WHERE id = 179116;
UPDATE gameobject_template SET flags = 32, size = 5 WHERE entry = 179148;
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 179116;

-- Classic [1005] 
-- Faction templates and swing timers of AQ40's inhabitants! 
UPDATE creature_template SET MinLevel = 61 WHERE Entry = 11338;
UPDATE creature_template SET MinLevel = 60 WHERE Entry = 11831;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15264;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15262;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15263;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15502;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15504;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, RangedBaseAttackTime = 2000 WHERE Entry = 15503;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15247;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15233;
UPDATE creature_template SET MinLevel = 61, FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15230;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15622;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15544;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 15621;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15543;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15511;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15516;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1600, RangedBaseAttackTime = 1600 WHERE Entry = 15984;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15300;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15229;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15510;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0, MeleeBaseAttackTime = 2000 WHERE Entry = 15630;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15962;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15240;
UPDATE creature_template SET MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15299;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15235;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15236;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1600, RangedBaseAttackTime = 1600 WHERE Entry = 15249;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15509;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15277;
UPDATE creature_template SET MinLevel = 60, RangedBaseAttackTime = 2000 WHERE Entry = 15316;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15275;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15276;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 63, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15963;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15250;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0 WHERE Entry = 15246;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15252;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15312;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15311;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2700, RangedBaseAttackTime = 2700 WHERE Entry = 15517;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15718;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE Entry = 15957;
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15380;
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15379;
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15378;
UPDATE creature_template SET FactionAlliance = 370, FactionHorde = 370, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15589;
UPDATE creature_template SET Scale = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15727;
UPDATE creature_template SET FactionAlliance = 370, FactionHorde = 370 WHERE Entry = 15896;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15809;
UPDATE creature_template SET MinLevel = 60, ModelId1 = 15948, FactionAlliance = 370, FactionHorde = 370, Scale = 0, MeleeBaseAttackTime = 2000 WHERE Entry = 15334;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15725;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 1000, RangedBaseAttackTime = 1000 WHERE Entry = 15726;
UPDATE creature_template SET FactionAlliance = 370, FactionHorde = 370, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15728;
UPDATE creature_template SET MinLevel = 60, FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15802;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 63, Scale = 0 WHERE Entry = 15904;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 63, Scale = 0 WHERE Entry = 15910;

-- Classic [1004] 
-- Faction templates and swing timers of AQ20's inhabitants! 
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15324;
UPDATE creature_template SET FactionAlliance = 15, FactionHorde = 15, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15168;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, RangedBaseAttackTime = 1500 WHERE Entry = 15343;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15327;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15325;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0, MeleeBaseAttackTime = 2000 WHERE Entry = 15348;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15344;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15387;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15391;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15392;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15390;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15389;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15386;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15385;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15388;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15341;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 800, RangedBaseAttackTime = 800 WHERE Entry = 15323;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15320;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, Scale = 0, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 15370;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15964;
UPDATE creature_template SET FactionAlliance = 148, FactionHorde = 148, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15335;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, Scale = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15521;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15333;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 15336, RangedBaseAttackTime = 15336 WHERE Entry = 15336;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15319;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15318;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15369;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310 WHERE Entry = 15934;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15555;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 15339;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE Entry = 15590;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15355;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15537;
UPDATE creature_template SET MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 15538;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15461;
UPDATE creature_template SET FactionAlliance = 310, FactionHorde = 310, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15462;
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15338;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 15340;
UPDATE creature_template SET FactionAlliance = 1878, FactionHorde = 1878, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200 WHERE Entry = 15505;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15514;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15507;

-- Classic [1003]
-- Moam was slightly moved.
UPDATE creature SET position_x = -8845.518, position_y = 2260.144, position_z = 21.46967, orientation = 4.642576 WHERE id = 15340;

-- Classic [1002]
-- AQ40
UPDATE creature_template SET Scale = 0 WHERE Entry = 15543;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15511;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15544;
-- AQ20
UPDATE creature_template SET Scale = 0 WHERE Entry = 15168;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15343;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15461;
UPDATE creature_template SET Scale = 0 WHERE Entry = 15462;

-- Classic [0997]
-- Fixed gossip menu of NPC 3430 (Mangletooth) in the Barrens
UPDATE creature_template SET GossipMenuId = 2944 WHERE entry = 3430;
DELETE FROM gossip_menu WHERE entry = 2944;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2944, 3656, 0, 0),
(2944, 3670, 0, 1012);
DELETE FROM conditions WHERE condition_entry = 1012; 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1012, 8, 5052, 0);

-- Classic [0996]
-- Fixed several graveyards for Horde and Alliance accross the world
-- Darkshore : Horde should not respawn in Ashenvale
DELETE FROM game_graveyard_zone WHERE id = 512 AND ghost_zone = 148 AND faction = 67;
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 469 AND ghost_zone = 148;
-- Undercity : graveyard missing
DELETE FROM game_graveyard_zone WHERE ghost_zone = 1497;
INSERT INTO game_graveyard_zone VALUES
(96, 1497, 67),
(853, 1497, 469);
-- Hinterlands : Alliance should be able to respawn at Overlook Cliffs
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 789;
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 349;
-- Ironforge
-- Alliance should respawn at entrance
DELETE FROM game_graveyard_zone WHERE id = 852; -- Dun Morogh, Gates of Ironforge
INSERT INTO game_graveyard_zone VALUES
(852, 1, 469), -- alliance dies around Ironforge
(852, 1537, 469); -- alliance dies inside Ironforge
-- Horde should respawn at far-east graveyard
DELETE FROM game_graveyard_zone WHERE id = 1472; -- Dun Morogh, Dun Morogh, East Road
INSERT INTO game_graveyard_zone VALUES
(1472, 1, 0),
(1472, 1537, 67);

-- Classic [0995]
-- Fixed quest 7838 (Arean Grand Master) in Stranglethorn Vale
UPDATE quest_template SET Method = 2 WHERE entry = 7838;

-- Classic [0992]
-- Added missing object 181073 (Fragrant Cauldron) for Love in the Air event
-- Linked quest 9029 (A bubbling cauldron) to it
DELETE FROM gameobject_involvedrelation WHERE quest = 9029;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES
(181073, 9029);
DELETE FROM gameobject_questrelation WHERE quest = 9029;
INSERT INTO gameobject_questrelation  (id, quest) VALUES
(181073, 9029);
DELETE FROM gameobject_template WHERE entry = 181073;
INSERT INTO gameobject_template (entry, TYPE, displayId, NAME, IconName, castBarCaption, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(181073,2,216,'Fragrant Cauldron','','',0,0,1,93,7244,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM gameobject WHERE guid = 65917;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(65917, 181073, 0, 1, 87.6351, -1724.96, 220.192, 1.88655, 0, 0, 0.809484, 0.587141, 25, 100, 1);
DELETE FROM game_event_gameobject WHERE guid = 65917;
INSERT INTO game_event_gameobject (guid, event) VALUES
(65917, 8);
UPDATE quest_template SET MinLevel = 1, QuestLevel = -1 WHERE entry = 9029;

-- Classic [0991]
-- Fixed quest 5525 (Free Knot!) and its repeatable follow up 7429 (Free Knot!) in Dire Maul North
DELETE FROM dbscripts_on_quest_end WHERE id = 5525;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5525, 0, 0, 0, 0, 0, 0, 0, 2000000543, 0, 0, 0, 0, 0, 0, 0, ''),
(5525, 0, 29, 3, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'remove flag'),
(5525, 1, 9, 65867, 43200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn cache'),
(5525, 2, 13, 0, 0, 179511, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'remove ball and chains'),
(5525, 4, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'run on'),
(5525, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500.42, 540.966, -25.3846, 2.72271, 'WP movement'),
(5525, 15, 18, 0, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn');
UPDATE quest_template SET OfferRewardText = 'Oh, thank you for freeing me! You - ranked number one. Everyone else - ranked number two or lower.$B$BI knew my life was destined for more than just being an appetizer to some ogre!', CompleteScript = 5525 WHERE entry = 5525;
UPDATE quest_template SET RewRepFaction1 = 169, RewRepValue1 = 350, CompleteScript = 5525 WHERE entry = 7429;
DELETE FROM db_script_string WHERE entry = 2000000543;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000543, "$N, I'll make sure all my friends in the Cartel know that you've saved my life today. Here - I'm going to need to be able to travel light, so please help yourself to my cache of tailoring and leatherworking supplies! Thanks again - see ya!", 0, 0, 0, 4, NULL);
-- gossip updates
DELETE FROM gossip_menu WHERE entry = 5668;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5668, 6875, 0, 0);
DELETE FROM gossip_menu_option WHERE (menu_id = 5668) OR (menu_id = 5667 AND id = 0);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(5667, 0, 0, 'So, I found this shackle key...', 1, 1, 5668, 0, 0, 0, 0, '', 1011),
(5668, 0, 0, 'I guess so!', 1, 1, -1, 0, 0, 0, 0, '', 0);
UPDATE gossip_menu_option SET action_menu_id = 5716 WHERE menu_id = 5667 AND id = 1;
DELETE FROM conditions WHERE condition_entry = 1011;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1011, 2, 18250, 1); -- Has gordok shackles key
-- missing object added
DELETE FROM gameobject WHERE guid = 65867;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(65867,179501,429, 1, 583.60, 523.44, -25.40, 3.1848, 0, 0, 0.861341, -0.508028, -43200, 100, 1);
UPDATE gameobject SET spawntimesecs = 43200 WHERE id = 179511;
-- quest updates
UPDATE quest_template SET RequiredRaces = 0, EndText = 'Return to Knot Thimblejack' WHERE entry = 5518; -- q. must be available for all races
UPDATE quest_template SET PrevQuestId = 5518, EndText = 'Return to Knot Thimblejack' WHERE entry = 5519; -- this one available only after main finished 
UPDATE quest_template SET EndText = 'Return to Knot Thimblejack' WHERE entry = 5525;


