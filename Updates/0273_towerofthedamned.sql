-- Improve Tower of the Damned thx @AbraKabastard
-- https://github.com/OregonCore/OregonCore/blob/1b689e14c52bcf09660644ab6c3dbc3b62204729/sql/updates/world/2018_02_03_02_tower_of_damned.sql

-- Move wrong spawns
UPDATE `creature` SET `position_x`=6455.98, `position_y`=-6347.05, `position_z`=55.178, `orientation`=1.3107, `spawndist`=0, `MovementType`=0 WHERE `guid`=82854;
UPDATE `creature` SET `position_x`=6440.71, `position_y`=-6404.61, `position_z`=48.678, `orientation`=1.2039, `spawndist`=0, `MovementType`=2 WHERE `guid`=82937;
UPDATE `creature` SET `position_x`=6437.28, `position_y`=-6360.66, `position_z`=41.276, `orientation`=1.2629, `spawndist`=0, `MovementType`=2 WHERE `guid`=82897;
UPDATE `creature` SET `position_x`=6448.90, `position_y`=-6382.36, `position_z`=41.282, `orientation`=2.7828 WHERE `guid`=82871;

-- Delete spellspawned versions of 16303
DELETE FROM `creature` WHERE `id` = 16303 AND `guid` IN (82823,82841,82864,82879, 82899);

-- Delete wrong spawns
DELETE FROM `creature` WHERE `guid` IN (82870, 82915);

-- Add 3 Deatholme Necromancer and 3 Eyes of Dar'Khan
DELETE FROM `creature` WHERE `guid` BETWEEN 85740 AND 85745;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(85740, 16317, 530, 6461.42, -6345.30, 41.233, 2.8408, 300, 300, 0, 0),
(85741, 16317, 530, 6476.68, -6362.99, 27.201, 3.8813, 300, 300, 0, 0),
(85742, 16317, 530, 6470.83, -6380.51, 27.202, 1.8361, 300, 300, 0, 0),
(85743, 16320, 530, 6461.81, -6349.33, 55.178, 1.2652, 300, 300, 0, 0),
(85744, 16320, 530, 6437.28, -6360.66, 41.276, 1.2629, 300, 300, 0, 2),
(85745, 16320, 530, 6440.71, -6404.61, 48.678, 1.2039, 300, 300, 0, 2);

DELETE FROM `creature_movement` WHERE `id` IN (82937, 82897, 85744, 85745);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(82937, 1, 6445.87, -6388.29, 55.178),
(82937, 2, 6462.24, -6385.64, 55.178),
(82937, 3, 6477.23, -6373.64, 55.178),
(82937, 4, 6472.75, -6355.57, 55.178),
(82937, 5, 6460.20, -6343.13, 55.178),
(82937, 6, 6465.87, -6326.58, 48.679),
(82937, 7, 6460.20, -6343.13, 55.178),
(82937, 8, 6443.27, -6346.17, 55.179),
(82937, 9, 6430.45, -6358.61, 55.179),
(82937, 10, 6433.99, -6376.20, 55.178),
(82937, 11, 6445.87, -6388.29, 55.178),
(82937, 12, 6440.46, -6404.84, 48.678),
(82897, 1, 6443.78, -6340.43, 41.291),
(82897, 2, 6459.56, -6345.86, 41.208),
(82897, 3, 6453.16, -6365.24, 33.735),
(82897, 4, 6446.68, -6384.37, 41.203),
(82897, 5, 6430.96, -6379.17, 41.291),
(82897, 6, 6437.28, -6360.66, 41.276),
(85744, 1, 6443.78, -6340.43, 41.291),
(85744, 2, 6459.56, -6345.86, 41.208),
(85744, 3, 6453.16, -6365.24, 33.735),
(85744, 4, 6446.68, -6384.37, 41.203),
(85744, 5, 6430.96, -6379.17, 41.291),
(85744, 6, 6437.28, -6360.66, 41.276),
(85745, 1, 6445.87, -6388.29, 55.178),
(85745, 2, 6462.24, -6385.64, 55.178),
(85745, 3, 6477.23, -6373.64, 55.178),
(85745, 4, 6472.75, -6355.57, 55.178),
(85745, 5, 6460.20, -6343.13, 55.178),
(85745, 6, 6465.87, -6326.58, 48.679),
(85745, 7, 6460.20, -6343.13, 55.178),
(85745, 8, 6443.27, -6346.17, 55.179),
(85745, 9, 6430.45, -6358.61, 55.179),
(85745, 10, 6433.99, -6376.20, 55.178),
(85745, 11, 6445.87, -6388.29, 55.178),
(85745, 12, 6440.46, -6404.84, 48.678);

DELETE FROM `pool_template` WHERE `entry` IN (16462, 16463);
INSERT INTO `pool_template` VALUES 
(16462, 1, 'Ghostlands - Eye of Dar''Khan/Wailer 1'),
(16463, 1, 'Ghostlands - Eye of Dar''Khan/Wailer 2');

DELETE FROM `pool_creature` WHERE `pool_entry` IN (16462, 16463);
INSERT INTO `pool_creature` VALUES 
(82897, 16462, 0, 'Wailer 1'),
(82937, 16463, 0, 'Wailer 2'),
(85744, 16462, 0, "Eye of Dar''Khan 1"),
(85745, 16463, 0, "Eye of Dar''Khan 2");

-- Add Shackle Immunity for Dar'Khan Drathir 16329 - https://www.wowhead.com/npc=16329/darkhan-drathir#comments:id=324546
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|524288 WHERE `entry` = 16329;

