UPDATE `pool_template` SET `max_limit` = 23 WHERE `entry` = 2004; -- 24	Master Mineral Pool - Badlands (114)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71386 AND 71409;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71386 AND 71409;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3757 AND 3761;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3757 AND 3761;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 71311 AND 71314;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 71311 AND 71314;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 3742 AND 3742;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 3742 AND 3742;

-- move bad nodes to missing xyz for now
UPDATE `gameobject` SET `position_x` = -7292.22, `position_y` = -3208.34, `position_z` = 299.893, `orientation` = 3.4383, `rotation2` = -0.989016, `rotation3` = 0.147811 WHERE `guid` BETWEEN 105237 AND 105241;
UPDATE `gameobject` SET `position_x` = -7248.51, `position_y` = -3471.09, `position_z` = 316.221, `orientation` = 5.72468, `rotation2` = -0.275637, `rotation3` = 0.961262 WHERE `guid` BETWEEN 105233 AND 105236;
UPDATE `gameobject` SET `position_x` = -6974.24, `position_y` = -2305.7, `position_z` = 256.075, `orientation` = 0.837757, `rotation2` = 0.406736, `rotation3` = 0.913546 WHERE `guid` BETWEEN 71236 AND 71239;
UPDATE `gameobject` SET `position_x` = -6471.75, `position_y` = -2381.15, `position_z` = 298.949, `orientation` = 5.81195, `rotation2` = -0.233445, `rotation3` = 0.97237 WHERE `guid` BETWEEN 70621 AND 70624;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140860;
SET @OBJECT_2 = 140861;
SET @OBJECT_3 = 140862;
SET @OBJECT_4 = 140863;

SET @GROUP_ID = 88;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -6152.34179687500, -3027.715087890625, 220.9054412841796875, 2.199114561080932617, 0, 0, 0.891006469726562500, 0.453990638256072998, 600, 900, 100, 1),
(@OBJECT_2, 0, 0, 1, -6271.73291015625, -2913.515136718750, 227.8298034667968750, 2.897245407104492187, 0, 0, 0.992546081542968750, 0.121869951486587524, 600, 900, 100, 1),
(@OBJECT_3, 0, 0, 1, -6150.07226562500, -2875.812011718750, 213.6828155517578125, 0.366517573595046997, 0, 0, 0.182234764099121093, 0.983255028724670410, 600, 900, 100, 1),
(@OBJECT_4, 0, 0, 1, -6280.70556640625, -2957.267333984375, 224.8830718994140625, 1.378809213638305664, 0, 0, 0.636077880859375000, 0.771624863147735595, 600, 900, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Uldaman - Mithril Deposit | Gold Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2040', '0', '0', '0'),
(@GROUP_ID, '1734', '0', '0', '5'),
(@GROUP_ID, '2047', '0', '0', '5');
