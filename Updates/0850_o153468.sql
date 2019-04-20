-- Add two missing Large Mithril Bound Chest (153468) & Reduce Respawntime to a reasonable amount
UPDATE `gameobject` SET `position_x` = 2851.745, `position_y` = -1403.158, `position_z` = 148.9066, `orientation` = 0.523598 WHERE `guid` = 55580;
DELETE FROM `gameobject` WHERE `guid` IN (5,6);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5, 153468, 0, 1, 2939.019, -1376.045, 167.2374, -1.186824, 0, 0, 0, 0, 86400, 86400, 100, 1),
(6, 153468, 0, 1, 2989.212, -1601.668, 184.4491, 2.495821, 0, 0, 0, 0, 86400, 86400, 100, 1);

DELETE FROM `pool_gameobject` WHERE `guid` IN (5,6);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(5, 39934, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)'),
(6, 39934, 0, 'Western Plaguelands - Large Mithril Bound Chest (153468)');

UPDATE `gameobject` SET `spawntimesecsmin` = 7200, `spawntimesecsmax` = 7200 WHERE `id` = 153468;

