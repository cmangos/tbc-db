-- ----------------------------
-- Magister Quallestis (Entry: 16291)
UPDATE creature_template SET GossipMenuId=7194, NpcFlags=NpcFlags|1 WHERE entry=16291;

DELETE FROM `gossip_menu` WHERE `entry`=7194;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7194, 8474, 0, 0),
(7194, 8475, 0, 10024); -- q.9207 rewarded

DELETE FROM `conditions` WHERE `condition_entry`=10024;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10024, 8, 9207, 0); -- q.9207 rewarded

