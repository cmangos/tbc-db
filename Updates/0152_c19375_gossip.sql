-- Eli Thunderstrike
UPDATE creature_template SET GossipMenuId=7973 WHERE entry=19375;
DELETE FROM gossip_menu WHERE entry=7973;
INSERT INTO gossip_menu (entry, text_id) VALUES
(7973, 9805);


