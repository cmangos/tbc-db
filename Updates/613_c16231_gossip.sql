-- ----------------------------
-- Dame Auriferous (Entry: 16231)
UPDATE creature_template SET GossipMenuId=7163 WHERE entry=16231;

DELETE FROM `gossip_menu` WHERE `entry`=7163;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7163, 8433, 0, 0),
(7163, 8439, 0, 10014),
(7163, 8440, 0, 10015);

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10012 AND 10015;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10012, 9, 9160, 0), -- q.9160 taken
(10013, 8, 9160, 0), -- q.9160 rewarded
(10014, -2, 10012, 10013), -- q.9160 taken or rewarded
(10015, 8, 9169, 0); -- q.9169 rewarded

