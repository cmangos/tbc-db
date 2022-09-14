UPDATE `pool_template` SET `max_limit` = 16 WHERE `entry` = 2026; -- 18	Master Mineral Pool - The Hinterlands (79)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 105073 AND 105078;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 105073 AND 105078;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3560 AND 3560;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3560 AND 3560;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78101 AND 78112;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78101 AND 78112;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6528 AND 6529;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6528 AND 6529;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78485 AND 78490;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78485 AND 78490;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6592 AND 6592;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6592 AND 6592;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78149 AND 78154;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78149 AND 78154;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6536 AND 6536;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6536 AND 6536;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78131 AND 78142;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78131 AND 78142;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6533 AND 6534;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6533 AND 6534;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 105085 AND 105090;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 105085 AND 105090;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3562 AND 3562;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3562 AND 3562;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78185 AND 78190;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78185 AND 78190;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6542 AND 6542;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6542 AND 6542;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78155 AND 78160;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78155 AND 78160;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6537 AND 6537;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6537 AND 6537;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78167 AND 78172;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78167 AND 78172;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6539 AND 6539;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6539 AND 6539;

-- Remove Iron Deposit from remaining nodes in Arathi Highlands, can only spawn at these ~10 nodes (79 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%Iron%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2026);
DELETE FROM `gameobject` WHERE `guid` IN (78037,78055,78061,78079,78091,78097,78121,78127,78145,78163,78175,78181,78193,78199,78205,78217,78223,78229,78235,78241,78247,78253,78259,78265,78271,78277,78283,78289,78295,
78301,78307,78313,78319,78325,78337,78343,78355,78361,78373,78379,78397,78403,78409,78421,78427,78433,78439,78445,78451,78457,78463,78469,78493,78499,78505,78517,78523,78535,78541,105003,105009,105015,105021,105027,
105033,105039,105045,105051,105057,105063,105069,105081,105093,105099,105105,105111,105117,105123,105135,105141,105147);

-- Remove Silver Vein from remaining nodes in Arathi Highlands, can only spawn at these ~10 nodes (79 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%- Silver%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2026);
DELETE FROM `gameobject` WHERE `guid` IN (78040,78058,78064,78082,78094,78100,78124,78130,78148,78166,78178,78184,78196,78202,78208,78220,78226,78232,78238,78244,78250,78256,78262,78268,78274,78280,78286,78292,78298,
78304,78310,78316,78322,78328,78340,78346,78358,78364,78376,78382,78400,78406,78412,78424,78430,78436,78442,78448,78454,78460,78466,78472,78496,78502,78508,78520,78526,78538,78544,105006,105012,105018,105024,105030,
105036,105042,105048,105054,105060,105066,105072,105084,105096,105102,105108,105114,105120,105126,105138,105144,105150);

-- 105145	3572	0	Mineral Spawn Point 114 - Mithril
-- 105148	3572	10	Mineral Spawn Point 114 - Gold -> 5
-- 105149	3572	7	Mineral Spawn Point 114 - Truesilver -> 2

-- Reduce Gold to Silver Value
UPDATE `pool_gameobject` SET `Chance` = 5 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` = 2026) AND `description` LIKE '%Gold%';

-- Reduce Truesilver to Gold Value
UPDATE `pool_gameobject` SET `Chance` = 2 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` = 2026) AND `description` LIKE '%Truesilver%';

-- More "bad" Nodes
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78119 AND 78123;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78119 AND 78123;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6531 AND 6531;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6531 AND 6531;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 78035 AND 78039;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 78035 AND 78039;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 6517 AND 6517;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 6517 AND 6517;

-- Arathi Nodes in Hinterlands
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70022 AND 70026;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70022 AND 70026;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3437 AND 3437;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3437 AND 3437;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70010 AND 70014;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70010 AND 70014;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3435 AND 3435;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3435 AND 3435;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140710;
SET @OBJECT_2 = 140711;
SET @OBJECT_3 = 140712;
SET @OBJECT_4 = 140713;
SET @OBJECT_5 = 140714;

SET @GROUP_ID = 73;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 167.0709991455078125, -2509.183349609375, 136.7591094970703125, 1.396261811256408691, 0, 0, 0.642786979675292968, 0.766044974327087402, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -39.0902786254882812, -2395.624511718750, 152.7585754394531250, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -283.979766845703125, -2519.599121093750, 128.2614135742187500, 1.169368624687194824, 0, 0, 0.551936149597167968, 0.833886384963989257, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -44.5067291259765625, -2654.055908203125, 135.5952911376953125, 2.460912704467773437, 0, 0, 0.942641258239746093, 0.333807557821273803, 300, 600, 100, 1),
(@OBJECT_5, 0, 0, 1, 381.0050354003906250, -2944.594970703125, 138.2926940917968750, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'The Hinterlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140720;
SET @OBJECT_2 = 140721;
SET @OBJECT_3 = 140722;
SET @OBJECT_4 = 140723;
SET @OBJECT_5 = 140724;

SET @GROUP_ID = 74;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, 187.7125091552734375, -3077.863525390625, 138.2345733642578125, 0.802850961685180664, 0, 0, 0.390730857849121093, 0.920504987239837646, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, 351.4040222167968750, -3269.396240234375, 127.4132766723632812, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -318.154998779296875, -3241.780517578125, 137.5642547607421875, 0.122172988951206207, 0, 0, 0.061048507690429687, 0.998134791851043701, 300, 600, 100, 1),
(@OBJECT_4, 0, 0, 1, -64.6879348754882812, -3592.832519531250, 133.1424865722656250, 4.974189758300781250, 0, 0, -0.60876083374023437, 0.793353796005249023, 300, 600, 100, 1),
(@OBJECT_5, 0, 0, 1, -54.3246002197265625, -3992.911865234375, 133.3719940185546875, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'The Hinterlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');
