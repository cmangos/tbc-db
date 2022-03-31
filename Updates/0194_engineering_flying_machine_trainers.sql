DELETE FROM `npc_trainer` WHERE `entry` IN (24868, 25099) AND `spell` NOT IN (44155, 44157);

UPDATE `trainer_greeting` SET `Text`='The flying machine is an amazing device!' WHERE `Entry` IN (24868, 25099);

UPDATE `creature_template` SET `NpcFlags`=81, `GossipMenuId`=9084 WHERE `Entry`=25099;
UPDATE `creature_template` SET `NpcFlags`=80 WHERE `Entry`=24868;

DELETE FROM `npc_text` WHERE `ID` IN (12282, 12283);
DELETE FROM `npc_text_broadcast_text` WHERE `Id` IN (12282, 12283);
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES
(12282, 1, 24137),
(12283, 1, 24140);

DELETE FROM `gossip_menu` WHERE `entry` IN (9084, 9085);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(9084, 12282),
(9085, 12283);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9084, 9085);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(9084, 0, 3, 'Flying machines?', 24138, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(9084, 1, 0, 'Do you often squeeze gnomes?', 24139, 1, 1, 9085, 0, 0, 0, 0, '', 0, 0),
(9085, 0, 3, 'That\'s... great.  What about these flying machines?', 24141, 5, 16, 0, 0, 0, 0, 0, '', 0, 0),
(9085, 1, 0, 'Thanks!  I\'ll try it right now.', 24142, 1, 1, -1, 0, 0, 0, 0, '', 0, 0);

