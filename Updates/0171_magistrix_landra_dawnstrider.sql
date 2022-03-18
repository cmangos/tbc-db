DELETE FROM `creature` WHERE `guid`=153057 AND `id`=16210;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `curhealth`) VALUES
(153057, 16210, 530, 8718.337, -6655.9033, 72.838066, 5.654866695404052734, 300, 300, 0, 0);

DELETE FROM `npc_text_broadcast_text` WHERE Id=8421;
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES
(8421, 1, 12095);

DELETE FROM `gossip_menu` WHERE `entry`=7156;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(7156, 8421, 0, 0);

UPDATE `creature_template` SET `GossipMenuId`=7156 WHERE `Entry`=16210;

