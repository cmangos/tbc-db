-- q.10273 'Troublesome Distractions'

-- Nether-Stalker 20101
UPDATE creature_template SET Faction = 16, MovementType = 0 WHERE Entry = 20101;

-- Wind Trader Marid 20071 
DELETE FROM npc_gossip WHERE npc_guid = 71519; -- 20071
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 20071; -- 90
UPDATE creature_template SET GossipMenuId = 8071 WHERE entry = 20071;
DELETE FROM `gossip_menu` WHERE `entry`= 8071;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8071, 9971, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 8071;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8071,0,0,'Wind Trader Marid, I\'ve returned with more information on the nether drakes. I\'m prepared to be your business partner, and for an extra sum, I\'ll take care of that troublesome elf and her human friend.',1,1,0,0,807101,0,0,NULL,514);
DELETE FROM dbscripts_on_gossip WHERE id = 807101;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(807101,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(807101,1,29,3,2,0,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(807101,1,0,0,0,0,0,0,0,2000005786,0,0,0,0,0,0,0,''),
(807101,2,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoints');
-- DELETE FROM conditions WHERE condition_entry = 20026; -- TBCDB has 514 (to much to move to get sync)
-- INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
-- (20026,9,10273,0);
-- DELETE FROM dbscript_string WHERE entry BETWEEN 2000005786 AND 2000005787;
-- INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
-- (2000005786,'Let us hold our discussion in a more... private place. Follow me, $n.',0,0,0,1,NULL), -- compatible to TBCDB
-- (2000005787,'You didn\'t really think I\'d do business with you again, did you? Sometimes, the best way to return to profitability is to know when to cut your losses.',0,0,0,1,NULL); -- compatible to TBCDB
-- waypoints
DELETE FROM creature_movement_template WHERE entry IN (20071);
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(20071,0,1,4295.121,2220.901,124.217,0,0,5.34668),
(20071,0,2,4305.531,2141.197,129.5266,120000,2007101,0.148921),
(20071,0,3,4305.531,2141.197,129.5266,1000,1,0.148921);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 2140905;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2007101;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2007101,1000,0,0,0,0,0,0,0,0,2000005787,0,0,0,0,0,0,0,''),
(2007101,3600,2,22,14,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,0,''), -- befor 3000
(2007101,3600,0,10,20101,60000,0,0,0,0,0,0,0,0,4322.216,2148.113,124.918,4.014257,'Summon Nether-stalker'), -- befor 6000 but he changes faction after 3.6secs after he says text
(2007101,3600,1,10,20101,60000,0,0,0,0,0,0,0,0,4327.583,2133.33,126.4966,3.508112,'Summon Nether-stalker'); -- befor 6000 and summons them at the same time and they aggro as soon as they spawn

