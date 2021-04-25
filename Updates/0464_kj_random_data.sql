-- gossip for kalec outro
UPDATE creature_template SET GossipMenuId=9419 WHERE entry IN(25319);
DELETE FROM gossip_menu WHERE entry IN(9419);
INSERT INTO gossip_menu(entry,text_id) VALUES
(9419, 12665);

DELETE FROM npc_text_broadcast_text WHERE id IN(12665);
INSERT INTO npc_text_broadcast_text(Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
('12665', '1', '0', '0', '0', '0', '0', '0', '0', '25862', '0', '0', '0', '0', '0', '0', '0');

-- anveena unitflags
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(26046);

