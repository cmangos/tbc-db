-- probably alot more pooling/spawns missing

-- classic: Anvilrage Taskmaster 24818 -> Anvilrage Overseer 8889 & Anvilrage Enforcer 24819 -> Anvilrage Warden 8890
-- Reinsert 8504 spawns and convert to tbc 8566
DELETE FROM `creature` WHERE `guid` IN (5777,5846,6830,6831,6832,4762,191137);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
(5777, 8566, 0, -7037.68, -1279.54, 242.43, 2.81047, 500, 500, 5, 1),
(5846, 8566, 0, -6636.48, -1233.76, 209.839, 2.97681, 500, 500, 0, 0),
-- 5848 not needed in tbc as it was removed in patch 2.3
(6830, 8566, 0, -6906.53, -1093.65, 256.74, 0.942478, 500, 500, 0, 0),
(6831, 8566, 0, -6995.07, -1144.61, 257.58, 1.41372, 500, 500, 0, 0),
(6832, 8566, 0, -6931.85, -1419.82, 256.156, 4.85202, 500, 500, 0, 0),
(4762, 24818, 0, -7248.04, -941.054, 168.362, 1.29154, 500, 500, 0, 0); -- reguid for 5848, which might get reinserted when server is at patch 2.3
-- 191137 dublicate 180506

-- Add pooling for obvious shared Anvilrage Taskmaster 24818 / Anvilrage Enforcer 24819 spawns
DELETE FROM `pool_template` WHERE `entry` BETWEEN 19000 AND 19007;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(19001, 1, "Blackrock Mountain - Anvilrage Taskmaster/Enforcer #1"),
(19002, 1, "Blackrock Mountain - Anvilrage Taskmaster/Enforcer #2"),
(19003, 1, "Blackrock Mountain - Anvilrage Taskmaster/Enforcer #3"),
(19004, 1, "Blackrock Mountain - Anvilrage Taskmaster/Enforcer #4"),
(19005, 1, "Blackrock Mountain - Anvilrage Taskmaster/Enforcer #5"),
(19006, 1, "Blackrock Mountain - Anvilrage Taskmaster/Enforcer #6"),
(19007, 1, "Blackrock Mountain - Anvilrage Taskmaster/Enforcer #7");

DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 19000 AND 19007;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(4566, 19001, 0, "Anvilrage Taskmaster #1"),
(5750, 19001, 0, "Anvilrage Enforcer #1"),
(5727, 19002, 0, "Anvilrage Taskmaster #2"),
(151161, 19002, 0, "Anvilrage Enforcer #2"),
(5728, 19003, 0, "Anvilrage Taskmaster #3"),
(3953, 19003, 0, "Anvilrage Enforcer #3"),
(5746, 19004, 0, "Anvilrage Taskmaster #4"),
(151162, 19004, 0, "Anvilrage Enforcer #4"),
(5747, 19005, 0, "Anvilrage Taskmaster #5"),
(5324, 19005, 0, "Anvilrage Enforcer #5"),
(4762, 19006, 0, "Anvilrage Taskmaster #6"),
(5237, 19006, 0, "Anvilrage Enforcer #6"),
(5849, 19007, 0, "Anvilrage Taskmaster #7"),
(5231, 19007, 0, "Anvilrage Enforcer #7");

