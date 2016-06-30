-- Insert Large Solid Chest Pools Dungeons
-- Solid Chest (74448, 75298)
-- Xinito

-- Add pool templates for each zone

DELETE FROM `pool_template` WHERE `entry` IN (40039, 40040, 40041);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40039, 2, 'Gnomeregan - Large Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40040, 1, 'Razorfen Kraul - Large Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (40041, 1, 'Stormwind Stockades - Large Solid Chest Pool');

-- Add all gameobjects to correct pool

DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (40039, 40040, 40041);

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32399, 40039, 0, 'Gnomeregan - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32422, 40039, 0, 'Gnomeregan - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32440, 40039, 0, 'Gnomeregan - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (56700, 40039, 0, 'Gnomeregan - Large Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (87611, 40040, 0, 'Razorfen Kraul - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (87612, 40040, 0, 'Razorfen Kraul - Large Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (26178, 40041, 0, 'Stormwind Stockades - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (26179, 40041, 0, 'Stormwind Stockades - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (31964, 40041, 0, 'Stormwind Stockades - Large Solid Chest Pool');