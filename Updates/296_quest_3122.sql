-- q.3122 'Return to Witch Doctor Uzer'i'
DELETE FROM dbscripts_on_quest_end WHERE id = 3122;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3122,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(3122,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(3122,1,3,0,700,0,0,0,0,0,0,0,-4388.94,272.315,25.4158,2.42505,''),
(3122,4,0,0,0,0,0,0,2000000029,0,0,0,0,0,0,0,''),
(3122,5,1,4,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3122,8,3,0,700,0,0,0,0,0,0,0,-4391.75,274.682,25.6442,2.35436,''),
(3122,10,3,0,700,0,0,0,0,0,0,0,0,0,0,5.49281,''),
(3122,11,1,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3122,20,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(3122,21,3,0,700,0,0,0,0,0,0,0,-4375.68,269.717,25.4947,5.9719,''),
(3122,25,3,0,700,0,0,0,0,0,0,0,0,0,0,4.72984,''),
(3122,25,29,3,1,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(3122,26,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 3122 WHERE entry = 3122;
DELETE FROM db_script_string WHERE entry = 2000000029;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000029,'%s begins the ritual.',0,2,0,0,NULL);

-- Witch Doctor Uzer'i - gossip
DELETE FROM npc_gossip WHERE npc_guid = 51069;
UPDATE creature_template SET GossipMenuId = 1141 WHERE entry = 8115;
DELETE FROM gossip_menu WHERE entry IN (1141,50102);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1141, 1757, 0, 0),
(50102, 1924, 0, 0); -- TEMP entry (will be changed when correct one will be found)
DELETE FROM gossip_menu_option WHERE menu_id = 1141;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(1141, 0, 0, 'Tell me more about muisek.', 1, 1, 50102, 0, 0, 0, 0, '', 0);


