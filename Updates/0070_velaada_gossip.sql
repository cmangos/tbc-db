DELETE FROM npc_text WHERE ID IN(8959,8956);
DELETE FROM npc_text_broadcast_text WHERE ID IN(8959,8956);
INSERT INTO npc_text_broadcast_text(Id, Prob0, Prob1, Prob2, Prob3, Prob4, Prob5, Prob6, Prob7, BroadcastTextId0, BroadcastTextId1, BroadcastTextId2, BroadcastTextId3, BroadcastTextId4, BroadcastTextId5, BroadcastTextId6, BroadcastTextId7) VALUES
('8959', '1', '0', '0', '0', '0', '0', '0', '0', '14016', '0', '0', '0', '0', '0', '0', '0'),
('8956', '1', '0', '0', '0', '0', '0', '0', '0', '14013', '0', '0', '0', '0', '0', '0', '0');

DELETE FROM conditions WHERE condition_entry=9552;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
('9552', '9', '9552', '0', '0', '0', '0', 'Quest ID 9552 Taken');

DELETE FROM gossip_menu WHERE entry=7416;
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('7416', '8959', '0', '9552'),
('7416', '8956', '0', '0');

