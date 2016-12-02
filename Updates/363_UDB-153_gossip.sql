-- Tandrine - the guild master
UPDATE creature_template  SET  GossipMenuId = 7440 WHERE  Entry = 16568;
DELETE FROM gossip_menu WHERE entry = 7440; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7440, 9008, 0, 0);

