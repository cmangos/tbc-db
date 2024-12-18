-- ----------------
-- Netherstorm 
-- Sout East Island with Area 52 
-- ---------------


-- Bridge from Blade's Edge to netherstorm
-- Spawns
-- Also reguid them into tbc range
SET @CGUID := 5306100; -- creatures
SET @SGGUID := 5406000; -- spawn_groups
 
DELETE FROM creature WHERE guid IN (67516, 67518, 67519, 67520, 67524, 67525, 67536, 67538, 67539, 67540, 67543, 67544, 67546, 67556, 67557, 67615, 67616, 67617, 67618, 67619, 67620, 67621, 67622, 67623, 67624, 67675, 67732, 70008, 
71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819, 71839, 71840, 71846, 73962, 1002671);
DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+48;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Nether Technician
(@CGUID+1, 20203, 530, 1, 3380.88, 4359.49, 123.702, 4.67748, 300, 300, 0, 0),
(@CGUID+2, 20203, 530, 1, 3383.22, 4353.67, 123.277, 1.85005, 300, 300, 0, 0),
(@CGUID+3, 20203, 530, 1, 3383.93, 4348.7, 133.665, 2.89725, 300, 300, 0, 2),
(@CGUID+4, 20203, 530, 1, 3363.62, 4343.92, 122.813, 3.31613, 300, 300, 0, 0),
(@CGUID+5, 20203, 530, 1, 3388.96, 4334.67, 124.382, 4.46804, 300, 300, 0, 0),
(@CGUID+6, 20203, 530, 1, 3387.59, 4333.83, 122.722, 0.174533, 300, 300, 0, 0), 
(@CGUID+7, 20203, 530, 1, 3388.68, 4331.53, 122.722, 1.97222, 300, 300, 0, 0),
(@CGUID+8, 20203, 530, 1, 3353.89, 4297.43, 117.417, 2.70526, 300, 300, 0, 0),
(@CGUID+9, 20203, 530, 1, 3390.92, 4297.69, 120.882, 3.76991, 300, 300, 0, 0),
(@CGUID+10, 20203, 530, 1, 3390.34, 4292.85, 121.165, 4.90438, 300, 300, 0, 0),
(@CGUID+11, 20203, 530, 1, 3388.11, 4291.83, 121.164, 6.07375, 300, 300, 0, 0),
(@CGUID+12, 20203, 530, 1, 3394.32, 4265.35, 122.722, 0.785398, 300, 300, 0, 0),
(@CGUID+13, 20203, 530, 1, 3370.1, 4302.87, 120.501, 4.81114, 300, 300, 0, 2),
-- Netherologist Coppernickels
(@CGUID+14, 19569, 530, 1, 3392.6218, 4267.4937, 122.6924, 0.122173, 300, 300, 0, 2),
-- Open world enemy npcs left side of path
-- Phase Hunter - seem to have a low respawn time respawned 2min 14 after killed
(@CGUID+15, 18879, 530, 1, 3529.37, 4165.15, 141.412, 3.71755, 120, 180, 0, 2), -- Phase Hunter - completly missing before
(@CGUID+16, 18879, 530, 1, 3581.34, 4084.98, 130.074, 3.19108, 120, 180, 0, 2), -- Phase Hunter - completly missing before
-- Nether Ray - respawned ~6min- 7min after death
(@CGUID+17, 18880, 530, 1, 3487.384, 4125.5537, 121.080055, 1.88166, 360, 420, 0, 4), -- Nether Ray guid before 1002671
-- Nether snapper - respawned ~ 6-7 min after kill
(@CGUID+18, 18883, 530, 1, 3644.69, 3899.27, 116.956, 2.1839, 360, 420, 0, 2), -- Nether Snapper guid before 67732 
-- Group of 4 Phase Hunter
(@CGUID+19, 18879, 530, 1, 3587.87, 4031.33, 136.231, 4.14899, 120, 180, 0, 2), -- Phase Hunter guid before 67617 
(@CGUID+20, 18879, 530, 1, 3607.71, 3995.12, 130.408, 3.47911, 120, 180, 0, 2), -- Phase Hunter guid before 67615
(@CGUID+21, 18879, 530, 1, 3631.33, 3935.32, 127.352, 2.88447, 120, 180, 0, 2), -- Phase Hunter guid before 67616
(@CGUID+22, 18879, 530, 1, 3618.72, 3899.89, 132.288, 2.86844, 120, 180, 0, 2), -- Phase Hunter guid before 67621
(@CGUID+23, 20210, 530, 1, 3505.5713, 3949.069, 143.30916, 3.9720, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71839

(@CGUID+24, 18879, 530, 1, 3595.61, 3869.35, 144.047, 2.91399, 120, 180, 0, 2), -- Phase Hunter guid before 67618 
(@CGUID+25, 18879, 530, 1, 3613.19, 3865.74, 114.725, 3.40495, 120, 180, 0, 2), -- Phase Hunter guid before 67619
(@CGUID+26, 18879, 530, 1, 3593.16, 3818.53, 143.281, 3.15956, 120, 180, 0, 2), -- Phase Hunter guid before 67620
(@CGUID+27, 18879, 530, 1, 3599.61, 3783.02, 138.517, 3.13026, 120, 180, 0, 2), -- Phase Hunter missing before

(@CGUID+28, 20210, 530, 1, 3442.37, 3823.31, 144.337, 0.528262, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71840
(@CGUID+29, 20210, 530, 1, 3413.2, 3839.94, 144.353, 0.462774, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71846

(@CGUID+30, 18880, 530, 1, 3406.61, 3850.77, 143.933, 3.35194, 360, 420, 0, 4), -- Nether Ray guid before 67675

(@CGUID+31, 18879, 530, 1, 3631.96, 3734.44, 125.934, 3.4896, 120, 180, 0, 2), -- Phase Hunter guid before 67622
(@CGUID+32, 18879, 530, 1, 3648.49, 3649.79, 133.037, 3.9255, 120, 180, 0, 2), -- Phase Hunter
(@CGUID+33, 18879, 530, 1, 3677.29, 3607.51, 121.56, 3.83834, 120, 180, 0, 2), -- Phase Hunter
(@CGUID+34, 18879, 530, 1, 3679.76, 3536.49, 129.898, 2.94111, 120, 180, 0, 2), -- Phase Hunter old guid 67624
(@CGUID+35, 18879, 530, 1, 3673.79, 3491.65, 113.862, 2.36891, 120, 180, 0, 2), -- Phase Hunter old guid 67623
-- Outside spawns Ruins of Enkaat
-- killed 10:37:48.343 - respawned 10:44:06.620 - 6 min 18 
(@CGUID+36, 18873, 530, 1, 3384.72, 3747.28, 144.302, 5.26916, 360, 420, 8, 1), -- Disembodied Protector old guid 67557
-- Vindicator killed at 10:38:13.562 respawned at 10:43:29.808 respawn timer between 5 min and 6 min
(@CGUID+37, 18872, 530, 1, 3417.31, 3753.94, 141.003, 0.458323, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67538
(@CGUID+38, 18872, 530, 1, 3449.51, 3752.43, 145.462, 2.19665, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67516
(@CGUID+39, 18873, 530, 1, 3481.87, 3746.61, 144.578, 4.36756, 360, 420, 8, 1), -- Disembodied Protector old guid 67539

(@CGUID+40, 18873, 530, 1, 3500.7, 3717.46, 139.185, 1.67722, 360, 420, 8, 1), -- Disembodied Protector old guid 67540
(@CGUID+41, 18873, 530, 1, 3482.38, 3683.87, 144.08, 1.43149, 360, 420, 8, 1), -- Disembodied Protector old guid 67519

(@CGUID+42, 18872, 530, 1, 3532.45, 3666.03, 140.064, 4.8436, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67520
(@CGUID+43, 18872, 530, 1, 3573.5, 3647.71, 131.662, 0.799555, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67518

(@CGUID+44, 18872, 530, 1, 3584.14, 3595.16, 130.009, 5.36131, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67524

(@CGUID+45, 18872, 530, 1, 3575.31, 3548.73, 127.209, 5.58143, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67525
(@CGUID+46, 18873, 530, 1, 3551.81, 3525.41, 124.929, 0.497076, 360, 420, 8, 1), -- Disembodied Protector old guid 67544
(@CGUID+47, 18873, 530, 1, 3527.85, 3549.21, 137.595, 5.68976, 360, 420, 8, 1), -- Disembodied Protector old guid 67543
(@CGUID+48, 18873, 530, 1, 3516.86, 3525.74, 131.554, 4.6102, 360, 420, 8, 1), -- Disembodied Protector old guid 67546
-- Ruins of Enkaat entrance 
(@CGUID+49, 21058, 530, 1, 3374.26, 3712.78, 142.87, 5.6495, 300, 360, 0, 4), -- Disembodied Exarch old guid 73962

(@CGUID+50, 0, 530, 1, 3410.26, 3684.18, 147.597, 4.67748, 360, 420, 0, 0), -- spawn_group_entry old guid 67556
(@CGUID+51, 18872, 530, 1, 3409.75, 3673.84, 148.697, 1.46608, 300, 360, 0, 0),  -- Disembodied Vindicator old guid 67536

DELETE FROM creature_addon WHERE guid IN (67540, 70008, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819);

-- Waypoints
DELETE FROM creature_movement WHERE id IN (67675, 71811, 71814, 73962, 1002671);
DELETE FROM creature_movement WHERE Id BETWEEN @CGUID+1 AND @CGUID+35;
INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- Nether Technician, changing orientation only
(@CGUID+3, 1, 3383.929,4348.6997,133.66545,0.20943951, 12000, 0), -- waittime between 12 and 15 seconds
(@CGUID+3, 2, 3383.929,4348.6997,133.66545,2.897246, 15000, 0), 
-- Nether Technician patroling around on the bridge
(@CGUID+13, 1, 3371.5881,4290.548,120.58921, 100, 0, 0),
(@CGUID+13, 2, 3373.5818,4276.3594,122.68557, 100, 0, 0),
(@CGUID+13, 3, 3373.6116,4270.8057,122.73723, 100, 0, 0),
(@CGUID+13, 4, 3369.5999,4266.858,122.79001, 100, 0, 0),
(@CGUID+13, 5, 3363.5034,4267.4834,122.84963, 100, 0, 0),
(@CGUID+13, 6, 3359.7283,4271.4673,122.12153, 100, 0, 0),
(@CGUID+13, 7, 3358.567,4282.396,117.349205, 100, 0, 0),
(@CGUID+13, 8, 3356.5632,4296.718,117.34626, 100, 0, 0),
(@CGUID+13, 9, 3354.714,4312.0186,117.46164, 100, 0, 0),
(@CGUID+13, 10, 3353.747,4318.691,120.94837, 100, 0, 0),
(@CGUID+13, 11, 3355.1335,4323.807,122.80288, 100, 0, 0),
(@CGUID+13, 12, 3360.5435,4328.6865,122.635445, 100, 0, 0),
(@CGUID+13, 13, 3364.6023,4328.815,122.63519, 100, 0, 0),
(@CGUID+13, 14, 3367.982,4324.245,122.63186, 100, 0, 0),
(@CGUID+13, 15, 3370.1672,4302.1895,120.468414, 100, 0, 0),
-- Phase Hunter waypoints before random movement
(@CGUID+15, 1, 3529.37, 4165.15, 141.412, 100, 0, 0),
(@CGUID+15, 2, 3491.5762,4133.8774,118.41899, 100, 1000, 1887901),
(@CGUID+16, 1, 3581.34, 4084.98, 130.074, 100, 0, 0),
(@CGUID+16, 2, 3518.2432,4082.706,118.56583, 100, 1000, 1887901),
-- Nether Ray Waypoints
(@CGUID+17, 1, 3485.1523,4132.5054,120.17229, 100, 0, 0),
(@CGUID+17, 2, 3504.4766,4105.242,116.0426, 100, 0, 0),
(@CGUID+17, 3, 3528.8682,4068.1975,116.90172, 100, 0, 0),
(@CGUID+17, 4, 3543.3215,4036.7717,109.05035, 100, 0, 0),
(@CGUID+17, 5, 3550,3999.5872,111.995636, 100, 0, 0),
(@CGUID+17, 6, 3557.836,3972.274,118.87111, 100, 0, 0),
(@CGUID+17, 7, 3558.2031,3940.3784,123.80483, 100, 0, 0),
(@CGUID+17, 8, 3549.8433,3903.5474,118.64901, 100, 0, 0),
(@CGUID+17, 9, 3522.6362,3871.1633,125.48549, 100, 0, 0),
(@CGUID+17, 10, 3509.0469,3823.2761,128.74696, 100, 0, 0),
(@CGUID+17, 11, 3488.0254,3783.1077,145.1278, 100, 1000, 0),
-- Nether Snapper 
(@CGUID+18, 1, 3644.69, 3899.27, 116.956, 100, 0, 0),
(@CGUID+18, 2, 3519.6345,4087.2786,117.839806, 100, 1000, 1888301),
-- Phase Hunter
(@CGUID+19, 1, 3587.87, 4031.33, 136.231, 100, 0, 0),
(@CGUID+19, 2, 3569.9146,4002.834,104.12896, 100, 1000, 1887902),
(@CGUID+20, 1, 3607.71, 3995.12, 130.408, 100, 0, 0),
(@CGUID+20, 2, 3559.6833,3976.872,119.42622, 100, 1000, 1887903),
(@CGUID+21, 1, 3631.33, 3935.32, 127.352, 100, 0, 0),
(@CGUID+21, 2, 3577.4712,3934.9949,112.2348, 100, 1000, 1887903),
(@CGUID+22, 1, 3618.72, 3899.89, 132.288, 100, 0, 0),
(@CGUID+22, 2, 3532.0256,3934.9521,134.21286, 100, 1000, 1887903),
(@CGUID+24, 1, 3595.61, 3869.35, 144.047, 100, 0, 0),
(@CGUID+24, 2, 3516.4365,3882.628,132.1037, 100, 1000, 1887903),
(@CGUID+25, 1, 3613.19, 3865.74, 114.725, 100, 0, 0),
(@CGUID+25, 2, 551.9695,3845.3052,102.633385, 100, 1000, 1887902),
(@CGUID+26, 1, 3593.16, 3818.53, 143.281, 100, 0, 0),
(@CGUID+26, 2, 3534.2126,3799.4238,129.92645, 100, 1000, 1887903),
(@CGUID+27, 1, 3599.61, 3783.02, 138.517, 100, 0, 0),
(@CGUID+27, 2, 3546.8633,3784.7363,126.8745, 100, 1000, 1887903),
-- Nether Ray
(@CGUID+30, 1, 3400.9585,3849.5618,144.04135, 100, 0, 0),
(@CGUID+30, 2, 3436.838,3871.0503,145.80588, 100, 0, 0),
(@CGUID+30, 3, 3478.928,3860.7336,137.4881, 100, 0, 0),
(@CGUID+30, 4, 3494.5208,3825.9475,138.57288, 100, 0, 0),
(@CGUID+30, 5, 3522.7512,3787.881,134.50453, 100, 0, 0),
(@CGUID+30, 6, 3549.2742,3716.644,128.63124, 100, 0, 0),
(@CGUID+30, 7, 3581.9758,3684.394,125.7394, 100, 0, 0),
(@CGUID+30, 8, 3604.4844,3652.5547,121.99176, 100, 0, 0),
(@CGUID+30, 9, 3614.7227,3618.1426,122.75685, 100, 0, 0),
(@CGUID+30, 10, 3643.934,3580.0828,108.255196, 100, 0, 0),
(@CGUID+30, 11, 3654.9553,3560.409,102.22706, 100, 0, 0),
(@CGUID+30, 12, 3630.1902,3531.3286,109.37891, 100, 0, 0),
-- Phase Hunter
(@CGUID+31, 1, 3631.96, 3734.44, 125.934, 100, 0, 0),
(@CGUID+31, 2, 3586.0146,3708.2422,116.58495, 100, 1000, 1887903),
(@CGUID+32, 1, 3648.49, 3649.79, 133.037, 100, 0, 0),
(@CGUID+32, 2, 3615.79,3617.19,123.3196, 100, 1000, 1887902),
(@CGUID+33, 1, 3677.29, 3607.51, 121.56, 100, 0, 0),
(@CGUID+33, 2, 3647.81,3582.84,107.6362, 100, 1000, 1887902),
(@CGUID+34, 1, 3679.76, 3536.49, 129.898, 100, 0, 0),
(@CGUID+34, 2, 3614.87,3549.68,117.42401, 100, 1000, 1887903),
(@CGUID+35, 1, 3673.79, 3491.65, 113.862, 100, 0, 0),
(@CGUID+35, 2, 3638.458,3522.8564,105.14537, 100, 1000, 1887902),
-- Disembodied Exarch
(@CGUID+49, 1, 3375.8706,3711.5972,143.06467, 100, 0, 0),
(@CGUID+49, 2, 3393.8508,3699.708,144.82408, 100, 0, 0),
(@CGUID+49, 3, 3419.7908,3691.4236,146.60385, 100, 0, 0),
(@CGUID+49, 4, 3444.3796,3716.2292,145.02869, 100, 0, 0),
(@CGUID+49, 4, 3422.1394,3690.8667,146.77238, 100, 0, 0),
(@CGUID+49, 5, 3426.9023,3687.7004,147.44237, 100, 0, 0),
(@CGUID+49, 6, 3426.924,3668.7673,152.69373, 100, 0, 0),
(@CGUID+49, 7, 3427.7356,3688.8196,147.39194, 100, 0, 0),
(@CGUID+49, 8, 3450.3057,3679.048,149.7282, 100, 0, 0),
(@CGUID+49, 10, 3469.7615,3651.3213,152.81497, 100, 0, 0),
(@CGUID+49, 11, 3481.7473,3622.8403,157.51076, 100, 0, 0),


DELETE FROM `creature_movement_template` WHERE `entry` IN (19569);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `WaitTime`, `ScriptId`) VALUES
-- Netherologist Coppernickels patroling around the bridge
(19569, 0, 1, 3392.6218, 4267.4937, 122.6924, 0.122173, 35000, 1956901), 
(19569, 0, 2, 3387.336,4271.7876,122.673416, 100, 0, 0),
(19569, 0, 3, 3382.5715,4283.9297,120.99102, 100, 0, 0),
(19569, 0, 4, 3385.6653,4291.7524,121.046265, 100, 0, 0),
(19569, 0, 5, 3389.064,4296.103,120.85735,0.680678427219390869, 35000, 1956901),
(19569, 0, 6, 3381.8755,4299.739,120.177086, 100, 0, 0),
(19569, 0, 7, 3379.8218,4311.4155,120.737305, 100, 0, 0),
(19569, 0, 8, 3378.7095,4329.5312,122.634514, 100, 0, 0),
(19569, 0, 9, 3381.7964,4334.7876,122.63777, 100, 0, 0),
(19569, 0, 10, 3385.8474,4336.2344,122.63841,0.087266460061073303, 35000, 1956901),
(19569, 0, 11, 3367.6418,4341.9956,122.694984, 100, 0, 0),
(19569, 0, 12, 3363.7769,4341.0405,122.68952,3.857177734375, 0, 0),
(19569, 0, 13, 3370.378,4350.1274,122.97476, 100, 0, 0),
(19569, 0, 14, 3376.6335,4356.977,123.6317, 100, 0, 0),
(19569, 0, 15, 3379.6829,4358.2637,123.625404,0.104719758033752441, 35000, 1956901),
(19569, 0, 16, 3375.633,4351.1187,123.01252, 100, 0, 0),
(19569, 0, 17, 3376.491,4336.853,122.639595, 100, 0, 0),
(19569, 0, 18, 3378.2063,4322.0347,122.62954, 100, 0, 0),
(19569, 0, 19, 3379.7979,4302.0923,120.30205, 100, 0, 0),
(19569, 0, 20, 3381.026,4289.326,120.66898, 100, 0, 0),
(19569, 0, 21, 3384.844,4272.874,122.67322, 100, 0, 0),
(19569, 0, 22, 3389.8567,4267.7715,122.70082,100, 0, 0);

-- SpawnData
DELETE FROM creature_spawn_data WHERE guid IN (70008, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819);
DELETE FROM creature_spawn_data WHERE guid BETWEEN @CGUID+1 AND @CGUID+35;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES
(@CGUID+1, 2020302), -- Monster - Tool, Wrench Small
(@CGUID+2, 2020301), -- Monster - Mace, Basic Metal Hammer
(@CGUID+4, 2020302), -- Monster - Tool, Wrench Small
(@CGUID+5, 2020303), -- Monster - Item, Tankard Wooden
(@CGUID+6, 2020302), -- Monster - Tool, Wrench Small
(@CGUID+7, 2020303), -- Monster - Item, Tankard Wooden
(@CGUID+8, 2020301), -- Monster - Mace, Basic Metal Hammer
(@CGUID+9, 2020302), -- Monster - Tool, Wrench Small
(@CGUID+10, 2020302), -- Monster - Tool, Wrench Small
(@CGUID+11, 2020301), -- Monster - Mace, Basic Metal Hammer
(@CGUID+12, 2020301), -- Monster - Mace, Basic Metal Hammer
-- Phase Hunter prob all have a waypoint on spawn before changing to random movement 
-- only give unit stats to reworked ones and remove it when all have correct spanws+waypoints
(@CGUID+15, 1887901),
(@CGUID+16, 1887901),
(@CGUID+19, 1887901),
(@CGUID+20, 1887901),
(@CGUID+21, 1887901),
(@CGUID+22, 1887901),
(@CGUID+24, 1887901),
(@CGUID+25, 1887901),
(@CGUID+26, 1887901),
(@CGUID+27, 1887901),
(@CGUID+31, 1887901),
(@CGUID+32, 1887901),
(@CGUID+33, 1887901),
(@CGUID+34, 1887901),
(@CGUID+35, 1887901);

DELETE FROM creature_spawn_data_template WHERE Entry IN (1887901);
INSERT INTO creature_spawn_data_template (`Entry`, `UnitFlags`, `Name`) VALUES 
(1887901, 33587968, 'Phase Hunter (18879) - UnitFlags');

-- SpawnGroup
-- Currently spawngroup is only used to get npcs into dynguid
DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID AND @SGGUID+13;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID, 'Netherstorm - Group 001 - Phase Hunter (2)', 2, 0, 0, 0, 0),
(@SGGUID+1, 'Netherstorm - Group 002 - Nether Ray - Solo Patrol', 1, 0, 0, 0, 0),
(@SGGUID+2, 'Netherstorm - Group 003 - Mana Snapper - Solo Patrol', 1, 0, 0, 0, 0),
(@SGGUID+3, 'Netherstorm - Group 005 - Phase Hunter (4)', 4, 0, 0, 0, 0),
(@SGGUID+4, 'Netherstorm - Group 006 - Shaleskin Flayer', 1, 0, 0, 0, 0),
(@SGGUID+5, 'Netherstorm - Group 007 - Phase Hunter (4)', 4, 0, 0, 0, 0),
(@SGGUID+6, 'Netherstorm - Group 008 - Shaleskin Flayer', 2, 0, 0, 0, 0),
(@SGGUID+7, 'Netherstorm - Group 009 - Nether Ray - Solo Patrol', 1, 0, 0, 0, 0),
(@SGGUID+8, 'Netherstorm - Group 010 - Phase Hunter (5)', 1, 0, 0, 0, 0),
-- Outside Ruins of Enkaat groups
-- Group of 4
(@SGGUID+9, 'Netherstorm - Group 011 - Disembodied Protector (2) | Disembodied Vindicator(2)', 4, 0, 0, 0, 0),
-- Group of 2
(@SGGUID+10, 'Netherstorm - Group 012 - Disembodied Protector (2)', 2, 0, 0, 0, 0),
(@SGGUID+11, 'Netherstorm - Group 013 - Disembodied Vindicator(2)', 2, 0, 0, 0, 0),
-- Solo
(@SGGUID+12, 'Netherstorm - Group 014 - Disembodied Vindicator(1)', 1, 0, 0, 0, 0),
-- Group of 4
(@SGGUID+13, 'Netherstorm - Group 015 - Disembodied Protector (3) | Disembodied Vindicator(1)', 4, 0, 0, 0, 0),
-- Ruins of Enkaat entrance 
(@SGGUID+14, 'Netherstorm - Group 016 - Disembodied Exarch (1) - Solo Patrol', 1, 0, 0, 0, 0),
-- Group of 2 standing around object ("table") - 1 confirmed to be rnd entry between vindicator/protector
(@SGGUID+15, 'Netherstorm - Group 017 - Disembodied Vindicator (1) - Disembodied Protector', 2, 0, 0, 0, 0),

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+15, 18872, 0, 2, 0), (@SGGUID+15, 18873, 0, 1, 0), -- Disembodied Vindicator/Disembodied Protector

DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID AND @SGGUID+8;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID, @CGUID+15, -1, 0), -- Phase Hunter
(@SGGUID, @CGUID+16, -1, 0), -- Phase Hunter

(@SGGUID+1, @CGUID+17, 0, 0), -- Nether Ry
(@SGGUID+2, @CGUID+18, 0, 0), -- Mana Snapper

(@SGGUID+3, @CGUID+19, -1, 0), -- Phase Hunter
(@SGGUID+3, @CGUID+20, -1, 0), -- Phase Hunter
(@SGGUID+3, @CGUID+21, -1, 0), -- Phase Hunter
(@SGGUID+3, @CGUID+22, -1, 0), -- Phase Hunter

(@SGGUID+4, @CGUID+23, 0, 0), -- Shaleskin Flayer

(@SGGUID+5, @CGUID+24, -1, 0), -- Phase Hunter
(@SGGUID+5, @CGUID+25, -1, 0), -- Phase Hunter
(@SGGUID+5, @CGUID+26, -1, 0), -- Phase Hunter
(@SGGUID+5, @CGUID+27, -1, 0), -- Phase Hunter

(@SGGUID+6, @CGUID+28, 0, 0), -- Shaleskin Flayer
(@SGGUID+6, @CGUID+29, 0, 0), -- Shaleskin Flayer

(@SGGUID+7, @CGUID+30, 0, 0), -- Nether Ray

(@SGGUID+8, @CGUID+31, -1, 0), -- Phase Hunter
(@SGGUID+8, @CGUID+32, -1, 0), -- Phase Hunter
(@SGGUID+8, @CGUID+33, -1, 0), -- Phase Hunter
(@SGGUID+8, @CGUID+34, -1, 0), -- Phase Hunter
(@SGGUID+8, @CGUID+35, -1, 0), -- Phase Hunter
-- Outside Ruins of Enkaat
(@SGGUID+9, @CGUID+36, -1, 0), -- Disembodied Protector
(@SGGUID+9, @CGUID+37, -1, 0), -- Disembodied Vindicator
(@SGGUID+9, @CGUID+38, -1, 0), -- Disembodied Vindicator
(@SGGUID+9, @CGUID+39, -1, 0), -- Disembodied Protector

(@SGGUID+10, @CGUID+40, -1, 0), -- Disembodied Protector
(@SGGUID+10, @CGUID+41, -1, 0), -- Disembodied Protector

(@SGGUID+11, @CGUID+42, -1, 0), -- Disembodied Vindicator
(@SGGUID+11, @CGUID+43, -1, 0), -- Disembodied Vindicator

(@SGGUID+12, @CGUID+44, -1, 0), -- Disembodied Vindicator

(@SGGUID+13, @CGUID+45, -1, 0), -- Disembodied Vindicator
(@SGGUID+13, @CGUID+46, -1, 0), -- Disembodied Protector
(@SGGUID+13, @CGUID+47, -1, 0), -- Disembodied Protector
(@SGGUID+13, @CGUID+48, -1, 0); -- Disembodied Protector

(@SGGUID+14, @CGUID+49, -1, 0), -- Disembodied Exarch

(@SGGUID+15, @CGUID+50, 0, 0), -- spawn_group_entry
(@SGGUID+15, @CGUID+51, 1, 0), -- Disembodied Vindicator

-- Scripts
SET @RELAYID := 18000;
DELETE FROM dbscript_random_templates WHERE id = @RELAYID+2;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
-- Netherologist Coppernickels different text's
(@RELAYID+1, 0, 16949, 0, 'Netherstorm - Nether Technician - Say 1'), 
(@RELAYID+1, 0, 16950, 0, 'Netherstorm - Nether Technician - Say 2'),
(@RELAYID+1, 0, 16951, 0, 'Netherstorm - Nether Technician - Say 3'), 
(@RELAYID+1, 0, 16952, 0, 'Netherstorm - Nether Technician - Say 4'), 
(@RELAYID+1, 0, 16953, 0, 'Netherstorm - Nether Technician - Say 5'),
-- Disembodied Vindicator/Disembodied Protector random emote 1
(@RELAYID+2, 1, @RELAYID+3, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShotQuestion (6)'), 
(@RELAYID+2, 1, @RELAYID+4, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteYes (273)'),
(@RELAYID+2, 1, @RELAYID+5, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteNo (274)'), 
(@RELAYID+2, 1, @RELAYID+6, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteTalk (396)'); 

DELETE FROM dbscripts_on_relay WHERE id BETWEEN @RELAYID+1 AND @RELAYID+6;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Nether Technician script via ACID - CGUID+4
(@RELAYID+1, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1911, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Set EquipmentSlot'),
(@RELAYID+1, 0, 1, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Emote STATE_USESTANDING_NOSHEATHE'),
(@RELAYID+2, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1903, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Set EquipmentSlot'),
(@RELAYID+2, 0, 1, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Emote STATE_WORK_MINING'),
-- Disembodied Vindicator/Disembodied Protector using random emote OOC
(@RELAYID+3, 0, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShotQuestion (6)'),
(@RELAYID+4, 0, 1, 1, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteYes (273)'),
(@RELAYID+5, 0, 1, 1, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteNo (274)'),
(@RELAYID+6, 0, 1, 1, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteTalk (396)'),

-- Delete some old unused waypoint scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1887901, 1887902, 1887903, 1888301, 1956901, 1956902, 1956903, 1956904, 2020301);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Phase Hunter
-- Flags: 33587968
-- They spawn with flags UNIT_FLAG_UNINTERACTIBLE UNIT_FLAG_IMMUNE_TO_NPC UNIT_FLAG_IMMUNE_TO_PLAYER UNIT_FLAG_SWIMMING (33587968)
-- and change it to 32768 UNIT_FLAG_SWIMMING when reaching the ground
(1887901, 0, 0, 48, 33555200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Phase Hunter - Remove UnitFlags'), 
(1887901, 0, 1, 20, 1, 20, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Phase Hunter - Set RandomMovement around Point'), 
-- Smaller random movement (5 yards)
(1887902, 0, 0, 48, 33555200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Phase Hunter - Remove UnitFlags'), 
(1887902, 0, 1, 20, 1, 5, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Phase Hunter - Set RandomMovement around Point'), 
-- 10 yards radom movement
(1887903, 0, 0, 48, 33555200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Phase Hunter - Remove UnitFlags'), 
(1887903, 0, 1, 20, 1, 10, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Phase Hunter - Set RandomMovement around Point'), 
-- Mana Snapper
(1888301, 0, 1, 20, 1, 20, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Mana Snapper - Set RandomMovement around Point'), 
-- Netherologist Coppernickels
-- Timer for how long he stays depens on how long he uses emote "STATE_USESTANDING_NOSHEATHE" this can vary between 15 and 30 seconds
-- using hardcoded 25 seconds for now.
(1956901, 5000, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Netherologist Coppernickels - Emote UseStanding'), 
(1956901, 30000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Netherologist Coppernickels - Emote None'), 
(1956901, 32000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Netherologist Coppernickels - Emote OneShotExclamation'), 
(1956901, 32000, 1, 0, @RELAYID+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Netherologist Coppernickels - random text');

DELETE FROM dbscripts_on_spell WHERE id IN (34814);
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Spell get used on a 7-10 minute OOC Timer by Phase Hunter and should despawn creature.
(34814, 1000, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'De-Materializ - Despawn Caster'); 

-- SpellLists
-- Phase Hunter
DELETE FROM `creature_template_spells` WHERE `entry` = 18879;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887901;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887901, 'Netherstorm - Phase Hunter', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Unit Condition HAS_HARMFUL_AURA_MECHANIC (Snared, Frozen, Rooted)
(1887901, 1, 36574, 0, 1200, 2, 0, 100, 0, 1000, 8000, 10000, 16000, 'Phase Hunter - Phase Slip - self - unitCondition'),
(1887901, 2, 13321, 0, -1, 105, 0, 100, 0, 8000, 16000, 20000, 31000, 'Phase Hunter - Mana Burn - Random Player Mana User');

UPDATE `creature_template` SET `SpellList` = 1887901 WHERE `entry` = 18879;

-- Mana Snapper
DELETE FROM `creature_template_spells` WHERE `entry` = 18883;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1888301;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1888301, 'Netherstorm - Mana Snapper', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1888301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Unit Condition HAS_HARMFUL_AURA_MECHANIC (Snared, Frozen, Rooted)
(1888301, 1, 36574, 0, 1200, 2, 0, 100, 0, 1000, 8000, 10000, 16000, 'Mana Snapper - Phase Slip - self - unitCondition'),
(1888301, 2, 37176, 0, -1, 105, 0, 100, 0, 8000, 16000, 20000, 31000, 'Mana Snapper - Mana Burn - Random Player Mana User');

UPDATE `creature_template` SET `SpellList` = 1888301 WHERE `entry` = 18883;


-- Disembodied Protector
DELETE FROM `creature_template_spells` WHERE `entry` = 18873;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887301;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887301, 'Netherstorm - Disembodied Protector', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1887301, 1, 36647, 0, -1, 1, 0, 100, 0, 5000, 12000, 15000, 18000, 'Disembodied Protector - Crusader Strike - current'),
(1887301, 2, 9734, 0, -1, 1, 0, 100, 0, 3000, 10000, 8000, 14000, 'Disembodied Protector - Holy Smite - current');

UPDATE `creature_template` SET `SpellList` = 1887301 WHERE `entry` = 18873;

-- Disembodied Vindicator
DELETE FROM `creature_template_spells` WHERE `entry` = 18872;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1887201;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1887201, 'Netherstorm - Disembodied Vindicator', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1887201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1887201, 1, 36002, 0, -1, 1, 0, 100, 0, 6000, 18000, 18000, 28000, 'Disembodied Vindicator - Vindication - current');

UPDATE `creature_template` SET `SpellList` = 1887201 WHERE `entry` = 18872;

-- Disembodied Exarch
DELETE FROM `creature_template_spells` WHERE `entry` = 21058;
DELETE FROM `creature_spell_list_entry` WHERE `Id`= 2105801;

INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2105801, 'Netherstorm - Disembodied Exarch', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2105801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2105801, 1, 33910, 0, -1, 204, 0, 100, 0, 2000, 10000, 2000, 10000, 'Disembodied Exarch - Heal Other - friendly missing 50% excluding self');

UPDATE `creature_template` SET `SpellList` = 2105801 WHERE `entry` = 21058;


-- Movement Corrections

-- Disembodied Exarch
-- WalkSpeed: 2.5 
-- RunSpeed: 8
-- Before SpeedWalk 1,125 SpeedRun 1,14286
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry = 21058;