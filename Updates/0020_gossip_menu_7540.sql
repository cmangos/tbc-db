-- Remove Naturalist Bite Gossip Menu from Instance File, doesnt belong there
DELETE FROM gossip_menu WHERE entry IN(7540,7520); -- NPC has two entries, has to be handled by SD2
INSERT INTO gossip_menu VALUES
('7520', '9119', '0', '0'),
('7540', '9144', '0', '0');
DELETE FROM gossip_menu_option WHERE menu_id IN(7540,7520);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('7520', '0', '0', 'Alright, Bite, I\'ll let you out.', '1', '1', '0', '0', '7520', '0', '0', NULL, '0'),
('7540', '0', '0', 'Naturalist, please grant me your boon.', '1', '1', '-1', '0', '7540', '0', '0', NULL, '0');