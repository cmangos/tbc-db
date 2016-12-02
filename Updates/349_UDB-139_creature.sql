-- Elisara Sunstriker - gossip
UPDATE creature_template SET GossipMenuId = 7117 WHERE entry = 16147;
DELETE FROM gossip_menu WHERE entry = 7117; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7117, 8378, 0, 0);

-- Larianna Riverwind - gossip
UPDATE creature_template SET GossipMenuId = 7255 WHERE entry = 15398;
DELETE FROM gossip_menu WHERE entry = 7255; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7255, 8575, 0, 0);

-- Sangrias Stillblade
UPDATE creature_template SET EquipmentTemplateId = 109 WHERE Entry = 17716;



