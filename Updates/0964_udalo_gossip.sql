-- Instance Data Issue?

-- Add gossip for Spirit of Udalo 23410
UPDATE `creature_template` SET `GossipMenuId` = '8749', `NpcFlags` = `NpcFlags`|1 WHERE `entry` = 23410;

DELETE FROM `gossip_menu` WHERE `entry` = 8749;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8749, 11078, 0, 0),
(8749, 11077, 0, 1525);

DELETE FROM `npc_text` WHERE `ID` IN (11077,11078);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`) VALUES
(11078, 'Illidan''s lackeys still guard these halls, $N.  Once they are defeated, my powers will allow me to take you deeper inside the temple.', 1),
(11077, 'All of Illidan''s lieutenants have fallen, $N.  The way forward is open, if you''re ready.', 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 8749;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8749, 0, 0, 'I''m ready. Take me to the Chamber of Command.', 1, 1, -1, 0, 874901, 0, 0, NULL, 1525);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 874901;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('874901', '0', '15', '41570', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Spirit of Udalo - Cast Teleport to Council');

