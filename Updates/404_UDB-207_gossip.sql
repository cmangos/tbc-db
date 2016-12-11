-- Mountaineer Stormpike
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 694 WHERE entry = 1343;
DELETE FROM gossip_menu WHERE entry = 694;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(694, 1244, 0, 0);
DELETE FROM npc_text WHERE ID = 1244;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(1244, 'Well, if it isn\'t a young, bristling $c, no doubt drawn here by talk of my exploits in fields of battle!$B$BNo time for stories now, for there are great, important deeds that need doing!  So if you\'re looking for glory, then luck shines on you today...', 'Well, if it isn\'t a young, bristling $c, no doubt drawn here by talk of my exploits in fields of battle!$B$BNo time for stories now, for there are great, important deeds that need doing!  So if you\'re looking for glory, then luck shines on you today...', 0, 1, 0, 0);


