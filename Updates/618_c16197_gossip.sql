-- ----------------------------
-- Arcanist Vandril (Entry: 16197)
UPDATE creature_template SET GossipMenuId=7153 WHERE entry=16197;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16197);

DELETE FROM `gossip_menu` WHERE `entry`=7153;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7153, 8417, 0, 0),
(7153, 8425, 0, 10022), -- q.9138 or q.9139 or q.9140 taken
(7153, 8426, 0, 10023); -- q.9140 rewarded

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10018 AND 10021;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10018, 9, 9138, 0),
(10019, 9, 9139, 0),
(10020, 9, 9140, 0),
(10021, -2, 10018, 10019),
(10022, -2, 10020, 10021), -- q.9138 or q.9139 or q.9140 taken
(10023, 8, 9140, 0); -- q.9140 rewarded

DELETE FROM `gossip_menu_option` WHERE `menu_id`=7153;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(7153, 0, 0, 'Arcanist Vandril, what are the Forsaken doing here?', 1, 1, 7211, 0, 0, 0, 0, NULL, 0);

DELETE FROM `gossip_menu` WHERE `entry`=7211;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7211, 8501, 0, 0);

