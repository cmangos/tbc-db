DELETE FROM `npc_text` WHERE `ID`=3792;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`) VALUES
(3792, 'Ya mon. I be Gadrin\'s assistant. Dis here volunteer work be my way of getting through Witch Doctor School. Since you help him, I help ya for free. Watcha need fixin?', '', 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `condition_entry`=947;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(947, 8, 826, 0, 'Quest ID 826 Rewarded');

DELETE FROM `gossip_menu` WHERE `entry`=3062;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3062, 3792, 0, 947);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=3062;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(3062, 0, 0, 'Low spirits', 1, 1, -1, 0, 3062, 0, 0, '', 947),
(3062, 1, 0, 'Bad hang nail', 1, 1, -1, 0, 3062, 0, 0, '', 947),
(3062, 2, 0, 'Feeling underpowered', 1, 1, -1, 0, 3062, 0, 0, '', 947),
(3062, 3, 0, 'Jungle Fever', 1, 1, -1, 0, 3062, 0, 0, '', 947),
(3062, 4, 0, 'Uni-brow', 1, 1, -1, 0, 3062, 0, 0, '', 947),
(3062, 5, 0, 'Whiplash', 1, 1, -1, 0, 3062, 0, 0, '', 947),
(3062, 6, 0, 'I don\'t want to go back to work', 1, 1, -1, 0, 3062, 0, 0, '', 947);

DELETE FROM `dbscripts_on_gossip` WHERE `id`=3062;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(3062, 0, 15, 17009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bombay - Cast Voodoo on Gossip');


