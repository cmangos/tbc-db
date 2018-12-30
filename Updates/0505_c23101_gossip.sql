DELETE FROM gossip_menu WHERE entry=8639;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8639, 10837, 0, 0);

UPDATE creature_template SET GossipMenuId=8639 WHERE entry=23101;


