-- Netherologist Coppernickels
UPDATE creature_template SET GossipMenuId=7991 WHERE entry=19569;
DELETE FROM gossip_menu WHERE entry=7991;
INSERT INTO gossip_menu (entry, text_id) VALUES
(7991, 9841);


