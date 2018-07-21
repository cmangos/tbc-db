-- Unkor the Ruthless 18262
UPDATE `creature` SET `spawntimesecsmin`= 120 WHERE `id` = 18262; -- 300

-- Kor'kron Defender 19362
-- http://www.wowhead.com/npc=19362/korkron-defender#screenshots:id=23044
DELETE FROM `creature_equip_template` WHERE `entry` IN (50010,50011,50012,50013);
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(50010, 30178, 0, 2507), -- Monster - Axe, 2H Kor'kron Defender (A01 Purple) & Laminated Recurve Bow
(50011, 30179, 0, 2507), -- Monster - Mace, 2H Kor'kron Defender (PvP Red)
(50012, 30180, 30180, 2507), -- Monster - Axe, 1H Kor'kron Defender (D02 Wolf) & Monster - Axe, 1H Kor'kron Defender (D02 Wolf) & Laminated Recurve Bow
(50013, 30181, 21549, 2507); -- Monster - Sword, 1H Kor'kron Defender (PvP Horde 2H) & Monster - Shield, Shieldguard & Laminated Recurve Bow

UPDATE `creature` SET `position_x` = -3031.155, `position_y` = 2578.242, `position_z` = 78.53941, `equipment_id` = 50013 WHERE `guid` = 78928 AND `id` = 19362;
UPDATE `creature` SET `position_x` = -3080.222, `position_y` = 2527.064, `position_z` = 62.56759, `equipment_id` = 50011 WHERE `guid` = 69083 AND `id` = 19362;
UPDATE `creature` SET `position_x` = -3074.148, `position_y` = 2512.508, `position_z` = 62.35324, `equipment_id` = 50011 WHERE `guid` = 69086 AND `id` = 19362;
UPDATE `creature` SET `position_x` = -3057.78, `position_y` = 2492.28, `position_z` = 64.88373, `equipment_id` = 50013 WHERE `guid` = 69088 AND `id` = 19362;
UPDATE `creature` SET `position_x` = -3064.972, `position_y` = 2494.325, `position_z` = 64.92785, `equipment_id` = 50010 WHERE `guid` = 69089 AND `id` = 19362;
UPDATE `creature` SET `position_x` = -3104.119, `position_y` = 2563.8, `position_z` = 62.03776, `equipment_id` = 50011 WHERE `guid` = 69090 AND `id` = 19362;
UPDATE `creature` SET `position_x` = -2933.577, `position_y` = 2651.601, `position_z` = 93.76282, `equipment_id` = 50012 WHERE `guid` = 69076 AND `id` = 19362;
UPDATE `creature` SET `position_x` = -2926.357, `position_y` = 2644.332, `position_z` = 93.7471, `equipment_id` = 50011 WHERE `guid` = 69080 AND `id` = 19362;

-- Elemental Plateau
UPDATE `creature` SET `spawntimesecsmin` = 120, `spawndist` = 5,`MovementType` = 1 WHERE `id` IN (22309,22310,22311,22313) AND `MovementType` != 2;
UPDATE `creature` SET `position_x` = -747.0309, `position_y` = 6482.555, `position_z` = 176.5395 WHERE `guid` = 78457;
UPDATE `creature` SET `position_x` = -790.2918, `position_y` = 6447.949, `position_z` = 175.5808 WHERE `guid` = 78458;
UPDATE `creature` SET `position_x` = -734.316, `position_y` = 6414.89, `position_z` = 171.553 WHERE `guid` = 78459;
UPDATE `creature` SET `position_x` = -813.5235, `position_y` = 6614.366, `position_z` = 173.9387 WHERE `guid` = 78466;
UPDATE `creature` SET `position_x` = -794.4229, `position_y` = 6581.7529, `position_z` = 171.3957 WHERE `guid` = 78474;
UPDATE `creature` SET `position_x` = -681.3148, `position_y` = 6546.162, `position_z` = 171.8144 WHERE `guid` = 78473;
UPDATE `creature` SET `position_x` = -749.2985, `position_y` = 6552.104, `position_z` = 171.1658 WHERE `guid` = 78471;
UPDATE `creature` SET `position_x` = -720.0371, `position_y` = 6652.92, `position_z` = 175.9216 WHERE `guid` = 78485;

DELETE FROM `creature` WHERE `guid` IN (191053,191054,191055,191056,191057,191058,191059,191060,191061,191062,191063,191064);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `DeathState`, `MovementType`) VALUES
(191053, 22310, 530, 1, 0, 0, -888.9813, 6387.451, 199.1625, 0.03826381, 120, 300, 5, 0, 0, 1),
(191054, 22310, 530, 1, 0, 0, -686.5285, 6346.019, 173.1416, 5.775352, 120, 300, 5, 0, 0, 1),
(191055, 22310, 530, 1, 0, 0, -677.9453, 6486.357, 171.7513, 3.317636, 120, 300, 5, 0, 0, 1),
(191056, 22310, 530, 1, 0, 0, -819.0568, 6413.153, 172.1511, 4.210447, 120, 300, 5, 0, 0, 1),
(191057, 22310, 530, 1, 0, 0, -722.9689, 6390.33, 171.6564, 1.674127, 120, 300, 5, 0, 0, 1),
(191058, 22311, 530, 1, 0, 0, -850.5703, 6517.231, 172.6494, 2.170036, 120, 300, 5, 0, 0, 1),
(191059, 22311, 530, 1, 0, 0, -842.3679, 6578.129, 172.6779, 6.160708, 120, 300, 5, 0, 0, 1),
(191060, 22311, 530, 1, 0, 0, -814.4639, 6552.918, 170.5836, 0.6861113, 120, 300, 5, 0, 0, 1),
(191061, 22311, 530, 1, 0, 0, -685.4573, 6608.952, 176.5589, 4.04063, 120, 300, 5, 0, 0, 1),
(191062, 22311, 530, 1, 0, 0, -652.9046, 6576.908, 170.4305, 4.243994, 120, 300, 5, 0, 0, 1),
(191063, 22311, 530, 1, 0, 0, -656.6922, 6512.662, 171.6395, 1.437974, 120, 300, 5, 0, 0, 1),
(191064, 22309, 530, 1, 0, 0, -586.4758, 6817.955, 141.7362, 5.527845, 120, 300, 5, 0, 0, 1);

-- Delete Kokorek - Beta Npc
DELETE FROM `creature` WHERE `guid` = 85527 AND `id` = 18448;

-- Menethil Harbour NPCs
-- Updates for NPCs with random movement
UPDATE `creature` SET `spawndist`=4, `MovementType`=1 WHERE `guid`=9453;
UPDATE `creature` SET `spawndist`=2, `MovementType`=1 WHERE `guid`=9464;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `guid`=9504;
UPDATE `creature` SET `spawndist`=1, `MovementType`=1 WHERE `guid`=9527;
UPDATE `creature` SET `spawndist`=2, `MovementType`=1 WHERE `guid`=9528;
UPDATE `creature` SET `spawndist`=3, `MovementType`=1 WHERE `guid`=9554;
UPDATE `creature` SET `spawndist`=4, `MovementType`=1 WHERE `guid`=9555;
UPDATE `creature` SET `spawndist`=3, `MovementType`=1 WHERE `guid`=9561;
UPDATE `creature` SET `spawndist`=3, `MovementType`=1 WHERE `guid`=9562;
UPDATE `creature` SET `spawndist`=2, `MovementType`=1 WHERE `guid`=9697;
UPDATE `creature` SET `position_x`=-3667.17, `position_y`=-884.368, `position_z`=9.95435, `orientation`=0.6876, `spawndist`=4, `MovementType`=1 WHERE `guid`=9454;
UPDATE `creature` SET `position_x`=-3646.95, `position_y`=-835.279, `position_z`=9.65445, `orientation`=5.7590 WHERE `guid`=9456;

-- Updates for NPCs with Waypoints
UPDATE `creature` SET `position_x`=-3793.04, `position_y`=-862.698, `position_z`=11.5974, `orientation`=2.2355, `MovementType`=2 WHERE `guid`=9461 AND `id` = 1441; -- Brak Durnad ID 1441
UPDATE `creature` SET `position_x`=-3767.47, `position_y`=-778.853, `position_z`=8.91371, `orientation`=5.1637, `MovementType`=2 WHERE `guid`=9475 AND `id` = 1481; -- Bart Tidewater ID 1481
UPDATE `creature` SET `position_x`=-3602.91, `position_y`=-711.051, `position_z`=6.48002, `orientation`=6.1372, `MovementType`=2 WHERE `guid`=9695 AND `id` = 1434; -- Menethil Sentry GUID 9695
UPDATE `creature` SET `position_x`=-3822.19, `position_y`=-767.092, `position_z`=10.0241, `orientation`=3.24575, `MovementType`=2 WHERE `guid`=9514 AND `id` = 1434; -- Menethil Sentry GUID 9514
UPDATE `creature` SET `position_x`=-3797.76, `position_y`=-866.926, `position_z`=11.5981, `orientation`=3.216594, `MovementType`=2 WHERE `guid`=9522 AND `id` = 1450; -- Brahnmar ID 1450
UPDATE `creature` SET `position_x`=-3776.6, `position_y`=-797.833, `position_z`=8.69004, `orientation`=2.882, `MovementType`=2 WHERE `guid`=9525 AND `id` = 1451; -- Camerick Jougleur ID 1451
UPDATE `creature` SET `position_x`=-3730.16, `position_y`=-807.502, `position_z`=20.3016, `orientation`=4.23419, `MovementType`=2 WHERE `guid`=9557 AND `id` = 1434; -- Menethil Sentry GUID 9514
UPDATE `creature` SET `position_x`=-3758.33, `position_y`=-855.729, `position_z`=10.0241, `orientation`=4.46419, `MovementType`=2 WHERE `guid`=9563 AND `id` = 1459; -- Naela Trance ID 1459
UPDATE `creature` SET `position_x`=-3743.22, `position_y`=-797.57, `position_z`=11.4796, `orientation`=2.64953, `MovementType`=2 WHERE `guid`=9570 AND `id` = 1483; -- Murphy West ID 1483
UPDATE `creature` SET `position_x`=-3713.02, `position_y`=-735.669, `position_z`=10.9144, `orientation`=2.64953, `MovementType`=2 WHERE `guid`=9696 AND `id` = 1434; -- Menethil Sentry GUID 9696
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=9468 AND `id` = 1437; -- Thomas Booker ID 1437

DELETE FROM `creature_movement_template` WHERE `entry` IN (1441,1481,1450,1451,1459,1483,1437);
INSERT INTO `creature_movement_template` (`entry`, `point`, `pathId`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
-- Brak Durnad ID 1441
(1441, 1, 0, -3793.04, -862.698, 11.5974, 9000, 0, 100),
(1441, 2, 0, -3788.95, -868.414, 11.5929, 10000, 0, 100),
-- Bart Tidewater ID 1481
(1481, 1, 0, -3767.47, -778.853, 8.91371, 9000, 0, 100),
(1481, 2, 0, -3766.09, -775.896, 8.82388, 0, 0, 100),
(1481, 3, 0, -3767.08, -765.029, 8.01714, 0, 0, 100),
(1481, 4, 0, -3765.77, -753.063, 7.872, 0, 0, 100),
(1481, 5, 0, -3753.29, -746.688, 7.9276, 0, 0, 100),
(1481, 6, 0, -3743.20, -746.79, 8.49915, 60000, 148101, 0), -- movement should switch to random for 60 sec spawndist 4
(1481, 1, 1, -3763.94, -751.883, 7.873, 0, 0, 100),
(1481, 2, 1, -3767.2, -749.197, 7.99052, 0, 0, 100),
(1481, 3, 1, -3769.32, -745.156, 8.00674, 0, 0, 100),
(1481, 4, 1, -3760.97, -735.759, 8.03362, 0, 0, 100),
(1481, 5, 1, -3739.74, -721.4, 8.34226, 0, 0, 100),
(1481, 6, 1, -3733.03, -717.09, 8.31754, 0, 0, 100),
(1481, 7, 1, -3736.66, -717.01, 8.32097, 60000, 148102, 0), -- movement should switch to random for 60 sec spawndist 4
(1481, 1, 2, -3767.1, -737.135, 8.04506, 0, 0, 100),
(1481, 2, 2, -3782.87, -746.452, 8.03465, 0, 0, 100),
(1481, 3, 2, -3797.23, -755.576, 8.03365, 60000, 148103, 0), -- movement should switch to random for 60 sec spawndist 4
(1481, 1, 3, -3783.72, -763.875, 7.60233, 0, 0, 100),
(1481, 2, 3, -3779.46, -761.803, 7.65703, 0, 0, 100),
(1481, 3, 3, -3771.77, -768.995, 8.02206, 0, 148104, 100),
-- Brahnmar ID 1450
(1450, 1, 0, -3797.76, -866.926, 11.5981, 7000, 0, 100),
(1450, 2, 0, -3795.23, -863.794, 11.598, 10000, 0, 100),
-- Camerick Jougleur ID 1451
(1451, 1, 0, -3776.6, -797.833, 8.69004, 29000, 0, 100),
(1451, 2, 0, -3778.79, -800.852, 8.57007, 0, 0, 100),
(1451, 3, 0, -3778.43, -807.106, 8.86214, 0, 0, 100),
(1451, 4, 0, -3775.92, -808.031, 9.76186, 0, 0, 100),
(1451, 5, 0, -3775.25, -806.261, 9.89661, 12000, 0, 100),
(1451, 6, 0, -3772.94, -807.634, 10.4204, 0, 0, 100),
(1451, 7, 0, -3770.64, -805.001, 10.3747, 0, 0, 100),
(1451, 8, 0, -3768.57, -799.271, 9.746, 0, 0, 100),
(1451, 9, 0, -3772.09, -796.733, 9.22766, 13000, 1025, 100), -- Script 466 emote point.
(1451, 10, 0, -3770.23, -794.62, 9.36567, 0, 0, 100),
(1451, 11, 0, -3772.34, -792.51, 8.97663, 0, 0, 100),
(1451, 12, 0, -3774.92, -791.916, 8.61633, 0, 0, 100),
(1451, 13, 0, -3776.59, -793.099, 8.51261, 0, 0, 100),
(1451, 14, 0, -3775.36, -798.295, 8.85547, 0, 0, 100),
-- Naela Trance ID 1459
(1459, 1, 0, -3758.33, -855.729, 10.0241, 8000, 0, 100),
(1459, 2, 0, -3757.78, -855.045, 9.90017, 1000, 0, 100),
(1459, 3, 0, -3755.05, -857.688, 9.90017, 0, 0, 100),
(1459, 4, 0, -3750.88, -854.487, 10.3368, 0, 0, 100),
(1459, 5, 0, -3751.38, -853.43, 10.3055, 9000, 0, 100),
(1459, 6, 0, -3754.08, -857.361, 9.89969, 0, 0, 100),
(1459, 7, 0, -3757.78, -855.045, 9.90017, 0, 0, 100),
-- Murphy West ID 1483
(1483, 1, 0, -3743.22, -797.57, 11.4796, 45000, 0, 100),
(1483, 2, 0, -3743.28, -798.991, 11.4801, 0, 0, 100),
(1483, 3, 0, -3728.19, -806.318, 11.4801, 0, 0, 100),
(1483, 4, 0, -3723.09, -795.092, 11.4801, 0, 0, 100),
(1483, 5, 0, -3726.25, -793.331, 11.4798, 0, 0, 100),
(1483, 6, 0, -3737.96, -786.927, 4.68735, 0, 0, 100),
(1483, 7, 0, -3739.68, -792.001, 4.32461, 0, 0, 100),
(1483, 8, 0, -3738, -799.006, 4.32461, 60000, 148301, 100), -- movement should switch to random for 60 sec spawndist 4
(1483, 1, 1, -3739.68, -792.001, 4.32461, 0, 0, 100),
(1483, 2, 1, -3737.96, -786.927, 4.68735, 0, 0, 100),
(1483, 3, 1, -3726.25, -793.331, 11.4798, 0, 0, 100),
(1483, 4, 1, -3723.09, -795.092, 11.4801, 0, 0, 100),
(1483, 5, 1, -3728.19, -806.318, 11.4801, 0, 148302, 100),
-- Thomas Booker ID 1437(9468) and horse 9469
(1437, 1, 0, -3644.88, -754.938, 9.86772, 3000, 0, 100),
(1437, 2, 0, -3651.28, -755.471, 9.88141, 0, 0, 100),
(1437, 3, 0, -3654.63, -751.725, 9.87952, 0, 0, 100),
(1437, 4, 0, -3655.63, -745.931, 9.85159, 0, 0, 100),
(1437, 5, 0, -3651.79, -737.735, 9.83451, 0, 0, 100),
(1437, 6, 0, -3648.7, -734.25, 9.98569, 0, 0, 100),
(1437, 7, 0, -3638.53, -739.414, 9.77649, 0, 0, 100);

DELETE FROM `creature_linking` WHERE `master_guid`=9468;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(9469, 9468, 512);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (148101,148102,148103,148104,148301,148302);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(148101, 0, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater -  Set MovementType 1 and Spawndist 4'),
(148101, 60, 20, 2, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater - Set MovementType 2 and pathId 1'),
(148102, 0, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater -  Set MovementType 1 and Spawndist 4'),
(148102, 60, 20, 2, 2, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater - Set MovementType 2 and pathId 2'),
(148103, 0, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater -  Set MovementType 1 and Spawndist 4'),
(148103, 60, 20, 2, 3, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater - Set MovementType 2 and pathId 3'),
(148104, 0, 20, 2, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Bart Tidewater - Set MovementType 2 and pathId 0'),
(148301, 0, 20, 1, 4, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Murphy West -  Set MovementType 1 and Spawndist 4'),
(148301, 60, 20, 2, 1, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Murphy West - Set MovementType 2 and pathId 1'),
(148302, 0, 20, 2, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Murphy West - Set MovementType 2 and pathId 0');

UPDATE `creature_movement_template` SET `comment` = 'Bart Tidewater -  Set MovementType 1 and Spawndist 4 and Set MovementType 2 and pathId 1' WHERE `script_id` = 148101;
UPDATE `creature_movement_template` SET `comment` = 'Bart Tidewater -  Set MovementType 1 and Spawndist 4 and Set MovementType 2 and pathId 2' WHERE `script_id` = 148102;
UPDATE `creature_movement_template` SET `comment` = 'Bart Tidewater -  Set MovementType 1 and Spawndist 4 and Set MovementType 2 and pathId 3' WHERE `script_id` = 148103;
UPDATE `creature_movement_template` SET `comment` = 'Bart Tidewater -  Set MovementType 2 and pathId 0' WHERE `script_id` = 148104;
UPDATE `creature_movement_template` SET `comment` = 'GENERIC EMOTE - ONESHOT_POINT' WHERE `script_id` = 1025;
UPDATE `creature_movement_template` SET `comment` = 'Murphy West -  Set MovementType 1 and Spawndist 4 and Set MovementType 2 and pathId 1' WHERE `script_id` = 148301;
UPDATE `creature_movement_template` SET `comment` = 'Murphy West - Set MovementType 2 and pathId 0' WHERE `script_id` = 148302;

DELETE FROM `creature_movement` WHERE `id` IN(9514,9557,9695,9696);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
-- Menethil Sentry GUID 9514
(9514, 1, -3822.19, -767.092, 8.06787, 0, 0, 100),
(9514, 2, -3831.28, -776.409, 8.05275, 0, 0, 100),
(9514, 3, -3833.04, -777.78, 6.23465, 0, 0, 100),
(9514, 4, -3838.14, -778.421, 4.5457, 0, 0, 100),
(9514, 5, -3833.87, -805.345, 9.64904, 0, 0, 100),
(9514, 6, -3856.37, -822.15, 8.59936, 0, 0, 100),
(9514, 7, -3856.07, -831.333, 9.17249, 1000, 0, 100),
(9514, 8, -3856.37, -822.15, 8.59936, 0, 0, 100),
(9514, 9, -3833.87, -805.345, 9.64904, 0, 0, 100),
(9514, 10, -3838.14, -778.421, 4.5457, 0, 0, 100),
(9514, 11, -3833.04, -777.78, 6.23465, 0, 0, 100),
(9514, 12, -3831.28, -776.409, 8.05275, 0, 0, 100),
(9514, 13, -3822.19, -767.092, 8.06787, 0, 0, 100),
(9514, 14, -3806.91, -765.37, 8.0228, 1000, 0, 100),
-- Menethil Sentry GUID 9557
(9557, 1, -3730.16, -807.502, 20.3016, 0, 0, 100),
(9557, 2, -3723.6, -795.39, 20.3016, 0, 0, 100),
(9557, 3, -3727.46, -792.542, 20.1036, 0, 0, 100),
(9557, 4, -3733.06, -789.129, 15.4086, 0, 0, 100),
(9557, 5, -3736.24, -787.182, 15.4086, 0, 0, 100),
(9557, 6, -3738.61, -790.885, 15.1369, 0, 0, 100),
(9557, 7, -3741.1, -794.995, 11.4798, 0, 0, 100),
(9557, 8, -3743.26, -798.874, 11.4798, 0, 0, 100),
(9557, 9, -3741.1, -794.995, 11.4798, 0, 0, 100),
(9557, 10, -3738.61, -790.885, 15.1369, 0, 0, 100),
(9557, 11, -3736.24, -787.182, 15.4086, 0, 0, 100),
(9557, 12, -3733.06, -789.129, 15.4086, 0, 0, 100),
(9557, 13, -3727.46, -792.542, 20.1036, 0, 0, 100),
(9557, 14, -3723.6, -795.39, 20.3016, 0, 0, 100),
-- Menethil Sentry GUID 9695
(9695, 1, -3602.91, -711.051, 6.48002, 0, 0, 100),
(9695, 2, -3613.58, -706.494, 8.29125, 0, 0, 100),
(9695, 3, -3620.7, -710.571, 9.53107, 0, 0, 100),
(9695, 4, -3626.76, -710.311, 9.59993, 0, 0, 100),
(9695, 5, -3627.08, -714.309, 9.88046, 0, 0, 100),
(9695, 6, -3627.75, -723.77, 10.5426, 1000, 0, 100),
(9695, 7, -3627.08, -714.309, 9.88046, 0, 0, 100),
(9695, 8, -3626.76, -710.311, 9.59993, 0, 0, 100),
(9695, 9, -3620.7, -710.571, 9.53107, 0, 0, 100),
(9695, 10, -3613.58, -706.494, 8.29125, 0, 0, 100),
(9695, 11, -3602.91, -711.051, 6.48002, 0, 0, 100),
(9695, 12, -3622.45, -698.266, 6.27468, 0, 0, 100),
(9695, 13, -3645.15, -694.848, 5.30492, 1000, 0, 100),
(9695, 14, -3621.2, -699.579, 6.92538, 0, 0, 100),
-- Menethil Sentry GUID 9696
(9696, 1, -3713.02, -735.669, 10.9144, 0, 0, 100),
(9696, 2, -3719.48, -737.253, 11.0237, 0, 0, 100),
(9696, 3, -3712.89, -721.908, 9.86457, 0, 0, 100),
(9696, 4, -3710.79, -719.43, 9.70997, 0, 0, 100),
(9696, 5, -3710.14, -714.073, 10.0695, 0, 0, 100),
(9696, 6, -3708.34, -711.863, 8.7437, 0, 0, 100),
(9696, 7, -3689.72, -695.789, 5.30313, 1000, 0, 100),
(9696, 8, -3708.34, -711.863, 8.7437, 0, 0, 100),
(9696, 9, -3710.14, -714.073, 10.0695, 0, 0, 100),
(9696, 10, -3710.79, -719.43, 9.70997, 0, 0, 100),
(9696, 11, -3712.89, -721.908, 9.86457, 0, 0, 100),
(9696, 12, -3719.48, -737.253, 11.0237, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` IN (191000,191001,191002,191003,191004);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(191000,20556, 530, 1, 0, 0, -4674.03, -12378.3, 11.3549, 6.09022, 720, 720, 0, 0, 850, 0, 0, 0),
(191001,20556, 530, 1, 0, 0, -4672.51, -12365.9, 11.802, 5.67396, 720, 720, 0, 0, 850, 0, 0, 0),
(191002,20556, 530, 1, 0, 0, -4759.18, -12436.5, 1.82251, 1.10294, 720, 720, 0, 0, 850, 0, 0, 0),
(191003,20556, 530, 1, 0, 0, -4792.01, -12396.4, 0.60731, 5.43442, 720, 720, 0, 0, 850, 0, 0, 0),
(191004,20556, 530, 1, 0, 0, -4777.11, -12458.5, 0.384845, 0.46677, 720, 720, 0, 0, 850, 0, 0, 0);

-- SW Druid trainer missing class quest http://www.wowhead.com/quest=5924/heeding-the-call
DELETE FROM `creature_questrelation` WHERE `quest` IN (5924,5925,5928);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(4219, 5924),
(5505, 5924),
(4218, 5925),
(16721, 5925),
(16655, 5928);

-- Apex Crumbler should be summoned while fighting with Apex http://www.wowhead.com/?npc=21328#comments
DELETE FROM creature WHERE id = 21328 AND guid = 74701;

-- offset
UPDATE creature SET position_x = 3732.81, position_y = 4810.64, position_z = 250.242, orientation = 3.94357 WHERE guid = 72651;
UPDATE creature SET position_x = 3482.38, position_y = 5011.42, position_z = 265.417, orientation = 4.52083 WHERE guid = 73675;
UPDATE creature SET position_x = 3505.39, position_y = 5008.35, position_z = 268.126, orientation = 4.21061 WHERE guid = 73673;
UPDATE creature SET position_x = -1640.27, position_y = 8327.07, position_z = -40.0108, orientation = 3.7281 WHERE guid = 60411;

DELETE FROM `creature` WHERE `guid` IN (191005, 191006);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(191005, 17103, 0, 1, 16854, 0, -8442.97, 325.454, 122.246, 1.93731, 180, 180, 0, 0, 2564, 2434, 0, 0), -- Emissary Taluun 17103 - guid 49590
(191006, 24729, 0, 1, 344, 0, -8407.823, 487.4189, 123.7598,  1.880859, 180, 180, 5, 0, 4050, 0, 0, 1); -- Alicia 24729 - guid 49591

-- Wild Fel Stalker
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `UnitFlags` = '64' WHERE `Entry`='18847';
UPDATE `creature_model_info` SET `bounding_radius` = 3.656032 WHERE `modelid` = 7972;

-- dublicate chairs
DELETE FROM `gameobject` WHERE `guid` IN (15184,15185,15186,15187,15188,15190,15191,15192,15193);
UPDATE `gameobject` SET `position_x`='-3012.455322', `position_y`='3965.02246', `position_z`='3.105790', `orientation`='1.4106' WHERE `guid` IN ('15183');

-- Raven Hill "Duskwood" Waypoint paths
UPDATE `creature` SET `position_x`=-10382.6, `position_y`=359.137, `position_z`=48.6547, `orientation`=2.87, MovementType=2 WHERE `guid`=5137;
UPDATE `creature` SET `position_x`=-10426.2, `position_y`=343.543, `position_z`=42.0242, `orientation`=1.657, MovementType=2 WHERE `guid`=5138;
DELETE FROM `creature_movement` WHERE `id` IN (5137,5138);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
-- Skeletal Raider GUID 5137 Path
(5137,1,-10382.6,359.137,48.6547,0,0,100),
(5137,2,-10396.6,362.309,45.7539,0,0,100),
(5137,3,-10405.8,349.167,44.0018,0,0,100),
(5137,4,-10407.4,324.846,41.3671,0,0,100),
(5137,5,-10410.6,311.263,39.3739,0,0,100),
(5137,6,-10453,285.726,36.1031,1000,0,100),
(5137,7,-10410.6,311.263,39.3739,0,0,100),
(5137,8,-10407.4,324.846,41.3671,0,0,100),
(5137,9,-10405.8,349.167,44.0018,0,0,100),
(5137,10,-10396.6,362.309,45.7539,0,0,100),
-- Skeletal Raider GUID 5138 Path
(5138,1,-10426.2,343.543,42.0242,1000,0,100),
(5138,2,-10428.5,328.338,41.4056,0,0,100),
(5138,3,-10433,320.714,41.2088,0,0,100),
(5138,4,-10433.5,314.481,40.3401,0,0,100),
(5138,5,-10446.2,326.655,40.4781,0,0,100),
(5138,6,-10453.9,359.494,41.1352,0,0,100),
(5138,7,-10446.2,326.655,40.4781,0,0,100),
(5138,8,-10433.5,314.481,40.3401,0,0,100),
(5138,9,-10433,320.714,41.2088,0,0,100),
(5138,10,-10428.5,328.338,41.4056,0,0,100);

-- Childrens Week Entry Quests dont Start without Childrens Week active
-- maybe more http://www.wowhead.com/childrens-week#quests

-- http://www.wowhead.com/npc=22819/orphan-matron-mercy
-- Children's Week - Blood Elf Orphan Whistle
UPDATE `quest_template` SET  `RequiredRaces` = 690 WHERE `entry` = 10942; -- Horde Player
-- Children's Week - Draenei Orphan Whistle
UPDATE `quest_template` SET  `RequiredRaces` = 1101 WHERE `entry` = 10943; -- Alliance Player

DELETE FROM `creature_questrelation` WHERE `quest` IN (172,558,925,1468,10942,10943);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(14451, 172),
(14305, 558),
(14444, 925),
(14450, 1468),
(22819, 10942),
(22819, 10943);

-- http://www.wowhead.com/quest=172/childrens-week npc=14451
-- http://www.wowhead.com/quest=558/jainas-autograph npc=14305
-- http://www.wowhead.com/quest=925/cairnes-hoofprint npc=14444
-- http://www.wowhead.com/quest=1468/childrens-week npc=14450
-- http://www.wowhead.com/quest=10942/childrens-week npc=22819
-- http://www.wowhead.com/quest=10943/childrens-week npc=22819
DELETE FROM `game_event_quest` WHERE `quest` IN (172,558,925,1468,10942,10943);
INSERT INTO `game_event_quest` (`quest`, `event`) VALUES
(172, 10),
(558, 10),
(925, 10),
(1468, 10),
(10942, 10),
(10943, 10);

-- fixing Sentinel Infiltrator(16333) respawn to 5 mins up from 2min
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id IN (16333);

-- 1512 duskbat movement increased
UPDATE `creature` SET `spawndist`=10,`MovementType`=1 WHERE `id`=1512 AND `MovementType` != 2;
-- 1509 ragged scavengers on bigger random
UPDATE `creature` SET `spawndist`=10,`MovementType`=1 WHERE `id`=1509 AND `MovementType` != 2;
-- 1513 mangy duskbats on bigger random
UPDATE `creature` SET `spawndist`=10,`MovementType`=1 WHERE `id`=1513 AND `MovementType` != 2;

-- set up wretched zombie on wp path and to charge to the guards
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=44808;
DELETE FROM `creature_movement` WHERE `id`=44808;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`, `script_id`, `orientation`) VALUES 
(44808, 1, 1922.09, 1548.48, 87.1417, 0, 0, 100),
(44808, 2, 1916.51, 1563.13, 86.3795, 0, 0, 100),
(44808, 3, 1931.5, 1559.04, 87.006, 0, 0, 100),
(44808, 4, 1936.0, 1557.74, 87.6393, 0, 0, 100),
(44808, 5, 1930.04, 1552.25, 87.8579, 0, 0, 100),
(44808, 6, 1925.3, 1551.31, 87.1472, 0, 0, 100),
(44808, 7, 1917.13, 1548.74, 86.9007, 0, 0, 100),
(44808, 8, 1920.98, 1561.15, 86.1384, 0, 0, 100),
(44808, 9, 1932.77, 1566.77, 84.1405, 0, 0, 100),
(44808, 10, 1949.08, 1574.19, 81.2356, 0, 0, 100),
(44808, 11, 1956.98, 1585.29, 81.2102, 0, 0, 100),
(44808, 12, 1951.91, 1593.34, 82.0238, 0, 0, 100),
(44808, 13, 1947.45, 1583.45, 80.9648, 0, 0, 100),
(44808, 14, 1936.29, 1574.2, 82.7512, 0, 0, 100),
(44808, 15, 1925.86, 1573.74, 84.1143, 0, 0, 100),
(44808, 16, 1926.94, 1580.69, 83.099, 0, 0, 100),
(44808, 17, 1919.99, 1585.89, 83.861, 1000, 0, 100),
(44808, 18, 1898.07, 1586.52, 87.3678, 3000, 0, 100),
(44808, 19, 1886.25, 1588.39, 89.2619, 0, 150201, 100),-- W.Ghuol - Faction change
(44808, 20, 1930.4, 1580.68, 82.7223, 0, 0, 100);

-- wp path for misc zombie (he is just blizzards eyecandy)
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=44818;
DELETE FROM `creature_movement` WHERE `id`=44818;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`, `script_id`, `orientation`) VALUES 
(44818, 1, 1917.28, 1532.13, 86.9054, 0, 6, 100),
(44818, 2, 1920.1, 1557.7, 86.4135, 0, 0, 100),
(44818, 3, 1926.93, 1573.8, 83.991, 0, 0, 100),
(44818, 4, 1929.87, 1573.85, 83.6135, 0, 0, 100),
(44818, 5, 1924.92, 1579.0, 83.4188, 0, 0, 100),
(44818, 6, 1931.67, 1595.07, 83.6037, 0, 0, 100),
(44818, 7, 1932.63, 1607.29, 82.7558, 0, 0, 100),
(44818, 8, 1930.97, 1591.35, 83.3431, 0, 0, 100),
(44818, 9, 1922.52, 1586.04, 83.5847, 0, 0, 100),
(44818, 10, 1931.54, 1581.75, 82.5486, 0, 5, 100),
(44818, 11, 1922.33, 1559.69, 86.201, 0, 0, 100); -- runs back to pt 1

-- should stand with ranged weapon equipped
DELETE FROM `creature_template_addon` WHERE `entry` = 25037;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(25037, 0, 0, 2, 16, 0, 0, NULL);

-- Remove auras where creatures have player pet auras
UPDATE `creature_template_addon` SET `auras`= '' WHERE `entry` IN (454, 728, 3862, 5427, 7456, 8960, 10200);

-- mines should not (move) & give no exp
UPDATE `creature_template` SET `ExtraFlags`=`ExtraFlags`|64 WHERE `entry` IN (7527, 8035, 15368, 22315);

UPDATE `creature` SET `position_x` = -8639.5185,`position_y` = 916.5325,`position_z` = 99.2430 WHERE `guid` = 53705 AND `id` = 7386;
DELETE FROM `creature_linking` WHERE `master_guid`=45501;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`) VALUES
(53705,45501,512);

-- Blazzle 28344
DELETE FROM `npc_vendor` WHERE `entry` = 28344;
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
(28344,18567),
(28344,3857),
(28344,3466),
(28344,2880),
(28344,2901),
(28344,5956);

-- Harvest Golem 36
-- http://wow.gamepedia.com/index.php?title=Harvest_Golem&oldid=1481283
UPDATE `creature_template` SET `MechanicImmuneMask`= 8407056 WHERE `entry` = 36;

-- Technician Halmaha
DELETE FROM `npc_vendor` WHERE `entry` = 27711;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(27711,10647,0,0,0),
(27711,4389,1,1800,0),
(27711,4382,1,1800,0),
(27711,3466,0,0,0),
(27711,4400,0,0,0),
(27711,4371,2,1800,0),
(27711,4404,3,1800,0),
(27711,4364,4,1800,0),
(27711,4361,2,1800,0),
(27711,4399,0,0,0),
(27711,2880,0,0,0),
(27711,4357,4,1800,0),
(27711,2901,0,0,0),
(27711,5956,0,0,0);

-- Horace Alder
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 27704;
UPDATE `creature_template` SET `TrainerClass` = 8, `NpcFlags` = 19, `TrainerTemplateId` = 71 WHERE `entry` = 27704;

-- loottable summoned voidwalkers no loot no gold
-- currently handled due to guardianai which in some cases is wrong
UPDATE `creature_template` SET `lootid`='0',`minlootgold`='0',`maxlootgold`='0' WHERE `entry` = 8996;
DELETE FROM `creature_loot_template` WHERE `entry` = 8996;

-- Silvermoon Civilian
UPDATE `creature_template` SET `ExtraFlags`=`ExtraFlags`|65536 WHERE `entry` IN (
18147, -- Silvermoon Ranger
18507 -- Silvermoon Farstrider
);

-- Flamewaker Imp & Heckling Fel Sprite Groups
UPDATE `creature` SET `position_x`='147.3844', `position_y`='2362.6159', `position_z`='54.6601', `orientation`='2.1028',`spawndist`='5',`movementtype`='1' WHERE `guid` IN ('68413');
UPDATE `creature` SET `spawndist`='5',`movementtype`='1' WHERE `guid` IN ('68217','68218');

-- Flamewaker Imp Grps
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68404;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68191, 68404, 3),
(68194, 68404, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68405;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68192, 68405, 3),
(68193, 68405, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68406;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68195, 68406, 3),
(68196, 68406, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68407;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68197, 68407, 3),
(68198, 68407, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68408;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68199, 68408, 3),
(68200, 68408, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68409;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68201, 68409, 3),
(68202, 68409, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68410;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68206, 68410, 3),
(68203, 68410, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68411;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68204, 68411, 3),
(68205, 68411, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68412;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68207, 68412, 3),
(68208, 68412, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68413;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68217, 68413, 3),
(68218, 68413, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68414;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68211, 68414, 3),
(68212, 68414, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68415;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68213, 68415, 3),
(68214, 68415, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68416;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68215, 68416, 3),
(68216, 68416, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68417;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68209, 68417, 3),
(68210, 68417, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68418;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68220, 68418, 3),
(68221, 68418, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68419;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68219, 68419, 3),
(68222, 68419, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68420;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68223, 68420, 3),
(68224, 68420, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68421;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68225, 68421, 3),
(68226, 68421, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68422;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68227, 68422, 3),
(68228, 68422, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68423;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68229, 68423, 3),
(68230, 68423, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68424;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68231, 68424, 3),
(68232, 68424, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68425;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68233, 68425, 3),
(68234, 68425, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68426;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68235, 68426, 3),
(68236, 68426, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68427;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68237, 68427, 3),
(68238, 68427, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68428;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68240, 68428, 3),
(68241, 68428, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68429;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68242, 68429, 3),
(68243, 68429, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68430;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68244, 68430, 3),
(68245, 68430, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68431;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68239, 68431, 3),
(68246, 68431, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68432;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68247, 68432, 3),
(68248, 68432, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68433;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68249, 68433, 3),
(68250, 68433, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68434;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68251, 68434, 3),
(68252, 68434, 3);
DELETE FROM `creature_linking` WHERE `creature_linking`.`master_guid` = 68435;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(68253, 68435, 3),
(68254, 68435, 3);

-- Interrogator Khan Hollogram 19152
UPDATE `creature_template` SET `Inhabittype`='4' WHERE `entry` = 19152;

-- Underbog Frenzy 20465,21943
UPDATE `creature_template` SET `UnitFlags`='32832' WHERE `entry` IN (20465,21943);
--
-- Underbat 17724,20185
UPDATE `creature_template` SET `UnitFlags`='64' WHERE `entry` IN (17724,20185);

-- Underbog Shambler 17871,20190
UPDATE `creature_template` SET `UnitFlags`='64' WHERE `entry` IN (17871,20190);

-- Underbog Lurker 17725,20188
UPDATE `creature_template` SET `UnitFlags`='64', `MeleeBaseAttackTime` = '2000' WHERE `entry` IN (17725,20188);

-- Bog Giant 17723,20164
UPDATE `creature_template` SET `UnitFlags`='64' WHERE `entry` IN (17723,20164);

-- dublicate falling under map
DELETE FROM `creature` WHERE `guid` = 54940;

-- Singularity 25855
UPDATE `creature_template` SET `Minlevel` = 70, `MaxLevel` = 70, `MinLevelHealth` = 4890, `MaxLevelHealth` = 4890, `SpeedWalk` = (5 / 2.5), `SpeedRun` = (5 / 7), `UnitFlags` = 33554432 WHERE `entry` = 25855;

UPDATE creature_template SET MeleeBaseAttackTime=2000 WHERE `entry` = 39623; -- Gnome Citizen (3.3.3)

-- Dual Wielding Naga Casters
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 18088;
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` IN (18044,18087,18088,19947,20089,20122);

-- 30568,30570
-- http://www.wowhead.com/npc=21474/coreiel ~30-45 maxcount 3
UPDATE `npc_vendor` SET `incrtime`='2700' WHERE `item` IN ('30568') AND `entry` IN ('21474'); -- 43200
UPDATE `npc_vendor` SET `incrtime`='2700' WHERE `item` IN ('30570') AND `entry` IN ('21474'); -- 43200
-- 30599,30597
-- http://www.wowhead.com/npc=21485/aldraan
UPDATE `npc_vendor` SET `incrtime`='2700' WHERE `item` IN ('30599') AND `entry` IN ('21485'); -- 43200
UPDATE `npc_vendor` SET `incrtime`='2700' WHERE `item` IN ('30597') AND `entry` IN ('21485'); -- 43200

-- Correct InhabitType for `creature_template` WHERE `name` LIKE '%Crocolisk%'
UPDATE `creature_template` SET `InhabitType`='3' WHERE `entry` IN ('3231','20026','20075','22163');

-- Correct Spirit Shard Drop
-- http://wowwiki.wikia.com/wiki/Spirit_Shard
-- Pandemonius 18341,20267
UPDATE `creature_loot_template` SET `mincountOrRef`='1', `maxcount`='1' WHERE `entry` IN (18341,20267) AND `item` = '28558';
-- Tavarok 18343,20268
UPDATE `creature_loot_template` SET `mincountOrRef`='1', `maxcount`='1' WHERE `entry` IN (18343,20268) AND `item` = '28558';
-- Nexus-Prince Shaffar 18344,20266
UPDATE `creature_loot_template` SET `mincountOrRef`='1', `maxcount`='1' WHERE `entry` IN (18344,20266) AND `item` = '28558';
-- Yor Void Hound of Shaffar 22930
UPDATE `creature_loot_template` SET `mincountOrRef`='1', `maxcount`='1' WHERE `entry` IN (22930) AND `item` = '28558';

-- Shirrak the Dead Watcher 18371,20318
UPDATE `creature_loot_template` SET `mincountOrRef`='1', `maxcount`='1' WHERE `entry` IN (18371,20318) AND `item` = '28558';
-- Exarch Maladaar 18373,20306
UPDATE `creature_loot_template` SET `mincountOrRef`='1', `maxcount`='1' WHERE `entry` IN (18373,20306) AND `item` = '28558';

-- Darkweaver Syth 18472,20690
UPDATE `creature_loot_template` SET `mincountOrRef`='2', `maxcount`='2' WHERE `entry` IN (18472,20690) AND `item` = '28558';
-- Anzu 23035
UPDATE `creature_loot_template` SET `mincountOrRef`='2', `maxcount`='2' WHERE `entry` IN (23035) AND `item` = '28558';
-- Talon King Ikiss 18473,20706
UPDATE `creature_loot_template` SET `mincountOrRef`='2', `maxcount`='2' WHERE `entry` IN (18473,20706) AND `item` = '28558';

-- Ambassador Hellmaw 18731,20636
UPDATE `creature_loot_template` SET `mincountOrRef`='2', `maxcount`='2' WHERE `entry` IN (18731,20636) AND `item` = '28558';
-- Blackheart the Inciter 18667,20637
UPDATE `creature_loot_template` SET `mincountOrRef`='2', `maxcount`='2' WHERE `entry` IN (18667,20637) AND `item` = '28558';
-- Grandmaster Vorpil 18732,20653
UPDATE `creature_loot_template` SET `mincountOrRef`='2', `maxcount`='2' WHERE `entry` IN (18732,20653) AND `item` = '28558';
-- Murmur 18708,20657
UPDATE `creature_loot_template` SET `mincountOrRef`='2', `maxcount`='2' WHERE `entry` IN (18708,20657) AND `item` = '28558';

-- Epoch Hunter 18096 & Keli'dan the Breaker 17377 & Exarch Maladaar 18373 & The Black Stalker 17882 & Quagmirran 17942 & Nexus-Prince Shaffar 18344 - Darkmoon Cards (Ace Cards) - Heroic Dungeon Bosses Only
DELETE FROM `creature_loot_template` WHERE `entry` IN (17377,17882,17942,18096,18344,18373) AND `item` = 49000;
-- Omor the Unscarred - Heroic 10 -> 2% Darkmoon Cards (Ace Cards)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 18433 AND `mincountOrRef` = -49000;

-- Sniff Movement for Entry 19163 Movement Shattrath  (4 minimum)

UPDATE `creature` SET `position_x` = -1847.189941,`position_y` = 5220.270020,`position_z` = -38.568794 WHERE `guid` = 68567 AND `id` = 19163;
DELETE FROM `creature_linking` WHERE `master_guid` = 68568;
INSERT INTO `creature_linking` VALUES (68567, 68568, 512);
SET @GUID := 68568; 
UPDATE `creature` SET `MovementType` = 2 WHERE guid = @GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`, `orientation`) VALUES
(@GUID,1,-1865.1380,5226.7050,-40.2091,0,5,100),
(@GUID,2,-1874.0732,5221.7236,-40.2091,0,0,100),
(@GUID,3,-1896.9624,5217.5102,-48.0995,0,0,100), 
(@GUID,4,-1936.0278,5217.9941,-47.2738,0,0,100),
(@GUID,5,-1957.4179,5253.1718,-42.4121,0,0,100),
(@GUID,6,-1959.2875,5257.5942,-38.8516,0,0,100),
(@GUID,7,-1962.2069,5268.2412,-38.8108,0,0,100),
(@GUID,8,-1972.4090,5266.1381,-38.8508,0,0,100),
(@GUID,9,-1975.5362,5261.1347,-41.9375,0,0,100),
(@GUID,10,-1973.3724,5214.8261,-47.7292,0,0,100),
(@GUID,11,-1968.0831,5190.0449,-40.2076,0,0,100),
(@GUID,12,-1945.9741,5171.5532,-40.2092,0,0,100),
(@GUID,13,-1905.5919,5176.2368,-40.2092,0,0,100),
(@GUID,14,-1868.4006,5174.7724,-50.0506,0,0,100),
(@GUID,15,-1825.6529,5168.1435,-48.9272,0,0,100),
(@GUID,16,-1798.4946,5181.3803,-41.8442,0,0,100),
(@GUID,17,-1777.8391,5215.7353,-49.1428,0,0,100),
(@GUID,18,-1759.4946,5243.5415,-40.8305,0,0,100),
(@GUID,19,-1750.2081,5258.2495,-40.2078,0,0,100),
(@GUID,20,-1772.9831,5264.2685,-38.8104,0,0,100), 
(@GUID,21,-1778.1439,5251.1411,-40.2091,0,0,100),
(@GUID,22,-1807.3149,5238.1420,-42.0734,0,0,100),
(@GUID,23,-1830.6756,5214.0410,-40.2093,0,0,100),
(@GUID,24,-1840.7662,5218.4252,-38.0447,0,0,100),
(@GUID,25,-1853.2336,5224.8989,-38.0447,0,0,100);

-- Origrimmar Flags
DELETE FROM `gameobject` WHERE `guid` BETWEEN 190322 AND 190325;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(190322,180394,1,1,1586.363281, -4411.131348, 7.637368,180,180,255,1),
(190323,180396,1,1,1586.363281, -4411.131348, 7.637368,180,180,255,1),
(190324,180395,1,1,1586.363281, -4411.131348, 7.637368,180,180,255,1),
(190325,185106,1,1,1586.363281, -4411.131348, 7.637368,180,180,255,1);

-- Orgrimmar Flags GameObject GameEvent Condition
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 190322 AND 190325;
INSERT INTO game_event_gameobject (`guid`, `event`) VALUES
(190322, 19),
(190323, 18),
(190324, 20),
(190325, 21);

-- Origrimmar NPC's
DELETE FROM `creature` WHERE `guid` BETWEEN 190584 AND 190591;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `MovementType`, `spawndist`) VALUES
(190584,14990,1,1,1587.792236, -4414.447754, 8.393807, 1.409748,300,300,0,0),
(190585,14990,1,1,1587.744751, -4408.309082, 7.011856, 4.728053,300,300,0,0),
(190586,22015,1,1,1587.792236, -4414.447754, 8.393807, 1.409748,300,300,0,0),
(190587,22015,1,1,1587.744751, -4408.309082, 7.011856, 4.728053,300,300,0,0),
(190588,15106,1,1,1587.792236, -4414.447754, 8.393807, 1.409748,120,300,0,0),
(190589,15106,1,1,1587.744751, -4408.309082, 7.011856, 4.728053,120,300,0,0),
(190590,15105,1,1,1587.792236, -4414.447754, 8.393807, 1.409748,300,300,0,0),
(190591,15105,1,1,1587.744751, -4408.309082, 7.011856, 4.728053,300,300,0,0);

-- Game Event creature Conditions
DELETE FROM `game_event_creature` WHERE `guid` BETWEEN 190584 AND 190591;
INSERT INTO game_event_creature (`guid`, `event`) VALUES
(190588, 18),
(190589, 18),
(190590, 19),
(190591, 19),
(190584, 20),
(190585, 20),
(190586, 21),
(190587, 21);

-- Searscale Drake 7046
-- https://www.youtube.com/watch?v=Dyt0uVFYv5s
UPDATE `creature_template` SET `Inhabittype`='3' WHERE `entry` = 7046;
-- Scalding Drake 7045
UPDATE `creature_template` SET `Inhabittype`='3' WHERE `entry` = 7045;
-- Black Drake 7044
UPDATE `creature_template` SET `Inhabittype`='3' WHERE `entry` = 7044;
-- Rogue Black Drake 14388
UPDATE `creature_template` SET `Inhabittype`='3' WHERE `entry` = 14388;

-- The Elements 6pcs The Furious Storm
-- Chance on spell cast to increase your damage and healing by up to 95 for 10 sec.
UPDATE `spell_proc_event` SET `SpellFamilyName`='11' WHERE (`entry`='27774');

-- Ethereal Thief, Ethereal Spellfilcher
UPDATE `creature_template` SET `Detection` = 24 WHERE `entry` IN (16544, 16545);

-- hidden repbot
DELETE FROM `creature` WHERE `guid` = 53940 AND `id` = 14337;

-- Windy Cloud
DELETE FROM creature_addon WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (24222));
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (24222));
DELETE FROM game_event_creature WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (24222));
DELETE FROM game_event_creature_data WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (24222));
DELETE FROM creature_battleground WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (24222));
DELETE FROM creature_linking WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (24222));
DELETE FROM creature WHERE `id` IN (24222);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(192000, 24222, 530, 1, 0, 0, -972.757, 7128.15, 38.0172, 3.71719, 600, 600, 0, 0, 3984, 2434, 0, 2), -- sniff
(192001, 24222, 530, 1, 0, 0, -1046.56, 7486.97, 225.065, 2.40165, 600, 600, 0, 0, 3984, 2434, 0, 2), -- sniff
(192002, 24222, 530, 1, 0, 0, -965.405, 7976.56, 32.7939, 1.14893, 600, 600, 0, 0, 3984, 2434, 0, 2), -- sniff
(192003, 24222, 530, 1, 0, 0, -2670.27, 8556.48, -27.7147, 3.54215, 600, 600, 0, 0, 3984, 2434, 0, 2), -- sniff
(192004, 24222, 530, 1, 0, 0, -2286.56, 8621.62, -4.77538, 0.781435, 600, 600, 0, 0, 3984, 2434, 0, 2), -- sniff
(192005, 24222, 530, 1, 0, 0, -2830.78, 7869.31, -12.2189, 5.31315, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192006, 24222, 530, 1, 0, 0, -2740.06, 6962.79, 3.00595, 5.81579, 600, 600, 0, 0, 3984, 2434, 0, 2), -- sniff
(192007, 24222, 530, 1, 0, 0, -2369.1, 6513.95, 25.7825, 4.41778, 600, 600, 0, 0, 3984, 2434, 0, 2), -- sniff
(192008, 24222, 530, 1, 0, 0, -1518.15, 7065.83, 14.6125, 2.7433, 600, 600, 0, 0, 3984, 2434, 0, 2), -- sniff
(192009, 24222, 530, 1, 0, 0, -1351.06, 7200.54, 209.99, 5.82061, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192010, 24222, 530, 1, 0, 0, -1656.49, 7832.09, 165.836, 5.40165, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192011, 24222, 530, 1, 0, 0, -1761.46, 7408.41, 213.805, 0.5665, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192012, 24222, 530, 1, 0, 0, -1154.52, 9099.88, 45.8203, 0.3151, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192013, 24222, 530, 1, 0, 0, -938.68, 8430.34, 36.8891, 5.0903, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192014, 24222, 530, 1, 0, 0, -2028.35, 6663.948, 13.60019, 1.541508, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192015, 24222, 530, 1, 0, 0, -2395.35, 7609.86, -9.0757, 0.9042, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192016, 24222, 530, 1, 0, 0, -791.584, 7289.89, 42.2148, 6, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192017, 24222, 530, 1, 0, 0, -3320.94, 6765.38, 73.3736, 0.726, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192018, 24222, 530, 1, 0, 0, -1571.51, 6438.22, 30.9567, 5.3952, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192019, 24222, 530, 1, 0, 0, -2229.77, 7790.01, 150.518, 0.2626, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192020, 24222, 530, 1, 0, 0, -1770.42, 8535.14, 197.152, 5.6897, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192021, 24222, 530, 1, 0, 0, -2054.84, 6462.36, 19.6635, 5.0692, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192022, 24222, 530, 1, 0, 0, -2224.49, 6775.29, -8.7093, 2.0965, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192023, 24222, 530, 1, 0, 0, -906.058, 7087.6, 171.717, 3.35982, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192024, 24222, 530, 1, 0, 0, -1083.55, 8285.7, 196.857, 1.02248, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192025, 24222, 530, 1, 0, 0, -1524.93, 8887.04, 40.8823, 0.558453, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192026, 24222, 530, 1, 0, 0, -1533.73, 6369.89, 77.6436, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192027, 24222, 530, 1, 0, 0, -1880.2, 6415.62, 51.1248, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192028, 24222, 530, 1, 0, 0, -1647.108, 6699.067, -2.792871, 1.711865, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192029, 24222, 530, 1, 0, 0, -1412.78, 6872.9, 22.0742, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192030, 24222, 530, 1, 0, 0, -558.212, 8848.82, 307.732, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192031, 24222, 530, 1, 0, 0, -1037.4, 8959.22, 98.4896, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192032, 24222, 530, 1, 0, 0, -1541.77, 9476.1, 477.089, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192033, 24222, 530, 1, 0, 0, -1863.5, 9053.94, 72.3042, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192034, 24222, 530, 1, 0, 0, -2755.52, 8960.76, 14.9967, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192035, 24222, 530, 1, 0, 0, -1274.04, 9965.75, 276.065, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192036, 24222, 530, 1, 0, 0, -1909.55, 7905.94, 61.3013, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192037, 24222, 530, 1, 0, 0, -2404.706, 7174.663, 35.38357, 4.392183, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192038, 24222, 530, 1, 0, 0, -1661.27, 8545.57, -14.7632, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192039, 24222, 530, 1, 0, 0, -2073.745, 6512.973, 12.75276, 1.592277, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192040, 24222, 530, 1, 0, 0, -2803.85, 6583.56, 35.5174, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192041, 24222, 530, 1, 0, 0, -2522.15, 6416.33, 203.865, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192042, 24222, 530, 1, 0, 0, -1931.32, 8855.98, 31.6673, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192043, 24222, 530, 1, 0, 0, -1928.35, 9085.71, 291.542, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192044, 24222, 530, 1, 0, 0, -1000.03, 8885.98, 309.124, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192045, 24222, 530, 1, 0, 0, -1355.43, 6243, 264.369, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192046, 24222, 530, 1, 0, 0, -2821.88, 8212.47, 202.871, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192047, 24222, 530, 1, 0, 0, -2499.75, 8631.88, 193.369, 1.337, 600, 600, 40, 0, 3984, 2434, 0, 1), 
(192048, 24222, 530, 1, 0, 0, -2683.022, 7330.682, 67.43095, 5.339178, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192049, 24222, 530, 1, 0, 0, -2561.551, 7187.569, 72.03033, 3.417188, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192050, 24222, 530, 1, 0, 0, -2882.336, 7301.313, 11.28538, 2.094302, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192051, 24222, 530, 1, 0, 0, -2776.534, 6663.204, 22.47303, 0.5809605, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192052, 24222, 530, 1, 0, 0, -1513.64, 8357.441, -11.54519, 0.3497074, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192053, 24222, 530, 1, 0, 0, -2614.265, 7597.163, 5.292955, 4.503887, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192054, 24222, 530, 1, 0, 0, -2917.501, 7251.274, 1.05659, 1.506307, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192055, 24222, 530, 1, 0, 0, -2631.656, 7291.067, 67.43095, 5.629916, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192056, 24222, 530, 1, 0, 0, -2573.31, 7022.04, -3.030167, 5.061455, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192057, 24222, 530, 1, 0, 0, -1642.814, 7010.063, 0.8932558, 4.291984, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192058, 24222, 530, 1, 0, 0, -1655.131, 7517.282, 195.4223, 2.06914, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192059, 24222, 530, 1, 0, 0, -1014.757, 8192.854, 8.660958, 6.172304, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192060, 24222, 530, 1, 0, 0, -2551.913, 6499.815, 233.1073, 3.227693, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192061, 24222, 530, 1, 0, 0, -2578.871, 6392.725, 28.86991, 1.903112, 600, 600, 40, 0, 3984, 2434, 0, 1), -- sniff
(192062, 24222, 530, 1, 0, 0, -1652.349, 7471.635, 195.4223, 4.559466, 600, 600, 40, 0, 3984, 2434, 0, 1); -- sniff

INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(192000, 1, -972.757, 7128.15, 38.2672, 3.71719, 0, 0, NULL), 
(192000, 2, -795.648, 7205.7, 39.6899, 0.339978, 0, 0, NULL), 
(192001, 1, -1046.56, 7486.97, 229.16, 2.40165, 0, 0, NULL), 
(192001, 2, -1069.78, 7421.03, 228.622, 4.41226, 0, 0, NULL), 
(192001, 3, -1119.78, 7498.12, 218.884, 2.13461, 0, 0, NULL), 
(192002, 1, -965.388, 7968.49, 35.9964, 4.72013, 0, 0, NULL), 
(192002, 2, -1014.64, 8027.04, 26.0385, 2.199, 0, 0, NULL), 
(192002, 3, -878.702, 8082.89, 32.1764, 0.290487, 0, 0, NULL), 
(192002, 4, -869.792, 8008.34, 41.453, 4.76726, 0, 0, NULL), 
(192003, 1, -2670.27, 8556.48, -24.3327, 3.54215, 0, 0, NULL), 
(192003, 2, -2727.6, 8505.54, -33.2203, 3.9859, 0, 0, NULL), 
(192003, 3, -2798.87, 8408.73, -32.8769, 4.1901, 0, 0, NULL), 
(192003, 4, -2753.05, 8142.68, -41.5723, 5.45065, 0, 0, NULL), 
(192003, 5, -2668.57, 8092.38, -40.8327, 6.16379, 0, 0, NULL), 
(192003, 6, -2541.15, 8080.54, -42.7048, 0.191619, 0, 0, NULL), 
(192003, 7, -2443.69, 8129.17, -36.6802, 0.545049, 0, 0, NULL), 
(192003, 8, -2383.76, 8191.97, -33.1643, 1.06734, 0, 0, NULL), 
(192003, 9, -2354.92, 8321.24, -32.3505, 1.61712, 0, 0, NULL), 
(192003, 10, -2379.65, 8410.24, -30.9855, 1.95484, 0, 0, NULL), 
(192003, 11, -2456.4, 8494.97, -29.0302, 2.47634, 0, 0, NULL), 
(192003, 12, -2566.02, 8530.06, -25.9058, 2.99078, 0, 0, NULL), 
(192003, 13, -2670.74, 8520.71, -30.7958, 3.45809, 0, 0, NULL), 
(192004, 1, -2286.56, 8621.62, -5.12038, 0.781435, 0, 0, NULL), 
(192004, 2, -2208.61, 8513.88, -5.39454, 6.28314, 0, 0, NULL), 
(192004, 3, -2209.42, 8573.6, 2.2257, 1.33906, 0, 0, NULL), 
(192004, 4, -2280.99, 8652.49, 0.706009, 2.41898, 0, 0, NULL), 
(192006, 1, -2740.06, 6962.79, -2.00595, 4.98013, 0, 0, NULL), 
(192006, 2, -2708.33, 6930.69, 5.90239, 5.7341, 0, 0, NULL), 
(192006, 3, -2713.82, 6842.92, 4.49263, 4.5403, 0, 0, NULL), 
(192006, 4, -2821.07, 6757.41, 12.1712, 3.88057, 0, 0, NULL), 
(192006, 5, -2827.28, 6723.3, 21.978, 4.52459, 0, 0, NULL), 
(192006, 6, -2806.46, 6586.45, 41.6987, 4.86624, 0, 0, NULL), 
(192006, 7, -2740.08, 6641.43, 22.961, 0.731117, 0, 0, NULL), 
(192006, 8, -2706.18, 6733.12, 24.1225, 1.28875, 0, 0, NULL), 
(192006, 9, -2728.09, 6881.95, 2.40176, 2.40402, 0, 0, NULL), 
(192007, 1, -2369.1, 6513.95, 45.4725, 4.41778, 0, 0, NULL), 
(192007, 2, -2383.58, 6477.35, 27.9339, 4.28426, 0, 0, NULL), 
(192007, 3, -2395.76, 6431.19, 22.4845, 4.48061, 0, 0, NULL), 
(192007, 4, -2381.16, 6457.17, 20.261, 0.36119, 0, 0, NULL), 
(192007, 5, -2284.68, 6488.93, 16.614, 0.337628, 0, 0, NULL), 
(192007, 6, -2197.57, 6495.5, 25.7769, 0.027395, 0, 0, NULL), 
(192007, 7, -2145.82, 6435.28, 42.102, 5.39952, 0, 0, NULL), 
(192007, 8, -2031.99, 6339.93, 59.739, 5.25029, 0, 0, NULL), 
(192007, 9, -1950.56, 6362.55, 59.9186, 0.337628, 0, 0, NULL), 
(192007, 10, -1885.45, 6416.22, 55.2037, 0.463292, 0, 0, NULL), 
(192007, 11, -1784.83, 6480.16, 51.1629, 0.541832, 0, 0, NULL), 
(192007, 12, -2005.43, 6490.27, 110.293, 2.65848, 0, 0, NULL), 
(192007, 13, -2159.16, 6562.93, 28.7363, 2.34825, 0, 0, NULL), 
(192008, 1, -1518.15, 7065.83, 18.9225, 2.7433, 0, 0, NULL), 
(192008, 2, -1585.41, 7114.7, 15.0063, 2.81791, 0, 0, NULL), 
(192008, 3, -1608.95, 6993.19, 5.14389, 4.94241, 0, 0, NULL), 
(192008, 4, -1540.55, 7013.53, 12.4748, 0.320346, 0, 0, NULL);

DELETE FROM `pool_template` WHERE `entry` ='2101';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (2101, 12, 'Nagrand - Windy Cloud (24222)');

DELETE FROM `pool_creature_template` WHERE `pool_entry` ='2101';
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (24222, 2101, 0, 'Nagrand - Windy Cloud (24222)');

-- Missing Shadow Council Warlock Channeling
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (74604, 74605, 74606, 74607);
DELETE FROM `creature_movement` WHERE `id` IN (74604, 74605, 74606, 74607);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(74604, 1, -3347.67, 2995.47, 170.013, 2.79253, 120000, 2130204), 
(74605, 1, -3362.44, 3003.65, 170.854, 5.86431, 120000, 2130204), 
(74606, 1, -3349.89, 3008.01, 169.979, 4.2586, 120000, 2130204), 
(74607, 1, -3357.42, 2990.81, 169.974, 1.06465, 120000, 2130204);

-- Stuck in Wall
UPDATE `creature` SET `position_x` = -324.3194, `position_y` = 1550.3234, `position_z` = 25.2766, `orientation` = 3.1000 WHERE `guid` = 17663 AND `id` = 1895;

-- Bottled Nethergon Energy & Bottled Nethergon Vapor - maxcount 2 for non tk-eye npcs
UPDATE `creature_loot_template` SET `maxcount`='2' WHERE `entry` IN (18155,21544) AND `item` IN (32902,32905);

-- random movement
UPDATE `creature` SET `spawndist`='5', `movementtype`='1' WHERE `guid` IN (66268,66269) AND `id` IN (18466);

-- only first rank needs to be defined here
-- Priest: Silent Resolve (Rank 1) 14523
DELETE FROM `spell_affect` WHERE entry in (14523) AND effectId = 1;
INSERT INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES
(14523, 1, 24368650109295);

-- Druid: Subtlety (Rank 1) 17118
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|9007199254740992  WHERE `entry` IN (17118) AND effectId = 1; -- Omen of Clarity	16864, Nature's Grace	16886, Natural Perfection	45283, Clearcasting	16870
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|2251799813685248  WHERE `entry` IN (17118) AND effectId = 1; -- Nature's Swiftness	17116
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|281474976710656  WHERE `entry` IN (17118) AND effectId = 1; -- Tree of Life	33891
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|140737488355328  WHERE `entry` IN (17118) AND effectId = 1; -- Swift Flight Form	40120, Flight Form	33943
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|70368744177664  WHERE `entry` IN (17118) AND effectId = 1; -- Travel Form	783
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|35184372088832  WHERE `entry` IN (17118) AND effectId = 1; -- Moonkin Form	24858
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|17592186044416  WHERE `entry` IN (17118) AND effectId = 1; -- Innervate	29166
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|17179869184  WHERE `entry` IN (17118) AND effectId = 1; -- Cure Poison	8946, Abolish Poison	2893
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|2097152  WHERE `entry` IN (17118) AND effectId = 1; -- Insect Swarm	5570
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|1048576  WHERE `entry` IN (17118) AND effectId = 1; -- Nature's Grasp	17329
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|262144  WHERE `entry` IN (17118) AND effectId = 1; -- Mark of the Wild	8907
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|1024  WHERE `entry` IN (17118) AND effectId = 1; -- Faerie Fire (Feral)	17392
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|512  WHERE `entry` IN (17118) AND effectId = 1; -- Entangling Roots	27010
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|256  WHERE `entry` IN (17118) AND effectId = 1; -- Thorns	16877
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|64  WHERE `entry` IN (17118) AND effectId = 1; -- Regrowth	8941
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|2  WHERE `entry` IN (17118) AND effectId = 1; -- Moonfire	8929

-- Paladin: Stoicism (Rank 1) 31844
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|70368744177664  WHERE `entry` IN (31844) AND effectId = 1; -- Turn Undead 5627, Divine Protection 498, Avenger's Shield 31935, Vindication 26018, Divine Illumination 31842, Light's Grace 31834, Vengeance 20055, Turn Evil 10326, Lay on Hands 20236
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|35184372088832  WHERE `entry` IN (31844) AND effectId = 1; -- Avenging Wrath	31884
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|8796093022208  WHERE `entry` IN (31844) AND effectId = 1; -- Holy Vengeance	31803
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|536870912  WHERE `entry` IN (31844) AND effectId = 1; -- Judgement of the Crusader	20188
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|4194304  WHERE `entry` IN (31844) AND effectId = 1; -- Divine Shield	1020
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|1048576  WHERE `entry` IN (31844) AND effectId = 1; -- Judgement of Justice	20184
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|524288  WHERE `entry` IN (31844) AND effectId = 1; -- Judgement of Wisdom	20186
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|2048  WHERE `entry` IN (31844) AND effectId = 1; -- Hammer of Justice	5589
UPDATE `spell_affect` SET `SpellFamilyMask`= `SpellFamilyMask`|1  WHERE `entry` IN (31844) AND effectId = 1; -- 25780	Righteous Fury

-- Shaman: Healing Grace (Rank 1) 29187
UPDATE `spell_affect` SET `SpellFamilyMask`='14231709748224' WHERE `entry` IN (29187);

-- Tavarok 18343,20268
UPDATE `creature_template` SET `UnitFlags`='32832' WHERE `entry` IN (18343,20268);

-- Fel Reaver 18733
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 18733;
UPDATE `creature_model_info` SET `bounding_radius`='13.60493', `combat_reach` = 24 WHERE `modelid` = 18671;
UPDATE `creature_template_addon` SET `auras` = '19818 34623' WHERE `entry` = 18733;

-- dark portal lost sethekk npc
DELETE FROM `creature` WHERE `guid` = 84663 AND `id`  = 18318;

-- fish need water
UPDATE `creature` SET `position_x`='458.6470', `position_y`='6517.4702', `position_z`='1.6150', `orientation`='3.3698' WHERE `guid` IN ('65125');
UPDATE `creature` SET `position_x`='533.2531', `position_y`='6670.5957', `position_z`='13.4828', `orientation`='0.3875' WHERE `guid` IN ('65191');
UPDATE `creature` SET `position_x`='487.0450', `position_y`='7252.0297', `position_z`='-7.1758', `orientation`='0.0000' WHERE `guid` IN ('65294');

-- 86899 spawned npc 21998 summoned by item
DELETE FROM `creature` WHERE `guid` = 86899 AND `id` = 21998;

-- Orc Captive 17416,18613
UPDATE `creature_template` SET `UnitFlags` = 33587200 WHERE `entry` = 17416;
UPDATE `creature_template` SET `UnitFlags` = 33587200, `FactionAlliance` = 1652, `FactionHorde` = 1652 WHERE `entry` = 18613;

-- Uvuros 21102
UPDATE `creature_template` SET `NpcFlags` = 0, `UnitFlags` = 67141696, `DamageMultiplier` = 9, `MinMeleeDmg` = 2272.5, `MaxMeleeDmg` = 3213, `MinRangedDmg` = 1939.5, `MaxRangedDmg` = 2880, `MechanicImmuneMask` = 46677847 WHERE `entry` = 21102;
UPDATE `creature_model_info` SET `bounding_radius` = 1.225 WHERE `modelid` = 20522;

-- Protean Spawn Heroic
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 21609;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(21609, 935, 0, 7, 0, 30, 0, 0, 0, 0);

-- Unbound Devastator 20881,21619
UPDATE `creature_template` SET `UnitFlags`='64' WHERE `entry` = 21619;

-- Spiteful Temptress 20883,21615  
UPDATE `creature_template` SET `UnitFlags` = 32832,`ExtraFlags` = ExtraFlags|256 WHERE `entry` = 20883;
UPDATE `creature_template` SET `UnitFlags` = 32832,`ExtraFlags` = ExtraFlags|256 WHERE `entry` = 21615;
UPDATE `creature_model_info` SET `bounding_radius` = 2.676251 WHERE `modelid` = 19948;

-- Skulking Witch 20882,21613
UPDATE `creature_model_info` SET `bounding_radius` = 2.676251 WHERE `modelid` = 19947;

-- Wrath-Scryer Soccothrates 20886,21624
UPDATE `creature_template` SET `UnitFlags`='32832' WHERE `entry` IN (20886,21624);

-- Image of Archmage Vargoth 19644
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 19644;

-- Zeppit	22484	npc_zeppip spell spawned
DELETE FROM `creature` WHERE `guid` = 78933 AND `id` = 22484;

-- Sniff WP for 59464 (58904,58905) and 59461 (58903,58902)
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` IN (58902,58903,58904,58905) AND `id` = 16937;

-- Terror Totem 20455
UPDATE `creature_template` SET `MovementType` = 0, `AIName` = 'TotemAI' WHERE `entry` ='20455';

-- Terror Totem 20455
DELETE FROM `creature_template_spells` WHERE `entry` = 20455;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES (20455,35198);

-- 7395	Cockroach
UPDATE `creature_template` SET `lootid`=0 WHERE `entry` = 7395;
DELETE FROM `creature_loot_template` WHERE `entry` = 7395;

-- 12922	Imp Minion
UPDATE `creature_template` SET `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `entry` = 12922;

-- Terrordar the Tormentor 22385
UPDATE `creature_template` SET `MechanicImmuneMask`='618889051' WHERE `entry` IN ('22385');

-- Felstorm Corruptor 22217
UPDATE `creature_template` SET `MinLevel` = 70, `MaxLevel` = 71, `MinLevelHealth` = 4191, `MaxLevelHealth` = 4308, `MinLevelMana` = 3155, `MaxLevelMana` = 3231 WHERE `entry` = 22217;

-- Razorsaw
UPDATE `creature` SET `spawntimesecsmin`=120 WHERE `guid` = 73465 AND `id` = 20798;

-- Khorium Vein 181557 - Arcane Crystal got removed from its loot at some point
DELETE FROM `gameobject_loot_template` WHERE `entry` = 18363 AND `item` = 12363;
-- INSERT INTO `gameobject_loot_template` VALUES (18363,12363,2,0,1,1,0,0,0);

-- Toshley Flying Machine 22089
UPDATE `creature_template` SET `InhabitType`='7' WHERE `entry` = '22089';

-- Remove static emote as this npc is now waypoint scripted
DELETE FROM `creature_addon` WHERE `guid` = 73897;

-- Burning Essence 11751, Black Blood of the Tormented 11752, Eye of Kajal 11753
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='45' WHERE `entry`=11103 AND `item`= 11751; -- -100 turn in quest so would never drop and its bop
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='40' WHERE `entry`=11103 AND `item`= 11752; -- -100 turn in quest so would never drop and its bop
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='35' WHERE `entry`=11103 AND `item`= 11753; -- -100 turn in quest so would never drop and its bop

-- inwall npc
UPDATE `creature` SET `position_x`='-23.4856', `position_y`='6808.9614', `position_z`='17.3752' WHERE `guid` = '71755';

-- 18411	Durn the Hungerer
-- 20216	Grulloc
-- 20600	Maggoc
-- 22199	Slaag
UPDATE `creature` SET `spawntimesecsmin`='600', `spawntimesecsmax` = '1500' WHERE `id` IN (18411,20216,20600,22199);

-- missing Spirit Healer - Razorthorn Rise
DELETE FROM `creature` WHERE `guid` = 152002;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(152002, 6491, 530, 1, 0, 0, -1424.61, 4359.87, 241.566, 5.40742, 300, 300, 0, 0, 4900, 0, 0, 0);

-- Pathing for Shadowy Hunter Entry: 18718 'ODB FORMAT' 
SET @GUID := 66960;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2399.251,`position_y`=4948.647,`position_z`=33.51818 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`, `script_id`, `orientation`) VALUES
(@GUID,1,-2399.251,4948.647,33.51818,0,0,100),
(@GUID,2,-2382.013,4957.111,36.26661,0,0,100),
(@GUID,3,-2386.387,4964.082,33.5477,0,0,100),
(@GUID,4,-2396.421,4967.332,32.63216,0,0,100),
(@GUID,5,-2404.207,4968.344,32.13279,0,0,100),
(@GUID,6,-2411.476,4973.782,31.9511,0,0,100),
(@GUID,7,-2419.75,5004.045,29.51139,0,0,100),
(@GUID,8,-2423.043,5009.497,29.88427,0,0,100),
(@GUID,9,-2425.305,5012.542,29.87346,0,0,100),
(@GUID,10,-2452.268,5014.185,28.21556,0,0,100),
(@GUID,11,-2455.99,5026.977,25.38416,0,0,100),
(@GUID,12,-2461.66,5046.541,20.78516,0,0,100),
(@GUID,13,-2468.601,5062.008,17.91999,0,0,100),
(@GUID,14,-2471.484,5074.755,15.08363,0,0,100),
(@GUID,15,-2462.648,5034.314,23.94722,0,0,100),
(@GUID,16,-2458.38,5013.544,27.85468,0,0,100),
(@GUID,17,-2460.833,5004.856,28.65945,0,0,100),
(@GUID,18,-2468.316,4978.999,31.72539,0,0,100),
(@GUID,19,-2469.694,4960.631,33.31852,0,0,100),
(@GUID,20,-2466.243,4944.808,34.89827,0,0,100),
(@GUID,21,-2466.676,4930.218,36.72472,0,0,100),
(@GUID,22,-2473.81,4922.928,38.69386,0,0,100),
(@GUID,23,-2476.339,4921.196,39.03951,0,0,100),
(@GUID,24,-2486.696,4911.087,38.99028,0,0,100),
(@GUID,25,-2488.085,4899.312,39.16518,0,0,100),
(@GUID,26,-2466.59,4887.837,36.24532,0,0,100),
(@GUID,27,-2459.039,4893.131,34.30416,0,0,100),
(@GUID,28,-2456.6,4895.325,33.89172,0,0,100),
(@GUID,29,-2455.763,4912.572,33.6131,0,0,100),
(@GUID,30,-2459.973,4922.549,33.84817,0,0,100),
(@GUID,31,-2454.409,4941.216,34.89568,0,0,100),
(@GUID,32,-2453.032,4942.258,34.88249,0,0,100),
(@GUID,33,-2441.288,4944.204,34.91498,0,0,100),
(@GUID,34,-2424.706,4957.187,34.11639,0,0,100),
(@GUID,35,-2420.334,4960.088,33.7532,0,0,100),
(@GUID,36,-2399.827,4949.04,33.55933,0,0,100);
-- 0x1C393042401247800000D80000395139 .go -2399.251 4948.647 33.51818

-- Pathing for Shadowy Hunter Entry: 18718 'ODB FORMAT' 
SET @GUID := 66959;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2458.59,`position_y`=4883.933,`position_z`=34.63649 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`, `script_id`, `orientation`) VALUES
(@GUID,1,-2458.59,4883.933,34.63649,0,0,100),
(@GUID,2,-2454.139,4881.942,34.18031,0,0,100),
(@GUID,3,-2441.338,4867.939,34.96668,0,0,100),
(@GUID,4,-2447.259,4881.18,33.54724,0,0,100),
(@GUID,5,-2454.204,4888.805,33.82166,0,0,100),
(@GUID,6,-2455.784,4897.667,33.77719,0,0,100),
(@GUID,7,-2455.145,4910.682,33.57897,0,0,100),
(@GUID,8,-2459.188,4921.684,33.73078,0,0,100),
(@GUID,9,-2455.591,4939.817,34.61909,0,0,100),
(@GUID,10,-2453.116,4941.684,35.0243,0,0,100),
(@GUID,11,-2443.437,4943.616,34.76263,0,0,100),
(@GUID,12,-2431.095,4940.732,36.18304,0,0,100),
(@GUID,13,-2422.104,4931.316,35.36322,0,0,100),
(@GUID,14,-2418.187,4924.916,36.3769,0,0,100),
(@GUID,15,-2425.994,4937.722,36.55001,0,0,100),
(@GUID,16,-2430.061,4945.802,35.26893,0,0,100),
(@GUID,17,-2429.3,4947.917,34.86908,0,0,100),
(@GUID,18,-2424.078,4963.271,33.09982,0,0,100),
(@GUID,19,-2421.393,4974.704,31.43381,0,0,100),
(@GUID,20,-2421.332,4975.644,31.21901,0,0,100),
(@GUID,21,-2418.137,5000.565,30.00104,0,0,100),
(@GUID,22,-2417.527,5002.019,29.37036,0,0,100),
(@GUID,23,-2416.402,5010.205,29.2325,0,0,100),
(@GUID,24,-2417.669,5014.722,28.97691,0,0,100),
(@GUID,25,-2428.226,5012.224,29.9898,0,0,100),
(@GUID,26,-2444.966,5008.044,29.51899,0,0,100),
(@GUID,27,-2453.993,5013.485,28.19345,0,0,100),
(@GUID,28,-2456.664,5023.554,26.07574,0,0,100),
(@GUID,29,-2459.761,5038.568,22.79576,0,0,100),
(@GUID,30,-2465.731,5053.402,19.17121,0,0,100),
(@GUID,31,-2467.348,5032.213,24.09672,0,0,100),
(@GUID,32,-2467.405,5023.126,25.73068,0,0,100),
(@GUID,33,-2467.814,5012.714,28.07976,0,0,100),
(@GUID,34,-2470.525,4997.041,29.28029,0,0,100),
(@GUID,35,-2471.126,4980.461,31.38793,0,0,100),
(@GUID,36,-2477.811,4974.808,32.3695,0,0,100),
(@GUID,37,-2497.777,4966.848,35.28411,0,0,100),
(@GUID,38,-2506.064,4953.317,38.70324,0,0,100),
(@GUID,39,-2510.001,4942.142,39.95487,0,0,100),
(@GUID,40,-2510.834,4938.938,40.30884,0,0,100),
(@GUID,41,-2510.035,4921.547,39.56293,0,0,100),
(@GUID,42,-2510.577,4918.453,39.31087,0,0,100),
(@GUID,43,-2507.691,4905.567,39.31522,0,0,100),
(@GUID,44,-2500.221,4899.546,39.09933,0,0,100),
(@GUID,45,-2490.795,4896.659,39.47167,0,0,100);
-- 0x1C393042401247800000D800003955BB .go -2458.59 4883.933 34.63649

-- Pathing for Stonebreaker Grunt Entry: 18973 'ODB FORMAT' 
SET @GUID := 68131;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2562.284,`position_y`=4397.473,`position_z`=58.68661 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`, `script_id`, `orientation`) VALUES
(@GUID,1,-2562.284,4397.473,58.68661,0,0,100),
(@GUID,2,-2551.224,4407.652,53.44283,0,0,100),
(@GUID,3,-2547.335,4405.842,52.35535,0,0,100),
(@GUID,4,-2543.202,4397.742,52.17545,0,0,100),
(@GUID,5,-2547.734,4388.876,52.18408,0,0,100),
(@GUID,6,-2556.611,4386.977,52.1886,0,0,100),
(@GUID,7,-2556.627,4386.753,51.9386,0,0,100),
(@GUID,8,-2556.481,4387.06,52.1886,0,0,100),
(@GUID,9,-2543.486,4397,52.17455,0,0,100),
(@GUID,10,-2547.152,4405.732,52.17457,0,0,100),
(@GUID,11,-2558.628,4405.742,57.89645,0,0,100),
(@GUID,12,-2562.429,4397.533,58.73559,0,0,100),
(@GUID,13,-2562.816,4394.701,58.72124,0,0,100),
(@GUID,14,-2547.645,4388.162,58.39926,0,0,100),
(@GUID,15,-2545.306,4391.472,58.38942,0,0,100),
(@GUID,16,-2543.268,4397.77,58.69866,0,0,100),
(@GUID,17,-2543.174,4397.481,58.44216,0,0,100),
(@GUID,18,-2545.374,4391.247,58.40757,0,0,100),
(@GUID,19,-2554.22,4387.671,58.65759,0,0,100),
(@GUID,20,-2562.223,4394.01,58.45053,0,0,100),
(@GUID,21,-2562.396,4397.497,58.69535,0,0,100),
(@GUID,22,-2551.103,4407.721,53.44612,0,0,100),
(@GUID,23,-2547.447,4405.818,52.24909,0,0,100),
(@GUID,24,-2543.19,4397.657,52.17642,0,0,100),
(@GUID,25,-2547.777,4388.548,52.18584,0,0,100),
(@GUID,26,-2556.725,4387.103,52.1886,0,0,100),
(@GUID,27,-2556.627,4386.753,51.9386,0,0,100),
(@GUID,28,-2556.351,4386.949,52.1886,0,0,100),
(@GUID,29,-2543.485,4397.102,52.17455,0,0,100),
(@GUID,30,-2547.133,4405.784,52.17457,0,0,100),
(@GUID,31,-2558.618,4405.514,57.89614,0,0,100),
(@GUID,32,-2562.308,4397.42,58.72334,0,0,100),
(@GUID,33,-2562.909,4394.518,58.71896,0,0,100),
(@GUID,34,-2547.697,4388.187,58.39987,0,0,100),
(@GUID,35,-2545.525,4391.353,58.41209,0,0,100),
(@GUID,36,-2543.177,4397.777,58.7028,0,0,100),
(@GUID,37,-2543.174,4397.481,58.44216,0,0,100),
(@GUID,38,-2545.295,4391.392,58.40459,0,0,100),
(@GUID,39,-2554.367,4387.682,58.65977,0,0,100),
(@GUID,40,-2562.382,4393.967,58.45837,0,0,100);
-- 0x1C3930424012874000002C0003BF2EBC .go -2562.284 4397.473 58.68661

-- Pathing for Stonebreaker Grunt Entry: 18973 'ODB FORMAT' 
SET @GUID := 68132;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2582.699,`position_y`=4367.507,`position_z`=27.14433 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`, `script_id`, `orientation`) VALUES
(@GUID,1,-2582.699,4367.507,27.14433,240000,0,100),
(@GUID,2,-2595.828,4382.915,29.9575,0,0,100),
(@GUID,3,-2613.849,4391.314,33.12907,0,0,100),
(@GUID,4,-2632.729,4386.462,35.28672,0,0,100),
(@GUID,5,-2636.813,4385.448,35.57519,0,0,100),
(@GUID,6,-2667.237,4407.722,35.60794,0,0,100),
(@GUID,7,-2701.92,4386.847,28.3668,0,0,100),
(@GUID,8,-2708.737,4383.311,26.62656,0,0,100),
(@GUID,9,-2671.687,4406.917,35.27893,0,0,100),
(@GUID,10,-2638.984,4412.332,35.20811,0,0,100),
(@GUID,11,-2613.415,4394.945,33.2278,0,0,100),
(@GUID,12,-2591.59,4381.07,29.3395,0,0,100);
-- 0x1C3930424012874000002C00023F2EBA .go -2582.699 4367.507 27.14433

-- Pathing for Stonebreaker Peon Entry: 19048 'ODB FORMAT' 
SET @GUID := 68353;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2607.763,`position_y`=4381.312,`position_z`=33.58602 WHERE `guid`=@GUID;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`, `script_id`, `orientation`) VALUES
(@GUID,1,-2607.763,4381.312,33.58602,0,0,100),
(@GUID,2,-2633.11,4379.769,35.77549,0,0,100),
(@GUID,3,-2634.318,4379.514,35.83887,0,0,100),
(@GUID,4,-2647.237,4382.08,36.08328,240000,0,100),
(@GUID,5,-2642.319,4381.9,35.72264,0,0,100),
(@GUID,6,-2642.08,4381.872,35.9688,0,0,100),
(@GUID,7,-2607.333,4387.602,31.9885,0,0,100),
(@GUID,8,-2603.056,4389.318,31.18134,0,0,100),
(@GUID,9,-2598.985,4391.519,30.64458,240000,0,100),
(@GUID,10,-2592.19,4391.983,30.50177,240000,0,100),
(@GUID,11,-2568.814,4388.118,33.5708,0,0,100),
(@GUID,12,-2567.081,4387.359,34.20564,240000,0,100);
-- 0x1C39304240129A0000002C00023F2EBC .go -2607.763 4381.312 33.58602

-- Update coordinates of Ru'zah
UPDATE `creature` SET `position_x`=-2627.9, `position_y`=4486.034, `position_z`=36.21471,`orientation`='5.026751',`spawndist`='0',`movementtype`='0' WHERE `guid`=74329;

-- offset for Dreadfang Widow
UPDATE `creature` SET `position_x`='-3048.4978', `position_y`='4109.6381', `position_z`='-0.7659', `orientation`='3.4904' WHERE `guid` = 66270;

--  Add missing Apexis Flayer 22175
SET @Guid=191065;
DELETE FROM `creature` WHERE `guid` BETWEEN @Guid+0 AND @Guid+41;
DELETE FROM `creature` WHERE `id`=22175;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(@Guid+0, 22175, 530, 1, 0, 0, 2608.55, 7075.41, 364.496, 5.71923, 300, 300, 5, 0, 7181, 0,  1),
(@Guid+1, 22175, 530, 1, 0, 0, 2238.57, 7119.23, 365.84, 3.09914, 300, 300, 5, 0, 7181, 0,  1),
(@Guid+2, 22175, 530, 1, 0, 0, 2218.84, 7276.48, 366.109, 3.94579, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+3, 22175, 530, 1, 0, 0, 2154.76, 7242.51, 371.791, 1.50713, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+4, 22175, 530, 1, 0, 0, 1991.99, 7364.78, 366.955, 1.9501, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+5, 22175, 530, 1, 0, 0, 2076.62, 7337.08, 365.808, 0.65419, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+6, 22175, 530, 1, 0, 0, 4079.29, 5129.22, 268.446, 1.09823, 600, 600, 5, 0, 7181, 0, 1),
(@Guid+7, 22175, 530, 1, 0, 0, 2270.3, 7189.96, 364.752, 6.06008, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+8, 22175, 530, 1, 0, 0, 2202.82, 7237.79, 375.415, 2.95619, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+9, 22175, 530, 1, 0, 0, 2008.2, 7182.08, 369.87, 5.39014, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+10, 22175, 530, 1, 0, 0, 1952.68, 7216.42, 368.281, 4.71862, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+11, 22175, 530, 1, 0, 0, 2129.63, 7169.39, 366.483, 2.49909, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+12, 22175, 530, 1, 0, 0, 2494.71, 7263.55, 367.219, 5.21106, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+13, 22175, 530, 1, 0, 0, 2054.45, 7271.76, 365.238, 2.8211, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+14, 22175, 530, 1, 0, 0, 2483.08, 7057.84, 364.585, 3.86333, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+15, 22175, 530, 1, 0, 0, 2525.27, 7252.78, 365.323, 4.43352, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+16, 22175, 530, 1, 0, 0, 2455.15, 7057.42, 366.643, 0.409148, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+17, 22175, 530, 1, 0, 0, 2050.88, 7172.54, 369.315, 4.41232, 300, 300, 5, 0, 7181, 0,  1),
(@Guid+18, 22175, 530, 1, 0, 0, 2402.86, 7068.99, 369.09, 2.95541, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+19, 22175, 530, 1, 0, 0, 2383.77, 7040.89, 379.688, 2.85331, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+20, 22175, 530, 1, 0, 0, 2345.61, 7026.68, 387.225, 2.59727, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+21, 22175, 530, 1, 0, 0, 2209.37, 7124.08, 364.438, 5.00765, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+22, 22175, 530, 1, 0, 0, 1843.45, 7310.6, 369.195, 1.96894, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+23, 22175, 530, 1, 0, 0, 1847.23, 7324.28, 368.691, 5.12624, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+24, 22175, 530, 1, 0, 0, 1853.72, 7366.1, 366.072, 1.24245, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+25, 22175, 530, 1, 0, 0, 2148.09, 7282.4, 368.747, 6.10328, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+26, 22175, 530, 1, 0, 0, 2596.27, 7200.13, 367.541, 1.25031, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+27, 22175, 530, 1, 0, 0, 2176.91, 7309.42, 372.694, 5.73415, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+28, 22175, 530, 1, 0, 0, 2745.14, 7230.82, 368.577, 3.98822, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+29, 22175, 530, 1, 0, 0, 2725.08, 7244.41, 369.344, 6.08051, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+30, 22175, 530, 1, 0, 0, 2591.54, 7220.81, 364.005, 5.91165, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+31, 22175, 530, 1, 0, 0, 2305.98, 7154.86, 365.855, 0.25991, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+32, 22175, 530, 1, 0, 0, 2337.79, 7148.06, 368.183, 1.28878, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+33, 22175, 530, 1, 0, 0, 2425.56, 7173.66, 366.865, 6.19438, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+34, 22175, 530, 1, 0, 0, 2460.97, 7128.22, 367.7, 1.39166, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+35, 22175, 530, 1, 0, 0, 2491.67, 7155.23, 369.61, 3.2884, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+36, 22175, 530, 1, 0, 0, 2451.01, 7296.84, 365.796, 2.66794, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+37, 22175, 530, 1, 0, 0, 2439.87, 7254.54, 369.234, 2.22419, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+38, 22175, 530, 1, 0, 0, 1945.76, 7133.53, 367.456, 3.74865, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+39, 22175, 530, 1, 0, 0, 2037.34, 7265.44, 367.727, 0.68482, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+40, 22175, 530, 1, 0, 0, 1993.1, 7143.76, 373.431, 5.6768, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+41, 22175, 530, 1, 0, 0, 1948.44, 7203.54, 366.609, 1.46472, 300, 300, 5, 0, 7181, 0, 1),
(@Guid+42, 22175, 530, 1, 0, 0, 4087.7500, 4998.1772, 272.7598, 2.8418, 300, 300, 5, 0, 7181, 0, 1);

-- [PH] Cave Bat JZB 22040 & [PH] bat target 22039
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` IN (22040,22039); -- 22040 already corrected

-- Wrath Reaver 22196 inacive
UPDATE `creature_template` SET `UnitFlags` = 33588032 WHERE `entry` = 22196;

-- offset 
UPDATE `creature` SET `position_x`='2091.4001', `position_y`='7382.1337', `position_z`='372.5668' WHERE `guid` = '78229';
UPDATE `creature` SET `position_x`='3877.0700', `position_y`='5943.6000', `position_z`='270.9162' WHERE `guid` = '78249';
UPDATE `creature` SET `position_x`='3899.0600', `position_y`='5968.0800', `position_z`='269.8273' WHERE `guid` = '78250';
UPDATE `creature` SET `position_x`='4041.4599', `position_y`='5970.7900', `position_z`='267.9311' WHERE `guid` = '78255';
UPDATE `creature` SET `position_x`='4002.8999', `position_y`='5996.7900', `position_z`='268.1863' WHERE `guid` = '78256';
UPDATE `creature` SET `position_x`='3917.2800', `position_y`='6008.1801', `position_z`='270.4826' WHERE `guid` = '78257';
UPDATE `creature` SET `position_x`='4006.6799', `position_y`='6042.7001', `position_z`='264.7456' WHERE `guid` = '78258';
UPDATE `creature` SET `position_x`='3952.7900', `position_y`='6078.6699', `position_z`='269.2231' WHERE `guid` = '78259';
UPDATE `creature` SET `position_x`='3905.1000', `position_y`='6107.3500', `position_z`='269.9914' WHERE `guid` = '78260';

-- Skettis Surger no rep
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = '21728';
-- INSERT INTO `creature_onkill_reputation` VALUES (21728,1031,0,7,0,10,0,0,0,0);

-- Talonsworn Forest-Rager
DELETE FROM `creature_loot_template` WHERE `entry`=23029 AND `item`=25; -- Worn Shortsword

-- Monstrous Kaliri 23051
DELETE FROM `creature_loot_template` WHERE `entry` = 23051 AND `item` IN (3827,6149,8932,8950,8952,22793,23112,23425);

-- Skull Pile 185913 & Ancient Skull Pile 185928
UPDATE `gameobject` SET `spawntimesecsmin`='900', `spawntimesecsmax`='900' WHERE `id` = 185928; -- 180
UPDATE `gameobject` SET `spawntimesecsmin`='300', `spawntimesecsmax`='300' WHERE `id` = 185913; -- 180

-- Yous Have Da Darkrune? 11027
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|1 WHERE `entry` = 11027;

-- Skeleton 6412 Summoned by Dragonmaw Bonewarder 1057 (s.8853) and Gordunni Soulreaper 23022 (s.20464)
-- guid 9629,9630,9740,9741,9742,9743,9777,10547,10548,10739,10757,10764,10767,10784,10815,10816,10817,10818,10823,11161
DELETE FROM creature_addon WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 6412);
DELETE FROM `creature`  WHERE `id` = 6412;

-- The Barrier Hills Respawn
UPDATE `creature` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 300 WHERE `id` IN (22144,22143,22148);

-- Teronis' Corpse 3891
-- Scout Jyoba 18035
UPDATE `creature_template` SET `CreatureTypeFlags` = 128 WHERE `entry` = 3891;
DELETE FROM `creature_addon` WHERE `guid` = 32348;
UPDATE `creature_template_addon` SET `bytes1` = 7 WHERE `entry` = 3891; -- done by 29266 aura

-- Blade's Legion Target 22436
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 22436;

-- Legion Flak Cannon 23076
UPDATE `creature_template` SET `UnitFlags` = 256 WHERE `entry` = 23076;

-- offset
UPDATE `creature` SET `position_x`='1396.8896', `position_y`='7405.3520', `position_z`='367.7672' WHERE `guid` = '71201';

-- Wrath Reaver 22196
UPDATE `creature_template` SET `UnitFlags` = 33588032 WHERE `entry` = 22196;

-- random movement for 23386
UPDATE `creature` SET `position_x`='2742.7646', `position_y`='7263.2812', `position_z`='368.5848', `orientation`='1.5409',`spawndist`='5',`movementtype`='1' WHERE `guid` = '12859';
UPDATE `creature` SET `position_x`='2747.8618', `position_y`='7298.2163', `position_z`='368.5848', `orientation`='3.1510',`spawndist`='5',`movementtype`='1' WHERE `guid` = '51611';
UPDATE `creature` SET `position_x`='2709.1252', `position_y`='7303.5361', `position_z`='368.5854', `orientation`='4.6864',`spawndist`='5',`movementtype`='1' WHERE `guid` = '48038';
UPDATE `creature` SET `position_x`='2704.1682', `position_y`='7271.0244', `position_z`='368.5840', `orientation`='6.1223',`spawndist`='5',`movementtype`='1' WHERE `guid` = '28456';
UPDATE `creature` SET `position_x`='2122.2214', `position_y`='7106.7392', `position_z`='364.7709', `orientation`='3.0630',`spawndist`='5',`movementtype`='1' WHERE `guid` = '84226';
UPDATE `creature` SET `position_x`='2084.7136', `position_y`='7102.7553', `position_z`='364.7718', `orientation`='1.5550',`spawndist`='5',`movementtype`='1' WHERE `guid` = '84228';
UPDATE `creature` SET `position_x`='2080.6015', `position_y`='7137.5776', `position_z`='364.7713', `orientation`='0.0510',`spawndist`='5',`movementtype`='1' WHERE `guid` = '84236';
UPDATE `creature` SET `position_x`='2117.1728', `position_y`='7141.8442', `position_z`='364.7713', `orientation`='4.6691',`spawndist`='5',`movementtype`='1' WHERE `guid` = '84237';
UPDATE `creature` SET `position_x`='1950.2333', `position_y`='7344.6245', `position_z`='364.4700', `orientation`='3.1627',`spawndist`='5',`movementtype`='1' WHERE `guid` = '84238'; 
UPDATE `creature` SET `position_x`='1911.2104', `position_y`='7339.8510', `position_z`='364.4711', `orientation`='1.5291',`spawndist`='5',`movementtype`='1' WHERE `guid` = '84703';
UPDATE `creature` SET `position_x`='1907.1466', `position_y`='7375.6025', `position_z`='364.4706', `orientation`='6.1394',`spawndist`='5',`movementtype`='1' WHERE `guid` = '84704';
UPDATE `creature` SET `position_x`='1946.1286', `position_y`='7378.9438', `position_z`='364.4708', `orientation`='4.8160',`spawndist`='5',`movementtype`='1' WHERE `guid` = '84706';
UPDATE `creature` SET `spawndist`='5',`movementtype`='1' WHERE `guid` IN (51613,51612,51614,51615,55133,82671,53047,53046,84232,84233,84705,84702);

-- Ishanah 18538
UPDATE `creature_template` SET `UnitFlags` = 33024 WHERE `entry` = 18538;

-- make them clickable without using quest item -4
UPDATE `gameobject_template` SET `flags`='32' WHERE `entry` IN (184289,184290,184414); -- same as 184415

-- Hellfire Warder 18829
UPDATE `creature_template` SET `rank` = 3 WHERE `entry` = 18829;

-- Elder Razormaw nerf
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 1019;

-- missing
DELETE FROM `item_template` WHERE `entry` IN (35205,35214,35237,35569);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`) VALUES (35205, 9, 2, -1, 'Pattern: Hands of Eternal Light', 7085, 4, 65, 1, 40000, 20000, 0, -1, -1, 70, 0, 197, 365, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, 0, -1, 0, -1, 46129, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you how to craft Hands of Eternal Light.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`) VALUES (35214, 9, 1, -1, 'Pattern: Gloves of Immortal Dusk', 7085, 4, 65, 1, 40000, 20000, 0, -1, -1, 75, 0, 165, 365, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, 0, -1, 0, -1, 46134, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Teaches you how to craft Gloves of Immortal Dusk.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`) VALUES (35237, 12, 0, -1, 'Orb of the Crawler', 48692, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46337, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Transforms you into an innocent crab for 3 min. ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `Duration`) VALUES (35569, 12, 0, -1, 'Flame of the Exodar', 20874, 1, 131072, 1, 0, 0, 0, -1, -1, 1, 50, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 1, 11933, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0);

DELETE FROM `areatrigger_tavern` WHERE `id` IN (98, 1646);
INSERT INTO `areatrigger_tavern` (`id`, `name`) VALUES 
(98, 'Stranglethorn Vale - Nesingwary\'s Expedition'),
(1646, 'Arathi Highlands - Hammerfall');

-- Targrom & Friends offset
UPDATE `creature` SET `position_x`='-2939.3872', `position_y`='2675.1628', `position_z`='93.6803', `orientation`='4.4358',`spawndist`='0',`movementtype`='0' WHERE `guid` = 68964;
UPDATE `creature` SET `position_x`='-3124.9436', `position_y`='2569.8483', `position_z`='61.6758', `orientation`='3.5315',`spawndist`='0',`movementtype`='0' WHERE `guid` = 69085;
-- Trop Rendlimb
UPDATE `creature` SET `position_x`='-2903', `position_y`='2615', `position_z`='93.6802', `orientation`='2.8521',`spawndist`='0',`movementtype`='0' WHERE `guid` = 68959;
-- Kalara
UPDATE `creature` SET `position_x`='-2906.5869', `position_y`='2603.2880', `position_z`='93.6802', `orientation`='2.4398',`spawndist`='0',`movementtype`='0' WHERE `guid` = 68961;
-- Detrafila
UPDATE `creature` SET `position_x`='-3023.0000', `position_y`='2616.0000', `position_z`='76.7956', `orientation`='3.000',`spawndist`='0',`movementtype`='0' WHERE `guid` = 74713;
DELETE FROM `creature_template_addon` WHERE `entry` = 21340;
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES (21340,3);

-- Give Gerard a Drink
UPDATE `quest_template` SET `RewRepFaction1` = 0, `RewRepValue1`='0' WHERE `entry` = 16;

-- Shadowmoon Valley Tuber Node
UPDATE `creature` SET `spawntimesecsmin` = 25, `spawntimesecsmax` = 25 WHERE `guid` = 74714 AND `id` = 21347;

-- Coilskar Muckwatcher 19788 - no flowers
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19788;

-- Coilskar Defender 19762
UPDATE `creature_template` SET `UnitFlags` = 32768, `ExtraFlags` = 0 WHERE `entry` = 19762;

-- Entry: 19769 Guid: 70727
UPDATE `creature` SET `DeathState` = 1 WHERE `guid` = 70727;
DELETE FROM `creature_addon` WHERE `guid` = 70727;
INSERT INTO `creature_addon` (`guid`, `bytes1`, `b2_0_sheath`, `b2_1_flags`)VALUES (70727,131072,1,16);
UPDATE `creature_addon` SET `bytes1` = 131072 WHERE `guid` IN (70698,70697,70725,70724,70727,70799,70800);

-- Darna Honeybock & Slurpo Fizzykeg & Brewfest Spy (Brewfest Agent)
DELETE FROM `creature` WHERE `guid` IN (191108,191109,191110);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(191108, 26719, 230, 1, 0, 0, 885.674, -162.749, -49.759, 1.86371, 300, 300, 0, 0, 1, 0, 0, 0),
(191109, 27584, 0, 1, 0, 0, -5611.85, -474.369, 396.98, 4.79485, 300, 300, 0, 0, 1, 0, 0, 0),
(191110, 28329, 1, 1, 0, 0, 859.606, -4494.68, 6.6345, 5.19148, 300, 300, 0, 0, 1, 0, 0, 0);

DELETE FROM `game_event_creature` WHERE `guid` IN (191108,191109,191110);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(191108, 26),
(191109, 26),
(191110, 26);

-- Abyssal Flamebringer, those without Path
UPDATE `creature` SET `spawndist`='10',`MovementType`='1' WHERE `id` IN (19973) AND `MovementType` = 1;

-- Enraged Fire Soul, Enraged Earth Shard, Enraged Earthen Soul
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (21097,22115,21073));
DELETE FROM `creature` WHERE `id` IN (21097,22115,21073);

-- Dreghood Geomancer
UPDATE `creature` SET `MovementType`=0 WHERE `guid` IN (58902,58903);

-- Fel Soldier 18944
UPDATE `creature_template` SET `MechanicImmuneMask`='1' WHERE `entry` = 18944;

-- Wrath Master 19005
UPDATE `creature_template` SET `MechanicImmuneMask`='1' WHERE `entry` = 19005;

-- 23287 corpses
UPDATE `creature` SET `DeathState` = 1 WHERE `guid` IN (140754,127337,127340,127341,127342,127343,127344,127345,127346,127336,127335,127324,127325,127326,127327,127328,127329,127330,127331,127332,127333,127334,140753,52029,140714,140715,140716,140717,140718,140719,140720,140721,140722,140723,140724,140713,140712,52028,52027,52026,52025,140705,140706,140707,140708,140709,140710,140711,140725,140726,140727,140741,140742,140743,140744,140745,140746,140747,140748,140749,140750,140751,140740,140739,140728,140729,140730,140731,140732,140733,140734,140735,140736,140737,140738,140752);

-- Spirit Healer
UPDATE `creature` SET `position_x` = -2502.72, `position_y` = 6786.18, `position_z` = 22.9911, `orientation` = 1.1305 WHERE `guid` = 31742 AND `id` = 6491;
DELETE FROM `creature` WHERE `guid` IN (191111,191112,191113,191114);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191111, 6491, 1, 1, 7763.65, -4102.77, 697.988, 0.266153, 60, 60, 0, 0), -- maybe wotlk
(191112, 6491, 1, 1, 6617.82, -3544.02, 682.132, 0.89447, 60, 60, 0, 0), -- maybe wotlk
-- one missing Shadowmoon Valley Tuber Node near GO
(191113, 21347, 530, 1, -2483.1689, 1216.3806, 42.5085, 3.4536, 25, 25, 0, 0),
-- Or'kaos the Insane
(191114, 23168, 530, 1, -5338.61, -108.45, 72.423, 1.41698, 1800, 1800, 0, 2);
SET @GUID := 191114;
SET @POINT := 0;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`, `script_id`, `orientation`) VALUES
(@GUID,@POINT := @POINT + 1,-5328.1162,-104.7812,75.1846,0,0,100),
(@GUID,@POINT := @POINT + 1,-5320.0048,-92.8429,79.9479,0,0,100),
(@GUID,@POINT := @POINT + 1,-5321.4868,-73.4671,86.7180,0,0,100),
(@GUID,@POINT := @POINT + 1,-5352.0380,-55.1446,86.0051,0,0,100),
(@GUID,@POINT := @POINT + 1,-5378.8842,-79.4089,80.1808,0,0,100),
(@GUID,@POINT := @POINT + 1,-5369.2763,-120.0324,65.3489,0,0,100),
(@GUID,@POINT := @POINT + 1,-5333.4365,-119.7504,68.0895,0,0,100);

-- Felmist 17407
DELETE FROM creature_addon WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (17407));
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (17407));
DELETE FROM game_event_creature WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (17407));
DELETE FROM game_event_creature_data WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (17407));
DELETE FROM creature_battleground WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (17407));
DELETE FROM creature_linking WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (17407));
DELETE FROM creature WHERE `id` IN (17407);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(192063, 17407, 530, 1, -4135.31, 1656.65, 95.1784, 1.93206, 600, 600, 5, 1),
(192064, 17407, 530, 1, -3345.08, 2235.33, 67.36, 3.00256, 600, 600, 5, 1), -- sniff
(192065, 17407, 530, 1, -3613.46, 2313.72, 74.5317, 4.04243, 600, 600, 5, 1), -- sniff
(192066, 17407, 530, 1, -3743.16, 2268.32, 76.7126, 1.93206, 600, 600, 5, 1),
(192067, 17407, 530, 1, -2940.68, 2105, 169.716, 1.93206, 600, 600, 5, 1),
(192068, 17407, 530, 1, -3210.33, 3020.55, 137.592, 0, 600, 600, 5, 1), -- old data
(192069, 17407, 530, 1, -3278.6, 2648.37, 61.2525, 0, 600, 600, 5, 1), -- old data
(192070, 17407, 530, 1, -4656.036, 1104.765, -2.108178, 2.045361, 600, 600, 5, 1), -- sniff
(192071, 17407, 530, 1, -4431.38, 982.198, 39.2977, 1.93206, 600, 600, 5, 1),
(192072, 17407, 530, 1, -3874.122, 1374.296, 40.66116, 0.1706026, 600, 600, 5, 1), -- sniff
(192073, 17407, 530, 1, -3753.922, 876.9212, 70.81895, 1.13328, 600, 600, 5, 1), -- sniff
(192074, 17407, 530, 1, -3613.86, 1031.01, 55.027, 1.93206, 600, 600, 5, 1),
(192075, 17407, 530, 1, -3052.95, 650.166, -7.2665, 1.93206, 600, 600, 5, 1),
(192076, 17407, 530, 1, -3269.84, 652.122, 8.165, 1.93206, 600, 600, 5, 1),
(192077, 17407, 530, 1, -3291.802, 986.4722, 41.0171, 2.52436, 600, 600, 5, 1), -- sniff
(192078, 17407, 530, 1, -3280.52, 1120.93, 55.5956, 1.93206, 600, 600, 5, 1),
(192079, 17407, 530, 1, -2782.96, 795.218, 26.9291, 1.93206, 600, 600, 5, 1),
(192080, 17407, 530, 1, -2707.58, 1605.54, 3.1457, 1.93206, 600, 600, 5, 1),
(192081, 17407, 530, 1, -3393.94, 1661.21, 103.961, 1.93206, 600, 600, 5, 1),
(192082, 17407, 530, 1, -4227.91, 1817.06, 127.113, 1.93206, 600, 600, 5, 1),
(192083, 17407, 530, 1, -3904.11, 1651.36, 88.7646, 1.93206, 600, 600, 5, 1),
(192084, 17407, 530, 1, -3258.935, 2613.498, 61.48434, 2.851631, 600, 600, 5, 1), -- sniff
(192085, 17407, 530, 1, -3712.963, 1983.37, 83.99476, 3.22376, 600, 600, 5, 1), -- sniff
(192086, 17407, 530, 1, -4109.978, 865.5293, 10.33519, 2.68852, 600, 600, 5, 1), -- sniff
(192087, 17407, 530, 1, -4202.336, 681.0751, 23.19159, 3.966577, 600, 600, 5, 1), -- sniff
(192088, 17407, 530, 1, -4114.956, 801.9087, 4.734433, 5.716307, 600, 600, 5, 1), -- sniff
(192089, 17407, 530, 1, -3140.468, 3040.948, 101.9503, 2.98286, 600, 600, 5, 1), -- sniff
(192090, 17407, 530, 1, -3148.706, 1382.202, 12.60856, 4.353007, 600, 600, 5, 1), -- sniff
(192091, 17407, 530, 1, -3327.111, 989.6697, 35.34256, 2.006479, 600, 600, 5, 1), -- sniff
(192092, 17407, 530, 1, -4109.666, 650.4034, 1.988126, 3.627071, 600, 600, 5, 1), -- sniff
(192093, 17407, 530, 1, -4483.102, 548.5931, 125.7577, 4.749482, 600, 600, 5, 1), -- sniff
(192094, 17407, 530, 1, -3195.426, 3010.727, 126.392, 2.735674, 600, 600, 5, 1), -- sniff
(192095, 17407, 530, 1, -3624.12, 2526.71, 75.2732, 0, 600, 600, 5, 1), -- old data
(192096, 17407, 530, 1, -3483.889, 2448.216, 66.40103, 3.145499, 600, 600, 5, 1), -- sniff
(192097, 17407, 530, 1, -3495.444, 2019.687, 71.10612, 0.2127318, 600, 600, 5, 1), -- sniff
(192098, 17407, 530, 1, -4127.079, 713.0833, 1.440018, 6.194205, 600, 600, 5, 1), -- sniff
(192099, 17407, 530, 1, -3290.33, 874.4341, 8.846639, 0.2951972, 600, 600, 5, 1), -- sniff
(192100, 17407, 530, 1, -2714.809, 1312.635, 86.596, 1.757464, 600, 600, 5, 1), -- sniff
(192101, 17407, 530, 1, -3692.797, 771.9564, 4.50259, 5.050815, 600, 600, 5, 1), -- sniff
(192102, 17407, 530, 1, -4097.584, 721.5751, 1.605197, 3.125969, 600, 600, 5, 1), -- sniff
(192103, 17407, 530, 1, -3610.28, 2556.05, 79.4277, 0, 600, 600, 5, 1), -- old data
(192104, 17407, 530, 1, -3339.605, 2823.889, 133.5884, 5.213606, 600, 600, 5, 1), -- sniff
(192105, 17407, 530, 1, -3712.9, 2315.912, 77.3437, 4.255292, 600, 600, 5, 1), -- sniff
(192106, 17407, 530, 1, -3467.69, 2356.2, 65.1685, 0, 600, 600, 5, 1), -- old data
(192107, 17407, 530, 1, -3024.801, 2711.579, 65.85787, 2.027805, 600, 600, 5, 1), -- sniff
(192108, 17407, 530, 1, -3034.711, 2733.813, 66.08173, 4.694813, 600, 600, 5, 1), -- sniff
(192109, 17407, 530, 1, -3832.217, 2185.484, 93.6259, 2.559816, 600, 600, 5, 1), -- sniff
(192110, 17407, 530, 1, -3004.648, 2754.046, 72.82703, 5.46046, 600, 600, 5, 1), -- sniff
(192111, 17407, 530, 1, -3203.062, 2003.604, 92.75834, 1.392165, 600, 600, 5, 1), -- sniff
(192112, 17407, 530, 1, -3309.78, 2415.47, 60.6708, 0, 600, 600, 5, 1), -- old data
(192113, 17407, 530, 1, -3203.14, 2336.49, 61.5985, 0, 600, 600, 5, 1), -- old data
(192114, 17407, 530, 1, -3481.09, 1964.61, 79.3604, 0, 600, 600, 5, 1), -- old data
(192115, 17407, 530, 1, -3754.07, 1836.06, 89.9446, 0, 600, 600, 5, 1), -- old data
(192116, 17407, 530, 1, -3125.175, 1458.055, 49.03791, 5.274403, 600, 600, 5, 1), -- sniff
(192117, 17407, 530, 1, -3543.282, 2421.037, 75.93909, 1.495272, 600, 600, 5, 1), -- sniff
(192118, 17407, 530, 1, -3870.86, 1653.51, 84.4796, 0, 600, 600, 5, 1), -- old data
(192119, 17407, 530, 1, -4617.982, 1854.42, 152.1646, 0.5457742, 600, 600, 5, 1), -- sniff
(192120, 17407, 530, 1, -4023.218, 1715.884, 100.5309, 1.838321, 600, 600, 5, 1), -- sniff
(192121, 17407, 530, 1, -3680.16, 1681.41, 39.4371, 0, 600, 600, 5, 1), -- old data
(192122, 17407, 530, 1, -3143.533, 1869.392, 127.754, 4.193243, 600, 600, 5, 1), -- sniff
(192123, 17407, 530, 1, -3346.63, 1742.45, 99.6251, 0, 600, 600, 5, 1), -- old data
(192124, 17407, 530, 1, -3169.537, 1247.335, 36.13596, 3.940121, 600, 600, 5, 1), -- sniff
(192125, 17407, 530, 1, -3200.009, 2208.321, 63.61188, 0.3814135, 600, 600, 5, 1), -- sniff
(192126, 17407, 530, 1, -3182.97, 1518.24, 60.931, 0, 600, 600, 5, 1), -- old data
(192127, 17407, 530, 1, -3718.012, 851.8558, 62.26488, 1.561031, 600, 600, 5, 1), -- sniff
(192128, 17407, 530, 1, -3199.38, 1290.86, 31.0238, 0, 600, 600, 5, 1), -- old data
(192129, 17407, 530, 1, -2647.31, 1086.09, 53.6028, 0, 600, 600, 5, 1), -- old data
(192130, 17407, 530, 1, -2690.47, 1403.7, 97.6697, 0, 600, 600, 5, 1), -- old data
(192131, 17407, 530, 1, -3312.02, 795.035, -19.3869, 0, 600, 600, 5, 1), -- old data
(192132, 17407, 530, 1, -3605.229, 1095.806, 42.61564, 3.837081, 600, 600, 5, 1), -- sniff
(192133, 17407, 530, 1, -4253.91, 1406.465, 134.3916, 2.312024, 600, 600, 5, 1), -- sniff
(192134, 17407, 530, 1, -3669.82, 1074.14, 68.2889, 0, 600, 600, 5, 1), -- old data
(192135, 17407, 530, 1, -3645.01, 738.124, -3.39476, 0, 600, 600, 5, 1), -- old data
(192136, 17407, 530, 1, -4193.04, 649.6641, 18.72718, 4.83965, 600, 600, 5, 1), -- sniff
(192137, 17407, 530, 1, -4234.978, 1475.992, 128.8221, 2.043177, 600, 600, 5, 1), -- sniff
(192138, 17407, 530, 1, -4084.65, 855.649, 7.45207, 0, 600, 600, 5, 1), -- old data
(192139, 17407, 530, 1, -4287.04, 805.089, 22.9139, 0, 600, 600, 5, 1), -- old data
(192140, 17407, 530, 1, -3925.41, 1142.87, 27.5269, 0, 600, 600, 5, 1), -- old data
(192141, 17407, 530, 1, -2979.129, 2044.124, 101.1403, 4.698718, 600, 600, 5, 1), -- sniff
(192142, 17407, 530, 1, -3381.001, 2407.824, 60.78387, 0.3621981, 600, 600, 5, 1), -- sniff
(192143, 17407, 530, 1, -3787.35, 1253.11, 88.8691, 0, 600, 600, 5, 1), -- old data
(192144, 17407, 530, 1, -3775.976, 2421.318, 82.91481, 3.651536, 600, 600, 5, 1), -- sniff
(192145, 17407, 530, 1, -3376.287, 2435.942, 59.46943, 4.15741, 600, 600, 5, 1), -- sniff
(192146, 17407, 530, 1, -3439.669, 2975.341, 171.7076, 3.490946, 600, 600, 5, 1), -- sniff
(192147, 17407, 530, 1, -3383.888, 2388.052, 62.62727, 5.207084, 600, 600, 5, 1), -- sniff
(192148, 17407, 530, 1, -3915.747, 1001.087, 24.37364, 1.51611, 600, 600, 5, 1), -- sniff
(192149, 17407, 530, 1, -3370.889, 1013.771, 32.47315, 1.364206, 600, 600, 5, 1), -- sniff
(192150, 17407, 530, 1, -3354.829, 2376.865, 62.07455, 1.21824, 600, 600, 5, 1), -- sniff
(192151, 17407, 530, 1, -3839.142, 1772.709, 97.23363, 0.9567904, 600, 600, 5, 1), -- sniff
(192152, 17407, 530, 1, -3422.18, 2967.342, 170.0243, 1.909301, 600, 600, 5, 1), -- sniff
(192153, 17407, 530, 1, -3539.854, 823.5676, 0.961503, 2.030077, 600, 600, 5, 1), -- sniff
(192154, 17407, 530, 1, -3305.428, 959.2549, 37.79296, 0.9581404, 600, 600, 5, 1), -- sniff
(192155, 17407, 530, 1, -3327.012, 960.8124, 32.25722, 1.619633, 600, 600, 5, 1), -- sniff
(192156, 17407, 530, 1, -3282.21, 1219.148, 68.78242, 4.384466, 600, 600, 5, 1), -- sniff
(192157, 17407, 530, 1, -3217.94, 2514.659, 62.45408, 4.003581, 600, 600, 5, 1), -- sniff
(192158, 17407, 530, 1, -3355.913, 2753.993, 127.6076, 4.058812, 600, 600, 5, 1), -- sniff
(192159, 17407, 530, 1, -3800.422, 2359.375, 102.3141, 4.131964, 600, 600, 5, 1), -- sniff
(192160, 17407, 530, 1, -3185.374, 2521.336, 62.84533, 0.2274574, 600, 600, 5, 1); -- sniff

DELETE FROM `pool_template` WHERE `entry` ='2102';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (2102, 15, 'Shadowmoon Valley - Felmist (17407)');

DELETE FROM `pool_creature_template` WHERE `pool_entry` ='2102';
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (17407, 2102, 0, 'Shadowmoon Valley - Felmist (17407)');

-- Tagar Spinebreaker 19443
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 19443;

-- falling under map
UPDATE `creature` SET `position_z` = 68.1645, `orientation` = 0.313708 WHERE `guid` = 394;

-- Hyakiss the Lurker 16179
UPDATE `creature_template` SET `CreatureTypeFlags` = `CreatureTypeFlags`|4 WHERE `entry` = 16179;

-- Shadikith the Glider 16180
UPDATE `creature_template` SET `CreatureTypeFlags` = `CreatureTypeFlags`|4 WHERE `entry` = 16180;

-- Rokad the Ravager 16181
UPDATE `creature_template` SET `CreatureTypeFlags` = `CreatureTypeFlags`|4 WHERE `entry` = 16181;

UPDATE `creature` SET `position_x`= 103.4094,  `position_y`= 4341.2641,  `position_z`= 101.4677,  `orientation`= 4.2540, `spawndist`= 0, `movementtype`= 0 WHERE `guid` = '67032';
UPDATE `creature` SET `position_x`= -3264.7634,  `position_y`= 564.4158,  `position_z`= 72.0683 WHERE `guid` = '77394';

-- Netharel 21164
UPDATE `creature_template` SET `MechanicImmuneMask` = 578895699 WHERE `entry` = 21164;

-- Theras 21168
UPDATE `creature_template` SET `MechanicImmuneMask`= 578895699 WHERE `entry` = 21168;

-- Alandien 21171
UPDATE `creature_template` SET `MechanicImmuneMask`= 578895699 WHERE `entry` = 21171;

-- Varedis 21178
UPDATE `creature_template` SET `MechanicImmuneMask` = 578895699 WHERE `entry` = 21178;

-- wall
UPDATE `creature` SET `position_x`='68.3115',`position_y`='8190.1899',`position_z`='21.2747',`orientation`='4.0090' WHERE `guid` = 64658;

-- dublicate Domesticated Felboar - Shattered Pains (Shadowmoon Valley)
DELETE FROM `creature` WHERE `guid` IN (137898,137899,137900,137901,137902,137903,137904,137905,137906,137907,137908,137909,137910,137911,137914,137915,137916,137917,137918,137919,137920,137921,137922,137923,137924,137925,137926,137927,137928,137929,137930,137931,137932);

-- Unstable Shroom 20479
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 20479;
DELETE FROM `creature_template_addon` WHERE `entry` = 20479;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (20479, '31690');

DELETE FROM `creature` WHERE `guid` = 132808;
DELETE FROM `creature_movement` WHERE `id` = 132808;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (132808, 23188, 530, 1, 0, 0, -4747.99, 125.614, 132808.667, 2.48735, 15, 15, 0, 0, 7266, 3155, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(132808, 1, -4758.18, 99.2182, 77.8147, 0, 0, 100),
(132808, 2, -4768.11, 106.909, 85.4741, 0, 0, 100),
(132808, 3, -4787.03, 102.405, 79.8097, 0, 0, 100),
(132808, 4, -4825.42, 134.35, 92.6547, 0, 0, 100),
(132808, 5, -4787.6, 126.882, 82.8134, 0, 0, 100),
(132808, 6, -4748.58, 130.443, 80.8952, 0, 0, 100),
(132808, 7, -4744.15, 96.9811, 80.0271, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 132809;
DELETE FROM `creature_movement` WHERE `id` = 132809;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (132809, 23188, 530, 1, 0, 0, -4728.72, 130.222, 82.5424, 2.93268, 15, 15, 0, 0, 7266, 3155, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(132809, 1, -4749.32, 124.757, 81.4557, 0, 0, 100),
(132809, 2, -4773.45, 128.527, 82.0785, 0, 0, 100),
(132809, 3, -4790.76, 164.645, 79.8162, 0, 0, 100),
(132809, 4, -4766.48, 194.762, 92.7602, 0, 0, 100),
(132809, 5, -4765.11, 174.631, 79.6707, 0, 0, 100),
(132809, 6, -4739.59, 165.762, 80.7732, 0, 0, 100),
(132809, 7, -4719.95, 146.755, 80.6298, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 132810;
DELETE FROM `creature_movement` WHERE `id` = 132810;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (132810, 17144, 530, 1, 0, 0, -1762, 8066, -102.192, 5.5675, 28800, 28800, 5, 0, 11828, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(132810, 1, -1740.9, 8051.62, -102.937, 0, 0, 100),
(132810, 2, -1708.82, 8040.81, -103.195, 0, 0, 100),
(132810, 3, -1670.81, 8060.73, -103.469, 0, 0, 100),
(132810, 4, -1643, 8075.39, -103.492, 0, 0, 100),
(132810, 5, -1618.32, 8086.83, -103.72, 0, 0, 100),
(132810, 6, -1597.2, 8088.66, -103.57, 0, 0, 100),
(132810, 7, -1573.7, 8084.7, -100.683, 0, 0, 100),
(132810, 8, -1536.13, 8057.37, -102.029, 0, 0, 100),
(132810, 9, -1475.08, 8031.87, -103.181, 0, 0, 100),
(132810, 10, -1456.47, 8003.34, -103.717, 0, 0, 100),
(132810, 11, -1447.06, 7955.74, -106.483, 0, 0, 100),
(132810, 12, -1448.9, 7904.67, -105.786, 0, 0, 100),
(132810, 13, -1472.21, 7862.47, -103.765, 0, 0, 100),
(132810, 14, -1490.39, 7833.5, -101.993, 0, 0, 100),
(132810, 15, -1531.48, 7804.46, -100.86, 0, 0, 100),
(132810, 16, -1592.7, 7802.03, -103.307, 0, 0, 100),
(132810, 17, -1636.22, 7805.68, -103.235, 0, 0, 100),
(132810, 18, -1681, 7825.8, -103.226, 0, 0, 100),
(132810, 19, -1715.54, 7865.81, -103.309, 0, 0, 100),
(132810, 20, -1731.75, 7931.25, -103.324, 0, 0, 100),
(132810, 21, -1717.26, 7986.74, -103.363, 0, 0, 100),
(132810, 22, -1725.05, 8021.35, -103.23, 0, 0, 100),
(132810, 23, -1756.38, 8043.37, -100.979, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 40619;
DELETE FROM `creature_movement_template` WHERE `entry` = 23267;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40619, 23267, 530, 1, 0, 0, -5115.44, 144.561, 130.161, 1.37753, 300, 300, 0, 0, 36900, 0, 0, 2);
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(23267, 1, -5115.44, 144.561, 130.161, 0, 0, 100),
(23267, 2, -5127.7, 139.548, 130.185, 0, 0, 100),
(23267, 3, -5122.23, 120.374, 129.984, 0, 0, 100),
(23267, 4, -5117.04, 117.673, 129.909, 0, 0, 100),
(23267, 5, -5107.68, 117.856, 129.841, 0, 0, 100),
(23267, 6, -5100.67, 122.349, 130.089, 0, 0, 100),
(23267, 7, -5105.3, 139.746, 130.135, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 132811;
DELETE FROM `creature_movement` WHERE `id` = 132811;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (132811, 18689, 530, 1, 0, 0, -3740.6, 4473.93, -8.56473, 1.76946, 43200, 43200, 0, 0, 11828, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(132811, 1, -3745.47, 4496.63, -9.39174, 0, 0, 100),
(132811, 2, -3740.55, 4515.75, -12.6168, 0, 0, 100),
(132811, 3, -3714.52, 4561.42, -15.5949, 0, 0, 100),
(132811, 4, -3691.07, 4629.86, -18.0632, 0, 0, 100),
(132811, 5, -3671.98, 4668.61, -17.5237, 0, 0, 100),
(132811, 6, -3659.5, 4691.22, -20.1589, 0, 0, 100),
(132811, 7, -3663.01, 4731.42, -21.011, 0, 0, 100),
(132811, 8, -3670.96, 4811.81, -21.3235, 0, 0, 100),
(132811, 9, -3692.4, 4832.97, -21.3243, 0, 0, 100),
(132811, 10, -3737.69, 4842.88, -19.617, 0, 0, 100),
(132811, 11, -3771.48, 4845.87, -19.3476, 0, 0, 100),
(132811, 12, -3784.54, 4789.69, -20.5939, 0, 0, 100),
(132811, 13, -3805.7, 4756.83, -25.7269, 0, 0, 100),
(132811, 14, -3796.46, 4716.94, -24.3906, 0, 0, 100),
(132811, 15, -3815.91, 4670.04, -27.4691, 0, 0, 100),
(132811, 16, -3821.61, 4608.38, -21.6523, 0, 0, 100),
(132811, 17, -3807.01, 4574.98, -17.8086, 0, 0, 100),
(132811, 18, -3800.57, 4549.48, -18.1872, 0, 0, 100),
(132811, 19, -3796.15, 4512.84, -19.2235, 0, 0, 100),
(132811, 20, -3801.02, 4470.16, -13.1805, 0, 0, 100),
(132811, 21, -3771.69, 4449.77, -7.30134, 0, 0, 100),
(132811, 22, -3707.55, 4428.35, -7.42426, 0, 0, 100),
(132811, 23, -3670.43, 4428.79, -11.5316, 0, 0, 100),
(132811, 24, -3630.64, 4456.85, -16.9659, 0, 0, 100),
(132811, 25, -3555.26, 4510.33, -18.66, 0, 0, 100),
(132811, 26, -3571.25, 4577.81, -21.0895, 0, 0, 100),
(132811, 27, -3597.28, 4595.12, -20.5279, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 132812;
DELETE FROM `creature_movement` WHERE `id` = 132812;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (132812, 16906, 530, 1, 0, 0, -1245.85, 2530.15, 39.8954, 0.325707, 120, 120, 0, 0, 3400, 2369, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(132812, 1, -1245.85, 2530.15, 39.8954, 0, 0, 100),
(132812, 2, -1215, 2524.66, 46.1355, 0, 0, 100),
(132812, 3, -1199.7, 2529.83, 46.0862, 0, 0, 100),
(132812, 4, -1174.8, 2530.01, 49.2358, 0, 0, 100),
(132812, 5, -1148.8, 2544.55, 46.8673, 0, 0, 100),
(132812, 6, -1124.96, 2558.43, 43.6249, 0, 0, 100),
(132812, 7, -1109.3, 2576.64, 38.4571, 0, 0, 100),
(132812, 8, -1096.7, 2593.5, 33.9679, 0, 0, 100),
(132812, 9, -1087.89, 2610.02, 27.8341, 0, 0, 100),
(132812, 10, -1076.24, 2628.69, 21.1295, 0, 0, 100),
(132812, 11, -1087.89, 2610.02, 27.8795, 0, 0, 100),
(132812, 12, -1096.7, 2593.5, 33.9679, 0, 0, 100),
(132812, 13, -1109.3, 2576.64, 38.4571, 0, 0, 100),
(132812, 14, -1124.96, 2558.43, 43.6249, 0, 0, 100),
(132812, 15, -1148.8, 2544.55, 46.8673, 0, 0, 100),
(132812, 16, -1174.8, 2530.01, 49.2358, 0, 0, 100),
(132812, 17, -1199.7, 2529.83, 46.0862, 0, 0, 100),
(132812, 18, -1215, 2524.66, 46.1355, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 46384;
DELETE FROM `creature_movement` WHERE `id` = 46384;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (46384, 3681, 1, 1, 10045, 0, 10103.3, 2451.37, 1318.94, 4.54641, 300, 300, 0, 0, 64, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(46384, 1, 10093.5, 2453.88, 1318.27, 0, 0, 100),
(46384, 2, 10104.3, 2461.38, 1317.78, 0, 0, 100),
(46384, 3, 10111.6, 2475.67, 1317.32, 0, 0, 100),
(46384, 4, 10111.9, 2490.86, 1318.19, 0, 0, 100),
(46384, 5, 10093.4, 2527.76, 1317.64, 0, 0, 100),
(46384, 6, 10105.1, 2505.08, 1318.6, 0, 0, 100),
(46384, 7, 10111.3, 2489.62, 1317.98, 0, 0, 100),
(46384, 8, 10110.9, 2475.37, 1317.29, 0, 0, 100),
(46384, 9, 10102.8, 2458.83, 1318.06, 0, 0, 100),
(46384, 10, 10085.3, 2449.67, 1317.97, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 132813;
DELETE FROM `creature_movement` WHERE `id` = 132813;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (132813, 18684, 530, 1, 0, 0, -1656.84, 8747.51, 30.8561, 6.20546, 43200, 43200, 0, 0, 9784, 5692, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(132813, 1, -1595.58, 8743.12, 32.8909, 0, 0, 100),
(132813, 2, -1552.01, 8736.9, 31.5443, 0, 0, 100),
(132813, 3, -1471.7, 8686.72, 22.0652, 0, 0, 100),
(132813, 4, -1379.82, 8538.92, 11.15, 0, 0, 100),
(132813, 5, -1250.93, 8446.48, 18.2325, 0, 0, 100),
(132813, 6, -1049.93, 8389.46, 20.4694, 0, 0, 100),
(132813, 7, -968.256, 8345.41, 21.3638, 0, 0, 100),
(132813, 8, -951.008, 8285.09, 20.2325, 0, 0, 100),
(132813, 9, -898.222, 8341.75, 24.8691, 0, 0, 100),
(132813, 10, -968.256, 8345.41, 21.3638, 0, 0, 100),
(132813, 11, -1049.93, 8389.46, 20.4694, 0, 0, 100),
(132813, 12, -1250.93, 8446.48, 18.2325, 0, 0, 100),
(132813, 13, -1379.82, 8538.92, 11.15, 0, 0, 100),
(132813, 14, -1471.7, 8686.72, 22.0652, 0, 0, 100),
(132813, 15, -1552.01, 8736.9, 31.5443, 0, 0, 100),
(132813, 16, -1595.58, 8743.12, 32.8909, 0, 0, 100),
(132813, 17, -1656.84, 8747.51, 30.8561, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52277;
DELETE FROM `creature_movement` WHERE `id` = 52277;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52277, 22253, 530, 1, 0, 0, -5286.18, 377.416, 56.0917, 4.27476, 300, 300, 7, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52277, 1, -5290.91, 363.052, 56.5894, 0, 0, 100),
(52277, 2, -5295.51, 357.192, 52.4117, 0, 0, 100),
(52277, 3, -5300.86, 347.926, 59.0896, 0, 0, 100),
(52277, 4, -5303.57, 287.628, 63.325, 0, 0, 100),
(52277, 5, -5303.06, 279.36, 57.8988, 0, 0, 100),
(52277, 6, -5303.72, 273.477, 59.4699, 0, 0, 100),
(52277, 7, -5308.2, 231.415, 61.0186, 0, 0, 100),
(52277, 8, -5307.92, 224.306, 58.3813, 0, 0, 100),
(52277, 9, -5307.73, 217.907, 62.8021, 0, 0, 100),
(52277, 10, -5308.52, 208.717, 65.2893, 0, 0, 100),
(52277, 11, -5305.31, 187.234, 62.2583, 0, 0, 100),
(52277, 12, -5305.4, 179.771, 57.1063, 0, 0, 100),
(52277, 13, -5311.87, 151.327, 46.4506, 5000, 0, 100),
(52277, 14, -5312.12, 140.947, 41.4882, 0, 0, 100),
(52277, 15, -5307.34, 132.278, 35.4338, 0, 0, 100),
(52277, 16, -5299.79, 117.375, 33.8064, 0, 0, 100),
(52277, 17, -5292.3, 103.794, 31.8772, 0, 0, 100),
(52277, 18, -5289.16, 95.32, 36.6717, 0, 0, 100),
(52277, 19, -5285.41, 83.0167, 36.2296, 0, 0, 100),
(52277, 20, -5281.41, 76.2287, 32.0859, 0, 0, 100),
(52277, 21, -5277.86, 66.6784, 38.9887, 0, 0, 100),
(52277, 22, -5273.01, 50.9324, 41.7876, 0, 0, 100),
(52277, 23, -5268.85, 43.8653, 39.5146, 0, 0, 100),
(52277, 24, -5266.17, 33.4532, 46.1471, 0, 0, 100),
(52277, 25, -5257.9, -2.85156, 48.4852, 0, 0, 100),
(52277, 26, -5257.72, -12.3732, 42.222, 0, 0, 100),
(52277, 27, -5256.32, -17.6487, 46.1877, 0, 0, 100),
(52277, 28, -5255.21, -22.4243, 47.3216, 0, 0, 100),
(52277, 29, -5250.24, -33.2972, 43.5821, 0, 0, 100),
(52277, 30, -5244.88, -37.0802, 39.1899, 0, 0, 100),
(52277, 31, -5237.71, -46.515, 51.7072, 0, 0, 100),
(52277, 32, -5229.21, -62.3702, 58.694, 0, 0, 100),
(52277, 33, -5233.08, -40.227, 53.4006, 0, 0, 100),
(52277, 34, -5237.76, -31.3835, 44.6596, 0, 0, 100),
(52277, 35, -5241.58, -20.4941, 49.1573, 0, 0, 100),
(52277, 36, -5247.44, -6.06539, 45.8674, 0, 0, 100),
(52277, 37, -5251.91, 1.69322, 51.553, 0, 0, 100),
(52277, 38, -5264.34, 32.8859, 47.4955, 0, 0, 100),
(52277, 39, -5268.07, 43.7735, 39.8526, 0, 0, 100),
(52277, 40, -5272.21, 52.9376, 42.3349, 0, 0, 100),
(52277, 41, -5276.15, 69.2077, 39.164, 0, 0, 100),
(52277, 42, -5277.66, 75.8128, 34.0878, 0, 0, 100),
(52277, 43, -5280.68, 82.4684, 36.9994, 0, 0, 100),
(52277, 44, -5293.49, 95.623, 34.5344, 0, 0, 100),
(52277, 45, -5293.17, 103.406, 31.3155, 0, 0, 100),
(52277, 46, -5300.58, 121.526, 34.1919, 0, 0, 100),
(52277, 47, -5308.35, 133.578, 35.887, 0, 0, 100),
(52277, 48, -5312.66, 150.05, 45.818, 0, 0, 100),
(52277, 49, -5307.8, 180.84, 56.7556, 0, 0, 100),
(52277, 50, -5311.04, 191.568, 62.3193, 0, 0, 100),
(52277, 51, -5310.37, 216.69, 63.1151, 0, 0, 100),
(52277, 52, -5311.46, 224.14, 58.0321, 0, 0, 100),
(52277, 53, -5311.84, 230.134, 60.3893, 0, 0, 100),
(52277, 54, -5293.22, 276.868, 60.557, 0, 0, 100),
(52277, 55, -5293.96, 287.29, 65.9093, 0, 0, 100),
(52277, 56, -5299.18, 348.542, 59.1052, 0, 0, 100),
(52277, 57, -5291.62, 354.489, 55.1751, 0, 0, 100),
(52277, 58, -5289.82, 364.325, 57.2568, 0, 0, 100),
(52277, 59, -5279.61, 403.197, 53.7426, 0, 0, 100),
(52277, 60, -5276.42, 412.478, 50.2057, 0, 0, 100),
(52277, 61, -5273.45, 422.415, 55.9577, 0, 0, 100),
(52277, 62, -5265.55, 445.325, 55.1906, 0, 0, 100),
(52277, 63, -5273.42, 421.215, 55.8312, 0, 0, 100),
(52277, 64, -5273.33, 412.956, 51.5951, 0, 0, 100),
(52277, 65, -5273.9, 405.262, 55.0309, 0, 0, 100),
(52277, 66, -5285.72, 376.851, 56.3144, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52287;
DELETE FROM `creature_movement` WHERE `id` = 52287;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52287, 22253, 530, 1, 0, 0, -5017.33, 268.827, 88.0933, 3.79018, 25, 25, 0, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52287, 1, -5035.62, 238.973, 100.022, 0, 0, 100),
(52287, 2, -5056.45, 189.602, 119.037, 0, 0, 100),
(52287, 3, -5069.33, 170.666, 128.5, 0, 0, 100),
(52287, 4, -5090.68, 155.49, 129.719, 0, 0, 100),
(52287, 5, -5100.71, 153.752, 129.76, 0, 0, 100),
(52287, 6, -5105.75, 163.456, 129.76, 0, 0, 100),
(52287, 7, -5104.55, 176.361, 130.19, 0, 0, 100),
(52287, 8, -5107.65, 199.59, 136.026, 0, 0, 100),
(52287, 9, -5100.54, 235.21, 145.359, 0, 0, 100),
(52287, 10, -5095.83, 275.448, 155.658, 0, 0, 100),
(52287, 11, -5093.69, 305.897, 163.504, 0, 0, 100),
(52287, 12, -5088.88, 311.633, 165.474, 0, 0, 100),
(52287, 13, -5083.66, 307.726, 165.131, 0, 0, 100),
(52287, 14, -5092.82, 275.552, 156.112, 0, 0, 100),
(52287, 15, -5103.53, 236.391, 145.245, 0, 0, 100),
(52287, 16, -5108.45, 187.182, 132.882, 0, 0, 100),
(52287, 17, -5097.7, 171.263, 129.81, 0, 0, 100),
(52287, 18, -5084.6, 164.902, 129.265, 0, 0, 100),
(52287, 19, -5066.66, 171.763, 127.822, 0, 0, 100),
(52287, 20, -5056.02, 185.991, 119.918, 0, 0, 100),
(52287, 21, -5042.77, 221.464, 106.548, 0, 0, 100),
(52287, 22, -5022.04, 264.2, 90.1586, 0, 0, 100),
(52287, 23, -5013.07, 279.828, 84.1723, 0, 0, 100),
(52287, 24, -4985.21, 301.837, 81.3615, 0, 0, 100),
(52287, 25, -4965.48, 363.072, 83.4894, 0, 0, 100),
(52287, 26, -4934.09, 384.81, 83.2715, 0, 0, 100),
(52287, 27, -4918.1, 389.84, 69.7027, 0, 0, 100),
(52287, 28, -4909.63, 394.312, 68.1948, 0, 0, 100),
(52287, 29, -4893.19, 406.209, 64.1292, 0, 0, 100),
(52287, 30, -4886.88, 414.297, 66.1913, 0, 0, 100),
(52287, 31, -4868.07, 437.713, 63.6985, 0, 0, 100),
(52287, 32, -4866.39, 442.678, 60.6982, 0, 0, 100),
(52287, 33, -4864.23, 451.362, 63.333, 0, 0, 100),
(52287, 34, -4868.04, 484.173, 64.9821, 0, 0, 100),
(52287, 35, -4890.5, 513.275, 62.9483, 0, 0, 100),
(52287, 36, -4907.87, 520.664, 62.3634, 0, 0, 100),
(52287, 37, -4915.03, 526.036, 55.9176, 0, 0, 100),
(52287, 38, -4922.98, 532.515, 58.7792, 0, 0, 100),
(52287, 39, -4931.07, 533.199, 62.7698, 0, 0, 100),
(52287, 40, -4946.57, 534.135, 66.2364, 0, 0, 100),
(52287, 41, -4954.49, 537.257, 68.1512, 0, 0, 100),
(52287, 42, -4963.46, 540.731, 68.0801, 0, 0, 100),
(52287, 43, -4972.6, 537.99, 71.1986, 0, 0, 100),
(52287, 44, -4988.84, 531.568, 79.9752, 0, 0, 100),
(52287, 45, -5004.82, 522.7, 86.7006, 0, 0, 100),
(52287, 46, -5016.98, 501.582, 87.5746, 0, 0, 100),
(52287, 47, -5017.08, 486.986, 86.7599, 0, 0, 100),
(52287, 48, -5015.12, 470.392, 87.7964, 7000, 0, 100),
(52287, 49, -4987.51, 441.991, 87.3768, 0, 0, 100),
(52287, 50, -4966.16, 399.949, 85.7143, 0, 0, 100),
(52287, 51, -4967.79, 373.053, 84.0841, 0, 0, 100),
(52287, 52, -4976.34, 326.112, 83.2585, 0, 0, 100),
(52287, 53, -4985.73, 297.476, 81.2298, 0, 0, 100),
(52287, 54, -5008.94, 280.523, 83.8395, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52300;
DELETE FROM `creature_movement` WHERE `id` = 52300;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52300, 22253, 530, 1, 0, 0, -4950.13, 607.741, 73.9309, 1.28475, 300, 300, 7, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52300, 1, -4968.91, 564.907, 75.9853, 0, 0, 100),
(52300, 2, -5006.41, 538.123, 88.0869, 0, 0, 100),
(52300, 3, -5003.73, 525.967, 85.0272, 0, 0, 100),
(52300, 4, -4998.31, 520.347, 87.4771, 0, 0, 100),
(52300, 5, -4974.66, 529.013, 80.4016, 0, 0, 100),
(52300, 6, -4965.26, 535.71, 69.9001, 0, 0, 100),
(52300, 7, -4953.24, 534.212, 66.9916, 0, 0, 100),
(52300, 8, -4945.81, 540.509, 68.4185, 0, 0, 100),
(52300, 9, -4916.48, 543.304, 62.9584, 0, 0, 100),
(52300, 10, -4909.37, 562.154, 60.9092, 0, 0, 100),
(52300, 11, -4904.08, 571.916, 53.4149, 0, 0, 100),
(52300, 12, -4893.83, 573.609, 60.7035, 0, 0, 100),
(52300, 13, -4857.49, 628.26, 67.9248, 0, 0, 100),
(52300, 14, -4857.96, 637.21, 58.7516, 0, 0, 100),
(52300, 15, -4858.25, 647.231, 63.7456, 0, 0, 100),
(52300, 16, -4878.14, 692.736, 64.8189, 0, 0, 100),
(52300, 17, -4896.21, 693.262, 70.1913, 0, 0, 100),
(52300, 18, -4909.97, 677.685, 73.7904, 0, 0, 100),
(52300, 19, -4922.16, 682.219, 67.009, 5000, 0, 100),
(52300, 20, -4931.15, 676.951, 76.6557, 0, 0, 100),
(52300, 21, -4948.81, 680.286, 77.9816, 0, 0, 100),
(52300, 22, -4950.71, 687.781, 73.1102, 0, 0, 100),
(52300, 23, -4960.77, 692.591, 83.6002, 0, 0, 100),
(52300, 24, -4978.56, 709.888, 82.8633, 0, 0, 100),
(52300, 25, -4992.41, 708.658, 82.7535, 0, 0, 100),
(52300, 26, -5007.2, 698.181, 81.6342, 0, 0, 100),
(52300, 27, -4987.95, 706.96, 82.9472, 0, 0, 100),
(52300, 28, -4975.8, 703, 83.1807, 0, 0, 100),
(52300, 29, -4964.81, 686.714, 81.5527, 0, 0, 100),
(52300, 30, -4960.59, 679.869, 73.9321, 0, 0, 100),
(52300, 31, -4955.39, 671.401, 77.7307, 0, 0, 100),
(52300, 32, -4948.79, 653.599, 76.1987, 0, 0, 100),
(52300, 33, -4949.18, 646.004, 67.2491, 0, 0, 100),
(52300, 34, -4951.35, 638.851, 74.4768, 0, 0, 100),
(52300, 35, -4955.18, 608.845, 75.2207, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52325;
DELETE FROM `creature_movement` WHERE `id` = 52325;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52325, 22253, 530, 1, 0, 0, -5083.72, -127.43, 57.864, 0.838646, 25, 25, 0, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52325, 1, -5070.5, -116.068, 60.3276, 0, 0, 100),
(52325, 2, -5064.63, -114.009, 61.5081, 0, 0, 100),
(52325, 3, -5049.1, -96.578, 62.3617, 0, 0, 100),
(52325, 4, -5036.62, -83.5798, 65.4317, 0, 0, 100),
(52325, 5, -5031.11, -80.9396, 62.9053, 0, 0, 100),
(52325, 6, -5024.43, -77.7165, 65.8544, 0, 0, 100),
(52325, 7, -5015.44, -67.7654, 67.6911, 0, 0, 100),
(52325, 8, -5011.91, -61.6118, 64.4614, 0, 0, 100),
(52325, 9, -5004.55, -51.3449, 69.3415, 0, 0, 100),
(52325, 10, -4987.71, -16.9405, 72.5337, 0, 0, 100),
(52325, 11, -4941.3, 26.9794, 63.3981, 0, 0, 100),
(52325, 12, -4968.15, 2.93374, 69.9959, 0, 0, 100),
(52325, 13, -4989.91, -35.4863, 70.6225, 0, 0, 100),
(52325, 14, -4993.03, -60.3458, 64.4538, 0, 0, 100),
(52325, 15, -5000.13, -34.2513, 72.947, 0, 0, 100),
(52325, 16, -5020.78, 4.05346, 77.8839, 0, 0, 100),
(52325, 17, -5041.41, 22.7144, 78.7045, 0, 0, 100),
(52325, 18, -5051.39, 27.8894, 80.906, 0, 0, 100),
(52325, 19, -5087.25, 43.2701, 80.86, 5000, 0, 100),
(52325, 20, -5130.96, 45.7762, 78.4922, 0, 0, 100),
(52325, 21, -5183.18, 13.4039, 75.394, 0, 0, 100),
(52325, 22, -5184.93, -31.5298, 75.3969, 0, 0, 100),
(52325, 23, -5162.59, -81.3342, 72.4468, 0, 0, 100),
(52325, 24, -5139.11, -103.655, 70.2037, 0, 0, 100),
(52325, 25, -5131.11, -112.46, 65.1848, 0, 0, 100),
(52325, 26, -5128.84, -119.186, 63.4676, 0, 0, 100),
(52325, 27, -5112.84, -123.524, 56.825, 0, 0, 100),
(52325, 28, -5101.72, -121.958, 61.7612, 0, 0, 100),
(52325, 29, -5083.13, -126.789, 58.0248, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52340;
DELETE FROM `creature_movement` WHERE `id` = 52340;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52340, 22253, 530, 1, 0, 0, -5177.52, 317.832, 73.6533, 1.51095, 25, 25, 0, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52340, 1, -5172.24, 339.067, 72.7591, 0, 0, 100),
(52340, 2, -5194.78, 377.632, 71.6714, 0, 0, 100),
(52340, 3, -5174.91, 343.633, 72.5204, 0, 0, 100),
(52340, 4, -5177.59, 310.122, 73.8309, 0, 0, 100),
(52340, 5, -5204.93, 269.945, 71.0471, 0, 0, 100),
(52340, 6, -5207.86, 241.571, 72.125, 0, 0, 100),
(52340, 7, -5207.65, 205.291, 72.9319, 5000, 0, 100),
(52340, 8, -5209.45, 175.982, 70.8113, 0, 0, 100),
(52340, 9, -5197.36, 143.342, 70.5089, 0, 0, 100),
(52340, 10, -5190.05, 122.058, 72.7232, 0, 0, 100),
(52340, 11, -5189.06, 105.795, 71.6545, 0, 0, 100),
(52340, 12, -5187.43, 127.455, 73.0665, 0, 0, 100),
(52340, 13, -5205.38, 157.694, 69.6629, 0, 0, 100),
(52340, 14, -5210.47, 184.162, 71.92, 0, 0, 100),
(52340, 15, -5202.51, 269.613, 71.2174, 0, 0, 100),
(52340, 16, -5177.23, 312.174, 73.8397, 0, 0, 100),
(52340, 17, -5175.72, 318.396, 73.8191, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52342;
DELETE FROM `creature_movement` WHERE `id` = 52342;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52342, 22253, 530, 1, 0, 0, -5179.42, 410.113, 73.9961, 0.870851, 25, 25, 0, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52342, 1, -5158.19, 453.516, 77.0531, 0, 0, 100),
(52342, 2, -5106.85, 489.977, 83.1848, 0, 0, 100),
(52342, 3, -5063.63, 481.986, 84.0459, 0, 0, 100),
(52342, 4, -5003.26, 448.784, 87.8264, 5000, 0, 100),
(52342, 5, -4982.92, 423.206, 87.5874, 0, 0, 100),
(52342, 6, -4970.52, 430.573, 86.1256, 0, 0, 100),
(52342, 7, -5012.54, 477.172, 87.4925, 0, 0, 100),
(52342, 8, -5049.72, 500.541, 86.3677, 0, 0, 100),
(52342, 9, -5104.35, 501.47, 84.5852, 0, 0, 100),
(52342, 10, -5178.83, 483.408, 77.0857, 0, 0, 100),
(52342, 11, -5189.78, 493.597, 76.1346, 0, 0, 100),
(52342, 12, -5208.62, 527.071, 70.952, 0, 0, 100),
(52342, 13, -5212.14, 540.172, 61.1858, 0, 0, 100),
(52342, 14, -5215.44, 558.574, 57.1894, 0, 0, 100),
(52342, 15, -5215.94, 567.496, 49.4274, 0, 0, 100),
(52342, 16, -5215.14, 574.766, 52.4856, 0, 0, 100),
(52342, 17, -5212.28, 608.907, 64.7977, 0, 0, 100),
(52342, 18, -5209.83, 614.864, 63.9131, 0, 0, 100),
(52342, 19, -5205.97, 622.809, 67.6596, 0, 0, 100),
(52342, 20, -5210.55, 614.686, 63.8916, 0, 0, 100),
(52342, 21, -5214.54, 574.944, 52.6859, 0, 0, 100),
(52342, 22, -5214.76, 570.365, 49.631, 0, 0, 100),
(52342, 23, -5214.85, 565.998, 50.3977, 0, 0, 100),
(52342, 24, -5216.83, 559.302, 56.2969, 0, 0, 100),
(52342, 25, -5215.86, 535.618, 61.0572, 0, 0, 100),
(52342, 26, -5209.75, 521.28, 72.8178, 0, 0, 100),
(52342, 27, -5198.73, 453.446, 74.0066, 0, 0, 100),
(52342, 28, -5202.41, 418.699, 74.1822, 0, 0, 100),
(52342, 29, -5202.76, 402.493, 74.6313, 0, 0, 100),
(52342, 30, -5197.43, 395.631, 72.9996, 0, 0, 100),
(52342, 31, -5186.57, 396.301, 72.3963, 0, 0, 100),
(52342, 32, -5180.19, 410.189, 73.9565, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52343;
DELETE FROM `creature_movement` WHERE `id` = 52343;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52343, 22253, 530, 1, 0, 0, -5190.18, 541.781, 74.918, 1.51252, 25, 25, 0, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52343, 1, -5195.16, 565.076, 70.8014, 0, 0, 100),
(52343, 2, -5199.07, 575.011, 53.779, 0, 0, 100),
(52343, 3, -5204.02, 580.803, 56.8175, 0, 0, 100),
(52343, 4, -5212.54, 608.597, 64.8808, 0, 0, 100),
(52343, 5, -5209.29, 616.227, 64.1864, 0, 0, 100),
(52343, 6, -5204.23, 623.499, 67.8758, 0, 0, 100),
(52343, 7, -5189.33, 634.353, 71.8611, 0, 0, 100),
(52343, 8, -5204.63, 620.508, 67.1623, 0, 0, 100),
(52343, 9, -5210.89, 615.116, 63.981, 0, 0, 100),
(52343, 10, -5216.26, 609.985, 64.4817, 0, 0, 100),
(52343, 11, -5224.56, 566.855, 47.3043, 0, 0, 100),
(52343, 12, -5227.38, 559.985, 53.0875, 0, 0, 100),
(52343, 13, -5237.9, 537.34, 53.996, 0, 0, 100),
(52343, 14, -5242.06, 530.54, 49.4747, 0, 0, 100),
(52343, 15, -5246.78, 521.55, 52.4744, 0, 0, 100),
(52343, 16, -5254.15, 508.424, 50.4657, 0, 0, 100),
(52343, 17, -5257.34, 494.12, 46.6779, 0, 0, 100),
(52343, 18, -5261.92, 482.807, 51.4289, 0, 0, 100),
(52343, 19, -5262.48, 441.758, 56.2609, 0, 0, 100),
(52343, 20, -5266.51, 420.741, 58.7817, 0, 0, 100),
(52343, 21, -5246.02, 409.898, 66.4211, 0, 0, 100),
(52343, 22, -5245.27, 398.415, 58.819, 0, 0, 100),
(52343, 23, -5241.89, 387.254, 65.8794, 0, 0, 100),
(52343, 24, -5230.67, 386.356, 75.438, 0, 0, 100),
(52343, 25, -5210.38, 392.61, 73.8003, 0, 0, 100),
(52343, 26, -5176.2, 347.621, 72.4521, 0, 0, 100),
(52343, 27, -5176.05, 321.15, 73.6422, 0, 0, 100),
(52343, 28, -5193.8, 284.169, 72.2594, 0, 0, 100),
(52343, 29, -5220.63, 265, 70.3355, 0, 0, 100),
(52343, 30, -5254.17, 271.712, 68.3706, 0, 0, 100),
(52343, 31, -5263.29, 278.414, 72.4956, 0, 0, 100),
(52343, 32, -5276.28, 289.806, 69.974, 0, 0, 100),
(52343, 33, -5282.19, 312.424, 71.9982, 0, 0, 100),
(52343, 34, -5281.32, 321.442, 66.0511, 0, 0, 100),
(52343, 35, -5279.07, 335.62, 72.3181, 0, 0, 100),
(52343, 36, -5264.79, 374.444, 61.7032, 0, 0, 100),
(52343, 37, -5257.16, 400.632, 61.41, 0, 0, 100),
(52343, 38, -5255.25, 407.241, 58.3658, 0, 0, 100),
(52343, 39, -5252.68, 417.787, 64.5274, 0, 0, 100),
(52343, 40, -5229.13, 468.889, 64.4787, 0, 0, 100),
(52343, 41, -5227.99, 474.366, 64.327, 5000, 0, 100),
(52343, 42, -5220.12, 480.275, 72.8876, 0, 0, 100),
(52343, 43, -5189.27, 542.059, 75.0944, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52345;
DELETE FROM `creature_movement` WHERE `id` = 52345;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52345, 22253, 530, 1, 0, 0, -5188.89, 683.875, 69.584, 3.44382, 25, 25, 0, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52345, 1, -5216.09, 677.993, 64.5817, 0, 0, 100),
(52345, 2, -5251.65, 687.341, 50.7603, 0, 0, 100),
(52345, 3, -5261, 709.617, 44.49, 0, 0, 100),
(52345, 4, -5258.85, 714.803, 39.5754, 0, 0, 100),
(52345, 5, -5244.96, 730.485, 42.0895, 0, 0, 100),
(52345, 6, -5233.94, 733.953, 43.8545, 0, 0, 100),
(52345, 7, -5225.17, 734.489, 52.6141, 0, 0, 100),
(52345, 8, -5212.52, 732.194, 52.0605, 0, 0, 100),
(52345, 9, -5205.47, 733.647, 55.5196, 0, 0, 100),
(52345, 10, -5183.41, 730.609, 62.5595, 0, 0, 100),
(52345, 11, -5169.93, 732.124, 70.4006, 0, 0, 100),
(52345, 12, -5150.32, 739.79, 72.5473, 0, 0, 100),
(52345, 13, -5143, 730.138, 71.6786, 0, 0, 100),
(52345, 14, -5136.03, 725.057, 77.3835, 0, 0, 100),
(52345, 15, -5121.17, 713.447, 79.0246, 0, 0, 100),
(52345, 16, -5098.09, 693.698, 85.0988, 0, 0, 100),
(52345, 17, -5082.65, 679.747, 86.765, 0, 0, 100),
(52345, 18, -5056.45, 680.202, 86.8141, 0, 0, 100),
(52345, 19, -5046.07, 681.091, 85.1079, 0, 0, 100),
(52345, 20, -5017.48, 683.72, 82.1206, 0, 0, 100),
(52345, 21, -5010.73, 689.032, 81.5511, 0, 0, 100),
(52345, 22, -5015.49, 692.283, 81.3871, 0, 0, 100),
(52345, 23, -5029.65, 685.605, 82.3911, 0, 0, 100),
(52345, 24, -5060.28, 683.178, 86.1562, 0, 0, 100),
(52345, 25, -5073.24, 678.661, 86.8921, 0, 0, 100),
(52345, 26, -5094.85, 679.147, 85.3696, 0, 0, 100),
(52345, 27, -5106.98, 672.888, 85.3975, 0, 0, 100),
(52345, 28, -5142.35, 666.693, 81.2582, 0, 0, 100),
(52345, 29, -5189.73, 683.031, 70.062, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 54840;
DELETE FROM `creature_movement` WHERE `id` = 54840;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (54840, 15242, 530, 1, 0, 0, 156.903, 2554.78, 170.895, 5.15224, 300, 300, 0, 0, 5400, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(54840, 1, 156.903, 2554.78, 170.895, 0, 0, 100),
(54840, 2, 52.5168, 2602.82, 139.784, 0, 0, 100),
(54840, 3, 42.1015, 2627.06, 139.784, 0, 0, 100),
(54840, 4, 37.1733, 2663.73, 139.784, 0, 0, 100),
(54840, 5, 62.9193, 2687.96, 139.784, 0, 0, 100),
(54840, 6, 96.1871, 2688.14, 148.423, 0, 0, 100),
(54840, 7, 129.818, 2690.79, 151.256, 0, 0, 100),
(54840, 8, 165.689, 2715.4, 170.895, 0, 0, 100),
(54840, 9, 199.775, 2744.93, 170.895, 0, 0, 100),
(54840, 10, 246.086, 2761.15, 170.895, 0, 0, 100),
(54840, 11, 295.09, 2757.99, 170.895, 0, 0, 100),
(54840, 12, 309.347, 2726.09, 170.895, 0, 0, 100),
(54840, 13, 303.845, 2682.59, 170.895, 0, 0, 100),
(54840, 14, 289.31, 2650.87, 170.895, 0, 0, 100),
(54840, 15, 261.274, 2618.83, 170.895, 0, 0, 100),
(54840, 16, 233.644, 2579, 170.895, 0, 0, 100),
(54840, 17, 199.337, 2546.23, 170.895, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 54842;
DELETE FROM `creature_movement` WHERE `id` = 54842;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (54842, 15242, 530, 1, 0, 0, 263.597, 2694.82, 169.731, 1.23918, 300, 300, 0, 0, 5400, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(54842, 1, 263.597, 2694.82, 169.731, 0, 0, 100),
(54842, 2, 184.086, 2784.9, 154.453, 0, 0, 100),
(54842, 3, 154.281, 2754.79, 154.37, 0, 0, 100),
(54842, 4, 127.031, 2740.49, 154.37, 0, 0, 100),
(54842, 5, 118.044, 2706.51, 154.37, 0, 0, 100),
(54842, 6, 115.758, 2669.39, 158.676, 0, 0, 100),
(54842, 7, 131.431, 2622.53, 162.148, 0, 0, 100),
(54842, 8, 154.824, 2607.21, 164.481, 0, 0, 100),
(54842, 9, 176.328, 2571.34, 168.564, 0, 0, 100),
(54842, 10, 221.627, 2559.68, 172.12, 0, 0, 100),
(54842, 11, 245.392, 2593.42, 169.898, 0, 0, 100),
(54842, 12, 251.007, 2617.75, 169.731, 0, 0, 100),
(54842, 13, 263.058, 2644.61, 169.731, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 57537;
DELETE FROM `creature_movement` WHERE `id` = 57537;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (57537, 16580, 530, 1, 0, 0, -1339.9, 2370.44, 89.0748, 4.01511, 300, 300, 5, 0, 9156, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(57537, 1, -1334.61, 2361.44, 88.952, 0, 0, 100),
(57537, 2, -1326.63, 2356.51, 88.9537, 0, 0, 100),
(57537, 3, -1319.9, 2360.74, 88.9537, 0, 0, 100),
(57537, 4, -1316.27, 2374.49, 88.5711, 0, 0, 100),
(57537, 5, -1311.84, 2380.79, 86.4663, 0, 0, 100),
(57537, 6, -1305.65, 2385.17, 83.8705, 0, 0, 100),
(57537, 7, -1300.34, 2386.99, 81.7855, 60000, 0, 100),
(57537, 8, -1314.47, 2380.93, 87.1559, 0, 0, 100),
(57537, 9, -1317.66, 2376, 88.5791, 0, 0, 100),
(57537, 10, -1321.38, 2374.12, 88.873, 0, 0, 100),
(57537, 11, -1323.15, 2376.17, 88.8695, 30000, 0, 100),
(57537, 12, -1322.26, 2373.85, 88.9045, 0, 0, 100),
(57537, 13, -1318.56, 2374.65, 88.7012, 0, 0, 100),
(57537, 14, -1313.77, 2380.42, 87.0546, 0, 0, 100),
(57537, 15, -1307.63, 2384.66, 84.5135, 0, 0, 100),
(57537, 16, -1299.73, 2387.06, 81.5404, 60000, 0, 100),
(57537, 17, -1313.26, 2383.31, 86.4903, 0, 0, 100),
(57537, 18, -1322.3, 2388.47, 88.4279, 0, 0, 100),
(57537, 19, -1327.29, 2387.27, 88.8594, 0, 0, 100),
(57537, 20, -1331.12, 2383.82, 88.9524, 0, 0, 100),
(57537, 21, -1333.59, 2377.26, 88.9512, 0, 0, 100),
(57537, 22, -1340.06, 2370.25, 88.9512, 5000, 0, 100);

-- not sniff
DELETE FROM `creature` WHERE `guid` = 59461;
DELETE FROM `creature_movement` WHERE `id` = 59461;
DELETE FROM `creature_linking` WHERE `master_guid` = 59461;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (59461, 17058, 530, 1, 0, 0, -553.303, 4868.13, 37.3653, 3.76144, 300, 300, 0, 0, 4422, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(59461, 1, -577.623, 4854.53, 38.9038, 0, 0, 100),
(59461, 2, -597.367, 4839.65, 38.1522, 0, 0, 100),
(59461, 3, -606.585, 4788.28, 38.1659, 0, 0, 100),
(59461, 4, -587.563, 4764.81, 38.698, 0, 0, 100),
(59461, 5, -562.352, 4753.25, 36.3512, 0, 0, 100),
(59461, 6, -524.991, 4765.54, 31.548, 0, 0, 100),
(59461, 7, -533.388, 4810.53, 34.3051, 0, 0, 100),
(59461, 8, -557.46, 4864.24, 37.6268, 0, 0, 100);
INSERT INTO `creature_linking` VALUES (58902, 59461, 515),(58903, 59461, 515);

-- not sniff
DELETE FROM `creature` WHERE `guid` = 59464;
DELETE FROM `creature_movement` WHERE `id` = 59464;
DELETE FROM `creature_linking` WHERE `master_guid` = 59464;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (59464, 17058, 530, 1, 0, 0, -448.7525, 4866.5229, 30.5515, 4.58302, 300, 300, 5, 0, 4422, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(59464, 1, -455.028, 4862.69, 30.249, 0, 0, 100),
(59464, 2, -489.461, 4881.56, 31.7768, 0, 0, 100),
(59464, 3, -519.25, 4890.51, 35.25, 0, 0, 100),
(59464, 4, -540.916, 4880.72, 36.8381, 0, 0, 100),
(59464, 5, -552.935, 4858, 37.523, 0, 0, 100),
(59464, 6, -523.668, 4806.49, 33.0417, 0, 0, 100),
(59464, 7, -487.419, 4805.92, 30.0893, 0, 0, 100),
(59464, 8, -477.182, 4859.69, 30.5836, 0, 0, 100),
(59464, 9, -439.155, 4854.88, 28.7576, 0, 0, 100);
INSERT INTO `creature_linking` VALUES (58904, 59464, 515),(58905, 59464, 515);

DELETE FROM `creature` WHERE `guid` = 60623;
DELETE FROM `creature_movement` WHERE `id` = 60623;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60623, 17159, 530, 1, 0, 0, -2697.92, 7040.53, -6.81427, 0.620493, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60623, 1, -2699.19, 7046.15, -6.72261, 0, 0, 100),
(60623, 2, -2652.56, 7054.38, -4.14312, 0, 0, 100),
(60623, 3, -2640.92, 7051.01, -3.1684, 0, 0, 100),
(60623, 4, -2597.72, 7038.06, -3.39875, 0, 0, 100),
(60623, 5, -2560.62, 7034.7, -6.08359, 0, 0, 100),
(60623, 6, -2582.92, 7035.6, -4.16691, 0, 0, 100),
(60623, 7, -2600.25, 7038.57, -3.29607, 0, 0, 100),
(60623, 8, -2644.61, 7052.84, -3.56308, 0, 0, 100),
(60623, 9, -2670.99, 7052.69, -6.61628, 0, 0, 100),
(60623, 10, -2686.38, 7051.27, -7.21413, 0, 0, 100),
(60623, 11, -2714.87, 7039.57, -7.28418, 0, 0, 100),
(60623, 12, -2774.95, 7019.6, -9.20929, 0, 0, 100),
(60623, 13, -2817.17, 7048.18, -10.384, 0, 0, 100),
(60623, 14, -2841.28, 7071, -11.8278, 0, 0, 100),
(60623, 15, -2856.21, 7106.35, -8.31073, 0, 0, 100),
(60623, 16, -2856.88, 7107.5, -8.30752, 0, 0, 100),
(60623, 17, -2913.6, 7150.27, -2.63973, 0, 0, 100),
(60623, 18, -2912.95, 7162.03, -2.03519, 0, 0, 100),
(60623, 19, -2918.51, 7209.46, 0.671317, 0, 0, 100),
(60623, 20, -2939.67, 7247, -0.275261, 0, 0, 100),
(60623, 21, -2918.25, 7280.75, 1.04716, 0, 0, 100),
(60623, 22, -2923.07, 7316.55, 6.041, 0, 0, 100),
(60623, 23, -2928.34, 7351.84, 9.68397, 0, 0, 100),
(60623, 24, -2940.79, 7370.77, 11.7667, 0, 0, 100),
(60623, 25, -2969.65, 7368.66, 12.1921, 0, 0, 100),
(60623, 26, -2958.46, 7369.96, 11.56, 0, 0, 100),
(60623, 27, -2929.73, 7354.36, 10.3242, 0, 0, 100),
(60623, 28, -2926.88, 7340.73, 7.13377, 0, 0, 100),
(60623, 29, -2916.91, 7290.31, 1.31788, 0, 0, 100),
(60623, 30, -2940.73, 7251.24, -0.217119, 0, 0, 100),
(60623, 31, -2924.56, 7226.65, -0.303007, 0, 0, 100),
(60623, 32, -2913.51, 7187.51, -1.55421, 0, 0, 100),
(60623, 33, -2913.74, 7153.7, -2.41035, 0, 0, 100),
(60623, 34, -2887.06, 7125.86, -7.04565, 0, 0, 100),
(60623, 35, -2874.97, 7117.33, -8.10659, 0, 0, 100),
(60623, 36, -2847.94, 7079.75, -11.8965, 0, 0, 100),
(60623, 37, -2820.66, 7051.48, -11.4577, 0, 0, 100),
(60623, 38, -2794.93, 7026.31, -9.4885, 0, 0, 100),
(60623, 39, -2748.77, 7016.78, -7.17564, 0, 0, 100),
(60623, 40, -2745.18, 7016.58, -6.9723, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 60624;
DELETE FROM `creature_movement` WHERE `id` = 60624;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60624, 17159, 530, 1, 0, 0, -2818.25, 7048.97, -11.0032, 2.36344, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60624, 1, -2849.77, 7110.41, -6.04631, 0, 0, 100),
(60624, 2, -2853.4, 7115.6, -4.74917, 0, 0, 100),
(60624, 3, -2867.93, 7070.51, -16.4876, 0, 0, 100),
(60624, 4, -2868.11, 7070.28, -16.5513, 0, 0, 100),
(60624, 5, -2869.97, 7067.74, -17.7383, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 60625;
DELETE FROM `creature_movement` WHERE `id` = 60625;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60625, 17159, 530, 1, 0, 0, -2784.52, 7907.15, -34.792, 5.0363, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60625, 1, -2787.35, 7916.05, -33.4146, 0, 0, 100),
(60625, 2, -2780.46, 7894.97, -34.4262, 0, 0, 100),
(60625, 3, -2748.48, 7851.86, -34.2036, 0, 0, 100),
(60625, 4, -2720.69, 7820.76, -36.8919, 0, 0, 100),
(60625, 5, -2690.3, 7811.29, -38.5551, 0, 0, 100),
(60625, 6, -2649.12, 7807.87, -40.854, 0, 0, 100),
(60625, 7, -2623.06, 7793.93, -40.3392, 0, 0, 100),
(60625, 8, -2591.73, 7809.87, -42.472, 0, 0, 100),
(60625, 9, -2566.32, 7816.19, -44.3459, 0, 0, 100),
(60625, 10, -2528.7, 7814.8, -42.8816, 0, 0, 100),
(60625, 11, -2487.97, 7822.7, -42.9916, 0, 0, 100),
(60625, 12, -2462.1, 7847.09, -45.9661, 0, 0, 100),
(60625, 13, -2449.39, 7878.37, -48.3283, 0, 0, 100),
(60625, 14, -2448.97, 7879.2, -48.8006, 0, 0, 100),
(60625, 15, -2431.34, 7891.77, -43.4499, 0, 0, 100),
(60625, 16, -2375.98, 7913.51, -43.6852, 0, 0, 100),
(60625, 17, -2310.78, 7887.12, -36.8409, 0, 0, 100),
(60625, 18, -2283.05, 7915.84, -29.754, 0, 0, 100),
(60625, 19, -2251.81, 7938.25, -24.9049, 0, 0, 100),
(60625, 20, -2222.4, 7949.99, -19.7619, 0, 0, 100),
(60625, 21, -2192.21, 7979.01, -16.9947, 0, 0, 100),
(60625, 22, -2211.39, 7955.15, -19.1505, 0, 0, 100),
(60625, 23, -2242.14, 7944.2, -23.6721, 0, 0, 100),
(60625, 24, -2277.09, 7921.06, -28.8692, 0, 0, 100),
(60625, 25, -2309.44, 7888.42, -36.4019, 0, 0, 100),
(60625, 26, -2309.58, 7888.33, -36.6268, 0, 0, 100),
(60625, 27, -2357.12, 7912.04, -43.7763, 0, 0, 100),
(60625, 28, -2429.62, 7905.91, -46.0448, 0, 0, 100),
(60625, 29, -2447.69, 7882.33, -49.3318, 0, 0, 100),
(60625, 30, -2460.39, 7849.98, -46.2803, 0, 0, 100),
(60625, 31, -2480.56, 7826.22, -42.9764, 0, 0, 100),
(60625, 32, -2516.25, 7814.84, -43.0522, 0, 0, 100),
(60625, 33, -2543.08, 7816.94, -44.3301, 0, 0, 100),
(60625, 34, -2575.07, 7815.85, -43.5446, 0, 0, 100),
(60625, 35, -2609.46, 7786, -40.7551, 0, 0, 100),
(60625, 36, -2610.37, 7785.43, -40.4412, 0, 0, 100),
(60625, 37, -2686.48, 7810.39, -39.6463, 0, 0, 100),
(60625, 38, -2702.6, 7814.2, -37.3395, 0, 0, 100),
(60625, 39, -2744.66, 7847.78, -34.8428, 0, 0, 100),
(60625, 40, -2765.45, 7870.13, -34.588, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 60626;
DELETE FROM `creature_movement` WHERE `id` = 60626;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60626, 17159, 530, 1, 0, 0, -2284.43, 7761.18, -25.4335, 3.67201, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60626, 1, -2280.72, 7763.38, -25.6697, 0, 0, 100),
(60626, 2, -2294.72, 7756.15, -24.4967, 0, 0, 100),
(60626, 3, -2332.21, 7745.39, -24.8627, 0, 0, 100),
(60626, 4, -2379.23, 7741, -25.1918, 0, 0, 100),
(60626, 5, -2406.14, 7728.46, -20.3516, 0, 0, 100),
(60626, 6, -2441.56, 7728.54, -20.2605, 0, 0, 100),
(60626, 7, -2484.31, 7739.45, -28.8663, 0, 0, 100),
(60626, 8, -2524.41, 7733.47, -28.9243, 0, 0, 100),
(60626, 9, -2546.26, 7725.07, -29.3239, 0, 0, 100),
(60626, 10, -2602.39, 7710.53, -26.82, 0, 0, 100),
(60626, 11, -2638.84, 7713.83, -29.1483, 0, 0, 100),
(60626, 12, -2677.24, 7732.9, -28.2003, 0, 0, 100),
(60626, 13, -2679.58, 7734.63, -28.2634, 0, 0, 100),
(60626, 14, -2735.68, 7768.69, -28.9282, 0, 0, 100),
(60626, 15, -2772.9, 7788.44, -24.8891, 0, 0, 100),
(60626, 16, -2806.41, 7824.43, -21.4487, 0, 0, 100),
(60626, 17, -2774.59, 7789.53, -24.3631, 0, 0, 100),
(60626, 18, -2745.76, 7774.81, -27.8452, 0, 0, 100),
(60626, 19, -2708.08, 7749.8, -28.5808, 0, 0, 100),
(60626, 20, -2693.04, 7741.72, -27.8332, 0, 0, 100),
(60626, 21, -2662.97, 7723.49, -28.9312, 0, 0, 100),
(60626, 22, -2614.3, 7709.56, -26.323, 0, 0, 100),
(60626, 23, -2585.73, 7712.58, -28.5963, 0, 0, 100),
(60626, 24, -2544.18, 7725.93, -29.3326, 0, 0, 100),
(60626, 25, -2487.35, 7739.93, -29.4818, 0, 0, 100),
(60626, 26, -2452.09, 7729.26, -20.8055, 0, 0, 100),
(60626, 27, -2411.31, 7727.67, -20.1981, 0, 0, 100),
(60626, 28, -2386.72, 7738.65, -24.8811, 0, 0, 100),
(60626, 29, -2373.2, 7741.64, -24.543, 0, 0, 100),
(60626, 30, -2328.39, 7745.79, -24.881, 0, 0, 100),
(60626, 31, -2313.25, 7747.29, -24.6969, 0, 0, 100),
(60626, 32, -2253.86, 7779.07, -25.1706, 0, 0, 100),
(60626, 33, -2241, 7803.94, -24.3539, 0, 0, 100),
(60626, 34, -2239.2, 7855.42, -22.9922, 0, 0, 100),
(60626, 35, -2218.54, 7885.22, -21.9542, 0, 0, 100),
(60626, 36, -2200.6, 7920.25, -15.3881, 0, 0, 100),
(60626, 37, -2215.62, 7889.39, -21.1013, 0, 0, 100),
(60626, 38, -2228.36, 7876.08, -22.3414, 0, 0, 100),
(60626, 39, -2237.68, 7837.1, -24.4754, 0, 0, 100),
(60626, 40, -2241.28, 7800.16, -24.7465, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 60628;
DELETE FROM `creature_movement` WHERE `id` = 60628;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60628, 17159, 530, 1, 0, 0, -2014.98, 7375.31, -33.0574, 3.00439, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60628, 1, -2004.87, 7373.88, -34.1128, 0, 0, 100),
(60628, 2, -1950.51, 7356.81, -29.6129, 0, 0, 100),
(60628, 3, -1915.49, 7356.87, -20.4155, 0, 0, 100),
(60628, 4, -1905.86, 7366.1, -17.9905, 0, 0, 100),
(60628, 5, -1888.39, 7406.71, -16.5958, 0, 0, 100),
(60628, 6, -1875.85, 7451.95, -11.5493, 0, 0, 100),
(60628, 7, -1881.04, 7481.28, -7.58496, 0, 0, 100),
(60628, 8, -1881.16, 7502.43, -5.84294, 0, 0, 100),
(60628, 9, -1877.22, 7539.67, -6.54656, 0, 0, 100),
(60628, 10, -1875.31, 7547.38, -6.69344, 0, 0, 100),
(60628, 11, -1849.42, 7550.84, -6.90071, 0, 0, 100),
(60628, 12, -1863.48, 7549.18, -6.10377, 0, 0, 100),
(60628, 13, -1878.41, 7533.93, -5.99798, 0, 0, 100),
(60628, 14, -1881.63, 7490.45, -6.484, 0, 0, 100),
(60628, 15, -1875.7, 7453.97, -10.9896, 0, 0, 100),
(60628, 16, -1881.78, 7432.24, -15.9816, 0, 0, 100),
(60628, 17, -1890.58, 7396.35, -17.3126, 0, 0, 100),
(60628, 18, -1912.45, 7359.35, -19.5638, 0, 0, 100),
(60628, 19, -1946.6, 7355.85, -28.7343, 0, 0, 100),
(60628, 20, -1969.85, 7365.98, -33.9626, 0, 0, 100),
(60628, 21, -2015.57, 7375.5, -32.8667, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 60629;
DELETE FROM `creature_movement` WHERE `id` = 60629;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60629, 17159, 530, 1, 0, 0, -2180.41, 7449.87, -34.7481, 6.23082, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60629, 1, -2186.9, 7459.91, -34.1405, 0, 0, 100),
(60629, 2, -2192.76, 7485.83, -30.83, 0, 0, 100),
(60629, 3, -2206.29, 7509.41, -27.3222, 0, 0, 100),
(60629, 4, -2214.38, 7538.71, -23.7216, 0, 0, 100),
(60629, 5, -2238.79, 7576.9, -20.1749, 0, 0, 100),
(60629, 6, -2220.22, 7608.72, -17.5443, 0, 0, 100),
(60629, 7, -2195.22, 7631.71, -23.9246, 0, 0, 100),
(60629, 8, -2160.09, 7675.21, -29.2834, 0, 0, 100),
(60629, 9, -2153.48, 7697.49, -28.7872, 0, 0, 100),
(60629, 10, -2128.12, 7753.73, -26.4836, 0, 0, 100),
(60629, 11, -2104.16, 7774.55, -30.0355, 0, 0, 100),
(60629, 12, -2091.94, 7807.08, -25.001, 0, 0, 100),
(60629, 13, -2069.59, 7844.85, -26.9747, 0, 0, 100),
(60629, 14, -2045.77, 7861.25, -33.6792, 0, 0, 100),
(60629, 15, -2020.79, 7880.97, -34.2888, 0, 0, 100),
(60629, 16, -1980.8, 7886.23, -30.3641, 0, 0, 100),
(60629, 17, -2008.43, 7884.82, -33.9738, 0, 0, 100),
(60629, 18, -2039.76, 7865.81, -33.8472, 0, 0, 100),
(60629, 19, -2068.07, 7846.31, -27.0476, 0, 0, 100),
(60629, 20, -2075.21, 7835.3, -24.5461, 0, 0, 100),
(60629, 21, -2100.69, 7780.7, -29.6921, 0, 0, 100),
(60629, 22, -2121.73, 7760.1, -26.2445, 0, 0, 100),
(60629, 23, -2142.56, 7726.57, -29.0037, 0, 0, 100),
(60629, 24, -2155.63, 7689.22, -29.4382, 0, 0, 100),
(60629, 25, -2182.45, 7644.23, -23.2641, 0, 0, 100),
(60629, 26, -2213.64, 7616.93, -18.4043, 0, 0, 100),
(60629, 27, -2232.49, 7591.38, -19.7, 0, 0, 100),
(60629, 28, -2220.85, 7552.62, -22.8694, 0, 0, 100),
(60629, 29, -2209.28, 7516.46, -26.5289, 0, 0, 100),
(60629, 30, -2194.16, 7488.48, -30.084, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 60631;
DELETE FROM `creature_movement` WHERE `id` = 60631;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60631, 17159, 530, 1, 0, 0, -1590.26, 7181.33, 6.30724, 2.19948, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60631, 1, -1577.79, 7221.41, 10.1846, 0, 0, 100),
(60631, 2, -1572.5, 7211.93, 11.5095, 0, 0, 100),
(60631, 3, -1561.53, 7158.38, 9.98904, 0, 0, 100),
(60631, 4, -1558.44, 7119.1, 10.5951, 0, 0, 100),
(60631, 5, -1541.91, 7085.05, 7.42896, 0, 0, 100),
(60631, 6, -1517.06, 7067.57, 9.12099, 0, 0, 100),
(60631, 7, -1509.93, 7059.7, 10.2761, 0, 0, 100),
(60631, 8, -1522.75, 7020.79, 8.50609, 0, 0, 100),
(60631, 9, -1544.64, 6987.35, 2.57634, 0, 0, 100),
(60631, 10, -1578.69, 6978.2, -3.74432, 0, 0, 100),
(60631, 11, -1612.54, 6984.83, 0.667369, 0, 0, 100),
(60631, 12, -1620.05, 6987.15, 1.16199, 0, 0, 100),
(60631, 13, -1650.73, 7031.96, 0.438563, 0, 0, 100),
(60631, 14, -1670.47, 7067.2, 5.30751, 0, 0, 100),
(60631, 15, -1656.32, 7109.07, 3.37348, 0, 0, 100),
(60631, 16, -1639.42, 7138.07, 4.09833, 0, 0, 100),
(60631, 17, -1621.78, 7173.72, 3.08512, 0, 0, 100),
(60631, 18, -1639.04, 7213.13, 2.92288, 0, 0, 100),
(60631, 19, -1647.37, 7220.92, 2.54324, 0, 0, 100),
(60631, 20, -1698.52, 7260.93, 3.90398, 0, 0, 100),
(60631, 21, -1704.04, 7286.87, 2.56103, 0, 0, 100),
(60631, 22, -1688.93, 7311.87, -0.723447, 0, 0, 100),
(60631, 23, -1657.77, 7295.31, -1.35259, 0, 0, 100),
(60631, 24, -1628.13, 7273.82, 0.463027, 0, 0, 100),
(60631, 25, -1612.2, 7251.29, 1.9177, 0, 0, 100),
(60631, 26, -1592.45, 7242.73, 5.40348, 0, 0, 100);


DELETE FROM `creature` WHERE `guid` = 60634;
DELETE FROM `creature_movement` WHERE `id` = 60634;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60634, 17159, 530, 1, 0, 0, -1358.4, 7628.8, 3.10802, 2.95013, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60634, 1, -1302.2, 7624.8, 7.27641, 0, 0, 100),
(60634, 2, -1312.92, 7646.28, 2.75414, 0, 0, 100),
(60634, 3, -1351.89, 7654.13, -1.50575, 0, 0, 100),
(60634, 4, -1384.57, 7674.83, -3.9754, 0, 0, 100),
(60634, 5, -1412.67, 7664.15, -5.48174, 0, 0, 100),
(60634, 6, -1448.35, 7637.43, -8.55427, 0, 0, 100),
(60634, 7, -1465.68, 7622.82, -4.68271, 0, 0, 100),
(60634, 8, -1497.25, 7608.44, -5.35367, 0, 0, 100),
(60634, 9, -1527.66, 7610.79, -6.17537, 0, 0, 100),
(60634, 10, -1553.62, 7629.85, -7.1465, 0, 0, 100),
(60634, 11, -1548.9, 7621.21, -6.40514, 0, 0, 100),
(60634, 12, -1523.32, 7610.35, -5.95379, 0, 0, 100),
(60634, 13, -1496.56, 7608.36, -5.17357, 0, 0, 100),
(60634, 14, -1455.15, 7631.62, -8.05303, 0, 0, 100),
(60634, 15, -1438.39, 7645.88, -6.15033, 0, 0, 100),
(60634, 16, -1388.24, 7674.98, -4.91215, 0, 0, 100),
(60634, 17, -1360.62, 7660.41, -2.25118, 0, 0, 100),
(60634, 18, -1315.39, 7647.7, 2.01676, 0, 0, 100),
(60634, 19, -1294.13, 7627.17, 7.62488, 0, 0, 100),
(60634, 20, -1318.05, 7622.47, 6.7452, 0, 0, 100),
(60634, 21, -1354.27, 7606.45, 6.54479, 0, 0, 100),
(60634, 22, -1355.29, 7591.74, 4.81025, 0, 0, 100),
(60634, 23, -1366.01, 7550.52, 7.9466, 0, 0, 100),
(60634, 24, -1371.22, 7524.03, 8.54513, 0, 0, 100),
(60634, 25, -1387.27, 7497.75, 6.30606, 0, 0, 100),
(60634, 26, -1416.09, 7461.8, 7.1572, 0, 0, 100),
(60634, 27, -1427.4, 7451.23, 5.88918, 0, 0, 100),
(60634, 28, -1448.48, 7443.72, 4.47433, 0, 0, 100),
(60634, 29, -1481.76, 7480.54, 0.152386, 0, 0, 100),
(60634, 30, -1484.66, 7506.04, 0.806015, 0, 0, 100),
(60634, 31, -1490.57, 7537.37, -0.523784, 0, 0, 100),
(60634, 32, -1500.6, 7549.92, -2.28925, 0, 0, 100),
(60634, 33, -1494.56, 7550.22, -1.37043, 0, 0, 100),
(60634, 34, -1488.23, 7526.05, 0.716043, 0, 0, 100),
(60634, 35, -1483.13, 7485.4, -0.794101, 0, 0, 100),
(60634, 36, -1473.74, 7452.77, 4.07859, 0, 0, 100),
(60634, 37, -1440.16, 7441.42, 5.66684, 0, 0, 100),
(60634, 38, -1419.77, 7458.3, 6.48802, 0, 0, 100),
(60634, 39, -1399.42, 7482, 6.463, 0, 0, 100),
(60634, 40, -1374.36, 7515.16, 7.70086, 0, 0, 100),
(60634, 41, -1371.03, 7524.6, 8.4559, 0, 0, 100),
(60634, 42, -1358.87, 7574.05, 4.02547, 0, 0, 100),
(60634, 43, -1355.66, 7600.69, 5.7156, 0, 0, 100),
(60634, 44, -1350.83, 7607.97, 7.0404, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 60641;
DELETE FROM `creature_movement` WHERE `id` = 60641;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (60641, 17159, 530, 1, 0, 0, -804.637, 7327.55, 42.4553, 2.35896, 300, 300, 0, 0, 4713, 2790, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(60641, 1, -796.466, 7319.42, 41.3488, 0, 0, 100),
(60641, 2, -782.976, 7280.29, 41.9657, 0, 0, 100),
(60641, 3, -785.226, 7252.18, 37.7071, 0, 0, 100),
(60641, 4, -785.889, 7246.4, 37.3716, 0, 0, 100),
(60641, 5, -773.55, 7182.71, 39.0698, 0, 0, 100),
(60641, 6, -760.294, 7165.35, 43.3731, 0, 0, 100),
(60641, 7, -771.636, 7179.2, 39.8296, 0, 0, 100),
(60641, 8, -776.936, 7200.37, 36.9371, 0, 0, 100),
(60641, 9, -783.901, 7233.56, 37.5506, 0, 0, 100),
(60641, 10, -782.23, 7276.15, 41.576, 0, 0, 100),
(60641, 11, -790.42, 7309.82, 41.5366, 0, 0, 100),
(60641, 12, -822.085, 7345.25, 43.0487, 0, 0, 100),
(60641, 13, -829.459, 7375.8, 38.8758, 0, 0, 100),
(60641, 14, -825.969, 7416.76, 44.2904, 0, 0, 100),
(60641, 15, -817.263, 7446.91, 47.1178, 0, 0, 100),
(60641, 16, -783.212, 7481.06, 54.1985, 0, 0, 100),
(60641, 17, -823.273, 7493.72, 53.8566, 0, 0, 100),
(60641, 18, -849.286, 7491.1, 49.7493, 0, 0, 100),
(60641, 19, -895.934, 7489.5, 42.3, 0, 0, 100),
(60641, 20, -913.504, 7494.48, 40.3055, 0, 0, 100),
(60641, 21, -958.111, 7485.92, 37.588, 0, 0, 100),
(60641, 22, -988.47, 7483.4, 35.718, 0, 0, 100),
(60641, 23, -1003.6, 7481.16, 33.5972, 0, 0, 100),
(60641, 24, -1030.03, 7474.59, 34.1522, 0, 0, 100),
(60641, 25, -1072.28, 7432.27, 34.0943, 0, 0, 100),
(60641, 26, -1096.25, 7389.75, 33.7733, 0, 0, 100),
(60641, 27, -1083.53, 7413.6, 34.3951, 0, 0, 100),
(60641, 28, -1055.53, 7455.42, 33.838, 0, 0, 100),
(60641, 29, -1055.56, 7455.42, 33.8364, 0, 0, 100),
(60641, 30, -1029.48, 7475.05, 34.0355, 0, 0, 100),
(60641, 31, -993.305, 7482.85, 34.8446, 0, 0, 100),
(60641, 32, -977.843, 7483.7, 37.2403, 0, 0, 100),
(60641, 33, -920.292, 7495.63, 39.3981, 0, 0, 100),
(60641, 34, -901.524, 7491.1, 41.6258, 0, 0, 100),
(60641, 35, -854.584, 7490.36, 48.7025, 0, 0, 100),
(60641, 36, -830.469, 7494.35, 52.8325, 0, 0, 100),
(60641, 37, -799.774, 7487.46, 54.225, 0, 0, 100),
(60641, 38, -815.931, 7450.18, 47.9286, 0, 0, 100),
(60641, 39, -821.709, 7433.38, 45.0974, 0, 0, 100),
(60641, 40, -829.373, 7387.78, 39.0579, 0, 0, 100),
(60641, 41, -825.997, 7351.64, 42.3926, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 63749;
DELETE FROM `creature_movement` WHERE `id` = 63749;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (63749, 18037, 530, 1, 0, 0, -785.01, 8851.32, 184.643, 1.48353, 300, 300, 0, 0, 4892, 2846, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(63749, 1, -755.284, 8839.95, 183.132, 0, 0, 100),
(63749, 2, -742.631, 8819.84, 183.815, 0, 0, 100),
(63749, 3, -723.057, 8807.38, 184.347, 0, 0, 100),
(63749, 4, -664.986, 8798.29, 196.84, 10000, 0, 100),
(63749, 5, -695.049, 8806.12, 187.854, 0, 0, 100),
(63749, 6, -729.287, 8808.48, 183.762, 0, 0, 100),
(63749, 7, -765.167, 8840.99, 183.377, 0, 0, 100),
(63749, 8, -801.517, 8831.81, 182.903, 0, 0, 100),
(63749, 9, -812.759, 8812.95, 183.211, 0, 0, 100),
(63749, 10, -830.129, 8804.83, 184.361, 0, 0, 100),
(63749, 11, -839.459, 8785.45, 179.411, 0, 0, 100),
(63749, 12, -834.182, 8764.46, 178.806, 0, 0, 100),
(63749, 13, -809.979, 8745.99, 180.192, 0, 0, 100),
(63749, 14, -834.534, 8763.89, 178.803, 0, 0, 100),
(63749, 15, -838.613, 8783.27, 179.054, 0, 0, 100),
(63749, 16, -835.289, 8798.41, 182.606, 0, 0, 100),
(63749, 17, -819.008, 8809.56, 183.982, 0, 0, 100),
(63749, 18, -785.075, 8850.92, 184.655, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 63768;
DELETE FROM `creature_movement` WHERE `id` = 63768;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (63768, 18037, 530, 1, 0, 0, -1036.35, 8800.96, 112.147, 0.925342, 300, 300, 0, 0, 4892, 2846, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(63768, 1, -1031.86, 8821.8, 112.913, 0, 0, 100),
(63768, 2, -1055.13, 8825.1, 104.011, 0, 0, 100),
(63768, 3, -1058.62, 8832.19, 105.414, 0, 0, 100),
(63768, 4, -1041.5, 8856.26, 121.251, 0, 0, 100),
(63768, 5, -991.898, 8871.94, 140.727, 0, 0, 100),
(63768, 6, -970.947, 8885.07, 146.278, 0, 0, 100),
(63768, 7, -919.994, 8918.03, 151.879, 0, 0, 100),
(63768, 8, -878.953, 8936.51, 155.531, 0, 0, 100),
(63768, 9, -843.036, 8924.66, 162.601, 0, 0, 100),
(63768, 10, -791.799, 8887.17, 181.75, 0, 0, 100),
(63768, 11, -760.28, 8845.5, 182.722, 0, 0, 100),
(63768, 12, -756.855, 8806.33, 183.555, 0, 0, 100),
(63768, 13, -772.693, 8799.96, 183.208, 0, 0, 100),
(63768, 14, -781.74, 8788.94, 184.038, 0, 0, 100),
(63768, 15, -778.027, 8762.27, 189.089, 0, 0, 100),
(63768, 16, -793.741, 8746.34, 193.252, 0, 0, 100),
(63768, 17, -820.324, 8724.78, 208.524, 5000, 0, 100),
(63768, 18, -803.051, 8738.27, 196.606, 0, 0, 100),
(63768, 19, -778.484, 8762.47, 189.118, 0, 0, 100),
(63768, 20, -783.846, 8794.62, 183.247, 0, 0, 100),
(63768, 21, -766.683, 8797.85, 183.666, 0, 0, 100),
(63768, 22, -754.484, 8806.6, 183.61, 0, 0, 100),
(63768, 23, -754.962, 8835.01, 183.292, 0, 0, 100),
(63768, 24, -783.027, 8882.62, 182.076, 0, 0, 100),
(63768, 25, -848.965, 8929.96, 160.22, 0, 0, 100),
(63768, 26, -882.623, 8934.96, 155.439, 0, 0, 100),
(63768, 27, -924.174, 8913.11, 151.418, 0, 0, 100),
(63768, 28, -982.29, 8880.42, 144.198, 0, 0, 100),
(63768, 29, -1039.43, 8858.48, 122.975, 0, 0, 100),
(63768, 30, -1049.19, 8836.41, 110.315, 0, 0, 100),
(63768, 31, -1035.2, 8814.46, 111.303, 0, 0, 100),
(63768, 32, -1034.78, 8783.99, 111.634, 5000, 0, 100);

DELETE FROM `creature` WHERE `guid` = 63909;
DELETE FROM `creature_movement` WHERE `id` = 63909;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (63909, 18065, 530, 1, 0, 0, -1073.94, 8728.07, 79.932, 3.88162, 300, 300, 0, 0, 6116, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(63909, 1, -1102.08, 8703.71, 64.1085, 10000, 0, 100),
(63909, 2, -1075.76, 8727.97, 79.5301, 0, 0, 100),
(63909, 3, -1066.87, 8747.86, 84.3985, 0, 0, 100),
(63909, 4, -1073.3, 8821.55, 100.438, 10000, 0, 100),
(63909, 5, -1064.8, 8760.43, 86.3395, 0, 0, 100),
(63909, 6, -1070.04, 8734.32, 81.9977, 0, 0, 100),
(63909, 7, -1075.12, 8726.72, 79.3077, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 64208;
DELETE FROM `creature_movement` WHERE `id` = 64208;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (64208, 18118, 530, 1, 0, 0, 940.475, 7914.06, 23.5689, 0.93999, 300, 300, 0, 0, 4274, 2568, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(64208, 1, 951.569, 7925.04, 22.1276, 0, 0, 100),
(64208, 2, 943.762, 7943.99, 23.6671, 0, 0, 100),
(64208, 3, 944.272, 7957.73, 23.067, 5000, 0, 100),
(64208, 4, 944.234, 7938.25, 23.9457, 0, 0, 100),
(64208, 5, 947.622, 7915.42, 23.4383, 0, 0, 100),
(64208, 6, 910.509, 7889.31, 23.3291, 5000, 0, 100),
(64208, 7, 897.883, 7888.19, 21.2202, 0, 0, 100),
(64208, 8, 854.364, 7871.38, 20.2576, 0, 0, 100),
(64208, 9, 845.83, 7848.1, 22.2123, 5000, 0, 100),
(64208, 10, 837.837, 7840.62, 23.1816, 0, 0, 100),
(64208, 11, 824.862, 7844.13, 24.0133, 0, 0, 100),
(64208, 12, 821.483, 7839.45, 22.9234, 0, 0, 100),
(64208, 13, 826.641, 7837.25, 22.6798, 0, 0, 100),
(64208, 14, 839.074, 7841.34, 22.9379, 5000, 0, 100),
(64208, 15, 846.387, 7854.62, 22.7861, 0, 0, 100),
(64208, 16, 850.112, 7871.5, 20.6027, 0, 0, 100),
(64208, 17, 901.886, 7893.73, 20.8011, 0, 0, 100),
(64208, 18, 940.52, 7913.95, 24.0063, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 65497;
DELETE FROM `creature_movement` WHERE `id` = 65497;
DELETE FROM `creature_linking` WHERE `master_guid` = 65497;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (65497, 18226, 530, 1, 0, 0, -2342.26, 6367.35, 28.0382, 0.835031, 300, 300, 0, 0, 6116, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(65497, 1, -2342.26, 6367.35, 28.0382, 0, 0, 100),
(65497, 2, -2300.88, 6374.02, 26.3078, 0, 0, 100),
(65497, 3, -2253.63, 6402.68, 25.9421, 0, 0, 100),
(65497, 4, -2203.98, 6429.95, 18.4352, 0, 0, 100),
(65497, 5, -2164.17, 6445.2, 15.6665, 0, 0, 100),
(65497, 6, -2155.87, 6460.82, 13.0762, 0, 0, 100),
(65497, 7, -2182.36, 6504.18, 15.257, 0, 0, 100),
(65497, 8, -2201.16, 6542.58, 9.02655, 0, 0, 100),
(65497, 9, -2264.87, 6549.38, 6.86939, 0, 0, 100),
(65497, 10, -2320.31, 6537.66, 9.68785, 0, 0, 100),
(65497, 11, -2366.3, 6551.76, 7.11707, 0, 0, 100),
(65497, 12, -2409.34, 6547.22, 5.95331, 0, 0, 100),
(65497, 13, -2429.83, 6504, 11.5016, 0, 0, 100),
(65497, 14, -2419.29, 6435.34, 13.2445, 0, 0, 100),
(65497, 15, -2355.09, 6378.13, 27.2253, 0, 0, 100);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (68106, 65497, 513),(68107, 65497, 513),(59731, 65497, 513),(59631, 65497, 513),(59630, 65497, 513),(59632, 65497, 513),(59732, 65497, 513);

DELETE FROM `creature` WHERE `guid` = 65498;
DELETE FROM `creature_movement` WHERE `id` = 65498;
DELETE FROM `creature_linking` WHERE `master_guid` = 65498;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (65498, 18226, 530, 1, 0, 0, -1834.74, 6621.89, -5.96607, 0.825487, 300, 300, 0, 0, 6116, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(65498, 1, -1837.91, 6619.14, -3.73373, 0, 0, 100),
(65498, 2, -1802.08, 6606.44, -0.655963, 0, 0, 100),
(65498, 3, -1738.46, 6596.72, -1.99388, 0, 0, 100),
(65498, 4, -1672.93, 6586.29, 4.54073, 0, 0, 100),
(65498, 5, -1562.03, 6577.3, 4.54073, 0, 0, 100),
(65498, 6, -1577.72, 6633.33, 1.87856, 0, 0, 100),
(65498, 7, -1608.53, 6683.96, 3.21815, 0, 0, 100),
(65498, 8, -1652.3, 6750.78, -2.8652, 0, 0, 100),
(65498, 9, -1676.22, 6776.32, -9.65837, 0, 0, 100),
(65498, 10, -1696.45, 6796.99, -14.8595, 0, 0, 100),
(65498, 11, -1711.95, 6814.49, -17.8748, 0, 0, 100),
(65498, 12, -1739, 6840.27, -26.9439, 0, 0, 100),
(65498, 13, -1784.64, 6850.06, -30.9628, 0, 0, 100),
(65498, 14, -1816.01, 6829.87, -36.1119, 0, 0, 100),
(65498, 15, -1817.85, 6807.83, -35.4663, 0, 0, 100),
(65498, 16, -1800.5, 6780.29, -34.4429, 0, 0, 100),
(65498, 17, -1791.54, 6762.56, -29.1488, 0, 0, 100),
(65498, 18, -1781.95, 6739.01, -24.9092, 0, 0, 100),
(65498, 19, -1779.03, 6705.04, -23.7701, 0, 0, 100),
(65498, 20, -1789.68, 6667.92, -26.1269, 0, 0, 100),
(65498, 21, -1803.35, 6652.56, -21.6628, 0, 0, 100),
(65498, 22, -1822.65, 6644.36, -17.6828, 0, 0, 100),
(65498, 23, -1830.89, 6628.93, -9.98761, 0, 0, 100);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (59700, 65498, 513),(59701, 65498, 513),(59702, 65498, 513),(68108, 65498, 513),(59788, 65498, 513);

DELETE FROM `creature` WHERE `guid` = 67688;
DELETE FROM `creature_movement` WHERE `id` = 67688;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67688, 18880, 530, 1, 0, 0, 2834.56, 3001.47, 120.816, 1.36919, 300, 300, 0, 0, 5060, 1466, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67688, 1, 2840.71, 3031.62, 124.316, 0, 0, 100),
(67688, 2, 2857.4, 3067.84, 129.36, 0, 0, 100),
(67688, 3, 2899.2, 3080.45, 126.13, 0, 0, 100),
(67688, 4, 2857.4, 3067.84, 129.36, 0, 0, 100),
(67688, 5, 2840.71, 3031.62, 124.316, 0, 0, 100),
(67688, 6, 2834.56, 3001.47, 120.816, 0, 0, 100),
(67688, 7, 2822.73, 2965.43, 115.363, 0, 0, 100),
(67688, 8, 2818.01, 2927.77, 116.784, 0, 0, 100),
(67688, 9, 2822.73, 2965.43, 115.363, 0, 0, 100),
(67688, 10, 2834.56, 3001.47, 120.816, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67837;
DELETE FROM `creature_movement` WHERE `id` = 67837;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67837, 18886, 530, 1, 0, 0, 4680.65, 2933.53, 128.592, 6.0329, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67837, 1, 4699.68, 2925.73, 124.711, 0, 0, 100),
(67837, 2, 4733.46, 2919.72, 124.417, 0, 0, 100),
(67837, 3, 4748.24, 2898.93, 124.57, 0, 0, 100),
(67837, 4, 4767.58, 2892.41, 127.768, 0, 0, 100),
(67837, 5, 4798.51, 2902.93, 135.796, 0, 0, 100),
(67837, 6, 4767.58, 2892.41, 127.768, 0, 0, 100),
(67837, 7, 4748.24, 2898.93, 124.57, 0, 0, 100),
(67837, 8, 4733.46, 2919.72, 124.417, 0, 0, 100),
(67837, 9, 4699.68, 2925.73, 124.711, 0, 0, 100),
(67837, 10, 4680.65, 2933.53, 128.592, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67838;
DELETE FROM `creature_movement` WHERE `id` = 67838;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67838, 18886, 530, 1, 0, 0, 4694.27, 3000.52, 131.828, 3.77376, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67838, 1, 4659.01, 2990.84, 139.337, 1000, 0, 100),
(67838, 2, 4720.06, 2989.24, 126.648, 4000, 0, 100),
(67838, 3, 4694.27, 3000.52, 131.828, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67839;
DELETE FROM `creature_movement` WHERE `id` = 67839;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67839, 18886, 530, 1, 0, 0, 4793.85, 2559.35, 107.75, 1.50123, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67839, 1, 4793.46, 2551.93, 107.389, 0, 0, 100),
(67839, 2, 4801.29, 2542.2, 103.633, 0, 0, 100),
(67839, 3, 4804.18, 2533.2, 108.152, 0, 0, 100),
(67839, 4, 4809.52, 2531.04, 110.991, 0, 0, 100),
(67839, 5, 4804.18, 2533.2, 108.152, 0, 0, 100),
(67839, 6, 4801.29, 2542.2, 103.633, 0, 0, 100),
(67839, 7, 4793.46, 2551.93, 107.389, 0, 0, 100),
(67839, 8, 4793.85, 2559.35, 107.75, 0, 0, 100),
(67839, 9, 4811.91, 2578.14, 102.866, 0, 0, 100),
(67839, 10, 4816.32, 2599.69, 95.2407, 0, 0, 100),
(67839, 11, 4806.35, 2610.44, 94.2072, 0, 0, 100),
(67839, 12, 4805.52, 2632.84, 97.4572, 0, 0, 100),
(67839, 13, 4796.55, 2649.53, 96.8445, 0, 0, 100),
(67839, 14, 4788.85, 2664.76, 101.741, 0, 0, 100),
(67839, 15, 4771.99, 2675.86, 106.127, 0, 0, 100),
(67839, 16, 4758.87, 2684.21, 100.524, 0, 0, 100),
(67839, 17, 4771.99, 2675.86, 106.127, 0, 0, 100),
(67839, 18, 4788.73, 2665.01, 101.741, 0, 0, 100),
(67839, 19, 4796.55, 2649.53, 96.8445, 0, 0, 100),
(67839, 20, 4805.4, 2633.09, 97.4572, 0, 0, 100),
(67839, 21, 4806.35, 2610.44, 94.2072, 0, 0, 100),
(67839, 22, 4816.35, 2599.91, 95.2407, 0, 0, 100),
(67839, 23, 4811.95, 2578.36, 102.866, 0, 0, 100),
(67839, 24, 4793.85, 2559.35, 107.75, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67840;
DELETE FROM `creature_movement` WHERE `id` = 67840;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67840, 18886, 530, 1, 0, 0, 4824.48, 2413.03, 117.565, 3.26098, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67840, 1, 4826.34, 2423.97, 113.565, 0, 0, 100),
(67840, 2, 4824.54, 2388.94, 117.002, 0, 0, 100),
(67840, 3, 4813.47, 2410.94, 119.44, 1000, 0, 100),
(67840, 4, 4825.05, 2394.73, 117.002, 0, 0, 100),
(67840, 5, 4826.27, 2388.75, 116.127, 1000, 0, 100),
(67840, 6, 4824.68, 2414.62, 116.94, 4000, 0, 100),
(67840, 7, 4823.23, 2376.18, 116.877, 0, 0, 100),
(67840, 8, 4824.48, 2413.03, 117.565, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67841;
DELETE FROM `creature_movement` WHERE `id` = 67841;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67841, 18886, 530, 1, 0, 0, 4805.06, 2965.26, 136.835, 5.9299, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67841, 1, 4830.17, 2940.17, 142.085, 0, 0, 100),
(67841, 2, 4843.9, 2916.91, 145.522, 0, 0, 100),
(67841, 3, 4869.02, 2894.21, 150.939, 0, 0, 100),
(67841, 4, 4844.04, 2916.68, 145.522, 0, 0, 100),
(67841, 5, 4830.17, 2940.17, 142.085, 0, 0, 100),
(67841, 6, 4805.06, 2965.26, 136.835, 0, 0, 100),
(67841, 7, 4776.21, 2983.03, 131.705, 0, 0, 100),
(67841, 8, 4752.37, 2980.17, 128.704, 0, 0, 100),
(67841, 9, 4734.41, 2954.92, 125.879, 0, 0, 100),
(67841, 10, 4722.08, 2929.79, 122.836, 0, 0, 100),
(67841, 11, 4714.17, 2899.32, 118.2, 0, 0, 100),
(67841, 12, 4721.98, 2929.6, 122.836, 0, 0, 100),
(67841, 13, 4734.41, 2954.92, 125.879, 0, 0, 100),
(67841, 14, 4752.31, 2980.16, 128.704, 0, 0, 100),
(67841, 15, 4776.14, 2983.02, 131.705, 0, 0, 100),
(67841, 16, 4805.06, 2965.26, 136.835, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67842;
DELETE FROM `creature_movement` WHERE `id` = 67842;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67842, 18886, 530, 1, 0, 0, 4834.34, 2888.76, 143.825, 2.3002, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67842, 1, 4844.86, 2856.09, 143.746, 0, 0, 100),
(67842, 2, 4834.34, 2888.76, 143.825, 0, 0, 100),
(67842, 3, 4807.15, 2909.79, 137.939, 0, 0, 100),
(67842, 4, 4803.56, 2932.8, 138.189, 0, 0, 100),
(67842, 5, 4784.36, 2964.11, 133.788, 0, 0, 100),
(67842, 6, 4803.56, 2932.8, 138.189, 0, 0, 100),
(67842, 7, 4807.15, 2909.79, 137.939, 0, 0, 100),
(67842, 8, 4834.34, 2888.76, 143.825, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67843;
DELETE FROM `creature_movement` WHERE `id` = 67843;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67843, 18886, 530, 1, 0, 0, 4861.56, 2899.58, 149.45, 2.18968, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67843, 1, 4831.78, 2932.9, 142.939, 0, 0, 100),
(67843, 2, 4824.35, 2966.6, 139.21, 0, 0, 100),
(67843, 3, 4833.87, 2984.86, 138.932, 0, 0, 100),
(67843, 4, 4865.88, 2993.59, 143.057, 0, 0, 100),
(67843, 5, 4833.87, 2984.86, 138.932, 0, 0, 100),
(67843, 6, 4824.35, 2966.6, 139.21, 0, 0, 100),
(67843, 7, 4831.78, 2932.9, 142.939, 0, 0, 100),
(67843, 8, 4861.56, 2899.58, 149.45, 24000, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67844;
DELETE FROM `creature_movement` WHERE `id` = 67844;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67844, 18886, 530, 1, 0, 0, 4889.34, 2820.24, 95.6049, 3.79193, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67844, 1, 4866.94, 2782.55, 97.0733, 0, 0, 100),
(67844, 2, 4834.27, 2749.54, 91.1963, 0, 0, 100),
(67844, 3, 4813.48, 2733.72, 85.9872, 0, 0, 100),
(67844, 4, 4809.27, 2699.64, 88.1871, 0, 0, 100),
(67844, 5, 4810.16, 2667.98, 98.8121, 0, 0, 100),
(67844, 6, 4809.27, 2699.64, 88.1871, 0, 0, 100),
(67844, 7, 4813.48, 2733.72, 85.9872, 0, 0, 100),
(67844, 8, 4834.27, 2749.54, 91.1963, 0, 0, 100),
(67844, 9, 4866.94, 2782.55, 97.0733, 0, 0, 100),
(67844, 10, 4889.34, 2820.24, 95.6049, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67845;
DELETE FROM `creature_movement` WHERE `id` = 67845;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67845, 18886, 530, 1, 0, 0, 4807.69, 2724.2, 84.9414, 1.7298, 900, 900, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67845, 1, 4777.62, 2730.46, 81.2225, 0, 0, 100),
(67845, 2, 4764.88, 2742.87, 81.6136, 0, 0, 100),
(67845, 3, 4756.88, 2750.12, 85.1136, 0, 0, 100),
(67845, 4, 4748.13, 2758.12, 88.1136, 0, 0, 100),
(67845, 5, 4746.54, 2759.6, 88.9043, 0, 0, 100),
(67845, 6, 4739.34, 2798.7, 98.9759, 0, 0, 100),
(67845, 7, 4746.54, 2759.6, 88.9043, 0, 0, 100),
(67845, 8, 4748.13, 2758.12, 88.1136, 0, 0, 100),
(67845, 9, 4756.88, 2750.12, 85.1136, 0, 0, 100),
(67845, 10, 4764.88, 2742.87, 81.6136, 0, 0, 100),
(67845, 11, 4777.62, 2730.46, 81.2225, 0, 0, 100),
(67845, 12, 4807.69, 2724.2, 84.9414, 0, 0, 100),
(67845, 13, 4833.35, 2746.09, 91.0713, 0, 0, 100),
(67845, 14, 4854.54, 2763.94, 96.6963, 0, 0, 100),
(67845, 15, 4867.34, 2749.08, 90.637, 0, 0, 100),
(67845, 16, 4891.29, 2750.6, 84.137, 0, 0, 100),
(67845, 17, 4867.34, 2749.08, 90.637, 0, 0, 100),
(67845, 18, 4854.54, 2763.94, 96.6963, 0, 0, 100),
(67845, 19, 4833.35, 2746.09, 91.0713, 0, 0, 100),
(67845, 20, 4807.69, 2724.2, 84.9414, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67846;
DELETE FROM `creature_movement` WHERE `id` = 67846;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67846, 18886, 530, 1, 0, 0, 4705.97, 2725.82, 112.599, 5.00162, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67846, 1, 4726.07, 2715.06, 100.224, 0, 0, 100),
(67846, 2, 4730.17, 2707.96, 96.6866, 0, 0, 100),
(67846, 3, 4733.92, 2700.21, 102.687, 0, 0, 100),
(67846, 4, 4737.27, 2693.86, 108.149, 0, 0, 100),
(67846, 5, 4733.92, 2700.21, 102.687, 0, 0, 100),
(67846, 6, 4730.17, 2707.96, 96.6866, 0, 0, 100),
(67846, 7, 4726.07, 2715.06, 100.224, 0, 0, 100),
(67846, 8, 4705.97, 2725.82, 112.599, 0, 0, 100),
(67846, 9, 4708.09, 2745.62, 111.206, 0, 0, 100),
(67846, 10, 4693.12, 2751.14, 115.173, 0, 0, 100),
(67846, 11, 4671.1, 2754.37, 125.673, 0, 0, 100),
(67846, 12, 4666.89, 2768.54, 130.709, 0, 0, 100),
(67846, 13, 4686.19, 2770.74, 124.834, 0, 0, 100),
(67846, 14, 4700.07, 2777.03, 116.61, 0, 0, 100),
(67846, 15, 4692.68, 2791.01, 114.459, 0, 0, 100),
(67846, 16, 4700.07, 2777.03, 116.61, 0, 0, 100),
(67846, 17, 4686.19, 2770.74, 124.834, 0, 0, 100),
(67846, 18, 4666.89, 2768.54, 130.709, 0, 0, 100),
(67846, 19, 4671.1, 2754.37, 125.673, 0, 0, 100),
(67846, 20, 4693.12, 2751.14, 115.173, 0, 0, 100),
(67846, 21, 4708.09, 2745.62, 111.206, 0, 0, 100),
(67846, 22, 4705.97, 2725.82, 112.599, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67847;
DELETE FROM `creature_movement` WHERE `id` = 67847;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67847, 18886, 530, 1, 0, 0, 4671.17, 2833.75, 119.971, 0.381413, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67847, 1, 4701.32, 2825.5, 112.617, 0, 0, 100),
(67847, 2, 4733.15, 2840.1, 112.46, 0, 0, 100),
(67847, 3, 4733.27, 2865.34, 117.21, 0, 0, 100),
(67847, 4, 4717.51, 2898.33, 118.45, 0, 0, 100),
(67847, 5, 4733.58, 2912.84, 123.292, 0, 0, 100),
(67847, 6, 4766.14, 2890.56, 127.32, 0, 0, 100),
(67847, 7, 4733.58, 2912.84, 123.292, 0, 0, 100),
(67847, 8, 4717.51, 2898.33, 118.45, 0, 0, 100),
(67847, 9, 4733.27, 2865.34, 117.21, 0, 0, 100),
(67847, 10, 4733.18, 2840.14, 112.46, 0, 0, 100),
(67847, 11, 4701.32, 2825.5, 112.617, 0, 0, 100),
(67847, 12, 4671.17, 2833.75, 119.971, 0, 0, 100),
(67847, 13, 4657.98, 2865.76, 115.725, 0, 0, 100),
(67847, 14, 4678.52, 2878.85, 116.357, 0, 0, 100),
(67847, 15, 4657.98, 2865.76, 115.725, 0, 0, 100),
(67847, 16, 4671.17, 2833.75, 119.971, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67848;
DELETE FROM `creature_movement` WHERE `id` = 67848;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67848, 18886, 530, 1, 0, 0, 4735.84, 3006.33, 126.361, 3.80215, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67848, 1, 4766.88, 3012.03, 129.761, 0, 0, 100),
(67848, 2, 4735.84, 3006.33, 126.361, 0, 0, 100),
(67848, 3, 4699.47, 2992.31, 130.339, 0, 0, 100),
(67848, 4, 4667.54, 2968.93, 136.839, 0, 0, 100),
(67848, 5, 4655.59, 2935.29, 137.812, 0, 0, 100),
(67848, 6, 4667.54, 2968.93, 136.839, 0, 0, 100),
(67848, 7, 4699.47, 2992.31, 130.339, 0, 0, 100),
(67848, 8, 4735.84, 3006.33, 126.361, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 67849;
DELETE FROM `creature_movement` WHERE `id` = 67849;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (67849, 18886, 530, 1, 0, 0, 4894.06, 2678.78, 79.1418, 6.12247, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(67849, 1, 4898.58, 2685.64, 81.9164, 0, 0, 100),
(67849, 2, 4898.58, 2685.64, 81.9164, 0, 0, 100),
(67849, 3, 4903.14, 2692.38, 80.0398, 0, 0, 100),
(67849, 4, 4906.95, 2697.96, 75.8236, 0, 0, 100),
(67849, 5, 4910.21, 2703.05, 76.771, 0, 0, 100),
(67849, 6, 4906.95, 2697.96, 75.8236, 0, 0, 100),
(67849, 7, 4903.14, 2692.38, 80.0398, 0, 0, 100),
(67849, 8, 4898.58, 2685.64, 81.9164, 0, 0, 100),
(67849, 9, 4898.58, 2685.64, 81.9164, 0, 0, 100),
(67849, 10, 4894.06, 2678.78, 79.1418, 0, 0, 100),
(67849, 11, 4890.64, 2668.34, 84.0986, 0, 0, 100),
(67849, 12, 4880.38, 2649.6, 85.1908, 0, 0, 100),
(67849, 13, 4877.73, 2643.88, 83.0996, 0, 0, 100),
(67849, 14, 4875.45, 2639.72, 85.4089, 0, 0, 100),
(67849, 15, 4872.53, 2620.95, 87.5256, 0, 0, 100),
(67849, 16, 4854.19, 2601.89, 92.9359, 0, 0, 100),
(67849, 17, 4847.23, 2560.53, 88.0678, 1000, 0, 100),
(67849, 18, 4854.19, 2601.89, 92.9359, 0, 0, 100),
(67849, 19, 4872.53, 2620.95, 87.5256, 0, 0, 100),
(67849, 20, 4875.45, 2639.72, 85.4089, 0, 0, 100),
(67849, 21, 4877.73, 2643.88, 83.0996, 0, 0, 100),
(67849, 22, 4880.38, 2649.6, 85.1908, 0, 0, 100),
(67849, 23, 4890.64, 2668.34, 84.0986, 0, 0, 100),
(67849, 24, 4894.06, 2678.78, 79.1418, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 69082;
DELETE FROM `creature_movement` WHERE `id` = 69082;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (69082, 19362, 530, 1, 0, 0, -2973.12, 2556.28, 105.803, 5, 300, 300, 0, 0, 14000, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(69082, 1, -2973.12, 2556.28, 105.803, 0, 0, 100),
(69082, 2, -2962.7, 2547.78, 105.803, 0, 0, 100),
(69082, 3, -2953.72, 2551.62, 105.803, 0, 0, 100),
(69082, 4, -2954.08, 2563.9, 105.803, 0, 0, 100),
(69082, 5, -2967.13, 2567.32, 105.803, 0, 0, 100),
(69082, 6, -2968.79, 2567.15, 105.803, 0, 0, 100);

UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 19568;

DELETE FROM `creature` WHERE `guid` = 69977;
DELETE FROM `creature_movement` WHERE `id` = 69977;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (69977, 18886, 530, 1, 0, 0, 4819.65, 2537.18, 110.349, 4.90474, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(69977, 1, 4824.15, 2532.49, 109.051, 0, 0, 100),
(69977, 2, 4816.46, 2531.37, 111.35, 0, 0, 100),
(69977, 3, 4812.26, 2535.93, 110.475, 3000, 0, 100),
(69977, 4, 4808.4, 2540.58, 104.32, 0, 0, 100),
(69977, 5, 4803.94, 2544.88, 102.389, 1000, 0, 100),
(69977, 6, 4794.37, 2551.87, 107.139, 0, 0, 100),
(69977, 7, 4797.48, 2543.48, 105.708, 0, 0, 100),
(69977, 8, 4796.18, 2536.76, 108.247, 5000, 0, 100),
(69977, 9, 4803.58, 2530.56, 109.12, 0, 0, 100),
(69977, 10, 4811.62, 2532.29, 111.374, 0, 0, 100),
(69977, 11, 4816.19, 2535.16, 110.933, 2000, 0, 100),
(69977, 12, 4823.78, 2532.98, 109.25, 0, 0, 100),
(69977, 13, 4823.61, 2538.89, 108.992, 1000, 0, 100),
(69977, 14, 4815.68, 2538.62, 109.757, 0, 0, 100),
(69977, 15, 4813.14, 2545.14, 104.42, 0, 0, 100),
(69977, 16, 4803.76, 2544.75, 102.439, 4000, 0, 100),
(69977, 17, 4792.09, 2543.45, 109.158, 0, 0, 100),
(69977, 18, 4791.39, 2551.81, 108.409, 0, 0, 100),
(69977, 19, 4803.11, 2543.3, 102.702, 2000, 0, 100),
(69977, 20, 4811.92, 2533.51, 111.256, 0, 0, 100),
(69977, 21, 4819.65, 2537.18, 110.349, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 69997;
DELETE FROM `creature_movement` WHERE `id` = 69997;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (69997, 18886, 530, 1, 0, 0, 4836.94, 2327.35, 106.283, 4.87041, 300, 300, 0, 0, 27044, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(69997, 1, 4855.32, 2346.11, 96.9195, 4000, 0, 100),
(69997, 2, 4822.36, 2352.15, 109.419, 0, 0, 100),
(69997, 3, 4822.5, 2344.83, 108.544, 11000, 0, 100),
(69997, 4, 4828.09, 2345.11, 106.794, 0, 0, 100),
(69997, 5, 4836.07, 2345.27, 102.92, 0, 0, 100),
(69997, 6, 4844.94, 2340.65, 98.4195, 0, 0, 100),
(69997, 7, 4852.7, 2346.96, 99.5445, 0, 0, 100),
(69997, 8, 4846.15, 2345.41, 102.045, 1000, 0, 100),
(69997, 9, 4823.08, 2346.14, 108.044, 0, 0, 100),
(69997, 10, 4838.94, 2344.49, 101.92, 0, 0, 100),
(69997, 11, 4836.94, 2327.35, 106.283, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 70141;
DELETE FROM `creature` WHERE `guid` = 70089;
DELETE FROM `creature_movement` WHERE `id` = 70141;
DELETE FROM `creature_linking` WHERE `master_guid` = 70141;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (70089, 19653, 530, 1, 0, 0, 2948.91, 2280.35, 161.708, 5.90725, 300, 300, 0, 0, 2530, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (70141, 19657, 530, 1, 0, 0, 2952.34, 2280.58, 161.708, 5.90908, 300, 300, 0, 0, 5409, 3080, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(70141, 1, 2952.34, 2280.58, 161.708, 0, 0, 100),
(70141, 2, 2963.22, 2285.29, 161.715, 0, 0, 100),
(70141, 3, 2972.13, 2290.53, 161.709, 0, 0, 100),
(70141, 4, 2981.27, 2296.16, 161.709, 0, 0, 100),
(70141, 5, 2985.89, 2298.46, 161.709, 0, 0, 100),
(70141, 6, 2991.7, 2294.17, 161.709, 0, 0, 100),
(70141, 7, 2998.74, 2293.21, 161.706, 0, 0, 100),
(70141, 8, 3005.23, 2292.41, 161.537, 0, 0, 100),
(70141, 9, 3011.54, 2291.28, 160.931, 0, 0, 100),
(70141, 10, 3012.24, 2298.92, 161.379, 0, 0, 100),
(70141, 11, 3011.92, 2302.38, 161.554, 0, 0, 100),
(70141, 12, 3012.24, 2298.92, 161.379, 0, 0, 100),
(70141, 13, 3011.54, 2291.28, 160.931, 0, 0, 100),
(70141, 14, 3005.23, 2292.41, 161.537, 0, 0, 100),
(70141, 15, 2998.74, 2293.21, 161.706, 0, 0, 100),
(70141, 16, 2991.7, 2294.17, 161.709, 0, 0, 100),
(70141, 17, 2985.89, 2298.46, 161.709, 0, 0, 100),
(70141, 18, 2981.27, 2296.16, 161.709, 0, 0, 100),
(70141, 19, 2972.13, 2290.53, 161.709, 0, 0, 100),
(70141, 20, 2963.22, 2285.29, 161.715, 0, 0, 100);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (70089, 70141, 515);

DELETE FROM `creature` WHERE `guid` = 70217;
DELETE FROM `creature_movement` WHERE `id` = 70217;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (70217, 19687, 530, 1, 0, 0, -1489.78, 5206.54, 38.3732, 2.97099, 300, 300, 5, 0, 8000, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(70217, 1, -1502.26, 5221.48, 30.6943, 0, 0, 100),
(70217, 2, -1512.34, 5233.69, 24.9189, 0, 0, 100),
(70217, 3, -1519.78, 5247.9, 19.7742, 0, 0, 100),
(70217, 4, -1521.61, 5262.7, 15.5909, 0, 0, 100),
(70217, 5, -1516.97, 5288.21, 11.2077, 0, 0, 100),
(70217, 6, -1519.82, 5305.34, 9.4219, 0, 0, 100),
(70217, 7, -1526.49, 5316.37, 8.8861, 0, 0, 100),
(70217, 8, -1530.23, 5317.62, 8.7321, 5000, 0, 100),
(70217, 9, -1526.49, 5316.37, 8.8861, 0, 0, 100),
(70217, 10, -1519.82, 5305.34, 9.4219, 0, 0, 100),
(70217, 11, -1516.97, 5288.21, 11.2077, 0, 0, 100),
(70217, 12, -1521.61, 5262.7, 15.5909, 0, 0, 100),
(70217, 13, -1519.78, 5247.9, 19.7742, 0, 0, 100),
(70217, 14, -1512.34, 5233.69, 24.9189, 0, 0, 100),
(70217, 15, -1502.26, 5221.48, 30.6943, 0, 0, 100),
(70217, 16, -1475.91, 5195.17, 46.513, 0, 0, 100),
(70217, 17, -1508.39, 5209.32, 31.6188, 0, 0, 100),
(70217, 18, -1537.21, 5208.54, 25.1562, 0, 0, 100),
(70217, 19, -1562.23, 5197.91, 21.8793, 0, 0, 100),
(70217, 20, -1598.06, 5154, 17.9683, 0, 0, 100),
(70217, 21, -1626.17, 5117.28, 11.469, 0, 0, 100),
(70217, 22, -1648.77, 5097.76, 9.1887, 0, 0, 100),
(70217, 23, -1635.09, 5082.36, 6.9086, 0, 0, 100),
(70217, 24, -1619.69, 5070.38, 0.2725, 0, 0, 100),
(70217, 25, -1601.55, 5066.87, -5.6706, 0, 0, 100),
(70217, 26, -1578.27, 5069.79, -11.8416, 0, 0, 100),
(70217, 27, -1553.1, 5078.81, -17.34, 0, 0, 100),
(70217, 28, -1541.06, 5090.69, -19.1689, 0, 0, 100),
(70217, 29, -1533.64, 5112.51, -20.193, 0, 0, 100),
(70217, 30, -1535.68, 5113.84, -20.564, 5000, 0, 100),
(70217, 31, -1541.06, 5090.69, -19.1689, 0, 0, 100),
(70217, 32, -1553.1, 5078.81, -17.34, 0, 0, 100),
(70217, 33, -1578.27, 5069.79, -11.8416, 0, 0, 100),
(70217, 34, -1601.55, 5066.87, -5.6706, 0, 0, 100),
(70217, 35, -1619.69, 5070.38, 0.2725, 0, 0, 100),
(70217, 36, -1635.09, 5082.36, 6.9086, 0, 0, 100),
(70217, 37, -1648.77, 5097.76, 9.1887, 0, 0, 100),
(70217, 38, -1626.17, 5117.28, 11.469, 0, 0, 100),
(70217, 39, -1598.06, 5154, 17.9683, 0, 0, 100),
(70217, 40, -1562.23, 5197.91, 21.8793, 0, 0, 100),
(70217, 41, -1537.21, 5208.54, 25.1562, 0, 0, 100),
(70217, 42, -1508.39, 5209.32, 31.6188, 0, 0, 100),
(70217, 43, -1475.91, 5195.17, 46.513, 15000, 0, 100);

DELETE FROM `creature` WHERE `guid` = 70236;
DELETE FROM `creature_movement` WHERE `id` = 70236;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (70236, 19687, 530, 1, 0, 0, -2081.38, 5118.14, 4.51603, 3.54996, 300, 300, 5, 0, 8000, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(70236, 1, -2100.44, 5115.9, -1.1131, 0, 0, 100),
(70236, 2, -2113.3, 5105.64, -2.5311, 0, 0, 100),
(70236, 3, -2147.67, 5110.34, -15.0644, 0, 0, 100),
(70236, 4, -2167.43, 5124.55, -21.0858, 10000, 0, 100),
(70236, 5, -2147.67, 5110.34, -15.0644, 0, 0, 100),
(70236, 6, -2113.3, 5105.64, -2.5311, 0, 0, 100),
(70236, 7, -2081.38, 5118.14, 4.4815, 0, 0, 100),
(70236, 8, -2058.76, 5124.84, 7.2969, 0, 0, 100),
(70236, 9, -2022.54, 5123.88, 8.6188, 0, 0, 100),
(70236, 10, -1975.21, 5097.61, 8.1237, 5000, 0, 100),
(70236, 11, -1958.05, 5088.09, 10.9466, 0, 0, 100),
(70236, 12, -1934.3, 5055.67, 19.8275, 0, 0, 100),
(70236, 13, -1958.76, 5026.15, 32.5082, 10000, 0, 100),
(70236, 14, -1934.3, 5055.67, 19.8275, 0, 0, 100),
(70236, 15, -1958.05, 5088.09, 10.9466, 0, 0, 100),
(70236, 16, -1975.21, 5097.61, 8.1237, 5000, 0, 100),
(70236, 17, -2022.54, 5123.88, 8.6188, 0, 0, 100),
(70236, 18, -2058.76, 5124.84, 7.2969, 0, 0, 100),
(70236, 19, -2081.38, 5118.14, 4.4815, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 71708;
DELETE FROM `creature_movement` WHERE `id` = 71708;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (71708, 20141, 530, 1, 0, 0, 4602.32, 2706.99, 180.935, 3.11328, 300, 300, 0, 0, 6761, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(71708, 1, 4599.58, 2718.88, 179.018, 0, 0, 100),
(71708, 2, 4602.1, 2707.15, 180.935, 0, 0, 100),
(71708, 3, 4625.32, 2706.34, 181.685, 0, 0, 100),
(71708, 4, 4629.15, 2677.26, 192.098, 0, 0, 100),
(71708, 5, 4625.32, 2706.34, 181.685, 0, 0, 100),
(71708, 6, 4602.32, 2706.99, 180.935, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 71814;
DELETE FROM `creature_movement` WHERE `id` = 71814;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (71814, 20203, 530, 1, 0, 0, 3369.6, 4266.86, 122.646, 3.91896, 300, 300, 0, 0, 1700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(71814, 1, 3360.2, 4268.68, 122.788, 0, 0, 100),
(71814, 2, 3358.81, 4280.84, 117.352, 0, 0, 100),
(71814, 3, 3355.01, 4311.56, 117.333, 0, 0, 100),
(71814, 4, 3353.7, 4323.3, 122.774, 0, 0, 100),
(71814, 5, 3361.9, 4329.85, 122.64, 0, 0, 100),
(71814, 6, 3367.2, 4324.14, 122.64, 0, 0, 100),
(71814, 7, 3372.22, 4282.04, 121.016, 0, 0, 100),
(71814, 8, 3372.18, 4269.04, 122.64, 0, 0, 100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (2104601,2104602,2104701,2104702,2104703);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
(2104601, 2, 28, 8, 'Boulder\'mok Brute - Set UNIT_STAND_STATE_KNEEL'),
(2104601, 22, 28, 0, 'Boulder\'mok Brute - Set UNIT_STAND_STATE_STAND'),
(2104602, 2, 28, 1, 'Boulder\'mok Brute - Set UNIT_STAND_STATE_SIT'),
(2104602, 52, 28, 0, 'Boulder\'mok Brute - Set UNIT_STAND_STATE_STAND'),
(2104701, 2, 28, 1, 'Boulder\'mok Shaman - Set UNIT_STAND_STATE_SIT'),
(2104701, 52, 28, 0, 'Boulder\'mok Shaman - Set UNIT_STAND_STATE_STAND'),
(2104702, 2, 28, 8, 'Boulder\'mok Shaman - Set UNIT_STAND_STATE_KNEEL'),
(2104702, 22, 28, 0, 'Boulder\'mok Shaman - Set UNIT_STAND_STATE_STAND'),
(2104703, 5, 1, 1, 'Boulder\'mok Shaman - ONESHOT_TALK'),
(2104703, 15, 1, 1, 'Boulder\'mok Shaman - ONESHOT_TALK'),
(2104703, 25, 1, 1, 'Boulder\'mok Shaman - ONESHOT_TALK');

DELETE FROM `creature` WHERE `guid` = 73891;
DELETE FROM `creature_movement` WHERE `id` = 73891;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (73891, 21046, 530, 1, 0, 0, 3514.51, 7206.31, 139.782, 4.22964, 300, 300, 0, 0, 6326, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(73891, 1, 3509.24, 7205, 140.298, 55000, 2104602, 100),
(73891, 2, 3538.78, 7213.91, 140.623, 0, 0, 100),
(73891, 3, 3569.67, 7194.26, 138.632, 0, 0, 100),
(73891, 4, 3577.03, 7195.46, 137.986, 55000, 2104602, 100),
(73891, 5, 3571.78, 7195.18, 138.358, 0, 0, 100),
(73891, 6, 3537.43, 7215.13, 140.673, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 73894;
DELETE FROM `creature_movement` WHERE `id` = 73894;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (73894, 21046, 530, 1, 0, 0, 3591.02, 7188.98, 138.358, 2.081, 300, 300, 0, 0, 6326, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(73894, 1, 3594.08, 7184.31, 138.782, 0, 0, 100),
(73894, 2, 3582.3, 7153.91, 140.444, 0, 0, 100),
(73894, 3, 3580.73, 7136.98, 140.444, 0, 0, 100),
(73894, 4, 3577.65, 7134.57, 140.444, 25000, 2104601, 100),
(73894, 5, 3581.01, 7137.47, 140.444, 0, 0, 100),
(73894, 6, 3582.91, 7162.07, 140.273, 0, 0, 100),
(73894, 7, 3594.1, 7184.06, 138.803, 0, 0, 100),
(73894, 8, 3591.02, 7188.98, 138.358, 55000, 2104602, 100);

DELETE FROM `creature` WHERE `guid` = 73895;
DELETE FROM `creature_movement` WHERE `id` = 73895;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (73895, 21046, 530, 1, 0, 0, 3593.69, 7215.44, 138.112, 1.27934, 300, 300, 0, 0, 6326, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(73895, 1, 3563.65, 7230.52, 138.465, 0, 0, 100),
(73895, 2, 3567.02, 7234.85, 138.334, 25000, 2104601, 100),
(73895, 3, 3563.79, 7229.9, 138.488, 0, 0, 100),
(73895, 4, 3594.78, 7215.32, 138.074, 0, 0, 100),
(73895, 5, 3590.83, 7206.05, 137.965, 55000, 2104602, 100),
(73895, 6, 3630.08, 7223.25, 136.887, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 73896;
DELETE FROM `creature_movement` WHERE `id` = 73896;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (73896, 21046, 530, 1, 0, 0, 3630.08, 7223.25, 136.887, 1.6057, 300, 300, 0, 0, 6326, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(73896, 1, 3623.83, 7221.99, 136.939, 0, 0, 100),
(73896, 2, 3617.45, 7211.85, 136.89, 0, 0, 100),
(73896, 3, 3620.62, 7201.56, 138.635, 0, 0, 100),
(73896, 4, 3632.94, 7205.01, 138.347, 0, 0, 100),
(73896, 5, 3658.01, 7190.08, 141.269, 25000, 2104601, 100),
(73896, 6, 3643.47, 7205.17, 138.948, 0, 0, 100),
(73896, 7, 3627.88, 7201.46, 139.603, 0, 0, 100),
(73896, 8, 3615.03, 7208.43, 137.497, 0, 0, 100),
(73896, 9, 3624.78, 7222.32, 136.925, 0, 0, 100),
(73896, 10, 3629.62, 7221.2, 136.935, 0, 0, 100),
(73896, 11, 3629.72, 7222.8, 136.906, 25000, 0, 100);

DELETE FROM `creature` WHERE `guid` = 73899;
DELETE FROM `creature_movement` WHERE `id` = 73899;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (73899, 21046, 530, 1, 0, 0, 3686.1, 7154.7, 141.855, 0.390907, 300, 300, 0, 0, 6326, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(73899, 1, 3703, 7154.17, 141.185, 0, 0, 100),
(73899, 2, 3704.57, 7156.81, 141.364, 20000, 0, 100),
(73899, 3, 3683.98, 7156.05, 142.083, 0, 0, 100),
(73899, 4, 3667.85, 7161.64, 142.005, 20000, 0, 100),
(73899, 5, 3682.33, 7155.86, 142.202, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 73902;
DELETE FROM `creature_movement` WHERE `id` = 73902;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (73902, 21047, 530, 1, 0, 0, 3578.19, 7223.22, 138.612, 1.20746, 300, 300, 0, 0, 5060, 2933, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(73902, 1, 3576.47, 7209.9, 137.748, 0, 0, 100),
(73902, 2, 3579.81, 7207.4, 137.765, 55000, 2104701, 100),
(73902, 3, 3577.09, 7210.64, 137.776, 0, 0, 100),
(73902, 4, 3578.52, 7224.53, 138.53, 30000, 2104703, 100);

DELETE FROM `creature` WHERE `guid` = 73903;
DELETE FROM `creature_movement` WHERE `id` = 73903;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (73903, 21047, 530, 1, 0, 0, 3603.72, 7214.6, 138.596, 2.59038, 300, 300, 0, 0, 5060, 2933, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(73903, 1, 3599, 7217.99, 138.465, 0, 0, 100),
(73903, 2, 3599.24, 7239.79, 137.287, 25000, 2104702, 100),
(73903, 3, 3599.66, 7217.57, 138.475, 0, 0, 100),
(73903, 4, 3614.44, 7207.63, 137.639, 0, 0, 100),
(73903, 5, 3623.81, 7222.06, 136.939, 0, 0, 100),
(73903, 6, 3619.59, 7227.93, 136.967, 0, 0, 100),
(73903, 7, 3620.88, 7228.51, 136.942, 25000, 0, 100),
(73903, 8, 3624.25, 7222.35, 136.93, 0, 0, 100),
(73903, 9, 3615.32, 7208.89, 137.418, 0, 0, 100),
(73903, 10, 3606.45, 7212.2, 138.596, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 74219;
DELETE FROM `creature_movement` WHERE `id` = 74219;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (74219, 21153, 530, 1, 0, 0, -3014.28, 2567.43, 141.622, 5, 300, 300, 0, 0, 7400, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(74219, 1, -3014.28, 2567.43, 141.622, 0, 0, 100),
(74219, 2, -2997.18, 2547.18, 141.622, 0, 0, 100),
(74219, 3, -2975.06, 2527.35, 141.622, 0, 0, 100),
(74219, 4, -2944.82, 2526, 141.622, 0, 0, 100),
(74219, 5, -2925.33, 2546.51, 141.622, 0, 0, 100),
(74219, 6, -2919.25, 2565.87, 141.622, 0, 0, 100),
(74219, 7, -2920.08, 2589.36, 141.622, 0, 0, 100),
(74219, 8, -2931.99, 2608.76, 141.622, 0, 0, 100),
(74219, 9, -2955.63, 2618.87, 141.622, 0, 0, 100),
(74219, 10, -2977.5, 2619.67, 141.622, 0, 0, 100),
(74219, 11, -3014.67, 2609.54, 141.622, 0, 0, 100),
(74219, 12, -3055.04, 2590.46, 141.622, 0, 0, 100),
(74219, 13, -3085.54, 2571.63, 141.622, 0, 0, 100),
(74219, 14, -3114.72, 2555.92, 141.622, 0, 0, 100),
(74219, 15, -3143.01, 2552.03, 141.622, 0, 0, 100),
(74219, 16, -3176.69, 2560.46, 141.622, 0, 0, 100),
(74219, 17, -3190.57, 2587.82, 141.622, 0, 0, 100),
(74219, 18, -3187.1, 2615.27, 141.622, 0, 0, 100),
(74219, 19, -3164.5, 2634.34, 141.622, 0, 0, 100),
(74219, 20, -3137.51, 2639.93, 141.622, 0, 0, 100),
(74219, 21, -3099.44, 2633.7, 141.622, 0, 0, 100),
(74219, 22, -3074.34, 2622.92, 141.622, 0, 0, 100),
(74219, 23, -3057.4, 2608.77, 141.622, 0, 0, 100),
(74219, 24, -3045.57, 2592.94, 140.845, 0, 0, 100),
(74219, 25, -3046.09, 2591.68, 139.928, 0, 0, 100),
(74219, 26, -3028.98, 2582, 141.622, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 74629;
DELETE FROM `creature_movement` WHERE `id` = 74629;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (74629, 21314, 530, 1, 0, 0, -3472.16, 2912.5, 179.804, 1.41592, 300, 300, 0, 0, 6326, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(74629, 1, -3469.18, 2935.43, 180.614, 0, 0, 100),
(74629, 2, -3474.53, 2954.04, 179.634, 0, 0, 100),
(74629, 3, -3482.12, 2988.72, 170.321, 0, 0, 100),
(74629, 4, -3475.67, 3006.78, 172.339, 0, 0, 100),
(74629, 5, -3484.97, 2985.36, 170.221, 0, 0, 100),
(74629, 6, -3473.26, 2951.88, 179.666, 0, 0, 100),
(74629, 7, -3468.63, 2920.9, 182.204, 0, 0, 100),
(74629, 8, -3483.9, 2904.32, 176.167, 0, 0, 100),
(74629, 9, -3492.56, 2882.87, 181.256, 5000, 0, 100),
(74629, 10, -3487.57, 2901.8, 177.526, 0, 0, 100),
(74629, 11, -3465.98, 2918.53, 181.739, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 74632;
DELETE FROM `creature_movement` WHERE `id` = 74632;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (74632, 21314, 530, 1, 0, 0, -3391.91, 3045.83, 173.878, 0.000028, 300, 300, 0, 0, 6326, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(74632, 1, -3381.8, 3062.61, 173.236, 0, 0, 100),
(74632, 2, -3371, 3041.67, 173.466, 0, 0, 100),
(74632, 3, -3399.76, 3041.83, 174.758, 0, 0, 100),
(74632, 4, -3433.97, 3035.83, 175.854, 0, 0, 100),
(74632, 5, -3395.24, 3043.34, 174.319, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 74685;
DELETE FROM `creature_movement` WHERE `id` = 74685;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (74685, 21325, 530, 1, 0, 0, 3421.69, 7215.73, 146.901, 4.54564, 300, 300, 0, 0, 20240, 2933, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(74685, 1, 3414.06, 7157.87, 155.235, 0, 0, 100),
(74685, 2, 3433.69, 7099.58, 153.854, 0, 0, 100),
(74685, 3, 3411.15, 7044.36, 156.68, 0, 0, 100),
(74685, 4, 3349.78, 7048.44, 159.621, 0, 0, 100),
(74685, 5, 3340, 7116.82, 163.36, 0, 0, 100),
(74685, 6, 3362.38, 7192.85, 155.493, 0, 0, 100),
(74685, 7, 3358.87, 7215.83, 156.112, 0, 0, 100),
(74685, 8, 3323.85, 7276.28, 145.87, 0, 0, 100),
(74685, 9, 3359.19, 7303.45, 141.544, 0, 0, 100),
(74685, 10, 3382.93, 7303.24, 142.595, 0, 0, 100),
(74685, 11, 3424.74, 7285.92, 144.528, 0, 0, 100),
(74685, 12, 3424.94, 7219.78, 145.799, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 75798;
DELETE FROM `creature_movement` WHERE `id` = 75798;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (75798, 21720, 530, 1, 0, 0, -4244.08, 315.988, 134.664, 3.54201, 300, 300, 0, 0, 5409, 3080, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(75798, 1, -4244.08, 315.988, 134.664, 0, 0, 100),
(75798, 2, -4235.73, 319.797, 134.671, 0, 0, 100),
(75798, 3, -4229.5, 315.743, 134.689, 0, 0, 100),
(75798, 4, -4194.72, 303.959, 136.771, 0, 0, 100),
(75798, 5, -4190.97, 294.081, 135.759, 0, 0, 100),
(75798, 6, -4183.76, 287.077, 135.655, 0, 0, 100),
(75798, 7, -4191.17, 297.893, 136.033, 0, 0, 100),
(75798, 8, -4220.7, 310.053, 134.98, 0, 0, 100),
(75798, 9, -4229.36, 315.7, 134.696, 0, 0, 100),
(75798, 10, -4230.43, 317.367, 134.676, 0, 0, 100),
(75798, 11, -4235.94, 319.629, 134.67, 0, 0, 100),
(75798, 12, -4255.56, 318.702, 134.611, 0, 0, 100),
(75798, 13, -4249.84, 317.125, 134.681, 0, 0, 100),
(75798, 14, -4243.67, 313.41, 134.663, 0, 0, 100),
(75798, 15, -4235.89, 308.923, 134.668, 0, 0, 100),
(75798, 16, -4230.52, 310.42, 134.687, 0, 0, 100),
(75798, 17, -4194.89, 303.799, 136.77, 0, 0, 100),
(75798, 18, -4188.84, 309.639, 135.933, 0, 0, 100),
(75798, 19, -4175.21, 316.237, 135.709, 0, 0, 100),
(75798, 20, -4161.51, 360.043, 141.908, 0, 0, 100),
(75798, 21, -4171.74, 320.056, 135.907, 0, 0, 100),
(75798, 22, -4185.64, 313.67, 135.349, 0, 0, 100),
(75798, 23, -4191.21, 305.068, 136.402, 0, 0, 100),
(75798, 24, -4220.62, 309.99, 134.808, 0, 0, 100),
(75798, 25, -4229.75, 310.823, 134.69, 0, 0, 100),
(75798, 26, -4235.21, 308.577, 134.681, 0, 0, 100),
(75798, 27, -4243.49, 313.385, 134.667, 0, 0, 100),
(75798, 28, -4255.52, 318.563, 134.61, 0, 0, 100),
(75798, 29, -4249.62, 317.301, 134.652, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 75801;
DELETE FROM `creature_movement` WHERE `id` = 75801;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (75801, 21720, 530, 1, 0, 0, -4263.52, 408.381, 79.6707, 1.07947, 300, 300, 0, 0, 5409, 3080, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(75801, 1, -4263.52, 408.381, 79.6707, 0, 0, 100),
(75801, 2, -4275.6, 391.144, 81.4561, 0, 0, 100),
(75801, 3, -4276.92, 384.266, 79.9921, 0, 0, 100),
(75801, 4, -4272.85, 367.338, 83.4083, 0, 0, 100),
(75801, 5, -4299.14, 333.17, 109.859, 0, 0, 100),
(75801, 6, -4291.64, 298.577, 121.624, 0, 0, 100),
(75801, 7, -4284.62, 294.588, 122.376, 0, 0, 100),
(75801, 8, -4265.87, 286.049, 122.693, 0, 0, 100),
(75801, 9, -4231.65, 272.029, 122.616, 0, 0, 100),
(75801, 10, -4221.66, 271.404, 122.595, 0, 0, 100),
(75801, 11, -4221.83, 271.217, 122.331, 0, 0, 100),
(75801, 12, -4241.43, 272.784, 122.93, 0, 0, 100),
(75801, 13, -4243.72, 273.089, 123.174, 0, 0, 100),
(75801, 14, -4287.71, 296.086, 122.087, 0, 0, 100),
(75801, 15, -4299.36, 330.603, 110.983, 0, 0, 100),
(75801, 16, -4274.68, 364.696, 85.3268, 0, 0, 100),
(75801, 17, -4269.53, 373.963, 80.2689, 0, 0, 100),
(75801, 18, -4276.89, 385.2, 79.9844, 0, 0, 100);

-- Stop sitting creatures from moving randomly.
UPDATE `creature` SET `MovementType`=0, `spawndist`=0 WHERE `guid` IN(63306,71411,71426,71428) AND MovementType!=2;

-- missing stealth detection aura from creature_template_addon, no special things set in creature_addon
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (16599));

-- Anonx

-- Nethercite Deposit 185877
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 2069;
DELETE FROM `pool_gameobject_template` WHERE `id` = 185877;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (185877, 2069, 0, 'Nethercite Deposit (185877)');
UPDATE `pool_template` SET `max_limit` = 10, `description` = 'Master Mineral Pool - Shadowmoon Valley - Nethercite Deposit (185877)' WHERE `entry` = 2069; -- 25 max
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 600 WHERE `id` = 185877; -- 360 360

-- remove Netherdust Bush 185881 from Master Herb Pool - Shadowmoon Valley 13047
DELETE FROM `pool_gameobject` WHERE `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` = 185881);
DELETE FROM `pool_template` WHERE `entry` = 13050;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (13050,15,'Master Herb Pool - Shadowmoon Valley - Netherdust Bush (185881)'); -- 44 max
DELETE FROM `pool_gameobject_template` WHERE `id` = 185881;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (185881, 13050, 0, 'Netherdust Bush (185881)');
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 600 WHERE `id` = 185881; -- 45 45

-- Remove random Silverleaf and Peacebloom from SMV master pool
DELETE FROM pool_gameobject WHERE guid IN (141825,141826);
DELETE FROM gameobject WHERE guid IN (141825,141826);

-- ----------------------------------------------------------
-- https://github.com/Looking4Group/L4G_Core/issues/1301
-- Swamprat Guards not patrolling.
-- ----------------------------------------------------------

-- Source for waypoints: https://github.com/TrinityCore/TrinityCore/blob/a249d86b00eb0854cb925f8bea76ddbb364208df/sql/old/3.3.5a/TDB54_to_TDB55_updates/world/2014_07_30_07_world_waypoints.sql
-- Pathing for Swamprat Guard Entry: 18910
SET @GUID := 67907;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=75.29373,`position_y`=5261.419,`position_z`=23.08392 WHERE `guid`=@GUID AND `id` = 18910;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=75.29373,`position_y`=5261.419,`position_z`=23.08392 WHERE `guid`=67906 AND `id` = 18910;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,75.29373,5261.419,23.08392,0,0,100),
(@GUID,2,75.29796,5274.807,23.04233,0,0,100),
(@GUID,3,82.62872,5302.216,22.98195,0,0,100),
(@GUID,4,83.02105,5314.273,22.13724,0,0,100),
(@GUID,5,82.34508,5302.751,22.97913,0,0,100),
(@GUID,6,75.29796,5274.807,23.04233,0,0,100),
(@GUID,7,75.29373,5261.419,23.08392,0,0,100),
(@GUID,8,75.86388,5247.502,23.12924,0,0,100),
(@GUID,9,79.21181,5240.832,23.16174,0,0,100),
(@GUID,10,87.85194,5229.543,22.38807,0,0,100),
(@GUID,11,79.21181,5240.832,23.16174,0,0,100),
(@GUID,12,75.86388,5247.502,23.12924,0,0,100);
 
-- Add Swamprat Guard formation
DELETE FROM `creature_linking` WHERE `master_guid`=67907;
INSERT INTO `creature_linking` (`guid`,`master_guid`,`flag`)VALUES (67906,67907,512);
 
-- Pathing for Swamprat Guard Entry: 18910
SET @GUID := 67910;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=104.3016,`position_y`=5221.673,`position_z`=22.33099 WHERE `guid`=@GUID AND `id` = 18910;
DELETE FROM `creature_movement` WHERE `id`=@GUID;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(@GUID,1,104.3016,5221.673,22.33099,0,0,100),
(@GUID,2,98.48994,5217.889,22.21583,0,0,100),
(@GUID,3,97.17163,5209.297,21.69117,0,0,100),
(@GUID,4,82.73155,5204.081,22.44019,0,0,100),
(@GUID,5,85.2154,5189.0009,21.4521,0,0,100),
(@GUID,6,90.1913,5186.492,21.33686,0,0,100),
(@GUID,7,92.36255,5170.327,22.81916,0,0,100),
(@GUID,8,104.2373,5163.936,22.91181,0,0,100),
(@GUID,9,108.7816,5178.44,22.09893,0,0,100),
(@GUID,10,121.7926,5183.15,24.04241,0,0,100),
(@GUID,11,117.1341,5191.477,23.33294,0,0,100),
(@GUID,12,118.593,5209.887,22.58294,0,0,100),
(@GUID,13,114.1548,5216.103,23.23504,0,0,100);

-- Invis Teleporter 20153
UPDATE `creature` SET `position_x`='4007.0761', `position_y`='1517.1452', `position_z`='-115.8280', `orientation`='4.9955',`spawndist`='0',`movementtype`='0' WHERE `guid` = 71729 AND `id` = 20153;

-- Nuramoc 20932
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` = 20932;

-- following
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 22394;

DELETE FROM `creature` WHERE `guid` = 78605;
DELETE FROM `creature_movement` WHERE `id` = 78605;
DELETE FROM `creature_linking` WHERE `master_guid` = 78605;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (78605, 22343, 530, 1, 0, 0, -1526.11, 9707.7, 200.013, 1.15457, 300, 300, 5, 0, 6986, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(78605, 1, -1522.4, 9733.7, 200.947, 0, 0, 100),
(78605, 2, -1529.33, 9758.3, 199.745, 0, 0, 100),
(78605, 3, -1551.31, 9763.72, 200.767, 0, 0, 100),
(78605, 4, -1569.74, 9749.59, 201.314, 0, 0, 100),
(78605, 5, -1568, 9733.1, 202.351, 0, 0, 100),
(78605, 6, -1564.24, 9712.3, 203.581, 0, 0, 100),
(78605, 7, -1553.83, 9695.39, 202.528, 0, 0, 100),
(78605, 8, -1542.55, 9689.81, 202.28, 0, 0, 100),
(78605, 9, -1526.95, 9707.79, 200.28, 0, 0, 100);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (78725, 78605, 515);

DELETE FROM `creature` WHERE `guid` = 78607;
DELETE FROM `creature_movement` WHERE `id` = 78607;
DELETE FROM `creature_linking` WHERE `master_guid` = 78607;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (78607, 22343, 530, 1, 0, 0, -1471.37, 9874.79, 200.387, 6.18657, 300, 300, 5, 0, 6986, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(78607, 1, -1451.11, 9871.83, 200.94, 0, 0, 100),
(78607, 2, -1433.16, 9858.83, 200.58, 0, 0, 100),
(78607, 3, -1426.65, 9842.49, 200.123, 0, 0, 100),
(78607, 4, -1434.51, 9827.1, 200.717, 0, 0, 100),
(78607, 5, -1453.96, 9825.76, 199.947, 0, 0, 100),
(78607, 6, -1475.44, 9842.91, 199.793, 0, 0, 100),
(78607, 7, -1480.05, 9858.86, 200.74, 0, 0, 100),
(78607, 8, -1471.41, 9873.51, 200.29, 0, 0, 100);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (78726, 78607, 515);

DELETE FROM `creature` WHERE `guid` = 78608;
DELETE FROM `creature_movement` WHERE `id` = 78608;
DELETE FROM `creature_linking` WHERE `master_guid` = 78608;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (78608, 22343, 530, 1, 0, 0, -1391.65, 9744.09, 202.75, 0.875509, 300, 300, 5, 0, 6986, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(78608, 1, -1372.27, 9735.47, 204.739, 0, 0, 100),
(78608, 2, -1360.5, 9715.69, 205.424, 0, 0, 100),
(78608, 3, -1361.06, 9694.51, 204.307, 0, 0, 100),
(78608, 4, -1371.8, 9687.97, 203.449, 0, 0, 100),
(78608, 5, -1390.19, 9696.54, 203.666, 0, 0, 100),
(78608, 6, -1405.21, 9713.07, 203.506, 0, 0, 100),
(78608, 7, -1391.49, 9746.17, 202.498, 0, 0, 100);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (78727, 78608, 515);

DELETE FROM `creature` WHERE `guid` = 78609;
DELETE FROM `creature_movement` WHERE `id` = 78609;
DELETE FROM `creature_linking` WHERE `master_guid` = 78609;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (78609, 22343, 530, 1, 0, 0, -1355.83, 9598.37, 203.966, 5.442, 300, 300, 5, 0, 6986, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(78609, 1, -1353.32, 9586.42, 206.223, 0, 0, 100),
(78609, 2, -1358.69, 9598.02, 203.788, 0, 0, 100),
(78609, 3, -1383.36, 9599.23, 202.661, 0, 0, 100),
(78609, 4, -1403.74, 9590.57, 203.64, 0, 0, 100),
(78609, 5, -1407.63, 9581.09, 205.931, 0, 0, 100),
(78609, 6, -1405.15, 9573.75, 206.087, 0, 0, 100),
(78609, 7, -1406.66, 9584.33, 205.42, 0, 0, 100),
(78609, 8, -1390.73, 9596.43, 203.393, 0, 0, 100),
(78609, 9, -1369.12, 9601.98, 202.605, 0, 0, 100),
(78609, 10, -1358.3, 9597.17, 203.946, 0, 0, 100);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (78728, 78609, 515);

DELETE FROM `creature` WHERE `guid` = 78611;
DELETE FROM `creature_movement` WHERE `id` = 78611;
DELETE FROM `creature_linking` WHERE `master_guid` = 78611;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (78611, 22343, 530, 1, 0, 0, -1274.74, 9562.37, 213.293, 5.05245, 300, 300, 5, 0, 6986, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(78611, 1, -1267.91, 9545.55, 220.449, 3000, 0, 100),
(78611, 2, -1280.4, 9580.52, 207.72, 0, 0, 100),
(78611, 3, -1289.73, 9597.52, 205.229, 0, 0, 100),
(78611, 4, -1296.62, 9603.65, 204.301, 0, 0, 100),
(78611, 5, -1308.98, 9609.74, 203.106, 0, 0, 100),
(78611, 6, -1316.37, 9608.9, 202.532, 0, 0, 100),
(78611, 7, -1321.99, 9612.33, 202.22, 0, 0, 100),
(78611, 8, -1324.19, 9616.84, 202.284, 0, 0, 100),
(78611, 9, -1322.84, 9620.88, 202.227, 0, 0, 100),
(78611, 10, -1316.26, 9621.42, 201.856, 0, 0, 100),
(78611, 11, -1305.43, 9609.02, 203.604, 0, 0, 100),
(78611, 12, -1290.43, 9598.07, 205.117, 0, 0, 100),
(78611, 13, -1282.57, 9584.44, 206.864, 0, 0, 100),
(78611, 14, -1274.84, 9562.78, 212.898, 0, 0, 100);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (78729, 78611, 515);

DELETE FROM `creature` WHERE `guid` = 84497;
DELETE FROM `creature_movement` WHERE `id` = 84497;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (84497, 19673, 530, 1, 0, 0, -3127.5, 4922.79, -98.2781, 2.44596, 120, 120, 0, 0, 27635, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(84497, 1, -3129.8, 4926.13, -98.4561, 0, 0, 100),
(84497, 2, -3124.58, 4931.7, -98.6768, 0, 0, 100),
(84497, 3, -3110.8, 4938.22, -99.5145, 0, 0, 100),
(84497, 4, -3095.94, 4940.46, -99.6997, 15000, 0, 100),
(84497, 5, -3095.94, 4940.46, -99.6997, 50000, 0, 100);

DELETE FROM `creature` WHERE `guid` = 93966;
DELETE FROM `creature_movement` WHERE `id` = 93966;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (93966, 25001, 530, 1, 0, 0, 12488.7, -6887.34, 16.4079, 1.25534, 300, 300, 0, 0, 6986, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(93966, 1, 12488.7, -6887.34, 16.4079, 0, 0, 100),
(93966, 2, 12496, -6887.74, 16.6209, 0, 0, 100),
(93966, 3, 12491.3, -6874.92, 17.0764, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 93967;
DELETE FROM `creature_movement` WHERE `id` = 93967;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (93967, 25001, 530, 1, 0, 0, 12616, -6826.48, 13.3063, 4.86425, 500, 500, 0, 0, 6986, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(93967, 1, 12616, -6826.48, 13.3063, 0, 0, 100),
(93967, 2, 12616, -6826.55, 13.5847, 0, 0, 100),
(93967, 3, 12607.4, -6830.65, 13.7661, 0, 0, 100),
(93967, 4, 12591.5, -6834.9, 13.8759, 0, 0, 100),
(93967, 5, 12566.6, -6827.45, 16.5466, 0, 0, 100),
(93967, 6, 12579.9, -6832.64, 14.988, 0, 0, 100),
(93967, 7, 12584.2, -6834.12, 14.2089, 0, 0, 100),
(93967, 8, 12591.8, -6834.89, 13.7414, 0, 0, 100),
(93967, 9, 12607.8, -6830.2, 13.6928, 0, 0, 100),
(93967, 10, 12616.4, -6826.55, 13.4983, 0, 0, 100),
(93967, 11, 12616, -6826.48, 13.3063, 0, 0, 100),
(93967, 12, 12616, -6826.55, 13.5846, 0, 0, 100),
(93967, 13, 12607.6, -6830.66, 13.7668, 0, 0, 100),
(93967, 14, 12591.7, -6834.93, 13.8765, 0, 0, 100),
(93967, 15, 12566.5, -6827.44, 16.5529, 0, 0, 100),
(93967, 16, 12579.9, -6832.64, 14.988, 0, 0, 100),
(93967, 17, 12584.2, -6834.11, 14.2094, 0, 0, 100),
(93967, 18, 12591.7, -6834.88, 13.7424, 0, 0, 100),
(93967, 19, 12607.8, -6830.21, 13.6929, 0, 0, 100),
(93967, 20, 12616.4, -6826.55, 13.4984, 0, 0, 100),
(93967, 21, 12616, -6826.48, 13.3063, 0, 0, 100),
(93967, 22, 12616, -6826.55, 13.5847, 0, 0, 100),
(93967, 23, 12607.6, -6830.42, 13.767, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` IN (134696,130108,130109,130110,130111,130113,130114,130118,130123,130125,130132,132858,132859,132937,132938,132939);
INSERT INTO `creature` VALUES (134696, 25001, 530, 1, 0, 0, 12519.5, -6911.13, 16.7992, 5.97826, 300, 300, 5, 0, 6986, 0, 0, 1);
INSERT INTO `creature` VALUES (132858, 23225, 530, 1, 0, 0, -4729.09, 309.257, 120.369, 0.628319, 180, 180, 0, 0, 6986, 0, 0, 0);
INSERT INTO `creature` VALUES (132859, 23225, 530, 1, 0, 0, -4739.92, 160.415, 132.566, 3.28122, 180, 180, 0, 0, 6986, 0, 0, 0);
INSERT INTO `creature` VALUES (132937, 22991, 530, 1, 0, 0, -3800.8, 3789.62, 314, 6.0912, 180, 180, 0, 0, 6900, 0, 0, 0);
INSERT INTO `creature` VALUES (132938, 22991, 530, 1, 0, 0, -3799.02, 3788.06, 314.158, 3.19395, 180, 180, 0, 0, 6900, 0, 0, 0);
INSERT INTO `creature` VALUES (132939, 22991, 530, 1, 0, 0, -3798.91, 3790.61, 313.852, 3.63029, 180, 180, 0, 0, 6900, 0, 0, 0);

DELETE FROM `creature` WHERE `guid` = 52290;
DELETE FROM `creature_movement` WHERE `id` = 52290;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52290, 22253, 530, 1, 0, 0, -4856.82, 402.558, 59.1076, 3.62367, 300, 300, 7, 0, 110700, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52290, 1, -4859.36, 427.32, 61.6549, 0, 0, 100),
(52290, 2, -4853.12, 397.799, 57.4232, 0, 0, 100),
(52290, 3, -4851.23, 392.443, 53.9267, 0, 0, 100),
(52290, 4, -4848.26, 388.272, 53.6636, 0, 0, 100),
(52290, 5, -4845.1, 380.154, 59.1984, 0, 0, 100),
(52290, 6, -4842.22, 349.837, 58.1208, 0, 0, 100),
(52290, 7, -4852.43, 307.038, 53.8177, 0, 0, 100),
(52290, 8, -4855.63, 298.566, 48.0571, 0, 0, 100),
(52290, 9, -4859.02, 288.522, 46.362, 0, 0, 100),
(52290, 10, -4862.75, 266.019, 48.4235, 0, 0, 100),
(52290, 11, -4863.83, 258.825, 47.6758, 0, 0, 100),
(52290, 12, -4865.29, 252.217, 44.9384, 0, 0, 100),
(52290, 13, -4868.48, 246.53, 48.6721, 0, 0, 100),
(52290, 14, -4896.43, 218.327, 53.7702, 0, 0, 100),
(52290, 15, -4902.37, 212.516, 55.2923, 0, 0, 100),
(52290, 16, -4908.11, 217.77, 57.5751, 0, 0, 100),
(52290, 17, -4882.52, 247.057, 51.0955, 0, 0, 100),
(52290, 18, -4877.26, 254.417, 45.5228, 0, 0, 100),
(52290, 19, -4870.2, 259.174, 45.0535, 0, 0, 100),
(52290, 20, -4865.65, 262.172, 48.2025, 0, 0, 100),
(52290, 21, -4859.88, 271.298, 47.1853, 0, 0, 100),
(52290, 22, -4856.11, 279.046, 43.2353, 0, 0, 100),
(52290, 23, -4853.1, 287.128, 47.2156, 0, 0, 100),
(52290, 24, -4854.15, 299.052, 48.474, 0, 0, 100),
(52290, 25, -4850.58, 307.615, 53.563, 0, 0, 100),
(52290, 26, -4842.87, 336.701, 56.7683, 0, 0, 100),
(52290, 27, -4840.48, 356.91, 58.4072, 0, 0, 100),
(52290, 28, -4849.08, 381.176, 59.4982, 0, 0, 100),
(52290, 29, -4851.05, 388.443, 54.6753, 0, 0, 100),
(52290, 30, -4852.99, 399.077, 57.6988, 0, 0, 100),
(52290, 31, -4857.24, 408.145, 59.7122, 0, 0, 100);

-- Crazed Murkblood Miner 23324
UPDATE `creature_template` SET `FactionAlliance`= 16,`FactionHorde`= 16 WHERE `entry` = 23324;

-- Crazed Murkblood Foreman 23305
UPDATE `creature_template` SET `FactionAlliance`= 16,`FactionHorde`= 16 WHERE `entry` = 23305;

-- Murkblood Miner 23287
UPDATE `creature_template` SET `FactionAlliance`='62',`FactionHorde`='62' WHERE `entry` = 23287;

-- Dragonmaw Foreman 23376

-- Mine Cart 23289
UPDATE `creature_template` SET `UnitFlags`='33555200' WHERE `entry` = 23289;

-- Nethermine Ravager 23326
UPDATE `creature_template` SET `FactionAlliance`='16',`FactionHorde`='16' WHERE `entry` = 23326;

-- Nethermine Flayer 23169
UPDATE `creature_template` SET `FactionAlliance`='16',`FactionHorde`='16' WHERE `entry` = 23169;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` = 23169;

-- Black Blood of Draenor 23286

-- Add missing Kaliri Nest spawns (10 spawns -> 13 spawns)
DELETE FROM `gameobject` WHERE `id`=181582;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(160049,181582,530,1,-1138.453,4242.442,14.39702,1.710422,0,0,0.7547092,0.6560594,181,181,100,1),
(160050,181582,530,1,-1099.266,4252.834,16.62274,4.921829,0,0,-0.6293201,0.7771462,181,181,100,1),
(160051,181582,530,1,-1332.256,4061.716,116.7778,1.186823,0,0,0.5591927,0.8290377,181,181,100,1),
(160052,181582,530,1,-1324.804,4040.573,116.778,2.094393,0,0,0.866025,0.5000008,181,181,100,1),
(160053,181582,530,1,-1200.16,4116.677,61.30519,5.480334,0,0,-0.3907309,0.920505,181,181,100,1),
(160054,181582,530,1,-1152.513,4264.079,14.19328,2.984498,0,0,0.9969168,0.07846643,181,181,100,1),
(160055,181582,530,1,-1167.655,4214.578,49.95459,3.822273,0,0,-0.9426413,0.3338076,181,181,100,1),
(160056,181582,530,1,-1140.377,4212.135,51.29008,2.949595,0,0,0.9953957,0.09585124,181,181,100,1),
(160057,181582,530,1,-1102.925,4210.664,55.64022,5.550147,0,0,-0.3583679,0.9335805,181,181,100,1),
(160058,181582,530,1,-1114.926,4184.794,17.79444,3.019413,0,0,0.9981346,0.06105176,181,181,100,1),
(160059,181582,530,1,-1108.958,4175.829,40.94169,2.199115,0,0,0.8910065,0.4539906,181,181,100,1),
(160060,181582,530,1,-1076.136,4176.775,38.13246,5.410522,0,0,-0.4226179,0.9063079,181,181,100,1),
(160061,181582,530,1,-982.9995,4230.917,42.09963,1.53589,0,0,0.6946583,0.7193398,181,181,100,1);

-- Remove static spawns of Kaliri birds. They should not exist.
-- 88901,88912,88913,86010
DELETE FROM `creature` WHERE `id` IN (17039,17034);

-- Warlord Morkh 16964
UPDATE `creature` SET `spawntimesecsmin` = 180 WHERE `guid` = 59190 AND `id` = 16964;

-- Netherwing Drake Escape Point 23225
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 23225;

DELETE FROM `creature` WHERE `guid` IN (76442, 76443, 76444, 76445, 76520);
INSERT INTO `creature` VALUES (76442, 21839, 530, 1, 0, 0, 2154.45, 4902.69, 147.832, 3.58426, 180, 180, 5, 0, 6505, 0, 0, 1);
INSERT INTO `creature` VALUES (76443, 21839, 530, 1, 0, 0, 2024.7, 4905.79, 140.883, 3.59604, 180, 180, 5, 0, 6505, 0, 0, 1);
INSERT INTO `creature` VALUES (76444, 21839, 530, 1, 0, 0, 1970.95, 4916.71, 142.878, 5.79515, 180, 180, 5, 0, 6505, 0, 0, 1);
INSERT INTO `creature` VALUES (76445, 21839, 530, 1, 0, 0, 1869.55, 4921.42, 147.661, 0.140283, 180, 180, 5, 0, 6505, 0, 0, 1);
INSERT INTO `creature` VALUES (76520, 21839, 530, 1, 0, 0, 1785.86, 4767.26, 145.577, 4.16543, 180, 180, 5, 0, 6505, 0, 0, 1);

DELETE FROM `creature` WHERE `guid` IN (109766, 109767, 109768, 109769, 109736, 109765);
INSERT INTO `creature` VALUES (109766, 22838, 530, 1, 0, 0, -2075.76, 8559.34, 23.027, 4.85702, 120, 120, 0, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (109767, 22831, 530, 1, 0, 0, -3320.86, 4925.1, -101.1, 0, 120, 120, 0, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (109768, 22839, 530, 1, 0, 0, -781.294, 6943.52, 33.3344, 0, 120, 120, 0, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (109769, 22866, 530, 1, 0, 0, 9506.09, -7329.31, 14.3973, 0, 120, 120, 0, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (109736, 22829, 530, 1, 0, 0, 214.737, 8506.04, 24.3274, 3.89208, 180, 180, 0, 0, 6986, 0, 0, 0);
INSERT INTO `creature` VALUES (109765, 22833, 530, 1, 0, 0, -248.77, 962.568, 84.4228, 1.58825, 180, 180, 0, 0, 1073, 0, 0, 0);
DELETE FROM `game_event_creature` WHERE `guid` IN (109736,109765,109766,109767,109768,109769);
INSERT INTO `game_event_creature` VALUES
(109736,10),
(109765,10),
(109766,10),
(109767,10),
(109768,10),
(109769,10);

-- Horus <Innkeeper>
UPDATE `creature_template` SET `UnitFlags`=32768 WHERE `entry` = 23143;

-- Netherwing Egg (185915)
UPDATE `gameobject` SET `spawntimesecsmin` = 3600, `spawntimesecsmax` = 3600, `animprogress` = 255 WHERE `id` = 185915;

DELETE FROM `gameobject` WHERE `guid` IN (50479,121917,121918,121919,121920);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (50479, 185915, 530, 1, -5042.72, 415.193, -10.9616, 1.5928, 0, 0, -0.870356, 0.492424, 3600, 3600, 255, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (121917, 185915, 530, 1, -5101.15, 166.01, -8.3702, 3.8751, 0, 0, -0.636078, 0.771625, 3600, 3600, 255, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (50479,121917,121918,121919,121920,121871,50417,50418,50419,50420,50421,50425);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `Chance`, `description`) VALUES
(50479, 30036, 0, 'Netherwing Mine - Netherwing Egg (185915)'),
(121917, 30036, 0, 'Netherwing Mine - Netherwing Egg (185915)'),
(121871, 30035, 0, 'Netherwing Ledge - Netherwing Egg (185915)'),
(50417, 30035, 0, 'Netherwing Ledge - Netherwing Egg (185915)'),
(50418, 30035, 0, 'Netherwing Ledge - Netherwing Egg (185915)'),
(50419, 30035, 0, 'Netherwing Ledge - Netherwing Egg (185915)'),
(50420, 30035, 0, 'Netherwing Ledge - Netherwing Egg (185915)'),
(50421, 30035, 0, 'Netherwing Ledge - Netherwing Egg (185915)'),
(50425, 30035, 0, 'Netherwing Ledge - Netherwing Egg (185915)');

UPDATE `pool_gameobject` SET `Chance` = 0 WHERE `pool_entry` IN (30034,30035,30036);

-- 185915 with incorrect z values
UPDATE `gameobject` SET `position_z` = 34.0416 WHERE `guid` = 121861;
UPDATE `gameobject` SET `position_z` = 55.1636 WHERE `guid` = 121885;

UPDATE `pool_template` SET `description` = 'Master Pool - Shadowmoon Valley - Dragonmaw Fortrees - Netherwing Egg (185915)' WHERE `entry` = 30034;
UPDATE `pool_template` SET `description` = 'Master Pool - Shadowmoon Valley - Netherwing Ledge - Netherwing Egg (185915)' WHERE `entry` = 30035;
UPDATE `pool_template` SET `description` = 'Master Pool - Shadowmoon Valley - Netherwing Mine - Netherwing Egg (185915)' WHERE `entry` = 30036;

-- positioning
UPDATE `creature` SET `position_x`='12066.5791', `position_y`='-7073.8828', `position_z`='34.1287' WHERE `guid` = 94354;
UPDATE `creature` SET `position_x`='12066.5791', `position_y`='-7073.8828', `position_z`='34.1287' WHERE `guid` = 94353; 
UPDATE `creature` SET `position_x`='11953.3154', `position_y`='-7070.2392', `position_z`='35.2994' WHERE `guid` = 94352; 
UPDATE `creature` SET `position_x`='11886.3730', `position_y`='-7071.4599', `position_z`='26.9276' WHERE `guid` = 94351; 
UPDATE `creature` SET `position_x`='11886.3730', `position_y`='-7071.4599', `position_z`='26.9276' WHERE `guid` = 94350; 
UPDATE `creature` SET `position_x`='11747.9433', `position_y`='-7066.7905', `position_z`='25.0627' WHERE `guid` = 94349;
UPDATE `creature` SET `position_x`='11738.5761', `position_y`='-7083.0727', `position_z`='82.7448' WHERE `guid` = 94206; 
UPDATE `creature` SET `position_x`='11739.6064', `position_y`='-7073.7177', `position_z`='82.0511' WHERE `guid` = 94207;
UPDATE `creature` SET `position_x`='11766.9101', `position_y`='-7107.2666', `position_z`='56.0602' WHERE `guid` = 94208; 
UPDATE `creature` SET `position_x`='11774.8212', `position_y`='-7034.1293', `position_z`='54.3281' WHERE `guid` = 94209; 
UPDATE `creature` SET `position_x`='11836.1855', `position_y`='-7017.4985', `position_z`='66.8179' WHERE `guid` = 94210; 
UPDATE `creature` SET `position_x`='12049.0712', `position_y`='-7043.2167', `position_z`='48.5350' WHERE `guid` = 94211; 
UPDATE `creature` SET `position_x`='12043.1503', `position_y`='-7042.4013', `position_z`='48.5350' WHERE `guid` = 94212; 
UPDATE `creature` SET `position_x`='11839.7294', `position_y`='-7066.2348', `position_z`='78.5018' WHERE `guid` = 94213; 
UPDATE `creature` SET `position_x`='11839.4902', `position_y`='-7121.5043', `position_z`='80.4658' WHERE `guid` = 94214;
UPDATE `creature` SET `position_x`='11838.8281', `position_y`='-7135.9887', `position_z`='80.4634' WHERE `guid` = 94215;
UPDATE `creature` SET `position_x`='11787.1162', `position_y`='-7127.5444', `position_z`='66.8178' WHERE `guid` = 94240;
UPDATE `creature` SET `position_x`='11792.9287', `position_y`='-7127.6166', `position_z`='66.8178' WHERE `guid` = 94239;
UPDATE `creature` SET `position_x`='11840.9873', `position_y`='-7027.8911', `position_z`='67.0977' WHERE `guid` = 94238;
UPDATE `creature` SET `position_x`='11777.3388', `position_y`='-7094.7705', `position_z`='55.3071' WHERE `guid` = 94237;
UPDATE `creature` SET `position_x`='11783.3886', `position_y`='-7029.5263', `position_z`='54.5822' WHERE `guid` = 94236;

-- ***----------------------------------------------------------***
--                     Honor Hold
--  https://github.com/Looking4Group/L4G_Core/issues/1669
-- ***----------------------------------------------------------***

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 58454;
DELETE FROM `creature_movement` WHERE `id` = 58454;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(58454, 1, -619.640991, 2858.679932, 54.248100, 0.750492, 100, 1689604),
(58454, 2, -619.640991, 2858.679932, 54.248100, 0.750492, 5050, 1689604),
(58454, 3, -619.640991, 2858.679932, 54.248100, 0.750492, 6000, 1689604),
(58454, 4, -619.640991, 2858.679932, 54.248100, 0.750492, 11000, 1689604),
(58454, 5, -619.640991, 2858.679932, 54.248100, 0.750492, 3000, 1689604);

UPDATE `dbscripts_on_creature_movement` SET `comments` = 'Honor Hold Archer - Visual OOC Shoot' WHERE `id` IN (1689601,1689602,1689603);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1689604;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
(1689604, 0, 15, 33796, 'Honor Hold Archer - Visual OOC Shoot');

DELETE FROM `spell_script_target` WHERE `entry` = 33796 AND `targetEntry` = 19376;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(33796, 1,  19376); -- 29120

UPDATE `creature` SET `position_x`='-668.5441', `position_y`='2755.5187', `position_z`='93.8881', `spawndist`=2.5,`MovementType`=1 WHERE `guid`=58435; -- War horse

DELETE FROM `creature` WHERE `guid` = 143827;
DELETE FROM `creature_movement` WHERE `id` = 143827;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (143827, 23326, 530, 1, 0, 0, -4963.24, 605.275, 15.154, 1.85274, 300, 300, 0, 0, 5240, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(143827, 1, -4963.24, 605.275, 15.154, 0, 5, 100),
(143827, 2, -4975.9, 623.781, 17.6164, 0, 0, 100),
(143827, 3, -4992.05, 634.386, 22.3304, 0, 0, 100),
(143827, 4, -5011.42, 637.705, 23.6266, 0, 0, 100),
(143827, 5, -4998.9, 635.911, 22.7719, 0, 0, 100),
(143827, 6, -4979.86, 627.016, 19.2181, 0, 0, 100),
(143827, 7, -4965.36, 609.717, 16.6277, 0, 0, 100),
(143827, 8, -4958.6, 589.084, 12.9757, 0, 0, 100),
(143827, 9, -4936.15, 573.935, 7.7713, 0, 0, 100),
(143827, 10, -4913.7, 588.238, 5.50511, 0, 0, 100),
(143827, 11, -4930.46, 576.111, 6.94406, 0, 0, 100),
(143827, 12, -4955.03, 583.323, 12.0287, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 143837;
DELETE FROM `creature_movement` WHERE `id` = 143837;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (143837, 23326, 530, 1, 0, 0, -4926.3, 510.823, 5.91257, 2.36952, 300, 300, 0, 0, 5240, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(143837, 1, -4926.3, 510.823, 5.91257, 0, 5, 100),
(143837, 2, -4928.6, 533.318, 6.82092, 0, 0, 100),
(143837, 3, -4939.77, 552.895, 6.60363, 0, 0, 100),
(143837, 4, -4955.23, 575.672, 11.4152, 0, 0, 100),
(143837, 5, -4946.25, 562.309, 8.26089, 0, 0, 100),
(143837, 6, -4933.91, 544.248, 6.19057, 0, 0, 100),
(143837, 7, -4927.38, 523.028, 7.01486, 0, 0, 100),
(143837, 8, -4926.59, 498.706, 3.31352, 0, 0, 100),
(143837, 9, -4907.33, 473.42, 1.10817, 0, 0, 100),
(143837, 10, -4885.66, 466.116, -2.15189, 0, 0, 100),
(143837, 11, -4899, 472.048, 0.28738, 0, 0, 100),
(143837, 12, -4925.86, 491.481, 1.15546, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 143840;
DELETE FROM `creature_movement` WHERE `id` = 143840;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (143840, 23326, 530, 1, 0, 0, -4869.95, 530.626, -1.55347, 3.01892, 300, 300, 0, 0, 5240, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(143840, 1, -4869.95, 530.626, -1.55347, 0, 5, 100),
(143840, 2, -4893.95, 534.923, 2.51669, 0, 0, 100),
(143840, 3, -4909.31, 518.172, 4.49308, 0, 0, 100),
(143840, 4, -4901.04, 531.786, 4.01936, 0, 0, 100),
(143840, 5, -4909.22, 518.321, 4.62386, 0, 0, 100),
(143840, 6, -4915.15, 493.46, 1.49952, 0, 0, 100),
(143840, 7, -4928.04, 454.673, 1.62711, 0, 0, 100),
(143840, 8, -4947.84, 455.957, 0.743868, 0, 0, 100),
(143840, 9, -4970.9, 473.281, 3.32517, 0, 0, 100),
(143840, 10, -4956.07, 459.857, 0.461098, 0, 0, 100),
(143840, 11, -4930.16, 454.308, 1.40765, 0, 0, 100),
(143840, 12, -4917.67, 485.742, 0.545169, 0, 0, 100),
(143840, 13, -4910.57, 514.098, 4.17644, 0, 0, 100),
(143840, 14, -4898.19, 533.211, 3.26963, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 143843;
DELETE FROM `creature_movement` WHERE `id` = 143843;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (143843, 23326, 530, 1, 0, 0, -4922.49, 300.925, -12.9711, 4.31468, 300, 300, 0, 0, 5240, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(143843, 1, -4922.49, 300.925, -12.9711, 0, 5, 100),
(143843, 2, -4940.97, 300.391, -8.78353, 0, 0, 100),
(143843, 3, -4955.33, 289.657, -5.66909, 0, 0, 100),
(143843, 4, -4966.68, 308.969, -3.35435, 0, 0, 100),
(143843, 5, -4964.72, 331.789, -2.61827, 0, 0, 100),
(143843, 6, -4955.16, 358.441, -2.64926, 0, 0, 100),
(143843, 7, -4951.75, 387.423, -2.67249, 0, 0, 100),
(143843, 8, -4960.42, 414.482, 2.96782, 0, 0, 100),
(143843, 9, -4964.49, 436.276, 3.19277, 0, 0, 100),
(143843, 10, -4961.49, 417.734, 3.29611, 0, 0, 100),
(143843, 11, -4952.68, 397.098, -0.843112, 0, 0, 100),
(143843, 12, -4953.89, 364.037, -2.40976, 0, 0, 100),
(143843, 13, -4962.48, 340.823, -2.17657, 0, 0, 100),
(143843, 14, -4966.38, 318.36, -2.77322, 0, 0, 100),
(143843, 15, -4960.04, 292.818, -4.732, 0, 0, 100),
(143843, 16, -4942.96, 299.441, -8.19346, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 143848;
DELETE FROM `creature_movement` WHERE `id` = 143848;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (143848, 23326, 530, 1, 0, 0, -5009.85, 293.168, 1.58165, 4.3808, 300, 300, 0, 0, 5240, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(143848, 1, -5009.85, 293.168, 1.58165, 0, 5, 100),
(143848, 2, -4985.91, 303.319, -1.47406, 0, 0, 100),
(143848, 3, -4977.48, 319.793, -1.79983, 0, 0, 100),
(143848, 4, -4965.89, 351.025, -1.16063, 0, 0, 100),
(143848, 5, -4961.49, 388.317, -1.14237, 0, 0, 100),
(143848, 6, -4955.74, 422.718, 3.0133, 0, 0, 100),
(143848, 7, -4943.15, 446.674, 1.94969, 0, 0, 100),
(143848, 8, -4918.69, 445.809, 1.47001, 0, 0, 100),
(143848, 9, -4907.83, 422.774, -4.28894, 0, 0, 100),
(143848, 10, -4914.04, 443.47, 0.791701, 0, 0, 100),
(143848, 11, -4940.44, 449.039, 1.66329, 0, 0, 100),
(143848, 12, -4953.44, 428.605, 3.19569, 0, 0, 100),
(143848, 13, -4959.89, 397.168, -0.207024, 0, 0, 100),
(143848, 14, -4965.06, 353.104, -1.06223, 0, 0, 100),
(143848, 15, -4974.9, 325.797, -1.88949, 0, 0, 100),
(143848, 16, -4983.67, 306.442, -1.94701, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 143850;
DELETE FROM `creature_movement` WHERE `id` = 143850;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (143850, 23326, 530, 1, 0, 0, -5061.09, 118.984, -16.3236, 3.18534, 300, 300, 0, 0, 5240, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(143850, 1, -5061.09, 118.984, -16.3236, 0, 5, 100),
(143850, 2, -5067.98, 134.159, -14.4941, 0, 0, 100),
(143850, 3, -5078.73, 174.49, -8.20047, 0, 0, 100),
(143850, 4, -5070.81, 196.406, -8.39611, 0, 0, 100),
(143850, 5, -5051.05, 203.338, -10.2727, 0, 0, 100),
(143850, 6, -5030.57, 208.88, -11.941, 0, 0, 100),
(143850, 7, -4996.73, 232.769, -7.64229, 0, 0, 100),
(143850, 8, -4983.49, 232.441, -8.8592, 0, 0, 100),
(143850, 9, -4990.17, 233.798, -7.77388, 0, 0, 100),
(143850, 10, -5009.65, 220.794, -10.2113, 0, 0, 100),
(143850, 11, -5009.05, 223.342, -9.7882, 0, 0, 100),
(143850, 12, -5018.98, 212.046, -11.6838, 0, 0, 100),
(143850, 13, -5031.65, 208.805, -11.7893, 0, 0, 100),
(143850, 14, -5076.62, 183.374, -8.14587, 0, 0, 100),
(143850, 15, -5072.22, 144.156, -12.7305, 0, 0, 100),
(143850, 16, -5061.07, 119.101, -16.5124, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 143859;
DELETE FROM `creature_movement` WHERE `id` = 143859;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (143859, 23326, 530, 1, 0, 0, -5052.25, 176.883, -11.9523, 0.755298, 300, 300, 0, 0, 5240, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(143859, 1, -5052.25, 176.883, -11.9523, 0, 5, 100),
(143859, 2, -5021.2, 157.306, -14.1182, 0, 0, 100),
(143859, 3, -5001.05, 161.879, -14.4532, 0, 0, 100),
(143859, 4, -5016.27, 157.271, -14.4559, 0, 0, 100),
(143859, 5, -5046.27, 166.796, -12.9523, 0, 0, 100),
(143859, 6, -5051.28, 187.322, -11.843, 0, 0, 100),
(143859, 7, -5035.34, 209.733, -11.4177, 0, 0, 100),
(143859, 8, -5024.8, 236.199, -6.39959, 0, 0, 100),
(143859, 9, -5015.81, 258.285, -1.01212, 0, 0, 100),
(143859, 10, -5023.01, 240.032, -4.77902, 0, 0, 100),
(143859, 11, -5030.11, 221.379, -9.22475, 0, 0, 100),
(143859, 12, -5049.06, 197.974, -11.1133, 0, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52022;
DELETE FROM `creature_movement` WHERE `id` = 52022;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52022, 25003, 530, 1, 0, 0, 12587.1, -6916.6, 4.60115, 6.25981, 60, 60, 0, 0, 7000, 3309, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52022, 1, 12631.3, -6915.84, 4.6, 6000, 0, 100),
(52022, 2, 12585.6, -6916.26, 4.6, 3000, 0, 100);

DELETE FROM `creature` WHERE `guid` = 52021;
DELETE FROM `creature_movement` WHERE `id` = 52021;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52021, 19684, 530, 1, 19129, 0, -1954.76, 5185.44, 16.9606, 4.30158, 25, 25, 0, 0, 5400, 0, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(52021, 1, -1954.76, 5185.44, 16.9606, 180000, 1968401, 2.7636),
(52021, 2, -1951.11, 5177.43, 17.0687, 0, 0, 100),
(52021, 3, -1961.95, 5139.5, 15.0966, 0, 0, 100),
(52021, 4, -1967.28, 5119.42, 9.57783, 180000, 0, 100),
(52021, 5, -1958.83, 5135.18, 14.4684, 0, 0, 100),
(52021, 6, -1950.57, 5159.99, 17.0747, 0, 0, 100),
(52021, 7, -1947.87, 5179.2, 17.0139, 0, 0, 100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1968401;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `dataint`, `comments`) VALUES (1968401, 1, 0, 2000005591, 'Haggard War Veteran - Say');
DELETE FROM `dbscript_string` WHERE `entry` = 2000005591;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (2000005591, 'What manner of creature is that? Looks like a purple goblin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- missing rare pools (missing more spawns)
DELETE FROM `pool_template` WHERE `entry` IN (1197,1198);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1197, 1, 'Mongress (14344)'),
(1198, 1, 'Master Feardred (6652)');
DELETE FROM `pool_creature_template` WHERE `id` IN (14344, 6652);
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(14344, 1197, 0, 'Mongress (14344)'),
(6652, 1198, 0, 'Master Feardred (6652)');

DELETE FROM `gameobject` WHERE `id` = 187333 AND `guid` IN (5788,5792,5794,5795,5796,5797,5799,5801,5803,5804,5807,5808,5812,5815,5816,88550,88551,88552,88553,88554,88555,88556,88557,88558,88559,88560,88561,88562,88563,88564,88565,88566);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5788, 187333, 530, 1, 12476.2, -6504.18, 7.68689, 1.97222, 0, 0, 0.833885, 0.551938, 120, 120, 255, 1),
(5792, 187333, 530, 1, 12614.3, -6614.62, 9.22841, 2.26892, 0, 0, 0.906306, 0.422622, 120, 120, 255, 1),
(5794, 187333, 530, 1, 12810.9, -6732.89, 1.9393, -1.88495, 0, 0, -0.809015, 0.587788, 120, 120, 255, 1),
(5795, 187333, 530, 1, 12589.1, -6622.72, 12.1877, 0.942477, 0, 0, 0.45399, 0.891007, 120, 120, 255, 1),
(5796, 187333, 530, 1, 12578.4, -6607.82, 13.6785, 0.244346, 0, 0, 0.121869, 0.992546, 120, 120, 255, 1),
(5797, 187333, 530, 1, 12515, -6563.35, 11.4506, 1.81514, 0, 0, 0.78801, 0.615662, 120, 120, 255, 1),
(5799, 187333, 530, 1, 12627.5, -6681.34, 5.22373, 2.3911, 0, 0, 0.930417, 0.366502, 120, 120, 255, 1),
(5801, 187333, 530, 1, 12606.6, -6755.9, 14.2606, 2.67035, 0, 0, 0.972369, 0.233447, 120, 120, 255, 1),
(5803, 187333, 530, 1, 12766.2, -6739.85, 0.743038, -0.767944, 0, 0, -0.374606, 0.927184, 120, 120, 255, 1),
(5804, 187333, 530, 1, 12508.6, -6572.11, 12.6193, 0.087266, 0, 0, 0.0436192, 0.999048, 120, 120, 255, 1),
(5807, 187333, 530, 1, 12843.6, -6706.06, 0.7145, -2.19912, 0, 0, -0.891008, 0.453988, 120, 120, 255, 1),
(5808, 187333, 530, 1, 12687, -6656, 4.31191, 1.20428, 0, 0, 0.566407, 0.824125, 120, 120, 255, 1),
(5812, 187333, 530, 1, 12718.7, -6809.38, 5.66973, -2.93214, 0, 0, -0.994521, 0.104535, 120, 120, 255, 1),
(5815, 187333, 530, 1, 12875.1, -6730.34, 12.2926, -2.53072, 0, 0, -0.953716, 0.300709, 120, 120, 255, 1),
(5816, 187333, 530, 1, 12733.5, -6685.64, 0.057487, 2.80997, 0, 0, 0.986285, 0.165053, 120, 120, 255, 1),
(88550, 187333, 530, 1, 12893, -7228.85, 7.59172, 3.10665, 0, 0, 0.999847, 0.0174704, 120, 120, 255, 1),
(88551, 187333, 530, 1, 12879.8, -7225.83, 8.25682, 2.82743, 0, 0, 0.987688, 0.156436, 120, 120, 255, 1),
(88552, 187333, 530, 1, 12866.6, -7307.03, 67.2767, 1.06465, 0, 0, 0.507538, 0.861629, 120, 120, 255, 1),
(88553, 187333, 530, 1, 12674.5, -6899.05, 5.06504, -0.279252, 0, 0, -0.139173, 0.990268, 120, 120, 255, 1),
(88554, 187333, 530, 1, 12628.9, -6941.38, 4.67464, 2.93214, 0, 0, 0.994521, 0.104535, 120, 120, 255, 1),
(88555, 187333, 530, 1, 12692.5, -6801.73, 4.96149, 1.37881, 0, 0, 0.636078, 0.771625, 120, 120, 255, 1),
(88556, 187333, 530, 1, 12998.4, -6866.95, 4.98379, 2.19912, 0, 0, 0.891006, 0.453991, 120, 120, 255, 1),
(88557, 187333, 530, 1, 12995.5, -6833.74, 8.10172, 1.64061, 0, 0, 0.731354, 0.681998, 120, 120, 255, 1),
(88558, 187333, 530, 1, 12632.1, -6900.89, 4.91983, -0.715585, 0, 0, -0.350207, 0.936672, 120, 120, 255, 1),
(88559, 187333, 530, 1, 12601.3, -6928.73, 4.9433, 2.65289, 0, 0, 0.970294, 0.241927, 120, 120, 255, 1),
(88560, 187333, 530, 1, 12889.5, -6765.69, 9.93854, -1.97222, 0, 0, -0.833885, 0.551938, 120, 120, 255, 1),
(88561, 187333, 530, 1, 12930.8, -6765.89, 10.0461, 0.314158, 0, 0, 0.156434, 0.987688, 120, 120, 255, 1),
(88562, 187333, 530, 1, 12778.7, -6796.9, 5.77587, 0.558504, 0, 0, 0.275637, 0.961262, 120, 120, 255, 1),
(88563, 187333, 530, 1, 12883.6, -6749.81, 11.9421, -0.558504, 0, 0, -0.275637, 0.961262, 120, 120, 255, 1),
(88564, 187333, 530, 1, 12865, -6770.13, 9.60709, 1.43117, 0, 0, 0.656059, 0.75471, 120, 120, 255, 1),
(88565, 187333, 530, 1, 12723.7, -6747.62, 0.705014, 1.76278, 0, 0, 0.771624, 0.636079, 120, 120, 255, 1),
(88566, 187333, 530, 1, 12727.6, -6791.19, 5.47884, 0.453785, 0, 0, 0.224951, 0.97437, 120, 120, 255, 1);

DELETE FROM `pool_template` WHERE `entry` = 13051;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13051,20,'Master Herb Pool - Isle of Quel\'Danas - Bloodberry Bush (187333)');

DELETE FROM `pool_gameobject_template` WHERE `id` = 187333;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(187333, 13051, 0, 'Master Herb Pool - Isle of Quel\'Danas - Bloodberry Bush (187333)');

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (62075,62080);
DELETE FROM `creature_movement` WHERE `id` IN (62075,62080);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(62075, 1, -613.088, 4182.41, 63.6378, 2.44346, 300000, 1728201),
(62080, 1, -706.67, 4163.33, 58.169, 2.33874, 600000, 1728201);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1728201;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `dataint`, `dataint2`, `dataint3`, `comments`) VALUES
(1728201, 0, 0, 2000000203, 2000000204, 2000000205, 'Falcon Watch Ranger - Say Random Text');

DELETE FROM `dbscript_string` WHERE `entry` IN (2000000203,2000000204,2000000205);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `type`, `language`, `emote`, `comment`) VALUES
(2000000203, 'We''re never going to fire one of these, are we?', 0, 0, 0, 'Falcon Watch Ranger(17282) - Say Text'),
(2000000204, 'I wonder how far this would launch that white cat...', 0, 0, 0, 'Falcon Watch Ranger (17282) - Say Text'),
(2000000205, 'Do we even have ammunition for these?', 0, 0, 0, 'Falcon Watch Ranger (17282) - Say Text');

-- wall
UPDATE `creature` SET `position_x`='-404.4508', `position_y`='6117.7026', `position_z`='23.8525' WHERE `guid` = 72325;

-- Searing Elemental (Fire Elemental)
UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` = 20514;

-- Pathing for  Entry: 18411 'TDB FORMAT'
DELETE FROM `creature_movement` WHERE `id` = 65801;
SET @ENTRY := 18411;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2257.32,`position_y`=8530.855,`position_z`=-20.88203 WHERE `id`=@ENTRY;
DELETE FROM `creature_movement_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`, `orientation`) VALUES
(@ENTRY,1,-2257.32,8530.855,-20.88203,0,0,100), -- 23:51:59
(@ENTRY,2,-2252.259,8519.586,-21.54581,0,0,100), -- 23:52:04
(@ENTRY,3,-2241.7,8498.648,-20.72995,0,0,100), -- 23:52:07
(@ENTRY,4,-2240.683,8497.167,-20.88236,0,0,100), -- 23:52:10
(@ENTRY,5,-2221.996,8460.108,-23.42958,0,0,100), -- 23:52:13
(@ENTRY,6,-2215.231,8447.502,-23.16547,0,0,100), -- 23:52:17
(@ENTRY,7,-2199.86,8414.125,-22.46026,0,0,100), -- 23:52:22
(@ENTRY,8,-2192.543,8390.158,-21.77442,0,0,100), -- 23:52:27
(@ENTRY,9,-2186.239,8366.975,-20.2285,0,0,100), -- 23:52:30
(@ENTRY,10,-2185.68,8365.402,-20.45205,0,0,100), -- 23:52:34
(@ENTRY,11,-2172.92,8321.547,-22.61752,0,0,100), -- 23:52:38
(@ENTRY,12,-2166.718,8298.99,-21.82068,0,0,100), -- 23:52:41
(@ENTRY,13,-2165.304,8292.68,-20.95293,0,0,100), -- 23:52:46
(@ENTRY,14,-2161.019,8252.406,-22.01023,0,0,100), -- 23:52:49
(@ENTRY,15,-2162.081,8231.441,-21.77042,0,0,100), -- 23:52:53
(@ENTRY,16,-2175.169,8200.849,-26.34338,0,0,100), -- 23:52:58
(@ENTRY,17,-2183.845,8179.058,-25.19711,0,0,100), -- 23:53:03
(@ENTRY,18,-2190.8,8160.827,-23.26946,0,0,100), -- 23:53:08
(@ENTRY,19,-2199.171,8122.885,-22.19745,0,0,100), -- 23:53:13
(@ENTRY,20,-2204,8090.201,-24.56266,0,0,100), -- 23:53:17
(@ENTRY,21,-2206.652,8055.295,-22.49478,0,0,100), -- 23:53:23
(@ENTRY,22,-2211.31,8026.463,-23.00625,0,0,100), -- 23:53:29
(@ENTRY,23,-2221.728,7982.893,-23.59074,0,0,100), -- 23:53:35
(@ENTRY,24,-2213.232,7946.283,-18.34021,0,0,100), -- 23:53:41
(@ENTRY,25,-2212.473,7942.965,-17.90524,0,0,100), -- 23:53:47
(@ENTRY,26,-2213.984,7890.517,-20.34743,0,0,100), -- 23:53:51
(@ENTRY,27,-2221.436,7868.065,-20.13028,0,0,100), -- 23:53:56
(@ENTRY,28,-2232.141,7838.451,-23.4087,0,0,100), -- 23:54:01
(@ENTRY,29,-2246.158,7825.064,-23.88985,0,0,100), -- 23:54:05
(@ENTRY,30,-2252.805,7796.936,-24.79749,0,0,100), -- 23:54:09
(@ENTRY,31,-2261.151,7768.636,-24.50979,0,0,100), -- 23:54:15
(@ENTRY,32,-2275.624,7755.854,-23.59475,0,0,100), -- 23:54:19
(@ENTRY,33,-2297.373,7735.584,-21.96973,0,0,100), -- 23:54:22
(@ENTRY,34,-2325.268,7714.613,-20.61766,0,0,100), -- 23:54:29
(@ENTRY,35,-2328.122,7712.66,-20.22728,0,0,100), -- 23:54:33
(@ENTRY,36,-2382.409,7710.026,-19.12642,0,0,100), -- 23:54:38
(@ENTRY,37,-2410.725,7710.378,-16.63384,0,0,100), -- 23:54:43
(@ENTRY,38,-2419.141,7710.545,-16.10202,0,0,100), -- 23:54:49
(@ENTRY,39,-2472.431,7719.353,-21.83528,0,0,100), -- 23:54:53
(@ENTRY,40,-2504.844,7734.833,-29.33388,0,0,100), -- 23:54:59
(@ENTRY,41,-2536.085,7755.195,-34.14632,0,0,100), -- 23:55:05
(@ENTRY,42,-2561.341,7770.175,-39.32412,0,0,100), -- 23:55:11
(@ENTRY,43,-2586.099,7787.987,-41.42563,0,0,100), -- 23:55:17
(@ENTRY,44,-2616.087,7808.471,-43.61702,0,0,100), -- 23:55:22
(@ENTRY,45,-2639.408,7811.06,-41.41854,0,0,100), -- 23:55:27
(@ENTRY,46,-2681.274,7820.429,-41.49043,0,0,100), -- 23:55:33
(@ENTRY,47,-2701.528,7828.728,-39.25272,0,0,100), -- 23:55:39
(@ENTRY,48,-2739.732,7861.405,-36.76991,0,0,100), -- 23:55:45
(@ENTRY,49,-2749.822,7898.72,-39.98766,0,0,100), -- 23:55:52
(@ENTRY,50,-2748.943,7914.824,-39.10258,0,0,100), -- 23:55:58
(@ENTRY,51,-2738.815,7964.146,-42.3842,0,0,100), -- 23:56:04
(@ENTRY,52,-2744.887,7993.452,-40.15096,0,0,100), -- 23:56:11
(@ENTRY,53,-2766.227,8018.188,-40.76359,0,0,100), -- 23:56:16
(@ENTRY,54,-2815.896,8041.837,-35.48971,0,0,100), -- 23:56:22
(@ENTRY,55,-2845.74,8063.085,-33.92702,0,0,100), -- 23:56:29
(@ENTRY,56,-2850.274,8089.402,-36.49883,0,0,100), -- 23:56:35
(@ENTRY,57,-2852.795,8105.44,-38.64394,0,0,100), -- 23:56:40
(@ENTRY,58,-2854.836,8152.004,-40.60387,0,0,100), -- 23:56:45
(@ENTRY,59,-2851.161,8177.881,-40.13144,0,0,100), -- 23:56:51
(@ENTRY,60,-2849.264,8209.067,-39.12178,0,0,100), -- 23:56:56
(@ENTRY,61,-2848.842,8238.16,-39.33955,0,0,100), -- 23:57:01
(@ENTRY,62,-2853.474,8279.851,-38.53737,0,0,100), -- 23:57:06
(@ENTRY,63,-2859.287,8308.508,-33.61636,0,0,100), -- 23:57:12
(@ENTRY,64,-2848,8351.318,-31.26186,0,0,100), -- 23:57:18
(@ENTRY,65,-2842.831,8364.221,-30.81167,0,0,100), -- 23:57:24
(@ENTRY,66,-2835.233,8384.752,-31.08294,0,0,100), -- 23:57:30
(@ENTRY,67,-2824.176,8435.479,-33.16406,0,0,100), -- 23:57:34
(@ENTRY,68,-2811.649,8453.352,-35.80865,0,0,100), -- 23:57:40
(@ENTRY,69,-2785.574,8480.203,-35.32317,0,0,100), -- 23:57:46
(@ENTRY,70,-2751.765,8517.617,-39.06364,0,0,100), -- 23:57:52
(@ENTRY,71,-2743.679,8523.374,-38.73209,0,0,100), -- 23:57:58
(@ENTRY,72,-2691.31,8550.521,-34.85656,0,0,100), -- 23:58:03
(@ENTRY,73,-2656.81,8558.814,-34.55776,0,0,100), -- 23:58:10
(@ENTRY,74,-2633.764,8553.14,-35.34432,0,0,100), -- 23:58:16
(@ENTRY,75,-2606.923,8550.959,-33.61824,0,0,100), -- 23:58:20
(@ENTRY,76,-2589.559,8549.772,-33.4821,0,0,100), -- 23:58:27
(@ENTRY,77,-2556.237,8575.768,-32.6988,0,0,100), -- 23:58:31
(@ENTRY,78,-2522.757,8603.379,-27.81424,0,0,100), -- 23:58:36
(@ENTRY,79,-2500.648,8624.219,-23.52207,0,0,100), -- 23:58:42
(@ENTRY,80,-2486.984,8632.387,-22.3012,0,0,100), -- 23:58:47
(@ENTRY,81,-2428.26,8643.505,-23.69637,0,0,100), -- 23:58:53
(@ENTRY,82,-2400.617,8643.93,-22.14746,0,0,100), -- 23:59:00
(@ENTRY,83,-2372.615,8641.533,-16.73965,0,0,100), -- 23:59:04
(@ENTRY,84,-2362.855,8641.482,-15.52483,0,0,100), -- 23:59:09
(@ENTRY,85,-2298.685,8620,-12.92872,0,0,100), -- 23:59:15
(@ENTRY,86,-2282.511,8598.663,-13.91626,0,0,100), -- 23:59:24
(@ENTRY,87,-2274.151,8579.072,-17.15756,0,0,100), -- 23:59:27
(@ENTRY,88,-2270.74,8570.441,-18.60716,0,0,100); -- 23:59:31
-- 0x203CDC424011FAC000000C00000BDF61 .go -2257.32 8530.855 -20.88203

-- ----------------------------------------------------------

-- Add Formula: Enchant Bracer - Greater Dodge to Ethereum Jailor Loottable
DELETE FROM `creature_loot_template` WHERE `entry` = 23008 AND `item` = 22530;
INSERT INTO `creature_loot_template` VALUES 
(23008, 22530, 1.0, 0, 1, 1, 203, 'Formula: Enchant Bracer - Major Defense');

-- Mennu's Healing Ward 20208,22322 
UPDATE creature_template SET HeroicEntry = 22322 WHERE entry = 20208;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 22322;

-- slight ppm-correction for Omen of Clarity
UPDATE `spell_proc_event` SET `ppmRate` = 2.5 WHERE `entry` = 16864; -- 2

-- Ember of Al'ar 19551
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (15 / 7) WHERE `entry` = 19551;

-- Void Reaver 19516
UPDATE `creature_template` SET `SpeedWalk` = (8 / 2.5), `SpeedRun` = (20 / 7) WHERE `entry` = 19516;

-- Solarian 18805
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (15 / 7) WHERE `entry` = 18805;

-- Nether Gas Visual Trigger 22358
UPDATE `creature_template` SET `InhabitType` = 7, `ExtraFlags` = 0 WHERE `entry` = 22358;

-- Gan'arg Mekgineer - Nether Gas Drain 38966
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (59073,59072,59071);
UPDATE `creature_addon` SET `auras` = NULL WHERE `guid` IN (59073,59072,59071);
DELETE FROM `creature_movement` WHERE `id` IN (59073,59072,59071);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(59071, 1, 4391.43, 3296.76, 143.662, 1.8326, 600000, 1694901),
(59072, 1, 4381.17, 3316.37, 145.344, 6.12611, 600000, 1694901),
(59073, 1, 4433.29, 3280.28, 144.528, 1.64061, 600000, 1694901);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1694901;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
(1694901, 0, 15, 38966, 'Gan\'arg Mekgineer - Cast Nether Gas Drain');

-- Nagrand --
-- Deathshadow Imp 22362 Spell summoned
DELETE FROM `creature` WHERE `id` = 22362;
-- 78634,78635,78636,78637,78638,78639,78640,78641,78642,78643,78644,78645,78646,78647,78648,78649,78650,78651,78652,78653

-- Wildsparrow Hawk & Twilight Serpent(twilight Ridge) -- they all should have random movement.
UPDATE creature SET spawndist=5, MovementType=1 WHERE guid IN (81663,81660,81667,81665,90500,81662,90502,90501,81668,81666,81664,81658,81657,81656,18131,41809,81655,54119,81654,56958,54419,63449);
-- real spawn point for Twilight Serpent  #1
UPDATE creature SET position_x = -1353.863647, position_y = 9605.740234, position_z = 203.529999, orientation = 5.958357 WHERE guid = 18131;
-- real spawn point for Warmaul Brute #1
UPDATE creature SET position_x = -852.286682, position_y = 8888.327148, position_z = 182.986145, orientation = 3.389638 WHERE guid = 63899;
-- real spawn point for Warmaul Brute #2
UPDATE creature SET position_x = -769.854797, position_y = 8783.798828, position_z = 184.164734, orientation = 0.533905 WHERE guid = 63891;
-- real spawn point + correct spawndist for Warmaul Brute #3
UPDATE creature SET position_x = -745.585571, position_y = 8857.194336, position_z = 182.689667, orientation = 4.797032, spawndist= 10 WHERE guid = 63900;
-- real spawn point + correct spawndist + movement for Warmaul Brute #4
UPDATE creature SET position_x = -800.287720, position_y = 8848.184570, position_z = 183.047577, orientation = 4.895202, spawndist= 10, MovementType= 1 WHERE guid = 63890;
-- real spawn point + correct spawndist + movement for Warmaul Brute #5
UPDATE creature SET position_x = -806.714905, position_y = 8745.033203, position_z = 194.883362, orientation = 1.192805, spawndist= 0, MovementType= 0 WHERE guid = 63893;
-- real spawn point for Warmaul Warlock #1
UPDATE creature SET position_x = -741.645508, position_y = 8790.031250, position_z = 183.590057, orientation = 3.293019 WHERE guid = 63748;
-- real spawn point for Warmaul Warlock #2
UPDATE creature SET position_x = -672.554565, position_y = 8779.412109, position_z = 201.774414, orientation = 2.805213 WHERE guid = 63746;
-- real spawn point for Warmaul Warlock #3
UPDATE creature SET position_x = -1075.029297, position_y = 8751.921875, position_z = 83.971367, orientation = 3.963444 WHERE guid = 63761;
-- real spawn point for Warmaul Warlock #4
UPDATE creature SET position_x = -1011.591614, position_y = 8802.136719, position_z = 126.914368, orientation = 2.953135 WHERE guid = 63763;

-- Netherstorm Trigger 19656
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (70092,70094,70096,70097,70098,70099,70100,70101,70102,70103,70104,70112,70113,70114,70115,70117,70118,70119,70121,70122,70124,70125,70126,70127,70128,70129,70130,70131,70132,70133,70134,70135,70136,70138,70139);
DELETE FROM `creature_movement` WHERE `id` IN (70092,70094,70096,70097,70098,70099,70100,70101,70102,70103,70104,70112,70113,70114,70115,70117,70118,70119,70121,70122,70124,70125,70126,70127,70128,70129,70130,70131,70132,70133,70134,70135,70136,70138,70139);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`script_id`) VALUES
(70092, 1, 388.797, 2151.67, 137.587, 2.42601, 600000, 1965601),
(70094, 1, 389.256, 2212.21, 138.531, 3.76991, 600000, 1965602),
(70096, 1, 356.446, 2515.55, 169.782, 4.69494, 600000, 1965603),
(70097, 1, 356.132, 2480.07, 172.274, 6.17846, 600000, 1965604),
(70098, 1, 391.042, 2476.3, 162.763, 1.58825, 600000, 1965605),
(70099, 1, 390.666, 2517.12, 162.528, 3.15905, 600000, 1965606),
(70100, 1, 566.804, 2779.48, 237.697, 2.6529, 600000, 1965607),
(70101, 1, 564.396, 2817.12, 236.767, 3.54302, 600000, 1965608),
(70102, 1, 526.366, 2800.64, 232.208, 4.04916, 600000, 1965609),
(70103, 1, 497.734, 2780.94, 224.188, 0.610865, 600000, 1965610),
(70104, 1, 497.302, 2821.68, 225.022, 5.67232, 600000, 1965611),
(70112, 1, 4375.58, 3503.79, 192.667, 6.23082, 600000, 1965612),
(70113, 1, 4403.76, 3503.08, 192.783, 3.10669, 600000, 1965613),
(70114, 1, 4511.52, 3448.95, 176.836, 5.93412, 600000, 1965614),
(70115, 1, 4742.1, 3171.33, 168.904, 1.76278, 600000, 1965615),
(70117, 1, 4750.92, 3225.07, 163.657, 1.71042, 600000, 1965616),
(70118, 1, 4755.25, 3205.94, 169.025, 3.75246, 600000, 1965617),
(70119, 1, 4732.45, 3261.9, 196.445, 2.33874, 600000, 1965618),
(70121, 1, 4679.24, 3294.63, 187.16, 0.226893, 600000, 1965619),
(70122, 1, 4651.26, 3121.06, 169.842, 0.261799, 600000, 1965620),
(70124, 1, 4683.86, 3109.94, 179.823, 2.16421, 600000, 1965621),
(70125, 1, 4695.68, 3087.54, 180.265, 1.6057, 600000, 1965622),
(70126, 1, 4673.86, 3145.62, 173.67, 4.62512, 600000, 1965623),
(70127, 1, 4652.61, 3299.02, 176.628, 3.14159, 600000, 1965624),
(70128, 1, 4690.36, 3319.11, 188.007, 5.02655, 600000, 1965625),
(70129, 1, 4507.24, 3383.17, 166.976, 4.67748, 600000, 1965626),
(70130, 1, 4485.82, 3359.35, 166.658, 0.20944, 600000, 1965627),
(70131, 1, 4517.36, 3347.46, 166.302, 2.14675, 600000, 1965628),
(70132, 1, 4447.59, 3454.48, 178.236, 5.61996, 600000, 1965629),
(70133, 1, 4341.19, 3388.52, 158.423, 0.314159, 600000, 1965630),
(70134, 1, 4864.21, 3828.1, 218.291, 0.191986, 600000, 1965631),
(70135, 1, 4899.57, 3785.08, 218.394, 1.01229, 600000, 1965632),
(70136, 1, 4910.879, 3862.148, 242.2404, 5.166174, 600000, 1965633),
(70138, 1, 4941.113, 3813.886, 242.1468, 2.70526, 600000, 1965634),
(70139, 1, 4963.577, 3858.574, 256.1529, 4.39823, 600000, 1965635);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1965601 AND 1965635;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `buddy_entry`, `data_flags`, `search_radius`, `comments`) VALUES
(1965601, 0, 15, 33346, 19656, 18, 70093, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965602, 0, 15, 33346, 19656, 18, 70093, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965603, 0, 15, 33346, 19656, 18, 70097, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965604, 0, 15, 33346, 19656, 18, 70098, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965605, 0, 15, 33346, 19656, 18, 70099, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965606, 0, 15, 33346, 19656, 18, 70096, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965607, 0, 15, 33346, 19656, 18, 70102, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965608, 0, 15, 33346, 19656, 18, 70102, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965609, 0, 15, 33346, 19656, 18, 70102, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965610, 0, 15, 33346, 19656, 18, 70102, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965611, 0, 15, 33346, 19656, 18, 70102, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965612, 0, 15, 33346, 22293, 18, 78368, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965613, 0, 15, 33346, 22293, 18, 78368, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965614, 0, 15, 33346, 22293, 18, 78369, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965615, 0, 15, 33346, 19656, 18, 70116, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965616, 0, 15, 33346, 19656, 16, 70117, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965617, 0, 15, 33346, 19656, 18, 70116, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965618, 0, 15, 33346, 19656, 18, 70120, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965619, 0, 15, 33346, 19656, 18, 70120, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965620, 0, 15, 33346, 19656, 18, 70123, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965621, 0, 15, 33346, 19656, 18, 70123, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965622, 0, 15, 33346, 19656, 16, 70125, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965623, 0, 15, 33346, 19656, 18, 70123, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965624, 0, 15, 33346, 19656, 16, 70127, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965625, 0, 15, 33346, 19656, 18, 70120, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965626, 0, 15, 33346, 22293, 18, 78370, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965627, 0, 15, 33346, 22293, 18, 78370, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965628, 0, 15, 33346, 22293, 18, 78370, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965629, 0, 15, 33346, 19656, 16, 70132, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965630, 0, 15, 33346, 19656, 18, 70133, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965631, 0, 15, 33346, 19656, 18, 70136, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965632, 0, 15, 33346, 19656, 18, 70138, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965633, 0, 15, 33346, 19656, 18, 70137, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965634, 0, 15, 33346, 19656, 18, 70137, 'Netherstorm Trigger - Cast Green Beam on GUID '),
(1965635, 0, 15, 33346, 19656, 18, 70137, 'Netherstorm Trigger - Cast Green Beam on GUID ');

UPDATE `creature` SET `position_x`= 4910.879, `position_y`= 3862.148, `position_z` = 242.2404, `orientation` = 5.166174 WHERE `guid` = 70136;
UPDATE `creature` SET `position_x`= 4925.209, `position_y`= 3834.604, `position_z` = 240.2437, `orientation` = 3.193953 WHERE `guid` = 70137;
UPDATE `creature` SET `position_x`= 4941.113, `position_y`= 3813.886, `position_z` = 242.1468, `orientation` = 2.70526 WHERE `guid` = 70138;
UPDATE `creature` SET `position_x`= 4963.577, `position_y`= 3858.574, `position_z` = 256.1529, `orientation` = 4.39823 WHERE `guid` = 70139;

-- Fel Iron Deposit 181555
DELETE FROM `gameobject_loot_template` WHERE `entry` = 18359;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(18359, 0, 4, 2, -12004, 2),
(18359, 12004, 1, 1, -12004, 1),
(18359, 22573, 10, 0, 1, 2),
(18359, 22574, 10, 0, 1, 2),
(18359, 23424, 100, 0, 1, 1),
(18359, 23427, 2, 0, 1, 1),
(18359, 35229, -25, 0, 1, 1);

-- Adamantite Deposit 181556 & Rich Adamantite Deposit 181569 & 181570
DELETE FROM `gameobject_loot_template` WHERE `entry` = 18361;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(18361, 0, 4, 2, -12004, 2),
(18361, 12004, 1, 1, -12004, 1),
(18361, 22573, 19.9, 0, 2, 4),
(18361, 23425, 100, 0, 1, 1),
(18361, 23427, 9.9, 0, 1, 1),
(18361, 24243, 1, 0, 1, 1),
(18361, 35229, -25, 0, 1, 1);

-- Nethercite Deposit 185877
DELETE FROM `gameobject_loot_template` WHERE `entry` = 22070;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(22070, 0, 4, 2, -12004, 2),
(22070, 22573, 10, 0, 1, 2),
(22070, 22574, 9.8, 0, 1, 2),
(22070, 23427, 2, 0, 1, 1),
(22070, 32464, 100, 0, 1, 1),
(22070, 32506, 1, 0, 1, 1);

-- no loot npcs
DELETE FROM `creature_loot_template` WHERE `entry` IN (10925,10684,10698,17887,2462,10928,10388,10389);
UPDATE `creature_template` SET `MinLootGold` = 0, `MaxLootGold` = 0, `lootid` = 0 WHERE `entry` IN (10925,10684,10698,17887,2462,10928,10388,10389);

-- ----------------------------------------------------------
-- Storm Ragers
-- ----------------------------------------------------------

UPDATE `creature` SET `spawndist`=10,`MovementType`=1,`position_x`=-1558.220337,`position_y`=7661.585938,`position_z`=-9.573906 WHERE `guid`=60633;
UPDATE `creature` SET `spawndist`=10,`MovementType`=1 WHERE `guid`=60640;

-- Wildhammer Scout 19384 - orc model
UPDATE `creature_model_info` SET `modelid_other_gender` = 18791 WHERE `modelid` = 18790;

-- Eye of Veil Reskk & Eye of Veil Shienor - Dublicates
DELETE FROM `gameobject` WHERE `guid` IN (27550,27551);

-- Generic Cosmetic Trigger - LAB 24921
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 24921;

-- Dawnblade Marksman 24979
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 24979;

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (94249, 94250, 94251, 94255, 94256, 94257, 94258);
DELETE FROM `creature_addon` WHERE `guid` IN (94249, 94250, 94251, 94255, 94256, 94257, 94258);
DELETE FROM `creature_movement` WHERE `id` IN (94249, 94250, 94251, 94255, 94256, 94257, 94258);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(94249, 1, 12709.2, -6754.35, 4.34263, 3.48685, 100, 2497901),
(94249, 2, 12709.2, -6754.35, 4.34263, 3.48685, 5050, 2497901),
(94249, 3, 12709.2, -6754.35, 4.34263, 3.48685, 6000, 2497901),
(94249, 4, 12709.2, -6754.35, 4.34263, 3.48685, 11000, 2497901),
(94249, 5, 12709.2, -6754.35, 4.34263, 3.48685, 3000, 2497901),
(94250, 1, 12707.7, -6747.59, 4.15349, 3.64, 5000, 2497902),
(94250, 2, 12707.7, -6747.59, 4.15349, 3.64, 7500, 2497902),
(94250, 3, 12707.7, -6747.59, 4.15349, 3.64, 10000, 2497902),
(94250, 4, 12707.7, -6747.59, 4.15349, 3.64, 4000, 2497902),
(94251, 1, 12706.6, -6741.57, 4.11793, 3.68712, 3500, 2497903),
(94251, 2, 12706.6, -6741.57, 4.11793, 3.68712, 6600, 2497903),
(94251, 3, 12706.6, -6741.57, 4.11793, 3.68712, 8000, 2497903),
(94251, 4, 12706.6, -6741.57, 4.11793, 3.68712, 2500, 2497903),
(94251, 5, 12706.6, -6741.57, 4.11793, 3.68712, 5000, 2497903),
(94255, 1, 12682.2, -6592.91, 5.41698, 4.24397, 100, 2497904),
(94255, 2, 12682.2, -6592.91, 5.41698, 4.24397, 5050, 2497904),
(94255, 3, 12682.2, -6592.91, 5.41698, 4.24397, 6000, 2497904),
(94255, 4, 12682.2, -6592.91, 5.41698, 4.24397, 11000, 2497904),
(94255, 5, 12682.2, -6592.91, 5.41698, 4.24397, 3000, 2497904),
(94256, 1, 12675, -6591.64, 5.38248, 4.51965, 5000, 2497904),
(94256, 2, 12675, -6591.64, 5.38248, 4.51965, 7500, 2497905),
(94256, 3, 12675, -6591.64, 5.38248, 4.51965, 10000, 2497906),
(94256, 4, 12675, -6591.64, 5.38248, 4.51965, 4000, 2497905),
(94257, 1, 12666.4, -6592.96, 5.02305, 4.87543, 3500, 2497905),
(94257, 2, 12666.4, -6592.96, 5.02305, 4.87543, 6600, 2497905),
(94257, 3, 12666.4, -6592.96, 5.02305, 4.87543, 8000, 2497905),
(94257, 4, 12666.4, -6592.96, 5.02305, 4.87543, 2500, 2497905),
(94257, 5, 12666.4, -6592.96, 5.02305, 4.87543, 5000, 2497905),
(94258, 1, 12660.7, -6596.05, 4.56759, 5.20923, 100, 2497906),
(94258, 2, 12660.7, -6596.05, 4.56759, 5.20923, 5050, 2497906),
(94258, 3, 12660.7, -6596.05, 4.56759, 5.20923, 6000, 2497906),
(94258, 4, 12660.7, -6596.05, 4.56759, 5.20923, 11000, 2497906),
(94258, 5, 12660.7, -6596.05, 4.56759, 5.20923, 3000, 2497906);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (2497901, 2497902, 2497903);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `buddy_entry`, `search_radius`, `data_flags`, `comments`) VALUES
(2497901, 0, 15, 45101, 5202, 94241, 18, 'Dawnblade Marksman - Cast Flaming Arrow'),
(2497902, 0, 15, 45101, 5202, 94242, 18, 'Dawnblade Marksman - Cast Flaming Arrow'),
(2497903, 0, 15, 45101, 5202, 94246, 18, 'Dawnblade Marksman - Cast Flaming Arrow'),
(2497904, 0, 15, 45101, 5202, 94243, 18, 'Dawnblade Marksman - Cast Flaming Arrow'),
(2497905, 0, 15, 45101, 5202, 94244, 18, 'Dawnblade Marksman - Cast Flaming Arrow'),
(2497906, 0, 15, 45101, 5202, 94245, 18, 'Dawnblade Marksman - Cast Flaming Arrow');

-- Reinforced Fel Iron Chest 185168,185169
UPDATE `gameobject_template` SET `size` = 2 WHERE `entry` = 185169;

-- cleanup dublicate 27946 spawns
DELETE FROM `creature` WHERE `guid` IN (101330,101331);

-- ===============================================================
-- Fix Creature_Template For Vendor Data (Missing From Innkeepers)
-- ===============================================================
DELETE FROM `npc_vendor` WHERE `entry` = 15433;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 159, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 1179, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 1205, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 1645, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 1708, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 4540, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 4541, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 4542, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 4544, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 4601, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 8766, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (15433, 8950, 0, 0, 0);

-- ===============================================
-- Add Several Spell Targets (Gnarlpine Vengeance)
-- ===============================================
DELETE FROM `spell_script_target` WHERE `entry` = 5628;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`) VALUES 
(5628, 1, 2006),
(5628, 1, 2007),
(5628, 1, 2008),
(5628, 1, 2009),
(5628, 1, 2010),
(5628, 1, 2011),
(5628, 1, 2012),
(5628, 1, 2013),
(5628, 1, 2014);

-- Dreadfang Widow 18467
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` = 18467;
UPDATE `creature` SET `position_x`='-2794.2963', `position_y`='4552.5883', `position_z`='-5.3070' WHERE `guid` = 66272;

DELETE FROM `pool_template` WHERE `entry` BETWEEN 39900 AND 39951;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(39900, 7, 'Dun Morogh (1-10) - Master Chest Pool'),
(39901, 5, 'Durotar (1-10) - Master Chest Pool'),
(39902, 1, 'Elwynn Forest (1-10) - Master Chest Pool'),
(39903, 5, 'Mulgore (1-10) - Master Chest Pool'),
(39904, 5, 'Teldrassil (1-10) - Master Chest Pool'),
(39905, 3, 'Tirisfal Glades (1-10) - Master Chest Pool'),
(39906, 6, 'Darkshore (10-20) - Master Chest Pool'),
(39907, 7, 'Loch Modan (10-20 - Master Chest Pool'),
(39908, 6, 'Silverpine Forest (10-20) - Master Chest Pool'),
(39909, 1, 'Westfall (10-20) - Master Chest Pool'),
(39910, 9, 'Barrens (10-25) - Master Chest Pool'),
(39911, 3, 'Redridge Mountains (15-25) - Master Chest Pool'),
(39912, 3, 'Stonetalon Mountains (15-27) - Master Chest Pool'),
(39913, 2, 'Ashenvale (18-30) - Master Chest Pool'),
(39914, 1, 'Duskwood (18-30) - Master Chest Pool'),
(39915, 2, 'Hillsbrad Foothills (20-30) - Master Chest Pool'),
(39916, 1, 'Wetlands (20-30) - Master Chest Pool'),
(39917, 1, 'Thousand Needles (25-35) - Master Chest Pool'),
(39918, 1, 'Alterac Mountains (30-40) - Master Chest Pool'),
(39919, 2, 'Arathi Highlands (30-40) - Master Chest Pool'),
(39920, 1, 'Desolace (30-40) - Master Chest Pool'),
(39921, 1, 'Stranglethorn Vale (30-45) - Master Chest Pool'),
(39922, 1, 'Dustwallow Marsh (35-45) - Master Chest Pool'),
(39923, 1, 'Badlands (35-45) - Master Chest Pool'),
(39924, 1, 'Swamp of Sorrows (35-45) - Master Chest Pool'), --
(39925, 1, 'Feralas (40-50) - Master Chest Pool'),
(39926, 1, 'Hinterlands (40-50) - Master Chest Pool'),
(39927, 1, 'Tanaris (40-50) - Master Chest Pool'),
(39928, 1, 'Searing Gorge (45-50) - Master Chest Pool'),
(39929, 1, 'Azshara (45-55) - Master Chest Pool'),
(39930, 1, 'Blasted Lands (45-55) - Master Chest Pool'),
(39931, 1, 'Un''goro Crater (48-55) - Master Chest Pool'),
(39932, 1, 'Felwood (48-55) - Master Chest Pool'),
(39933, 1, 'Burning Steppes (50-58) - Master Chest Pool'),
(39934, 1, 'Western Plaguelands (51-58) - Master Chest Pool'),
(39935, 1, 'Deadwind Pass (55-60) - Master Chest Pool'),
(39936, 1, 'Eastern Plaguelands (53-60) - Master Chest Pool'), --
(39937, 1, 'Winterspring (53-60) - Master Chest Pool'),
(39938, 1, 'Moonglade (55-60) - Master Chest Pool'), --
(39939, 1, 'Silithus (55-60) - Master Chest Pool'),
(39940, 3, 'Azuremyst Isle (TBC - 1-10) - Master Chest Pool'),
(39941, 6, 'Eversong Woods (TBC - 1-10) - Master Chest Pool'),
(39942, 1, 'Bloodmyst Isle (TBC - 10-20) - Master Chest Pool'),
(39943, 5, 'Ghostlands (TBC - 10-20) - Master Chest Pool'),
(39944, 4, 'Hellfire Peninsula (TBC - 58-63) - Master Chest Pool'),
(39945, 5, 'Zangarmarsh (TBC - 60-64) - Master Chest Pool'),
(39946, 8, 'Terokkar Forest (TBC - 62-65) - Master Chest Pool'),
(39947, 8, 'Nagrand (TBC - 64-67) - Master Chest Pool'),
(39948, 1, 'Blade''s Edge Mountains (TBC - 65-68) - Master Chest Pool'),
(39949, 1, 'Netherstorm (TBC - 67-70) - Master Chest Pool'),
(39950, 4, 'Shadowmoon Valley (TBC - 67-70) - Master Chest Pool'),
(39951, 1, 'Isle of Quel''Danas (TBC - 70-73) - Master Chest Pool');
-- (39952, 1, 'Howling Fjord (WOTLK - 68-72) - Master Chest Pool'),
-- (39953, 1, 'Borean Tundra (WOTLK - 68-72) - Master Chest Pool'),
-- (39954, 1, 'Dragonblight (WOTLK - 71-75) - Master Chest Pool'),
-- (39955, 1, 'Grizzly Hills (WOTLK - 73-75) - Master Chest Pool'),
-- (39956, 1, 'Zul'Drak (WOTLK - 74-76) - Master Chest Pool'),
-- (39957, 1, 'Sholazar Basin (WOTLK - 76-78) - Master Chest Pool'),
-- (39958, 1, 'Crystalsong Forest (WOTLK - 77-80) - Master Chest Pool'),
-- (39959, 1, 'Hrothgar's Landing (WOTLK - 77-80) - Master Chest Pool'),
-- (39960, 1, 'Icecrown (WOTLK - 77-80) - Master Chest Pool'),
-- (39961, 1, 'Storm Peaks (WOTLK - 77-80) - Master Chest Pool'),
-- (39962, 1, 'Wintergrasp (WOTLK - 77-80) - Master Chest Pool'),

DELETE FROM `pool_gameobject` WHERE `pool_entry` BETWEEN 39900 AND 39951;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `Chance`, `description`) VALUES
-- Dun Morogh
(1397, 39900, 0, 'Dun Morogh - Battered Chest (2843)'),
(1454, 39900, 0, 'Dun Morogh - Battered Chest (2843)'),
(9477, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(9932, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(9940, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10048, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10850, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10856, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10870, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(10891, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(29334, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(29343, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(29633, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(29638, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(32370, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(55542, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(55543, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(55544, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(55772, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
(55773, 39900, 0, 'Dun Morogh - Battered Chest (106318)'),
-- Teldrassil
(49528, 39904, 0, 'Teldrassil - Battered Chest (2843)'),
(49529, 39904, 0, 'Teldrassil - Battered Chest (2843)'),
(49621, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49622, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49623, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49624, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49625, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49626, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49627, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(49628, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
(55796, 39904, 0, 'Teldrassil - Battered Chest (2843)'),
(55797, 39904, 0, 'Teldrassil - Battered Chest (2843)'),
(55810, 39904, 0, 'Teldrassil - Battered Chest (106318)'),
-- Tirisfal Glades
(45060, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45106, 39905, 0, 'Tirisfal Glades - Battered Chest (2843)'),
(45110, 39905, 0, 'Tirisfal Glades - Battered Chest (2843)'),
(45240, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45244, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45251, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
(45257, 39905, 0, 'Tirisfal Glades - Battered Chest (106318)'),
-- Durotar
(12396, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12499, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12500, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12503, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12504, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12546, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12547, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12548, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12552, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12600, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12603, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12611, 39901, 0, 'Durotar - Battered Chest (106318)'),
(12637, 39901, 0, 'Durotar - Battered Chest (106318)'),
-- Mulgore
(18442, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18443, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18444, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18445, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18446, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18447, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18448, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18449, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18450, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18451, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18452, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18453, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18454, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(18455, 39903, 0, 'Mulgore - Battered Chest (106318)'),
(55811, 39903, 0, 'Mulgore - Battered Chest (106318)'),
-- Loch Modan
(12909, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(12926, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(13197, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(13437, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(20651, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(55467, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(55468, 39907, 0, 'Loch Modan - Battered Chest (2849)'),
(12796, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(12877, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(12998, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(13209, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(13246, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(13248, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(13426, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(55547, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(55556, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(55557, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(55558, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(55559, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
(55560, 39907, 0, 'Loch Modan - Battered Chest (106319)'),
-- The Barrens
(13066, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13068, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13071, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13073, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13074, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(55943, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(55946, 39910, 0, 'The Barrens - Battered Chest (2849)'),
(13305, 39910, 0, 'The Barrens - Armor Crate (3660)'),
(13309, 39910, 0, 'The Barrens - Weapon Crate (3661)'),
(13310, 39910, 0, 'The Barrens - Weapon Crate (3661)'),
(13435, 39910, 0, 'The Barrens - Weapon Crate (3689)'),
(13438, 39910, 0, 'The Barrens - Weapon Crate (3689)'),
(13439, 39910, 0, 'The Barrens - Weapon Crate (3689)'),
(55958, 39910, 0, 'The Barrens - Tattered Chest (3715)'),
(13327, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13338, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13339, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13345, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13346, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13347, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13348, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13349, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(13528, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(55953, 39910, 0, 'The Barrens - Battered Chest (106319)'),
(15748, 39910, 0, 'The Barrens - Tattered Chest (111095)'),
-- Hillsbrad Foothills
(20885, 39915, 0, 'Hillsbrad Foothills - Tattered Chest (3715)'),
(30036, 39915, 0, 'Hillsbrad Foothills - Tattered Chest (3715)'),
(29650, 39915, 0, 'Hillsbrad Foothills - Tattered Chest (4096)'),
(30032, 39915, 0, 'Hillsbrad Foothills - Tattered Chest (4096)'),
-- Ghostlands
(27287, 39943, 0, 'Ghostlands - Battered Chest (2849)'),
(27337, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(27378, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(27422, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(27446, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(27493, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(27515, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(33980, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(34000, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(34002, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(34008, 39943, 0, 'Ghostlands - Tattered Chest (2847)'),
(56129, 39943, 0, 'Ghostlands - Battered Chest (106319)'),
(27522, 39943, 0, 'Ghostlands - Tattered Chest (111095)'),
(27542, 39943, 0, 'Ghostlands - Large Battered Chest (75293)'),
-- Silverpine Forest
(35436, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35447, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35484, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35487, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(55461, 39908, 0, 'Silverpine Forest - Battered Chest (2849)'),
(35449, 39908, 0, 'Silverpine Forest - Tattered Chest (111095)'),
(35481, 39908, 0, 'Silverpine Forest - Tattered Chest (111095)'),
(35489, 39908, 0, 'Silverpine Forest - Tattered Chest (111095)'),
(35483, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(35569, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42067, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42068, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42069, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42077, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(42957, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
(55784, 39908, 0, 'Silverpine Forest - Battered Chest (106319)'),
-- Stonetalon Mountains
(40707, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(40708, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(40709, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(40710, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(40711, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(55944, 39912, 0, 'Stonetalon Mountains - Battered Chest (2849)'),
(47589, 39912, 0, 'Stonetalon Mountains - Tattered Chest (3715)'),
(47590, 39912, 0, 'Stonetalon Mountains - Tattered Chest (3715)'),
-- Darkshore
(48492, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(48531, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(48727, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(48756, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(55798, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(55799, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(55942, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(55945, 39906, 0, 'Darkshore - Battered Chest (2849)'),
(48651, 39906, 0, 'Darkshore - Armor Crate (3660)'),
(48765, 39906, 0, 'Darkshore - Armor Crate (3660)'),
(48774, 39906, 0, 'Darkshore - Weapon Crate (3661)'),
(48537, 39906, 0, 'Darkshore - Battered Chest (106319)'),
(48602, 39906, 0, 'Darkshore - Battered Chest (106319)'),
(48623, 39906, 0, 'Darkshore - Battered Chest (106319)'),
(48695, 39906, 0, 'Darkshore - Battered Chest (106319)'),
(55952, 39906, 0, 'Darkshore - Battered Chest (106319)'),
-- Azuremyst Isle
(12093, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(12094, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(12095, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(12096, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(12097, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(12098, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(29908, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(30474, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
(30513, 39940, 0, 'Azuremyst Isle - Battered Chest (2844)'),
-- Eversong Woods
(12099, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12100, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12101, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12102, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12103, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12104, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12105, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12106, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12107, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(12108, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(33899, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(33932, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(33953, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(56064, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(56065, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
(56066, 39941, 0, 'Eversong Woods - Tattered Chest (2845)'),
-- Redridge Mountains
(20798, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(28632, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(31122, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(31127, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(31130, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(55463, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(55465, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(55778, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
(55779, 39911, 0, 'Redridge Mountains - Battered Chest (2849)'),
-- Ashenvale
(47813, 39913, 0, 'Ashenvale - Battered Chest (2849)'),
(47814, 39913, 0, 'Ashenvale - Battered Chest (2849)'),
(47972, 39913, 0, 'Ashenvale - Weapon Crate (3689)'),
(47973, 39913, 0, 'Ashenvale - Weapon Crate (3689)'),
-- Arathi Highlands
(16947, 39919, 0, 'Arathi Highlands - Tattered Chest (105578)'),
(16787, 39919, 0, 'Arathi Highlands - Tattered Chest (105579)'),
(55568, 39919, 0, 'Arathi Highlands - Tattered Chest (105579)'),
(16992, 39919, 0, 'Arathi Highlands - Tattered Chest (105581)'),
(55576, 39919, 0, 'Arathi Highlands - Tattered Chest (105581)'),
-- Alterac Mountains
(32213, 39918, 0, 'Arathi Highlands - Tattered Chest (105579)'),
(33181, 39918, 0, 'Arathi Highlands - Tattered Chest (105579)'),
-- Western Plaguelands
(45486, 39934, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)'),
(55580, 39934, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)'),
-- Hellfire Peninsula
(30390, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(30392, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(32136, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(56067, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(56068, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(56075, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(56077, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181798)'),
(56078, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181800)'),
(56100, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181800)'),
(56101, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181800)'),
(56102, 39944, 0, 'Hellfire Peninsula - Fel Iron Chest (181800)'),
-- Zangarmarsh
(28315, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(32769, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(56069, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(56070, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(56073, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(56074, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(56681, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181798)'),
(20368, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181800)'),
(28317, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181800)'),
(56079, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181800)'),
(56080, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181800)'),
(56081, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181800)'),
(56084, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181800)'),
(56096, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181800)'),
(56706, 39945, 0, 'Zangarmarsh - Fel Iron Chest (181800)'),
-- Terokkar Forest
(28414, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(56071, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(56072, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(56076, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181798)'),
(14107, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56082, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56086, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56087, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56088, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56089, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56092, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56093, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56094, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56097, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56103, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(56104, 39946, 0, 'Terokkar Forest - Fel Iron Chest (181800)'),
(14690, 39946, 0, 'Terokkar Forest - Adamantite Bound Chest (181802)'),
(14829, 39946, 0, 'Terokkar Forest - Adamantite Bound Chest (181802)'),
(56110, 39946, 0, 'Terokkar Forest - Adamantite Bound Chest (181802)'),
(56111, 39946, 0, 'Terokkar Forest - Adamantite Bound Chest (181802)'),
(56118, 39946, 0, 'Terokkar Forest - Adamantite Bound Chest (181802)'),
(56123, 39946, 0, 'Terokkar Forest - Adamantite Bound Chest (181802)'),
-- Nagrand
(56083, 39947, 0, 'Nagrand - Fel Iron Chest (181800)'),
(56085, 39947, 0, 'Nagrand - Fel Iron Chest (181800)'),
(56090, 39947, 0, 'Nagrand - Fel Iron Chest (181800)'),
(56091, 39947, 0, 'Nagrand - Fel Iron Chest (181800)'),
(56095, 39947, 0, 'Nagrand - Fel Iron Chest (181800)'),
(56098, 39947, 0, 'Nagrand - Fel Iron Chest (181800)'),
(56099, 39947, 0, 'Nagrand - Fel Iron Chest (181800)'),
(30430, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56107, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56112, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56113, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56114, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56115, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56117, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56119, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56120, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56121, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56122, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56124, 39947, 0, 'Nagrand - Adamantite Bound Chest (181802)'),
(56126, 39947, 0, 'Nagrand - Felsteel Chest (181804)'),
(56127, 39947, 0, 'Nagrand - Felsteel Chest (181804)'),
(56128, 39947, 0, 'Nagrand - Felsteel Chest (181804)'),
(56684, 39947, 0, 'Nagrand - Felsteel Chest (181804)'),
-- Blade''s Edge Mountains
(27610, 39948, 0, 'Blade''s Edge Mountains - Fel Iron Chest (181800)'),
(28297, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
(56682, 39948, 0, 'Blade''s Edge Mountains - Adamantite Bound Chest (181802)'),
-- Netherstorm
(28265, 39949, 0, 'Netherstorm - Adamantite Bound Chest (181802)'),
(32783, 39949, 0, 'Netherstorm - Adamantite Bound Chest (181802)'),
(32810, 39949, 0, 'Netherstorm - Adamantite Bound Chest (181802)'),
(56683, 39949, 0, 'Netherstorm - Adamantite Bound Chest (181802)'),
-- Shadowmoon Valley
(56105, 39950, 0, 'Shadowmoon Valley - Adamantite Bound Chest (181802)'),
(56106, 39950, 0, 'Shadowmoon Valley - Adamantite Bound Chest (181802)'),
(56108, 39950, 0, 'Shadowmoon Valley - Adamantite Bound Chest (181802)'),
(56109, 39950, 0, 'Shadowmoon Valley - Adamantite Bound Chest (181802)'),
(56116, 39950, 0, 'Shadowmoon Valley - Adamantite Bound Chest (181802)'),
(35344, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)'),
(56125, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)'),
(56685, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)'),
(56686, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)'),
(56707, 39950, 0, 'Shadowmoon Valley - Felsteel Chest (181804)');
-- Isle of Quel''Danas

-- Fel Iron Chest (181798)
-- Heavy Fel Iron Chest (181800)
-- Adamantite Bound Chest (181802)
-- Felsteel Chest (181804)
DELETE FROM `pool_template` WHERE `entry` IN (14000,14001,14002,14003);
DELETE FROM `pool_gameobject_template` WHERE `pool_entry` IN (14000,14001,14002,14003);

-- RePosition Pool
DELETE FROM `pool_template` WHERE `entry` IN (25467,30030);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (25467, 1, 'Veil Lithic - Cursed Eggs - Pool 12');
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (25467,30030);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (65104, 25467, 0, '185211 - Cursed Egg #23');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (65105, 25467, 0, '185210 - Cursed Egg #24');

DELETE FROM `pool_gameobject` WHERE `guid` IN (55503,55524,56704);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `Chance`, `description`) VALUES
(55503, 40009, 0, 'Arathi Highlands - Solid Chest Pool'),
--
(55524, 40017, 0, 'Swamp of Sorrows - Solid Chest Pool 2'),
(56704, 40012, 0, 'Swamp of Sorrows - Solid Chest Pool');

-- Fix Questline 551, 554
-- Worn Wooden Chest 1765
DELETE FROM `gameobject_loot_template` WHERE `entry` = 1570;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (1570, 3706, 100, 0, 1, 1, 4, 'Ensorcelled Parchment');


-- under map
UPDATE `creature` SET `position_x` = -2069.12, `position_y` = -3365.45, `position_z` = 60.51, `orientation` = 2.50 WHERE `guid` = 11242;
UPDATE `gameobject` SET `position_x` = -1699.20, `position_y` = -3514.54, `position_z` = 60.47, `orientation` = 1.16 WHERE `guid` = 55503;
UPDATE `gameobject` SET `position_z` = 27.79 WHERE `guid` = 55524;
UPDATE `gameobject` SET `position_x` = -10954.67, `position_y` = -3695.79, `position_z` = 27.31, `orientation` = 4.96 WHERE `guid` = 56704;

DELETE FROM `creature_linking` WHERE `master_guid` = 81728;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(129170, 81728, 3),
(129171, 81728, 3);

DELETE FROM `gameobject` WHERE `id` = 185600;
REPLACE INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(50426, 185600, 530, 1, -4138.3, 482.01, 60.3146, 3.08918, 0, 0, 0.166106, 0.986108, 300, 600, 100, 1), -- 121847
(50427, 185600, 530, 1, -4174.88, 299.702, 125.637, 2.8646, 0, 0, 0.00548026, 0.999985, 300, 600, 100, 1), -- 121850
(50428, 185600, 530, 1, -5287.05, 540.014, 38.6798, 4.90792, 0, 0, 0.63471, -0.77275, 300, 600, 100, 1), -- 50419
(50429, 185600, 530, 1, -4286.16, 408.836, 129.779, 1.36136, 0, 0, 0.992549, 0.121846, 300, 600, 100, 1), -- 121852
(50430, 185600, 530, 1, -4195.44, 528.106, 28.0747, 3.77486, 0, 0, 0.645871, -0.763447, 300, 600, 100, 1), -- 121853
(50431, 185600, 530, 1, -4158.35, 373.572, 142.105, 4.45963, 0, 0, 0.978423, -0.206614, 300, 600, 100, 1), -- 121854
(50432, 185600, 530, 1, -4240.26, 440.643, 49.1631, 2.44898, 0, 0, 0.998777, -0.0494412, 300, 600, 100, 1), -- 121855
(50433, 185600, 530, 1, -4930.13, 41.446, 61.4424, 1.88495, 0, 0, 0.946726, -0.32204, 300, 600, 100, 1), -- 121858
(50434, 185600, 530, 1, -5103.11, 707.979, 85.0428, 0.279252, 0, 0, 0.124537, 0.992215, 300, 600, 100, 1), -- 121859
(200080, 185600, 530, 1, -4771.52, 866.079, 98.9096, 0.818351, 0, 0, 0.397853, 0.917449, 300, 600, 100, 1), -- 50425
(200081, 185600, 530, 1, -4094.41, 395.824, 30.4273, 0.331611, 0, 0, 0.63471, -0.77275, 300, 600, 100, 1), -- 121851
(200082, 185600, 530, 1, -4866.49, -112.199, 62.6526, 4.43314, 0, 0, -0.798635, 0.601815, 300, 600, 100, 1), -- 121860
(200083, 185600, 530, 1, -5303.7597, 544.0319, 34.0416, 2.4260, 0, 0, 0.936672, 0.350207, 300, 600, 100, 1), -- 121861
(200084, 185600, 530, 1, -4922.48, -70.154, 123.481, 5.23599, 0, 0, -0.5, 0.866025, 300, 600, 100, 1), -- 121862
(200085, 185600, 530, 1, -5103.52, 64.5565, 81.2546, 4.27606, 0, 0, -0.843391, 0.5373, 300, 600, 100, 1), -- 121863
(200086, 185600, 530, 1, -5216.26, 322.304, 123.711, 4.88367, 0, 0, 0.644031, -0.764999, 300, 600, 100, 1), -- 121864
(200087, 185600, 530, 1, -5005.9, -115.661, -9.90561, 2.34198, 0, 0, 0.921136, 0.389242, 300, 600, 100, 1), -- 121865
(200088, 185600, 530, 1, -5114.87, -99.3793, 71.328, 1.61156, 0, 0, 0.72137, 0.69255, 300, 600, 100, 1), -- 121866
(200089, 185600, 530, 1, -5339.26, -51.5384, 89.0366, 0.409894, 0, 0, 0.203515, 0.979072, 300, 600, 100, 1), -- 121867
(200090, 185600, 530, 1, -5457.18, -27.8145, 108.786, 1.372, 0, 0, 0.633446, 0.773787, 300, 600, 100, 1), -- 121868
(200091, 185600, 530, 1, -5308.66, 394.053, 46.499, 5.15053, 0, 0, 0.536535, -0.843878, 300, 600, 100, 1), -- 121869
(200092, 185600, 530, 1, -5215.8, 803.416, 175.021, 4.63811, 0, 0, 0.732875, -0.680363, 300, 600, 100, 1), -- 121870
(200093, 185600, 530, 1, -5054.15, 788.018, 56.7731, 0.860593, 0, 0, 0.41714, 0.908842, 300, 600, 100, 1), -- 121871
(200094, 185600, 530, 1, -5021.49, 588.721, 164.437, 0.331201, 0, 0, 0.164845, 0.98632, 300, 600, 100, 1), -- 121872
(200095, 185600, 530, 1, -4936.54, 744.955, 123.693, 0.535405, 0, 0, 0.264517, 0.964381, 300, 600, 100, 1), -- 121873
(200096, 185600, 530, 1, -5018.59, 759.192, 132.643, 2.72274, 0, 0, 0.97815, 0.2079, 300, 600, 100, 1), -- 121874
(200097, 185600, 530, 1, -5058.2, 731.691, 146.694, 3.47671, 0, 0, 0.985995, -0.166777, 300, 600, 100, 1), -- 121875
(200098, 185600, 530, 1, -5036.01, 612.522, 185.498, 2.30647, 0, 0, 0.91408, 0.405535, 300, 600, 100, 1), -- 121876
(200099, 185600, 530, 1, -5004.34, 14.0032, 76.3543, 4.10347, 0, 0, 0.886562, -0.46261, 300, 600, 100, 1), -- 121877
(200100, 185600, 530, 1, -4935.62, 316.147, 138.856, 4.50214, 0, 0, 0.777401, -0.629006, 300, 600, 100, 1), -- 121878
(200101, 185600, 530, 1, -4944.96, 472.32, 146.94, 5.73178, 0, 0, 0.275107, -0.961414, 300, 600, 100, 1), -- 121879
(200102, 185600, 530, 1, -4964.88, 171.673, 123.666, 4.40597, 0, 0, 0.806738, -0.59091, 300, 600, 100, 1), -- 121880
(200103, 185600, 530, 1, -4949.78, 290.124, 115.715, 0.669819, 0, 0, 0.328684, 0.94444, 300, 600, 100, 1), -- 121881
(200104, 185600, 530, 1, -5018.33, 233.498, 109.22, 4.18213, 0, 0, 0.867687, -0.497111, 300, 600, 100, 1), -- 121882
(200105, 185600, 530, 1, -5137.33, 165.547, 157.05, 1.64921, 0, 0, 0.73428, 0.678847, 300, 600, 100, 1), -- 121883
(200106, 185600, 530, 1, -5144.73, 189.016, 150.898, 0.054852, 0, 0, 0.0274226, 0.999624, 300, 600, 100, 1), -- 121884
(200107, 185600, 530, 1, -5319.0400, 184.9100, 55.1636, 5.1716, 0, 0, 0.527619, -0.849481, 300, 600, 100, 1), -- 121885
(200108, 185600, 530, 1, -5023.28, 346.236, 170.649, 5.87857, 0, 0, 0.200929, -0.979606, 300, 600, 100, 1), -- 121886
(200109, 185600, 530, 1, -5046.01, 330.714, 172.475, 3.43587, 0, 0, 0.989195, -0.146609, 300, 600, 100, 1), -- 121887
(200110, 185600, 530, 1, -5042.42, 402.531, 175.591, 4.37848, 0, 0, 0.814783, -0.579767, 300, 600, 100, 1), -- 121888
(200111, 185600, 530, 1, -5135.77, 104.896, 142.188, 3.23179, 0, 0, 0.998983, -0.0450826, 300, 600, 100, 1), -- 121889
(200112, 185600, 530, 1, -5065.14, 116.682, 170.545, 4.05313, 0, 0, 0.898055, -0.439884, 300, 600, 100, 1), -- 121890
(200113, 185600, 530, 1, -5098.13, 383.002, 231.763, 5.10103, 0, 0, 0.557255, -0.830342, 300, 600, 100, 1), -- 121891
(200114, 185600, 530, 1, -4961.22, 326.443, -3.23122, 3.4383, 0, 0, -0.989016, 0.147811, 300, 600, 100, 1), -- 121892
(200115, 185600, 530, 1, -4955.09, 545.788, 7.66699, 1.16937, 0, 0, 0.551936, 0.833886, 300, 600, 100, 1), -- 121897
(200116, 185600, 530, 1, -4987.64, 451.117, 6.23003, 5.28835, 0, 0, -0.477158, 0.878817, 300, 600, 100, 1), -- 121899
(200117, 185600, 530, 1, -5151.29, 492.122, -12.8063, 1.23918, 0, 0, 0.580703, 0.814116, 300, 600, 100, 1), -- 121901
(200118, 185600, 530, 1, -4962.26, 580.082, 12.6127, 4.66003, 0, 0, -0.725374, 0.688355, 300, 600, 100, 1), -- 121902
(200119, 185600, 530, 1, -5017.81, 237.62, -6.4276, 3.89209, 0, 0, -0.930417, 0.366502, 300, 600, 100, 1), -- 121903
(200120, 185600, 530, 1, -5052.35, 121.676, -16.9854, 5.81195, 0, 0, -0.233445, 0.97237, 300, 600, 100, 1), -- 121900
(200121, 185600, 530, 1, -5111.1, 304.192, 161.911, 3.55782, 0, 0, 0.999991, -0.00430372, 300, 600, 100, 1), -- 50422
(200122, 185600, 530, 1, -5075.77, 150.64, 129.225, 3.24052, 0, 0, 0.998777, -0.0494435, 300, 600, 100, 1), -- 50423
(200123, 185600, 530, 1, -5175.32, -143.933, 57.6825, 2.89729, 0, 0, 0.992549, 0.121848, 300, 600, 100, 1), -- 50420
(200124, 185600, 530, 1, -5418.32, 479.169, 46.8964, 0.333759, 0, 0, 0.166106, 0.986108, 300, 600, 100, 1), -- 50417
(200125, 185600, 530, 1, -5394.55, 624.369, 90.2262, 6.01847, 0, 0, 0.131971, -0.991254, 300, 600, 100, 1), -- 50418
(200126, 185600, 530, 1, -5127.7, 921.891, 31.0533, 4.87886, 0, 0, 0.64587, -0.763447, 300, 600, 100, 1), -- 50421
(200127, 185600, 530, 1, -4880.02, 185.468, 37.0605, 3.79736, 0, 0, 0.946726, -0.32204, 300, 600, 100, 1), -- 50424
(200128, 185600, 530, 1, -4221.47, 370.147, 136.232, 2.11185, 0, 0, 0.626656, 0.779296, 300, 600, 100, 1), -- 121848
(200129, 185600, 530, 1, -4141.23, 468.919, 32.5995, 0.872664, 0, 0, 0.589711, 0.807614, 300, 600, 100, 1), -- 121849
(200130, 185600, 530, 1, -4188.79, 455.691, 30.549, 5.53863, 0, 0, 0.984461, 0.175606, 300, 600, 100, 1), -- 121856
(200131, 185600, 530, 1, -4244.2, 324.641, 134.416, 2.40488, 0, 0, 0.984254, -0.176758, 300, 600, 100, 1), -- 121857
(200132, 185600, 530, 1, -5128.44, 694.609, 40.3193, 3.50812, 0, 0, 0.1558, -0.987789, 300, 600, 100, 1), -- 121896
(200133, 185600, 530, 1, -5053.19, 312.713, 5.91998, 3.98376, 0, 0, 0.580256, -0.814434, 300, 600, 100, 1), -- 121904
(200134, 185600, 530, 1, -5029.06, 700.02, 19.1022, 4.90438, 0, 0, 0.432291, -0.901734, 300, 600, 100, 1), -- 121898
(200135, 185600, 530, 1, -5101.15, 166.01, -8.3702, 3.87515, 0, 0, 0.933488, -0.35861, 300, 600, 100, 1), -- 121895
(200136, 185600, 530, 1, -5042.72, 415.193, -10.9616, 1.59284, 0, 0, 0.714858, 0.69927, 300, 600, 100, 1), -- 121893
(200137, 185600, 530, 1, -5109.7, 253.597, -32.967, 3.36981, 0, 0, 0.993497, -0.113862, 300, 600, 100, 1); -- 121894

-- Trelane's Chest 2716, Trelane's Footlocker 2717, Trelane's Lockbox 2718
DELETE FROM `dbscripts_on_event` WHERE `id` IN (415, 416, 417);
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES
(415, 0, 31, 2570, 16, 8, 0, 0, 0, 0, 'Quest 696 - Trelane''s Footlocker 2717 - Terminate Script if 2570 is already spawned'),
(415, 3, 10, 2570, 300000, 0, -1778.46, -1510.57, 75.17, 5.22, 'Quest 696 - Trelane''s Footlocker 2717 - Summon 2570'),
(415, 3, 10, 2569, 300000, 0, -1777.64, -1513.58, 75.51, 5.28, 'Quest 696 - Trelane''s Footlocker 2717 - Summon 2569'),
(416, 0, 31, 2569, 16, 8, 0, 0, 0, 0, 'Quest 696 - Trelane''s Chest 2716 - Terminate Script if 2569 is already spawned'),
(416, 3, 10, 2569, 300000, 0, -1797.32, -1504.7, 99.39, 5.14, 'Quest 696 - Trelane''s Chest 2716 - Summon 2569'),
(416, 3, 10, 2570, 300000, 0, -1789.8, -1499.9, 99.38, 4.6, 'Quest 696 - Trelane''s Chest 2716 - Summon 2570'),
(417, 0, 31, 2569, 16, 8, 0, 0, 0, 0, 'Quest 696 - Trelane''s Lockbox 2718 - Terminate Script if 2569 is already spawned'),
(417, 3, 10, 2569, 300000, 0, -1772.93, -1505.9, 91.87, 5.7, 'Quest 696 - Trelane''s Lockbox 2718 - Summon 2569'),
(417, 3, 10, 2570, 300000, 0, -1774.76, -1495.07, 90.6, 5.27, 'Quest 696 - Trelane''s Lockbox 2718 - Summon 2570');

-- Trelane's Chest 2716, Trelane's Footlocker 2717, Trelane's Lockbox 2718
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` IN (2716,2717,2718);

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (2177,2178,2179);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (2177, 4531, 100, 0, 1, 1, 0, 'Trelane''s Orb');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (2178, 4530, 100, 0, 1, 1, 0, 'Trelane''s Phylactery');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (2179, 4532, 100, 0, 1, 1, 0, 'Trelane''s Ember Agate');

-- Food Crate
UPDATE `gameobject` SET `spawntimesecsmin` = 7200, `spawntimesecsmax` = 7200 WHERE `id` IN (3662, 153470, 153471, 153472, 153473) AND `spawntimesecsmin` < 900;

-- Burial Chest (181665)
UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `id` = 181665;
DELETE FROM `pool_template` WHERE `entry` = 13999;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13999, 7, 'Ghostlands - Burial Chest (181665)');

DELETE FROM `pool_gameobject_template` WHERE `id` = 181665;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `Chance`, `description`) VALUES
(181665, 13999, 0, 'Ghostlands - Burial Chest (181665)');

-- Coilskar Chest (184716)
UPDATE `gameobject` SET `spawntimesecsmin` = 60, `spawntimesecsmax` = 60 WHERE `id` = 184716;
DELETE FROM `pool_template` WHERE `entry` = 13998;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13998, 41, 'Shadowmoon Valley - Coilskar Chest (184716)');

DELETE FROM `pool_gameobject_template` WHERE `id` = 184716;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `Chance`, `description`) VALUES
(184716, 13998, 0, 'Shadowmoon Valley - Coilskar Chest (184716)');

-- Wicker Chest (184740)
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 480 WHERE `id` = 184740;
DELETE FROM `pool_template` WHERE `entry` = 13997;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13997, 7, 'Zangarmarsh - Wicker Chest (184740)');

DELETE FROM `pool_gameobject_template` WHERE `id` = 184740;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `Chance`, `description`) VALUES
(184740, 13997, 0, 'Zangarmarsh - Wicker Chest (184740)');

-- Primitive Chest (184793)
UPDATE `gameobject` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 900 WHERE `id` = 184793;
DELETE FROM `pool_template` WHERE `entry` = 13996;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13996, 20, 'Ghostlands - Primitive Chest (184793)');

DELETE FROM `pool_gameobject_template` WHERE `id` = 184793;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `Chance`, `description`) VALUES
(184793, 13996, 0, 'Ghostlands - Primitive Chest (184793)');

-- Darkspine Ore Chest 187264
UPDATE `gameobject` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 300 WHERE `id` = 187264;
DELETE FROM `pool_template` WHERE `entry` = 13995;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(13995, 28, 'Isle of Quel''Danas - Darkspine Ore Chest (187264)');

DELETE FROM `pool_gameobject_template` WHERE `id` = 187264;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `Chance`, `description`) VALUES
(187264, 13995, 0, 'Isle of Quel''Danas - Darkspine Ore Chest (187264)');

-- missing pooled herb gos in tbc
DELETE FROM `pool_gameobject` WHERE `guid` IN (21,2730,20364,20944,28313,30408,30417,30544,32744,32824,33835,42178,42200,42215,42217,42218,42227,42236,42237,42240,42245,42246,42247,42295,42296,42346,42430,28312,32479,32629,33440,33847,34029,42179,42180,42181,42238,42239,42243,42248,42298,20949,20953,28319,30552,32729,42199,42201,42202,42216,42228,42235,42241,42244);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `Chance`, `description`) VALUES
-- Zangarmarsh - Ragveil (183043)
(21, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(2730, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(20364, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(20944, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(28313, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(30408, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(30417, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(30544, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(32744, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(32824, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(33835, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42178, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42200, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42215, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42217, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42218, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42227, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42236, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42237, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42240, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42245, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42246, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42247, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42295, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42296, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42346, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
(42430, 13049, 0, 'Zangarmarsh - Ragveil (183043)'),
-- Zangarmarsh - Felweed (183044)
(28312, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(32479, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(32629, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(33440, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(33847, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(34029, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(42179, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(42180, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(42181, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(42238, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(42239, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(42243, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(42248, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
(42298, 13049, 0, 'Zangarmarsh - Felweed (183044)'),
-- Terokkar Forest - Dreaming Glory (183045)
(20949, 13048, 0, 'Terokkar Forest - Dreaming Glory (183045)'),
(20953, 13048, 0, 'Terokkar Forest - Dreaming Glory (183045)'),
(28319, 13048, 0, 'Terokkar Forest - Dreaming Glory (183045)'),
-- Zangarmarsh - Dreaming Glory (183045)
(30552, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(32729, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(42199, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(42201, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(42202, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(42216, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(42228, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(42235, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(42241, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)'),
(42244, 13049, 0, 'Zangarmarsh - Dreaming Glory (183045)');

-- Blindweed 183046 (tbc version)
DELETE FROM `gameobject` WHERE `id` = 183046;
SET @OGUID := 142395;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID := @OGUID + 1, 183046, 530, 1, -1017.51, 5606.17, 23.1498, -2.61799, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -991.305, 5124.14, 23.2721, 2.82743, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -842.699, 5968.73, 22.77, 1.11701, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -773.403, 5541, 23.1688, 2.47837, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -597.871, 5533.49, 23.0455, -0.523598, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -499.167, 6327.85, 21.8403, -2.14675, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -490.684, 5325.19, 23.5973, -3.00195, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -440.05, 5861, 22.7254, 0.139624, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -381.527, 8212.53, 24.9581, -0.95993, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -320.663, 6771.47, 25.76, -2.70526, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -307.319, 7909.79, 21.2943, -0.994837, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -123.942, 8639.68, 24.8196, 0.069812, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -105.95, 8909.2, 20.5756, 0.872664, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -63.142, 5804.46, 21.608, -2.05949, 0, 0, 0.857167, -0.515038, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -36.6614, 7358.73, 23.1146, -0.122173, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -30.4103, 5955.94, 24.1322, -2.49582, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, -11.7741, 6735.94, 22.7466, -2.67035, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 56.2061, 5838.74, 22.685, -1.44862, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 59.7135, 8889.65, 23.7207, 0.418879, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 113.308, 6507.58, 23.2963, -2.79252, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 114.162, 5579.6, 22.6179, 0.139624, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 118.227, 7228.89, 22.9663, 2.68781, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 218.475, 8772.74, 23.458, 0.698132, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 459.288, 7440.99, 24.1723, -0.925024, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 757.834, 7411.57, 24.2565, 1.18682, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 809.526, 7993.19, 23.1978, 1.309, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 916.091, 7196.76, 22.7511, 0.733038, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 183046, 530, 1, 1045.45, 8017.05, 23.3153, -2.30383, 0, 0, 0, 1, 450, 450, 255, 1);

SET @POGUID := 142395;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 142396 AND 142423;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `Chance`, `description`) VALUES
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Blindweed (183046)');

-- Flame Cap 181276
DELETE FROM `gameobject` WHERE `guid` BETWEEN 142424 AND 142438;
SET @OGUID := 142423;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID := @OGUID + 1, 181276, 530, 1, -892.03, 5322.57, 18.6208, -1.74533, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, -666.829, 5724.52, 20.9599, -2.28638, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, -519.313, 6152.96, 22.3494, 1.76278, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, -375.677, 6728.37, 22.3378, 2.28638, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, -252.617, 6198.28, 23.9543, -2.28638, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, -91.9377, 7280.53, 22.9762, 1.79769, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, -91.6731, 5906.3, 22.4416, -2.91469, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, 52.3694, 5605.33, 22.2926, -2.60053, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, 117.451, 7830.41, 21.6144, -1.93731, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, 393.008, 5888.21, 22.3804, 2.47837, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, 502.554, 7910.94, 22.9019, 1.8675, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, 512.408, 5850.85, 23.8378, -1.32645, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, 761.521, 7509.73, 22.9588, 2.44346, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, 986.909, 7558.14, 23.5988, -2.32129, 0, 0, 0, 1, 450, 450, 255, 1),
(@OGUID := @OGUID + 1, 181276, 530, 1, 1232.02, 8670.86, 19.2138, 0.261798, 0, 0, 0, 1, 450, 450, 255, 1);

SET @POGUID := 142423;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 142424 AND 142438;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `Chance`, `description`) VALUES
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)'),
(@POGUID := @POGUID + 1, 13049, 0, 'Zangarmarsh - Flame Cap (181276)');

SET @GUID := 99246;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(99246, 1, 232.76, 3937.89, 73.8229, 2.64929),
(99246, 2, 127.357, 3989.36, 74.0902, 2.70034),
(99246, 3, 39.2732, 4035.53, 77.5754, 2.64143),
(99246, 4, -42.367, 4069.61, 87.9787, 3.56428),
(99246, 5, -48.6811, 4090.38, 82.7085, 1.50654),
(99246, 6, -58.4717, 4129.36, 82.3826, 2.3587),
(99246, 7, -117.141, 4202.16, 84.877, 2.23696),
(99246, 8, -153.732, 4213.5, 91.0064, 2.92733),
(99246, 9, -186.341, 4214.25, 94.9364, 2.56919),
(99246, 10, -193.176, 4218.66, 92.6077, 2.56919),
(99246, 11, -250.742, 4254.14, 95.3126, 2.79381),
(99246, 12, -401.634, 4299.24, 68.1546, 3.52816),
(99246, 13, -467.774, 4332.19, 46.2049, 2.85585),
(99246, 14, -483.463, 4336.8, 36.7254, 3.16687),
(99246, 15, -502.722, 4329.19, 43.0874, 3.35929),
(99246, 16, -639.201, 4305, 50.7146, 3.45747),
(99246, 17, -653.528, 4292.33, 44.3617, 3.10404),
(99246, 18, -681.279, 4297.77, 47.6205, 4.19574),
(99246, 19, -718.811, 4304.84, 49.6691, 2.90376),
(99246, 20, -779.043, 4318.45, 51.2479, 3.05378),
(99246, 21, -718.811, 4304.84, 49.6691, 2.90376),
(99246, 22, -681.279, 4297.77, 47.6205, 4.19574),
(99246, 23, -653.528, 4292.33, 44.3617, 3.10404),
(99246, 24, -639.201, 4305, 50.7146, 3.45747),
(99246, 25, -502.722, 4329.19, 43.0874, 3.35929),
(99246, 26, -483.463, 4336.8, 36.7254, 3.16687),
(99246, 27, -467.774, 4332.19, 46.2049, 2.85585),
(99246, 28, -401.634, 4299.24, 68.1546, 3.52816),
(99246, 29, -250.742, 4254.14, 95.3126, 2.79381),
(99246, 30, -193.176, 4218.66, 92.6077, 2.56919),
(99246, 31, -186.341, 4214.25, 94.9364, 2.56919),
(99246, 32, -153.732, 4213.5, 91.0064, 2.92733),
(99246, 33, -117.141, 4202.16, 84.877, 2.23696),
(99246, 34, -58.4717, 4129.36, 82.3826, 2.3587),
(99246, 35, -48.6811, 4090.38, 82.7085, 1.50654),
(99246, 36, -42.367, 4069.61, 87.9787, 3.56428),
(99246, 37, 39.2732, 4035.53, 77.5754, 2.64143),
(99246, 38, 127.357, 3989.36, 74.0902, 2.70034);

SET @GUID := 99247;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(99247, 1, -219.062, 3218.44, -74.5798, 1.80341),
(99247, 2, -237.769, 3297.4, -61.0024, 1.80341),
(99247, 3, -273.476, 3335.09, -56.5745, 1.86625),
(99247, 4, -290.626, 3412.91, -33.1171, 1.73744),
(99247, 5, -304.657, 3525.99, -4.98451, 1.80027),
(99247, 6, -342.322, 3649.84, 29.3, 2.30685),
(99247, 7, -357.017, 3664.84, 29.4163, 2.35005),
(99247, 8, -368.37, 3682.54, 29.1019, 2.66814),
(99247, 9, -409.321, 3708.29, 31.5923, 2.79773),
(99247, 10, -468.548, 3726.96, 29.0099, 2.84878),
(99247, 11, -585.002, 3759.98, 29.1668, 2.63672),
(99247, 12, -624.797, 3781.56, 28.9993, 1.761),
(99247, 13, -639.006, 3879.74, 28.9962, 2.29664),
(99247, 14, -670.006, 3914.67, 28.9962, 2.88177),
(99247, 15, -718.356, 3926.31, 29.1268, 2.16705),
(99247, 16, -747.768, 3976.12, 30.3253, 1.44056),
(99247, 17, -740.836, 4026.18, 30.8922, 2.72469),
(99247, 18, -875.24, 4088.89, 32.9705, 2.33434),
(99247, 19, -942.019, 4158.65, 32.8769, 2.33434),
(99247, 20, -875.24, 4088.89, 32.9705, 2.33434),
(99247, 21, -740.836, 4026.18, 30.8922, 2.72469),
(99247, 22, -747.768, 3976.12, 30.3253, 1.44056),
(99247, 23, -718.356, 3926.31, 29.1268, 2.16705),
(99247, 24, -670.006, 3914.67, 28.9962, 2.88177),
(99247, 25, -639.006, 3879.74, 28.9962, 2.29664),
(99247, 26, -624.797, 3781.56, 28.9993, 1.761),
(99247, 27, -585.002, 3759.98, 29.1668, 2.63672),
(99247, 28, -468.548, 3726.96, 29.0099, 2.84878),
(99247, 29, -409.321, 3708.29, 31.5923, 2.79773),
(99247, 30, -368.37, 3682.54, 29.1019, 2.66814),
(99247, 31, -357.017, 3664.84, 29.4163, 2.35005),
(99247, 32, -342.322, 3649.84, 29.3, 2.30685),
(99247, 33, -304.657, 3525.99, -4.98451, 1.80027),
(99247, 34, -290.626, 3412.91, -33.1171, 1.73744),
(99247, 35, -273.476, 3335.09, -56.5745, 1.86625),
(99247, 36, -237.769, 3297.4, -61.0024, 1.80341);

SET @GUID := 99248;
DELETE FROM `creature_movement` WHERE `id` = @GUID;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(99248, 1, -974.648, 2456.8, 5.998, 2.33434),
(99248, 2, -957.331, 2491, 5.38956, 2.03197),
(99248, 3, -981.882, 2553.38, 3.31046, 1.63534),
(99248, 4, -993.082, 2623.02, 6.20042, 1.99034),
(99248, 5, -1003.46, 2705.02, 7.75319, 1.71152),
(99248, 6, -1013.06, 2772.37, -3.07673, 1.27563),
(99248, 7, -995.455, 2837.84, -4.80545, 2.57939),
(99248, 8, -1035.22, 2866.6, -4.05703, 2.51263),
(99248, 9, -1060.35, 2935.15, 1.27594, 1.86075),
(99248, 10, -1058.14, 3000.11, 9.1404, 1.14211),
(99248, 11, -1015.99, 3031.96, 14.474, 6.24327),
(99248, 12, -959.32, 3036.92, 15.3494, 0.796528),
(99248, 13, -899.073, 3097.61, 14.797, 0.788674),
(99248, 14, -936.309, 3193.87, 32.329, 1.94478),
(99248, 15, -1007.81, 3265.01, 57.342, 2.79694),
(99248, 16, -1058.07, 3286.94, 71.5405, 1.90158),
(99248, 17, -1069.15, 3312.48, 78.9817, 0.527136),
(99248, 18, -1036.7, 3336.42, 86.2801, 0.833442),
(99248, 19, -988.644, 3396.75, 91.5886, 0.468231),
(99248, 20, -882.297, 3445.9, 93.4638, 5.8325),
(99248, 21, -800.89, 3414.12, 76.5468, 0.644948),
(99248, 22, -750.104, 3469.66, 90.8278, 0.876641),
(99248, 23, -800.89, 3414.12, 76.5468, 0.644948),
(99248, 24, -882.297, 3445.9, 93.4638, 5.8325),
(99248, 25, -988.644, 3396.75, 91.5886, 0.468231),
(99248, 26, -1036.7, 3336.42, 86.2801, 0.833442),
(99248, 27, -1069.15, 3312.48, 78.9817, 0.527136),
(99248, 28, -1058.07, 3286.94, 71.5405, 1.90158),
(99248, 29, -1007.81, 3265.01, 57.342, 2.79694),
(99248, 30, -936.309, 3193.87, 32.329, 1.94478),
(99248, 31, -899.073, 3097.61, 14.797, 0.788674),
(99248, 32, -959.32, 3036.92, 15.3494, 0.796528),
(99248, 33, -1015.99, 3031.96, 14.474, 6.24327),
(99248, 34, -1058.14, 3000.11, 9.1404, 1.14211),
(99248, 35, -1060.35, 2935.15, 1.27594, 1.86075),
(99248, 36, -1035.22, 2866.6, -4.05703, 2.51263),
(99248, 37, -995.455, 2837.84, -4.80545, 2.57939),
(99248, 38, -1013.06, 2772.37, -3.07673, 1.27563),
(99248, 39, -1003.46, 2705.02, 7.75319, 1.71152),
(99248, 40, -993.082, 2623.02, 6.20042, 1.99034),
(99248, 41, -981.882, 2553.38, 3.31046, 1.63534),
(99248, 42, -957.331, 2491, 5.38956, 2.03197);

DELETE FROM `creature_equip_template` WHERE `entry` = 2057;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (2057, 1905, 1957, 0);

DELETE FROM `creature_equip_template` WHERE `entry` = 4240;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (4240, 0, 1961, 0);

DELETE FROM `creature_equip_template` WHERE `entry` = 55081;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (55081, 0, 1984, 0);

-- Creature below ground in dustwallow marsh
UPDATE `creature` SET `position_z`= 36.3271 WHERE `guid`=25154;
UPDATE `creature` SET `position_z`= 49.5146 WHERE `guid`=25156;
UPDATE `creature` SET `position_z`= 47.1466 WHERE `guid`=30491;
UPDATE `creature` SET `position_z`= 42.3603 WHERE `guid`=30533;
UPDATE `creature` SET `position_z`= 39.6442 WHERE `guid`=31049;
UPDATE `creature` SET `position_z`= 45.9868 WHERE `guid`=30591;
UPDATE `creature` SET `position_z`= 46.9210 WHERE `guid`=28826;
UPDATE `creature` SET `position_z`= 36.8431 WHERE `guid`=30604;
UPDATE `creature` SET `position_z`= 48.9282 WHERE `guid`=7888;
UPDATE `creature` SET `position_z`= 62.3438 WHERE `guid`=25377;
UPDATE `creature` SET `position_z`=63.4751 WHERE `guid`=7886;

-- Corrupted Loot Templates thx@Rushor
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (8257,10717,10461,10536,20117,3083,6021,8257,10636,10925,10943,11054,20158,21040,128,197,235,240,246,255,266,275,288,313,325,341,358,359,379,381,382,415,416,417,466,467,468,487,488,489,490,494,495,499,659,698,754,756,826,827,828,853,866,867,869,870,874,876,885,886,887,888,932,933,934,935,936,999,1001,1064,1066,1071,1073,1093,1099,1244,1245,1276,1277,1278,1279,1280,1281,1282,1283,1327,1329,1330,1331,1332,1334,1335,1336,1337,1338,1374,1414,1434,1436,1437,1476,1477,1481,1483,1497,1503,1511,1516,1642,1679,1733,1741,1756,1777,1975,2044,2045,2055,2058,2099,2105,2112,2153,2214,2238,2239,2316,2333,2361,2362,2363,2378,2379,2386,2392,2395,2396,2400,2402,2466,2468,2469,2470,2506,2507,2508,2509,2510,2511,2512,2513,2514,2515,2516,2517,2518,2520,2524,2525,2526,2527,2528,2608,2616,2676,2706,2712,2775,2787,2817,2852,2860,2870,2930,2984,3193,3338,3341,3388,3389,3421,3431,3448,3450,3464,3465,3501,3617,3659,3663,3691,3692,3693,3694,3695,3702,3844,3846,3897,3916,3939,3981,3990,3994,4033,4048,4080,4489,4510,4535,4661,4787,4966,4977,4979,4983,4995,5058,5389,5414,5418,5433,5440,5476,5546,5644,5723,5780,5781,5899,6013,6019,6047,6086,6087,6141,6244,6250,6388,6667,6669,7051,7067,7233,7287,7360,7395,7489,7549,7607,7730,7765,7767,7768,7865,7915,7939,7957,7975,7980,7999,8015,8016,8017,8055,8096,8147,8154,8155,8179,8310,8386,8402,8581,8608,8996,9118,9119,9157,9316,9525,9598,9676,10000,10036,10037,10038,10260,10261,10262,10321,10427,10428,10482,10619,10638,10684,10696,10698,10928,10940,10941,10951,10979,11040,11053,11141,11145,11180,11195,11276,11328,11347,11460,11609,11615,11690,11701,11713,11718,11748,11806,11820,11856,11920,11979,11994,12160,12657,12658,12736,12858,12859,12862,12863,12903,13118,13159,13533,13736,13817,14370,14372,14385,14872,14983,14987,14988,15041,15112,15117,15146,15288,15443,15449,15505,15620,16135,20555,20918,21627);
DELETE FROM `creature_loot_template` WHERE `entry` IN (8257,10717,10461,10536,20117,3083,6021,8257,10636,10925,10943,11054,20158,21040,128,197,235,240,246,255,266,275,288,313,325,341,358,359,379,381,382,415,416,417,466,467,468,487,488,489,490,494,495,499,659,698,754,756,826,827,828,853,866,867,869,870,874,876,885,886,887,888,932,933,934,935,936,999,1001,1064,1066,1071,1073,1093,1099,1244,1245,1276,1277,1278,1279,1280,1281,1282,1283,1327,1329,1330,1331,1332,1334,1335,1336,1337,1338,1374,1414,1434,1436,1437,1476,1477,1481,1483,1497,1503,1511,1516,1642,1679,1733,1741,1756,1777,1975,2044,2045,2055,2058,2099,2105,2112,2153,2214,2238,2239,2316,2333,2361,2362,2363,2378,2379,2386,2392,2395,2396,2400,2402,2466,2468,2469,2470,2506,2507,2508,2509,2510,2511,2512,2513,2514,2515,2516,2517,2518,2520,2524,2525,2526,2527,2528,2608,2616,2676,2706,2712,2775,2787,2817,2852,2860,2870,2930,2984,3193,3338,3341,3388,3389,3421,3431,3448,3450,3464,3465,3501,3617,3659,3663,3691,3692,3693,3694,3695,3702,3844,3846,3897,3916,3939,3981,3990,3994,4033,4048,4080,4489,4510,4535,4661,4787,4966,4977,4979,4983,4995,5058,5389,5414,5418,5433,5440,5476,5546,5644,5723,5780,5781,5899,6013,6019,6047,6086,6087,6141,6244,6250,6388,6667,6669,7051,7067,7233,7287,7360,7395,7489,7549,7607,7730,7765,7767,7768,7865,7915,7939,7957,7975,7980,7999,8015,8016,8017,8055,8096,8147,8154,8155,8179,8310,8386,8402,8581,8608,8996,9118,9119,9157,9316,9525,9598,9676,10000,10036,10037,10038,10260,10261,10262,10321,10427,10428,10482,10619,10638,10684,10696,10698,10928,10940,10941,10951,10979,11040,11053,11141,11145,11180,11195,11276,11328,11347,11460,11609,11615,11690,11701,11713,11718,11748,11806,11820,11856,11920,11979,11994,12160,12657,12658,12736,12858,12859,12862,12863,12903,13118,13159,13533,13736,13817,14370,14372,14385,14872,14983,14987,14988,15041,15112,15117,15146,15288,15443,15449,15505,15620,16135,20555,20918,21627);

-- Fix Hoard of the Black Dragonflight - Should Always Drop Black Dragonflight Molt
UPDATE `item_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `Entry`=9461 AND `Item`=10575; -- 96,3504

-- Heavy War Golem 5854 - most golems were fear immune in tbc, also drain effects and mc
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|16 WHERE `entry` = 5854;

-- Limit Stock Herbs without maxcount, incrtime
UPDATE `npc_vendor` SET `maxcount` = 3, `incrtime` = 9000 WHERE `item` = 765 AND `entry` = 16705;
UPDATE `npc_vendor_template` SET `maxcount` = 2, `incrtime` = 7200 WHERE `item` = 2447 AND `entry` = 129;

-- CC for Fel Cannon, Legion Fel Cannon, Death's Door Fel Cannon, Legion Fel Cannon MKII, Fel Cannon MKI, Legion Flak Cannon 
UPDATE `creature_template` SET `MechanicImmuneMask` = '8405014' WHERE `entry` IN (19399, 21233, 22443, 22451, 22461, 23076);

-- z level
UPDATE `creature` SET `position_z` = '42.0511' WHERE `guid` = 11352;

-- Stonegazer
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 18648; -- 2500

-- Ward of Laze 2667
UPDATE `creature_template` SET `AIName` = 'TotemAI' WHERE `entry` = 2667;
REPLACE INTO `creature_template_spells` (`entry`, `spell1`) VALUES (2667, 3825);

-- dublicate
UPDATE `creature` SET `position_x` = '-185.0473', `position_y` = '206.4911', `position_z` = '78.8817' WHERE `guid` = 15507 AND `id` = 2349;
UPDATE `creature` SET `position_x` = '-181.6646', `position_y` = '68.2096', `position_z` = '67.8410' WHERE `guid` = 16655 AND `id` = 2349;

-- Mar'nah Alchemist 24975
UPDATE `creature_template` SET `NpcFlags` = `NpcFlags`|128 WHERE entry = 24975;
DELETE FROM `npc_vendor` WHERE `entry` = 24975;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(24975, 3371, 0, 0),
(24975, 3372, 0, 0),
(24975, 8925, 0, 0),
(24975, 13467, 3, 9000),
(24975, 18256, 0, 0),
(24975, 22785, 3, 9000),
(24975, 22786, 3, 9000),
(24975, 22791, 3, 9000),
(24975, 22793, 1, 9000);

-- Hillsbrad Apprentice Blacksmith
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 2265 AND `item` IN (2489,2491,2492,2490,2493,2495,2488,2494);

-- Midsummer Fire Festival Npcs
DELETE FROM `game_event_creature` WHERE `guid` IN (725,724,726,727);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (725, 1),(724, 1),(726, 1),(727, 1);

-- Crabs should all swim
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` IN (5439,17216,17217);

-- dublicate go with wrong z level
DELETE FROM `gameobject` WHERE `guid` = 23107 AND `id` = 182541;

-- Dread Tactician, Sister of Grief, Pit Commander
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1 WHERE `entry` IN (16960, 18945, 16959);

-- probably more broken due which have command 14 and channeling spell as remove
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1784501 AND `delay` = 28 AND `command` = 14;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES (1784501, 28, 47, 3, 'Blood Elf Magister - Stop Channeling');

-- Feral Dragonhawk Hatchling 15649 & Crazed Dragonhawk 15650
UPDATE `creature_template_addon` SET `auras` = '29119' WHERE `entry` IN (15649,15650);

-- Midsummer Sausage 5er Stack like all other event food items
UPDATE `item_template` SET `BuyCount` = 5 WHERE `entry` = 23326;

-- Set Duration as already set for 23215 14 days duration!
UPDATE `item_template` SET `duration` = 1209600 WHERE `entry` IN (23327,23326,23211,23246,23435);

-- falling under map
UPDATE `creature` SET `position_z` = 175.7560 WHERE `guid` = 70628 AND `id` = 19740;

-- Swamp Gas 17378
SET @GUID := 192160;
DELETE FROM `creature` WHERE `id` = 17378 AND `map` = 530;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 843.678, 7888.29, 17.9469, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 652.946, 7838.43, 17.4672, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 511.152, 7741.22, 23.2331, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 251.054, 7964.76, 17.7742, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 196.196, 8984.76, 17.2438, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 1257.91, 8669.31, 15.2213, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 1226.87, 7946.05, 22.5447, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 748.635, 6487.36, 19.3371, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 275.997, 5172.51, 25.6477, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -722.758, 5540.27, 18.4871, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -873.243, 5691.36, 17.333, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -518.363, 6182.8, 22.7222, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -292.079, 6264.88, 17.3747, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 98.8607, 6436.07, 22.3731, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 172.073, 6526.14, 22.5222, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -12.8972, 7134.33, 17.3751, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -843.9882, 5441.1010, 22.0223, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -715.4921, 5437.7309, 21.2707, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 373.7624, 5104.2749, 23.98501, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 909.2333, 5236.9243, 8.7638, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 791.5969, 5868.0795, 23.3537, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 384.0584, 5523.9892, 19.6734, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 89.1690, 6735.2622, 21.8410, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -97.2687, 8878.2568, 18.0488, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 382.6239, 8873.8007, 21.8588, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 487.2411, 8803.6210, 22.7691, 0, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 609.5368, 5456.88, -9.958641, 1.607925, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -439.254, 5525.889, 18.19359, 0.35328, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -525.9526, 6011.291, 22.7923, 0.5029287, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -401.4127, 6147.731, 21.40356, 1.711865, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -307.2597, 5422.823, 61.86545, 3.685365, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 120.5179, 6399.53, 17.47296, 5.284503, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -533.8507, 6053.137, 22.97751, 2.846395, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -95.28011, 7298.305, 21.50714, 5.571469, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 859.4762, 8435.166, 21.82944, 2.702842, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 519.0963, 7675.247, 17.49909, 1.27165, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -43.79104, 7337.794, 22.83324, 4.653748, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 828.9716, 8393.243, 22.72777, 3.382073, 3600, 3600, 20, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -49.35962, 7286.34, 18.06183, 5.329101, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 495.4312, 7612.183, 18.17809, 6.007433, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -441.2157, 5415.122, 17.76424, 6.134614, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 850.5677, 6901.183, 17.79012, 1.618658, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -924.4011, 5360.019, 18.13609, 5.205045, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -396.7941, 5380.573, 20.67274, 4.019651, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 477.4343, 6382.614, 22.45127, 3.16612, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 580.2551, 5584.744, 16.07555, 4.012582, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -137.4546, 8578.421, 18.38502, 0.9466159, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 72.21288, 8216.365, 23.26952, 3.680504, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -82.25325, 7448.597, 17.444, 5.696984, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -326.5171, 6916.205, 24.69204, 1.441473, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 455.5854, 8048.113, 17.53207, 3.023292, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 876.0026, 7917.181, 20.96437, 0.2871537, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 669.5658, 8355.795, -22.54807, 4.288846, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -285.0736, 8540.66, 21.39646, 3.902134, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -350.3855, 6010.823, 22.02755, 1.684659, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -906.5578, 5621.498, 17.56248, 3.846087, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 18.56129, 6916.932, 19.18483, 3.969842, 3600, 3600, 20, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 675.9991, 7482.793, 22.88753, 3.198283, 3600, 3600, 15, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 141.2836, 8212.856, 23.27352, 1.308055, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -299.5352, 7787.751, 21.03935, 0.02148107, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 190.2794, 6428.274, 21.98193, 2.257822, 3600, 3600, 15, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 898.3184, 6997.028, 23.34356, 1.718769, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -974.9401, 5573.655, 22.90038, 3.037852, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -171.8939, 7237.358, 22.9977, 0.5585707, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 1141.781, 7679.733, 21.14969, 2.631709, 3600, 3600, 25, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 1012.956, 7613.951, 22.61227, 4.993455, 3600, 3600, 15, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 1108.839, 8630.95, 22.60624, 0.2908253, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -238.4531, 8098.016, 19.50119, 0.9735874, 3600, 3600, 10, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -103.6301, 8154.913, 21.90996, 0.9975104, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -48.48159, 8604.174, 19.51004, 3.955142, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 443.4188, 5930.36, 20.56893, 5.90431, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 706.697, 8123.91, 23.5474, 2.818607, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 87.71318, 6049.454, 18.22203, 3.609607, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -455.6502, 5960.218, 18.36738, 3.918007, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 614.6539, 8028.592, 17.96289, 0.5625339, 3600, 3600, 20, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 655.3332, 6393.881, 19.17228, 2.439106, 3600, 3600, 10, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 308.5473, 5672.442, 22.99323, 4.313014, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 282.6823, 8041.244, 17.74696, 4.182347, 3600, 3600, 20, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -106.0224, 7519.854, 17.59728, 4.204152, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 358.0518, 6429.273, 23.68991, 1.203342, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 198.0595, 7495.459, 23.1778, 4.425175, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 990.1965, 8310.343, 22.71369, 2.204333, 3600, 3600, 25, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 753.5291, 6380.706, 21.26645, 2.498447, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -116.3606, 7222.384, 18.70381, 0.8725554, 3600, 3600, 20, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -65.13538, 8178.539, 22.62059, 0.330403, 3600, 3600, 25, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 660.2669, 7534.771, 22.00615, 2.506756, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -271.2305, 7834.363, 21.82235, 2.824121, 3600, 3600, 1, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -345.8594, 8585.898, 17.63408, 3.608735, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -4.694701, 5918.177, 20.28707, 3.210953, 3600, 3600, 10, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -142.9445, 7406.882, 20.51961, 4.007152, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -154.6566, 7537.992, 23.07946, 2.783374, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 2.443757, 8228.334, 23.20812, 3.280727, 3600, 3600, 30, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 888.4258, 7836.525, 22.41651, 3.155105, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 401.0142, 5944.998, 21.13764, 2.542221, 3600, 3600, 10, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -276.6692, 6848.983, 22.45846, 4.154721, 3600, 3600, 30, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 108.1181, 7234.058, 23.70333, 6.235182, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 8.515353, 5984.948, 19.30301, 3.669949, 3600, 3600, 25, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -103.3504, 7784.531, 21.75089, 0.01464739, 3600, 3600, 50, 1),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, 205.0572, 7546.451, 20.87218, 2.783736, 3600, 3600, 0, 0),
(@GUID := @GUID + 1, 17378, 530, 1, 0, 0, -77.60546, 7745.519, 22.23281, 0.1738232, 3600, 3600, 15, 1);

DELETE FROM `pool_template` WHERE `entry` ='2103';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (2103, 15, 'Zangarmarsh - Swamp Gas (17378)');

-- use guid pooling for outdoor swamp gas - there is some in map 545 too
DELETE FROM `pool_creature` WHERE `pool_entry` ='2103';
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`)
SELECT guid, 2103 AS pool_entry, 0 AS chance, 'Zangarmarsh - Swamp Gas (17378)' AS description
FROM creature WHERE id=17378 AND map=530;

-- offset
UPDATE `creature` SET `position_z` = 76.0324 WHERE `guid` = 67474;
UPDATE `creature` SET `position_z` = 91.6263 WHERE `guid` = 67476;
UPDATE `creature` SET `position_z` = 78.5875 WHERE `guid` = 67480;

-- Netherstorm - Arcane Vortex (17408)
DELETE FROM `creature` WHERE `id` = 17408;
SET @GUID := 192260;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@GUID := @GUID + 1, 17408, 530, 1, 2218.62, 2252.56, 97.1471, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2664.67, 3085.93, 125.92, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3013.18, 3667.87, 130.374, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3126.14, 3234.31, 108.699, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3226.19, 2688.29, 145.962, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3300.19, 1898.28, 120.51, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4238.31, 2317.43, 135.443, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3258.3425, 3950.1267, 167.0631, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3435.2495, 3604.2236, 141.9966, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4041.7514, 3758.6447, 122.9734, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4240.7133, 3207.8002, 185.07176, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4515.0937, 2969.4238, 118.9672, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4754.0083, 2918.1738, 125.5158, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4769.6660, 2736.5380, 80.8154, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4737.0629, 2613.3273, 211.9191, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4148.7670, 2209.5786, 173.6321, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4342.9731, 1799.1728, 106.8701, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4108.7114, 1878.5296, 229.5166, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4168.9267, 1453.9860, -121.0023, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4013.9130, 1424.4427, -126.4476, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3497.4802, 1785.1530, 81.9445, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3698.4824, 1928.4426, 115.6998, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3740.9826, 2252.8181, 127.4196, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3537.7497, 3202.3278, 104.1461, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3366.6147, 3158.7141, 102.3586, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3322.7763, 2339.5573, 95.5345, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3289.9460, 2036.7658, 112.0272, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3129.6450, 2029.0948, 139.5216, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3190.5495, 2536.3581, 64.8634, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2920.8698, 2578.9580, 118.6624, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2490.5991, 2251.6333, 104.4242, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2609.0407, 3340.6733, 143.0326, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2523.7917, 3942.5285, 126.2023, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2601.2478, 4195.6748, 149.9806, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3033.4838, 4371.7016, 114.7986, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3118.8640, 4313.1230, 121.6224, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 5025.7260, 3238.1589, 5.6121, 0, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3822.21, 1595.888, 123.283, 6.029441, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2842.316, 4445.829, 112.3828, 2.014796, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3514.253, 3778.485, 137.9863, 6.172779, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3549.327, 3783.299, 126.2041, 0.2862169, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4484.571, 3208.157, 143.9606, 2.91699, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4318.55, 3615.402, 123.0895, 4.883158, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3212.407, 3708.392, 129.1433, 3.290531, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3179.568, 3719.434, 135.1518, 4.578225, 3600, 3600, 10, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2301.894, 2689.842, 127.0699, 5.032854, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3083.258, 2389.336, 138.2754, 0.008072712, 3600, 3600, 30, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2315.079, 2547.598, 120.9699, 3.552568, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4463.183, 2596.844, 113.6148, 6.090578, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4873.422, 3190.012, 131.3053, 5.773242, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3204.367, 3681.557, 131.0397, 3.256438, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3875.782, 3748.423, 118.3062, 3.081002, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4450.317, 3262.561, 144.6456, 5.080434, 3600, 3600, 20, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4817.985, 3187.767, 147.8964, 1.108458, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3786.084, 1450.618, -147.4742, 4.702545, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3224.923, 3543.122, 123.817, 6.094599, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2790.017, 3690.817, 125.5572, 4.671357, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2575.768, 2718.017, 110.319, 5.412754, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2798.819, 3658.656, 139.8156, 6.216747, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2915.639, 3231.273, 165.3998, 4.924915, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3913.945, 4081.305, 190.4195, 5.354327, 3600, 3600, 20, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3494.919, 3909.817, 139.0799, 0.6495593, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 4513.002, 3249.146, 144.5896, 3.63445, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3556.325, 3862.23, 106.1171, 1.7883, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2716.906, 3564.704, 136.9543, 1.545411, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 2214.825, 2786.006, 120.6702, 5.6057, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3247.455, 1984.926, 127.9962, 3.798182, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3244.892, 2729.129, 151.2329, 4.825959, 3600, 3600, 5, 1),
(@GUID := @GUID + 1, 17408, 530, 1, 3848.038, 3719.482, 102.6216, 4.941019, 3600, 3600, 5, 1);

DELETE FROM `pool_template` WHERE `entry` ='2104';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (2104, 12, 'Netherstorm - Arcane Vortex (17408)');

DELETE FROM `pool_creature_template` WHERE `pool_entry` ='2104';
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (17408, 2104, 0, 'Netherstorm - Arcane Vortex (17408)');

-- Felmist, Arcane Vortex, Swamp Gas, Windy Cloud
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 600 WHERE `id` IN (17407,17408,17378,24222) AND `map` = 530;

-- Mekthorg the Wild 18677 - Spawn 4
DELETE FROM `creature` WHERE `guid` = 99242 AND `id` = 18677;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(99242, 18677, 530, -78.81297, 3097.372, -3.469077, 3.921466, 21600, 21600, 0, 2);

DELETE FROM `creature_movement` WHERE `id` = 99242;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(99242, 1, -101.271, 3075.179, -1.360564, 100),
(99242, 2, -131.3544, 3072.517, 1.139436, 100),
(99242, 3, -98.66591, 3100.889, 0.0436902, 100); -- likely incomplete, should walk to coords about 45:41

-- 16844 Crust Burster, 16857 Marauding Crust Burster, 16968 Tunneler, 17075 Sandworm, 21380 Greater Crust Burster, 21849 Bone Crawler, 22038 Hai'shulud, 22466 Bone Sifter, 22482 Mature Bone Sifter, 23285 Nethermine Burster
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` IN (16844,16857,16968,17075,21380,21849,22038,22466,22482,23285); -- CREATURE_EXTRA_FLAG_FORCE_ATTACKING_CAPABILITY due to UNIT_FLAG_NOT_SELECTABLE

-- Fulgorge 18678
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (7 / 7), `UnitFlags` = 33587264, `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 18678;
UPDATE `creature_model_info` SET `bounding_radius` = 5, `combat_reach` = 12.5 WHERE `modelid` = 17445;

-- ore vein offset
UPDATE `gameobject` SET `position_x` = -689.3330, `position_y` = 168.5295, `position_z` = 17.9345 WHERE `guid` = 75314; -- Pool 4788
UPDATE `gameobject` SET `position_x` = -689.3330, `position_y` = 168.5295, `position_z` = 17.9345 WHERE `guid` = 75315; -- Pool 4788
UPDATE `gameobject` SET `position_x` = -689.3330, `position_y` = 168.5295, `position_z` = 17.9345 WHERE `guid` = 75316; -- Pool 4788
UPDATE `gameobject` SET `position_x` = -689.3330, `position_y` = 168.5295, `position_z` = 17.9345 WHERE `guid` = 71438; -- Pool 4740
UPDATE `gameobject` SET `position_x` = -689.3330, `position_y` = 168.5295, `position_z` = 17.9345 WHERE `guid` = 71439; -- Pool 4740

-- Magus Zabraxis 16829 - Empty Vial, Leaded Vial, Crystal Vial, Imbued Vial
UPDATE `npc_vendor` SET `maxcount`= 0, `incrtime`= 0 WHERE `entry` = 16829 AND `item` IN (3371,3372,8925,18256);

-- Orgrimmar Peon 19425 missing Invisibility and Stealth Detection 18950
DELETE FROM `creature_addon` WHERE `guid` = 68026; -- dublicate to creature_template_addon with the aura

-- https://jira.vengeancewow.com/browse/TBC-1452
DELETE FROM `pool_template` WHERE `entry` IN (16446, 16447);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(16446, 1, 'Elwynn Forest - Riverpaw Runt/Outrunner 1'),
(16447, 1, 'Elwynn Forest - Riverpaw Runt/Outrunner 2');

DELETE FROM `pool_creature` WHERE `pool_entry` IN (16446, 16447);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `description`) VALUES
(99710, 16446, 'Elwynn Forest - Riverpaw Runt 1'),
(99753, 16446, 'Elwynn Forest - Riverpaw Outrunner 1'),
(99711, 16447, 'Elwynn Forest - Riverpaw Runt 2'),
(99754, 16447, 'Elwynn Forest - Riverpaw Outrunner 2');

-- Spell spawned npc Entry: 11614 Guid: 52640 s.18262 Call Bloodshot
DELETE FROM `creature` WHERE `id` = 11614 AND `guid` = 52640;

-- Fear Proc 35408
DELETE FROM `creature_template_addon` WHERE `entry` = 20477;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(20477, 1, 16, '35408'); -- Terrorclaw 20477

-- Cleanup Heroic (1) creature_template_addon which has no effect deviations have to be handled by AI
DELETE FROM `creature_template_addon` WHERE `entry` IN (
21592, -- Defender Corpse (1)
21623, -- Warder Corpse (1)
21594, -- Eredar Deathbringer (1)
21613, -- Skulking Witch (1)
20521, -- Captain Skarloc (1)
20593, -- Shattered Hand Sentry (1)
20589, -- Shattered Hand Legionnaire (1)
20574, -- Rabid Warhound (1)
20584, -- Shattered Hand Champion (1)
20595, -- Shattered Hand Zealot (1)
20993, -- Blood Guard Porung (1)
25569 -- Sunblade Magister (1)
);

