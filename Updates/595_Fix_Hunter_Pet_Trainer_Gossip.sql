-- =====================================================================================================================================
-- Fix Hunter Pet Trainer Gossip - NEED TO IMPLEMENT CONDITION TO ONLY ALLOW TRAINING GOSSIP OPTION IF HUNTER PET IS ACTIVE AND SUMMONED
-- =====================================================================================================================================
DELETE FROM gossip_menu_option WHERE menu_id IN (4783);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('4783','0','0','How do I train my pet?','1','1','20012','0','0','0','0',NULL,'135');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('4783','1','0','I wish to untrain my pet.','1','1','20013','0','0','0','0',NULL,'135');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('4783','2','3','I wish to train my pet.','5','16','0','0','0','0','0',NULL,'135');





