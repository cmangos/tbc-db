UPDATE creature_template SET GossipMenuId=708 WHERE entry=4974; -- Aldwin Laughlin <Guild Master>
UPDATE creature_template SET GossipMenuId=10392 WHERE entry=5193; -- Rebecca Laughlin <Tabard Vendor>
DELETE FROM gossip_menu WHERE entry IN (708,10392);
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(708, 1260, 0),
(10392, 1259, 0);
DELETE FROM npc_text WHERE Id IN (1259,1260);
DELETE FROM npc_text_broadcast_text WHERE Id IN (1259,1260);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(1259, 1, 3412),
(1260, 1, 3414);


