-- Oric Coe
UPDATE `creature_template` SET `GossipMenuId`=8266 WHERE `Entry`=20339;
DELETE FROM `gossip_menu` WHERE `entry`=8266;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(8266, 10288); 


