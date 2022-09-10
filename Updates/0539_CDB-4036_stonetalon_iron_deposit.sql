UPDATE `pool_template` SET `max_limit` = 24 WHERE `entry` = 2050; -- 26	Master Mineral Pool - Stonetalon Mountains (94 + 26)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 106567 AND 106600;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 106567 AND 106600;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8038 AND 8042;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8038 AND 8042;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 106462 AND 106473;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 106462 AND 106473;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8023 AND 8024;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8023 AND 8024;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 106553 AND 106558;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 106553 AND 106558;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8036 AND 8036;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8036 AND 8036;

-- Remove Iron Deposit from remaining nodes in Stonetalon, can only spawn at these 12 nodes (94 Nodes remaining)
-- 106602	8043	0	Mineral Spawn Point 87 - Copper
-- 106603	8043	26	Mineral Spawn Point 87 - Tin
-- 106606	8043	10	Mineral Spawn Point 87 - Silver
-- 106607	8043	5	Mineral Spawn Point 87 - Gold
DELETE FROM `pool_gameobject` where `description` LIKE '%Iron%' and `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` where `mother_pool` = 2050);
DELETE FROM `gameobject` WHERE `guid` IN (102139,102151,102247,106002,106009,106016,106023,106030,106037,106044,106051,106058,106065,106072,106079,106086,106093,106100,106107,
106114,106121,106128,106135,106142,106149,106156,106163,106170,106177,106184,106191,106198,106205,106212,106219,106226,106233,106240,106247,106254,106261,106268,106275,106282,
106289,106296,106303,106317,106324,106331,106338,106345,106352,106359,106366,106373,106380,106387,106394,106401,106408,106415,106422,106429,106436,106443,106450,106457,106478,
106485,106492,106499,106506,106513,106520,106527,106534,106541,106548,106604,106611,106618,106625,106632,106639,106646,106653,106660,106667,106674,106681,106758,106765,108717);

-- Reduce Silver to Gold Value
UPDATE `pool_gameobject` SET `Chance` = 5 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` = 2050) AND `description` LIKE '%Silver%';

-- Increase Tin to Copper Value
UPDATE `pool_gameobject` SET `Chance` = 0 WHERE `pool_entry` IN (SELECT `pool_id` from `pool_pool` where `mother_pool` = 2050) AND `description` LIKE '%Tin%';
-- 106602	8043	0	Mineral Spawn Point 87 - Copper
-- 106603	8043	0	Mineral Spawn Point 87 - Tin
-- 106606	8043	5	Mineral Spawn Point 87 - Silver
-- 106607	8043	5	Mineral Spawn Point 87 - Gold

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140530;
SET @OBJECT_2 = 140531;
SET @OBJECT_3 = 140532;
SET @OBJECT_4 = 140533;
SET @OBJECT_5 = 140534;
SET @OBJECT_6 = 140535;

SET @GROUP_ID = 10096;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, 2463.7434082031250, 1770.66564941406250, 374.254302978515625, 3.351046562194824218, 0, 0, -0.994521141052246090, 0.104535527527332305, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, 2743.3095703125000, 1578.79272460937500, 299.964813232421875, 3.857182979583740234, 0, 0, -0.936671257019042960, 0.350209832191467285, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, 2616.5634765625000, 1516.23632812500000, 257.183441162109375, 2.111847877502441406, 0, 0, 0.8703556060791015620, 0.492423713207244873, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, 2450.9462890625000, 1559.47680664062500, 277.566680908203125, 2.862335443496704101, 0, 0, 0.9902677536010742180, 0.139175355434417724, 300, 600, 100, 1),
(@OBJECT_5, 0, 1, 1, 2229.4882812500000, 1354.33349609375000, 315.216491699218750, 2.879789113998413085, 0, 0, 0.9914445877075195310, 0.130528271198272705, 300, 600, 100, 1),
(@OBJECT_6, 0, 1, 1, 2291.5012207031250, 1287.59545898437500, 346.897521972656250, 0.244345575571060180, 0, 0, 0.1218690872192382810, 0.992546200752258300, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Stonetalon Mountains - Iron Deposit | Silver Vein | Gold Vein (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140540;
SET @OBJECT_2 = 140541;
SET @OBJECT_3 = 140542;
SET @OBJECT_4 = 140543;
SET @OBJECT_5 = 140544;
SET @OBJECT_6 = 140545;

SET @GROUP_ID = 10097;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, 892.078857421875000, 1850.1291503906250, 15.16645526885986328, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904, 300, 600, 100, 1),
(@OBJECT_2, 0, 1, 1, 824.477661132812500, 1724.7615966796875, -15.1428308486938476, 4.886923789978027343, 0, 0, -0.64278697967529296, 0.766044974327087402, 300, 600, 100, 1),
(@OBJECT_3, 0, 1, 1, 592.311340332031250, 1904.4860839843750, 19.90636634826660156, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023, 300, 600, 100, 1),
(@OBJECT_4, 0, 1, 1, 471.829742431640625, 1693.5253906250000, 31.83080101013183593, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544, 300, 600, 100, 1),
(@OBJECT_5, 0, 1, 1, 471.047302246093750, 1521.8410644531250, 31.63241958618164062, 6.143560886383056640, 0, 0, -0.06975555419921875, 0.997564136981964111, 300, 600, 100, 1),
(@OBJECT_6, 0, 1, 1, 641.753479003906250, 1416.8571777343750, 9.305798530578613281, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Stonetalon Mountains - Iron Deposit | Silver Vein | Gold Vein (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '1735', '0', '0', '0'),
(@GROUP_ID, '1733', '0', '0', '5'),
(@GROUP_ID, '1734', '0', '0', '5');
