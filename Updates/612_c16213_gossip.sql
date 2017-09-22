-- ----------------------------
-- Ranger Lethvalin (Entry: 16213)
UPDATE creature_template SET GossipMenuId=7158 WHERE entry=16213;

DELETE FROM `gossip_menu` WHERE `entry`=7158;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7158, 8423, 0, 0),
(7158, 8428, 0, 10011); -- q.9143 rewarded

