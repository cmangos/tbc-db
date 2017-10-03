-- ----------------------------
-- Magister Kaendris (Entry: 16239)
UPDATE creature_template SET GossipMenuId=7397, NpcFlags=NpcFlags|1 WHERE entry=16239;

DELETE FROM `gossip_menu` WHERE `entry`=7397;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7397, 8860, 0, 0);

