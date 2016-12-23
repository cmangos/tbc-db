-- Acteon
-- gossip corrected
-- gossip available for all not only hunters
UPDATE gossip_menu SET condition_id = 1035 WHERE entry = 7368 AND text_id = 8823;          
UPDATE gossip_menu SET condition_id = 0 WHERE entry = 7368 AND text_id = 8804;      
-- gossip options also req. update
UPDATE gossip_menu_option SET condition_id = 82 WHERE menu_id = 7368 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 1036 WHERE menu_id = 7368 AND id = 1;
UPDATE gossip_menu_option SET condition_id = 1036 WHERE menu_id = 7368 AND id = 2;
DELETE FROM conditions WHERE condition_entry = 1036;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1036, 9, 10324, 0); 

-- Exarch Menelaous
-- gossip corrected
UPDATE gossip_menu SET condition_id = 1037 WHERE entry = 7370 AND text_id = 9040;
DELETE FROM conditions WHERE condition_entry IN (1037,1038);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1037, 8, 9663, 0),
(1038, 9, 9456, 0);
-- gossip options also req. update
UPDATE gossip_menu_option SET condition_id = 1038 WHERE menu_id = 7370 AND id = 0;


