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
(7499, 1, 0, 'We are ready to get you out of here, Thrall. Let\s go!', 14468, 100, 1, 0, 0, 0, 0);

UPDATE creature_template SET Detection = 20 WHERE entry = 17876;


-- 33937 Stun Phase 2 Units
DELETE FROM spell_script_target WHERE entry = 33937;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('33937', '5', '5600007');


-- Part 2 Gossip
-- ServerToClient: SMSG_GOSSIP_MESSAGE (0x650018) Length: 107 ConnIdx: 0 Time: 10/08/2026 16:54:27.895 Number: 44301
-- GossipGUID: Full: 0x2042444600117500001B38000047AD2F Creature/0 R4241/S6968 Map: 560 Entry: 17876 Low: 4697391
-- GossipID: 7830
-- (GossipOptions) Text: Taretha cannot see you, Thrall.
-- BroadcastTextID: 15910

-- ServerToClient: SMSG_GOSSIP_MESSAGE (0x650018) Length: 251 ConnIdx: 0 Time: 10/08/2026 16:54:28.953 Number: 44322
-- GossipGUID: Full: 0x2042444600117500001B38000047AD2F Creature/0 R4241/S6968 Map: 560 Entry: 17876 Low: 4697391
-- GossipID: 7829
-- (GossipOptions) Text: The situation is rather complicated, Thrall. It would be best for you to head into the mountains now, before more of Blackmoore's men show up. We'll make sure Taretha is safe.
-- BroadcastTextID: 15912

-- ServerToClient: SMSG_GOSSIP_MESSAGE (0x650018) Length: 88 ConnIdx: 0 Time: 10/08/2026 16:54:30.678 Number: 44359
-- GossipGUID: Full: 0x2042444600117500001B38000047AD2F Creature/0 R4241/S6968 Map: 560 Entry: 17876 Low: 4697391
-- GossipID: 7831
-- (GossipOptions) Text: Tarren Mill.
-- BroadcastTextID: 15914

DELETE FROM npc_text_broadcast_text WHERE Id IN (9578, 9579, 9580);
INSERT INTO npc_text_broadcast_text (`Id`, `Prob0`, `BroadcastTextId0`) VALUES 
(9578, 1, 15910), -- Thank you friends, I owe my freedom to you. Where is Taretha? I hoped to see her
(9579, 1, 15912), -- What do you mean by this? Is Taretha in danger?
(9580, 1, 15914); -- I will do no such thing. I simply cannot leave Taretha...
DELETE FROM npc_text WHERE ID IN (9578, 9579, 9580);

DELETE FROM gossip_menu WHERE entry IN (7829, 7830, 7831);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7829, 9579, 0, 0),
(7830, 9578, 0, 0),
(7831, 9580, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (7829, 7830, 7831);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `condition_id`) VALUES 
(7829, 1, 0, 'The situation is rather complicated, Thrall. It would be best for you to head into the mountains now, before more of Blackmoore\'s men show up. We\'ll make sure Taretha is safe..', 15913, 102, 1, 7831, 0, 0, 0),
(7830, 1, 0, 'Taretha cannot see you, Thrall.', 15911, 101, 1, 7829, 0, 0, 0),
(7831, 1, 0, 'Tarren Mill.', 15915, 103, 1, 0, 0, 0, 0);


-- ServerToClient: SMSG_GOSSIP_MESSAGE (0x650018) Length: 96 ConnIdx: 0 Time: 10/08/2026 16:56:53.298 Number: 48326
-- GossipID: 7840
-- (GossipOptions) Text: We're ready, Thrall.
-- BroadcastTextID: 15953

DELETE FROM npc_text_broadcast_text WHERE Id IN (9597);
INSERT INTO npc_text_broadcast_text (`Id`, `Prob0`, `BroadcastTextId0`) VALUES 
(9597, 1, 15953); -- Tarren Mill lies beyond these trees. The commotion at Durnholde should give us a little time to find Taretha before the entire countryside is flooded with human soldiers. Let's check the nearby barn, then head into town.

DELETE FROM gossip_menu WHERE entry IN (7840);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7840, 9597, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (7840);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `condition_id`) VALUES 
(7840, 1, 0, 'We\'re ready, Thrall.', 15956, 104, 1, 0, 0, 0, 0);

-- We cant handle multiple gossips via DB - use core instead
UPDATE creature_template SET GossipMenuId = 0 WHERE entry = 17876;


-- Equipment for respawn
DELETE FROM creature_equip_template WHERE entry = 17876;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`) VALUES ('17876', '14880', '1961');