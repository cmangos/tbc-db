-- Botanist Taerix
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1033 WHERE entry = 7304 AND text_id = 8666;
DELETE FROM conditions WHERE condition_entry = 1033;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1033, 8, 9294, 0);

