-- Allows NPC 15609 (Scout Landion) to display the gossip menu required for
-- quest completion
UPDATE `creature_template` SET GossipMenuId=6692 WHERE entry=15609;

-- Creates gossip menu required for quest completion
DELETE FROM gossip_menu WHERE entry=6692;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
 (6692, 8065, 0, 0);

-- Creates conditions associated to the quest
DELETE FROM conditions WHERE condition_entry BETWEEN 541 AND 543;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
 (541, 9, 8738, 0),		-- Has the quest
 (542, 24, 21160, 1),	-- Does not already have the report
 (543, -1, 541, 542); 	-- Both conditions above

-- Creates gossip menu option associated with above gossip menu and conditions
-- for quest completion
DELETE FROM gossip_menu_option WHERE menu_id=6692;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
 (6692, 0, 0, 'May I have your report?', 1, 1, -1, 0, 669201, 0, 0, NULL, 543);

-- Creates gossip script associated with above gossip menu to create required item
DELETE FROM dbscripts_on_gossip WHERE id=669201;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
 (669201, 0, 15, 25847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'Create Hive\'Regal Scout Report');

