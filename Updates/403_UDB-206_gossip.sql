-- Hothix
-- ids taken from trinity may not be right 
-- fixed one comming from cata (the same not changed texts) and whats most important here: they're comming from 100% source

-- Marshal Dughan - gossip corrected
DELETE FROM gossip_menu WHERE entry = 6159;
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 11611 WHERE Entry = 240;
DELETE FROM gossip_menu WHERE entry = 11611; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(11611, 16211, 0, 0);
-- missing text added
DELETE FROM npc_text WHERE ID IN (6157,16211);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(16211, 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 0, 1, 5, 5),
(6157, 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??', 0, 1, 0, 0);


