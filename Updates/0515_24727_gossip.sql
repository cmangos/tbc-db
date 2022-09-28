-- Add missing gossip for Caylee Dak 24727 - Source wotlkmangos
-- https://tbc.wowhead.com/npc=24727/caylee-dak
UPDATE `creature_template` SET `GossipMenuId` = 9004 WHERE `entry` = 24727;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9003, 12163, 0, 0),
(9004, 12162, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(9004, 0, 0, 'Can you read me Alicia\'s poem again?', 0, 1, 1, 9003, 0, 0, 0, 0, NULL, 0, 19005);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(19005, 8, 11451, 0, 0, 0, 0, 'Quest ID 11451 Rewarded');

