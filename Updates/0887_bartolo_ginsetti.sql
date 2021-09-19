-- Bartolo Ginsetti
UPDATE creature_template SET UnitFlags=32768, NpcFlags=1, GossipMenuId=8114 WHERE Entry=20365;
DELETE FROM gossip_menu WHERE entry=8114;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8114, 10047, 0, 0);
DELETE FROM npc_text WHERE id=10047;
DELETE FROM npc_text_broadcast_text WHERE Id=10047;
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(10047, 1, 18136);


