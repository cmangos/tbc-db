-- ----------------
-- Netherstorm 
-- Sout East Island with Area 52 
-- ---------------


-- Bridge from Blade's Edge to netherstorm
-- Spawns
-- Also reguid them into tbc range
SET @CGUID := 5306100; -- creatures
SET @SGGUID := 5306000; -- spawn_groups
 
 
DELETE FROM creature WHERE guid IN (67423, 67424, 67425, 67426, 67427, 67428, 67429, 67430, 67431, 67432, 67434, 67435, 67436, 67437, 67438,  67439, 67440, 67441, 67442, 67443, 67444, 67445, 67446, 67447, 67516, 67517, 67518, 67519, 67520, 67521, 67522, 67523, 67524, 
67525, 67526, 67527, 67528, 67529, 67530, 67531, 67532, 67533, 67534, 67535, 67536, 67537, 67538, 67539, 67540, 67541, 67542, 67543, 67544, 67545, 67546, 67547, 67548, 67549, 67550, 67551, 67552, 67553, 67554, 67555, 67556, 67557, 67608, 67609, 67610, 67611, 67612, 67613, 67614, 67615, 67616, 67617, 
67618, 67619, 67620, 67621, 67622, 67623, 67624, 67625, 67626, 67627, 67628, 67629, 67630, 67631, 67632, 67633, 67634, 67635, 67636, 67674, 67675, 67676, 67677, 67678, 67679, 67680, 67681, 67684, 67685, 67686, 67687, 67688, 67689, 67694, 67695, 67696, 67697, 67732, 
70008, 70182, 70183, 70184, 70185, 70186, 70187, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819, 71839, 71840, 71841, 71842, 71843, 71844, 71845, 71846, 71847, 71848, 71849, 71850, 71853, 71854, 71855,  71856, 71857, 71858, 71859, 71860, 71861, 71862, 71863, 71864, 71865, 71866, 71867, 71868, 71869, 
71870, 71871, 71872, 71886, 71890, 72537, 73962, 73963, 73964, 73965, 1002671, 1002675, 1002679, 1002703);  
-- Delete all Farahlon Giant, Farahlon Crumbler (only spawn on Giant death) spanws
-- Old guids: 67834, 67833, 67835, 67836, 75856, 75559, 67832
-- Delete all Artifact Seeker (12 spawns)
-- Delete all Fellade Doomguard spawns
-- Delete Pentatharon spawn
DELETE FROM creature WHERE id IN (18885, 19852, 19853, 20215, 21077);

-- Manaforge B'naar npcs
-- Sunfury Bloodwarder, Captain Arathyn, Sunfury Captain, Sunfury Magister, Sunfury Astromancer, Sunfury Geologist, Sunfury Warp-Master, Sunfury Warp-Engineer, Overseer Theredis, Sunfury Geologist
DELETE FROM creature WHERE id IN (18853, 19635, 19453, 18855, 19643, 19779, 18857, 18852, 20416, 19779);

DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+420;
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
(@CGUID+36, 18873, 530, 1, 3384.72, 3747.28, 144.302, 5.26916, 360, 420, 8, 1), -- Disembodied Protector old guid 67557
(@CGUID+37, 0, 530, 1, 3417.31, 3753.94, 141.003, 0.458323, 300, 360, 8, 1),  -- spawn_group_entry old guid 67538
(@CGUID+38, 18872, 530, 1, 3449.51, 3752.43, 145.462, 2.19665, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67516
(@CGUID+39, 18873, 530, 1, 3481.87, 3746.61, 144.578, 4.36756, 360, 420, 8, 1), -- Disembodied Protector old guid 67539

(@CGUID+40, 18873, 530, 1, 3500.7, 3717.46, 139.185, 1.67722, 360, 420, 8, 1), -- Disembodied Protector old guid 67540
(@CGUID+41, 0, 530, 1, 3482.38, 3683.87, 144.08, 1.43149, 360, 420, 8, 1), -- spawn_group_entry old guid 67519

(@CGUID+42, 18872, 530, 1, 3532.45, 3666.03, 140.064, 4.8436, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67520
(@CGUID+43, 0, 530, 1, 3573.5, 3647.71, 131.662, 0.799555, 300, 360, 8, 1),  -- spawn_group_entry old guid 67518

(@CGUID+44, 18872, 530, 1, 3584.14, 3595.16, 130.009, 5.36131, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67524
(@CGUID+45, 18872, 530, 1, 3575.31, 3548.73, 127.209, 5.58143, 300, 360, 8, 1),  -- Disembodied Vindicator old guid 67525
(@CGUID+46, 18873, 530, 1, 3551.81, 3525.41, 124.929, 0.497076, 360, 420, 8, 1), -- Disembodied Protector old guid 67544
(@CGUID+47, 18873, 530, 1, 3527.85, 3549.21, 137.595, 5.68976, 360, 420, 8, 1), -- Disembodied Protector old guid 67543
(@CGUID+48, 0, 530, 1, 3516.86, 3525.74, 131.554, 4.6102, 360, 420, 8, 1), -- spawn_group_entry old guid 67546
-- Ruins of Enkaat entrance 
(@CGUID+49, 21058, 530, 1, 3374.26, 3712.78, 142.87, 5.6495, 300, 360, 0, 4), -- Disembodied Exarch old guid 73962
(@CGUID+50, 0, 530, 1, 3410.26, 3684.18, 147.597, 4.67748, 360, 420, 0, 0), -- spawn_group_entry old guid 67556
(@CGUID+51, 18872, 530, 1, 3409.75, 3673.84, 148.697, 1.46608, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67536
(@CGUID+52, 18872, 530, 1, 3463.16, 3715.29, 145.986, 0.804, 300, 360, 0, 4), -- Disembodied Vindicator old guid 67517
(@CGUID+53, 0, 530, 1, 3449.43, 3702.6, 147.646, 3.78736, 300, 360, 0, 0), -- spawn_group_entry old guid 67541
(@CGUID+54, 18872, 530, 1, 3424.25, 3661.14, 153.203, 4.46804, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67537--  
(@CGUID+55, 18873, 530, 1, 3369.44, 3661.99, 143.635, 4.01426, 300, 360, 0, 0), -- Disembodied Protector old guid 67554
(@CGUID+56, 18872, 530, 1, 3455.16, 3675.74, 150.064, 0.39114, 300, 360, 14, 1), -- Disembodied Vindicator old guid 67521
(@CGUID+57, 21058, 530, 1, 3493.2, 3717.37, 139.938, 5.39578, 300, 360, 0, 4), -- Disembodied Exarch old guid 73964
(@CGUID+58, 18872, 530, 1, 3468.76, 3646.23, 154.458, 5.42845, 300, 360, 0, 2), -- Disembodied Vindicator old guid 67522
(@CGUID+59, 18872, 530, 1, 3458.56, 3627.43, 140.747, 1.7571, 300, 360, 15, 1), -- Disembodied Vindicator old guid 67523
(@CGUID+60, 0, 530, 1, 3432.5, 3591.81, 144.274, 2.11479, 300, 360, 10, 1), -- spawn_group_entry old guid 67549
(@CGUID+61, 18872, 530, 1, 3412.48, 3609.1, 140.999, 0.785398, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67535
(@CGUID+62, 18873, 530, 1, 3343.02, 3682.69, 135.465, 4.66549, 300, 360, 8, 1), -- Disembodied Protector old guid 67555
(@CGUID+63, 18872, 530, 1, 3349.59, 3647.52, 142.912, 3.58056, 300, 360, 10, 1), -- Disembodied Vindicator old guid 67534
(@CGUID+64, 18873, 530, 1, 3382.97, 3646.03, 144.754, 4.86133, 300, 360, 0, 0), -- Disembodied Protector old guid 67552
(@CGUID+65, 0, 530, 1, 3383.35, 3626.05, 144.221, 0.645405, 300, 360, 0, 0), -- spawn_group_entry old guid 67553
(@CGUID+66, 0, 530, 1, 3515.79, 3615.27, 149.689, 1.50098, 300, 360, 10, 1), -- spawn_group_entry old guid 67542
(@CGUID+67, 21058, 530, 1, 3534.86, 3615.88, 138.851, 3.64526, 300, 360, 0, 4), -- Disembodied Exarch old guid 73964
(@CGUID+68, 18873, 530, 1, 3490.27, 3573.4, 158.703, 1.69297, 300, 360, 0, 0), -- Disembodied Protector old guid 67547
(@CGUID+69, 18872, 530, 1, 3490.1, 3578.72, 158.708, 4.60767, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67526
(@CGUID+70, 0, 530, 1, 3472.1, 3574.68, 167.441, 2.0944, 300, 360, 0, 0), -- spawn_group_entry old guid 67527
(@CGUID+71, 18873, 530, 1, 3465.8, 3521.91, 146.192, 2.72271, 300, 360, 0, 0), -- Disembodied Protector old guid 67545
(@CGUID+72, 0, 530, 1, 3464.84, 3483.73, 146.39, 3.735, 300, 360, 0, 0), -- spawn_group_entry old guid 67528
(@CGUID+73, 18873, 530, 1, 3459.95, 3480.61, 146.466, 0.558505, 300, 360, 0, 0), -- Disembodied Protector old guid 67548
(@CGUID+74, 18872, 530, 1, 3421.09, 3462.32, 146.243, 1.27409, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67529
(@CGUID+75, 18872, 530, 1, 3392.22, 3446.12, 140.322, 5.28835, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67530
(@CGUID+76, 18872, 530, 1, 3368.88, 3446.43, 140.362, 3.59538, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67533
(@CGUID+77, 18873, 530, 1, 3364.2, 3459.43, 140.362, 2.9147, 300, 360, 0, 0), -- Disembodied Protector old guid 67550
(@CGUID+78, 18873, 530, 1, 3354.6, 3490.36, 132.846, 0.0174533, 300, 360, 10, 1), -- Disembodied Protector old guid 67551
(@CGUID+79, 18873, 530, 1, 3381.25, 3483.58, 140.005, 1.53769, 300, 360, 10, 1), -- spawn_group_entry old guid 67531
(@CGUID+80, 18872, 530, 1, 3386.88, 3515.86, 147.421, 5.10096, 300, 360, 6, 1), -- Disembodied Vindicator old guid 67532
(@CGUID+81, 21058, 530, 1, 3364.54, 3471.53, 140.913, 4.92918, 300, 360, 0, 4), -- Disembodied Exarch old guid 73965
-- Area between area 52 and ruins of enkaat
(@CGUID+82, 18864, 530, 1, 3322.75, 3755.08, 138.872, 1.06576, 300, 360, 8, 1), -- Mana Wraith old guid 67445
(@CGUID+83, 18864, 530, 1, 3303.67, 3726.11, 134.625, 0.142876, 300, 360, 8, 1), -- Mana Wraith was missing before
(@CGUID+84, 18864, 530, 1, 3267.05, 3710.46, 131.285, 2.29114, 300, 360, 8, 1), -- Mana Wraith was missing before
(@CGUID+85, 18864, 530, 1, 3231.12, 3719.54, 126.922, 5.39083, 300, 360, 8, 1), -- Mana Wraith was missing before
(@CGUID+86, 18864, 530, 1, 3260.9, 3668.11, 129.142, 1.52983, 300, 360, 8, 1), -- Mana Wraith was missing before
(@CGUID+87, 18864, 530, 1, 3302.19, 3675.14, 129.599, 6.17297, 300, 360, 8, 1), -- Mana Wraith old guid 67444
(@CGUID+88, 18864, 530, 1, 3276.35, 3619.61, 127.51, 1.76854, 300, 360, 8, 1), -- Mana Wraith old guid 67442
(@CGUID+89, 18864, 530, 1, 3274.64, 3583.8, 124.161, 5.79517, 300, 360, 8, 1), -- Mana Wraith old guid 67440

(@CGUID+90, 20210, 530, 1, 3226.75, 3666.44, 129.027, 4.28765, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71849
(@CGUID+91, 20210, 530, 1, 3230.48, 3588.29, 126.652, 2.15864, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71844

(@CGUID+92, 20210, 530, 1, 3205.75, 3620.4, 129.272, 3.49648, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71845
(@CGUID+93, 20210, 530, 1, 3164.51, 3599.93, 136.499, 4.2228, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71850
(@CGUID+94, 20210, 530, 1, 3199.6, 3566.91, 129.094, 5.72752, 360, 420, 4, 1), -- Shaleskin Flayer missing before
(@CGUID+95, 20210, 530, 1, 3187.85, 3660.27, 130.398, 5.44326, 360, 420, 0, 4), -- Shaleskin Flayer guid before 1002679

(@CGUID+96, 18881, 530, 1, 3272.25, 3654.49, 124.501, 3.23666, 360, 420, 0, 4), -- Sundered Rumbler old guid 1002675

(@CGUID+97, 18864, 530, 1, 3322.77, 3631.72, 134.414, 3.4427, 300, 360, 8, 1), -- Mana Wraith old guid 67443
(@CGUID+98, 18864, 530, 1, 3317.41, 3581.29, 128.356, 5.38212, 300, 360, 8, 1), -- Mana Wraith old guid 67441
(@CGUID+99, 18864, 530, 1, 3298.91, 3553.04, 125.914, 3.22219, 300, 360, 8, 1), -- Mana Wraith old guid 67426
(@CGUID+100, 18864, 530, 1, 3315.25, 3517.83, 127.386, 2.82702, 300, 360, 8, 1), -- Mana Wraith old guid 67425
(@CGUID+101, 18864, 530, 1, 3282.33, 3506.47, 118.291, 1.96594, 300, 360, 8, 1), -- Mana Wraith old guid 67427
(@CGUID+102, 18864, 530, 1, 3311.5, 3468.26, 111.279, 4.86737, 300, 360, 8, 1), -- Mana Wraith old guid 67428
(@CGUID+103, 18864, 530, 1, 3272.35, 3462.17, 105.557, 2.79875, 300, 360, 8, 1), -- Mana Wraith old guid 67434

(@CGUID+104, 18864, 530, 1, 3295.72, 3432.22, 113.106, 1.16937, 300, 360, 8, 1), -- Mana Wraith old guid 67423
(@CGUID+105, 18864, 530, 1, 3322.87, 3413.19, 122.092, 2.68319, 300, 360, 8, 1), -- Mana Wraith old guid 67424
(@CGUID+106, 18864, 530, 1, 3298.68, 3387.1, 110.713, 2.83196, 300, 360, 8, 1), -- Mana Wraith old guid 67430
(@CGUID+107, 18864, 530, 1, 3244.78, 3400.87, 111.161, 5.37253, 300, 360, 8, 1), -- Mana Wraith old guid 67431
(@CGUID+108, 18864, 530, 1, 3250.12, 3360.03, 107.441, 0.577386, 300, 360, 8, 1), -- Mana Wraith was missing before
(@CGUID+109, 18864, 530, 1, 3225.62, 3450.04, 105.194, 2.50593, 300, 360, 8, 1), -- Mana Wraith guid before 67432
(@CGUID+110, 18864, 530, 1, 3241.51, 3486.2, 113.31, 1.36751, 300, 360, 8, 1), -- Mana Wraith missing before
(@CGUID+111, 18864, 530, 1, 3202.55, 3501.94, 115.849, 4.5468, 300, 360, 8, 1), -- Mana Wraith guid before 67439
(@CGUID+112, 18864, 530, 1, 3185.27, 3483.81, 102.327, 6.04828, 300, 360, 8, 1), -- Mana Wraith guid before 67438
(@CGUID+113, 18864, 530, 1, 3148.27, 3434.73, 105.913, 0.883123, 300, 360, 8, 1), -- Mana Wraith guid before 67437
(@CGUID+114, 18864, 530, 1, 3217.05, 3420.99, 107.369, 0.699482, 300, 360, 8, 1), -- Mana Wraith guid before 67429
(@CGUID+115, 18864, 530, 1, 3182.29, 3382.11, 103.4, 5.27984, 300, 360, 8, 1), -- Mana Wraith guid before 67435
(@CGUID+116, 18864, 530, 1, 3217.41, 3348.21, 105.933, 4.85202, 300, 360, 8, 1), -- Mana Wraith guid before 67436

(@CGUID+117, 20210, 530, 1, 3110.8, 3298.94, 111.062, 1.61305, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71842
(@CGUID+118, 20210, 530, 1, 3156.72, 3337.23, 108.569, 2.82583, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71841
(@CGUID+119, 20210, 530, 1, 3115.49, 3539.53, 143.816, 1.46608, 360, 420, 4, 1), -- Shaleskin Flayer missing before
(@CGUID+120, 20210, 530, 1, 3073.82, 3535.77, 143.236, 4.02199, 360, 420, 4, 1), -- Shaleskin Flayer missing before
-- This missing Phase Hunter has a rly bad spawn position but its confirmed from sniffs that it spawns all the way down and moves up to the island
(@CGUID+121, 18879, 530, 1, 3445.5469, 3377.9636, -186.69614, 2.6809666, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+122, 18879, 530, 1, 3240.69, 3255.38, 124.595, 2.68195, 120, 180, 0, 2), -- Phase Hunter guid before 67625 
(@CGUID+123, 18879, 530, 1, 3197.14, 3215.58, 113.461, 2.50369, 120, 180, 0, 2), -- Phase Hunter guid before 67626 
 
(@CGUID+124, 18881, 530, 1, 3302.44, 3478.42, 108.005, 3.00104, 360, 420, 0, 4), -- Sundered Rumbler old guid 67694
(@CGUID+125, 18881, 530, 1, 3321.98, 3382.2, 95.5065, 0.3876, 360, 420, 0, 4), -- Sundered Rumbler old guid 67697
(@CGUID+126, 18881, 530, 1, 3235.5491, 3350.212, 93.408, 4.890, 360, 420, 0, 4), -- Sundered Rumbler old guid 67696
(@CGUID+127, 18881, 530, 1, 3164.351, 3385.3452, 100.7853, 1.1868, 360, 420, 0, 4), -- Sundered Rumbler old guid 67695

(@CGUID+128, 18880, 530, 1, 3112.22, 3550.12, 140.615, 0.281358, 360, 420, 0, 4), -- Nether Ray guid before 67677
(@CGUID+129, 18880, 530, 1, 3188.54, 3356.01, 103.683, 4.15397, 360, 420, 0, 2), -- Nether Ray guid before 67676

(@CGUID+130, 20210, 530, 1, 3004.71, 3369.09, 104.646, 5.28046, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71890
(@CGUID+131, 20210, 530, 1, 2990.35, 3426.19, 106.054, 2.67338, 360, 420, 4, 1), -- Shaleskin Flayer missing before
(@CGUID+132, 20210, 530, 1, 2924.86, 3396.3, 105.731, 1.75946, 360, 420, 4, 1), -- Shaleskin Flayer missing before
(@CGUID+133, 20210, 530, 1, 3055.42, 3240.19, 118.1, 4.38068, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71843

-- Farahlon Giants having a fast respawn timer
(@CGUID+134, 18885, 530, 1, 3020.59, 3193.82, 120.721, 4.94689, 120, 300, 6, 1), -- Farahlon Giant
(@CGUID+135, 18885, 530, 1, 2988.63, 3311.06, 143.871, 6.10842, 120, 300, 6, 1), -- Farahlon Giant
(@CGUID+136, 18885, 530, 1, 2951.19, 3303.02, 154.342, 1.59422, 120, 300, 6, 1), -- Farahlon Giant
(@CGUID+137, 18885, 530, 1, 2956.06, 3217.67, 146.699, 5.26936, 120, 300, 6, 1), -- Farahlon Giant
(@CGUID+138, 18885, 530, 1, 2882.91, 3204.03, 173.905, 1.23877, 120, 300, 6, 1), -- Farahlon Giant
(@CGUID+139, 18885, 530, 1, 2964.57, 3130.3, 126.159, 5.24058, 120, 300, 6, 1), -- Farahlon Giant
-- Artifact Seeker
(@CGUID+140, 19852, 530, 1, 2804.11, 3347.12, 146.058, 4.0177, 300, 420, 5, 1), -- Artifact Seeker old guid 70977
(@CGUID+141, 19852, 530, 1, 2807.05, 3292.72, 148.29, 0.10472, 300, 420, 5, 1), -- Artifact Seeker missing before
(@CGUID+142, 19852, 530, 1, 2753.63, 3284.51, 134.762, 0.471291, 300, 420, 5, 1), -- Artifact Seeker old guid 70978
(@CGUID+143, 19852, 530, 1, 2808.95, 3220.54, 146.282, 5.94395, 300, 420, 5, 1), -- Artifact Seeker old guid 70988
(@CGUID+144, 19852, 530, 1, 2747.15, 3248.75, 148.674, 2.7317, 300, 420, 5, 1), -- Artifact Seeker old guid 70985
(@CGUID+145, 19852, 530, 1, 2697.51, 3225.41, 147.612, 0.492836, 300, 420, 0, 2), -- Artifact Seeker old guid 70979
(@CGUID+146, 19852, 530, 1, 2699.68, 3183.12, 148.722, 1.18508, 300, 420, 5, 1), -- Artifact Seeker old guid 70980
(@CGUID+147, 19852, 530, 1, 2783.62, 3152.21, 149.823, 6.00323, 300, 420, 5, 1), -- Artifact Seeker old guid 70984
(@CGUID+148, 19852, 530, 1, 2785.1, 3129, 154.393, 6.27341, 300, 420, 5, 1), -- Artifact Seeker old guid 70987
(@CGUID+149, 19852, 530, 1, 2749.16, 3151.68, 148.895, 2.4461, 300, 420, 5, 1), -- Artifact Seeker old guid 70982
(@CGUID+150, 19852, 530, 1, 2735.35, 3132.77, 151.443, 4.24385, 300, 420, 5, 1), -- Artifact Seeker old guid 70983
(@CGUID+151, 19852, 530, 1, 2683.56, 3116.09, 131.576, 2.16225, 300, 420, 5, 1), -- Artifact Seeker old guid 70981
(@CGUID+152, 19852, 530, 1, 2738.3, 3194.74, 148.599, 2.0668, 300, 420, 5, 1), -- Artifact Seeker old guid 70986
(@CGUID+153, 19852, 530, 1, 2784.88, 3195.01, 147.697, 0.513361, 300, 420, 5, 1), -- Artifact Seeker missing before
-- Fellade Doomguard
(@CGUID+154, 19853, 530, 1, 2844.86, 3279.39, 136.701, 0.383972, 360, 420, 0, 4), -- Fellade Doomguard old guid 70989
(@CGUID+155, 19853, 530, 1, 2805.83, 3374.91, 142.815, 1.56005, 360, 420, 0, 4), -- Fellade Doomguard old guid 70993
(@CGUID+156, 19853, 530, 1, 2774.34, 3293.61, 134.902, 0.925873, 360, 420, 0, 4), -- Fellade Doomguard old guid 70990
(@CGUID+157, 19853, 530, 1, 2767.29, 3120.06, 153.685, 2.06185, 360, 420, 0, 4), -- Fellade Doomguard old guid 70992
(@CGUID+158, 19853, 530, 1, 2670.44, 3107.22, 129.567, 0.471239, 360, 420, 0, 4), -- Fellade Doomguard old guid 1002708
(@CGUID+159, 19853, 530, 1, 2667.65, 3128.15, 136.007, 4.13643, 360, 420, 0, 4), -- Fellade Doomguard old guid 70991
(@CGUID+160, 19853, 530, 1, 2788.5, 3058.51, 127.074, 0.672188, 360, 420, 0, 4), -- Fellade Doomguard old guid 70994

(@CGUID+161, 20215, 530, 1,  2752.2, 3116.26, 155.687, 0.994838, 300, 420, 0, 0), -- Pentatharon guid before 71898

(@CGUID+162, 20210, 530, 1,  2687.15, 3339.43, 135.363, 5.38, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71886

(@CGUID+163, 18879, 530, 1, 2930.82, 3003.23, 132.715, 1.88405, 120, 180, 0, 2), -- Phase Hunter guid before 67636
(@CGUID+164, 18879, 530, 1, 2896.78, 2969.91, 131.094, 2.87416, 120, 180, 0, 2), -- Phase Hunter guid before 67635
(@CGUID+165, 18879, 530, 1, 2882.31, 2919.06, 113.968, 3.1953, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+166, 18879, 530, 1, 2872.51, 2880.38, 106.509, 3.08049, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+167, 18879, 530, 1, 2820.3, 2794.57, 83.2327, 1.72294, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+168, 18879, 530, 1, 2756.97, 2829.56, 97.8828, 0.72591, 120, 180, 0, 2), -- Phase Hunter guid before 67633
(@CGUID+169, 18879, 530, 1, 2725.24, 2857.4, 118.093, 0.828344, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+170, 18879, 530, 1, 2657.38, 2926.52, 112.107, 6.1009, 120, 180, 0, 2), -- Phase Hunter guid before 67634
(@CGUID+171, 18879, 530, 1, 2666.63, 2975.45, 128.767, 0.118416, 120, 180, 0, 2), -- Phase Hunter guid before 67632
(@CGUID+172, 18879, 530, 1, 2644.96, 2990.58, 126.522, 0.629447, 120, 180, 0, 2), -- Phase Hunter guid before 67631

(@CGUID+173, 18880, 530, 1, 2791.07, 2869.06, 96.1818, 3.05697, 360, 420, 0, 4), -- Nether Ray guid before 67684
(@CGUID+174, 18880, 530, 1, 2893.23, 3046.63, 120.373, 0.719749, 360, 420, 0, 4), -- Nether Ray guid before
(@CGUID+175, 18880, 530, 1, 2864.18, 3100.29, 136.17, 3.04468, 360, 420, 0, 4), -- Nether Ray guid before
(@CGUID+176, 18880, 530, 1, 2825.26, 3048.39, 129.472, 5.59516, 360, 420, 0, 4), -- Nether Ray guid before
(@CGUID+177, 18880, 530, 1, 2829.98, 3008.65, 122.736, 4.90478, 360, 420, 0, 4), -- Nether Ray guid before
(@CGUID+178, 18880, 530, 1, 2778.39, 2967.84, 118.918, 3.63057, 360, 420, 0, 4), -- Nether Ray guid before
(@CGUID+179, 18880, 530, 1, 2761.63, 2922.39, 117.805, 4.58564, 360, 420, 0, 4), -- Nether Ray guid before

(@CGUID+180, 18879, 530, 1, 3318.74, 4149.87, 150.944, 5.45978, 120, 180, 0, 2), -- Phase Hunter guid before 67614
(@CGUID+181, 18879, 530, 1, 3284.29, 4113.5, 156.866, 5.53663, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+182, 18879, 530, 1, 3267.33, 4105.89, 154.553, 5.01321, 120, 180, 0, 2), -- Phase Hunter guid before 67627

(@CGUID+183, 20210, 530, 1, 3335.08, 4048.89, 159.755, 0.448308, 360, 420, 4, 1), -- Shaleskin Flayer missing before 
(@CGUID+184, 20210, 530, 1, 3379.28, 4013.76, 175.003, 2.1437, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71870
(@CGUID+185, 20210, 530, 1, 3289.48, 4006.78, 157.532, 4.35319, 360, 420, 4, 1), -- Shaleskin Flayer missing before 
(@CGUID+186, 20210, 530, 1, 3353.23, 3975.37, 182.481, 0.832374, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71868
(@CGUID+187, 20210, 530, 1, 3380.56, 3962.93, 198.072, 3.43847, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71869
(@CGUID+188, 20210, 530, 1, 3314.34, 3915.16, 191.238, 4.43253, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71866
(@CGUID+189, 20210, 530, 1, 3282.46, 3962.93, 167.705, 1.92397, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71865/71867 double spawned
(@CGUID+190, 20210, 530, 1, 3347.32, 4069.23, 150.748, 5.40025, 360, 420, 0, 2), -- Shaleskin Flayer guid before 71872
(@CGUID+191, 20210, 530, 1, 3263.07, 3894.47, 195.445, 1.11266, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71864
(@CGUID+192, 20210, 530, 1, 3225.34, 3945.78, 169.325, 1.92507, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71861
(@CGUID+193, 20210, 530, 1, 3178.6, 3924.68, 180.576, 3.83615, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71859
(@CGUID+194, 20210, 530, 1, 3203.37, 4001.57, 148.354, 0.944047, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71863
(@CGUID+195, 20210, 530, 1, 3213.92, 3893.81, 195.734, 1.26839, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71862

(@CGUID+196, 18880, 530, 1, 3362.04, 4183.53, 132.559, 3.26377, 360, 420, 0, 4), -- Nether Ray guid before 67674
(@CGUID+197, 18880, 530, 1, 3378.86, 4069.8, 162.616, 2.53073, 360, 420, 0, 4), -- Nether Ray guid before 67681
(@CGUID+198, 18880, 530, 1, 3354.37, 3934.01, 195.275, 3.0479, 360, 420, 0, 4), -- Nether Ray guid before 67680
(@CGUID+199, 18880, 530, 1, 3243.52, 3979.22, 157.322, 2.11185, 360, 420, 0, 4), -- Nether Ray guid before 67679

(@CGUID+200, 20210, 530, 1, 3162.1, 3976.6, 159.669, 2.56585, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71858
(@CGUID+201, 20210, 530, 1, 3119.2, 3926.98, 180.011, 0.279253, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71855
(@CGUID+202, 20210, 530, 1, 3121.29, 3980.04, 163.534, 0.462223, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71857
(@CGUID+203, 20210, 530, 1, 3120.58, 4029.82, 147.495, 4.7146, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71860
(@CGUID+204, 20210, 530, 1, 3162.22, 4029.77, 140.541, 2.73407, 360, 420, 0, 2), -- Shaleskin Flayer guid before 71856

(@CGUID+205, 18864, 530, 1, 3279.02, 3843.3, 144.354, 5.7963, 300, 360, 3, 1), -- Mana Wraith old guid 67446
(@CGUID+206, 18864, 530, 1, 3240.56, 3843.44, 145.35, 1.81514, 300, 360, 3, 1), -- Mana Wraith old guid 67447

(@CGUID+207, 20210, 530, 1, 3185.83, 3815.21, 140.523, 1.5708, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71847
(@CGUID+208, 20210, 530, 1, 3152.69, 3762.36, 139.145, 3.46642, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71848
(@CGUID+209, 20210, 530, 1, 3121.52, 3808.13, 142.692, 2.85377, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71853
(@CGUID+210, 20210, 530, 1, 3114.58, 3864, 143.553, 0.906061, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71854

(@CGUID+211, 18880, 530, 1, 3141.94, 3858.66, 144.528, 1.05362, 360, 420, 0, 2), -- Nether Ray guid before 67678
(@CGUID+212, 18880, 530, 1, 3155.52, 4090.61, 129.675, 5.74205, 360, 420, 0, 4), -- Nether Ray missing before 

(@CGUID+213, 18879, 530, 1, 3199.03, 4101.16, 137.205, 4.40895, 120, 180, 0, 2), -- Phase Hunter missing before 
(@CGUID+214, 18879, 530, 1, 3166.19, 4123.23, 139.705, 4.38616, 120, 180, 0, 2), -- Phase Hunter guid before 67628
(@CGUID+215, 18879, 530, 1, 3122.17, 4151.59, 143.194, 4.52294, 120, 180, 0, 2), -- Phase Hunter guid before 67629
(@CGUID+216, 18879, 530, 1, 3112.81, 4179.87, 139.792, 3.90903, 120, 180, 0, 2), -- Phase Hunter guid before 67630
(@CGUID+217, 18879, 530, 1, 3117.33, 4218.62, 144.121, 3.18767, 120, 180, 0, 2), -- Phase Hunter missing before
(@CGUID+218, 18879, 530, 1, 3130.51, 4281.24, 144.828, 3.1043, 120, 180, 0, 2), -- Phase Hunter guid before 67613
(@CGUID+219, 18879, 530, 1, 3099.62, 4348.18, 140.869, 3.71079, 120, 180, 0, 2), -- Phase Hunter guid before 67612

(@CGUID+220, 18879, 530, 1, 3075.08, 4408.19, 121.747, 3.85511, 120, 180, 0, 2), -- Phase Hunter guid before 67610
(@CGUID+221, 18879, 530, 1, 3018.82, 4426.31, 139.441, 4.68864, 120, 180, 0, 2), -- Phase Hunter guid before 67611

(@CGUID+222, 18879, 530, 1, 2958.25, 4469.85, 125.933, 4.58997, 120, 180, 0, 2), -- Phase Hunter guid before 67609
(@CGUID+223, 18879, 530, 1, 2915.91, 4496.36, 128.121, 4.72475, 120, 180, 0, 2), -- Phase Hunter guid before 67608

(@CGUID+224, 20210, 530, 1, 3335.08, 4048.89, 159.755, 0.448308, 360, 420, 4, 1), -- Shaleskin Flayer guid before 71871

-- Manaforge B'naar
(@CGUID+225, 18853, 530, 1, 3038.28, 3916.57, 147.058, 5.51524, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67309
(@CGUID+226, 18853, 530, 1, 3054.48, 3920.3, 147.177, 4.46804, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67311

(@CGUID+227, 18853, 530, 1, 3046.59, 3943.96, 156.478, 4.67748, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67310
(@CGUID+228, 18853, 530, 1, 3023.85, 3944.71, 154.933, 6.10865, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67313
(@CGUID+229, 18853, 530, 1, 3017.69, 3962.3, 156.185, 5.93412, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67312

(@CGUID+230, 19635, 530, 1, 3032.15, 3960.44, 155.42, 4.2237, 120, 120, 0, 2), -- Captain Arathyn guid before 70059

(@CGUID+231, 18853, 530, 1, 2984.13, 4030.86, 148.562, 4.24115, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67314

(@CGUID+232, 18853, 530, 1, 2967.75, 4040.7, 151.198, 5.75959, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67316
(@CGUID+233, 18853, 530, 1, 2975.52, 4048.32, 151.357, 5.5676, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67315

(@CGUID+234, 18853, 530, 1, 2946.24, 4072.66, 158.277, 5.63741, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67317
(@CGUID+235, 18853, 530, 1, 2937.89, 4088.52, 161.097, 5.58505, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67319
(@CGUID+236, 18853, 530, 1, 2948.82, 4092.75, 160.55, 4.7473, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67318

(@CGUID+237, 19453, 530, 1, 2934.37, 4111.43, 162.682, 4.97978, 360, 480, 0, 4), -- Sunfury Captain guid before 69669

(@CGUID+238, 18855, 530, 1, 2978.48, 4085.93, 150.241, 0.279253, 300, 420, 0, 0), -- Sunfury Magister guid before 67354 
(@CGUID+239, 18855, 530, 1, 2984.35, 4098.23, 150.186, 5.00909, 300, 420, 0, 0), -- Sunfury Magister guid before 67356
(@CGUID+240, 18855, 530, 1, 3014.67, 4103.79, 150.632, 4.67748, 300, 420, 0, 0), -- Sunfury Magister guid before 67355
(@CGUID+241, 18855, 530, 1, 3021.76, 4092.47, 150.303, 4.10152, 300, 420, 0, 0), -- Sunfury Magister guid before 67353
(@CGUID+242, 18855, 530, 1, 3034.89, 4090.47, 150.703, 2.84489, 300, 420, 0, 0), -- Sunfury Magister guid before 67351
(@CGUID+243, 18855, 530, 1, 3027.89, 4076.43, 150.291, 3.14159, 300, 420, 0, 0), -- Sunfury Magister guid before 67352
(@CGUID+244, 18855, 530, 1, 3036.04, 4063.57, 150.998, 1.93732, 300, 420, 0, 0), -- Sunfury Magister guid before 67350
(@CGUID+245, 18855, 530, 1, 3015.23, 4061.71, 150.21, 2.0944, 300, 420, 0, 0), -- Sunfury Magister guid before 67349

(@CGUID+246, 19643, 530, 1, 3002.18, 4103.35, 150.696, 5.89873, 360, 480, 0, 2), -- Sunfury Astromancer guid before 70069

(@CGUID+247, 19779, 530, 1, 2999.76, 4120.61, 155.337, 1.51844, 300, 420, 0, 0), -- Sunfury Geologist guid before 70732

(@CGUID+248, 19779, 530, 1, 2925.46, 4083.41, 147.984, 2.07694, 300, 420, 0, 0), -- Sunfury Geologist guid before 70733
(@CGUID+249, 19779, 530, 1, 2897.67, 4088.99, 155.844, 2.51327, 300, 420, 0, 0), -- Sunfury Geologist guid before 70735
(@CGUID+250, 19779, 530, 1, 2880.32, 4064.76, 148.698, 2.54818, 300, 420, 0, 0), -- Sunfury Geologist guid before 70737
(@CGUID+251, 19779, 530, 1, 2866.22, 4063.33, 157.106, 3.82227, 300, 420, 0, 0), -- Sunfury Geologist guid before 70738
(@CGUID+252, 19779, 530, 1, 2871.12, 4054.23, 157.272, 3.92699, 300, 420, 0, 0), -- Sunfury Geologist guid before 70734
(@CGUID+253, 19779, 530, 1, 2876.11, 4045.08, 155.574, 3.83972, 300, 420, 0, 0), -- Sunfury Geologist guid before 70736

(@CGUID+254, 18855, 530, 1, 2926.44, 4056.91, 149.323, 3.29867, 300, 420, 0, 0), -- Sunfury Magister guid before 67359
(@CGUID+255, 18855, 530, 1, 2915.5, 4064.86, 149.253, 5.51524, 300, 420, 0, 0), -- Sunfury Magister guid before 67358
(@CGUID+256, 18855, 530, 1, 2902.86, 4065.47, 149.259, 5.79449, 300, 420, 0, 0), -- Sunfury Magister guid before 67360
(@CGUID+257, 18855, 530, 1, 2898.45, 4054.55, 149.472, 0.244346, 300, 420, 0, 0), -- Sunfury Magister guid before 67361

(@CGUID+258, 19643, 530, 1, 2903.34, 4044.79, 150.321, 2.6529, 360, 480, 0, 2), -- Sunfury Astromancer guid before 70070

(@CGUID+259, 18855, 530, 1, 2919.75, 4004.16, 149.871, 2.63545, 300, 420, 0, 0), -- Sunfury Magister guid before 67357
(@CGUID+260, 18855, 530, 1, 2894.89, 4009.42, 149.813, 0.733038, 300, 420, 0, 0), -- Sunfury Magister guid before 67362

(@CGUID+261, 18853, 530, 1, 2915.79, 3988.8, 153.181, 4.10152, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67320
(@CGUID+262, 18853, 530, 1, 2894.35, 3992.06, 153.44, 6.14356, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67321

(@CGUID+263, 18857, 530, 1, 2888.56, 4034.06, 152.3, 5.09636, 360, 480, 0, 4), -- Sunfury Warp-Master guid before 67377

(@CGUID+264, 18853, 530, 1, 2839.8, 4033.06, 167.533, 1.39626, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67322
(@CGUID+265, 18853, 530, 1, 2850.15, 4037.25, 166.736, 3.03687, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67325
(@CGUID+266, 18853, 530, 1, 2857.96, 4042.26, 167.298, 2.79253, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67324
(@CGUID+267, 18853, 530, 1, 2862.16, 4050.24, 170.225, 3.64774, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67323

(@CGUID+268, 19686, 530, 1, 2839.81, 4036.71, 168.95, 4.59022, 2, 12, 0, 0), -- Nether Anomaly guid before 70187
(@CGUID+269, 19686, 530, 1, 2845.93, 4041.9, 169.919, 5.68977, 2, 12, 0, 0), -- Nether Anomaly guid before 70184
(@CGUID+270, 19686, 530, 1, 2850.66, 4046.76, 171.173, 5.95157, 2, 12, 0, 0), -- Nether Anomaly guid before 70183
(@CGUID+271, 19686, 530, 1, 2857.77, 4049.44, 170.95, 0.383972, 2, 12, 0, 0), -- Nether Anomaly guid before 70182

-- Manaforge B'Naar Innside
(@CGUID+272, 18852, 530, 1, 2895.97, 4172.31, 161.966, 1.01229, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67287
(@CGUID+273, 18852, 530, 1, 2919.19, 4178.64, 161.966, 3.76865, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67288
(@CGUID+274, 18852, 530, 1, 2934.98, 4180.37, 163.845, 6.00312, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67286
(@CGUID+275, 18852, 530, 1, 2871.98, 4186.13, 164.053, 2.82743, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 1002734
(@CGUID+276, 18852, 530, 1, 2907.67, 4215.62, 164.07, 4.48646, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 1002735

(@CGUID+277, 18857, 530, 1, 2893.93, 4195.61, 161.965, 5.53269, 360, 480, 0, 0), -- Sunfury Warp-Master guid before 1002737
(@CGUID+278, 18857, 530, 1, 2913.14, 4196.44, 161.961, 2.5549, 360, 480, 0, 0), -- Sunfury Warp-Master guid before 1002738
(@CGUID+279, 18857, 530, 1, 2825.57, 4147.54, 162.682, 1.9875, 360, 480, 0, 2), -- Sunfury Warp-Master guid before 1002739

(@CGUID+280, 20416, 530, 1, 2854.82, 4162.97, 162.682, 3.52111, 360, 480, 0, 2), -- Overseer Theredis guid before 72389

(@CGUID+281, 18857, 530, 1, 2828.32, 4152.31, 162.682, 3.40456, 360, 480, 0, 0), -- Sunfury Warp-Master guid before 67383
(@CGUID+282, 18852, 530, 1, 2979.56, 4215.06, 162.682, 0.279253, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 1002736

-- Manaorge B'Naar North - West Exit
(@CGUID+283, 18855, 530, 1, 3000.73, 4209.19, 160.967, 1.27409, 300, 420, 0, 0), -- Sunfury Magister guid before 1002717
(@CGUID+284, 18855, 530, 1, 2986.11, 4237.62, 160.973, 0.593412, 300, 420, 0, 0), -- Sunfury Magister guid before 1002721
(@CGUID+285, 18855, 530, 1, 2994.08, 4254.48, 160.855, 5.46288, 300, 420, 0, 0), -- Sunfury Magister guid before 1002720
(@CGUID+286, 18855, 530, 1, 3011.37, 4254.43, 160.945, 4.64258, 300, 420, 0, 0), -- Sunfury Magister guid before 1002719
(@CGUID+287, 18855, 530, 1, 3031.16, 4226.09, 160.862, 2.63545, 300, 420, 0, 0), -- Sunfury Magister guid before 1002718

(@CGUID+288, 19643, 530, 1, 3008.96, 4188.4, 160.925, 1.18447, 360, 480, 0, 2), -- Sunfury Astromancer guid before 1002722

(@CGUID+289, 18853, 530, 1, 3006.66, 4193.74, 160.953, 6.19592, 330, 420, 0, 0), -- Sunfury Bloodwarder missing before
(@CGUID+290, 18853, 530, 1, 3009.86, 4184.12, 160.888, 0.977384, 330, 420, 0, 0), -- Sunfury Bloodwarder missing before
-- Pillar 
(@CGUID+291, 18857, 530, 1, 2954.63, 4294.95, 151.89, 0.628319, 360, 480, 0, 2), -- Sunfury Warp-Master guid before 1002726

(@CGUID+293, 18852, 530, 1, 2962.55, 4297.1, 149.571, 5.64735, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 1002731
(@CGUID+294, 18852, 530, 1, 2972.45, 4322.28, 147.871, 2.42614, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 1002727
(@CGUID+295, 18852, 530, 1, 2970.01, 4333.44, 148.965, 3.92908, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 1002728
(@CGUID+296, 18852, 530, 1, 2958.54, 4335.18, 149.24, 4.53786, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 1002729
(@CGUID+297, 18852, 530, 1, 2948.69, 4331.01, 154.045, 5.58505, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 1002730
-- West Exit
(@CGUID+298, 18853, 530, 1, 2871.77, 4280.43, 160.025, 2.23402, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67326
(@CGUID+299, 18853, 530, 1, 2859.57, 4275.77, 160.189, 1.95477, 330, 420, 0, 0), -- Sunfury Bloodwarder missing before 

(@CGUID+300, 18853, 530, 1, 2886.19, 4314.07, 157.732, 3.22886, 330, 420, 0, 0), -- Sunfury Bloodwarder missing before
(@CGUID+301, 18853, 530, 1, 2885.37, 4327.74, 157.533, 3.40339, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67327
(@CGUID+302, 18853, 530, 1, 2885.82, 4345.76, 157.721, 4.46804, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67307
(@CGUID+303, 18853, 530, 1, 2894.18, 4352.87, 157.736, 3.87463, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67308

(@CGUID+304, 19453, 530, 1, 2883.09, 4375.47, 158.305, 4.84596, 360, 480, 0, 4), -- Sunfury Captain guid before 69670

(@CGUID+305, 18852, 530, 1, 2837.73, 4334.01, 146.746, 3.32256, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67285
(@CGUID+306, 18852, 530, 1, 2834.61, 4345.15, 144.91, 3.56047, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67294
(@CGUID+307, 18852, 530, 1, 2824.89, 4353.61, 142.763, 3.3811, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67296
(@CGUID+308, 18852, 530, 1, 2814.55, 4356.75, 142.432, 4.69069, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67281
(@CGUID+309, 18852, 530, 1, 2803.48, 4352.54, 141.888, 5.61068, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67283

(@CGUID+310, 18857, 530, 1, 2808.43, 4316.43, 150.29, 6.25682, 360, 480, 0, 2), -- Sunfury Warp-Master guid before 67381

(@CGUID+311, 18853, 530, 1, 2798.28, 4381, 136.481, 4.53786, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67306

(@CGUID+312, 18853, 530, 1, 2786.11, 4369.83, 136.74, 4.59022, 330, 420, 0, 0), -- Sunfury Bloodwarder missing before
(@CGUID+313, 18853, 530, 1, 2779.66, 4369.59, 136.537, 5.63741, 330, 420, 0, 0), -- Sunfury Bloodwarder missing before
(@CGUID+314, 18853, 530, 1, 2770.78, 4358.93, 136.481, 5.37561, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67331
(@CGUID+315, 18853, 530, 1, 2755.17, 4352.64, 136.586, 6.16101, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67332
(@CGUID+316, 18853, 530, 1,  2736.55, 4352.90, 137.21, 6.0563, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67305

(@CGUID+317, 19453, 530, 1, 2738.39, 4345.91, 139.135, 5.28835, 360, 480, 0, 4), -- Sunfury Captain guid before 69668

(@CGUID+318, 18852, 530, 1, 2803.67, 4243.38, 171.76, 3.90954, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67291
(@CGUID+319, 18852, 530, 1, 2797.05, 4248.79, 172.619, 4.29727, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67293

(@CGUID+320, 18853, 530, 1, 2693.64, 4253.53, 154.35, 1.0821, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67333
(@CGUID+321, 18853, 530, 1, 2686.35, 4269.63, 154.404, 5.3058, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67334

(@CGUID+322, 19643, 530, 1, 2663.26, 4267.47, 154.412, 4.72924, 360, 480, 0, 2), -- Sunfury Astromancer guid before 1002722

(@CGUID+323, 18855, 530, 1, 2665.06, 4236.7, 154.412, 2.53073, 300, 420, 0, 0), -- Sunfury Magister guid before 67367

(@CGUID+324, 18855, 530, 1, 2660.76, 4226.54, 154.412, 2.02458, 300, 420, 0, 0), -- Sunfury Magister guid before 67365
(@CGUID+325, 18855, 530, 1, 2649.89, 4235.99, 154.412, 0.942478, 300, 420, 0, 0), -- Sunfury Magister guid before 67366
(@CGUID+326, 18855, 530, 1, 2642.84, 4263.87, 154.423, 4.88692, 300, 420, 0, 0), -- Sunfury Magister guid before 67363
(@CGUID+327, 18855, 530, 1, 2627.67, 4257.86, 155.165, 6.0912, 300, 420, 0, 0), -- Sunfury Magister guid before 67364
-- Hill South West Manaforge B'Naar
-- Pillar
(@CGUID+328, 18852, 530, 1, 2761.43, 4244.97, 181.697, 0.0523599, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67299
(@CGUID+329, 18852, 530, 1, 2762.66, 4234.74, 181.826, 0.619032, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67298
(@CGUID+330, 18852, 530, 1, 2769.02, 4226.05, 180.206, 0.907571, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67297
(@CGUID+331, 18852, 530, 1, 2776.94, 4218.59, 178.594, 1.0821, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67292
(@CGUID+332, 18852, 530, 1, 2783.92, 4213.4, 177.684, 2.2103, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67290
(@CGUID+333, 18852, 530, 1, 2793.85, 4209.25, 179.409, 5.79575, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67289

-- Stones
(@CGUID+334, 19779, 530, 1, 2776.21, 4201.81, 179.682, 4.7822, 300, 420, 0, 0), -- Sunfury Geologist guid before 70743
(@CGUID+335, 19779, 530, 1, 2771.45, 4196.9, 180.909, 1.15192, 300, 420, 0, 0), -- Sunfury Geologist guid before 70744
(@CGUID+336, 19779, 530, 1, 2751.67, 4209.64, 185.007, 1.50098, 300, 420, 0, 0), -- Sunfury Geologist guid before 70770

(@CGUID+337, 19779, 530, 1, 2724.81, 4198.95, 191.79, 4.55531, 300, 420, 0, 0), -- Sunfury Geologist guid before 70745
(@CGUID+338, 19779, 530, 1, 2734.49, 4192.37, 189.788, 3.15905, 300, 420, 0, 0), -- Sunfury Geologist guid before 70748
(@CGUID+339, 19779, 530, 1, 2728.57, 4178.26, 191.614, 2.87979, 300, 420, 0, 0), -- Sunfury Geologist guid before 70766
(@CGUID+340, 19779, 530, 1, 2724.71, 4171.17, 192.73, 1.91986, 300, 420, 0, 0), -- Sunfury Geologist guid before 70767
(@CGUID+341, 19779, 530, 1, 2717.27, 4181.1, 193.953, 5.74213, 300, 420, 0, 0), -- Sunfury Geologist guid before 70747
(@CGUID+342, 19779, 530, 1, 2719.41, 4195.33, 193.207, 6.21337, 300, 420, 0, 0), -- Sunfury Geologist guid before 70746

(@CGUID+343, 18857, 530, 1, 2713.07, 4188.23, 194.615, 1.37899, 360, 480, 0, 2), -- Sunfury Warp-Master guid before 67379

(@CGUID+344, 18853, 530, 1, 2763.83, 4185.81, 182.977, 4.08407, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67340
(@CGUID+345, 18853, 530, 1, 2757.64, 4185.13, 184.482, 5.96903, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67339
(@CGUID+346, 18853, 530, 1, 2762.13, 4177.78, 183.554, 2.26893, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67338

(@CGUID+347, 19453, 530, 1, 2745.8, 4172.07, 187.713, 1.57506, 360, 480, 0, 2), -- Sunfury Captain guid before 69671

(@CGUID+348, 19779, 530, 1, 2780.13, 4151.78, 180.895, 4.4855, 300, 420, 0, 0), -- Sunfury Geologist guid before 70742
(@CGUID+349, 19779, 530, 1, 2782.93, 4136.82, 179.497, 3.40339, 300, 420, 0, 0), -- Sunfury Geologist guid before 70741
(@CGUID+350, 19779, 530, 1, 2774.91, 4131.84, 180.394, 2.21657, 300, 420, 0, 0), -- Sunfury Geologist guid before 70757
(@CGUID+351, 19779, 530, 1, 2765.67, 4130.86, 181.737, 1.309, 300, 420, 0, 0), -- Sunfury Geologist guid before 70761
(@CGUID+352, 19779, 530, 1, 2769.1, 4146.44, 182.126, 5.91667, 300, 420, 0, 0), -- Sunfury Geologist guid before 70769

(@CGUID+353, 18853, 530, 1, 2784.78, 4119.01, 177.989, 4.69494, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67335
(@CGUID+354, 18853, 530, 1, 2785.82, 4111.81, 177.54, 2.74017, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67337
(@CGUID+355, 18853, 530, 1, 2778.9, 4104.49, 178.448, 5.5676, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67336

(@CGUID+356, 19779, 530, 1, 2784.65, 4078.78, 174.75, 4.93928, 300, 420, 0, 0), -- Sunfury Geologist guid before 70760
(@CGUID+357, 19779, 530, 1, 2796.03, 4068.35, 170.295, 2.54818, 300, 420, 0, 0), -- Sunfury Geologist guid before 70764
(@CGUID+358, 19779, 530, 1, 2779.24, 4071.73, 175.39, 2.44346, 300, 420, 0, 0), -- Sunfury Geologist guid before 70763
(@CGUID+359, 19779, 530, 1, 2765.19, 4073.41, 178.981, 1.0472, 300, 420, 0, 0), -- Sunfury Geologist guid before 70758
(@CGUID+360, 19779, 530, 1, 2764.74, 4086.2, 179.904, 4.4855, 300, 420, 0, 0), -- Sunfury Geologist guid before 70762

(@CGUID+361, 18857, 530, 1, 2774.89, 4063.55, 175.334, 3.04158, 360, 480, 0, 2), -- Sunfury Warp-Master guid before 67380

(@CGUID+362, 19779, 530, 1, 2734.19, 4096.15, 187.139, 2.75762, 300, 420, 0, 0), -- Sunfury Geologist guid before 70755
(@CGUID+363, 19779, 530, 1, 2719.89, 4098.12, 191.379, 1.11701, 300, 420, 0, 0), -- Sunfury Geologist guid before 70750
(@CGUID+364, 19779, 530, 1, 2729.66, 4110.6, 188.585, 2.87979, 300, 420, 0, 0), -- Sunfury Geologist guid before 70754
(@CGUID+365, 19779, 530, 1, 2738.27, 4120.39, 186.729, 2.21657, 300, 420, 0, 0), -- Sunfury Geologist guid before 70759
(@CGUID+366, 19779, 530, 1, 2732.96, 4138.3, 188.966, 2.28638, 300, 420, 0, 0), -- Sunfury Geologist guid before 70759
(@CGUID+367, 19779, 530, 1, 2722.21, 4142.29, 191.691, 5.42797, 300, 420, 0, 0), -- Sunfury Geologist guid before 70768

(@CGUID+368, 18857, 530, 1, 2699.89, 4109.97, 197.545, 1.84869, 360, 480, 0, 2), -- Sunfury Warp-Master guid before 67382

(@CGUID+369, 18855, 530, 1, 2659.87, 4021.17, 173.581, 5.55015, 300, 420, 0, 0), -- Sunfury Magister guid before 67368
(@CGUID+370, 18855, 530, 1, 2674.25, 4029.07, 176.497, 5.51524, 300, 420, 0, 0), -- Sunfury Magister guid before 67369
(@CGUID+371, 18855, 530, 1, 2697.2, 4026.41, 177.688, 4.4855, 300, 420, 0, 0), -- Sunfury Magister guid before 67372
(@CGUID+372, 18855, 530, 1, 2699.82, 4011.02, 175.791, 3.08923, 300, 420, 0, 0), -- Sunfury Magister guid before 67371
(@CGUID+373, 18855, 530, 1, 2672.27, 3997.91, 171.881, 1.43117, 300, 420, 0, 0), -- Sunfury Magister guid before 67370

(@CGUID+374, 19643, 530, 1, 2658.79, 4004.69, 172.26, 2.23474, 360, 480, 0, 2), -- Sunfury Astromancer guid before 70072

(@CGUID+375, 19779, 530, 1, 2713.27, 4033.03, 145.518, 3.61283, 300, 420, 0, 0), -- Sunfury Geologist guid before 70751
(@CGUID+376, 19779, 530, 1, 2717.36, 4016.13, 139.256, 3.07178, 300, 420, 0, 0), -- Sunfury Geologist guid before 70749
(@CGUID+377, 19779, 530, 1, 2718.33, 4002.08, 136.013, 3.22886, 300, 420, 0, 0), -- Sunfury Geologist guid before 70756
(@CGUID+378, 19779, 530, 1, 2727.57, 3990.82, 136.62, 4.04916, 300, 420, 0, 0), -- Sunfury Geologist guid before 70752
(@CGUID+379, 19779, 530, 1, 2737.24, 3984.54, 139.579, 4.27606, 300, 420, 0, 0), -- Sunfury Geologist guid before 70753

(@CGUID+380, 18853, 530, 1, 2771.18, 3988.5, 144.591, 5.5676, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67341
(@CGUID+381, 18853, 530, 1, 2766.43, 3980.43, 144.415, 6.02139, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67343
(@CGUID+382, 18853, 530, 1, 2766.59, 3976.66, 144.374, 0.680678, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67342

(@CGUID+383, 19779, 530, 1, 2758.24, 3953.7, 142.865, 3.66519, 300, 420, 0, 0), -- Sunfury Geologist guid before 70775
(@CGUID+384, 19779, 530, 1, 2759.63, 3944.19, 141.975, 2.46091, 300, 420, 0, 0), -- Sunfury Geologist guid before 70777
(@CGUID+385, 19779, 530, 1, 2743.11, 3944, 141.497, 2.33874, 300, 420, 0, 0), -- Sunfury Geologist guid before 70773
(@CGUID+386, 19779, 530, 1, 2731.43, 3953.42, 142.832, 0.593412, 300, 420, 0, 0), -- Sunfury Geologist guid before 70772

(@CGUID+387, 19779, 530, 1, 2786.13, 3983.8, 144.061, 5.46288, 300, 420, 0, 0), -- Sunfury Geologist guid before 70774
(@CGUID+388, 19779, 530, 1, 2785.02, 3964.85, 143.183, 5.95157, 300, 420, 0, 0), -- Sunfury Geologist guid before 70771
(@CGUID+389, 19779, 530, 1, 2796.3, 3957.11, 143.187, 2.58309, 300, 420, 0, 0), -- Sunfury Geologist guid before 70776
(@CGUID+390, 19779, 530, 1, 2798.19, 3981.44, 142.31, 4.15388, 300, 420, 0, 0), -- Sunfury Geologist guid before 70778

(@CGUID+391, 19779, 530, 1, 2823.21, 3998.62, 141.755, 4.83456, 300, 420, 0, 0), -- Sunfury Geologist guid before 70779
(@CGUID+392, 19779, 530, 1, 2829.86, 4013.65, 145.141, 3.42085, 300, 420, 0, 0), -- Sunfury Geologist guid before 70740
(@CGUID+393, 19779, 530, 1, 2819.55, 4022.12, 147.703, 5.77704, 300, 420, 0, 0), -- Sunfury Geologist guid before 70739

(@CGUID+394, 19779, 530, 1, 2785.18, 3932.35, 143.483, 3.68264, 300, 420, 0, 0), -- Sunfury Geologist guid before 70781
(@CGUID+395, 19779, 530, 1, 2796.21, 3915.66, 146.319, 2.96706, 300, 420, 0, 0), -- Sunfury Geologist guid before 70783

(@CGUID+396, 18853, 530, 1, 2795.33, 3936.39, 144.195, 2.58309, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67344
(@CGUID+397, 18853, 530, 1, 2803.47, 3939.72, 144.808, 5.8294, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67348
(@CGUID+398, 18853, 530, 1, 2809.77, 3940.1, 145.553, 4.13643, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67347
(@CGUID+399, 18853, 530, 1, 2807.92, 3932.08, 145.757, 2.35619, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67345
(@CGUID+400, 18853, 530, 1, 2810.81, 3923.14, 147.125, 0.122173, 330, 420, 0, 0), -- Sunfury Bloodwarder guid before 67346

(@CGUID+401, 18857, 530, 1, 2802.34, 3966.63, 142.425, 2.13739, 360, 480, 0, 2), -- Sunfury Warp-Master guid before 67378

(@CGUID+402, 19453, 530, 1, 2793.76, 3923.89, 144.811, 5.61676, 360, 480, 0, 2), -- Sunfury Captain guid before 69672

(@CGUID+403, 19779, 530, 1, 2848.13, 3931.9, 154.131, 4.17134, 300, 420, 0, 0), -- Sunfury Geologist guid before 70787
(@CGUID+404, 19779, 530, 1, 2841.48, 3921.84, 153.783, 0.139626, 300, 420, 0, 0), -- Sunfury Geologist guid before 70788
(@CGUID+405, 19779, 530, 1, 2832.06, 3899.88, 157.682, 5.18363, 300, 420, 0, 0), -- Sunfury Geologist guid before 70789
(@CGUID+406, 19779, 530, 1, 2860.46, 3919.67, 161.183, 3.63028, 300, 420, 0, 0), -- Sunfury Geologist guid before 70784

(@CGUID+407, 19779, 530, 1, 2832.1, 3879.71, 166.872, 4.5204, 300, 420, 0, 0), -- Sunfury Geologist guid before 70786
(@CGUID+408, 19779, 530, 1, 2823.98, 3874.14, 168.328, 3.9619, 300, 420, 0, 0), -- Sunfury Geologist guid before 70785

(@CGUID+409, 18857, 530, 1, 2840.98, 3935.79, 151.741, 5.18363, 360, 480, 0, 2), -- Sunfury Warp-Master guid before 67384
(@CGUID+410, 18857, 530, 1, 2762.76, 3853.1, 142.561, 2.61799, 360, 480, 0, 4), -- Sunfury Warp-Master guid before 67385

(@CGUID+411, 18852, 530, 1, 2784.79, 3885.33, 159.175, 3.83972, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67303
(@CGUID+412, 18852, 530, 1, 2791.76, 3877.74, 160.80, 3.63, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67300
(@CGUID+413, 18852, 530, 1, 2773.75, 3888.24, 157.259, 4.41542, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67302

(@CGUID+414, 18852, 530, 1, 2750.41, 3868.93, 141.36, 6.10865, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67301
(@CGUID+415, 18852, 530, 1, 2750.91, 3859.45, 139.879, 0.37783, 360, 480, 0, 0), -- Sunfury Warp-Engineer guid before 67304

(@CGUID+416, 19779, 530, 1, 2754.48, 3891.33, 143.098, 0.0174533, 300, 420, 0, 0), -- Sunfury Geologist guid before 70782
(@CGUID+417, 19779, 530, 1, 2753.04, 3879.24, 142.638, 6.26573, 300, 420, 0, 0), -- Sunfury Geologist guid before 70780

(@CGUID+418, 19779, 530, 1, 2711.1, 3883.56, 136.056, 3.12414, 300, 420, 0, 0), -- Sunfury Geologist guid before 70791
(@CGUID+419, 19779, 530, 1, 2702.71, 3889.59, 135.051, 3.76991, 300, 420, 0, 0), -- Sunfury Geologist missing before
(@CGUID+420, 19779, 530, 1, 2704.93, 3901.34, 135.643, 3.9968, 300, 420, 0, 0); -- Sunfury Geologist guid before 70790

DELETE FROM creature_addon WHERE guid IN (67323, 67335, 67337, 67338, 67340, 67342, 67345, 67347, 67348, 67527, 67530, 67533, 67537, 67540, 67545, 67550, 67541, 70008, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819, 75856);
DELETE FROM creature_addon WHERE guid IN (67285,67288,67289,67285,67288,67289,67290,67298,67301,67302,67349,67351,67353,67354,67355,67357,67358,67362,67363,67364,67369,67371,67383,70733,70734,70736,70737,70740,70742,70743,70744,70745,70747,70748,70750,70755,70758,70759,70761,70764,70768,70770,70772,70774,70775,70776,70779,70781,70782,70783,70784,70785,70786,70787,70788,70789,70790,70791);

DELETE FROM creature_addon WHERE guid BETWEEN @CGUID+1 AND @CGUID+420;
INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+75, 0, 8, 0, 0, 0, NULL), -- Disembodied Vindicator
(@CGUID+76, 0, 8, 0, 0, 0, NULL), -- Disembodied Vindicator
(@CGUID+77, 0, 8, 0, 0, 0, NULL), -- Disembodied Protector
-- Sunfury Bloodwarder with Emote AttackStateReady
(@CGUID+264, 0, 0, 1, 333, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+265, 0, 0, 1, 333, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+266, 0, 0, 1, 333, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+267, 0, 0, 1, 333, 0, NULL), -- Sunfury Bloodwarder
-- Sunfury Bloodwarder with StandState Sit
(@CGUID+344, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+345, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+346, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+353, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+354, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+381, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+382, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+397, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+398, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
(@CGUID+399, 0, 1, 0, 0, 0, NULL), -- Sunfury Bloodwarder
-- Sunfury Geologists without movement
(@CGUID+247, 0, 0, 0, 233, 0, NULL), -- Sunfury Geologist
(@CGUID+248, 0, 0, 0, 233, 0, NULL), -- Sunfury Geologist
(@CGUID+249, 0, 0, 0, 233, 0, NULL), -- Sunfury Geologist
(@CGUID+250, 0, 0, 0, 233, 0, NULL), -- Sunfury Geologist
(@CGUID+251, 0, 0, 0, 233, 0, NULL), -- Sunfury Geologist
(@CGUID+252, 0, 0, 0, 233, 0, NULL), -- Sunfury Geologist
(@CGUID+253, 0, 0, 0, 233, 0, NULL); -- Sunfury Geologist

-- Captain Arathyn doesnt have mount on spawn, he gets it after intro
DELETE FROM creature_template_addon WHERE entry IN (19635);
-- Sunfury Geologist doesnt always use EmoteState 233
DELETE FROM creature_template_addon WHERE entry IN (19779);

-- Waypoints
DELETE FROM creature_movement WHERE id IN (67281,67283,67285,67288,67289,67290,67291,67292,67293,67294,67296,67297,67298,67299,67300,67301,67302,67303,67304,1002734,1002735,1002736,67286,1002731,1002730,1002729,1002728,1002727,67363,67364,67365,67366,67367,67368,67369,67370,67371,67372,1002721,1002720,1002719,1002718,1002717,67378,67379,67380,67382,67383,67384,67385,1002737,1002738,1002739,67381,1002726,69668,69671,69672,69670,1002722,70071,70072);
DELETE FROM creature_movement WHERE id IN (67287, 67349, 67350, 67351, 67352, 67353, 67354, 67355, 67356, 67357, 67358, 67359, 67360, 67361, 67362, 67377, 67522, 67674, 67675, 67676, 67677, 67678, 67679, 67680, 67681, 67684, 67685, 67686, 67687, 67688, 67689, 67694, 67695, 67696, 67697, 69669, 70069, 70070, 70990, 70991, 70992, 70993, 70994, 70989, 71811, 71814, 71856, 71872, 72537, 73962, 73963, 73964, 73965, 75856, 1002671, 1002675, 1002679, 1002703, 1002708);
DELETE FROM creature_movement WHERE Id BETWEEN @CGUID+1 AND @CGUID+420;
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
(@CGUID+49, 5, 3422.1394,3690.8667,146.77238, 100, 0, 0),
(@CGUID+49, 6, 3426.9023,3687.7004,147.44237, 100, 0, 0),
(@CGUID+49, 7, 3426.924,3668.7673,152.69373, 100, 0, 0),
(@CGUID+49, 8, 3427.7356,3688.8196,147.39194, 100, 0, 0),
(@CGUID+49, 9, 3450.3057,3679.048,149.7282, 100, 0, 0),
(@CGUID+49, 10, 3469.7615,3651.3213,152.81497, 100, 0, 0),
(@CGUID+49, 11, 3481.7473,3622.8403,157.51076, 100, 0, 0),
-- Disembodied Vindicator
(@CGUID+52, 1, 3463.7102,3715.859,145.79274, 100, 0, 0),
(@CGUID+52, 2, 3436.1484,3720.4075,144.56082, 100, 0, 0),
(@CGUID+52, 3, 3420.9387,3707.8264,144.34853, 100, 0, 0),
(@CGUID+52, 4, 3400.7231,3687.0269,146.54576, 100, 0, 0),
(@CGUID+52, 5, 3380.9153,3679.7935,146.69604, 100, 0, 0),
(@CGUID+52, 6, 3370.248,3677.1074,144.13956, 100, 0, 0),
-- Disembodied Exarch
(@CGUID+57, 1, 3493.958,3716.4414,139.53107, 100, 0, 0),
(@CGUID+57, 2, 3495.994,3701.5735,139.54182, 100, 0, 0),
(@CGUID+57, 3, 3483.015,3686.7092,142.72887, 100, 0, 0),
(@CGUID+57, 4, 3485.6553,3643.8025,137.56613, 100, 0, 0),
(@CGUID+57, 5, 3454.519,3622.8042,140.66364, 100, 0, 0),
(@CGUID+57, 6, 3433.5852,3592.717,144.06717, 100, 0, 0),
(@CGUID+57, 7, 3435.0735,3556.5322,144.45111, 100, 0, 0),
(@CGUID+57, 8, 3433.6025,3514.8782,144.60332, 100, 0, 0),
(@CGUID+57, 9, 3437.3684,3489.0266,145.83838, 100, 0, 0),
-- Disembodied Vindicator on bridge
(@CGUID+58, 1, 3469.388,3645.5144,154.4403, 100, 0, 0),
(@CGUID+58, 2, 3473.2312,3646.1418,153.62642, 100, 0, 0),
(@CGUID+58, 3, 3480.86,3627.4504,156.86302, 100, 0, 0),
(@CGUID+58, 4, 3477.1685,3625.7092,158.05197, 100, 0, 0),
-- Disembodied Exarch
(@CGUID+67, 1, 3532.3967,3614.5186,140.08948, 100, 0, 0),
(@CGUID+67, 2, 3513.4856,3605.4392,149.56723, 100, 0, 0),
(@CGUID+67, 3, 3492.6084,3607.7363,156.45358, 100, 0, 0),
(@CGUID+67, 4, 3491.432,3592.4023,157.28288, 100, 0, 0),
(@CGUID+67, 5, 3480.4915,3594.6575,162.34209, 100, 0, 0),
(@CGUID+67, 6, 3463.0295,3572.0576,170.55417, 100, 0, 0),
(@CGUID+67, 7, 3463.9622,3573.2646,170.04808, 100, 0, 0),
(@CGUID+67, 8, 3493.3945,3594.261,156.62303, 100, 0, 0),
(@CGUID+67, 9, 3493.9067,3605.5696,156.06696, 100, 0, 0),
(@CGUID+67, 10, 3482.2083,3619.503,158.71947, 100, 0, 0),
(@CGUID+67, 11, 3468.7668,3653.0166,152.68875, 100, 0, 0),
-- Disembodied Exarch
(@CGUID+81, 1, 3364.846,3470.1685,140.50317, 100, 0, 0),
(@CGUID+81, 2, 3370.1323,3458.129,140.28578, 100, 0, 0),
(@CGUID+81, 3, 3375.5469,3450.7,140.77701, 100, 0, 0),
(@CGUID+81, 4, 3388.3582,3448.126,140.23923, 100, 0, 0),
(@CGUID+81, 5, 3390.319,3471.8264,140.57706, 100, 0, 0),
(@CGUID+81, 6, 3396.0598,3491.3762,140.49342, 100, 0, 0),
(@CGUID+81, 7, 3415.8794,3496.6216,144.56982, 100, 0, 0),
(@CGUID+81, 8, 3429.3564,3484.8892,144.77328, 100, 0, 0),
(@CGUID+81, 9, 3438.356,3473.669,145.9627, 100, 0, 0),
(@CGUID+81, 10, 3442.5938,3464.301,147.04121, 100, 0, 0),
(@CGUID+81, 11, 3454.726,3480.3142,146.34033, 100, 0, 0),
(@CGUID+81, 12, 3464.3894,3505.2083,145.1815, 100, 0, 0),
(@CGUID+81, 13, 3451.4087,3501.1284,144.69342, 100, 0, 0),
(@CGUID+81, 14, 3440.5193,3517.2292,144.61507, 100, 0, 0),
(@CGUID+81, 15, 3446.6438,3536.021,144.67932, 100, 0, 0),
(@CGUID+81, 16, 3438.059,3555.1382,144.4512, 100, 0, 0),
-- Shaleskin Flayer
(@CGUID+95, 1, 3188.374, 3659.6875, 130.29568, 100, 0, 0),
(@CGUID+95, 2, 3213.531,3632.52,126.01806, 100, 0, 0),
(@CGUID+95, 3, 3225.9272,3599.5134,127.172226, 100, 0, 0),
(@CGUID+95, 4, 3187.7322,3607.3452,132.15582, 100, 0, 0),
(@CGUID+95, 5, 3158.182,3574.298,137.13586, 100, 0, 0),
(@CGUID+95, 6, 3127.683,3566.6233,141.18019, 100, 0, 0),
(@CGUID+95, 7, 3100.1775,3562.4036,141.40752, 100, 0, 0),
(@CGUID+95, 8, 3066.7998,3565.6572,140.49834, 100, 0, 0),
(@CGUID+95, 9, 3078.0825,3533.6243,143.38405, 100, 0, 0),
(@CGUID+95, 10, 3067.1672,3514.7957,147.18686, 100, 0, 0),
(@CGUID+95, 11, 3079.9373,3504.22,154.11162, 100, 0, 0),
(@CGUID+95, 12, 3096.259,3512.2366,152.48154, 100, 0, 0),
(@CGUID+95, 13, 3110.9783,3500.069,156.52367, 100, 0, 0),
(@CGUID+95, 14, 3119.9497,3505.6868,156.65771, 100, 0, 0),
(@CGUID+95, 15, 3130.2236,3529.3425,145.29799, 100, 0, 0),
(@CGUID+95, 16, 3150.659,3554.8845,139.93411, 100, 0, 0),
(@CGUID+95, 17, 3164.6555,3541.3066,140.5421, 100, 0, 0),
(@CGUID+95, 18, 3194.9302,3558.4214,129.52531, 100, 0, 0),
(@CGUID+95, 19, 3216.4192,3531.4685,123.5365, 100, 0, 0),
(@CGUID+95, 20, 3226.379,3558.6243,125.02173, 100, 0, 0),
-- Sundered Rumbler
(@CGUID+96, 1, 3271.1594,3654.384,124.491554, 100, 0, 0),
(@CGUID+96, 2, 3285.1685,3666.9348,122.31402, 100, 0, 0),
(@CGUID+96, 3, 3285.2664,3699.6223,122.56398, 100, 0, 0),
(@CGUID+96, 4, 3276.7998,3732.5596,120.21663, 100, 0, 0),
(@CGUID+96, 5, 3238.595,3748.5776,121.779724, 100, 0, 0),
(@CGUID+96, 6, 3237.8372,3780.7805,124.0307, 100, 0, 0),
-- Phase Hunter
(@CGUID+121, 1, 3445.5469, 3377.9636, -186.69614, 100, 0, 0),
(@CGUID+121, 2, 3414.6042, 3416.7668, 88.08593, 100, 1000, 1887902),
(@CGUID+122, 1, 3240.69, 3255.38, 124.595, 100, 0, 0),
(@CGUID+122, 2, 3191.7534, 3265.9128, 92.39592, 100, 1000, 1887903),
(@CGUID+123, 1, 3197.14, 3215.58, 113.461, 100, 0, 0),
(@CGUID+123, 2, 3151.5234,3251.7734,102.315445, 100, 1000, 1887903),
-- Sundered Rumbler
(@CGUID+124, 1, 3301.8057,3478.514,107.92141, 100, 0, 0),
(@CGUID+124, 2, 3300.63,3524.8142,119.34818, 100, 0, 0),
(@CGUID+124, 3, 3314.2056,3535.8074,122.163635, 100, 0, 0),
(@CGUID+124, 4, 3314.6672,3565.3228,121.83387, 100, 0, 0),
(@CGUID+124, 5, 3295.182,3584.966,121.75817, 100, 0, 0),
(@CGUID+124, 6, 3296.0686,3616.9387,124.74009, 100, 0, 0),
(@CGUID+124, 7, 3317.6453,3642.4731,123.518684, 100, 0, 0),
(@CGUID+124, 8, 3281.766,3673.7588,122.465675, 100, 0, 0),
-- Sundered Rumbler
(@CGUID+125, 1, 3324.7766,3383.345,95.92897, 100, 0, 0),
(@CGUID+125, 2, 3305.17,3406.754,93.34117, 100, 0, 0),
(@CGUID+125, 3, 3281.2415,3419.1807,93.30725, 100, 0, 0),
(@CGUID+125, 4, 3234.8591,3432.4285,93.35765, 100, 0, 0),
(@CGUID+125, 5, 3193.7512,3437.1816,93.65101, 100, 0, 0),
(@CGUID+125, 6, 3175.196,3422.1602,94.11429, 100, 0, 0),
(@CGUID+125, 7, 3147.3193,3422.5964,100.76846, 100, 0, 0),
-- Sundered Rumbler
(@CGUID+126, 1, 3236.8716,3342.8503,93.190125, 100, 0, 0),
(@CGUID+126, 2, 3228.08,3366.1892,93.515335, 100, 0, 0),
(@CGUID+126, 3, 3233.2378,3377.5786,93.56496, 100, 0, 0),
(@CGUID+126, 4, 3226.5872,3388.9055,94.55947, 100, 0, 0),
(@CGUID+126, 5, 3226.9902,3399.9854,94.536736, 100, 0, 0),
(@CGUID+126, 6, 3242.6619,3428.5103,93.3094, 100, 0, 0),
(@CGUID+126, 7, 3254.799,3462.6143,99.541275, 100, 0, 0),
(@CGUID+126, 8, 3260.2695,3469.9111,99.628494, 100, 0, 0),
(@CGUID+126, 9, 3260.7092,3483.8174,100.68884, 100, 0, 0),
-- Sundered Rumbler
(@CGUID+127, 1, 3165.3816,3385.6506,99.935135, 100, 0, 0),
(@CGUID+127, 2, 3175.1338,3400.337,95.636444, 100, 0, 0),
(@CGUID+127, 3, 3175.3635,3421.0696,94.11429, 100, 0, 0),
(@CGUID+127, 4, 3193.5847,3438.2817,93.65382, 100, 0, 0),
(@CGUID+127, 5, 3191.958,3480.1646,99.2711, 100, 0, 0),
(@CGUID+127, 6, 3209.4875,3493.788,105.44676, 100, 0, 0),
(@CGUID+127, 7, 3257.8816,3501.5203,109.8304, 100, 0, 0),
(@CGUID+127, 8, 3283.0522,3531.8293,117.078, 100, 0, 0),
(@CGUID+127, 9, 3281.3787,3566.4753,118.67311, 100, 0, 0),
(@CGUID+127, 10, 3291.4287,3581.389,121.767944, 100, 0, 0),
-- Nether Ray
(@CGUID+128, 1, 3115.4097,3551.0442,140.67986, 100, 0, 0),
(@CGUID+128, 2, 3138.7083,3561.236,141.55426, 100, 0, 0),
(@CGUID+128, 3, 3172.9683,3580.5981,135.06161, 100, 0, 0),
(@CGUID+128, 4, 3205.6467,3602.592,129.2431, 100, 0, 0),
(@CGUID+128, 5, 3223.2488,3624.7148,126.893974, 100, 0, 0),
(@CGUID+128, 6, 3235.0657,3659.3547,127.730934, 100, 0, 0),
(@CGUID+128, 7, 3216.7004,3678.948,130.46481, 100, 0, 0),
(@CGUID+128, 8, 3189.7402,3684.1267,130.98631, 100, 0, 0),
(@CGUID+128, 9, 3170.8252,3663.5764,132.49463, 100, 0, 0),
(@CGUID+128, 10, 3178.6458,3639.5737,130.32205, 100, 0, 0),
(@CGUID+128, 11, 3190.81,3613.542,130.4043, 100, 0, 0),
(@CGUID+128, 12, 3192.8608,3576.9521,131.11758, 100, 0, 0),
(@CGUID+128, 13, 3174.97,3545.8223,139.41519, 100, 0, 0),
(@CGUID+128, 14, 3168.137,3528.296,144.18552, 100, 0, 0),
-- Nether Ray
(@CGUID+129, 1, 3187.8442,3354.885,103.64935, 100, 0, 0),
(@CGUID+129, 2, 3193.2952,3334.8625,105.42078, 100, 0, 0),
(@CGUID+129, 3, 3176.5715,3326.64,106.59683, 100, 0, 0),
(@CGUID+129, 4, 3151.2117,3291.3782,101.90715, 100, 0, 0),
(@CGUID+129, 5, 3118.588,3271.1497,109.09988, 100, 0, 0),
(@CGUID+129, 6, 3109.4246,3297.0637,110.86792, 100, 0, 0),
(@CGUID+129, 7, 3112.8772,3326.4487,108.587585, 100, 0, 0),
(@CGUID+129, 8, 3116.6143,3352.0747,106.848785, 100, 0, 0),
(@CGUID+129, 9, 3141.5247,3368.5256,104.70891, 100, 0, 0),
(@CGUID+129, 10, 3162.961,3373.5598,103.82034, 100, 0, 0),
(@CGUID+129, 11, 3186.1711,3369.1282,103.10805, 100, 0, 0),
-- Artifact Seeker
(@CGUID+145, 1, 2698.4497,3224.8994,147.55943, 100, 0, 0),
(@CGUID+145, 2, 2697.9292,3211.497,147.57936, 100, 0, 0),
(@CGUID+145, 3, 2707.0864,3201.8103,147.62085, 100, 0, 0),
(@CGUID+145, 4, 2696.9895,3202.796,147.5972, 100, 0, 0),
(@CGUID+145, 5, 2687.2942,3199.399,147.59097, 100, 0, 0),
(@CGUID+145, 6, 2685.0544,3188.2004,147.23376, 100, 0, 0),
(@CGUID+145, 7, 2685.4407,3178.1416,147.62683, 100, 0, 0),
(@CGUID+145, 8, 2696.7942,3167.2158,146.7985, 100, 0, 0),
(@CGUID+145, 9, 2686.5095,3177.7258,147.5972, 100, 0, 0),
(@CGUID+145, 10, 2687.0552,3200.1245,147.5209, 100, 0, 0),
(@CGUID+145, 11, 2695.0852,3219.716,147.27919, 100, 0, 0),
(@CGUID+145, 12, 2708.8052,3231.4753,147.51425, 100, 0, 0),
-- Felblade Doomguard
(@CGUID+154, 1, 2844.5195,3274.3853,136.31494, 100, 0, 0),
(@CGUID+154, 2, 2847.4883,3293.0107,136.28421, 100, 0, 0),
(@CGUID+154, 3, 2846.5283,3329.9229,136.35144, 100, 0, 0),
(@CGUID+154, 4, 2844.6692,3361.5015,138.32826, 100, 0, 0),
(@CGUID+154, 5, 2834.5315,3372.9739,140.7338, 100, 0, 0),
(@CGUID+154, 6, 2790.9768,3386.5505,143.25522, 100, 0, 0),
(@CGUID+154, 7, 2763.7817,3391.451,147.0207, 100, 0, 0),
-- Felblade Doomguard
(@CGUID+155, 1, 2805.8696,3378.8674,142.26472, 100, 0, 0),
(@CGUID+155, 2, 2805.9705,3363.8762,144.40855, 100, 0, 0),
(@CGUID+155, 3, 2803.093,3341.802,146.30472, 100, 0, 0),
(@CGUID+155, 4, 2797.7375,3316.09,147.74304, 100, 0, 0),
(@CGUID+155, 5, 2791.8276,3285.3303,147.58328, 100, 0, 0),
(@CGUID+155, 6, 2798.7834,3266.615,147.5972, 100, 0, 0),
(@CGUID+155, 7, 2799.445,3234.606,147.5972, 100, 0, 0),
(@CGUID+155, 8, 2786.3882,3199.4001,147.24849, 100, 0, 0),
(@CGUID+155, 9, 2773.5442,3167.466,148.01701, 100, 0, 0),
-- Felblade Doomguard
(@CGUID+156, 1, 2776.6716,3296.7078,134.88904, 100, 0, 0),
(@CGUID+156, 2, 2741.708,3283.103,134.79964, 100, 0, 0),
(@CGUID+156, 3, 2723.7053,3264.6707,135.10432, 100, 0, 0),
(@CGUID+156, 4, 2701.3796,3251.3655,133.81161, 100, 0, 0),
(@CGUID+156, 5, 2671.7886,3241.817,136.13454, 100, 0, 0),
-- Felblade Doomguard
(@CGUID+157, 1, 2767.3296,3119.978,153.61285, 100, 0, 0),
(@CGUID+157, 2, 2760.3508,3133.0457,151.73926, 100, 0, 0),
(@CGUID+157, 3, 2751.2417,3166.751,147.8679, 100, 0, 0),
(@CGUID+157, 4, 2737.5063,3197.8433,148.38454, 100, 0, 0),
(@CGUID+157, 5, 2729.6033,3240.7727,147.5972, 100, 0, 0),
-- Felblade Doomguard
(@CGUID+158, 1, 2676.2434,3108.4949,129.68224, 100, 0, 0),
(@CGUID+158, 2, 2695.884,3152.218,142.57837, 100, 0, 0),
(@CGUID+158, 3, 2733.9094,3176.8804,147.73102, 100, 0, 0),
(@CGUID+158, 4, 2767.524,3183.0664,149.01059, 100, 0, 0),
(@CGUID+158, 5, 2783.0461,3200.549,148.76402, 100, 0, 0),
(@CGUID+158, 6, 2795.1108,3234.7832,147.5972, 100, 0, 0),
-- Felblade Doomguard
(@CGUID+159, 1, 2666.155,3128.539,136.19554, 100, 0, 0),
(@CGUID+159, 2, 2681.547,3107.0217,129.7392, 100, 0, 0),
(@CGUID+159, 3, 2714.7917,3083.177,125.97599, 100, 0, 0),
(@CGUID+159, 4, 2742.4736,3066.7026,126.90543, 100, 0, 0),
(@CGUID+159, 5, 2771.3164,3055.7148,125.33494, 100, 0, 0),
-- Felblade Doomguard
(@CGUID+160, 1, 2789.9812,3059.688,127.22473, 100, 0, 0),
(@CGUID+160, 2, 2808.2354,3051.4807,129.19807, 100, 0, 0),
(@CGUID+160, 3, 2828.0496,3064.0322,130.24457, 100, 0, 0),
(@CGUID+160, 4, 2825.4067,3085.0708,131.07745, 100, 0, 0),
(@CGUID+160, 5, 2828.7065,3113.5422,132.90123, 100, 0, 0),
(@CGUID+160, 6, 2834.658,3132.8125,135.12311, 100, 0, 0),
(@CGUID+160, 7, 2820.653,3168.3298,138.29019, 100, 0, 0),
-- Phase Hunter
(@CGUID+163, 1, 2930.82, 3003.23, 132.715, 100, 0, 0),
(@CGUID+163, 2, 2891.3323,3061.6091,122.360115, 100, 1000, 1887903),
-- Phase Hunter
(@CGUID+164, 1, 2896.78, 2969.91, 131.094, 100, 0, 0),
(@CGUID+164, 2, 2853.805,2980.5447,115.80218, 100, 1000, 1887903),
-- Phase Hunter
(@CGUID+165, 1, 2882.31, 2919.06, 113.968, 100, 0, 0),
(@CGUID+165, 2, 2850.9858, 2915.7764, 103.02588, 100, 1000, 1887903),
-- Phase Hunter
(@CGUID+166, 1, 2872.51, 2880.38, 106.509, 100, 0, 0),
(@CGUID+166, 2, 2811.9316,2878.247,98.02391, 100, 1000, 1887901),
-- Phase Hunter
(@CGUID+167, 1, 2820.3, 2794.57, 83.2327, 100, 0, 0),
(@CGUID+167, 2, 2806.19,2816.1062,68.63162, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+168, 1, 2756.97, 2829.56, 97.8828, 100, 0, 0),
(@CGUID+168, 2, 2820.3, 2794.57, 83.2327, 100, 1000, 1887903),
-- Phase Hunter
(@CGUID+169, 1, 2725.24, 2857.4, 118.093, 100, 0, 0),
(@CGUID+169, 2, 2746.8564,2891.9375,108.675674, 100, 1000, 1887903),
-- Phase Hunter
(@CGUID+170, 1, 2657.38, 2926.52, 112.107, 100, 0, 0),
(@CGUID+170, 2, 2712.0974,2917.463,102.34863, 100, 1000, 1887903),
-- Phase Hunter
(@CGUID+171, 1, 2666.63, 2975.45, 128.767, 100, 0, 0),
(@CGUID+171, 2, 2709.7305,2972.9805,114.28846, 100, 1000, 1887903),
-- Phase Hunter
(@CGUID+172, 1, 2644.96, 2990.58, 126.522, 100, 0, 0),
(@CGUID+172, 2, 2683.8032,3016.3352,113.83579, 100, 1000, 1887903),
-- Nether Ray
(@CGUID+173, 1, 2786.0464,2869.4778,96.072754, 100, 0, 0),
(@CGUID+173, 2, 2799.0547,2895.908,107.18539, 100, 0, 0),
(@CGUID+173, 3, 2817.9883,2927.705,116.774, 100, 0, 0),
(@CGUID+173, 4, 2822.727,2965.4255,115.05098, 100, 0, 0),
(@CGUID+173, 5, 2834.5608,3001.4707,120.77321, 100, 0, 0),
(@CGUID+173, 6, 2840.711,3031.622,124.32088, 100, 0, 0),
(@CGUID+173, 7, 2857.4001,3067.843,129.22284, 100, 0, 0),
(@CGUID+173, 8, 2899.2007,3080.4536,126.08596, 100, 0, 0),
-- Nether Ray
(@CGUID+174, 1, 2906.8477,3058.587,121.953476, 100, 0, 0),
(@CGUID+174, 2, 2875.8308,3039.1636,124.86011, 100, 0, 0),
(@CGUID+174, 3, 2855.7458,3001.8254,113.455986, 100, 0, 0),
(@CGUID+174, 4, 2842.7417,2966.7551,116.37283, 100, 0, 0),
(@CGUID+174, 5, 2846.1663,2934.3604,101.41328, 100, 0, 0),
(@CGUID+174, 6, 2833.5637,2902.5715,102.29902, 100, 0, 0),
(@CGUID+174, 7, 2832.2021,2868.6045,95.06509, 100, 0, 0),
(@CGUID+174, 8, 2814.3704,2843.557,81.037964, 100, 0, 0),
(@CGUID+174, 9, 2784.5571,2853.5176,88.99387, 100, 0, 0),
(@CGUID+174, 10, 2755.287,2889.797,106.88466, 100, 0, 0),
(@CGUID+174, 11, 2725.994,2908.2332,104.642914, 100, 0, 0),
(@CGUID+174, 12, 2717.4314,2942.0881,105.29993, 100, 0, 0),
(@CGUID+174, 13, 2726.0432,2979.8147,118.342224, 100, 0, 0),
(@CGUID+174, 14, 2698.9668,3008.6619,115.70425, 100, 0, 0),
(@CGUID+174, 15, 2667.4175,3020.1921,110.109955, 100, 0, 0),
(@CGUID+174, 16, 2656.264,3041.5986,119.55517, 100, 0, 0),
-- Nether Ray
(@CGUID+175, 1, 2860.7996,3100.6145,136.4275, 100, 0, 0),
(@CGUID+175, 2, 2833.879,3067.322,130.21774, 100, 0, 0),
(@CGUID+175, 3, 2803.0862,3033.0793,128.55972, 100, 0, 0),
(@CGUID+175, 4, 2769.2092,2999.7883,120.53973, 100, 0, 0),
(@CGUID+175, 5, 2752.8748,2967.3013,116.27324, 100, 0, 0),
(@CGUID+175, 6, 2750.5312,2935.3945,114.50632, 100, 0, 0),
(@CGUID+175, 7, 2742.301,2902.0083,109.40503, 100, 0, 0),
-- Nether Ray
(@CGUID+176, 1, 2826.3145,3047.5208,129.28552, 100, 0, 0),
(@CGUID+176, 2, 2827.6619,3066.208,130.48979, 100, 0, 0),
(@CGUID+176, 3, 2848.0747,3093.4436,132.62427, 100, 0, 0),
(@CGUID+176, 4, 2871.1716,3100.596,135.82417, 100, 0, 0),
(@CGUID+176, 5, 2892.2021,3086.4983,130.05669, 100, 0, 0),
(@CGUID+176, 6, 2916.7695,3078.3801,117.69228, 100, 0, 0),
(@CGUID+176, 7, 2931.3677,3085.4097,124.65414, 100, 0, 0),
(@CGUID+176, 8, 2913.3286,3108.0872,136.92761, 100, 0, 0),
(@CGUID+176, 9, 2888.1165,3103.5735,134.77417, 100, 0, 0),
(@CGUID+176, 10, 2874.5837,3076.8647,130.39465, 100, 0, 0),
(@CGUID+176, 11, 2864.6567,3041.682,126.308655, 100, 0, 0),
(@CGUID+176, 12, 2843.429,3035.9646,122.93391, 100, 0, 0),
-- Nether Ray
(@CGUID+177, 1, 2830.5066,3010.0386,122.993576, 100, 0, 0),
(@CGUID+177, 2, 2814.2822,3024.9375,124.871445, 100, 0, 0),
(@CGUID+177, 3, 2815.7803,3023.5742,123.664215, 100, 0, 0),
(@CGUID+177, 4, 2793.697,3003.9438,124.46347, 100, 0, 0),
(@CGUID+177, 5, 2772.3438,2989.0898,119.71761, 100, 0, 0),
(@CGUID+177, 6, 2748.8762,2991.9883,115.870476, 100, 0, 0),
(@CGUID+177, 7, 2748.5864,3009.797,120.41502, 100, 0, 0),
(@CGUID+177, 8, 2767.257,3018.9854,122.827805, 100, 0, 0),
(@CGUID+177, 9, 2801.0518,3000.4434,124.587296, 100, 0, 0),
(@CGUID+177, 10, 2812.8242,2982.8274,116.203354, 100, 0, 0),
(@CGUID+177, 11, 2832.336,2996.5461,120.59824, 100, 0, 0),
-- Nether Ray
(@CGUID+178, 1, 2770.9194,2922.7954,119.628075, 100, 0, 0),
(@CGUID+178, 2, 2783.7737,2906.5742,115.39661, 100, 0, 0),
(@CGUID+178, 3, 2803.7415,2897.0457,105.09941, 100, 0, 0),
(@CGUID+178, 4, 2822.364,2918.7068,112.12544, 100, 0, 0),
(@CGUID+178, 5, 2825.2053,2950.8203,116.82763, 100, 0, 0),
(@CGUID+178, 6, 2837.3584,2982.1287,118.682144, 100, 0, 0),
(@CGUID+178, 7, 2836.9204,3013.6245,122.42209, 100, 0, 0),
(@CGUID+178, 8, 2845.6934,3043.203,125.29798, 100, 0, 0),
(@CGUID+178, 9, 2844.3086,3038.5586,122.69491, 100, 0, 0),
(@CGUID+178, 10, 2802.0742,3034.9495,128.48584, 100, 0, 0),
(@CGUID+178, 11, 2782.4163,3015.4128,124.558876, 100, 0, 0),
(@CGUID+178, 12, 2763.2998,2993.6064,118.66934, 100, 0, 0),
(@CGUID+178, 13, 2758.5195,2957.2532,118.17726, 100, 0, 0),
-- Nether Ray
(@CGUID+179, 1, 2760.5798,2914.2092,115.68042, 100, 0, 0),
(@CGUID+179, 2, 2779.291,2907.1387,115.10535, 100, 0, 0),
(@CGUID+179, 3, 2807.436,2930.3215,120.19253, 100, 0, 0),
(@CGUID+179, 4, 2814.2996,2948.5908,117.09852, 100, 0, 0),
(@CGUID+179, 5, 2831.9346,2931.5574,112.46862, 100, 0, 0),
(@CGUID+179, 6, 2811.0012,2909.626,110.038086, 100, 0, 0),
(@CGUID+179, 7, 2787.9663,2937.5347,118.392395, 100, 0, 0),
(@CGUID+179, 8, 2762.5066,2939.073,117.6239, 100, 0, 0),
-- Phase Hunter
(@CGUID+180, 1, 3318.74, 4149.87, 150.944, 100, 0, 0),
(@CGUID+180, 2, 3367.9067,4108.675,142.98135, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+181, 1, 3284.29, 4113.5, 156.866, 100, 0, 0),
(@CGUID+181, 2, 3320.834,4116.667,135.91122, 100, 1000, 1887903),
-- Phase Hunter
(@CGUID+182, 1, 3267.33, 4105.89, 154.553, 100, 0, 0),
(@CGUID+182, 2, 3279.864,4044.165,144.27832, 100, 1000, 1887901),
-- Shaleskin Flayer
(@CGUID+190, 1, 3352.0737,4063.4426,154.5035, 100, 0, 0),
(@CGUID+190, 2, 3366.6387,4009.914,176.63858, 100, 0, 0),
(@CGUID+190, 3, 3373.9907,3984.8098,186.45047, 100, 0, 0),
(@CGUID+190, 4, 3365.0266,3955.5742,192.69424, 100, 0, 0),
(@CGUID+190, 5, 3341.767,3935.8884,190.22058, 100, 0, 0),
(@CGUID+190, 6, 3318.1157,3920.9324,189.68118, 100, 0, 0),
(@CGUID+190, 7, 3291.8218,3931.7727,180.50606, 100, 0, 0),
(@CGUID+190, 8, 3257.0005,3943.0938,171.32724, 100, 0, 0),
(@CGUID+190, 9, 3221.0637,3955.7327,165.05435, 100, 0, 0),
(@CGUID+190, 10, 3215.425,3985.1753,154.04956, 100, 0, 0),
(@CGUID+190, 11, 3241.6335,4004.4604,149.8, 100, 0, 0),
(@CGUID+190, 12, 3278.1692,3998.145,157.25594, 100, 0, 0),
(@CGUID+190, 13, 3294.997,3986.058,163.69254, 100, 0, 0),
(@CGUID+190, 14, 3311.8896,3996.2222,166.12366, 100, 0, 0),
(@CGUID+190, 15, 3316.447,4016.001,156.53061, 100, 0, 0),
(@CGUID+190, 16, 3294.071,4054.033,150.45905, 100, 0, 0),
(@CGUID+190, 17, 3317.5977,4073.9949,144.30667, 100, 0, 0),
(@CGUID+190, 18, 3341.3496,4079.1316,142.59535, 100, 0, 0),
-- Nether Ray
(@CGUID+196, 1, 3364.5854,4180.735,134.03732, 100, 0, 0),
(@CGUID+196, 2, 3357.182,4148.589,137.28156, 100, 0, 0),
(@CGUID+196, 3, 3360.5054,4113.1274,140.55113, 100, 0, 0),
(@CGUID+196, 4, 3322.7493,4094.7031,143.66882, 100, 0, 0),
(@CGUID+196, 5, 3284.819,4073.2473,142.5153, 100, 0, 0),
(@CGUID+196, 6, 3260.3372,4054.8281,129.82922, 100, 0, 0),
(@CGUID+196, 7, 3245.3325,4071.3672,112.41702, 100, 0, 0),
(@CGUID+196, 8, 3216.0005,4075.2356,104.2909, 100, 0, 0),
(@CGUID+196, 9, 3201.8315,4063.0396,110.16506, 100, 0, 0),
(@CGUID+196, 10, 3199.2673,4052.302,111.866714, 100, 0, 0),
(@CGUID+196, 11, 3182.443,4063.201,122.7049, 100, 0, 0),
(@CGUID+196, 12, 3158.6301,4088.472,129.34756, 100, 0, 0),
-- Nether Ray
(@CGUID+197, 1, 3378.95,4062.0837,164.3854, 100, 0, 0),
(@CGUID+197, 2, 3365.0564,4031.7466,166.66597, 100, 0, 0),
(@CGUID+197, 3, 3355.438,4002.257,171.74799, 100, 0, 0),
(@CGUID+197, 4, 3330.2747,3988.5078,172.15726, 100, 0, 0),
(@CGUID+197, 5, 3335.216,3953.428,182.61528, 100, 0, 0),
(@CGUID+197, 6, 3343.837,3924.523,194.88562, 100, 0, 0),
-- Nether Ray
(@CGUID+198, 1, 3354.1538,3934.1992,195.04941, 100, 0, 0),
(@CGUID+198, 2, 3326.3374,3936.6555,185.71527, 100, 0, 0),
(@CGUID+198, 3, 3289.1394,3941.342,176.26775, 100, 0, 0),
(@CGUID+198, 4, 3256.5027,3953.552,167.8566, 100, 0, 0),
(@CGUID+198, 5, 3233.9812,3970.7283,159.61554, 100, 0, 0),
(@CGUID+198, 6, 3201.6438,3982.1914,155.15865, 100, 0, 0),
(@CGUID+198, 7, 3157.5156,3996.942,152.60535, 100, 0, 0),
-- Nether Ray
(@CGUID+199, 1, 3250.1792,3988.8147,150.64606, 100, 0, 0),
(@CGUID+199, 2, 3260.8582,4007.0374,144.86824, 100, 0, 0),
(@CGUID+199, 3, 3277.6184,4026.4614,147.14066, 100, 0, 0),
(@CGUID+199, 4, 3307.1963,4042.8833,154.98683, 100, 0, 0),
(@CGUID+199, 5, 3320.5144,4065.9749,147.53615, 100, 0, 0),
(@CGUID+199, 6, 3339.809,4086.7878,141.05301, 100, 0, 0),
-- Shaleskin Flayer
(@CGUID+204, 1, 3155.4385,4032.6985,140.83514, 100, 0, 0),
(@CGUID+204, 2, 3133.105,4053.9011,139.83447, 100, 0, 0),
(@CGUID+204, 3, 3106.4487,4030.9956,141.48468, 100, 0, 0),
(@CGUID+204, 4, 3098.129,3988.5083,158.71921, 100, 0, 0),
(@CGUID+204, 5, 3113.9253,3966.3464,168.81935, 100, 0, 0),
(@CGUID+204, 6, 3111.8704,3944.7153,175.6662, 100, 0, 0),
(@CGUID+204, 7, 3140.9692,3942.4268,174.28009, 100, 0, 0),
(@CGUID+204, 8, 3165.0671,3960.4917,165.84259, 100, 0, 0),
(@CGUID+204, 9, 3186.0073,3929.3577,178.09358, 100, 0, 0),
(@CGUID+204, 10, 3216.195,3906.3918,187.53113, 100, 0, 0),
(@CGUID+204, 11, 3237.8616,3892.524,195.90103, 100, 0, 0),
(@CGUID+204, 12, 3266.1672,3900.3098,192.75308, 100, 0, 0),
(@CGUID+204, 13, 3275.342,3923.2578,179.27887, 100, 0, 0),
(@CGUID+204, 14, 3265.9197,3960.7375,163.16974, 100, 0, 0),
(@CGUID+204, 15, 3225.3425,3952.5117,166.4112, 100, 0, 0),
(@CGUID+204, 16, 3219.7112,3980.8784,155.65144, 100, 0, 0),
(@CGUID+204, 17, 3226.634,4011.058,143.10632, 100, 0, 0),
(@CGUID+204, 18, 3205.6704,4007.6284,146.55847, 100, 0, 0),
(@CGUID+204, 19, 3193.2852,4019.2832,142.78314, 100, 0, 0),
(@CGUID+204, 20, 3178.4739,4034.9363,135.83725, 100, 0, 0),
-- Nether Ray
(@CGUID+211, 1, 3145.38,3864.6987,144.36703, 100, 0, 0),
(@CGUID+211, 2, 3115.6658,3862.9688,143.8135, 100, 0, 0),
(@CGUID+211, 3, 3095.1064,3848.8547,144.08716, 100, 0, 0),
(@CGUID+211, 4, 3083.8242,3822.3628,142.86719, 100, 0, 0),
(@CGUID+211, 5, 3107.3586,3805.0269,143.47441, 100, 0, 0),
(@CGUID+211, 6, 3113.569,3784.48,142.76237, 100, 0, 0),
(@CGUID+211, 7, 3125.9683,3758.1094,141.62193, 100, 0, 0),
(@CGUID+211, 8, 3143.2053,3746.0166,140.29282, 100, 0, 0),
(@CGUID+211, 9, 3166.316,3767.9219,139.15102, 100, 0, 0),
(@CGUID+211, 10, 3157.0234,3792.1953,141.10023, 100, 0, 0),
(@CGUID+211, 11, 3165.993,3808.8945,140.18442, 100, 0, 0),
(@CGUID+211, 12, 3167.997,3844.3064,135.35252, 100, 0, 0),
(@CGUID+211, 13, 3160.8105,3854.2031,135.36601, 100, 0, 0),
(@CGUID+211, 14, 3156.707,3863.0088,137.45654, 100, 0, 0),
-- Nether Ray
(@CGUID+212, 1, 3133.2854,4098.2114,125.35765, 100, 0, 0),
(@CGUID+212, 2, 3163.4258,4085.8684,128.70804, 100, 0, 0),
(@CGUID+212, 3, 3102.2126,4111.7944,134.94405, 100, 0, 0),
(@CGUID+212, 4, 3085.8877,4134.4614,134.3758, 100, 0, 0),
(@CGUID+212, 5, 3062.0383,4148.8223,144.0191, 100, 0, 0),
(@CGUID+212, 6, 3044.9827,4164.5957,148.62073, 100, 0, 0),
(@CGUID+212, 7, 3046.9592,4187.6143,148.91873, 100, 0, 0),
(@CGUID+212, 8, 3072.0383,4215.869,141.69159, 100, 0, 0),
(@CGUID+212, 9, 3082.2197,4243.589,131.97493, 100, 0, 0),
(@CGUID+212, 10, 3086.8994,4278.2666,136.1073, 100, 0, 0),
(@CGUID+212, 11, 3075.3958,4314.94,129.99167, 100, 0, 0),
(@CGUID+212, 12, 3069.2354,4352.42,120.43796, 100, 0, 0),
(@CGUID+212, 13, 3042.72,4375.858,113.87022, 100, 0, 0),
(@CGUID+212, 14, 3019.4785,4393.933,114.793686, 100, 0, 0),
(@CGUID+212, 15, 2989.2297,4413.0547,111.81478, 100, 0, 0),
(@CGUID+212, 16, 2953.0737,4418.923,113.46738, 100, 0, 0),
(@CGUID+212, 17, 2916.4355,4437.8525,113.17462, 100, 0, 0),
(@CGUID+212, 18, 2887.9475,4449.6675,115.852936, 100, 0, 0),
-- Phase Hunter
(@CGUID+213, 1, 3199.03, 4101.16, 137.205, 100, 0, 0),
(@CGUID+213, 2, 3204.3428,4062.6836,107.877464, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+214, 1, 3166.19, 4123.23, 139.705, 100, 0, 0),
(@CGUID+214, 2, 3133.333,4100,125.649025, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+215, 1, 3122.17, 4151.59, 143.194, 100, 0, 0),
(@CGUID+215, 2, 3116.667,4114.584,131.07288, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+216, 1, 3112.81, 4179.87, 139.792, 100, 0, 0),
(@CGUID+216, 2, 3058.448,4139.294,146.73639, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+217, 1, 3117.33, 4218.62, 144.121, 100, 0, 0),
(@CGUID+217, 2, 3063.9983,4228.3486,144.50699, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+218, 1, 3130.51, 4281.24, 144.828, 100, 0, 0),
(@CGUID+218, 2, 3081.348,4282.4717,137.86006, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+219, 1, 3099.62, 4348.18, 140.869, 100, 0, 0),
(@CGUID+219, 2, 3070.354,4335.1816,124.79652, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+220, 1, 3075.08, 4408.19, 121.747, 100, 0, 0),
(@CGUID+220, 2, 3054.1543,4321.424,130.26884, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+221, 1, 3018.82, 4426.31, 139.441, 100, 0, 0),
(@CGUID+221, 2, 3034.3025,4331.9907,133.1419, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+222, 1, 2958.25, 4469.85, 125.933, 100, 0, 0),
(@CGUID+222, 2, 2956.6296,4422.0146,111.4834, 100, 1000, 1887902),
-- Phase Hunter
(@CGUID+223, 1, 2915.91, 4496.36, 128.121, 100, 0, 0),
(@CGUID+223, 2, 2895.1006,4429.939,116.29245, 100, 1000, 1887902),
-- Sunfury Captain
(@CGUID+237, 1, 2934.5164,4110.883,162.59389, 100, 0, 1945301),
(@CGUID+237, 2, 2940.6106,4096.285,162.59383, 100, 0, 1945301),
(@CGUID+237, 3, 2944.3489,4088.1736,160.377, 100, 0, 1945301),
(@CGUID+237, 4, 2949.8572,4073.6836,157.7197, 100, 0, 1945301),
(@CGUID+237, 5, 2957.3389,4060.2822,154.83763, 100, 0, 1945301),
(@CGUID+237, 6, 2966.5818,4050.1016,152.47238, 100, 0, 1945301),
(@CGUID+237, 7, 2975.9714,4039.9531,149.57062, 100, 0, 1945301),
(@CGUID+237, 8, 2977.3284,4028.8186,147.57791, 100, 0, 1945301),
(@CGUID+237, 9, 2979.0667,4019.794,146.80963, 100, 0, 1945301),
-- Sunfury Astromancer
(@CGUID+246, 1, 3002.4746,4103.1904,150.60739, 100, 0, 1964301),
(@CGUID+246, 2, 3012.2603,4099.2817,150.32962, 100, 0, 1964301),
(@CGUID+246, 3, 3018.3914,4091.1106,150.13162, 100, 0, 1964301),
(@CGUID+246, 4, 3022.2815,4077.8542,150.11853, 100, 0, 1964301),
(@CGUID+246, 5, 3013.7163,4067.5378,150.01633, 100, 0, 1964301),
(@CGUID+246, 6, 3005.347,4064.1946,149.95128, 100, 0, 1964301),
(@CGUID+246, 7, 2987.4768,4064.9292,149.99225, 100, 0, 1964301),
(@CGUID+246, 8, 2980.4868,4084.391,150.1267, 100, 0, 1964301),
(@CGUID+246, 9, 2986.1475,4096.4175,150.10222, 100, 0, 1964301),
-- Sunfury Astromancer
(@CGUID+258, 1, 2903.1318,4045.0435,150.25317, 100, 0, 1964301),
(@CGUID+258, 2,2900.9724,4054.7844,149.40512, 100, 0, 1964301),
(@CGUID+258, 3, 2904.7153,4060.9895,149.22078, 100, 0, 1964301),
(@CGUID+258, 4, 2915.959,4060.7952,149.2171, 100, 0, 1964301),
(@CGUID+258, 5, 2923.4036,4055.2556,149.51854, 100, 0, 1964301),
(@CGUID+258, 6, 2923.972,4037.3577,149.8975, 100, 0, 1964301),
(@CGUID+258, 7, 2919.175,4017.136,149.72934, 100, 0, 1964301),
(@CGUID+258, 8, 2910.8635,4004.7908,149.72931, 100, 0, 1964301),
(@CGUID+258, 9, 2903.904,4002.093,149.73135, 100, 0, 1964301),
(@CGUID+258, 10, 2897.3916,4011.309,149.72925, 100, 0, 1964301),
(@CGUID+258, 11, 2904.7595,4017.5933,149.72925, 100, 0, 1964301),
(@CGUID+258, 12, 2907.02,4029.9692,149.73036, 100, 0, 1964301),
(@CGUID+258, 13, 2907.6182,4038.7092,149.75328, 100, 0, 1964301),
-- Sunfury Warp-Master
(@CGUID+263, 1, 2888.4463,4034.1992,152.29565, 100, 0, 0),
(@CGUID+263, 2, 2882.89,4040.5195,153.85301, 100, 0, 0),
(@CGUID+263, 3, 2876.5286,4050.1367,156.21225, 100, 0, 0),
(@CGUID+263, 4, 2873.1033,4057.861,157.59138, 100, 0, 0),
(@CGUID+263, 5, 2869.4014,4066.7354,157.06836, 100, 0, 0),
(@CGUID+263, 6, 2862.1602,4073.5168,156.95029, 100, 0, 0),
-- Sunfury Warp-Master
(@CGUID+279, 1, 2825.5164,4147.5024,162.59381, 100, 0, 0),
(@CGUID+279, 2, 2822.966,4153.412,162.59381, 100, 0, 0),
(@CGUID+279, 3, 2837.8286,4156.9614,162.59378, 100, 0, 0),
(@CGUID+279, 4, 2847.0522,4161.4224,162.59387, 100, 0, 0),
(@CGUID+279, 5, 2862.1267,4167.136,163.45229, 100, 0, 0),
(@CGUID+279, 6, 2874.3528,4171.978,164.00008, 100, 0, 0),
(@CGUID+279, 7, 2874.5278,4186.8,163.66504, 100, 0, 0),
(@CGUID+279, 8, 2890.7644,4197.518,162.2615, 100, 0, 0),
(@CGUID+279, 9, 2906.5315,4212.608,163.54593, 100, 0, 0),
(@CGUID+279, 10, 2919.9192,4194.853,162.23988, 100, 0, 0),
(@CGUID+279, 11, 2930.0173,4196.91,163.51372, 100, 0, 0),
(@CGUID+279, 12, 2939.965,4199.9946,164.00014, 100, 0, 0),
(@CGUID+279, 13, 2953.6643,4205.663,162.59383, 100, 0, 0),
(@CGUID+279, 14, 2967.3113,4211.746,162.59387, 100, 0, 0),
(@CGUID+279, 15, 2980.5188,4220.0073,162.59384, 100, 0, 0),
(@CGUID+279, 16, 2983.4077,4213.1665,162.59386, 100, 0, 0),
(@CGUID+279, 17, 2969.0488,4209.4014,162.59386, 100, 0, 0),
(@CGUID+279, 18, 2958.6663,4205.2705,162.59383, 100, 0, 0),
(@CGUID+279, 19, 2940.3586,4197.2954,164.00024, 100, 0, 0),
(@CGUID+279, 20, 2927.9714,4180.3813,162.85672, 100, 0, 0),
(@CGUID+279, 21, 2915.2058,4164.216,162.67609, 100, 0, 0),
(@CGUID+279, 22, 2893.8157,4167.3623,162.3499, 100, 0, 0),
(@CGUID+279, 23, 2876.395,4168.273,163.93523, 100, 0, 0),
(@CGUID+279, 24, 2861.1658,4164.759,163.24368, 100, 0, 0),
(@CGUID+279, 25, 2842.0195,4156.3535,162.59369, 100, 0, 0),
(@CGUID+279, 26, 2833.5513,4151.101,162.59393, 100, 0, 0),
-- Sunfury Astromancer
(@CGUID+288, 1, 3008.9705,4188.459,160.84167, 100, 0, 0),
(@CGUID+288, 2, 3012.7686,4197.775,160.6722, 100, 0, 0),
(@CGUID+288, 3, 3013.5142,4209.4497,160.77832, 100, 0, 0),
(@CGUID+288, 4, 3027.2646,4226.3237,160.77832, 100, 0, 0),
(@CGUID+288, 5, 3028.0703,4237.9097,160.77829, 100, 0, 0),
(@CGUID+288, 6, 3020.7595,4246.978,160.77832, 100, 0, 0),
(@CGUID+288, 7, 3007.832,4250.5034,160.7783, 100, 0, 0),
(@CGUID+288, 8, 2994.809,4249.7646,160.78217, 100, 0, 0),
(@CGUID+288, 9, 2989.8992,4245.5024,160.86024, 100, 0, 0),
(@CGUID+288, 10, 2991.4705,4237.6406,160.88805, 100, 0, 0),
(@CGUID+288, 11, 2999.3274,4228.0996,160.81888, 100, 0, 0),
(@CGUID+288, 12, 3003.7031,4215.9688,160.86224, 100, 0, 0),
(@CGUID+288, 13, 3004.9697,4209.169,160.85638, 100, 0, 0),
(@CGUID+288, 14, 3011.3806,4203.706,160.70107, 100, 0, 0),
(@CGUID+288, 15, 3010.3025,4195.54,160.78032, 100, 0, 0),
(@CGUID+288, 16, 3008.5022,4188.886,160.85503, 100, 0, 0),
-- Sunfury Warp-Master
(@CGUID+291, 1, 2963.8486,4294.43,150.33046, 100, 0, 0),
(@CGUID+291, 2, 2968.5125,4300.7944,147.69147, 100, 0, 0),
(@CGUID+291, 3, 2971.737,4311.4873,144.67957, 100, 0, 0),
(@CGUID+291, 4, 2977.107,4324.8745,146.42377, 100, 0, 0),
(@CGUID+291, 5, 2976.9463,4324.4756,146.51361, 100, 0, 0),
(@CGUID+291, 6, 2957.2593,4342.9604,145.57162, 100, 0, 0),
(@CGUID+291, 7, 2944.1875,4340.1685,147.69101, 100, 0, 0),
(@CGUID+291, 8, 2932.5444,4326.4893,147.07599, 100, 0, 0),
(@CGUID+291, 9, 2934.425,4312.044,147.2676, 100, 0, 0),
(@CGUID+291, 10, 2941.3098,4302.2485,151.3221, 100, 0, 0),
(@CGUID+291, 11, 2947.9407,4298.309,151.43979, 100, 0, 0),
(@CGUID+291, 12, 2945.6064,4299.6943,151.54628, 100, 0, 0),
-- Sunfury Captain
(@CGUID+304, 1, 2883.1345,4375.159,158.08275, 100, 0, 1945301),
(@CGUID+304, 2, 2887.9548,4362.3066,157.65321, 100, 0, 1945301),
(@CGUID+304, 3, 2891.5586,4352.5103,157.62598, 100, 0, 1945301),
(@CGUID+304, 4, 2891.7952,4345.1226,157.59656, 100, 0, 1945301),
(@CGUID+304, 5, 2885.5664,4339.9487,157.56842, 100, 0, 1945301),
(@CGUID+304, 6, 2881.339,4328.8774,157.37778, 100, 0, 1945301),
(@CGUID+304, 7, 2880.2136,4313.5654,157.38687, 100, 0, 1945301),
(@CGUID+304, 8, 2879.0703,4297.7466,157.53506, 100, 0, 1945301),
(@CGUID+304, 9, 2877.8188,4286.1895,158.56554, 100, 0, 1945301),
(@CGUID+304, 10, 2873.9514,4283.564,158.99045, 100, 0, 1945301),
(@CGUID+304, 11, 2861.5774,4279.4834,159.24892, 100, 0, 1945301),
(@CGUID+304, 12, 2856.8286,4282.1426,158.12498, 100, 0, 1945301),
(@CGUID+304, 13, 2846.117,4298.626,151.5036, 100, 0, 1945301),
(@CGUID+304, 14, 2840.5564,4314.648,148.62027, 100, 0, 1945301),
-- Sunfury Warp-Master 
(@CGUID+310, 1, 2808.4258,4316.6216,150.17184, 100, 0, 0),
(@CGUID+310, 2, 2821.0144,4316.105,148.8177, 100, 0, 0),
(@CGUID+310, 3, 2836.0042,4318.915,148.39146, 100, 0, 0),
(@CGUID+310, 4, 2847.0112,4328.816,144.93724, 100, 0, 0),
(@CGUID+310, 5, 2845.7654,4341.4307,141.56673, 100, 0, 0),
(@CGUID+310, 6, 2841.097,4352.5195,142.42714, 100, 0, 0),
(@CGUID+310, 7, 2828.339,4362.663,137.88916, 100, 0, 0),
(@CGUID+310, 8, 2814.7063,4365.7476,138.72429, 100, 0, 0),
(@CGUID+310, 9, 2802.4348,4361.0337,137.89543, 100, 0, 0),
(@CGUID+310, 10, 2793.671,4351.9775,138.87804, 100, 0, 0),
(@CGUID+310, 11, 2788.1316,4337.3306,140.8248, 100, 0, 0),
(@CGUID+310, 12, 2787.7083,4323.5483,144.64473, 100, 0, 0),
(@CGUID+310, 13, 2799.788,4318.851,149.24225, 100, 0, 0),
-- Sunfury Captain
(@CGUID+317, 1, 2738.5984,4346.4106,138.86057, 100, 0, 1945301),
(@CGUID+317, 2, 2741.5198,4358.909,136.46068, 100, 0, 1945301),
(@CGUID+317, 3, 2753.4524,4360.7505,136.57869, 100, 0, 1945301),
(@CGUID+317, 4, 2760.3943,4352.768,136.31158, 100, 0, 1945301),
(@CGUID+317, 5, 2766.7537,4348.003,136.18451, 100, 0, 1945301),
(@CGUID+317, 6, 2771.7727,4351.0312,135.81624, 100, 0, 1945301),
(@CGUID+317, 7, 2774.9502,4357.59,136.06407, 100, 0, 1945301),
(@CGUID+317, 8, 2779.4998,4366.28,136.39772, 100, 0, 1945301),
(@CGUID+317, 9, 2784.1223,4367.5493,136.39777, 100, 0, 1945301),
(@CGUID+317, 10, 2788.4844,4364.737,136.4307, 100, 0, 1945301),
(@CGUID+317, 11, 2797.74,4373.301,136.39873, 100, 0, 1945301),
(@CGUID+317, 12, 2796.407,4378.946,136.39777, 100, 0, 1945301),
(@CGUID+317, 13, 2788.1086,4384.1753,136.3978, 100, 0, 1945301),
(@CGUID+317, 14, 2780.636,4380.483,136.39777, 100, 0, 1945301),
-- Sunfury Astromancer
(@CGUID+322, 1, 2663.2698,4266.9463,154.32874, 100, 0, 0),
(@CGUID+322, 2, 2667.2534,4247.031,154.32875, 100, 0, 0),
(@CGUID+322, 3, 2661.7148,4238.7373,154.32875, 100, 0, 0),
(@CGUID+322, 4, 2661.2126,4232.1973,154.32875, 100, 0, 0),
(@CGUID+322, 5, 2656.0977,4229.513,154.32875, 100, 0, 0),
(@CGUID+322, 6, 2654.4019,4237.601,154.32875, 100, 0, 0),
(@CGUID+322, 7, 2637.7766,4240.8003,154.32875, 100, 0, 0),
(@CGUID+322, 8, 2635.2927,4249.7847,154.32886, 100, 0, 0),
(@CGUID+322, 9, 2630.566,4254.0703,154.86026, 100, 0, 0),
(@CGUID+322, 10, 2635.313,4259.4053,154.59474, 100, 0, 0),
(@CGUID+322, 11, 2644.847,4259.3735,154.32875, 100, 0, 0),
(@CGUID+322, 12, 2650.843,4268.9014,154.54857, 100, 0, 0),
-- Sunfury Warp-Master
(@CGUID+343, 1, 2713.205,4188.413,194.50327, 100, 0, 0),
(@CGUID+343, 2, 2714.7385,4196.847,194.07382, 100, 0, 0),
(@CGUID+343, 3, 2724.429,4203.2427,191.81409, 100, 0, 0),
(@CGUID+343, 4, 2744.3645,4212.4985,186.95923, 100, 0, 0),
(@CGUID+343, 5, 2749.4917,4233.127,185.67413, 100, 0, 0),
(@CGUID+343, 6, 2751.2915,4242.292,183.82498, 100, 0, 0),
(@CGUID+343, 7, 2755.052,4245.4756,183.69016, 100, 0, 0),
(@CGUID+343, 8, 2758.0364,4241.9463,183.20958, 100, 0, 0),
(@CGUID+343, 9, 2757.7844,4233.593,183.04951, 100, 0, 0),
(@CGUID+343, 10, 2762.1375,4222.225,181.70982, 100, 0, 0),
(@CGUID+343, 11, 2772.131,4214.345,179.60123, 100, 0, 0),
(@CGUID+343, 12, 2779.5403,4207.1235,178.68675, 100, 0, 0),
(@CGUID+343, 13, 2782.569,4200.5493,178.49973, 100, 0, 0),
(@CGUID+343, 14, 2778.6084,4196.043,179.4281, 100, 0, 0),
(@CGUID+343, 15, 2769.788,4194.3423,181.3178, 100, 0, 0),
(@CGUID+343, 16, 2757.9802,4200.879,183.66924, 100, 0, 0),
(@CGUID+343, 17, 2750.6614,4204.042,185.41795, 100, 0, 0),
(@CGUID+343, 18, 2744.4778,4203.2773,187.02017, 100, 0, 0),
(@CGUID+343, 19, 2737.8044,4192.937,188.91362, 100, 0, 0),
(@CGUID+343, 20, 2736.3037,4182.5474,189.60226, 100, 0, 0),
(@CGUID+343, 21, 2729.9756,4172.3516,191.48807, 100, 0, 0),
(@CGUID+343, 22, 2722.849,4165.627,193.19974, 100, 0, 0),
(@CGUID+343, 23, 2715.1858,4173.1016,194.71252, 100, 0, 0),
-- Sunfury Captain
(@CGUID+347, 1, 2745.8032,4172.4155,187.62051, 100, 0, 1945301),
(@CGUID+347, 2, 2742.4604,4189.2686,187.91727, 100, 0, 1945301),
(@CGUID+347, 3, 2743.8425,4194.3945,187.41634, 100, 0, 1945301),
(@CGUID+347, 4, 2750.7607,4195.4473,185.75812, 100, 0, 1945301),
(@CGUID+347, 5, 2757.8652,4188.9316,184.21118, 100, 0, 1945301),
(@CGUID+347, 6, 2766.2651,4189.794,182.25595, 100, 0, 1945301),
(@CGUID+347, 7, 2769.7522,4182.5093,181.65204, 100, 0, 1945301),
(@CGUID+347, 8, 2766.177,4177.9976,182.50919, 100, 0, 1945301),
(@CGUID+347, 9, 2769.6887,4167.6,182.12114, 100, 0, 1945301),
(@CGUID+347, 10, 2786.932,4153.1235,179.8544, 100, 0, 1945301),
(@CGUID+347, 11, 2790.1094,4137.709,178.27615, 100, 0, 1945301),
(@CGUID+347, 12, 2787.0476,4122.196,177.59267, 100, 0, 1945301),
(@CGUID+347, 13, 2789.4014,4115.151,176.90814, 100, 0, 1945301),
(@CGUID+347, 14, 2788.6917,4109.1074,177.07968, 100, 0, 1945301),
(@CGUID+347, 15, 2776.7207,4097.7446,178.76817, 100, 0, 1945301),
(@CGUID+347, 16, 2770.4604,4098.5103,179.27275, 100, 0, 1945301),
(@CGUID+347, 17, 2768.9604,4109.0547,179.95506, 100, 0, 1945301),
(@CGUID+347, 18, 2760.4185,4130.614,182.53305, 100, 0, 1945301),
(@CGUID+347, 19, 2756.5938,4152.2695,184.41183, 100, 0, 1945301),
(@CGUID+347, 20, 2753.6106,4163.642,185.81602, 100, 0, 1945301),
-- Sunfury Warp-Master
(@CGUID+361, 1, 2774.3933,4063.6028,175.35977, 100, 0, 0),
(@CGUID+361, 2, 2762.5156,4070.6533,179.22394, 100, 0, 0),
(@CGUID+361, 3, 2762.6558,4089.842,180.38461, 100, 0, 0),
(@CGUID+361, 4, 2768.0435,4106.802,180.00076, 100, 0, 0),
(@CGUID+361, 5, 2769.2356,4119.7285,180.42049, 100, 0, 0),
(@CGUID+361, 6, 2762.5752,4130.3696,182.14163, 100, 0, 0),
(@CGUID+361, 7, 2761.0288,4137.9263,182.78085, 100, 0, 0),
(@CGUID+361, 8, 2766.2,4149.293,182.59956, 100, 0, 0),
(@CGUID+361, 9, 2774.2332,4154.3315,181.55672, 100, 0, 0),
(@CGUID+361, 10, 2782.7456,4154.592,180.477, 100, 0, 0),
(@CGUID+361, 11, 2787.6526,4147.1377,179.35367, 100, 0, 0),
(@CGUID+361, 12, 2785.6516,4134.692,178.81229, 100, 0, 0),
(@CGUID+361, 13, 2774.4973,4127.153,180.0503, 100, 0, 0),
(@CGUID+361, 14, 2772.3586,4119.315,179.88861, 100, 0, 0),
(@CGUID+361, 15, 2770.1257,4106.4033,179.65964, 100, 0, 0),
(@CGUID+361, 16, 2771.5579,4090.2874,178.58376, 100, 0, 0),
(@CGUID+361, 17, 2776.8752,4085.1606,177.0586, 100, 0, 0),
(@CGUID+361, 18, 2784.8333,4082.734,175.00076, 100, 0, 0),
(@CGUID+361, 19, 2798.025,4078.833,171.15207, 100, 0, 0),
(@CGUID+361, 20, 2802.9202,4074.4114,169.2173, 100, 0, 0),
(@CGUID+361, 21, 2799.4644,4066.034,169.03938, 100, 0, 0),
(@CGUID+361, 22, 2786.2444,4064.4622,172.40169, 100, 0, 0),
(@CGUID+361, 23, 2780.3787,4066.9666,174.40216, 100, 0, 0),
-- Sunfury Warp-Master
(@CGUID+368, 1, 2699.8455,4109.9824,197.47702, 100, 0, 0),
(@CGUID+368, 2, 2697.5217,4118.28,197.7057, 100, 0, 0),
(@CGUID+368, 3, 2706.5188,4134.5635,194.93848, 100, 0, 0),
(@CGUID+368, 4, 2719.5422,4146.651,192.37257, 100, 0, 0),
(@CGUID+368, 5, 2730.9316,4146.3477,189.91435, 100, 0, 0),
(@CGUID+368, 6, 2737.9326,4141.0034,187.8714, 100, 0, 0),
(@CGUID+368, 7, 2739.573,4128.986,186.75462, 100, 0, 0),
(@CGUID+368, 8, 2744.0017,4120.22,185.32944, 100, 0, 0),
(@CGUID+368, 9, 2754.1067,4111.8804,182.79318, 100, 0, 0),
(@CGUID+368, 10, 2751.741,4101.098,182.78906, 100, 0, 0),
(@CGUID+368, 11, 2742.5557,4096.84,184.80745, 100, 0, 0),
(@CGUID+368, 12, 2735.8816,4091.4553,186.47253, 100, 0, 0),
(@CGUID+368, 13, 2719.9827,4091.7883,191.38911, 100, 0, 0),
(@CGUID+368, 14, 2709.06,4101.4033,194.31317, 100, 0, 0),
-- Sunfury Astromancer 
(@CGUID+374, 1, 2658.5774,4004.958,172.19435, 100, 0, 0),
(@CGUID+374, 2, 2655.5425,4021.5852,172.85532, 100, 0, 0),
(@CGUID+374, 3, 2658.9668,4029.0269,173.46521, 100, 0, 0),
(@CGUID+374, 4, 2663.5664,4030.9805,174.85664, 100, 0, 0),
(@CGUID+374, 5, 2672.4993,4023.5032,175.14502, 100, 0, 0),
(@CGUID+374, 6, 2685.7183,4025.7722,176.9757, 100, 0, 0),
(@CGUID+374, 7, 2692.2595,4025.1802,176.81522, 100, 0, 0),
(@CGUID+374, 8, 2697.0173,4020.362,176.59563, 100, 0, 0),
(@CGUID+374, 9, 2696.2124,4013.5083,175.40005, 100, 0, 0),
(@CGUID+374, 10, 2691.431,4007.5361,174.71051, 100, 0, 0),
(@CGUID+374, 11, 2687.9485,3999.7734,173.80704, 100, 0, 0),
(@CGUID+374, 12, 2682.877,3991.2869,171.56099, 100, 0, 0),
(@CGUID+374, 13, 2677.23,3990.7249,171.70656, 100, 0, 0),
(@CGUID+374, 14, 2665.4546,3997.6528,171.7778, 100, 0, 0),
-- Sunfury Warp-Master @CGUID+401,
(@CGUID+401, 1, 2802.1958,3966.5725,142.34673, 100, 0, 0),
(@CGUID+401, 2, 2801.5718,3955.1077,143.50575, 100, 0, 0),
(@CGUID+401, 3, 2793.7922,3951.5295,143.40594, 100, 0, 0),
(@CGUID+401, 4, 2786.4849,3956.2705,143.12405, 100, 0, 0),
(@CGUID+401, 5, 2781.2925,3962.2192,143.27946, 100, 0, 0),
(@CGUID+401, 6, 2777.001,3976.3325,144.21797, 100, 0, 0),
(@CGUID+401, 7, 2781.8486,3987.5933,144.61853, 100, 0, 0),
(@CGUID+401, 8, 2807.1946,4009.746,144.77118, 100, 0, 0),
(@CGUID+401, 9, 2813.5493,4022.7395,147.91357, 100, 0, 0),
(@CGUID+401, 10, 2822.732,4026.3665,148.89032, 100, 0, 0),
(@CGUID+401, 11, 2828.3567,4023.7349,148.37357, 100, 0, 0),
(@CGUID+401, 12, 2834.5637,4013.9055,145.11584, 100, 0, 0),
(@CGUID+401, 13, 2829.6143,4003.8274,142.39053, 100, 0, 0),
(@CGUID+401, 14, 2821.8867,4002.6245,142.3148, 100, 0, 0),
(@CGUID+401, 15, 2810.3567,3992.621,141.56964, 100, 0, 0),
(@CGUID+401, 16, 2801.1003,3983.5334,141.96587, 100, 0, 0),
(@CGUID+401, 17, 2806.9502,3975.1301,141.72743, 100, 0, 0),
(@CGUID+401, 18, 2802.1958,3966.5725,142.34673, 100, 0, 0),
-- Sunfury Captain
(@CGUID+402, 1, 2793.6875,3923.6777,144.71945, 100, 0, 1945301),
(@CGUID+402, 2, 2803.7935,3915.9875,147.26791, 100, 0, 1945301),
(@CGUID+402, 3, 2811.4878,3917.3157,148.22337, 100, 0, 1945301),
(@CGUID+402, 4, 2814.6526,3925.6177,147.26758, 100, 0, 1945301),
(@CGUID+402, 5, 2813.947,3940.9358,145.9559, 100, 0, 1945301),
(@CGUID+402, 6, 2809.548,3945.2708,145.10086, 100, 0, 1945301),
(@CGUID+402, 7, 2802.6814,3944.6206,144.38002, 100, 0, 1945301),
(@CGUID+402, 8, 2795.0735,3949.7075,143.55334, 100, 0, 1945301),
(@CGUID+402, 9, 2779.6575,3957.8274,143.27095, 100, 0, 1945301),
(@CGUID+402, 10, 2769.3708,3967.0374,143.93536, 100, 0, 1945301),
(@CGUID+402, 11, 2763.6973,3973.9062,143.9764, 100, 0, 1945301),
(@CGUID+402, 12, 2762.1416,3977.602,143.95142, 100, 0, 1945301),
(@CGUID+402, 13, 2762.7048,3982.6345,144.07094, 100, 0, 1945301),
(@CGUID+402, 14, 2757.932,3985.677,143.62804, 100, 0, 1945301),
(@CGUID+402, 15, 2755.8923,3980.8533,143.41049, 100, 0, 1945301),
(@CGUID+402, 16, 2767.0618,3966.0713,143.83722, 100, 0, 1945301),
(@CGUID+402, 17, 2790.2239,3940.8442,143.55392, 100, 0, 1945301),
-- Sunfury Warp-Master
(@CGUID+409, 1, 2841.2646,3935.7808,151.72934, 100, 0, 0),
(@CGUID+409, 2, 2850.5435,3934.779,154.27821, 100, 0, 0),
(@CGUID+409, 3, 2859.6545,3929.2766,157.90097, 100, 0, 0),
(@CGUID+409, 4, 2862.7217,3920.8125,161.45941, 100, 0, 0),
(@CGUID+409, 5, 2863.376,3909.6172,164.33237, 100, 0, 0),
(@CGUID+409, 6, 2856.4614,3896.9463,165.5914, 100, 0, 0),
(@CGUID+409, 7, 2846.3142,3894.7297,163.40146, 100, 0, 0),
(@CGUID+409, 8, 2846.6953,3894.8076,163.19032, 100, 0, 0),
(@CGUID+409, 9, 2823.655,3894.5,157.83452, 100, 0, 0),
(@CGUID+409, 10, 2826.7688,3901.7996,155.67436, 100, 0, 0),
(@CGUID+409, 11, 2832.7593,3905.8313,155.64418, 100, 0, 0),
(@CGUID+409, 12, 2833.8892,3916.013,152.9309, 100, 0, 0),
(@CGUID+409, 13, 2838.3281,3921.3833,152.87596, 100, 0, 0),
-- Sunfury Warp-Master
(@CGUID+410, 1, 2759.375,3855.208,141.83328, 100, 0, 0),
(@CGUID+410, 2, 2748.8499,3880.1182,140.93088, 100, 0, 0),
(@CGUID+410, 3, 2750.3438,3891.4426,141.44557, 100, 0, 0),
(@CGUID+410, 4, 2747.611,3904.1477,140.24994, 100, 0, 0),
(@CGUID+410, 5, 2755.6736,3911.4363,144.61768, 100, 0, 0),
(@CGUID+410, 6, 2764.0764,3902.0425,148.057, 100, 0, 0),
(@CGUID+410, 7, 2767.8694,3894.1377,151.86679, 100, 0, 0),
(@CGUID+410, 8, 2778.632,3892.7695,155.1278, 100, 0, 0),
(@CGUID+410, 9, 2787.5,3888.216,157.4899, 100, 0, 0),
(@CGUID+410, 10, 2798.8206,3880.6384,159.69797, 100, 0, 0),
(@CGUID+410, 11, 2820.7166,3878.201,165.19388, 100, 0, 0);

DELETE FROM `creature_movement_template` WHERE `entry` IN (19569, 19635, 20416);
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
(19569, 0, 22, 3389.8567,4267.7715,122.70082,100, 0, 0),
-- Captain Arathyn intro Waypoints
(19635, 0, 1, 3032.15, 3960.44, 155.42, 100, 0, 0),
(19635, 0, 2, 3025.1475,3954.79,155.17096, 100, 10000, 1963501),
(19635, 0, 3, 3021.1926,3971.568,156.8732, 100, 3000, 1963502),
-- Captain Arathyn Waypoints after intro
(19635, 1, 1, 3019.1038,3974.2063,157.06041, 100, 0, 1963503),
(19635, 1, 2, 3024.375,3966.2192,156.24219, 100, 0, 1963503),
(19635, 1, 3, 3022.0776,3955.9973,155.37415, 100, 0, 1963503),
(19635, 1, 4, 3033.6973,3945.7258,154.78703, 100, 0, 1963503),
-- Overseer Theredis
(20416, 0, 1, 2853.4512,4162.422,162.59381, 100, 0, 0),
(20416, 0, 2, 2844.1633,4158.831,162.59386, 100, 0, 0),
(20416, 0, 3, 2828.0178,4154.6665,162.59381, 100, 0, 0),
(20416, 0, 4, 2826.6685,4154.0835,162.5938, 100, 0, 0),
(20416, 0, 5, 2844.1633,4158.831,162.59386, 100, 0, 0);

-- SpawnData
DELETE FROM creature_spawn_data WHERE guid IN (70008, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819);
DELETE FROM creature_spawn_data WHERE guid BETWEEN @CGUID+1 AND @CGUID+204;
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
(@CGUID+35, 1887901),
(@CGUID+121, 1887901),
(@CGUID+122, 1887901),
(@CGUID+123, 1887901),
(@CGUID+163, 1887901),
(@CGUID+164, 1887901),
(@CGUID+165, 1887901),
(@CGUID+166, 1887901),
(@CGUID+167, 1887901),
(@CGUID+168, 1887901),
(@CGUID+169, 1887901),
(@CGUID+170, 1887901),
(@CGUID+171, 1887901),
(@CGUID+172, 1887901),
(@CGUID+180, 1887901),
(@CGUID+181, 1887901),
(@CGUID+182, 1887901),
(@CGUID+213, 1887901),
(@CGUID+214, 1887901),
(@CGUID+215, 1887901),
(@CGUID+216, 1887901),
(@CGUID+217, 1887901),
(@CGUID+218, 1887901),
(@CGUID+219, 1887901),
(@CGUID+220, 1887901),
(@CGUID+221, 1887901),
(@CGUID+222, 1887901),
(@CGUID+223, 1887901),
-- Generic RunOn
(@CGUID+95, 1),
(@CGUID+190, 1),
(@CGUID+204, 1);

DELETE FROM creature_spawn_data_template WHERE Entry IN (1887901);
INSERT INTO creature_spawn_data_template (`Entry`, `UnitFlags`, `Name`) VALUES 
(1887901, 33587968, 'Phase Hunter (18879) - UnitFlags');

-- Gameobjects
-- Etherlithium Matrix Crystal - 183767 objects before rework: 28 spawns
-- Etherlithium Matrix Crystal - 183767 objects after rework: 29 spawns
-- Delete old spawns
DELETE FROM gameobject WHERE id = 183767;

-- Add sniff based spawns
SET @GGUID := 157038;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(@GGUID+1, 183767, 530, 1, 3362.163330078125, 3455.52294921875, 140.27886962890625, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697, 600, 600),
(@GGUID+2, 183767, 530, 1, 3364.127197265625, 3689.97607421875, 142.813690185546875, 1.640606880187988281, 0, 0, 0.731352806091308593, 0.6819993257522583, 600, 600),
(@GGUID+3, 183767, 530, 1, 3370.521728515625, 3657.897705078125, 143.7832794189453125, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595, 600, 600),
(@GGUID+4, 183767, 530, 1, 3390.829345703125, 3440.257568359375, 140.2382354736328125, 1.343901276588439941, 0, 0, 0.622513771057128906, 0.78260880708694458, 600, 600),
(@GGUID+5, 183767, 530, 1, 3396.216552734375, 3502.354736328125, 140.889251708984375, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468, 600, 600),
(@GGUID+6, 183767, 530, 1, 3399.6630859375, 3705.55517578125, 145.004852294921875, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303, 600, 600),
(@GGUID+7, 183767, 530, 1, 3405.444580078125, 3682.842041015625, 147.3873443603515625, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 600, 600),
(@GGUID+8, 183767, 530, 1, 3408.04345703125, 3614.708251953125, 141.6489410400390625, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214, 600, 600),
(@GGUID+9, 183767, 530, 1, 3413.55908203125, 3463.801513671875, 146.28057861328125, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852, 600, 600),
(@GGUID+10, 183767, 530, 1, 3415.485107421875, 3508.389404296875, 144.5985260009765625, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818, 600, 600),
(@GGUID+11, 183767, 530, 1, 3420.248779296875, 3719.692626953125, 139.3045196533203125, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 600, 600),
(@GGUID+12, 183767, 530, 1, 3428.646728515625, 3474.485595703125, 144.9396514892578125, 3.857182979583740234, 0, 0, -0.93667125701904296, 0.350209832191467285, 600, 600),
(@GGUID+13, 183767, 530, 1, 3435.990966796875, 3663.29345703125, 152.612701416015625, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046, 600, 600),
(@GGUID+14, 183767, 530, 1, 3440.4814453125, 3554.952392578125, 144.4949188232421875, 1.466075778007507324, 0, 0, 0.669130325317382812, 0.74314504861831665, 600, 600),
(@GGUID+15, 183767, 530, 1, 3449.3359375, 3519.337646484375, 144.6487884521484375, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697, 600, 600),
(@GGUID+16, 183767, 530, 1, 3451.778564453125, 3660.435791015625, 152.6062774658203125, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 600, 600),
(@GGUID+17, 183767, 530, 1, 3455.128173828125, 3572.59619140625, 173.2417755126953125, 2.635444164276123046, 0, 0, 0.96814727783203125, 0.250381410121917724, 600, 600),
(@GGUID+18, 183767, 530, 1, 3463.658935546875, 3478.3720703125, 146.8243408203125, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599, 600, 600),
(@GGUID+19, 183767, 530, 1, 3466.503662109375, 3519.94140625, 146.0005645751953125, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 600, 600),
(@GGUID+20, 183767, 530, 1, 3468.574462890625, 3578.79248046875, 168.312835693359375, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599, 600, 600),
(@GGUID+21, 183767, 530, 1, 3469.46826171875, 3633.1005859375, 140.68878173828125, 3.804818391799926757, 0, 0, -0.94551849365234375, 0.325568377971649169, 600, 600),
(@GGUID+22, 183767, 530, 1, 3472.313232421875, 3710.994873046875, 147.1088409423828125, 4.555310726165771484, 0, 0, -0.76040554046630859, 0.649448513984680175, 600, 600),
(@GGUID+23, 183767, 530, 1, 3489.64013671875, 3576.06396484375, 158.8740234375, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486, 600, 600),
(@GGUID+24, 183767, 530, 1, 3499.712646484375, 3624.470947265625, 154.55645751953125, 2.460912704467773437, 0, 0, 0.942641258239746093, 0.333807557821273803, 600, 600),
(@GGUID+25, 183767, 530, 1, 3510.089111328125, 3579.607666015625, 149.889892578125, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869, 600, 600),
(@GGUID+26, 183767, 530, 1, 3522.244873046875, 3584.623779296875, 144.1865997314453125, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449, 600, 600),
(@GGUID+27, 183767, 530, 1, 3547.472412109375, 3624.41357421875, 126.0068893432617187, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224, 600, 600),
(@GGUID+28, 183767, 530, 1, 3551.5986328125, 3570.1171875, 128.387664794921875, 4.747295856475830078, 0, 0, -0.69465827941894531, 0.719339847564697265, 600, 600),
(@GGUID+29, 183767, 530, 1, 3572.510986328125, 3627.473876953125, 133.7910003662109375, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 600, 600);

-- SpawnGroup
-- Currently most spawngroups are only used to get npcs into dynguid
DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID AND @SGGUID+100;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGGUID+1, 'Netherstorm - Group 001 - Phase Hunter (15)', 0, 0, 0, 0, 0),
(@SGGUID+2, 'Netherstorm - Group 002 - Nether Ray (2)', 0, 0, 0, 0, 0),
(@SGGUID+3, 'Netherstorm - Group 003 - Mana Snapper (1)', 0, 0, 0, 0, 0),
(@SGGUID+4, 'Netherstorm - Group 004 - Shaleskin Flayer', 0, 0, 0, 0, 0),
-- Static Disembodied Protector spawns
(@SGGUID+5, 'Netherstorm - Group 005 - Disembodied Protector (15)', 0, 0, 0, 0, 0),
-- Static Disembodied Vindicator spawns
(@SGGUID+6, 'Netherstorm - Group 006 - Disembodied Vindicator (19)', 0, 0, 0, 0, 0),
-- Disembodied Protector/Disembodied Vindicator rnd spawns
(@SGGUID+7, 'Netherstorm - Group 007 - Disembodied Protector | Disembodied Vindicator (8)', 0, 0, 0, 0, 0),
-- Disembodied Exarch spawns
(@SGGUID+8, 'Netherstorm - Group 008 - Disembodied Exarch (4)', 0, 0, 0, 0, 0),
-- Mana Wraith
(@SGGUID+9, 'Netherstorm - Group 009 - Mana Wraith ()', 0, 0, 0, 0, 0),
-- Sundered Rumbler
(@SGGUID+10, 'Netherstorm - Group 010 - Sundered Rumbler', 0, 0, 0, 0, 0),
-- Farahlon Giant 
(@SGGUID+11, 'Netherstorm - Group 011 - Farahlon Giant (6)', 0, 0, 0, 0, 0),
-- Artifact Seeker
(@SGGUID+12, 'Netherstorm - Group 012 - Artifact Seeker (13)', 0, 0, 0, 0, 0),
-- Felblade Doomguard
(@SGGUID+13, 'Netherstorm - Group 013 - Felblade Doomguard (7)', 0, 0, 0, 0, 0),
-- Pentatharon
(@SGGUID+14, 'Netherstorm - Group 014 - Pentatharon (1)', 0, 1, 0, 0, 0),
-- Sunfury Bloodwarder - General
(@SGGUID+15, 'Netherstorm - Group 015 - Sunfury Bloodwarder', 0, 0, 0, 0, 0),
-- Captain Arathyn
(@SGGUID+16, 'Netherstorm - Group 016 - Captain Arathyn (1)', 0, 1, 0, 0, 0),
-- Sunfury Captain
(@SGGUID+17, 'Netherstorm - Group 017 - Sunfury Captain', 0, 0, 0, 0, 0),
-- Sunfury Magister
(@SGGUID+18, 'Netherstorm - Group 018 - Sunfury Magister', 0, 0, 0, 0, 0),
-- Sunfury Astromancer
(@SGGUID+19, 'Netherstorm - Group 019 - Sunfury Astromancer', 0, 0, 0, 0, 0),
-- Sunfury Geologist
(@SGGUID+20, 'Netherstorm - Group 020 - Sunfury Geologist', 0, 0, 0, 0, 0),
-- Sunfury Warp-Engineer
(@SGGUID+21, 'Netherstorm - Group 021 - Sunfury Warp-Engineer', 0, 0, 0, 0, 0),
-- Sunfury Warp-Master
(@SGGUID+22, 'Netherstorm - Group 022 - Sunfury Warp-Master', 0, 0, 0, 0, 0),
-- Overseer Theredis
(@SGGUID+23, 'Netherstorm - Group 023 - Overseer Theredis (1)', 0, 1, 0, 0, 0),
-- Sunfury Bloodcrystal group attacking Nether Anomaly
(@SGGUID+24, 'Netherstorm - Group 024 - Sunfury Bloodwarder (4)', 0, 4, 0, 0, 0),
-- 4 Nether Anomaly that attack Sunfury Bloodwarder
(@SGGUID+25, 'Netherstorm - Group 025 - Nether Anomaly', 0, 1, @SGGUID+1, 0, 0),
(@SGGUID+26, 'Netherstorm - Group 026 - Nether Anomaly', 0, 1, @SGGUID+1, 0, 0),
(@SGGUID+27, 'Netherstorm - Group 027 - Nether Anomaly', 0, 1, @SGGUID+1, 0, 0),
(@SGGUID+28, 'Netherstorm - Group 028 - Nether Anomaly', 0, 1, @SGGUID+1, 0, 0),
-- Grouping for Etherlithium Matrix Crystal - 29 spawns, max spawned 21
(@SGGUID+100, 'Netherstorm - Etherlithium Matrix Crystal', 1, 21, 0, 0, 0);

DELETE FROM spawn_group_entry WHERE Id BETWEEN @SGGUID AND @SGGUID+100;
INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+7, 18872, 0, 0, 0), (@SGGUID+7, 18873, 0, 0, 0); -- Disembodied Vindicator/Disembodied Protector


DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID AND @SGGUID+100;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGGUID+1, @CGUID+15, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+16, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+19, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+20, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+21, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+22, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+24, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+25, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+26, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+27, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+31, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+32, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+33, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+34, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+35, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+121, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+122, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+123, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+163, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+164, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+165, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+166, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+167, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+168, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+169, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+170, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+171, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+172, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+180, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+181, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+182, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+213, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+214, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+215, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+216, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+217, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+218, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+219, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+220, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+221, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+222, -1, 0), -- Phase Hunter
(@SGGUID+1, @CGUID+223, -1, 0), -- Phase Hunter
-- Nether Ray
(@SGGUID+2, @CGUID+17, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+30, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+128, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+129, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+173, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+174, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+175, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+176, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+177, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+178, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+179, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+196, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+197, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+198, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+199, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+211, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+212, -1, 0), -- Nether Ray
-- Mana Snapper
(@SGGUID+3, @CGUID+18, -1, 0), -- Mana Snapper
-- Sgakeskin Flayer
(@SGGUID+4, @CGUID+23, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+28, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+29, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+90, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+91, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+92, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+93, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+94, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+95, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+117, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+118, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+119, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+120, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+130, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+131, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+132, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+133, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+162, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+183, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+184, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+185, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+186, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+187, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+188, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+189, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+190, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+191, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+192, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+193, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+194, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+195, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+200, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+201, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+202, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+203, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+204, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+207, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+208, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+209, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+210, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+224, -1, 0), -- Shaleskin Flayer
-- Static Disembodied Protector spawns
(@SGGUID+5, @CGUID+36, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+39, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+40, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+41, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+46, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+47, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+48, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+55, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+62, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+64, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+68, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+71, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+73, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+77, -1, 0), -- Disembodied Protector
(@SGGUID+5, @CGUID+78, -1, 0), -- Disembodied Protector
-- Static Disembodied Vindiciator spawns
(@SGGUID+6, @CGUID+37, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+38, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+42, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+43, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+44, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+45, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+51, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+52, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+54, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+56, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+58, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+59, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+61, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+63, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+69, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+74, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+75, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+76, -1, 0), -- Disembodied Vindicator
(@SGGUID+6, @CGUID+80, -1, 0), -- Disembodied Vindicator
-- Disembodied Protector/Disembodied Vindicator rnd spawns
(@SGGUID+7, @CGUID+53, 0, 0), -- spawn_group_entry
(@SGGUID+7, @CGUID+50, 0, 0), -- spawn_group_entry
(@SGGUID+7, @CGUID+60, -1, 0), -- spawn_group_entry
(@SGGUID+7, @CGUID+65, -1, 0), -- spawn_group_entry
(@SGGUID+7, @CGUID+66, -1, 0), -- spawn_group_entry
(@SGGUID+7, @CGUID+70, -1, 0), -- spawn_group_entry
(@SGGUID+7, @CGUID+72, -1, 0), -- spawn_group_entry
(@SGGUID+7, @CGUID+79, -1, 0), -- spawn_group_entry
-- Disembodied Exarch spawns
(@SGGUID+8, @CGUID+49, -1, 0), -- Disembodied Exarch
(@SGGUID+8, @CGUID+57, -1, 0), -- Disembodied Exarch
(@SGGUID+8, @CGUID+67, -1, 0), -- Disembodied Exarch
(@SGGUID+8, @CGUID+81, -1, 0), -- Disembodied Exarch
-- Mana Wraith spawns
(@SGGUID+9, @CGUID+82, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+83, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+84, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+85, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+86, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+87, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+97, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+98, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+99, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+100, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+101, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+102, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+103, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+104, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+105, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+106, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+107, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+108, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+109, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+110, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+111, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+112, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+113, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+114, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+115, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+116, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+205, -1, 0), -- Mana Wraith
(@SGGUID+9, @CGUID+206, -1, 0), -- Mana Wraith
-- Sundered Rumbler
(@SGGUID+10, @CGUID+96, -1, 0), -- Sundered Rumbler
(@SGGUID+10, @CGUID+124, -1, 0), -- Sundered Rumbler
(@SGGUID+10, @CGUID+125, -1, 0), -- Sundered Rumbler
(@SGGUID+10, @CGUID+126, -1, 0), -- Sundered Rumbler
(@SGGUID+10, @CGUID+127, -1, 0), -- Sundered Rumbler
-- Farahlon Giant
(@SGGUID+11, @CGUID+134, -1, 0), -- Farahlon Giant
(@SGGUID+11, @CGUID+135, -1, 0), -- Farahlon Giant
(@SGGUID+11, @CGUID+136, -1, 0), -- Farahlon Giant
(@SGGUID+11, @CGUID+137, -1, 0), -- Farahlon Giant
(@SGGUID+11, @CGUID+138, -1, 0), -- Farahlon Giant
(@SGGUID+11, @CGUID+139, -1, 0), -- Farahlon Giant
-- Artifact Seeker
(@SGGUID+12, @CGUID+140, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+141, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+142, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+143, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+144, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+145, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+146, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+147, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+148, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+149, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+150, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+151, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+152, -1, 0), -- Artifact Seeker
(@SGGUID+12, @CGUID+153, -1, 0), -- Artifact Seeker
-- Felblade Doomguard
(@SGGUID+13, @CGUID+154, -1, 0), -- Felblade Doomguard
(@SGGUID+13, @CGUID+155, -1, 0), -- Felblade Doomguard
(@SGGUID+13, @CGUID+156, -1, 0), -- Felblade Doomguard
(@SGGUID+13, @CGUID+157, -1, 0), -- Felblade Doomguard
(@SGGUID+13, @CGUID+158, -1, 0), -- Felblade Doomguard
(@SGGUID+13, @CGUID+159, -1, 0), -- Felblade Doomguard
(@SGGUID+13, @CGUID+160, -1, 0), -- Felblade Doomguard
-- Pentatharon
(@SGGUID+14, @CGUID+161, -1, 0), -- Pentatharon
-- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+225, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+226, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+227, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+228, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+229, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+231, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+232, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+233, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+234, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+235, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+236, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+261, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+262, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+289, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+290, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+298, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+299, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+300, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+301, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+302, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+303, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+311, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+312, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+313, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+314, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+315, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+316, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+320, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+321, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+344, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+345, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+346, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+353, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+354, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+355, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+380, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+381, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+382, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+396, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+397, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+398, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+399, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+15, @CGUID+400, -1, 0), -- Sunfury Bloodwarder
-- Captain Arathyn
(@SGGUID+16, @CGUID+230, -1, 0), -- Captain Arathyn
-- Sunfury Captain
(@SGGUID+17, @CGUID+237, -1, 0), -- Sunfury Captain
(@SGGUID+17, @CGUID+304, -1, 0), -- Sunfury Captain
(@SGGUID+17, @CGUID+317, -1, 0), -- Sunfury Captain
(@SGGUID+17, @CGUID+347, -1, 0), -- Sunfury Captain
(@SGGUID+17, @CGUID+402, -1, 0), -- Sunfury Captain
-- Sunfury Magister
(@SGGUID+18, @CGUID+238, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+239, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+240, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+241, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+242, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+243, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+244, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+245, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+254, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+255, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+256, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+257, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+259, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+260, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+283, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+284, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+285, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+286, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+287, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+323, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+324, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+325, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+326, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+327, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+369, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+370, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+371, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+372, -1, 0), -- Sunfury Magister
(@SGGUID+18, @CGUID+373, -1, 0), -- Sunfury Magister
-- Sunfury Astromancer
(@SGGUID+19, @CGUID+246, -1, 0), -- Sunfury Astromancer
(@SGGUID+19, @CGUID+258, -1, 0), -- Sunfury Astromancer
(@SGGUID+19, @CGUID+288, -1, 0), -- Sunfury Astromancer
(@SGGUID+19, @CGUID+322, -1, 0), -- Sunfury Astromancer
(@SGGUID+19, @CGUID+374, -1, 0), -- Sunfury Astromancer
-- Sunfury Geologist
(@SGGUID+20, @CGUID+247, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+248, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+249, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+250, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+251, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+252, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+253, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+334, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+335, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+336, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+337, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+338, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+339, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+340, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+341, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+342, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+348, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+349, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+350, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+351, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+352, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+356, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+357, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+358, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+359, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+360, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+362, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+363, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+364, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+365, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+366, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+367, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+375, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+376, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+377, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+378, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+379, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+383, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+384, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+385, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+386, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+387, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+388, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+389, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+390, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+391, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+392, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+393, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+394, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+395, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+403, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+404, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+405, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+406, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+407, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+408, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+416, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+417, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+418, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+419, -1, 0), -- Sunfury Geologist
(@SGGUID+20, @CGUID+420, -1, 0), -- Sunfury Geologist
-- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+272, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+273, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+274, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+275,  -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+276, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+282, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+293, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+294, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+295, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+296, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+297, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+305, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+306, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+307, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+308, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+309, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+318, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+319, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+328, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+329, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+330, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+331, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+332, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+333, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+411, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+412, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+413, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+414, -1, 0), -- Sunfury Warp-Engineer
(@SGGUID+21, @CGUID+415, -1, 0), -- Sunfury Warp-Engineer
-- Sunfury Warp-Master
(@SGGUID+22, @CGUID+263, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+277, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+278, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+279, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+281, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+291, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+310, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+343, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+361, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+368, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+401, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+409, -1, 0), -- Sunfury Warp-Master
(@SGGUID+22, @CGUID+410, -1, 0), -- Sunfury Warp-Master
-- Overseer Theredis
(@SGGUID+23, @CGUID+280, -1, 0), -- Overseer Theredis
-- Sunfury Bloodwarder attacking Nether Anomaly
(@SGGUID+24, @CGUID+264, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+24, @CGUID+265, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+24, @CGUID+266, -1, 0), -- Sunfury Bloodwarder
(@SGGUID+24, @CGUID+267, -1, 0), -- Sunfury Bloodwarder
-- Nether Anomaly (Left) linked to Sunfury Bloodwarder 
(@SGGUID+25, @CGUID+268, -1, 0), -- Nether Anomaly linked to Sunfury Bloodwarder @CGUID+264
(@SGGUID+26, @CGUID+269, -1, 0), -- Nether Anomaly linked to Sunfury Bloodwarder @CGUID+265
(@SGGUID+27, @CGUID+270, -1, 0), -- Nether Anomaly linked to Sunfury Bloodwarder @CGUID+266
(@SGGUID+28, @CGUID+271, -1, 0), -- Nether Anomaly linked to Sunfury Bloodwarder @CGUID+267
-- Etherlithium Matrix Crystal 
(@SGGUID+100, @GGUID+1, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+2, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+3, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+4, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+5, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+6, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+7, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+8, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+9, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+10, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+11, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+12, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+13, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+14, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+15, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+16, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+17, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+18, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+19, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+20, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+21, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+22, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+23, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+24, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+25, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+26, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+27, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+28, -1, 0), -- Etherlithium Matrix Crystal
(@SGGUID+100, @GGUID+29, -1, 0); -- Etherlithium Matrix Crystal


DELETE FROM worldstate_name WHERE Id IN (@SGGUID+1, @SGGUID+2, @SGGUID+3, @SGGUID+4);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(@SGGUID+1, 'Netherstorm - Manaforge B''nar - Nether Anomaly fighting Sunfury Bloodwarder - 01'),
(@SGGUID+2, 'Netherstorm - Manaforge B''naar - Nether Anomaly fighting Sunfury Bloodwarder - 02'),
(@SGGUID+3, 'Netherstorm - Manaforge B''naar - Nether Anomaly fighting Sunfury Bloodwarder - 03'),
(@SGGUID+4, 'Netherstorm - Manaforge B''naar - Nether Anomaly fighting Sunfury Bloodwarder - 04');

DELETE FROM `conditions` WHERE `condition_entry` IN (@SGGUID+1, @SGGUID+2, @SGGUID+3, @SGGUID+4);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(@SGGUID+1, 42, @SGGUID+1, 1, 1, 0, 0, 'Netherstorm - Manaforge B''naar - Nether Anomaly fighting Sunfury Bloodwarder - 01'),
(@SGGUID+2, 42, @SGGUID+2, 1, 1, 0, 0, 'Netherstorm - Manaforge B''naar - Nether Anomaly fighting Sunfury Bloodwarder - 02'),
(@SGGUID+3, 42, @SGGUID+3, 1, 1, 0, 0, 'Netherstorm - Manaforge B''naar - Nether Anomaly fighting Sunfury Bloodwarder - 03'),
(@SGGUID+4, 42, @SGGUID+4, 1, 1, 0, 0, 'Netherstorm - Manaforge B''naar - Nether Anomaly fighting Sunfury Bloodwarder - 04');

-- Scripts
SET @RELAYID := 18000;
DELETE FROM dbscript_random_templates WHERE id BETWEEN @RELAYID+1 AND @RELAYID+10;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
-- Netherologist Coppernickels different text's
(@RELAYID+1, 0, 16949, 0, 'Netherstorm - Nether Technician - Say 1'), 
(@RELAYID+1, 0, 16950, 0, 'Netherstorm - Nether Technician - Say 2'),
(@RELAYID+1, 0, 16951, 0, 'Netherstorm - Nether Technician - Say 3'), 
(@RELAYID+1, 0, 16952, 0, 'Netherstorm - Nether Technician - Say 4'), 
(@RELAYID+1, 0, 16953, 0, 'Netherstorm - Nether Technician - Say 5'),
-- Disembodied Vindicator/Disembodied Protector random emote
(@RELAYID+2, 1, @RELAYID+3, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShotQuestion (6)'), 
(@RELAYID+2, 1, @RELAYID+4, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteYes (273)'),
(@RELAYID+2, 1, @RELAYID+5, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteNo (274)'), 
(@RELAYID+2, 1, @RELAYID+6, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteTalk (396)'),
 -- Disembodied Vindicator/Disembodied Protector random StandState
(@RELAYID+3, 1, @RELAYID+7, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Stand (0)'), 
(@RELAYID+3, 1, @RELAYID+8, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Sit (1)'),
(@RELAYID+3, 1, @RELAYID+9, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Sleep (3)'), 
(@RELAYID+3, 1, @RELAYID+10, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Kneel (8)'),
-- Captain Arathyn/Sunfury Captain RP script from dbscriptonmovement
(@RELAYID+4, 1, @RELAYID+20, 20, 'Netherstorm - Captain Arathyn/Sunfury Captain RP'), 
(@RELAYID+4, 1, 0, 80, 'Netherstorm - Captain Arathyn/Sunfury Captain NoRP'),
-- Sunfury Magister first move to targets before doing RP
(@RELAYID+5, 1, @RELAYID+22, 0, 'Netherstorm - Sunfury Magister - Netherstorm Crystal Target RP'), 
(@RELAYID+5, 1, @RELAYID+23, 0, 'Netherstorm - Sunfury Magister - Netherstorm Kneel Target RP'),
-- Sunfury Magister dont have to move to Crystal Target
(@RELAYID+6, 1, @RELAYID+24, 0, 'Netherstorm - Sunfury Magister - Netherstorm Crystal Target RP'), 
(@RELAYID+6, 1, @RELAYID+23, 0, 'Netherstorm - Sunfury Magister - Netherstorm Kneel Target RP'),
-- Sunfury Astromancer RP with Sunfury Magister StartScript
(@RELAYID+10, 1, @RELAYID+27, 20, 'Netherstorm - Sunfury Astromancer - RP'), 
(@RELAYID+10, 1, 0, 80, 'Netherstorm - Sunfury Magister - No RP');

SET @RELAYID := 18000;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN @RELAYID+1 AND @RELAYID+40;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Nether Technician script via ACID - CGUID+4
(@RELAYID+1, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1911, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Set EquipmentSlot'),
(@RELAYID+1, 0, 1, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Emote STATE_USESTANDING_NOSHEATHE'),
(@RELAYID+2, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1903, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Set EquipmentSlot'),
(@RELAYID+2, 0, 1, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Nether Technician - Emote STATE_WORK_MINING'),
-- Disembodied Vindicator/Disembodied Protector using random emote OOC
(@RELAYID+3, 0, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShotQuestion (6)'),
(@RELAYID+4, 0, 0, 1, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteYes (273)'),
(@RELAYID+5, 0, 0, 1, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteNo (274)'),
(@RELAYID+6, 0, 0, 1, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - Emote OneShoteTalk (396)'),-- Disembodied Vindicator/Disembodied Protector using random StandState OOC
-- Disembodied Vindicator/Disembodied Protector randomly changing StandState
(@RELAYID+7, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Stand (0)'),
(@RELAYID+8, 0, 0, 28, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Sit (1)'),
(@RELAYID+9, 0, 0, 28, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Sleep (3)'),
(@RELAYID+10, 0, 0, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Kneel (8)'),
-- Disembodied Exarch randomly stops waypoint, kneels for 4 seconds and resume path
(@RELAYID+11, 0, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Exarch - Stop Waypoints'),
(@RELAYID+11, 0, 1, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Exarch - Emote Kneel'),
(@RELAYID+11, 3000, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Exarch - Unpause Waypoints'),
-- Sunfury Bloodwarder scripts
-- Sunfury Bloodwarder CGUID+264 - On Death change worldstate to stop respawning of Nether Anomaly
(@RELAYID+12, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 1, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Change Worldstate'), -- OnSpawn
(@RELAYID+13, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+1, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Change Worldstate'), -- OnDeath
-- Sunfury Bloodwarder CGUID+265 - On Death change worldstate to stop respawning of Nether Anomaly
(@RELAYID+14, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 1, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Change Worldstate'), -- OnSpawn
(@RELAYID+15, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+2, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Change Worldstate'), -- OnDeath
-- Sunfury Bloodwarder CGUID+266 - On Death change worldstate to stop respawning of Nether Anomaly
(@RELAYID+16, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+3, 1, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Change Worldstate'), -- OnSpawn
(@RELAYID+17, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+3, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Change Worldstate'), -- OnDeath
-- Sunfury Bloodwarder CGUID+267 - On Death change worldstate to stop respawning of Nether Anomaly
(@RELAYID+18, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+4, 1, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Change Worldstate'), -- OnSpawn
(@RELAYID+19, 0, 0, 53, 0, 0, 0, 0, 0, 0, @SGGUID+4, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Change Worldstate'), -- OnDeath
-- Generic script in Nehterstorm, used by:
-- Captain Arathyn with Sunfury Bloodwarder
-- Sunfury Captain with Sunfury Bloodwarder
-- Base script moving to Sunfury Bloodwarder
(@RELAYID+20, 0, 0, 31, 18853, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - Terminate Script if no Sunfury Bloodwarder found'), 
(@RELAYID+20, 1, 1, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - stop waypoint'), 
(@RELAYID+20, 1, 2, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - set Active object'), 
(@RELAYID+20, 1, 3, 37, 0, 0, 3, 18853, 20, 9, 0, @RELAYID+21, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - move to Sunfury Bloodwarder'), 
-- Script when NPC reached waypoint
(@RELAYID+21, 1000, 0, 36, 0, 0, 0, 18853, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - facing to Captain Arathyn'), 
(@RELAYID+21, 1000, 1, 28, 0, 0, 0, 18853, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - StandState Stand'), 
(@RELAYID+21, 1000, 2, 36, 0, 0, 0, 18853, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - face Bloodwarder'), 
(@RELAYID+21, 1000, 3, 1, 66, 0, 0, 18853, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Emote OneShotSalute'), 
(@RELAYID+21, 3000, 0, 1, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - Emote OneShotSalute'),
(@RELAYID+21, 4000, 0, 1, 1, 0, 0, 18853, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - Emote OneShotTalk'), 
(@RELAYID+21, 6000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - Emote OneShotExclamation'),
(@RELAYID+21, 10000, 0, 36, 1, 0, 0, 18853, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Bloodwarder - reset facing'), 
(@RELAYID+21, 11000, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - remove Active object'), 
(@RELAYID+21, 11000, 1, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn/Sunfury Captain - start waypoint'),
-- Sunfury Magister move to a near Netherstorm Crystal Target
(@RELAYID+22, 0, 0, 31, 19421, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Terminate Script if no Netherstorm Crystal Target found'), 
(@RELAYID+22, 1, 1, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - SendAIEventA to self'), -- to change phase to 0
(@RELAYID+22, 1, 2, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - set Active object'), 
(@RELAYID+22, 1, 3, 37, 0, 0, 13.5, 19421, 45, 9, 0, @RELAYID+24, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - move to Netherstorm Crystal Target'), 
-- Sunfury Magister has to move to Netherstorm Kneel Target
(@RELAYID+23, 0, 0, 31, 19437, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Terminate Script if no Netherstorm Kneel Target found'), 
(@RELAYID+23, 1, 1, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - SendAIEventA to self'), -- to change phase to 0
(@RELAYID+23, 1, 2, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - set Active object'), 
(@RELAYID+23, 1, 3, 37, 0, 0, 1.5, 19437, 45, 9, 0, @RELAYID+25, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - move to Netherstorm Kneel Target'),
-- Sunfury Magister BaseScript with Crystal Target
(@RELAYID+24, 0, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - SendAIEventA to self'), -- to change phase to 0
(@RELAYID+24, 0, 1, 36, 0, 0, 0, 19421, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - face Netherstorm Crystal Target'), 
(@RELAYID+24, 0, 2, 15, 35778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Cast Bloodcrystal Surge'), 
(@RELAYID+24, 0, 3, 15, 33918, 0, 0, 19421, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Cast Crystal Channel'), 
(@RELAYID+24, 8000, 0, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Stop Channel'), 
(@RELAYID+24, 9000, 0, 3, @RELAYID+26, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Move to Home Position'),
-- Sunfury Magister BaseScript with Netherstorm Kneel Target
(@RELAYID+25, 0, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - SendAIEventA to self'), -- to change phase to 0
(@RELAYID+25, 0, 1, 36, 0, 0, 0, 19437, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - face Netherstorm Crystal Target'), 
(@RELAYID+25, 0, 2, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - StandState Kneel'), 
(@RELAYID+25, 4000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Emote OneShotQuestion'), 
(@RELAYID+25, 7000, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - StandState Stand'), 
(@RELAYID+25, 7000, 1, 3, @RELAYID+26, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Move to Home Position'),
-- Sunfury Magister BaseScript when reached HomePosition - inform self to change phase
(@RELAYID+26, 0, 0, 35, 6, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - SendAIEventB'), -- to change phase back to 1
-- Astromancer start RP with Sunfury Magister
(@RELAYID+27, 0, 0, 31, 18855, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - Terminate Script if no Sunfury Magister found'), 
(@RELAYID+27, 1, 1, 35, 7, 0, 0, 18855, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - SendAIEventC to Sunfury Magister'),
-- Sunfury Magister RP with Sunfury Astromancer
(@RELAYID+28, 0, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - SendAIEventA to self'), -- to change phase to 0
(@RELAYID+28, 0, 1, 21, 1, 0, 0, 19643, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - stop waypoint'), 
(@RELAYID+28, 0, 2, 32, 1, 0, 0, 19643, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - set ActiveObject'), 
(@RELAYID+28, 0, 3, 37, 0, 0, 1, 19643, 20, 3, 0, @RELAYID+29, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer move to Sunfury Magister'),
-- Sunfury Astromancer script after reaching Sunfury Magister
(@RELAYID+29, 1000, 0, 36, 0, 0, 0, 18855, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - facing to Sunfury Astromancer'), 
(@RELAYID+29, 1000, 1, 36, 0, 0, 0, 18855, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - face Sunfury Magister'), 
(@RELAYID+29, 1000, 2, 1, 3, 0, 0, 18855, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Emote OneShotWave'), 
(@RELAYID+29, 3000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - Emote OneShotExclamation'), 
(@RELAYID+29, 4000, 0, 1, 6, 0, 0, 18855, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - Emote OneShotQuestion'), 
(@RELAYID+29, 6000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - Emote OneShotTalk'), 
(@RELAYID+29, 7000, 0, 36, 1, 0, 0, 18855, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Magister - reset facing'), 
(@RELAYID+29, 10000, 0, 35, 6, 0, 0, 18855, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - SendAIEventB to Sunfury Magister'), -- to change magister phase to 1
(@RELAYID+29, 10000, 1, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - start waypoint'),
(@RELAYID+29, 10000, 3, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - remove Active object'), 
-- Sunfury Geologist
(@RELAYID+30, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Geologist - Set ActiveObject'), 
(@RELAYID+30, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Geologist - EmoteState none'), 
(@RELAYID+30, 1000, 2, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Geologist - StandState Knee'), 
(@RELAYID+30, 4000, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Geologist - Emote OneShotQuestion'), 
(@RELAYID+30, 7000, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Geologist - StandState stand'), 
(@RELAYID+30, 11000, 0, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Geologist - EmoteState WorkMining'), 
(@RELAYID+30, 11000, 1, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Geologist - Set ActiveObject');

-- Delete some old unused waypoint scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1887901, 1887902, 1887903, 1888301, 1945301, 1956901, 1956902, 1956903, 1956904, 1963501, 1963502, 1963503, 1964301, 2020301);
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
-- Sunfury Captain RP script
(1945301, 0, 0, 45, 0, 18004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Captain - Start RandomScript'),
-- Netherologist Coppernickels
-- Timer for how long he stays depens on how long he uses emote "STATE_USESTANDING_NOSHEATHE" this can vary between 15 and 30 seconds
-- using hardcoded 25 seconds for now.
(1956901, 5000, 0, 1, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Netherologist Coppernickels - Emote UseStanding'), 
(1956901, 30000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Netherologist Coppernickels - Emote None'), 
(1956901, 32000, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Netherologist Coppernickels - Emote OneShotExclamation'), 
(1956901, 32000, 1, 0, @RELAYID+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Netherologist Coppernickels - random text'),
-- Captain Arathyn intro 3 texts
(1963501, 1000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Emote Talk'), 
(1963501, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 17179, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Say Text'), 
(1963501, 4000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Emote Talk'), 
(1963501, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 17180, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Say Text'), 
(1963501, 7000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Emote Talk'), 
(1963501, 7000, 1, 0, 0, 0, 0, 0, 0, 0, 17181, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Say Text'), 
-- Captain Arathyn mount up
(1963502, 0, 0, 24, 18697, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Set Mount'), 
-- SendAiEventA to change Phase to 1
(1963502, 0, 1, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - SendAIEventA to self'), 
(1963502, 3000, 0, 20, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Change Movemen to Path 1'),
-- Captain Arathyn StartScript
(1963503, 0, 0, 45, 0, 18004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Captain Arathyn - Start RandomScript'),
-- Sunfury Astromancer RP Script
(1964301, 0, 0, 45, 0, 18010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Sunfury Astromancer - Start RandomScript');

DELETE FROM dbscripts_on_spell WHERE id IN (34814);
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Spell get used on a 7-10 minute OOC Timer by Phase Hunter and should despawn creature.
(34814, 1000, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'De-Materializ - Despawn Caster'); 

-- Movement Corrections
-- Disembodied Exarch
-- WalkSpeed: 2.5 
-- RunSpeed: 8
-- Before SpeedWalk 1,125 SpeedRun 1,14286
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry = 21058;

-- Sunfury Astromancer
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry = 19643;