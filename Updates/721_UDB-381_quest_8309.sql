-- q.8309 'Glyph Chasing'
-- You should be able to get the rubbing by clicking the crystal.

-- Create the gossip menus 
-- Object:180453 Hive'Regal Glyphed Crystal - Rubbing Item 20456 - Gossip Menu 6561
-- Object:180454 Hive'Ashi Glyphed Crystal - Rubbing Item 20455 -  Gossip Menu 6560
-- Object:180455 Hive'Zora Glyphed Crystal - Rubbing Item 20454 - Gossip Menu 6559
DELETE FROM gossip_menu WHERE entry IN (6559,6560,6561);
INSERT INTO gossip_menu (entry,text_id) VALUES
(6559,7770),
(6560,7770),
(6561,7770);

DELETE FROM gossip_menu_option WHERE menu_id IN (6559,6560,6561);
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(6559,0,0,'<Use the transcription device to gather a rubbing.>',1,1,0,0,6559,0,0,NULL,1056),
(6560,0,0,'<Use the transcription device to gather a rubbing.>',1,1,0,0,6560,0,0,NULL,1056),
(6561,0,0,'<Use the transcription device to gather a rubbing.>',1,1,0,0,6561,0,0,NULL,1056);

-- Make a new condition to check if player has the item before showing them the "Use the transcription device to gather a rubbing.
DELETE FROM conditions WHERE condition_entry = 1056; 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1056, 2, 20453, 1);

DELETE FROM dbscripts_on_gossip WHERE id IN (6561,6559,6560);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(6561,0,17,20456,1,0,0,0,0,0,0,0,0,0,0,0,''),
(6559,0,17,20454,1,0,0,0,0,0,0,0,0,0,0,0,''),
(6560,0,17,20455,1,0,0,0,0,0,0,0,0,0,0,0,'');


