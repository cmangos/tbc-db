-- delete extras which don't belong
DELETE FROM creature WHERE guid=94444; -- Ethereum Nullifier
DELETE FROM creature WHERE guid IN (150224,150240); -- Ethereum Jailor

-- repositioning various spawns based on retail data
UPDATE creature SET position_x=3982.25, position_y=2107.69, position_z=254.613, orientation=4.57354 WHERE guid=67506;
UPDATE creature SET position_x=4374.87, position_y=2044.51, position_z=109.268, orientation=1.50158, spawndist=3, MovementType=1 WHERE guid=94445;
UPDATE creature SET position_x=4152.44, position_y=1828.78, position_z=154.089, orientation=4.09622, spawndist=3, MovementType=1 WHERE guid=94448;
UPDATE creature SET position_x=3763.17, position_y=1622.58, position_z=132.503, orientation=3.57386, spawndist=3, MovementType=1 WHERE guid=94453;
UPDATE creature SET position_x=3749.03, position_y=1713.25, position_z=145.137, orientation=4.4404, spawndist=3, MovementType=1 WHERE guid=94455;
UPDATE creature SET position_x=3741.14, position_y=1735.62, position_z=144.786, orientation=1.73354, spawndist=3, MovementType=1 WHERE guid=94456;
UPDATE creature SET position_x=3665.18, position_y=1787.97, position_z=126.666, orientation=0.546281, spawndist=3, MovementType=1 WHERE guid=94458;
UPDATE creature SET position_x=3577.29, position_y=1993.4, position_z=98.9458, orientation=3.74287, spawndist=3, MovementType=1 WHERE guid=94468;
UPDATE creature SET spawndist=3, MovementType=1 WHERE guid=94442;
UPDATE creature SET position_x=4300.13, position_y=2070.15, position_z=134.678, orientation=2.51351, spawndist=3, MovementType=1 WHERE guid=94446;
UPDATE creature SET position_x=4311.02, position_y=2014.76, position_z=126.549, orientation=1.80172, spawndist=3, MovementType=1 WHERE guid=94447;
UPDATE creature SET position_x=4307.03, position_y=1880.67, position_z=128.491, orientation=2.50192, spawndist=3, MovementType=1 WHERE guid=94443;
UPDATE creature SET position_x=4312.23, position_y=1761.16, position_z=112.745, orientation=6.00529, spawndist=3, MovementType=1 WHERE guid=94449;
UPDATE creature SET position_x=4239.98, position_y=1795.55, position_z=133.811, orientation=5.64261, spawndist=3, MovementType=1 WHERE guid=94450;
UPDATE creature SET position_x=3747.18, position_y=1673.27, position_z=138.093, orientation=5.64007, spawndist=3, MovementType=1 WHERE guid=94454;
UPDATE creature SET position_x=3619.91, position_y=1857.34, position_z=115.133, orientation=5.08854, spawndist=3, MovementType=1 WHERE guid=94460;
UPDATE creature SET position_x=3602.97, position_y=1801.78, position_z=108.854, orientation=6.11547, spawndist=3, MovementType=1 WHERE guid=94466;
UPDATE creature SET position_x=3567.62, position_y=1811.64, position_z=108.332, orientation=3.79955, spawndist=3, MovementType=1 WHERE guid=94459;
UPDATE creature SET position_x=3590.18, position_y=1970.57, position_z=105.231, orientation=3.36312, spawndist=3, MovementType=1 WHERE guid=94467;
UPDATE creature SET position_x=3614.46, position_y=2031.59, position_z=107.697, orientation=5.5932, spawndist=3, MovementType=1 WHERE guid=94462;
UPDATE creature SET position_x=3643.61, position_y=2149.03, position_z=117.667, orientation=4.90404, spawndist=3, MovementType=1 WHERE guid=94464;
UPDATE creature SET position_x=3720.79, position_y=2213.99, position_z=128.925, orientation=5.68341, spawndist=3, MovementType=1 WHERE guid=94471;
UPDATE creature SET position_x=3716.05, position_y=2253.84, position_z=122.973, orientation=3.82649, spawndist=3, MovementType=1 WHERE guid=94473;
UPDATE creature SET position_x=3654.18, position_y=2277.88, position_z=104.078, orientation=3.91869, spawndist=3, MovementType=1 WHERE guid=94474;
UPDATE creature SET position_x=3653.67, position_y=2374.92, position_z=87.4142, orientation=3.98015, spawndist=3, MovementType=1 WHERE guid=94441;

-- add missing spawns
DELETE FROM creature WHERE guid BETWEEN 170062 AND 170117;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(170062, 18869, 530, 1, 0, 0, 4052.78, 1849.49, 223.171, 2.11077, 300, 300, 5, 0, 0, 0, 0, 1),

(170063, 18870, 530, 1, 0, 0, 4138.5, 1975.85, 218.983, 4.1867, 300, 300, 5, 0, 0, 0, 0, 1),
(170064, 18870, 530, 1, 0, 0, 4070.51, 1872.88, 229.439, 0.447485, 300, 300, 5, 0, 0, 0, 0, 1),
(170065, 18870, 530, 1, 0, 0, 4029.12, 1831.75, 222.798, 1.51511, 300, 300, 5, 0, 0, 0, 0, 1),

(170066, 20607, 530, 1, 0, 0, 4382.85, 2047.47, 105.927, 5.6643, 300, 300, 5, 0, 0, 0, 0, 1),
(170067, 20607, 530, 1, 0, 0, 4320.1, 1849.86, 116.607, 1.22403, 300, 300, 5, 0, 0, 0, 0, 1),
(170068, 20607, 530, 1, 0, 0, 3753.44, 1589.45, 122.428, 5.63285, 300, 300, 5, 0, 0, 0, 0, 1),
(170069, 20607, 530, 1, 0, 0, 3682.08, 1585.53, 111.953, 3.29736, 300, 300, 5, 0, 0, 0, 0, 1),
(170070, 20607, 530, 1, 0, 0, 3621.6, 2114.08, 106.267, 5.36624, 300, 300, 5, 0, 0, 0, 0, 1),

(170071, 22822, 530, 1, 0, 0, 4348.13, 2042.23, 120.491, 3.67126, 300, 300, 3, 0, 0, 0, 0, 1),
(170072, 22822, 530, 1, 0, 0, 4358.7, 1960.71, 105.904, 5.60509, 300, 300, 3, 0, 0, 0, 0, 1),
(170073, 22822, 530, 1, 0, 0, 4316.64, 1910.11, 122.362, 1.60402, 300, 300, 3, 0, 0, 0, 0, 1),
(170074, 22822, 530, 1, 0, 0, 4225.16, 2000.86, 141.351, 3.39415, 300, 300, 3, 0, 0, 0, 0, 1),
(170075, 22822, 530, 1, 0, 0, 4250.92, 1828.76, 142.649, 1.04814, 300, 300, 3, 0, 0, 0, 0, 1),
(170076, 22821, 530, 1, 0, 0, 4127.54, 2191.2, 180.159, 1.2302, 300, 300, 3, 0, 0, 0, 0, 1),
(170077, 22822, 530, 1, 0, 0, 4218.89, 1743.76, 127.483, 6.06759, 300, 300, 3, 0, 0, 0, 0, 1),
(170078, 22822, 530, 1, 0, 0, 4244.9, 1691.88, 117.531, 4.85417, 300, 300, 3, 0, 0, 0, 0, 1),
(170079, 22822, 530, 1, 0, 0, 4169.81, 1793.31, 140.687, 6.10552, 300, 300, 3, 0, 0, 0, 0, 1),
(170080, 22822, 530, 1, 0, 0, 4079.55, 1782.43, 147.796, 0.969515, 300, 300, 3, 0, 0, 0, 0, 1),
(170081, 22821, 530, 1, 0, 0, 4152.53, 2178.28, 167.079, 1.2166, 300, 300, 3, 0, 0, 0, 0, 1),
(170082, 22822, 530, 1, 0, 0, 3693.85, 1572.44, 110.031, 4.93755, 300, 300, 3, 0, 0, 0, 0, 1),
(170083, 22822, 530, 1, 0, 0, 3643.14, 2395.29, 82.1984, 5.89162, 300, 300, 3, 0, 0, 0, 0, 1),
(170084, 22822, 530, 1, 0, 0, 4228.86, 2346.23, 139.617, 1.71587, 300, 300, 3, 0, 0, 0, 0, 1),
(170085, 22822, 530, 1, 0, 0, 4206.48, 2399.26, 114.011, 5.42313, 300, 300, 3, 0, 0, 0, 0, 1),
(170086, 22822, 530, 1, 0, 0, 4230.08, 2447.7, 97.2559, 0.0166, 300, 300, 3, 0, 0, 0, 0, 1),
(170087, 22822, 530, 1, 0, 0, 4266.39, 2424.08, 105.79, 5.1804, 300, 300, 3, 0, 0, 0, 0, 1),

(170088, 22821, 530, 1, 0, 0, 4229.52, 1928.51, 144.285, 2.6325, 300, 300, 3, 0, 0, 0, 0, 1),
(170089, 22821, 530, 1, 0, 0, 4268.9, 2368.24, 120.335, 0.614006, 300, 300, 3, 0, 0, 0, 0, 1),
(170090, 22821, 530, 1, 0, 0, 4300.48, 1847.64, 126.17, 1.84469, 300, 300, 3, 0, 0, 0, 0, 1),
(170091, 22821, 530, 1, 0, 0, 4356.15, 1835.81, 104.489, 0.433499, 300, 300, 3, 0, 0, 0, 0, 1),
(170092, 22821, 530, 1, 0, 0, 4337.63, 1800.96, 109.496, 4.914, 300, 300, 3, 0, 0, 0, 0, 1),
(170093, 22821, 530, 1, 0, 0, 4160.81, 2233.26, 171.829, 4.34652, 300, 300, 3, 0, 0, 0, 0, 1),
(170094, 22821, 530, 1, 0, 0, 4279.41, 1756.12, 117.167, 4.13847, 300, 300, 3, 0, 0, 0, 0, 1),
(170095, 22821, 530, 1, 0, 0, 4185.7, 1844.18, 150.349, 0.830289, 300, 300, 3, 0, 0, 0, 0, 1),
(170096, 22821, 530, 1, 0, 0, 4137.91, 1711.12, 125.781, 4.65868, 300, 300, 3, 0, 0, 0, 0, 1),
(170097, 22821, 530, 1, 0, 0, 4079.29, 1726.17, 142.084, 4.75537, 300, 300, 3, 0, 0, 0, 0, 1),
(170098, 22821, 530, 1, 0, 0, 4077.69, 1694.81, 137.102, 1.40693, 300, 300, 3, 0, 0, 0, 0, 1),
(170099, 22821, 530, 1, 0, 0, 3636.43, 2305.56, 93.5198, 1.64412, 300, 300, 3, 0, 0, 0, 0, 1),
(170100, 22821, 530, 1, 0, 0, 3954.14, 1642.08, 122.924, 2.37553, 300, 300, 3, 0, 0, 0, 0, 1),
(170101, 22821, 530, 1, 0, 0, 3926.7, 1658.54, 129.413, 4.06205, 300, 300, 3, 0, 0, 0, 0, 1),
(170102, 22821, 530, 1, 0, 0, 3873.39, 1643.44, 127.472, 4.65375, 300, 300, 3, 0, 0, 0, 0, 1),
(170103, 22821, 530, 1, 0, 0, 3844.97, 1605.52, 124.019, 0.905721, 300, 300, 3, 0, 0, 0, 0, 1),
(170104, 22821, 530, 1, 0, 0, 3789.25, 1599.69, 127.425, 5.26302, 300, 300, 3, 0, 0, 0, 0, 1),
(170105, 22821, 530, 1, 0, 0, 3750.77, 1579.95, 118.431, 2.35619, 300, 300, 3, 0, 0, 0, 0, 1),
(170106, 22821, 530, 1, 0, 0, 3712.99, 1638.35, 128.08, 0.0625406, 300, 300, 3, 0, 0, 0, 0, 1),
(170107, 22821, 530, 1, 0, 0, 3703.41, 2274.09, 118.276, 5.11702, 300, 300, 3, 0, 0, 0, 0, 1),
(170108, 22821, 530, 1, 0, 0, 3725.69, 1688.82, 134.715, 1.72775, 300, 300, 3, 0, 0, 0, 0, 1),
(170109, 22821, 530, 1, 0, 0, 3647.64, 1753.84, 119.972, 2.79265, 300, 300, 3, 0, 0, 0, 0, 1),
(170110, 22821, 530, 1, 0, 0, 3697.59, 1731.95, 130.395, 3.70982, 300, 300, 3, 0, 0, 0, 0, 1),
(170111, 22821, 530, 1, 0, 0, 3508.35, 1796.49, 85.835, 4.72255, 300, 300, 3, 0, 0, 0, 0, 1),
(170112, 22821, 530, 1, 0, 0, 3549.5, 1902.92, 95.3952, 3.17088, 300, 300, 3, 0, 0, 0, 0, 1),
(170113, 22821, 530, 1, 0, 0, 3599.56, 1913.4, 108.562, 4.1363, 300, 300, 3, 0, 0, 0, 0, 1),
(170114, 22821, 530, 1, 0, 0, 3522.36, 1953.91, 82.9403, 5.05508, 300, 300, 3, 0, 0, 0, 0, 1),
(170115, 22821, 530, 1, 0, 0, 3582.71, 2010.47, 93.8184, 1.92591, 300, 300, 3, 0, 0, 0, 0, 1),
(170116, 22821, 530, 1, 0, 0, 3600.89, 2116.04, 87.5405, 3.14355, 300, 300, 3, 0, 0, 0, 0, 1),
(170117, 22821, 530, 1, 0, 0, 3674.26, 2234.01, 118.465, 4.35719, 300, 300, 3, 0, 0, 0, 0, 1);


