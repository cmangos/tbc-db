-- ----------------
-- Netherstorm 
-- Sout East Island with Area 52 
-- ---------------


-- Bridge from Blade's Edge to netherstorm
-- Spawns
-- Also reguid them into tbc range
SET @CGUID := 5306100; -- creatures
SET @SGGUID := 5306000; -- spawn_groups
 
DELETE FROM creature WHERE guid IN (67516, 67517, 67518, 67519, 67520, 67521, 67522, 67523, 67524, 67525, 67526, 67527, 67528, 67529, 67530, 67531, 67532, 67533, 67534, 67535, 67536, 67537, 67538, 67539, 67540, 67541, 67542, 67543, 67544, 67545, 67546, 67547, 67548, 67549, 67550, 67551, 67552, 67553, 67554, 67555, 67556, 67557, 67615, 67616, 67617, 67618, 67619, 67620, 67621, 67622, 67623, 67624, 67675, 67732, 
70008, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819, 71839, 71840, 71846, 73962, 73963, 73964, 73965, 1002671);
DELETE FROM creature WHERE guid BETWEEN @CGUID+1 AND @CGUID+65;
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
-- ToDO: this npc should rnd switch between standstate 0 (stand) 1 (sit) and 3 (sleep) also should use STATE_USESTANDING_NOSHEATHE at some point will add later
(@CGUID+53, 0, 530, 1, 3449.43, 3702.6, 147.646, 3.78736, 300, 360, 0, 0), -- spawn_group_entry old guid 67541
-- prob same as above - todo..
(@CGUID+54, 18872, 530, 1, 3424.25, 3661.14, 153.203, 4.46804, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67537--  
(@CGUID+55, 18873, 530, 1, 3369.44, 3661.99, 143.635, 4.01426, 300, 360, 0, 0), -- Disembodied Protector old guid 67554
-- Npc before bridge
(@CGUID+56, 18872, 530, 1, 3455.16, 3675.74, 150.064, 0.39114, 300, 360, 14, 1), -- Disembodied Vindicator old guid 67521
-- Exarch patroling from left under the bridge
(@CGUID+57, 21058, 530, 1, 3493.2, 3717.37, 139.938, 5.39578, 300, 360, 0, 4), -- Disembodied Exarch old guid 73964
-- NPC patroling on the bridge
(@CGUID+58, 18872, 530, 1, 3468.76, 3646.23, 154.458, 5.42845, 300, 360, 0, 2), -- Disembodied Vindicator old guid 67522
-- Random movement under bridge
(@CGUID+59, 18872, 530, 1, 3458.56, 3627.43, 140.747, 1.7571, 300, 360, 15, 1), -- Disembodied Vindicator old guid 67523
-- Crater from the bridge right
(@CGUID+60, 0, 530, 1, 3432.5, 3591.81, 144.274, 2.11479, 300, 360, 10, 1), -- spawn_group_entry old guid 67549
-- npc with rnd emote/standstate
(@CGUID+61, 18872, 530, 1, 3412.48, 3609.1, 140.999, 0.785398, 300, 360, 0, 0), -- Disembodied Vindicator old guid 67535
-- 4 npcs outside right from entrace
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
(@CGUID+81, 21058, 530, 1, 3364.54, 3471.53, 140.913, 4.92918, 300, 360, 0, 4); -- Disembodied Exarch old guid 73965

DELETE FROM creature_addon WHERE guid IN (67527, 67530, 67533, 67537, 67540, 67545, 67550, 67541, 70008, 71807, 71808, 71809, 71810, 71811, 71812, 71813, 71814, 71815, 71816, 71817, 71818, 71819);
--  
DELETE FROM creature_addon WHERE guid IN (@CGUID+75, @CGUID+76, @CGUID+77);
INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+75, 0, 8, 0, 0, 0, NULL), -- Disembodied Vindicator
(@CGUID+76, 0, 8, 0, 0, 0, NULL), -- Disembodied Vindicator
(@CGUID+77, 0, 8, 0, 0, 0, NULL); -- Disembodied Protector

-- Waypoints
DELETE FROM creature_movement WHERE id IN (67522, 67675, 71811, 71814, 73962, 73963, 73964, 73965, 1002671);
DELETE FROM creature_movement WHERE Id BETWEEN @CGUID+1 AND @CGUID+67;
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
(@CGUID+81, 16, 3438.059,3555.1382,144.4512, 100, 0, 0);

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
-- Currently spawngroup is only used to get npcs into dynguid
DELETE FROM spawn_group WHERE Id BETWEEN @SGGUID AND @SGGUID+27;
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
-- Grouping for Etherlithium Matrix Crystal - 29 spawns, max spawned 21
(@SGGUID+100, 'Netherstorm - Etherlithium Matrix Crystal', 1, 21, 0, 0, 0);

DELETE FROM spawn_group_entry WHERE Id BETWEEN @SGGUID AND @SGGUID+36;
INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGGUID+7, 18872, 0, 0, 0), (@SGGUID+7, 18873, 0, 0, 0); -- Disembodied Vindicator/Disembodied Protector


DELETE FROM spawn_group_spawn WHERE Id BETWEEN @SGGUID AND @SGGUID+38;
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

(@SGGUID+2, @CGUID+17, -1, 0), -- Nether Ray
(@SGGUID+2, @CGUID+30, -1, 0), -- Nether Ray

(@SGGUID+3, @CGUID+18, -1, 0), -- Mana Snapper

(@SGGUID+4, @CGUID+23, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+28, -1, 0), -- Shaleskin Flayer
(@SGGUID+4, @CGUID+29, -1, 0), -- Shaleskin Flayer
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

-- Scripts
SET @RELAYID := 18000;
DELETE FROM dbscript_random_templates WHERE id BETWEEN @RELAYID+1 AND @RELAYID+3;
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
(@RELAYID+3, 1, @RELAYID+10, 0, 'Netherstorm - Disembodied Vindicator/Disembodied Protector - StandState Kneel (8)');


DELETE FROM dbscripts_on_relay WHERE id BETWEEN @RELAYID+1 AND @RELAYID+11;
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
(@RELAYID+11, 3000, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Netherstorm - Disembodied Exarch - Unpause Waypoints');

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



-- Movement Corrections

-- Disembodied Exarch
-- WalkSpeed: 2.5 
-- RunSpeed: 8
-- Before SpeedWalk 1,125 SpeedRun 1,14286
UPDATE creature_template SET SpeedWalk = 2.5/2.5, SpeedRun = 8/7 WHERE entry = 21058;