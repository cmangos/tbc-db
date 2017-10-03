-- ----------------------------
-- Ranger Valanna (Entry: 16219)
UPDATE creature_template SET GossipMenuId=7159 WHERE entry=16219;

DELETE FROM `gossip_menu` WHERE `entry`=7159;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7159, 8424, 0, 0),
(7159, 8505, 0, 10010), -- q.9145 rewarded
(7159, 8427, 0, 10011); -- q.9143 rewarded

DELETE FROM `conditions` WHERE `condition_entry` IN(10010,10011);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10010, 8, 9145, 0), -- q.9145 rewarded
(10011, 8, 9143, 0); -- q.9143 rewarded

-- Missing text.
DELETE FROM npc_text WHERE ID=8427;
INSERT INTO npc_text (ID, text0_1, prob0) VALUES
(8427, 'I\'m sure that help from Farstrider Enclave will be here soon to help me and this useless lieutenant get to safety. You might not want to stick around; I\'ve heard all sorts of strange sounds coming from the lake and that village over yonder.', 1);

