-- Based on CDB 0233: https://github.com/cmangos/classic-db/commit/905126df13898a646bed77e613628bbbd353ad33
-- Added missing gossip menu option for Matrix Punchograph
DELETE FROM gossip_menu_option WHERE menu_id=1047 AND id=1;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(1047, 1, 0, 'Use engineering to access hidden shematics!', 1, 1, -1, 0, 104702, 0, 0, '', 652);
-- Added missing script for Matrix Punchograph
DELETE FROM dbscripts_on_gossip WHERE id=104702;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(104702, 0, 17, 14639, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hidden schematic');

-- Missing conditions in tbc-db
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 649 AND 652;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(649, 24, 14639, 1, NULL),
(650, 7, 202, 140, NULL),
(651, -1, 650, 35, NULL),
(652, -1, 649, 651, NULL);

