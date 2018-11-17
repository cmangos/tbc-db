-- Seeping Sludge (20501)
DELETE FROM creature WHERE guid IN (170054,170055,170056,170057,170058,170059,170060,170061);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(170054, 20501, 530, 1, 0, 0, 4135.02, 1882.66, 228.94, 4.20147, 300, 300, 5, 0, 0, 0, 0, 1),
(170055, 20501, 530, 1, 0, 0, 4003.39, 1908.82, 246.769, 0.248712, 300, 300, 5, 0, 0, 0, 0, 1),
(170056, 20501, 530, 1, 0, 0, 4047.56, 1956.06, 278.972, 0.790923, 300, 300, 5, 0, 0, 0, 0, 1),
(170057, 20501, 530, 1, 0, 0, 4057.03, 1930.11, 282.977, 1.61671, 300, 300, 5, 0, 0, 0, 0, 1),
(170058, 20501, 530, 1, 0, 0, 4104.65, 1934.62, 255.713, 0.463648, 300, 300, 5, 0, 0, 0, 0, 1),
(170059, 20501, 530, 1, 0, 0, 4138.75, 1929.61, 228.149, 5.79437, 300, 300, 5, 0, 0, 0, 0, 1),
(170060, 20501, 530, 1, 0, 0, 4124.49, 1903.32, 227.683, 4.89073, 300, 300, 5, 0, 0, 0, 0, 1),
(170061, 20501, 530, 1, 0, 0, 4116.36, 1885.68, 228.589, 5.06983, 300, 300, 5, 0, 0, 0, 0, 1);

-- Unending Voidwraith (19568)
-- all of these seem to respawn instantly after despawning
UPDATE creature SET spawntimesecsmin=0, spawntimesecsmax=0 WHERE id=19568;

-- remove wrong/duplicate spawns
DELETE FROM creature WHERE guid IN (69986,69991,69978,69999,69989,69979,69984,69988,69985,69980,69981);
DELETE FROM creature_movement WHERE id IN (69986,69991,69978,69999,69989,69979,69984,69988,69985,69980,69981);

-- repurpose some existing spawns and add proper movement

-- 0x203CB84240131C0000503C00006E2D62
UPDATE creature SET position_x=4149.557, position_y=2042.097, position_z=149.9528, MovementType=2, spawndist=0 WHERE guid=69971;
DELETE FROM creature_movement WHERE id=69971;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69971,1,4149.557,2042.097,149.9528,100,0,0),
(69971,2,4149.038,2041.906,164.7122,100,0,0),
(69971,3,4148.518,2041.715,179.4717,100,0,0),
(69971,4,4148.935,2042.122,214.9162,100,0,0),
(69971,5,4149.163,2042.004,249.0274,100,0,0),
(69971,6,4149.163,2042.004,249.0274,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E2D6B
UPDATE creature SET position_x=4151.54, position_y=2042.445, position_z=255.5082, MovementType=2, spawndist=0 WHERE guid=69972;
DELETE FROM creature_movement WHERE id=69972;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69972,1,4151.54,2042.445,255.5082,100,0,0),
(69972,2,4150.307,2042.049,245.5923,100,0,0),
(69972,3,4150.083,2041.977,243.7888,100,0,0),
(69972,4,4150.307,2041.957,214.594,100,0,0),
(69972,5,4150.337,2041.994,173.4543,100,0,0),
(69972,6,4150.337,2041.994,173.4543,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E2D58
UPDATE creature SET position_x=4024.672, position_y=2022.007, position_z=264.5558, MovementType=2, spawndist=0 WHERE guid=69998;
DELETE FROM creature_movement WHERE id=69998;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69998,1,4024.672,2022.007,264.5558,100,0,0),
(69998,2,4044.87,2025.382,267.5442,100,0,0),
(69998,3,4065.068,2028.757,270.5326,100,0,0),
(69998,4,4080.474,2031.845,270.3937,100,0,0),
(69998,5,4114.268,2037.787,271.1436,100,0,0),
(69998,6,4114.268,2037.787,271.1436,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E2F83
UPDATE creature SET position_x=3955.606, position_y=1899.995, position_z=262.7655, MovementType=2, spawndist=0 WHERE guid=69974;
DELETE FROM creature_movement WHERE id=69974;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69974,1,3955.606,1899.995,262.7655,100,0,0),
(69974,2,3958.365,1893.582,269.9256,100,0,0),
(69974,3,3959.09,1891.894,271.8099,100,0,0),
(69974,4,3963.445,1862.928,271.171,100,0,0),
(69974,5,3969.4,1841.54,271.3934,100,0,0),
(69974,6,3976.177,1801.907,271.8932,100,0,0),
(69974,7,3978.509,1789.356,271.8932,100,0,0),
(69974,8,3985.332,1757.852,271.9979,100,0,0),
(69974,9,3988.208,1743.379,272.2765,100,0,0),
(69974,10,3988.208,1743.379,272.2765,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E2F99
UPDATE creature SET position_x=4002.096, position_y=1682.91, position_z=127.2685, MovementType=2, spawndist=0 WHERE guid=69975;
DELETE FROM creature_movement WHERE id=69975;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69975,1,4002.096,1682.91,127.2685,100,0,0),
(69975,2,4001.233,1682.577,137.2256,100,0,0),
(69975,3,4000.599,1682.332,144.5384,100,0,0),
(69975,4,4001.468,1682.875,184.6771,100,0,0),
(69975,5,4000.325,1683.686,228.1769,100,0,0),
(69975,6,4000.325,1683.686,228.1769,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E2FC3
UPDATE creature SET position_x=3990.387, position_y=1735.783, position_z=260.1908, MovementType=2, spawndist=0 WHERE guid=70004;
DELETE FROM creature_movement WHERE id=70004;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(70004,1,3990.387,1735.783,260.1908,100,0,0),
(70004,2,3990.587,1736.272,270.1769,100,0,0),
(70004,3,3990.676,1736.489,274.6074,100,0,0),
(70004,4,3984.71,1764.321,270.99,100,0,0),
(70004,5,3978.079,1796.415,270.7212,100,0,0),
(70004,6,3976.071,1818.841,270.7491,100,0,0),
(70004,7,3967.914,1856.6,273.707,100,0,0),
(70004,8,3965.208,1873.519,274.3181,100,0,0),
(70004,9,3958.338,1895.213,274.3181,100,0,0),
(70004,10,3958.338,1895.213,274.3181,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E35A3
UPDATE creature SET position_x=3696.044, position_y=1953.959, position_z=144.3007, MovementType=2, spawndist=0 WHERE guid=69993;
DELETE FROM creature_movement WHERE id=69993;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69993,1,3696.044,1953.959,144.3007,100,0,0),
(69993,2,3695.82,1955.168,134.3766,100,0,0),
(69993,3,3695.675,1955.949,127.9648,100,0,0),
(69993,4,3660.113,1949.127,128.0894,100,0,0),
(69993,5,3632.976,1946.206,126.9835,100,0,0),
(69993,6,3591.018,1935.34,128.265,100,0,0),
(69993,7,3570.341,1931.432,128.7372,100,0,0),
(69993,8,3552.659,1931.052,126.8722,100,0,0),
(69993,9,3552.659,1931.052,126.8722,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E35C1
UPDATE creature SET position_x=3726.549, position_y=1962.258, position_z=259.9123, MovementType=2, spawndist=0 WHERE guid=69982;
DELETE FROM creature_movement WHERE id=69982;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69982,1,3726.549,1962.258,259.9123,100,0,0),
(69982,2,3726.549,1962.258,249.9123,100,0,0),
(69982,3,3726.549,1962.258,241.1067,100,0,0),
(69982,4,3726.522,1962.159,210.7784,100,0,0),
(69982,5,3726.594,1962.199,171.9171,100,0,0),
(69982,6,3726.594,1962.199,171.9171,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E35DF
UPDATE creature SET position_x=3827.917, position_y=1980.728, position_z=285.0202, MovementType=2, spawndist=0 WHERE guid=69994;
DELETE FROM creature_movement WHERE id=69994;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69994,1,3827.917,1980.728,285.0202,100,0,0),
(69994,2,3827.94,1980.826,275.0208,100,0,0),
(69994,3,3827.956,1980.894,268.086,100,0,0),
(69994,4,3808.116,1977.663,268.8724,100,0,0),
(69994,5,3781.85,1972.763,269.8727,100,0,0),
(69994,6,3759.935,1969.464,271.9074,100,0,0),
(69994,7,3759.935,1969.464,271.9074,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E362C
UPDATE creature SET position_x=3917.337, position_y=2093.699, position_z=280.7384, MovementType=2, spawndist=0 WHERE guid=69987;
DELETE FROM creature_movement WHERE id=69987;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69987,1,3917.337,2093.699,280.7384,100,0,0),
(69987,2,3914.135,2111.87,274.4216,100,0,0),
(69987,3,3910.933,2130.042,268.1047,100,0,0),
(69987,4,3906.025,2154.37,268.1672,100,0,0),
(69987,5,3902.745,2174.67,268.7223,100,0,0),
(69987,6,3897.602,2202.157,270.2776,100,0,0),
(69987,7,3897.602,2202.157,270.2776,100,0,1); -- despawn

-- 0x203CB84240131C0000503C00006E3672
UPDATE creature SET position_x=3886.262, position_y=2258.909, position_z=224.2961, MovementType=2, spawndist=0 WHERE guid=69983;
DELETE FROM creature_movement WHERE id=69983;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69983,1,3886.262,2258.909,224.2961,100,0,0),
(69983,2,3886.359,2258.717,214.2984,100,0,0),
(69983,3,3886.422,2258.591,207.7289,100,0,0),
(69983,4,3880.079,2289.422,171.0624,100,0,0),
(69983,5,3880.079,2289.422,171.0624,100,0,1); -- despawn


