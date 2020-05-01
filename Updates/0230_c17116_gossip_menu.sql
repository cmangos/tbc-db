-- ----------------------------
-- Exarch Menelaous (Entry: 17116)
-- Add missing gossip_menu_option menu
DELETE FROM `gossip_menu` WHERE `entry`=7425;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7425, 8974, 0, 0);

UPDATE gossip_menu_option SET action_menu_id=7425 WHERE menu_id=7370;

