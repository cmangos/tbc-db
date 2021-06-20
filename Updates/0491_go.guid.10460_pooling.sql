-- Add last unpooled Solid Chest (2857) guid 10460 to a pool
-- (pools 39919,40009,40015 all random spawns in arathi)
UPDATE `gameobject` SET `animprogress` = 100 WHERE `guid` = 10460 AND `id` = 2857;
DELETE FROM `pool_gameobject` WHERE `guid` = 10460;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(10460, 39919, '0', 'Arathi Highlands - Solid Chest (2857)');

