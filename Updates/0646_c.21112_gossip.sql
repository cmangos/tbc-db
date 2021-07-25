-- Add gossip_menu_option for Bossi Pentapiston <Engineering Supplies> 21112
-- Source: TrinityCore, thx @ Tonymomo
DELETE FROM `gossip_menu_option` WHERE (menu_id=8661 AND id=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(8661, 0, 1, 'Show me your assortment of, err... things.', 21285, 3, 128, 0, 0, 0, 0, 0, '', 0, 0);

