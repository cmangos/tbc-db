-- ----------------------------
-- Apprentice Vor'el (Entry: 16480)
UPDATE creature_template SET GossipMenuId=7259 WHERE entry=16480;

DELETE FROM `gossip_menu` WHERE `entry`=7259;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7259, 8580, 0, 0);


