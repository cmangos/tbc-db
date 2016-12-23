-- Technician Zhanaa
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1029 WHERE entry = 7353 AND text_id = 8776;
UPDATE gossip_menu SET condition_id = 1027 WHERE entry = 7353 AND text_id = 8777;
DELETE FROM conditions WHERE condition_entry IN (1027,1028,1029);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1027, 8, 9305, 0),
(1028, 8, 9312, 0),
(1029, -1, 1027, 1028);


