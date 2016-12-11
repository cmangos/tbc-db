-- Torwa Pathfinder
-- new gossip after q. 4289
-- additional menu should be available after q.4290
UPDATE gossip_menu SET condition_id = 1006 WHERE entry = 2188 AND text_id = 2821;
UPDATE gossip_menu_option SET condition_id = 1007 WHERE menu_id = 2188;
DELETE FROM conditions WHERE condition_entry IN (1006, 1007); 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1006, 8, 4289, 0),
(1007, 8, 4290, 0);


