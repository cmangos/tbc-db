-- Goblin Commoner
UPDATE creature_template SET ModelId1=22369, ModelId2=22368, GossipMenuId=8939 WHERE entry=20102;
DELETE FROM gossip_menu WHERE entry=8939;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8939, 11960, 0, 0);


