-- Adele Fielder 1632
-- gossip corrected
UPDATE creature_template SET GossipMenuId = 4172 WHERE entry = 1632;
DELETE FROM `gossip_menu` WHERE `entry` IN (4172);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(4172, 5257, 0, 0);
DELETE FROM `gossip_menu_option` WHERE menu_id=4172;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(4172, 0, 3, 'Train me.', 3266, 5, 16, 0, 0, 0, 0, 0, '', 0, 0);

