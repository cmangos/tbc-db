UPDATE `pool_template` SET `max_limit` = 18 WHERE `entry` = 2060; -- 22	Master Mineral Pool - Winterspring (Main Section) 84+8
UPDATE `pool_template` SET `max_limit` = 2 WHERE `entry` = 2061; -- 8	Master Mineral Pool - Winterspring (West Section) 12

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111217 AND 111222;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111217 AND 111222;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9031 AND 9032;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9031 AND 9032;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111193 AND 111207;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111193 AND 111207;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9023 AND 9027;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9023 AND 9027;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 112767 AND 112769;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 112767 AND 112769;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9264 AND 9264;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9264 AND 9264;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111178 AND 111192;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111178 AND 111192;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9018 AND 9022;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9018 AND 9022;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111166 AND 111168;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111166 AND 111168;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9014 AND 9014;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9014 AND 9014;
 
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111016 AND 111018;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111016 AND 111018;
DELETE FROM `pool_gameobject` WHERE `guid` = 120494; -- added later
DELETE FROM `gameobject` WHERE `guid` = 120494;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8964 AND 8964;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8964 AND 8964;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111025 AND 111027;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111025 AND 111027;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8967 AND 8967;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8967 AND 8967;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111163 AND 111165;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111163 AND 111165;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9013 AND 9013;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9013 AND 9013;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111208 AND 111210;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111208 AND 111210;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9028 AND 9028;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9028 AND 9028;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111223 AND 111225;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111223 AND 111225;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9033 AND 9033;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9033 AND 9033;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111232 AND 111234;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111232 AND 111234;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9036 AND 9036;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9036 AND 9036;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111235 AND 111237;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111235 AND 111237;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9037 AND 9037;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9037 AND 9037;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 111238 AND 111240;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 111238 AND 111240;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9038 AND 9038;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9038 AND 9038;

-- Remove Mithril Deposit from remaining nodes in Winterspring, can only spawn at these 21 nodes (18 Nodes remaining)
-- 111163	9013	0	Mineral Spawn Point 1 - Mithril
-- 111164	9013	15	Mineral Spawn Point 1 - Gold
-- 111165	9013	55	Mineral Spawn Point 1 - Truesilver
UPDATE `pool_gameobject` SET `Chance` = 0 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` IN (2061)) AND `description` LIKE '%Truesilver%';
DELETE FROM `pool_gameobject` where `description` LIKE '%Mithril%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2060,2061));
DELETE FROM `gameobject` WHERE `guid` IN (111163,111169,111172,111175,111211,111214,111226,111229,111241,111244,111247,111250,112764);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140490;
SET @OBJECT_2 = 140491;
SET @OBJECT_3 = 140492;
SET @OBJECT_4 = 140493;
SET @OBJECT_5 = 140494;
SET @OBJECT_6 = 140495;

SET @GROUP_ID = 10092;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, 6801.22900390625, -2694.934082031250, 553.01757812500000, 5.183629035949707031, 0, 0, -0.52249813079833984, 0.852640450000762939, 600, 900, 100, 1),
(@OBJECT_2, 0, 1, 1, 6855.67285156250, -2513.470458984375, 568.17736816406250, 0.733038187026977539, 0, 0, 0.358367919921875000, 0.933580458164215087, 600, 900, 100, 1),
(@OBJECT_3, 0, 1, 1, 6694.52343750000, -2552.111816406250, 533.29467773437500, 0.820303261280059814, 0, 0, 0.398748397827148437, 0.917060375213623046, 600, 900, 100, 1),
(@OBJECT_4, 0, 1, 1, 6304.15380859375, -2418.642822265625, 558.70001220703125, 0.244345575571060180, 0, 0, 0.121869087219238281, 0.992546200752258300, 600, 900, 100, 1),
(@OBJECT_5, 0, 1, 1, 6395.64941406250, -2627.457519531250, 588.77410888671875, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494, 600, 900, 100, 1),
(@OBJECT_6, 0, 1, 1, 6435.05908203125, -2795.479736328125, 571.5633544921875, 2.4260077476501464840, 0, 0, 0.936672210693359375, 0.350207358598709106, 600, 900, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Winterspring - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140500;
SET @OBJECT_2 = 140501;
SET @OBJECT_3 = 140502;
SET @OBJECT_4 = 140503;
SET @OBJECT_5 = 140504;

SET @GROUP_ID = 10093;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, 6809.58935546875, -3184.824951171875, 598.27606201171875, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927, 600, 900, 100, 1),
(@OBJECT_2, 0, 1, 1, 6864.97460937500, -2973.881835937500, 605.11566162109375, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986, 600, 900, 100, 1),
(@OBJECT_3, 0, 1, 1, 6691.42626953125, -2944.903320312500, 577.26629638671875, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468, 600, 900, 100, 1),
(@OBJECT_4, 0, 1, 1, 6424.74462890625, -3189.210205078125, 586.44329833984375, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791, 600, 900, 100, 1),
(@OBJECT_5, 0, 1, 1, 6460.87939453125, -3289.946533203125, 584.46594238281250, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 600, 900, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Winterspring - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140510;
SET @OBJECT_2 = 140511;
SET @OBJECT_3 = 140512;
SET @OBJECT_4 = 140513;
SET @OBJECT_5 = 140514;
SET @OBJECT_6 = 140515;

SET @GROUP_ID = 10094;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, 6881.42822265625, -3540.598876953125, 731.62170410156250, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 600, 900, 100, 1),
(@OBJECT_2, 0, 1, 1, 6743.80419921875, -3450.223632812500, 677.85003662109375, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257, 600, 900, 100, 1),
(@OBJECT_3, 0, 1, 1, 6943.37939453125, -3352.699218750000, 751.90008544921875, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.601815044879913330, 600, 900, 100, 1),
(@OBJECT_4, 0, 1, 1, 6435.39257812500, -3499.297363281250, 648.10961914062500, 0.157079011201858520, 0, 0, 0.078458786010742187, 0.996917366981506347, 600, 900, 100, 1),
(@OBJECT_5, 0, 1, 1, 6421.82910156250, -3610.227539062500, 701.96435546875000, 2.111847877502441406, 0, 0, 0.870355606079101562, 0.492423713207244873, 600, 900, 100, 1),
(@OBJECT_6, 0, 1, 1, 6499.18652343750, -3715.036376953125, 708.69512939453125, 0.000000000000000000, 0, 0, 0.000000000000000000, 1.000000000000000000, 600, 900, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Winterspring - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140520;
SET @OBJECT_2 = 140521;
SET @OBJECT_3 = 140522;
SET @OBJECT_4 = 140523;

SET @GROUP_ID = 10095;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, 7369.69775390625, -4032.684814453125, 695.86010742187500, 5.864306926727294921, 0, 0, -0.20791149139404296, 0.978147625923156738, 600, 900, 100, 1),
(@OBJECT_2, 0, 1, 1, 7252.50683593750, -4223.303710937500, 732.84796142578125, 1.029743075370788574, 0, 0, 0.492423057556152343, 0.870355963706970214, 600, 900, 100, 1),
(@OBJECT_3, 0, 1, 1, 6809.32324218750, -4122.534667968750, 718.50769042968750, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722, 600, 900, 100, 1),
(@OBJECT_4, 0, 1, 1, 6841.20263671875, -3706.990966796875, 735.86596679687500, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492, 600, 900, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Winterspring - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');
