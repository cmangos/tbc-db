-- Garokk - gossip
UPDATE creature_template SET GossipMenuId=7872 WHERE entry=18439;
DELETE FROM gossip_menu WHERE entry=7872;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7872, 9637, 0, 0);
