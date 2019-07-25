DELETE FROM conditions WHERE condition_entry IN (1592, 1593, 1594);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(1592, 8, 808, 0, 'Quest ID 808 Rewarded'), -- Minshina's Skull
(1593, 8, 826, 0, 'Quest ID 826 Rewarded'), -- Zalazane
(1594, -1, 1593, 1592, '(Quest ID 808 Rewarded AND Quest ID 826 Rewarded)');

DELETE FROM gossip_menu WHERE entry=3062;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3062, 3794, 0, 0),
(3062, 3795, 0, 1594);

DELETE FROM gossip_menu_option WHERE menu_id=3062;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(3062, 0, 0, 'Low spirits', 1, 1, -1, 0, 306201, 0, 0, '', 1594),
(3062, 1, 0, 'Bad hang nail', 1, 1, -1, 0, 306201, 0, 0, '', 1594),
(3062, 2, 0, 'Feeling underpowered', 1, 1, -1, 0, 306201, 0, 0, '', 1594),
(3062, 3, 0, 'Jungle Fever', 1, 1, -1, 0, 306201, 0, 0, '', 1594),
(3062, 4, 0, 'Uni-brow', 1, 1, -1, 0, 306201, 0, 0, '', 1594),
(3062, 5, 0, 'Whiplash', 1, 1, -1, 0, 306201, 0, 0, '', 1594),
(3062, 6, 0, 'I don\'t want to go back to work', 1, 1, -1, 0, 306201, 0, 0, '', 1594);

DELETE FROM dbscripts_on_gossip WHERE id=306201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(306201, 0, 15, 17009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Bombay - Cast Voodoo on Gossip'),
(306201, 0, 45, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Bombay - Random say');

DELETE FROM dbscripts_on_relay WHERE id=2;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2, 0, 0, 0, 0, 0, 0, 0, 0, 2000001855, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Bombay - Random say');

DELETE FROM dbscript_random_templates WHERE id=9;
INSERT INTO dbscript_random_templates VALUES
(9, 1, 2, 30, 'Witch Doctor Bombay - Relay action'), -- Chance is guess work
(9, 1, 0, 70, 'Witch Doctor Bombay - No action');

DELETE FROM dbscript_string WHERE entry=2000001855;
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000001855, 'Eekum Bokum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);


