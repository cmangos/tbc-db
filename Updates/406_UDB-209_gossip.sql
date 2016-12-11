-- Remy "Two Times"
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 5032 WHERE entry = 241;
DELETE FROM gossip_menu WHERE entry = 5032;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5032, 6157, 0, 0);
DELETE FROM npc_text WHERE ID = 6157;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(6157, 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 0, 1, 0, 0);


