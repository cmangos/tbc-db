-- Drull (entry: 2239)
-- Missing gossip, source classic-db
DELETE FROM `gossip_menu` WHERE `entry` IN(261,262);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(261, 760, 0, 0),
(262, 759, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=262;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(262, 0, 0, 'Where is the key to this lock?', 1, 1, 261, 0, 0, 0, 0, '', 0);

UPDATE creature_template SET GossipMenuId=262 WHERE entry=2239;

