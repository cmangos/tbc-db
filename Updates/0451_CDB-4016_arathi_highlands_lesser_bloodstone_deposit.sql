-- 2002	60	Master Mineral Pool - Arathi Highlands (Main Section) down to 301 due to Jintha'lor update
-- 2003	4	Master Mineral Pool - Arathi Highlands (Drywhisker Gorge) - down to 17 nodes from 31 due to bloodstone split
UPDATE `pool_template` SET `max_limit` = 3 WHERE `entry` = 2003; -- i think when i visted that cave there can only be 4 up total which is not already spawned by bloodstone alone

-- Deletes the 31 spawns of bloodstone + 6 nodes
-- DELETE FROM `gameobject` WHERE (`guid` IN (70365, 70370, 70375, 70380, 70385, 70390, 70395, 70400, 70405, 70410, 70415, 70420, 70425, 70430, 70435, 70440, 70445, 70450, 70455, 70460, 70465, 70470, 70475, 70480, 70485, 70490, 70495, 70500, 70505, 70564, 70569));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (70365, 70370, 70375, 70380, 70385, 70390, 70395, 70400, 70405, 70410, 70415, 70420, 70425, 70430, 70435, 70440, 70445, 70450, 70455, 70460, 70465, 70470, 70475, 70480, 70485, 70490, 70495, 70500, 70505, 70564, 70569));
-- DELETE FROM `gameobject` WHERE (`guid` IN (70414, 70416, 70417, 70418, 70459, 70461, 70462, 70463, 70469, 70471, 70472, 70473, 70479, 70481, 70482, 70483, 70484, 70486, 70487, 70488, 70494, 70496, 70497, 70498));
-- DELETE FROM `pool_gameobject` WHERE (`guid` IN (70414, 70416, 70417, 70418, 70459, 70461, 70462, 70463, 70469, 70471, 70472, 70473, 70479, 70481, 70482, 70483, 70484, 70486, 70487, 70488, 70494, 70496, 70497, 70498));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70484 AND 70488;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70484 AND 70488;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70469 AND 70473;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70469 AND 70473;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70494 AND 70498;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70494 AND 70498;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70414 AND 70418;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70414 AND 70418;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70479 AND 70483;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70479 AND 70483;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70459 AND 70463;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70459 AND 70463;
DELETE FROM `pool_template` WHERE (`entry` IN (3518, 3515, 3520, 3504, 3517, 3513));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (3518, 3515, 3520, 3504, 3517, 3513));

UPDATE `gameobject` SET `id` = 1735 WHERE `guid` IN (SELECT `guid` FROM `pool_gameobject` WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` IN (2002,2003)) and id = 2653); -- 31
UPDATE `pool_gameobject` SET `description` = 'Arathi Highlands (Drywhisker Gorge) - Iron Deposit' WHERE `pool_entry` IN (SELECT `pool_id` FROM `pool_pool` WHERE `mother_pool` IN (2002,2003)) and description LIKE '%Bloodstone%'; -- 31 total with 50% chance, now fallback to mithril with 85%
-- 70364	3494	0	Mineral Spawn Point 295 - Mithril 25 -> 85
-- 70365	3494	50	Mineral Spawn Point 295 - Lesser Bloodstone Deposit - convert to Iron instead of removing it. - https://classic.wowhead.com/object=1735/iron-deposit
-- 70366	3494	10	Mineral Spawn Point 295 - Silver
-- 70367	3494	10	Mineral Spawn Point 295 - Gold
-- 70368	3494	5	Mineral Spawn Point 295 - Truesilver

-- Remove bad other nodes in the cave
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70364 AND 70373;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70364 AND 70373;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70399 AND 70408;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70399 AND 70408;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70409 AND 70413;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70409 AND 70413;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70374 AND 70378;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70374 AND 70378;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70389 AND 70393;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70389 AND 70393;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 70449 AND 70453;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 70449 AND 70453;
DELETE FROM `pool_template` WHERE (`entry` IN (3495,3494,3501,3503,3496,3499,3511,3502));
DELETE FROM `pool_pool` WHERE (`pool_id` IN (3495,3494,3501,3503,3496,3499,3511,3502));

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140230;
SET @OBJECT_2 = 140231;
SET @OBJECT_3 = 140232;

SET @GROUP_ID = 48;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -887.10382080078125, -4012.095947265625, 145.7963104248046875, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -842.01422119140625, -3939.072998046875, 150.1113739013671875, 1.308995485305786132, 0, 0, 0.608760833740234375, 0.793353796005249023, 300, 600, 100, 1), -- 3518
(@OBJECT_3, 0, 0, 1, -855.95483398437500, -3888.885986328125, 140.7460479736328125, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.675590515136718750, 300, 600, 100, 1); -- 3515

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Lesser Bloodstone Deposit (1) Ore 000', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2653', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140240;
SET @OBJECT_2 = 140241;
SET @OBJECT_3 = 140242;

SET @GROUP_ID = 49;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -947.56140136718750, -3927.051757812500, 145.2843322753906250, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432, 300, 600, 100, 1), -- 3520
(@OBJECT_2, 0, 0, 1, -909.26251220703125, -3951.998291015625, 152.5139007568359375, 2.024578809738159179, 0, 0, 0.848047256469726562, 0.529920578002929687, 300, 600, 100, 1), -- 3504
(@OBJECT_3, 0, 0, 1, -906.06024169921875, -3912.308593750000, 139.7058868408203125, 2.094393253326416015, 0, 0, 0.866024971008300781, 0.500000774860382080, 300, 600, 100, 1);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Lesser Bloodstone Deposit (1) Ore 001', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2653', '0', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140250;
SET @OBJECT_2 = 140251;
SET @OBJECT_3 = 140252;

SET @GROUP_ID = 50;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 0, 1, -936.33215332031250, -3858.243896484375, 148.0457611083984375, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556, 300, 600, 100, 1),
(@OBJECT_2, 0, 0, 1, -871.71118164062500, -3959.098144531250, 133.4881134033203125, 5.567600727081298828, 0, 0, -0.35020732879638671, 0.936672210693359375, 300, 600, 100, 1),
(@OBJECT_3, 0, 0, 1, -882.01049804687500, -3885.882080078125, 135.1735229492187500, 2.984498262405395507, 0, 0, 0.996916770935058593, 0.078466430306434631, 300, 600, 100, 1); -- 3517 3513

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Arathi Highlands - Lesser Bloodstone Deposit (1) Ore 002', '1', '1', '0', '0');

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@GROUP_ID, '2653', '0', '0', '0');

