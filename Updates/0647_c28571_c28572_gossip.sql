UPDATE creature_template SET GossipMenuId=9719 WHERE Entry=28571;
UPDATE creature_template SET GossipMenuId=9718 WHERE Entry=28572;

DELETE FROM gossip_menu WHERE entry IN (9719,9718);
INSERT INTO gossip_menu (entry, text_id) VALUES
(9719, 13302),
(9718, 13301);

DELETE FROM npc_text WHERE id IN (13302,13301);
DELETE FROM npc_text_broadcast_text WHERE Id IN (13302,13301);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(13302, 0, 28566),
(13301, 0, 28565);


