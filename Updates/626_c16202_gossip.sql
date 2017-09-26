-- ----------------------------
-- Farstrider Sedina (Entry: 16202)
UPDATE creature_template SET GossipMenuId=7205 WHERE entry=16202;

DELETE FROM `gossip_menu` WHERE `entry`=7205;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7205, 8487, 0, 0);

