-- ----------------------------
-- Ranger Vynna (Entry: 16203)
UPDATE creature_template SET GossipMenuId=7195 WHERE entry=16203;

DELETE FROM `gossip_menu` WHERE `entry`=7195;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7195, 8476, 0, 0);


