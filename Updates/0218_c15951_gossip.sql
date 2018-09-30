-- ----------------------------
-- Magister Duskwither (Entry: 15951)
UPDATE creature_template SET GossipMenuId=6942, NpcFlags=NpcFlags|1 WHERE entry=15951;

DELETE FROM `gossip_menu` WHERE `entry`=6942;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6942, 8232, 0, 0),
(6942, 8233, 0, 10090); -- q.8890 rewarded

DELETE FROM `conditions` WHERE `condition_entry`=10090;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10090, 8, 8890, 0); -- q.8890 rewarded
