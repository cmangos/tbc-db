-- Mana Shifter
UPDATE `creature_template` SET `RegenerateStats` = 1 WHERE `Entry` = 16310;

-- Borgoth the Bloodletter spawning
DELETE FROM `creature` WHERE `guid`=82891;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(82891, 16247, 530, 1, 0, 0, 6439.78, -6643.51, 107.4319, 1.74359, 300, 300, 0, 0, 0, 0, 0, 0);
DELETE FROM `pool_template` WHERE `entry`=46875;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(46875, 1, 'Ghostlands - Borgoth the Bloodletter');
DELETE FROM `pool_creature` WHERE `guid` IN (82889,82891);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(82889, 46875, 0, 'Ghostlands - Borgoth the Bloodletter South'),
(82891, 46875, 0, 'Ghostlands - Borgoth the Bloodletter East');


