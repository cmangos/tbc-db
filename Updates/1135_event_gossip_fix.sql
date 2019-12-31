-- these npcs don't have the gossip flag npcflag in either tbc-db or classic-db
-- keep them that way, and change their gossip menu options to reflect this
UPDATE `gossip_menu_option` SET `npc_option_npcflag`=0 WHERE `menu_id`=12861 AND `id`=1;
UPDATE `gossip_menu_option` SET `npc_option_npcflag`=0 WHERE `menu_id`=12862 AND `id`=1;
UPDATE `gossip_menu_option` SET `npc_option_npcflag`=0 WHERE `menu_id`=12864 AND `id`=1;
UPDATE `gossip_menu_option` SET `npc_option_npcflag`=0 WHERE `menu_id`=12866 AND `id`=1;
UPDATE `gossip_menu_option` SET `npc_option_npcflag`=0 WHERE `menu_id`=12870 AND `id`=1;
UPDATE `gossip_menu_option` SET `npc_option_npcflag`=0 WHERE `menu_id`=12871 AND `id`=1;


