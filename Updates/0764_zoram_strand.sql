-- Zoram Strand Update
DELETE FROM `creature` WHERE `guid` IN (1382,1383); -- free in classic-db
INSERT INTO creature (guid,  id,  map,  spawnMask,  modelid,  equipment_id,  position_x,  position_y,  position_z,  orientation,  spawntimesecsmin,  spawntimesecsmax,  spawndist,  curhealth,  curmana,  MovementType) VALUES
(1382, 3717, 1, 1, 0, 0, 3957.799, 822.6093, 6.174583, 0.2888897, 300, 300, 5, 0, 0, 1),
(1383, 3712, 1, 1, 0, 0, 4150.745, 1043.937, 0.9877715, 4.690147, 300, 300, 5, 0, 0, 1);

-- Add Movement for Ruuzel - thx @TrinityCore
UPDATE `creature` SET `position_x` = 4194.583, `position_y` = 1296.121, `position_z` = 3.209286, `orientation` = 3.212225, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 32762 AND `id` = 3715;
UPDATE `creature` SET `position_x` = 4192.435, `position_y` = 1295.257, `position_z` = 2.584286, `orientation` = 2.966777, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 32729 AND `id` = 3711;
UPDATE `creature` SET `position_x` = 4189.35, `position_y` = 1295.719, `position_z` = 1.834286, `orientation` = 3.363042, `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 32617 AND `id` = 3943;

DELETE FROM `creature_linking` WHERE `master_guid` = 32617;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(32729, 32617, 515),
(32762, 32617, 515);

DELETE FROM `creature_movement_template` WHERE `entry` = 3943;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
(3943, 1, 4168.32, 1281.27, 3.36765, 100),
(3943, 2, 4157.59, 1272.73, 3.22775, 100),
(3943, 3, 4118.6, 1268.22, 1.93513, 100),
(3943, 4, 4100.35, 1277.8, 1.42555, 100),
(3943, 5, 4090.54, 1314.88, 2.11756, 100),
(3943, 6, 4098.61, 1352.27, 2.58844, 100),
(3943, 7, 4116.9, 1363.47, 1.69482, 100),
(3943, 8, 4133.67, 1375.35, 2.18856, 100),
(3943, 9, 4176.57, 1370.93, 2.58461, 100),
(3943, 10, 4221.99, 1339.24, 2.22232, 100),
(3943, 11, 4225.52, 1317.01, 1.90514, 100),
(3943, 12, 4206.5, 1285.38, 1.3025, 100),
(3943, 13, 4185.92, 1278.95, 1.27956, 100);

