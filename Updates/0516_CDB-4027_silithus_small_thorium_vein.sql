DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104676 AND 104679;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104676 AND 104679;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7839 AND 7839;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7839 AND 7839;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104620 AND 104623;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104620 AND 104623;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7825 AND 7825;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7825 AND 7825;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104700 AND 104703;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104700 AND 104703;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7845 AND 7845;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7845 AND 7845;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104688 AND 104695;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104688 AND 104695;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7842 AND 7843;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7842 AND 7843;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104644 AND 104647;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104644 AND 104647;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7831 AND 7831;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7831 AND 7831;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104724 AND 104727;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104724 AND 104727;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7851 AND 7851;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7851 AND 7851;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104804 AND 104807;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104804 AND 104807;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7871 AND 7871;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7871 AND 7871;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104656 AND 104663;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104656 AND 104663;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7834 AND 7835;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7834 AND 7835;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104636 AND 104639;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104636 AND 104639;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7829 AND 7829;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7829 AND 7829;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104628 AND 104631;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104628 AND 104631;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7827 AND 7827;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7827 AND 7827;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104604 AND 104607;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104604 AND 104607;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7821 AND 7821;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7821 AND 7821;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104708 AND 104711;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104708 AND 104711;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7847 AND 7847;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7847 AND 7847;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104584 AND 104587;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104584 AND 104587;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7816 AND 7816;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7816 AND 7816;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104632 AND 104635;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104632 AND 104635;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7828 AND 7828;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7828 AND 7828;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104640 AND 104643;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104640 AND 104643;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7830 AND 7830;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7830 AND 7830;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104648 AND 104651;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104648 AND 104651;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7832 AND 7832;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7832 AND 7832;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104652 AND 104655;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104652 AND 104655;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7833 AND 7833;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7833 AND 7833;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 104800 AND 104803;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 104800 AND 104803;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7870 AND 7870;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7870 AND 7870;

-- Remove Truesilver Deposit from remaining nodes (96 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%Truesilver%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2048,2049));
DELETE FROM `gameobject` WHERE (`guid` IN (104586,104590,104594,104598,104602,104610,104614,104626,104634,104642,104650,104654,104666,104670,104674,104682,104686,
104698,104706,104714,104718,104722,104730,104734,104738,104742,104746,104750,104754,104817,104823,104825,104827,104829,104831,104837,104839,104841,104849,104851,
104853,104855,104857,104859,104863,104865,104869,104875,104877,104879,104887,104889,104893,104895,104897,104901,104903,104905,104907,104909,104911,104913,104915,
104917,104919,104921,104923,104925,104927,104929,104931,104933,104935,104937,104939,104941,104943,104945,104947,104949,104951,104953,104955,104957,104959,104961,
104963,104965,104967,104969,104971,104973,104975,104977,104979,104981));

-- Remove Small Thorium Vein from remaining nodes (35 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%Small Thorium%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2048,2049));
DELETE FROM `gameobject` WHERE (`guid` IN (104584,104588,104592,104596,104600,104608,104612,104624,104632,104640,104648,104652,104664,104668,104672,104680,104684,
104696,104704,104712,104716,104720,104728,104732,104736,104740,104744,104748,104752,104788,104792,104796,104800,104808,104812));
-- pools get already deleted above, hence a few errors for some of these
-- 2022-10-05 19:51:40 `pool_gameobject` has a non existing gameobject spawn (GUID: 104584) defined for pool id (7816), skipped.
-- 2022-10-05 19:51:40 `pool_gameobject` has a non existing gameobject spawn (GUID: 104632) defined for pool id (7828), skipped.
-- 2022-10-05 19:51:40 `pool_gameobject` has a non existing gameobject spawn (GUID: 104640) defined for pool id (7830), skipped.
-- 2022-10-05 19:51:40 `pool_gameobject` has a non existing gameobject spawn (GUID: 104648) defined for pool id (7832), skipped.
-- 2022-10-05 19:51:40 `pool_gameobject` has a non existing gameobject spawn (GUID: 104652) defined for pool id (7833), skipped.
-- 2022-10-05 19:51:40 `pool_gameobject` has a non existing gameobject spawn (GUID: 104800) defined for pool id (7870), skipped.

-- Remove more nodes from Hive'Ashi, which was already reworked
-- https://github.com/cmangos/classic-db/commit/3ca651deddea4de75a3a4521b3d4fe32ce9f1cac
DELETE FROM `pool_gameobject` WHERE `guid` IN (104852,104862,104864,104874,104886,104888,104892,104894,104896,104900,104902,104904);
DELETE FROM `gameobject` WHERE `guid` IN (104852,104862,104864,104874,104886,104888,104892,104894,104896,104900,104902,104904);
DELETE FROM `pool_pool` WHERE `pool_id` IN (7892,7897,7898,7903,7909,7910,7912,7913,7914,7916,7917,7918);
DELETE FROM `pool_template` WHERE `entry` IN (7892,7897,7898,7903,7909,7910,7912,7913,7914,7916,7917,7918);

UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 2048; -- 2048	12	Master Mineral Pool - Silithus (29)
-- Remaining Nodes now only hold gold and mithril
-- 104585	7816	25	Mineral Spawn Point 1 - Mithril
-- 104587	7816	5	Mineral Spawn Point 1 - Gold
UPDATE `pool_gameobject` SET `Chance` = 0 WHERE `description` LIKE '%Mithril%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2048);
UPDATE `pool_template` SET `max_limit` = 6 WHERE `entry` = 2049; -- 2049	17	Master Mineral Pool - Silithus (Ooze Covered Mineral GOs) (55) - most wrong anyways, awaiting rework.

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140350;
SET @OBJECT_2 = 140351;
SET @OBJECT_3 = 140352;
SET @OBJECT_4 = 140353;
SET @OBJECT_5 = 140354;
SET @OBJECT_6 = 140355;

SET @GROUP_ID = 10078;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7414.12255859375, 837.21594238281250, -1.64660298824310302, 1.972219824790954589, 0, 0, 0.833885192871093750, 0.551937937736511230, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -7365.19628906250, 630.68835449218750, -5.69446182250976562, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.874620079994201660, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -7906.01562500000, 1050.0541992187500, -0.71589702367782592, 5.567600727081298828, 0, 0, -0.35020732879638671, 0.936672210693359375, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -7769.69433593750, 998.73187255859375, -2.36411905288696289, 3.944445848464965820, 0, 0, -0.92050457000732421, 0.390731811523437500, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -7509.10498046875, 1091.5841064453125, -1.23180103302001953, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255, 600, 1200, 100, 1),
(@OBJECT_6, 0, 1, 1, -7608.41503906250, 1251.5363769531250, -1.78993499279022216, 5.934120178222656250, 0, 0, -0.17364788055419921, 0.984807789325714111, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Small Thorium Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140360;
SET @OBJECT_2 = 140361;
SET @OBJECT_3 = 140362;
SET @OBJECT_4 = 140363;
SET @OBJECT_5 = 140364;
SET @OBJECT_6 = 140365;

SET @GROUP_ID = 10079;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -6790.11962890625, 1860.2114257812500, 11.35343647003173828, 5.235987663269042968, 0, 0, -0.50000000000000000, 0.866025388240814208, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -7725.71289062500, 1852.7633056640625, 22.69186782836914062, 6.248279094696044921, 0, 0, -0.01745223999023437, 0.999847710132598876, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -7567.14599609375, 1733.0445556640625, 17.23760604858398437, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -7510.28808593750, 1932.7120361328125, 18.57949256896972656, 4.433136463165283203, 0, 0, -0.79863548278808593, 0.601815044879913330, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -7268.64648437500, 1883.7770996093750, 13.67974185943603515, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183, 600, 1200, 100, 1),
(@OBJECT_6, 0, 1, 1, -7050.06884765625, 1870.6997070312500, 17.87853813171386718, 3.176533222198486328, 0, 0, -0.99984741210937500, 0.017469281330704689, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Small Thorium Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140370;
SET @OBJECT_2 = 140371;
SET @OBJECT_3 = 140372;
SET @OBJECT_4 = 140373;
SET @OBJECT_5 = 140374;

SET @GROUP_ID = 10080;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -6843.29980468750, 580.552978515625000, -1.48054099082946777, 2.303830623626708984, 0, 0, 0.913544654846191406, 0.406738430261611938, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -6890.71093750000, 198.714630126953125, -1.48213899135589599, 1.274088263511657714, 0, 0, 0.594821929931640625, 0.803857445716857910, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -6323.47900390625, 612.454772949218750, 0.548304975032806396, 4.084071159362792968, 0, 0, -0.89100646972656250, 0.453990638256072998, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -6453.39306640625, 506.930786132812500, 0.376089006662368774, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -6420.68359375000, 717.690002441406250, 0.731453001499176025, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Small Thorium Vein | Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140380;
SET @OBJECT_2 = 140381;
SET @OBJECT_3 = 140382;
SET @OBJECT_4 = 140383;
SET @OBJECT_5 = 140384;

SET @GROUP_ID = 10081;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7080.28369140625, 330.5129089355468750, 14.63607311248779296, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -6651.72851562500, 96.99153900146484375, 9.584152221679687500, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.743145048618316650, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -7089.28564453125, 813.9563598632812500, 18.12988281250000000, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -7143.74560546875, 663.0089111328125000, 12.42422103881835937, 5.410521507263183593, 0, 0, -0.42261791229248046, 0.906307935714721679, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -7561.12158203125, 574.4451293945312500, -21.9861545562744140, 4.642575740814208984, 0, 0, -0.73135375976562500, 0.681998312473297119, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Small Thorium Vein | Truesilver Deposit (1) Ore 003', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140390;
SET @OBJECT_2 = 140391;
SET @OBJECT_3 = 140392;
SET @OBJECT_4 = 140393;
SET @OBJECT_5 = 140394;

SET @GROUP_ID = 10082;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -6316.00390625000, 262.784515380859375, 11.23300170898437500, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -6207.97363281250, 485.200958251953125, 19.83262062072753906, 0.628316879272460937, 0, 0, 0.309016227722167968, 0.951056778430938720, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -6245.81054687500, 727.327697753906250, 27.72557640075683593, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -6304.38623046875, 1120.18981933593750, 34.87728881835937500, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -6484.36865234375, 1534.93933105468750, 18.17881202697753906, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Small Thorium Vein | Truesilver Deposit (1) Ore 004', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140400;
SET @OBJECT_2 = 140401;
SET @OBJECT_3 = 140402;
SET @OBJECT_4 = 140403;
SET @OBJECT_5 = 140404;

SET @GROUP_ID = 10083;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -6425.44287109375, 1448.168945312500, -1.46713805198669433, 0.331610709428787231, 0, 0, 0.165046691894531250, 0.986285746097564697, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -6608.58056640625, 1800.845703125000, 0.117496997117996215, 0.907570242881774902, 0, 0, 0.438370704650878906, 0.898794233798980712, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -6906.93310546875, 1725.946289062500, -1.24145305156707763, 2.548179388046264648, 0, 0, 0.956304550170898437, 0.292372345924377441, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -6927.76757812500, 1375.200439453125, 0.115258999168872833, 0.523597896099090576, 0, 0, 0.258818626403808593, 0.965925931930541992, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -6816.56689453125, 1052.205322265625, -1.23178195953369140, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.267241001129150390, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Small Thorium Vein | Truesilver Deposit (1) Ore 005', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140410;
SET @OBJECT_2 = 140411;
SET @OBJECT_3 = 140412;
SET @OBJECT_4 = 140413;
SET @OBJECT_5 = 140414;

SET @GROUP_ID = 10084;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7314.06884765625, 276.7623596191406250, 16.41158866882324218, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -7608.46533203125, 244.1931457519531250, 13.56496906280517578, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -7851.56445312500, 207.9971771240234375, 12.99262237548828125, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -8108.40966796875, 320.1177368164062500, -30.6177940368652343, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -8068.27099609375, 684.5274658203125000, 8.245231628417968750, 5.637413978576660156, 0, 0, -0.31730461120605468, 0.948323667049407958, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Small Thorium Vein | Truesilver Deposit (1) Ore 006', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140420;
SET @OBJECT_2 = 140421;
SET @OBJECT_3 = 140422;
SET @OBJECT_4 = 140423;
SET @OBJECT_5 = 140424;

SET @GROUP_ID = 10085;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -8053.45214843750, 892.76098632812500, 9.210503578186035156, 5.148722648620605468, 0, 0, -0.53729915618896484, 0.843391716480255126, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -8118.37353515625, 1002.7318115234375, 67.11762237548828125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -8065.33251953125, 1130.6776123046875, 20.22173500061035156, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -8078.42529296875, 1377.6947021484375, 4.937446117401123046, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -8047.41259765625, 1941.0485839843750, 20.75888442993164062, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046, 600, 1200, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Silithus - Small Thorium Vein | Truesilver Deposit (1) Ore 007', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '324', '0', '0', '0'),
(@GROUP_ID, '2047', '0', '0', '5');
