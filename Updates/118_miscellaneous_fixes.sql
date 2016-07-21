DELETE FROM gossip_menu_option WHERE menu_id=8103 AND id IN(2,3);
INSERT INTO gossip_menu_option VALUES('8103', '2', '5', 'Make this inn your home.', '8', '65536', '0', '0', '0', '0', '0', '', '0', '0'),
('8103', '3', '0', 'What can I do at an inn?', '1', '1', '1221', '0', '0', '0', '0', '', '0', '0'); -- give innkeeper gossip options

UPDATE npc_text SET text1_1='I hope these Shattrath folks stop fighting soon.  They''re beginning to get on my nerves.$B$BHow can I help you?' WHERE id=10022; -- fix whitespace typo

UPDATE gameobject_loot_template SET ChanceOrQuestChance=100 WHERE entry=2117 AND item=4433; -- make quest giver item drop
-- thx to PetrHubacek for report


