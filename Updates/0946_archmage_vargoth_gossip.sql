UPDATE creature_template SET GossipMenuId=8024 WHERE Entry IN(19644);
REPLACE INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(8024, 9901, 0, 0);
REPLACE INTO npc_text_broadcast_text(Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
(9901,1,1,1,1,0,0,0,0,17288,17289,17290,17291,0,0,0,0);

