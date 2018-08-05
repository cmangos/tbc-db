-- q.1886, c.6497
-- Add missing menu 125. Use classic-db data
DELETE FROM gossip_menu_option WHERE menu_id IN(125,126);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(125, 0, 0, 'You\'ve got something I need, Astor. And I\'ll be taking it now.', 1, 1, -1, 0, 12501, 0, 0, '', 0),
(126, 0, 0, 'You\'re Astor Hadren, right?', 1, 1, 125, 0, 0, 0, 0, '', 3170);

-- Redo gossip script with proper ID standards, credit goes to cala (https://github.com/cmangos/classic-db/commit/c3e3becafb3dda410131810c42c76cf0d9673348)
DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (125, 12501);
INSERT INTO `dbscripts_on_gossip` (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12501, 1, 22, 168, 0x01+0x04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astor change faction'),
(12501, 2, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Astor attack start');

