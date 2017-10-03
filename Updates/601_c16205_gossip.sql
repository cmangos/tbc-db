-- ----------------------------
-- Magistrix Aminel (Entry: 16205)
UPDATE creature_template SET GossipMenuId=7204 WHERE entry=16205;

DELETE FROM `gossip_menu` WHERE `entry`=7204;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7204, 8485, 0, 0);

