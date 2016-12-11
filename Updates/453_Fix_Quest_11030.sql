-- ==============================================================================
-- Fix Ogri'la Daily Starting Quest 11030 "Our Boy Wants To Be A Skyguard Ranger" - UDB Backport
-- ==============================================================================
DELETE FROM gossip_menu WHERE entry IN (8672);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8672','10910','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8672','10922','0','502');

DELETE FROM gossip_menu_option WHERE menu_id IN (8672);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8672','0','0','Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards','1','1','8673','0','8672','0','0','','503');

DELETE FROM `conditions` WHERE `condition_entry` IN (502,503);
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('502','16','32569','10');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('503','2','32569','10');

DELETE FROM dbscripts_on_gossip WHERE id IN (8672);
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8672','0','15','40964','0','0','0','4','0','0','0','0','0','0','0','0','Fel Crystalforge: Create 1 Flask');

UPDATE quest_template SET RewRepFaction1=1038, RewRepValue1=250 WHERE entry IN (11030);




