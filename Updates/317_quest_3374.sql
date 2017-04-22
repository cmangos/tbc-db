-- q.3374 'The Essence of Eranikus'
-- Itharius
UPDATE creature_template SET GossipMenuId = 1341 WHERE entry = 5353;
DELETE FROM gossip_menu WHERE entry in (1341, 1366, 1363, 1364, 1365);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1341, 1995, 0, 0),
(1363, 1996, 0, 0),
(1364, 1999, 0, 0),
(1365, 1998, 0, 0),
(1366, 1997, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id in (1341, 1366, 1364, 1365);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(1341, 0, 0, 'What\'s an elf like you doing inside a cave like this?', 1, 1, 1363, 0, 0, 0, 0, NULL, 0),
(1341, 1, 0, 'Do you know someone... or something, rather, by the name of Eranikus?', 1, 1, 1366, 0, 0, 0, 0, NULL, 1182),
(1364, 0, 0, 'I will consider what you have told me.', 1, 1, -1, 0, 136401, 0, 0, NULL, 0),
(1365, 0, 0, 'I possess part of Eranikus\' essence.  What do you want with it... or with me?', 1, 1, 1364, 0, 0, 0, 0, NULL, 0),
(1366, 0, 0, 'What happened to him in the first place?  When I... encountered him, he was rather malicious.', 1, 1, 1365, 0, 0, 0, 0, NULL, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 136401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(136401, 0, 15, 12578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Create Oathstone of Ysera\'s Dragonflight');
DELETE FROM conditions WHERE condition_entry BETWEEN 1175 AND 1182;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1175, 8, 3373, 0),
(1176, 24, 10589, 1),
(1177, 23, 10455, 1),
(1178, 8, 3374, 0),
(1179, -3, 1178, 0),
(1180, -1, 1175, 1179),
(1181, -1, 1177, 1176),
(1182, -1, 1180, 1181);

