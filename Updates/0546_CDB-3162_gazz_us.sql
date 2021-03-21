UPDATE `creature` SET `position_x` = '1454.1995849609375', `position_y` = '-4701.81787109375', `position_z` = '-2.62193179130554199', `orientation` = '4.572762489318847656', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '6456');

REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
('6501', '3204', '1', '0', '0', '1470.4882812500000', '-4706.10791015625', '2.220372200012207031', '0.820304751396179199', '300', '300', '2', '1'),
('6502', '3204', '1', '0', '0', '1497.5399169921875', '-4744.13720703125', '18.01207923889160156', '6.037305831909179687', '300', '300', '2', '1'),
('6439', '3204', '1', '0', '0', '1465.78', '-4683.74', '6.62599', '5.71567', '300', '300', '2', '1'); -- wotlk-db "https://www.wowhead.com/npc=3204/gazzuz#screenshots:id=79639"

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1202', '1', 'Gazz\'uz (3204)'),
('1258', '1', 'Marisa du''Paige (599)');

REPLACE INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3204', '1202', '0', 'Gazz\'uz (3204)'),
('599', '1258', '0', 'Marisa du''Paige (599)');

-- Move blocking guids
DELETE FROM `creature` WHERE `guid` IN (6503,191346,191347,191348) AND `id` IN (23128,23131);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191346, 23128, 1, 1, 0, 0, 1939.69, -4133.33, 41.0008, 4.17134, 300, 300, 0, 0),
(191347, 23131, 1, 1, 0, 0, 1942.32, -4133.69, 41.005, 3.82227, 120, 120, 0, 0),
(191348, 23131, 1, 1, 0, 0, 1938.95, -4130.73, 40.9933, 4.01426, 120, 120, 0, 0);

