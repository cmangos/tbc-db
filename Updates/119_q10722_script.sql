UPDATE creature_template SET GossipMenuId = 8436 WHERE entry = 22019;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=22019);

DELETE FROM conditions WHERE condition_entry=2021;
INSERT INTO conditions (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(2021, 9, 10722, 0);

DELETE FROM gossip_menu WHERE entry IN(8436,8435,8437,8438,8439,8440);
INSERT INTO gossip_menu (entry, text_id) VALUES
(8436, 10539),
(8435, 10541),
(8437, 10542),
(8438, 10543),
(8439, 10544),
(8440, 10545);

DELETE FROM gossip_menu_option WHERE menu_id IN(8436,8435,8437,8438,8439);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, condition_id, action_script_id) VALUES
(8436, 0, 0, "I'm fine, thank you. You asked for me?", 1, 1, 8435, 2021, 0),
(8435, 0, 0, "Oh, it's not my fault, I can assure you.", 1, 1, 8437, 0, 0),
(8437, 0, 0, "Um, no... no, I don't want that at all.", 1, 1, 8438, 0, 0),
(8438, 0, 0, "Impressive. When do we attack?", 1, 1, 8439, 0, 0),
(8439, 0, 0, "Absolutely!", 1, 1, 8440, 0, 843901);

DELETE FROM dbscripts_on_gossip WHERE id=843901;
INSERT INTO dbscripts_on_gossip (id, command, datalong, comments) VALUES
(843901, 7, 10722, "complete meeting at the black wing coven quest");


