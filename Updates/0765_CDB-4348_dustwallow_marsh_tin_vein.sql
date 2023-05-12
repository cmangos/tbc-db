-- https://github.com/cmangos/classic-db/commit/5736e856185a9d95b9f8e3b1546527ae6c54c519
-- Iron Deposit & Silver Vein (no Tin exists, surprisingly)
-- DELETE FROM `gameobject` WHERE (`guid` IN (40757, 40823, 120390));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (40757, 40823, 120390));
UPDATE `pool_gameobject` SET `chance` = 0 WHERE `pool_entry` IN (7605,7708) AND `description` LIKE '%Mithril%'; -- TEMPORARY setting as main deposite

DELETE FROM `gameobject` WHERE `guid` BETWEEN 103425 AND 103430;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 103425 AND 103430;
DELETE FROM `pool_pool` WHERE `pool_id` = 7605;
DELETE FROM `pool_template` WHERE `entry` = 7605;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 103919 AND 103924;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 103919 AND 103924;
DELETE FROM `pool_pool` WHERE `pool_id` = 7708;
DELETE FROM `pool_template` WHERE `entry` = 7708;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 103431 AND 103436;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 103431 AND 103436;
DELETE FROM `pool_pool` WHERE `pool_id` = 7606;
DELETE FROM `pool_template` WHERE `entry` = 7606;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 108513 AND 108518;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108513 AND 108518;
DELETE FROM `pool_pool` WHERE `pool_id` = 9156;
DELETE FROM `pool_template` WHERE `entry` = 9156;

DELETE FROM `gameobject` WHERE `guid` BETWEEN 108507 AND 108512;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108507 AND 108512;
DELETE FROM `pool_pool` WHERE `pool_id` = 9155;
DELETE FROM `pool_template` WHERE `entry` = 9155;

DELETE FROM `gameobject` WHERE `guid` IN (1044002,1044001,103425,103919);
DELETE FROM `pool_gameobject` WHERE `guid` IN (1044002,1044001,103425,103919);

-- nonexistant

-- 2042	19	Master Mineral Pool - Dustwallow Marsh, now ~18 but ok
DELETE FROM `gameobject` WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2042) AND `description` LIKE '%Tin%'); -- XXX wrong small thorium nodes in Thousand Needles
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2042) AND `description` LIKE '%Tin%';

DELETE FROM `gameobject` WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2042) AND `description` LIKE '%Silver%'); -- XXX wrong small thorium nodes in Thousand Needles
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2042) AND `description` LIKE '%Silver%'; -- Also delete Truesilver which is very rare.

DELETE FROM `gameobject` WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2042) AND `description` LIKE '%Gold%'); -- XXX wrong small thorium nodes in Thousand Needles
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2042) AND `description` LIKE '%Gold%';

-- https://www.wowhead.com/classic/object=2040/mithril-deposit
UPDATE `pool_gameobject` SET `chance` = 20 WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` = 2042) AND `description` LIKE '%Mithril%'; -- not so much Mithril, just in North Spider Cave and Soutern Area
-- 103239	7574	0	Mineral Spawn Point 1 - Iron
-- 103240	7574	30	Mineral Spawn Point 1 - Mithril
-- 103241	7574	16	Mineral Spawn Point 1 - Tin -> 0
-- 103242	7574	5	Mineral Spawn Point 1 - Silver -> 0
-- 103243	7574	3	Mineral Spawn Point 1 - Gold -> 0, only very few which will be respawned too soonishTM
-- 103244	7574	2	Mineral Spawn Point 1 - Truesilver -> 0, only very few which will be respawned too soonishTM


-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140980;
SET @OBJECT_2 = 140981;
SET @OBJECT_3 = 140982;
SET @OBJECT_4 = 140983;
SET @OBJECT_5 = 140984;

SET @GROUP_ID = 10225;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -2737.970458984375, -2789.707519531250, 50.63771820068359375, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.743145048618316650, 300, 600),
(@OBJECT_2, 0, 1, 1, -2512.523681640625, -2842.585693359375, 63.24610900878906250, 2.617989301681518554, 0, 0, 0.965925216674804687, 0.258821308612823486, 300, 600),
(@OBJECT_3, 0, 1, 1, -2356.372802734375, -3166.029541015625, 49.91487503051757812, 4.415683269500732421, 0, 0, -0.80385684967041015, 0.594822824001312255, 300, 600),
(@OBJECT_4, 0, 1, 1, -2632.812988281250, -3647.329101562500, 41.45550918579101562, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 300, 600),
(@OBJECT_5, 0, 1, 1, -2748.489746093750, -4020.918457031250, 43.71214294433593750, 3.647741317749023437, 0, 0, -0.96814727783203125, 0.250381410121917724, 300, 600);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Dustwallow Marsh - Tin Vein | Silver Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1732', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140990;
SET @OBJECT_2 = 140991;
SET @OBJECT_3 = 140992;
SET @OBJECT_4 = 140993;
SET @OBJECT_5 = 140994;
SET @OBJECT_6 = 140995;

SET @GROUP_ID = 10226;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OBJECT_1, 0, 1, 1, -3608.114990234375, -3567.088134765625, 44.72138214111328125, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453, 300, 600),
(@OBJECT_2, 0, 1, 1, -3770.909667968750, -3715.187011718750, 48.85344696044921875, 3.124123096466064453, 0, 0, 0.999961853027343750, 0.008734640665352344, 300, 600),
(@OBJECT_3, 0, 1, 1, -3814.187011718750, -3819.936279296875, 56.22981262207031250, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715, 300, 600),
(@OBJECT_4, 0, 1, 1, -3876.552490234375, -3889.244873046875, 65.15455627441406250, 0.052358884364366531, 0, 0, 0.026176452636718750, 0.999657332897186279, 300, 600),
(@OBJECT_5, 0, 1, 1, -4117.821289062500, -3831.941894531250, 56.78618621826171875, 3.089183330535888671, 0, 0, 0.999656677246093750, 0.026201646775007247, 300, 600),
(@OBJECT_6, 0, 1, 1, -4203.838378906250, -3725.701416015625, 56.89252471923828125, 6.021387100219726562, 0, 0, -0.13052558898925781, 0.991444945335388183, 300, 600);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Dustwallow Marsh - Tin Vein | Silver Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1732', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5');
