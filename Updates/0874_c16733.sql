-- Add missing Exodar Peacekeeper 16733
DELETE FROM `creature` WHERE `guid` IN (60903,60904,60906,60907);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, curhealth, curmana, MovementType) VALUES
(60903, 16733, 530, 1, 0, 0, -3928.165, -11568.19, -150.2529, 1.012291, 300, 300, 0, 0, 0, 0),
(60904, 16733, 530, 1, 0, 0, -3999.389, -11732.4, -151.4905, 2.984513, 300, 300, 0, 0, 0, 0),
(60906, 16733, 530, 1, 0, 0, -3997.849, -11848.74, 0.3363553, 4.206244, 300, 300, 0, 0, 0, 0),
(60907, 16733, 530, 1, 0, 0, -3883.912, -11577.22, -132.7659, 1.169371, 300, 300, 0, 0, 0, 0);

