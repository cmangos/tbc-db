DELETE FROM gossip_menu WHERE entry IN(9111);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('9111', '12319', '0', '10306'),
('9111', '12320', '0', '0');
UPDATE creature_template SET GossipMenuId=9111 WHERE entry IN(25108);

