-- ----------------------------
-- Geranis Whitemorn (Entry: 16201)
UPDATE creature_template SET GossipMenuId=7206 WHERE entry=16201;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16201);

DELETE FROM `gossip_menu` WHERE `entry`=7206;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7206, 8488, 0, 0);

