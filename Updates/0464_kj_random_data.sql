-- gossip for kalec outro
UPDATE creature_template SET GossipMenuId=9419 WHERE entry IN(25319);
DELETE FROM gossip_menu WHERE entry IN(9419);
INSERT INTO gossip_menu(entry,text_id) VALUES
(9419, 12665);

-- anveena unitflags
UPDATE creature_template SET UnitFlags=33554432 WHERE entry IN(26046);

