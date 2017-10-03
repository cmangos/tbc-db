-- ----------------------------
-- Captain Helios (Entry: 16220)
UPDATE creature_template SET GossipMenuId=7160 WHERE entry=16220;

DELETE FROM `gossip_menu` WHERE `entry`=7160;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7160, 8429, 0, 0),
(7160, 50216, 0, 10030), -- q.9146 and q.9212 rewarded
(7160, 8495, 0, 10033), -- q.9215 or q.9214 taken
(7160, 8496, 0, 10036), -- q.9215 and q.9214 rewarded
(7160, 8493, 0, 10037); -- q.9146 and q.9212 and q.9215 and q.9214 rewarded

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10028 AND 10037;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10028, 8, 9146, 0), -- q.9146 rewarded
(10029, 8, 9212, 0), -- q.9212 rewarded
(10030, -1, 10028, 10029), -- q.9146 and q.9212 rewarded
(10031, 9, 9215, 0), -- q.9215 taken
(10032, 9, 9214, 0), -- q.9214 taken
(10033, -2, 10031, 10032), -- q.9215 or q.9214 taken
(10034, 8, 9215, 0), -- q.9215 rewarded
(10035, 8, 9214, 0), -- q.9214 rewarded
(10036, -1, 10034, 10035), -- q.9215 and q.9214 rewarded
(10037, -1, 10030, 10036); -- q.9146 and q.9212 and q.9215 and q.9214 rewarded

-- Missing text. Text ID unknown. Use a really high ID until we find the correct one.
DELETE FROM npc_text WHERE ID=50216;
INSERT INTO npc_text (ID, text0_0, prob0) VALUES
(50216, 'You\'re a one-$g man : woman; rescue machine. That\'s three of my Farstriders that you\'ve saved now!', 1);


