-- Parshah
UPDATE creature_template SET GossipMenuId=8449 WHERE entry=22024;
DELETE FROM gossip_menu WHERE entry=8449;
INSERT INTO gossip_menu (entry, text_id) VALUES
(8449, 10556);


