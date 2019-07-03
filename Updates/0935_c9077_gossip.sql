-- ID: 9077 - gossip menu
UPDATE `creature_template` SET `GossipMenuId` = 2884 WHERE `entry` = 9077;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6878 AND `textid` = 3560;
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 2884 AND 2889;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(2884, 3560),
(2885, 3561),
(2886, 3562),
(2887, 3563),
(2888, 3564),
(2889, 3565);
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 2884 AND 2889;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_script_id`, `condition_id`) VALUES
(2884, 0, 0, "What roles?", 1, 1, 2885, 0, 1587),
(2885, 0, 0, "Dreams?", 1, 1, 2886, 0, 0),
(2886, 0, 0, "I pray for such things.", 1, 1, 2887, 0, 0),
(2887, 0, 0, "I do not deserve such praise, Warlord Goretooth.", 1, 1, 2888, 0, 0),
(2888, 0, 0, "Sir! Until my body ceases to function!", 1, 1, 2889, 0, 0),
(2889, 0, 0, "Yes, sir. Thank you, sir!", 1, 1, -1, 2889, 0);
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2889;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2889, 0, 15, 16548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Cast Goretooth's Orders");
DELETE FROM `conditions` WHERE `condition_entry` IN (1584,1585,1586,1587);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(1584, 9, 4903, 0, 'Quest ID 4903 Taken'),
(1585, -3, 1584, 0, 'NOT (Quest ID 4903 Taken)'),
(1586, 16, 12563, 1, 'Player Has Less Than 1 of Item ID 12563 in Inventory'),
(1587, -1, 1585, 1586, '(NOT Quest ID 4903 Taken AND Player Has Less Than 1 of Item ID 12563 in Inventory)');


