
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
('15318', '3474', '1', '0', '0', '-1950.4051513671875', '-1949.997802734375', '92.8021087646484375', '5.445427417755126953', '275', '275', '40', '1'), -- Firemane Drake [Entry 23969]
('15540', '3474', '1', '0', '0', '-1981.5889892578125', '-2452.464111328125', '93.39815521240234375', '3.926990747451782226', '275', '275', '40', '1'), -- Advisor Duskingdawn [Entry 17092]
('15576', '3474', '1', '0', '0', '-1716.923583984375', '-2051.568603515625', '91.8554840087890625', '0.872664630413055419', '275', '275', '40', '1'); -- Forsaken Raider [Entry 17108]

UPDATE `creature` SET `position_x` = '-1852.6673583984375', `position_y` = '-2181.0439453125', `position_z` = '94.424713134765625', `orientation` = '0.837758064270019531', `spawndist` = '40', `MovementType` = '1' WHERE (`guid` = '15083');

REPLACE INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3474', '1262', '0', 'Lakota\'mani (3474)');

REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1262', '1', 'Lakota\'mani (3474)');

DELETE FROM `creature_movement` WHERE (`id` = '15083');

-- Move creatures which "block" classic-db :-I
DELETE FROM `creature` WHERE `id` IN (23969,17092,17108)
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(191361, 23969, 1, 1, 0, 0, -2591.74, -4873.2, 115.305, 0.656329, 360, 360, 0, 0, 0, 0, 0, 0),
(191362, 23969, 1, 1, 0, 0, -2767.78, -4755.88, 51.1353, 1.79542, 360, 360, 0, 0, 0, 0, 0, 0),
(191363, 23969, 1, 1, 0, 0, -2727.09, -4987.36, 129.289, 2.90988, 360, 360, 0, 0, 0, 0, 0, 0),
(191364, 23969, 1, 1, 0, 0, -2814.8, -4888.36, 113.63, 0.767575, 360, 360, 0, 0, 0, 0, 0, 0),
(191365, 23969, 1, 1, 0, 0, -2675.83, -5008.19, 42.5365, 2.72325, 360, 360, 0, 0, 0, 0, 0, 0),
(191366, 17092, 0, 1, 0, 0, -43.9601, -935.766, 54.4359, 0.767945, 300, 300, 0, 0, 0, 0, 0, 0),
(191367, 17108, 0, 1, 0, 0, -358.834, -725.124, 57.7258, 5.48576, 300, 300, 0, 0, 0, 0, 0, 2),
(191368, 17108, 0, 1, 0, 0, -352.33, -718.192, 62.5891, 3.7001, 300, 300, 0, 0, 0, 0, 0, 0),
(191369, 17108, 0, 1, 0, 0, -325.077, -699.664, 57.7713, 0.820305, 300, 300, 0, 0, 0, 0, 0, 0),
(191370, 17108, 0, 1, 0, 0, -338.303, -711.022, 57.7319, 5.59193, 300, 300, 0, 0, 0, 0, 0, 0),
(191371, 17108, 0, 1, 0, 0, -344.927, -692.467, 57.8126, 1.65806, 300, 300, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_addon` WHERE `guid` IN (15576,15577,15702,15703,15705);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(191367, 0, 0, 1, 16, 0, 0, NULL),
(191368, 0, 0, 1, 16, 173, 0, NULL),
(191369, 0, 0, 1, 16, 173, 0, NULL),
(191370, 0, 0, 1, 16, 0, 0, NULL),
(191371, 0, 0, 1, 16, 173, 0, NULL);

