-- Proenitus
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1032 WHERE entry = 7305 AND text_id = 8669;
DELETE FROM conditions WHERE condition_entry IN (1030,1031,1032);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1030, 8, 9280, 0), -- Draenei-only version
(1031, 8, 9369, 0), -- others version
(1032, -2, 1031, 1030);


