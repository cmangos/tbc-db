-- ----------------------------
-- Lieutenant Tomathren (Entry: 16217)
UPDATE creature_template SET GossipMenuId=7289 WHERE entry=16217;

DELETE FROM `gossip_menu` WHERE `entry`=7289;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7289, 8620, 0, 0);


