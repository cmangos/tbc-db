-- Sergeant Kan'ren - gossip 
DELETE FROM gossip_menu WHERE entry = 7323; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7323, 8698, 0, 0);
UPDATE creature_template SET GossipMenuId = 7323 WHERE Entry = 16924;


