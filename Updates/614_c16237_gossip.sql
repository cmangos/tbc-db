-- ----------------------------
-- Magister Sylastor (Entry: 16237)
UPDATE creature_template SET GossipMenuId=7169, NpcFlags=NpcFlags|1 WHERE entry=16237;

DELETE FROM `gossip_menu` WHERE `entry`=7169;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7169, 8441, 0, 0),
(7169, 8650, 0, 10016), -- q.9166 rewarded
(7169, 8442, 0, 10017); -- q.9169 rewarded

DELETE FROM `conditions` WHERE `condition_entry` IN(10016,10017);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10016, 8, 9166, 0), -- q.9166 rewarded
(10017, -1, 10016, 10015); -- q.9166 and q.9169 rewarded
