-- remove 6 Mountain Silversage, add 12 MS spawns
-- a maximum of 2 MS will be spawned, down from 4 MS
DELETE FROM `gameobject` WHERE (`guid` IN (135579,63658,86441,135578,135577,63665));
DELETE FROM `pool_gameobject` WHERE (`guid` IN (135579,63658,86441,135578,135577,63665));
-- 13021	33	Master Herb Pool - Western Plaguelands - Mountain Silversage now removed (2 spawns active as per this commit) were for 4 in classicmangos befor this commit
UPDATE `pool_template` SET `max_limit` = 25 WHERE `entry` = 13021; -- wotlk - 954	25	MASTER Herbs Western Plaguelands zone 28 - closing in on this number

-- Arthas' Tears
-- Dreamfoil
-- Sungrass are left in this pool_template, setting to 25, probably still too high.
UPDATE `pool_gameobject` SET `pool_entry` = 13020, `description` = 'Tirisfal Glades - Peacebloom' WHERE `guid` = 135452;
UPDATE `pool_gameobject` SET `pool_entry` = 13020, `description` = 'Tirisfal Glades - Earthroot' WHERE `guid` = 135457;
UPDATE `pool_gameobject` SET `pool_entry` = 13020, `description` = 'Tirisfal Glades - Silverleaf' WHERE `guid` = 135440;
UPDATE `pool_gameobject` SET `pool_entry` = 13020, `description` = 'Tirisfal Glades - Silverleaf' WHERE `guid` = 135441;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140080;
SET @OBJECT_2 = 140081;
SET @OBJECT_3 = 140082;
SET @OBJECT_4 = 140083;
SET @OBJECT_5 = 140084;
SET @OBJECT_6 = 140085;

SET @GROUP_ID = 42;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 176586, 0, 1, 2575.6420898437500, -1595.9572753906250, 94.52051544189453125, 2.338739633560180664, 0, 0, 0.920504570007324218, 0.390731811523437500, 300, 600, 100, 1),
(@OBJECT_2, 176586, 0, 1, 2201.2377929687500, -1801.1833496093750, 72.03926849365234375, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 300, 600, 100, 1),
(@OBJECT_3, 176586, 0, 1, 3000.3623046875000, -1661.5183105468750, 165.8311309814453125, 5.532694816589355468, 0, 0, -0.36650085449218750, 0.930417716503143310, 300, 600, 100, 1),
(@OBJECT_4, 176586, 0, 1, 2693.4936523437500, -1661.4169921875000, 147.1721343994140625, 5.759587764739990234, 0, 0, -0.25881862640380859, 0.965925931930541992, 300, 600, 100, 1),
(@OBJECT_5, 176586, 0, 1, 2907.6535644531250, -1319.4996337890625, 167.1591796875000000, 5.427974700927734375, 0, 0, -0.41469287872314453, 0.909961462020874023, 300, 600, 100, 1),
(@OBJECT_6, 176586, 0, 1, 2320.0017089843750, -2046.6796875000000, 175.2209930419921875, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.848048448562622070, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Mountain Silversage (1) Herb 000', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140090;
SET @OBJECT_2 = 140091;
SET @OBJECT_3 = 140092;
SET @OBJECT_4 = 140093;
SET @OBJECT_5 = 140094;
SET @OBJECT_6 = 140095;

SET @GROUP_ID = 43;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 176586, 0, 1, 1690.2348632812500, -2477.8039550781250, 99.81735992431640625, 3.211419343948364257, 0, 0, -0.99939060211181640, 0.034906134009361267, 300, 600, 100, 1),
(@OBJECT_2, 176586, 0, 1, 2225.3286132812500, -2463.5480957031250, 90.51047515869140625, 3.263772249221801757, 0, 0, -0.99813461303710937, 0.061051756143569946, 300, 600, 100, 1),
(@OBJECT_3, 176586, 0, 1, 1861.6679687500000, -1889.4282226562500, 99.05277252197265625, 3.368495941162109375, 0, 0, -0.99357128143310546, 0.113208353519439697, 300, 600, 100, 1),
(@OBJECT_4, 176586, 0, 1, 1613.9862060546875, -2440.5991210937500, 89.55572509765625000, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257, 300, 600, 100, 1),
(@OBJECT_5, 176586, 0, 1, 1862.2828369140625, -1242.7801513671875, 73.62285614013671875, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.874620079994201660, 300, 600, 100, 1),
(@OBJECT_6, 176586, 0, 1, 1963.5679931640625, -2147.6696777343750, 83.23751831054687500, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1'),
(@GROUP_ID, @OBJECT_6, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Western Plaguelands - Mountain Silversage (1) Herb 001', '1', '1', '0', '0');
