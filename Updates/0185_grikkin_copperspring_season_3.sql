UPDATE `creature_template` SET `GossipMenuId`=8710 WHERE `Entry`=25176;
DELETE FROM `gossip_menu` WHERE `entry`=8710;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8710, 10957, 0, 0);
DELETE FROM `npc_text` WHERE `ID`=10957;
DELETE FROM `npc_text_broadcast_text` WHERE `ID`=10957;
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES
(10957, 1, 21515);

