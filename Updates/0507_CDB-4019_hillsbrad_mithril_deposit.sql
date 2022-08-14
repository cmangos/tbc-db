DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 75475 AND 75478;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 75475 AND 75478;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4836 AND 4836;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4836 AND 4836;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 75407 AND 75410;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 75407 AND 75410;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4819 AND 4819;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4819 AND 4819;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 75491 AND 75510;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 75491 AND 75510;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4840 AND 4844;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4840 AND 4844;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 75419 AND 75422;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 75419 AND 75422;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 4822 AND 4822;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 4822 AND 4822;

-- Remove Mithril Deposit from remaining nodes (25 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%Mithril%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2014,2015,2016));
DELETE FROM `gameobject` WHERE (`guid` IN (70583,75412,75416,75424,75428,75432,75436,75440,75444,75448,75452,75456,75460,75464,75468,75472,75480,75484,75488,75512,75516,75520,75530,75534,75538));

-- Remove Truesilver Deposit from remaining nodes (24 Nodes remaining)
DELETE FROM `pool_gameobject` where `description` LIKE '%Truesilver%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` IN (2014,2015,2016));
DELETE FROM `gameobject` WHERE (`guid` IN (70585,75414,75418,75426,75430,75434,75438,75442,75446,75450,75454,75458,75462,75466,75470,75474,75482,75486,75490,75514,75518,75522,75532,75540));

UPDATE `pool_template` SET `max_limit` = 16 WHERE `entry` = 2014; -- 20	Master Mineral Pool - Hillsbrad Foothills (Main Section)
-- 75200	4750	0	Mineral Spawn Point 1 - Copper
-- 75201	4750	35	Mineral Spawn Point 1 - Tin
-- 75202	4750	5	Mineral Spawn Point 1 - Silver
UPDATE `pool_template` SET `max_limit` = 5 WHERE `entry` = 2015; -- 8	Master Mineral Pool - Hillsbrad Foothills (Higher Level Sections)
-- 70582	4867	0	Mineral Spawn Point 115 - Iron
-- 70584	4867	5	Mineral Spawn Point 115 - Gold
UPDATE `pool_template` SET `max_limit` = 2 WHERE `entry` = 2016; -- 3	Master Mineral Pool - Hillsbrad Foothills (Azurelode Mine)
-- 101392	9161	0	Hillsbrad Foothills (Azurelode Mine) - Tin (103711)
-- 101393	9161	10	Hillsbrad Foothills (Azurelode Mine) - Silver (105569)

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140340;
SET @OBJECT_2 = 140341;
SET @OBJECT_3 = 140342;
SET @OBJECT_4 = 140343;
SET @OBJECT_5 = 140344;
SET @OBJECT_6 = 140345;

SET @GROUP_ID = 59;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -252.056854248046875, -306.233398437500000, 54.14484024047851562, 3.351046562194824218, 0, 0, -0.99452114105224609, 0.104535527527332305, 600, 900, 100, 1),
(@OBJECT_2, 0, 0, 1, -121.890190124511718, -364.605529785156250, 53.30955505371093750, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 600, 900, 100, 1),
(@OBJECT_3, 0, 0, 1, -219.275283813476562, -317.051879882812500, 73.09970092773437500, 3.630291461944580078, 0, 0, -0.97029495239257812, 0.241925001144409179, 600, 900, 100, 1),
(@OBJECT_4, 0, 0, 1, -291.372619628906250, -291.808441162109375, 44.13697433471679687, 1.972219824790954589, 0, 0, 0.833885192871093750, 0.551937937736511230, 600, 900, 100, 1),
(@OBJECT_5, 0, 0, 1, -275.034088134765625, -384.038635253906250, 65.84112548828125000, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058, 600, 900, 100, 1),
(@OBJECT_6, 0, 0, 1, -154.448348999023437, -345.574707031250000, 50.59965515136718750, 1.274088263511657714, 0, 0, 0.594821929931640625, 0.803857445716857910, 600, 900, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Hillsbrad Foothills - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');

UPDATE `spawn_group` SET `Name` = 'Wetlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000' WHERE (`Id` = '55');
UPDATE `spawn_group` SET `Name` = 'Wetlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 001' WHERE (`Id` = '56');
UPDATE `spawn_group` SET `Name` = 'Wetlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 002' WHERE (`Id` = '57');
UPDATE `spawn_group` SET `Name` = 'Wetlands - Iron Deposit | Silver Vein | Gold Vein (1) Ore 003' WHERE (`Id` = '58');

