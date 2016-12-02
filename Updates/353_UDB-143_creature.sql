-- Tannaria
UPDATE creature_template SET GossipMenuId = 6650 WHERE entry = 16279;
DELETE FROM gossip_menu WHERE entry = 6650; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6650, 9187, 0, 0);
 
-- Ponaris <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE entry = 16276;
DELETE FROM gossip_menu WHERE entry = 6649; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6649, 9186, 0, 0);

-- Garridel <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE entry = 16269;
DELETE FROM gossip_menu WHERE entry = 6648; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6648, 9191, 0, 0);

-- Celoenus <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 7566 WHERE entry = 16266;
DELETE FROM gossip_menu WHERE entry = 7566; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7566, 9185, 0, 0);

