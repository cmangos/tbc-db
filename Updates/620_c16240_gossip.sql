-- ----------------------------
-- Arcanist Janeda (Entry: 16240)
UPDATE creature_template SET GossipMenuId=7190, NpcFlags=NpcFlags|1 WHERE entry=16240;

DELETE FROM `gossip_menu` WHERE `entry`=7190;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7190, 8470, 0, 0);

