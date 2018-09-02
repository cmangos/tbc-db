-- Spirit of Olum
-- gossip moved from sd2 to DB
UPDATE `creature_template` SET `GossipMenuId` = '8750' WHERE `Entry` = 23411;

DELETE FROM `conditions` WHERE `condition_entry` in (1524,1525);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
('1524', '31', '602', '0', 'Dungeon Encounter ID 716 (Supremus) Completed'), -- Supremus
('1525', '31', '608', '0', 'Dungeon Encounter ID 658 (The Illidari Council) Completed'); -- The Illidari Council

DELETE FROM `gossip_menu` WHERE `entry`=8750;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8750, 11081, 0, 1524),
(8750, 11082, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8750;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8750, 0, 0, 'Take me to the other Deathsworn, Olum.', 1, 1, -1, 0, 875001, 0, 0, NULL, 1524),
(8750, 1, 0, 'I''m ready. Take me to the Chamber of Command.', 1, 1, -1, 0, 875002, 0, 0, NULL, 1525);

DELETE FROM `dbscripts_on_gossip` WHERE `id` in (875001,875002);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('875001', '0', '15', '41566', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Spirit of Olum - Cast Teleport to Ashtongue NPC''s'),
('875002', '0', '15', '41570', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Spirit of Olum - Cast Teleport to Council');

