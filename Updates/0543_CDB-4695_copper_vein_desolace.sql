/*
05 06 08 09
01 04 08 09
02 06 07 08
02 03 08 11
01 02 10 11
04 05 09 10
02 05 07 09
01 03 07 10
02 06 09 11
01 02 10 11
https://github.com/cmangos/classic-db/commit/c4007faa7f630745166dddf4ed1a877f67e22651
https://www.wowhead.com/tbc/object=1731/copper-vein
2040	49	Master Mineral Pool - Desolace
102003	7391	10	Mineral Spawn Point 1 - Copper -> Removed
102004	7391	16	Mineral Spawn Point 1 - Tin
102005	7391	5	Mineral Spawn Point 1 - Silver
102006	7391	5	Mineral Spawn Point 1 - Gold
102007	7391	0	Mineral Spawn Point 1 - Iron -> Chance absorbed
102008	7391	30	Mineral Spawn Point 1 - Mithril
*/

-- Remove remaining Copper
DELETE FROM `pool_gameobject` where `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2040)) AND `description` LIKE '%Copper%';
DELETE FROM `gameobject` WHERE `guid` IN (102003,102009,102033,102039,102045,102063,102075,102087,102093,102099,102105,102111,102117,102123,102129,102141,102153,102159,102165,102171,102177,102183,102189,102195,102201,
102207,102213,102219,102225,102237,102249,102255,102261,102267,102273,102279,102285,102291,102297,102303,102309,102315,102321,102327,102333,102339,102345,102351,102357,102363,102369,102375,102381,102387,102393,102399,
102405,102411,102417,102423,102429,102435,102441,102447,102453,102459,102465,102471,102477,102483,102489,102495,102507,102513,102519,102525,102531,102537,102543,102549,102555,102561,102567,102573,102579,102585,102591,
102597,102603,102609,102615,102621,102627,102633,102639,102645,102651,102657,102663,102669,102675,102681,102687,102693,102699,102705,102711,102717,102723,102729,102735,102741,102747,102753,102759,102765,102771,102777,
102783,102789,102795,102801,102807,102813,102819,102825,102831,102837,102843,102849,102855,102861,102867,102873,102879,102885,102891,102897,102903,102909,102915,102921,102927,102933,102939,102945,102951,102957,102963,
102969,102975,102981,102987,102993,102999,103005,103011,103017,103023,103029,103035,103041,103047,103053,103059,103065,103071,103077,103083,103089,103095,111256,112409,112415,112421,112427,112433,112439,112445,112451,
112457,112463,108357,108363,108369,108375,108381,108387,108393,108399,108405,108411,108417,108423);

-- DELETE FROM `gameobject` WHERE `guid` IN (4737, 5047, 5237, 5416, 20645, 20646, 20647, 63454, 73670);
-- DELETE FROM `pool_gameobject` WHERE `guid` IN (4737, 5047, 5237, 5416, 20645, 20646, 20647, 63454, 73670);

DELETE FROM `gameobject` WHERE `guid` BETWEEN 102003 AND 102014;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 102003 AND 102014;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7391 AND 7392;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7391 AND 7392;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 102063 AND 102068;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 102063 AND 102068;
DELETE FROM `pool_pool` WHERE `pool_id` = 7401;
DELETE FROM `pool_template` WHERE `entry` = 7401;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 102063 AND 102068;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 102063 AND 102068;
DELETE FROM `pool_pool` WHERE `pool_id` = 7401;
DELETE FROM `pool_template` WHERE `entry` = 7401;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 102075 AND 102080;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 102075 AND 102080;
DELETE FROM `pool_pool` WHERE `pool_id` = 7403;
DELETE FROM `pool_template` WHERE `entry` = 7403;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 102087 AND 102092;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 102087 AND 102092;
DELETE FROM `pool_pool` WHERE `pool_id` = 7405;
DELETE FROM `pool_template` WHERE `entry` = 7405;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 102033 AND 102050;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 102033 AND 102050;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 7396 AND 7398;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 7396 AND 7398;

DELETE FROM `gameobject` WHERE `guid` = 1040001;
DELETE FROM `pool_gameobject` WHERE `guid` = 1040001;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 108357 AND 108368;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108357 AND 108368;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9130 AND 9131;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9130 AND 9131;

-- Master Mineral Pool - Desolace
UPDATE `pool_template` SET `max_limit` = 46 WHERE `entry` = 2040; -- 194 -> 184	(49)

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OGUID := 142500;
SET @SGUID := 10263;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 00, 0, 1, 1, 170.6651763916015625, 1985.239990234375, 179.043731689453125, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279, 300, 600),
(@OGUID + 01, 0, 1, 1, 26.85167121887207031, 1824.607666015625, 127.6042861938476562, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818, 300, 600),
(@OGUID + 02, 0, 1, 1, 212.4466400146484375, 1588.0970458984375, 174.4531097412109375, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881, 300, 600),
(@OGUID + 03, 0, 1, 1, 56.71576690673828125, 1562.73046875, 123.8455810546875, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, 300, 600),
(@OGUID + 04, 0, 1, 1, -114.646812438964843, 1298.894287109375, 93.6002960205078125, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 300, 600),
(@OGUID + 05, 0, 1, 1, -151.837020874023437, 1466.2340087890625, 102.197723388671875, 5.550147056579589843, 0, 0, -0.358367919921875, 0.933580458164215087, 300, 600);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 00, 'Desolace - Copper Vein (2) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 00, @OGUID + 00, '-1'),
(@SGUID + 00, @OGUID + 01, '-1'),
(@SGUID + 00, @OGUID + 02, '-1'),
(@SGUID + 00, @OGUID + 03, '-1'),
(@SGUID + 00, @OGUID + 04, '-1'),
(@SGUID + 00, @OGUID + 05, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, '1731', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OGUID := 142510;
SET @SGUID := 10264;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID + 00, 0, 1, 1, -191.014862060546875, 1279.9073486328125, 96.0694580078125, 5.89921426773071289, 0, 0, -0.19080829620361328, 0.981627285480499267, 300, 600),
(@OGUID + 01, 0, 1, 1, -201.551864624023437, 1178.9447021484375, 97.31302642822265625, 4.782202720642089843, 0, 0, -0.68199825286865234, 0.731353819370269775, 300, 600),
(@OGUID + 02, 0, 1, 1, -322.0865478515625, 1097.666015625, 94.8923492431640625, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 300, 600),
(@OGUID + 03, 0, 1, 1, -278.59906005859375, 967.169921875, 94.76845550537109375, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927, 300, 600),
(@OGUID + 04, 0, 1, 1, -546.8497314453125, 934.19207763671875, 96.0840606689453125, 3.769911527633666992, 0, 0, -0.95105648040771484, 0.309017121791839599, 300, 600);

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGUID + 00, 'Desolace - Copper Vein (2) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGUID + 00, @OGUID + 00, '-1'),
(@SGUID + 00, @OGUID + 01, '-1'),
(@SGUID + 00, @OGUID + 02, '-1'),
(@SGUID + 00, @OGUID + 03, '-1'),
(@SGUID + 00, @OGUID + 04, '-1');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 00, '1731', '0', '0', '0');
