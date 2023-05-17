-- this needs previous tbc-db updates to work!

-- DELETE FROM `creature` WHERE (`guid` IN (2718, 2719, 2720, 2721, 3804, 3805, 3806, 3883, 3884, 3913));
-- DELETE FROM `creature_linking` WHERE (`guid` IN (2718, 2719, 2720, 2721, 3804, 3805, 3806, 3883, 3884, 3913));
-- DELETE FROM `creature_movement` WHERE (`id` IN (2718, 2719, 2720, 2721, 3804, 3805, 3806, 3883, 3884, 3913));

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @CGUID := 140170;
SET @WGUID := 11;
SET @SGUID := 149;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID + 009;

-- duplicate 
DELETE FROM `creature` WHERE `guid` IN (3854,3855);
DELETE FROM `creature_movement` WHERE `id` = 3854;
DELETE FROM `creature_linking` WHERE `master_guid` = 3854;
-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- (@CGUID + 000, 6011, 0, 1, -11838.05078125, -3323.817382812500, 4.446216583251953125, 1.111298918724060058, 300, 300, 0, 0),
-- (@CGUID + 001, 6010, 0, 1, -11838.80859375, -3319.673583984375, 3.813418149948120117, 0.606308519840240478, 300, 300, 0, 0);

DELETE FROM `creature_movement` WHERE `id` = 3913;
DELETE FROM `waypoint_path` WHERE `PathId` = 11;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(11, 1, -11702.7, -3198.54, 6.13815, 100, 0, 0, NULL),
(11, 2, -11714.2, -3227.76, 7.42097, 100, 0, 0, NULL),
(11, 3, -11720.7, -3247.27, 6.71452, 100, 0, 0, NULL),
(11, 4, -11736.3, -3259.69, 3.54905, 100, 0, 0, NULL),
(11, 5, -11787.8, -3305.24, 6.42096, 100, 0, 0, NULL),
(11, 6, -11816.1, -3315.23, 7.21743, 100, 0, 0, NULL),
(11, 7, -11836.1, -3319.79, 4.44235, 100, 0, 0, NULL),
(11, 8, -11821.1, -3316.57, 8.00434, 100, 0, 0, NULL),
(11, 9, -11796, -3308.72, 4.61497, 100, 0, 0, NULL),
(11, 10, -11774.5, -3298.33, 6.61566, 100, 0, 0, NULL),
(11, 11, -11739.6, -3263.25, 2.58626, 100, 0, 0, NULL),
(11, 12, -11726.8, -3254.63, 5.70093, 100, 0, 0, NULL),
(11, 13, -11715, -3229.81, 7.3399, 100, 0, 0, NULL),
(11, 14, -11705.7, -3204.77, 6.76301, 100, 0, 0, NULL),
(11, 15, -11714.7, -3119.52, 9.6553, 100, 0, 0, NULL),
(11, 16, -11737.6, -3094.55, 10.0939, 100, 0, 0, NULL),
(11, 17, -11759.4, -3089.36, 7.90247, 100, 0, 0, NULL),
(11, 18, -11777.3, -3082.01, 3.71249, 100, 0, 0, NULL),
(11, 19, -11802.8, -3071.57, 6.52768, 100, 0, 0, NULL),
(11, 20, -11833.5, -3061.21, 5.51503, 100, 0, 0, NULL),
(11, 21, -11855.2, -3053.98, 10.5513, 100, 0, 0, NULL),
(11, 22, -11866.7, -3053.56, 13.575, 100, 0, 0, NULL),
(11, 23, -11878.8, -3067.78, 25.3558, 100, 0, 0, NULL),
(11, 24, -11885.3, -3081.64, 29.9102, 100, 0, 0, NULL),
(11, 25, -11898.3, -3091.15, 33.1133, 100, 0, 0, NULL),
(11, 26, -11891.4, -3087.62, 30.8659, 100, 0, 0, NULL),
(11, 27, -11880.8, -3071.89, 27.2562, 100, 0, 0, NULL),
(11, 28, -11873.3, -3056.77, 16.8792, 100, 0, 0, NULL),
(11, 29, -11864.1, -3053.36, 12.838, 100, 0, 0, NULL),
(11, 30, -11842.5, -3058.19, 5.18285, 100, 0, 0, NULL),
(11, 31, -11811.8, -3068.34, 6.53923, 100, 0, 0, NULL),
(11, 32, -11785.4, -3078.3, 4.92409, 100, 0, 0, NULL),
(11, 33, -11768.3, -3086.51, 7.10831, 100, 0, 0, NULL),
(11, 34, -11745.5, -3091.76, 6.49939, 100, 0, 0, NULL),
(11, 35, -11728.5, -3099.67, 11.1712, 100, 0, 0, NULL),
(11, 36, -11709.5, -3132.75, 9.94938, 100, 0, 0, NULL);

REPLACE INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@WGUID + 000, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 000');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 000, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 000', 0, 0, 0, 0);

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, 0, 0),
(@SGUID + 000, @CGUID + 001, 1, 0);

DELETE FROM `creature_linking` WHERE  `master_guid` = 3913;
REPLACE INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGUID + 000, 2, 2, 0, @WGUID + 000, 2, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 000'); -- should be linear 4, but tbc paths are different 2

UPDATE `creature` SET `guid` = 140170 WHERE `guid` = 3913;
UPDATE `creature` SET `guid` = 140171 WHERE `guid` = 3806;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- done

-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- (@CGUID + 002, 6011, 0, 1, -11903.5908203125, -3075.732666015625, 27.36240196228027343, 1.563962221145629882, 300, 300, 0, 0),
-- (@CGUID + 003, 6010, 0, 1, -11898.9501953125, -3081.700439453125, 30.32977294921875000, 2.129589796066284179, 300, 300, 0, 0);

REPLACE INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) SELECT @WGUID + 001 AS `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId` FROM
`creature_movement` WHERE `Id` = 2718;
DELETE FROM `creature_movement` WHERE `id` = 2718;
-- INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- (@WGUID + 001, 01, -11903.5468750000, -3069.429199218750, 24.16282653808593750, 100, 0, 0),
-- (@WGUID + 001, 02, -11884.6748046875, -3058.956298828125, 21.62248611450195312, 100, 0, 0),
-- (@WGUID + 001, 03, -11860.8027343750, -3043.153320312500, 14.87293148040771484, 100, 0, 0),
-- (@WGUID + 001, 04, -11848.0380859375, -3053.258300781250, 7.568976402282714843, 100, 0, 0),
-- (@WGUID + 001, 05, -11829.9843750000, -3060.215087890625, 5.779955863952636718, 100, 0, 0),
-- (@WGUID + 001, 06, -11802.3769531250, -3065.045166015625, 6.166186332702636718, 100, 0, 0),
-- (@WGUID + 001, 07, -11780.2958984375, -3069.506103515625, 6.179402351379394531, 100, 0, 0),
-- (@WGUID + 001, 08, -11758.3017578125, -3075.846435546875, 9.674446105957031250, 100, 0, 0),
-- (@WGUID + 001, 09, -11745.1259765625, -3086.299560546875, 8.424201965332031250, 100, 0, 0),
-- (@WGUID + 001, 10, -11727.6464843750, -3093.388183593750, 11.75790882110595703, 100, 0, 0),
-- (@WGUID + 001, 11, -11714.9638671875, -3106.971923828125, 12.77443790435791015, 100, 0, 0),
-- (@WGUID + 001, 12, -11703.0234375000, -3126.905517578125, 12.12111759185791015, 100, 0, 0),
-- (@WGUID + 001, 13, -11704.5761718750, -3154.215332031250, 8.807699203491210937, 100, 0, 0),
-- (@WGUID + 001, 14, -11696.3232421875, -3178.484130859375, 10.13690376281738281, 100, 0, 0),
-- (@WGUID + 001, 15, -11697.1298828125, -3202.781494140625, 7.631532669067382812, 100, 0, 0),
-- (@WGUID + 001, 16, -11713.5439453125, -3238.739990234375, 7.758138656616210937, 100, 0, 0),
-- (@WGUID + 001, 17, -11722.9707031250, -3261.901611328125, 6.900228500366210937, 100, 0, 0),
-- (@WGUID + 001, 18, -11742.2158203125, -3284.839111328125, 5.215942382812500000, 100, 0, 0),
-- (@WGUID + 001, 19, -11761.3447265625, -3300.560302734375, 5.314302921295166015, 100, 0, 0),
-- (@WGUID + 001, 20, -11787.2792968750, -3318.682861328125, 5.436251640319824218, 100, 0, 0),
-- (@WGUID + 001, 21, -11808.9970703125, -3326.264404296875, 4.629308700561523437, 100, 0, 0);

REPLACE INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@WGUID + 001, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 001');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 001, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 001', 0, 0, 0, 0);

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 001, @CGUID + 002, 0, 0),
(@SGUID + 001, @CGUID + 003, 1, 0);

DELETE FROM `creature_linking` WHERE  `master_guid` = 2718;
REPLACE INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGUID + 001, 2, 2, 0, @WGUID + 001, 2, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 001');

UPDATE `creature` SET `guid` = 140172 WHERE `guid` = 2718;
UPDATE `creature` SET `guid` = 140173 WHERE `guid` = 2719;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- done

-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- (@CGUID + 004, 6011, 0, 1, -11713.7998046875, -3293.116455078125, 12.12458992004394531, 4.258560180664062500, 300, 300, 0, 0),
-- (@CGUID + 005, 6010, 0, 1, -11717.5341796875, -3291.493408203125, 11.10744762420654296, 4.903303146362304687, 300, 300, 0, 0);

REPLACE INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) SELECT @WGUID + 002 AS `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId` FROM
`creature_movement` WHERE `Id` = 2720;
DELETE FROM `creature_movement` WHERE `id` = 2720;
-- INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- (@WGUID + 002, 01, -11714.4384765625, -3294.425781250000, 12.11897850036621093, 100, 0, 0),
-- (@WGUID + 002, 02, -11726.9433593750, -3303.230468750000, 10.88082981109619140, 100, 0, 0),
-- (@WGUID + 002, 03, -11736.3603515625, -3314.583496093750, 11.05258369445800781, 100, 0, 0),
-- (@WGUID + 002, 04, -11750.8574218750, -3323.556884765625, 10.21689033508300781, 100, 0, 0),
-- (@WGUID + 002, 05, -11766.6396484375, -3326.677734375000, 7.888277053833007812, 100, 0, 0),
-- (@WGUID + 002, 06, -11774.6718750000, -3334.626464843750, 8.258161544799804687, 100, 0, 0),
-- (@WGUID + 002, 07, -11792.0820312500, -3335.641113281250, 5.367292881011962890, 100, 0, 0);

REPLACE INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@WGUID + 002, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 002');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 002, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 002', 0, 0, 0, 0);

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 002, @CGUID + 004, 0, 0),
(@SGUID + 002, @CGUID + 005, 1, 0);

DELETE FROM `creature_linking` WHERE  `master_guid` = 2720;
REPLACE INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGUID + 002, 2, 2, 0, @WGUID + 002, 2, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 002');

UPDATE `creature` SET `guid` = 140174 WHERE `guid` = 2720;
UPDATE `creature` SET `guid` = 140175 WHERE `guid` = 2721;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- done

-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- (@CGUID + 006, 6011, 0, 1, -11676.4755859375, -3140.114501953125, 17.2841949462890625, 1.782605528831481933, 300, 300, 0, 0),
-- (@CGUID + 007, 6010, 0, 1, -11678.5986328125, -3145.973388671875, 16.3164672851562500, 1.310759663581848144, 300, 300, 0, 0);

REPLACE INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) SELECT @WGUID + 003 AS `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId` FROM
`creature_movement` WHERE `Id` = 3804;
DELETE FROM `creature_movement` WHERE `id` = 3804;
-- INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- (@WGUID + 003, 01, -11672.5966796875, -3148.721679687500, 17.90150833129882812, 100, 0, 0),
-- (@WGUID + 003, 02, -11666.8066406250, -3165.686279296875, 17.94960403442382812, 100, 0, 0),
-- (@WGUID + 003, 03, -11667.9062500000, -3185.362548828125, 16.40057563781738281, 100, 0, 0),
-- (@WGUID + 003, 04, -11676.7968750000, -3201.566406250000, 14.32342720031738281, 100, 0, 0),
-- (@WGUID + 003, 05, -11676.6962890625, -3216.533447265625, 14.89373970031738281, 100, 0, 0),
-- (@WGUID + 003, 06, -11684.6015625000, -3239.688720703125, 13.24373817443847656, 100, 0, 0);

REPLACE INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@WGUID + 003, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 003');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 003, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 003', 0, 0, 0, 0);

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 003, @CGUID + 006, 0, 0),
(@SGUID + 003, @CGUID + 007, 1, 0);

DELETE FROM `creature_linking` WHERE  `master_guid` = 3804;
REPLACE INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGUID + 003, 2, 2, 0, @WGUID + 003, 2, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 003');

UPDATE `creature` SET `guid` = 140176 WHERE `guid` = 3804;
UPDATE `creature` SET `guid` = 140177 WHERE `guid` = 3805;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- done

-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- (@CGUID + 008, 6011, 0, 1, -11815.468750000, -3048.875000000000, 9.014612197875976562, 5.148721218109130859, 300, 300, 0, 0),
-- (@CGUID + 009, 6010, 0, 1, -11815.775390625, -3038.188720703125, 12.46767902374267578, 5.226332664489746093, 300, 300, 0, 0);

REPLACE INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) SELECT @WGUID + 004 AS `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId` FROM
`creature_movement` WHERE `Id` = 3883;
DELETE FROM `creature_movement` WHERE `id` = 3883;
-- INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- (@WGUID + 004, 01, -11804.2128906250, -3045.838623046875, 11.18620586395263671, 100, 0, 0),
-- (@WGUID + 004, 02, -11789.3603515625, -3048.382324218750, 12.83773231506347656, 100, 0, 0),
-- (@WGUID + 004, 03, -11770.2939453125, -3061.773681640625, 11.88704872131347656, 100, 0, 0),
-- (@WGUID + 004, 04, -11752.3906250000, -3073.559814453125, 11.51673126220703125, 100, 0, 0),
-- (@WGUID + 004, 05, -11742.5361328125, -3071.446289062500, 14.13880157470703125, 100, 0, 0),
-- (@WGUID + 004, 06, -11729.0781250000, -3077.852539062500, 15.39218616485595703, 100, 0, 0),
-- (@WGUID + 004, 07, -11717.7851562500, -3079.979248046875, 16.77109146118164062, 100, 0, 0);

REPLACE INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(@WGUID + 004, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 004');

REPLACE INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 004, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 004', 0, 0, 0, 0);

REPLACE INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 004, @CGUID + 008, 0, 0),
(@SGUID + 004, @CGUID + 009, 1, 0);

DELETE FROM `creature_linking` WHERE  `master_guid` = 3883;
REPLACE INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@SGUID + 004, 2, 2, 0, @WGUID + 004, 2, 'Blasted Lands - Felguard Sentry | Felhound (2) Patrol 004');

UPDATE `creature` SET `guid` = 140178 WHERE `guid` = 3883;
UPDATE `creature` SET `guid` = 140179 WHERE `guid` = 3884;

