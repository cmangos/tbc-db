-- Volcor

DELETE FROM gossip_menu WHERE entry=50002; -- remove old wrong entry

DELETE FROM conditions WHERE condition_entry=3692;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(3692, 8, 993, 0, '');

UPDATE creature_template SET GossipMenuId=1324 WHERE entry=3692;
DELETE FROM gossip_menu WHERE entry=1324;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES
(1324, 3213, 0),
(1324, 3214, 3692);


