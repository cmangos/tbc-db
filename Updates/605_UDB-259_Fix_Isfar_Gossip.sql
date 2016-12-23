-- UDB_259
-- Isfar
-- missing gossip added
UPDATE gossip_menu_option SET action_menu_id = 7875 WHERE menu_id = 7866 AND id = 2;
DELETE FROM gossip_menu WHERE entry = 7875; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7875, 9639, 0, 0);

