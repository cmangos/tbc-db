-- ----------------------------
-- Fhwoor (Entry: 17877)
UPDATE creature_template SET GossipMenuId=7516 WHERE entry=17877;

DELETE FROM `gossip_menu` WHERE `entry`=7516;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7516, 9113, 0, 0);

