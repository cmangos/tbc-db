-- Aeun
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1034 WHERE entry = 7303 AND text_id = 8663;
DELETE FROM conditions WHERE condition_entry = 1034;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1034, 8, 9314, 0);

-- Diktynna
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1035 WHERE entry = 7361 AND text_id = 8822;
DELETE FROM conditions WHERE condition_entry = 1035;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1035, 8, 9452, 0);


