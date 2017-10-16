-- ----------------------------
-- Vindicator Palanaar (Entry: 17106)
UPDATE creature_template SET GossipMenuId=7367, NpcFlags=NpcFlags|1 WHERE entry=17106;

DELETE FROM `gossip_menu` WHERE `entry`=7367;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7367, 8802, 0, 0), -- If player is not a Draenei
(7367, 8803, 0, 302); -- If player is a Draenei

