-- classic-db data
DELETE FROM gossip_menu_option WHERE menu_id=347;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('347', '0', '0', 'Trick or Treat!', '1', '1', '-1', '0', '342', '0', '0', NULL, '164'),
('347', '1', '5', 'Make this inn your home.', '8', '65536', '0', '0', '0', '0', '0', NULL, '0'),
('347', '2', '0', 'Does that heart mean you\'re looking for love?', '1', '1', '7049', '0', '0', '0', '0', NULL, '474'),
('347', '3', '0', 'What can I do at an inn?', '1', '1', '1221', '0', '0', '0', '0', NULL, '0'),
('347', '4', '1', 'I want to browse your goods.', '3', '4', '0', '0', '0', '0', '0', '', '0');

