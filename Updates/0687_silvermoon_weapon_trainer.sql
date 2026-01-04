-- NPC 17005 Duelist Larenis <Weapon Master>
-- according to tbc ptr he doesnt have a 2nd gossip option and only shows
-- 'Show me what you know, Larenis.' for training weapons

-- Old Data:
-- INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES 
-- ('7337', '1', '0', 'What can other weapon masters teach?', '8812', '1', '1', '7336', '0', '0', '0', '0', NULL, '0', '0');

DELETE FROM gossip_menu_option WHERE menu_id = 7337 AND id = 1;
