DELETE FROM npc_text WHERE Id=10045;
DELETE FROM npc_text_broadcast_text WHERE Id=10045;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(10045, 1, 18120);
DELETE FROM npc_text WHERE Id=9922;
DELETE FROM npc_text_broadcast_text WHERE Id=9922;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(9922, 1, 17425);

-- B'naar Control Console 183770
DELETE FROM gossip_menu WHERE entry=8036;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8036, 9922, 0, 0),
(8036, 10045, 0, 0);
-- Coruu Control Console 183956
DELETE FROM gossip_menu WHERE entry=8113;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8113, 9922, 0, 0),
(8113, 10045, 0, 0);
-- Duro Control Console 184311
DELETE FROM gossip_menu WHERE entry=8115;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8115, 9922, 0, 0),
(8115, 10045, 0, 0);
-- Ara Control Console 184312
-- already had text 9922 in this gossip menu, we'll assume that's the text that shown when player is not on any relevant quest
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8116, 10045, 0, 0);


