-- Finkle Einhorn
UPDATE creature_template SET GossipMenuId = 2951, MovementType = 0 WHERE entry = 10776;
DELETE FROM gossip_menu WHERE entry BETWEEN 2945 AND 2951;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2945, 3665, 0, 0),
(2946, 3664, 0, 0),
(2947, 3663, 0, 0),
(2948, 3662, 0, 0),
(2949, 3661, 0, 0),
(2950, 3660, 0, 0),
(2951, 3659, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id BETWEEN 2945 AND 2951;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(2945, 0, 0, 'To Malyfous, I assume.', 1, 1, -1, 0, 0, 0, 0, NULL, 0),
(2946, 0, 0, 'I\'ll consider that the next time I run into one of these things.', 1, 1, 2945, 0, 0, 0, 0, NULL, 0),
(2947, 0, 0, 'Oh?', 1, 1, 2946, 0, 0, 0, 0, NULL, 0),
(2948, 0, 0, 'I must know something: How did you go to the bathroom with that thing on?', 1, 1, 2947, 0, 0, 0, 0, NULL, 0),
(2949, 0, 0, 'So let me get this straight. You were swimming, nay, doing backstrokes in molten lava with this... this lava suit of yours? Yes? And out of nowhere, this here beast swallowed you whole?', 1, 1, 2948, 0, 0, 0, 0, NULL, 0),
(2950, 0, 0, 'I\'m all ears.', 1, 1, 2949, 0, 0, 0, 0, NULL, 0),
(2951, 0, 0, 'How the hell did you get in there to begin with?', 1, 1, 2950, 0, 0, 0, 0, NULL, 0);

