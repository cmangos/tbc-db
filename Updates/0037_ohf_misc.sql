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
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES 
('33937', '5', '5600007'), -- Most EscortNPCs
('33937', '5', '5600012'), -- Horse Special StringID
('33937', '5', '5600013'); -- BarnGroup StringID

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
DELETE FROM npc_text WHERE ID IN (9597);

DELETE FROM gossip_menu WHERE entry IN (7840);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7840, 9597, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (7840);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `condition_id`) VALUES 
(7840, 1, 0, 'We\'re ready, Thrall.', 15956, 104, 1, 0, 0, 0, 0);


-- ServerToClient: SMSG_GOSSIP_MESSAGE (0x650018) Length: 38 ConnIdx: 0 Time: 10/01/2026 22:23:19.928 Number: 39222
-- GossipGUID: Full: 0x204230460011750000339F00003EBD48 Creature/0 R4236/S13215 Map: 560 Entry: 17876 Low: 4111688
-- GossipID: 7853
-- BroadcastTextID: 15995
DELETE FROM npc_text_broadcast_text WHERE Id IN (9614);
INSERT INTO npc_text_broadcast_text (`Id`, `Prob0`, `BroadcastTextId0`) VALUES 
(9614, 1, 15995); -- I'm glad Taretha is alive. We now must find a way to free her from her magical bindings.
DELETE FROM npc_text WHERE ID IN (9614);

DELETE FROM gossip_menu WHERE entry IN (7853);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7853, 9614, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (7853);

-- ServerToClient: SMSG_GOSSIP_MESSAGE (0x650018) Length: 92 ConnIdx: 0 Time: 10/08/2026 16:58:56.082 Number: 52972
-- GossipGUID: Full: 0x20424446001271C0001B38000047AF8A Creature/0 R4241/S6968 Map: 560 Entry: 18887 Low: 4697994
-- GossipID: 7849
-- (GossipOptions) Text: Strange wizard?
-- BroadcastTextID: 15987

-- ServerToClient: SMSG_GOSSIP_MESSAGE (0x650018) Length: 163 ConnIdx: 0 Time: 10/08/2026 16:58:56.929 Number: 52991
-- GossipGUID: Full: 0x20424446001271C0001B38000047AF8A Creature/0 R4241/S6968 Map: 560 Entry: 18887 Low: 4697994
-- GossipID: 7852
-- (GossipOptions) Text: We'll get you out, Taretha. Don't worry. I doubt the wizard would wander too far away.
-- BroadcastTextID: 15993


DELETE FROM npc_text_broadcast_text WHERE Id IN (9610, 9613);
INSERT INTO npc_text_broadcast_text (`Id`, `Prob0`, `BroadcastTextId0`) VALUES 
(9610, 1, 15987), -- Thank you for helping Thrall escape, friends. Now I only hope you can help me as well. I awoke this morning to find myself trapped in this magical prison. A strange wizard told me that I would have to stay here for a while.
(9613, 1, 15993); -- Yes, friends. This man was no wizard of Dalaran. His clothes looked quite foreign, and his accent was unfamiliar. All he could mumble about was time this, time that. You'll have to find that wizard and convince him to release me.
DELETE FROM npc_text WHERE ID IN (9610, 9613);

DELETE FROM gossip_menu WHERE entry IN (7849, 7852);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7849, 9610, 0, 0),
(7852, 9613, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id IN (7849, 7852);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `condition_id`) VALUES 
(7849, 1, 0, 'Strange wizard?', 15992, 100, 1, 7852, 0, 0, 0),
(7852, 1, 0, 'We\'ll get you out, Taretha. Don\'t worry. I doubt the wizard would wander too far away.', 15994, 101, 1, 0, 0, 0, 0);

UPDATE creature_template SET GossipMenuId = 7849 WHERE entry = 18887;

-- We cant handle multiple gossips via DB - use core instead
UPDATE creature_template SET GossipMenuId = 0 WHERE entry = 17876;


-- Equipment for respawn
DELETE FROM creature_equip_template WHERE entry = 17876;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`) VALUES ('17876', '14880', '1961');

-- Thrall should have ActiveState all the time
UPDATE creature_template SET ExtraFlags = 4096 WHERE entry = 17876;

UPDATE `broadcast_text` SET `EmoteID1`='0' WHERE (`Id`='16499');

-- Taretha doesnt have NpcFlags on spawn, she gets it during Thrall Escort
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 18887;


-- UnitFlags for Tarren Mill NPCs spawned during Escort
-- Tarren Mill Lookout 18094 - 20546 - spawned in INN
UPDATE creature_template SET UnitFlags = 32832 WHERE entry IN (18094, 20546);
-- Tarren Mill Lookout 23177 - 23183 - spawned at Barn
UPDATE creature_template SET UnitFlags = 33600 WHERE entry IN (23177, 23183);
-- Tarren Mill Lookout 23178 - 23184 - spawned in church
UPDATE creature_template SET UnitFlags = 32832 WHERE entry IN (23178, 23184);

-- Tarren Mill Protector 18093 - 20547 - spawned in church
UPDATE creature_template SET UnitFlags = 32832 WHERE entry IN (18093, 20547);
-- Tarren Mill Protector 23179 - 23185 - spawned at Barn
UPDATE creature_template SET UnitFlags = 33600 WHERE entry IN (23179, 23185);
-- Tarren Mill Protector 23180 - 23186 - spawned in church
UPDATE creature_template SET UnitFlags = 32832 WHERE entry IN (23180, 23186);

-- Tarren Mill Guardsman 18092 - 20545- spawned at inn
UPDATE creature_template SET UnitFlags = 32832 WHERE entry IN (18092, 20545);
-- Tarren Mill Guardsman 23175 - 23181 - spawned at Barn
UPDATE creature_template SET UnitFlags = 33600 WHERE entry IN (23175, 23181);
-- Tarren Mill Guardsman 23176 - 23182 - spawned in church
UPDATE creature_template SET UnitFlags = 32832 WHERE entry IN (23176, 23182);