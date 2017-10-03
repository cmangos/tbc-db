-- ----------------------------
-- Farstrider Solanna (Entry: 16463)
UPDATE creature_template SET GossipMenuId=7253 WHERE entry=16463;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16463);

DELETE FROM `gossip_menu` WHERE `entry`=7253;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7253, 8569, 0, 0),
(7253, 8570, 0, 10025), -- q.9276 taken
(7253, 8571, 0, 10026), -- q.9276 rewarded
(7253, 8572, 0, 10027); -- q.9277 rewarded


DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10025 AND 10027;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10025, 9, 9276, 0), -- q.9276 taken
(10026, 8, 9276, 0), -- q.9276 rewarded
(10027, 8, 9277, 0); -- q.9277 rewarded

