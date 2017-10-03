-- ----------------------------
-- Advisor Valwyn (Entry: 16289)
UPDATE creature_template SET GossipMenuId=7188 WHERE entry=16289;

DELETE FROM `gossip_menu` WHERE `entry`=7188;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7188, 8466, 0, 0),
(7188, 8467, 0, 10007), -- q.9193 taken
(7188, 8468, 0, 10008); -- q.9193 rewarded

DELETE FROM `conditions` WHERE `condition_entry` IN(10007,10008);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10007, 9, 9193, 0),
(10008, 8, 9193, 0);

