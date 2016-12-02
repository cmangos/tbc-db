-- q.9437 'Twilight of the Dawn Runner'

-- Ithania
UPDATE creature_template SET GossipMenuId = 7371, UnitFlags = 514, NpcFlags = 1 WHERE Entry = 17119;
UPDATE creature SET spawntimesecs = 60 WHERE id = 17119; -- quest req.
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 7371; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7371, 8808, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 7371;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7371,0,0,'Balandar sent me to get you out of here and pick up his cargo. He is waiting for you in the Brackenwall.',1,1,-1,0,7371,0,0,NULL,1005);
DELETE FROM conditions WHERE condition_entry = 1005;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1005, 9, 9437, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 7371; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7371,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(7371,5,8,17119,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM creature_movement_template WHERE entry = 17119;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17119,1,-2889.8,-3423.24,39.4438,4000,1711901,5.63741,0,0),
(17119,2,-2889.8,-3423.24,39.4438,1000,1711902,5.63741,0,0),
(17119,3,-2863.14,-3422.18,39.3522,0,0,0.267206,0,0),
(17119,4,-2849.6,-3418.58,34.1865,0,0,0.251498,0,0),
(17119,5,-2825.92,-3407.7,33.0412,0,0,0.905735,0,0),
(17119,6,-2825.92,-3407.7,33.0412,5000,1711903,0.905735,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1711901 AND 1711903; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1711901,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Ithania active'),
(1711901,2,0,0,0,0,0,0,2000000486,0,0,0,0,0,0,0,''),
(1711901,3,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1711901,4,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1711902,1,31,5184,30,0,0,0,0,0,0,0,0,0,0,0,'search for 5184'),
(1711902,2,0,0,0,5184,35,7,2000000487,0,0,0,0,0,0,0,''),
(1711903,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1711903,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ithania unactive'),
(1711903,2,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000000486,2000000487);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000486,'I think, I\'ll be able to get to Brackenwall. The cargo they carried to the top of the towers. Be careful!',0,0,0,0,''),
(2000000487,'To arms! the prisoner is escaping!',0,1,0,0,'');
-- she must back to idle after killed also.
DELETE FROM dbscripts_on_creature_death WHERE id = 17119; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17119,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

