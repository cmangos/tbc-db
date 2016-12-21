-- ========================================================================
-- Fix Tailoring Specialization - Proper Gossip and Unlearning of Abilities - UDB Backport
-- ========================================================================

DELETE FROM conditions WHERE condition_entry IN (921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940);
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('921','29','197','1');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('922','17','26797','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('923','17','26798','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('924','17','26801','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('925','8','10832','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('926','8','10831','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('927','8','10833','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('928','7','197','350');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('929','15','60','1');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('930','-2','925','926');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('931','-2','927','930');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('932','-1','928','929');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('933','-1','931','932');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('934','-2','922','923');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('935','-2','924','934');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('936','-3','935','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('937','-1','933','936');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('938','-1','922','933');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('939','-1','923','933');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('940','-1','924','933');


DELETE FROM gossip_menu WHERE entry IN (8530,8531,8532);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8530','10669','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8530','10670','0','921');

insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8531','10671','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8531','10672','0','921');

insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8532','10673','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8532','10674','0','921');


DELETE FROM gossip_menu_option WHERE menu_id IN (8530,8531,8532);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8530','0','1','Show me what you have for sale.','3','128','0','0','0','0','0',NULL,'0');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8530','1','0','Please teach me how to become a Mooncloth Tailor.','1','1','-1','0','853001','0','0',NULL,'937');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8530','2','0','I wish to unlearn Mooncloth Tailoring.','1','1','-1','0','853002','0','1500000','Do you really want to unlearn your tailoring specialty and lose all associated recipes?','939');

insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8531','0','1','Show me what you have for sale.','3','128','0','0','0','0','0',NULL,'0');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8531','1','0','Please teach me how to become a Spellfire Tailor.','1','1','-1','0','853101','0','0',NULL,'937');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8531','2','0','I wish to unlearn Spellfire Tailoring.','1','1','-1','0','853102','0','1500000','Do you really want to unlearn your tailoring specialty and lose all associated recipes?','938');

insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8532','0','1','Show me what you have for sale.','3','128','0','0','0','0','0',NULL,'0');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8532','1','0','Please teach me how to become a Shadoweave Tailor.','1','1','-1','0','853201','0','0',NULL,'937');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8532','2','0','I wish to unlearn Shadoweave Tailoring.','1','1','-1','0','853202','0','1500000','Do you really want to unlearn your tailoring specialty and lose all associated recipes?','940');


DELETE FROM dbscripts_on_gossip WHERE id IN (853001,853002,853101,853102,853201,853202);
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('853101','0','15','26796','0','0','0','0','0','0','0','0','0','0','0','0','Cast Spellfire Tailoring');
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('853001','0','15','26799','0','0','0','0','0','0','0','0','0','0','0','0','Cast Mooncloth Tailoring');
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('853201','0','15','26800','0','0','0','0','0','0','0','0','0','0','0','0','Cast Shadoweave Tailoring');
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('853102','0','15','41299','0','0','0','0','0','0','0','0','0','0','0','0','Cast Unlearn Spellfire Tailoring');
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('853002','0','15','41558','0','0','0','0','0','0','0','0','0','0','0','0','Cast Unlearn Mooncloth Tailoring');
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('853202','0','15','41559','0','0','0','0','0','0','0','0','0','0','0','0','Cast Unlearn Shadoweave Tailoring');


