-- ----------------------------
-- Ranger Lilatha (Entry: 16295)
-- The correct Menu ID is unkown, so use a really high ID until we find the proper one.
UPDATE creature_template SET GossipMenuId=50213 WHERE entry=16295;

DELETE FROM `gossip_menu` WHERE `entry`=50213;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(50213, 8478, 0, 0);

