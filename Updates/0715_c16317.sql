-- Add pool of Masophet the Black 16249 thx @Serpaa
DELETE FROM `creature` WHERE `guid` = 52140;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(52140, 16249, 530, 1, 6310.767, -6249.392, 80.812, 2.4250, 300, 300, 0, 0);

DELETE FROM `pool_template` WHERE `entry`= 1249;
INSERT INTO `pool_template` VALUES (1249, 1, "Masophet the Black (16249)");

DELETE FROM `pool_creature_template` WHERE `id` = 16249;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(16249, 1249, 0, 'Masophet the Black (16249)');

