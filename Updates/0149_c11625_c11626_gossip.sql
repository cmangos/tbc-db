-- Data from classic-db
-- ----------------------------
-- Cork Gizelton (Entry: 11625)
UPDATE creature_template SET GossipMenuId=3961 WHERE entry=11625;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=11625);

DELETE FROM `gossip_menu` WHERE `entry`=3961;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(3961, 4813, 0, 0);

-- ----------------------------
-- Rigger Gizelton (Entry: 11626)
UPDATE creature_template SET GossipMenuId=3963 WHERE entry=11626;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=11626);

DELETE FROM `gossip_menu` WHERE `entry`=3963;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(3963, 4815, 0, 0);

