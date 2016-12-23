-- Cowlen
-- gossip corrected
UPDATE creature_template SET GossipMenuId = 7403 WHERE entry = 17311;
DELETE FROM conditions WHERE condition_entry IN (1049,1050,1051,1052,1053,1054);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1049, 8, 9527, 0),
(1050, 8, 9528, 0),
(1051, -1, 1050, 1049),
(1052, 22, 9527, 0);

UPDATE gossip_menu SET condition_id = 1049 WHERE entry = 7403 AND text_id = 8869;
UPDATE gossip_menu SET condition_id = 1051 WHERE entry = 7403 AND text_id = 8880;
UPDATE gossip_menu_option SET action_menu_id = -1 WHERE menu_id = 7401;
UPDATE gossip_menu_option SET condition_id = 1052 WHERE menu_id = 7403;

-- addon corrected
DELETE FROM creature_addon WHERE guid = 84415;
DELETE FROM creature_template_addon WHERE entry = 17311;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(17311,0,1,1,16,0,0,NULL);


