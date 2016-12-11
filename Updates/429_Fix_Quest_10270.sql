-- ==========================================
-- Fix Quest 10270 "A Not-So-Modest Proposal" - GO Should Cast Spell To Summon NPC But GO Can Not Cast - Possible Bunny Used???
-- ==========================================
UPDATE creature_template SET MovementType=0 WHERE entry IN (20518);

-- Add Missing Teleporter Gossip Data - UDB Backport with Improvements
DELETE FROM gossip_menu WHERE entry IN (8062);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8062','9958','0','0');

DELETE FROM gossip_menu_option WHERE menu_id IN (8062);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8062','0','0','Attempt to contact Wind Trader Marid.','1','1','-1','0','8062','0','0','','593');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('8062','1','0','Attempt to contact Wind Trader Marid.','1','1','-1','0','8062','0','0','','596');

DELETE FROM `conditions` WHERE `condition_entry` IN (593,594,595,596);
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('593','9','10270','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('594','19','10271','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('595','8','10270','0');
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('596','-1','594','595');

DELETE FROM dbscripts_on_gossip WHERE id IN (8062);
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8062','0','10','20518','60000','0','0','0','0','0','0','0','4007.38','1517.12','-115.535','0.87','spawn Image of Wind Trader Marid');


-- Spell Below Should Be Used But GO Can Not Cast - Suspect Bunny Is Spawned To Cast Spell
-- http://www.wowhead.com/spell=34900/repair-teleport-pad (Summons NPC at Teleporter Pad)
DELETE FROM dbscripts_on_event WHERE id IN (12930);
insert into `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('12930','0','10','20518','300000','0','0','0','0','0','0','0','4007.111328','1517.134521','-115.535088','1.874133','Repair Teleport Pad - Spawn Image of Wind Trader Marid on Teleporter Pad');














