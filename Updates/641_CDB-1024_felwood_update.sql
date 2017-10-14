-- Added missing spawns of rare NPC 14339 (Death Howl) in Felwood
-- pool already created in tbc-db
-- Source: YTDB

DELETE FROM `creature` WHERE `guid` IN (80090,80091,80092);
INSERT INTO `creature` (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(80090, 14339, 1, 1, 0, 0, 4265.29, -1110.32, 319.876, 0.659343, 28800, 28800, 5, 0, 2672, 0, 0, 1),
(80091, 14339, 1, 1, 0, 0, 4136.53, -1137.87, 295.424, 3.21189, 28800, 28800, 5, 0, 2672, 0, 0, 1),
(80092, 14339, 1, 1, 0, 0, 3711.72, -1587.78, 202.667, 2.08249, 28800, 28800, 5, 0, 2672, 0, 0, 1);
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1, spawntimesecsmin=28800, spawntimesecsmax=28800 WHERE `id` = 14339;

-- Fixed gossip menu of NPC 11016 (Captured Arko'narin) in Felwood
-- Source: UDB

DELETE FROM `conditions` WHERE `condition_entry` = 1340;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(1340, 8, 5203, 0);

DELETE FROM `gossip_menu` WHERE `entry` = 3129 AND `text_id` = 4114;
INSERT INTO `gossip_menu` (entry, text_id, script_id, condition_id) VALUES
(3129, 4114, 0, 1340);


