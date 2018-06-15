DELETE FROM gossip_menu_option WHERE menu_id IN(7139);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('7139', '0', '0', 'What is this place?', '1', '1', '8167', '0', '0', '0', '0', NULL, '0'),
('7139', '1', '0', 'Where is Medivh?', '1', '1', '8168', '0', '0', '0', '0', NULL, '0'),
('7139', '2', '0', 'How do you navigate the tower?', '1', '1', '8169', '0', '0', '0', '0', NULL, '0'),
('7139', '3', '0', 'Teleport me to the Guardian''s Library.', '1', '1', '-1', '0', '713901', '0', '0', '', '1106');


