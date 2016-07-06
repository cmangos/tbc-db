-- Raene Wolfrunner - gossip
UPDATE creature_template SET GossipMenuId = 5502 WHERE entry = 3691;
DELETE FROM gossip_menu WHERE entry = 5502; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5502,6553,0,0),
(5502,6555,0,975);
DELETE FROM conditions WHERE condition_entry = 975;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(975,8,1029,0);










