-- ----------------------------
-- Ranger Krenn'an (Entry: 16462)
UPDATE creature_template SET GossipMenuId=7250 WHERE entry=16462;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16462);

DELETE FROM `gossip_menu` WHERE `entry`=7250;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7250, 8564, 0, 0);


