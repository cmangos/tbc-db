-- q.9991 'Survey the Land'
DELETE FROM dbscripts_on_quest_start WHERE id = 9991;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9991,2,30,532,0,0,0,0,0,0,0,0,0,0,0,0,'taxi patch');
UPDATE quest_template SET StartScript = 9991 WHERE entry = 9991;

-- Altruis the Sufferer
UPDATE gossip_menu_option SET action_script_id = 0 WHERE menu_id = 7715;
DELETE FROM gossip_menu_option WHERE menu_id = 7719 AND id = 2;           
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7719,2,0,'Ready to survey the land.',1,1,-1,0,7719,0,0,'',91);
-- DELETE FROM conditions WHERE condition_entry = 91;
-- INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- (91, 9, 9991, 0);
DELETE FROM dbscripts_on_gossip WHERE id IN (7715,7719); -- 7715 not needed anymore
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7719,1,7,9991,0,0,0,0,0,0,0,0,0,0,0,0,'quest 9991 credit');


