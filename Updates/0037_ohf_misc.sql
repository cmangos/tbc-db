-- -----------------
-- Old Hillsbrad Foothills - Misc changes
-- -----------------

-- Thrall Gossip
-- GossipGUID: Full: 0x203CCC460011750006FAE60000449AFE Creature/0 R3891/S457446 Map: 560 Entry: 17876 Low: 4496126
-- GossipID: 7499
-- (GossipOptions) GossipOptionID: 33364
-- (GossipOptions) Text: We are ready to get you out of here, Thrall. Lets go!
-- BroadcastTextID: 14467

DELETE FROM npc_text_broadcast_text WHERE Id IN (9568);
INSERT INTO npc_text_broadcast_text (`Id`, `Prob0`, `BroadcastTextId0`) VALUES 
(9568, 1, 14467); -- Who are you?  Just leave me be.
DELETE FROM npc_text WHERE ID IN (9568);

DELETE FROM gossip_menu WHERE entry IN (7499);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7499, 9568, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (7499);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `condition_id`) VALUES 
(7499, 1, 0, 'We are ready to get you out of here, Thrall. Let\s go!', 14468, 1, 1, 0, 0, 0, 0);

UPDATE creature_template SET GossipMenuId = 7499 WHERE entry = 17876;

DELETE FROM `conditions` WHERE `condition_entry` IN (7499);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(7499, 18, 17876, 0, 0, 0, 0, 'INSTANCE_CONDITION_ID_THRALL_STARTABLE');