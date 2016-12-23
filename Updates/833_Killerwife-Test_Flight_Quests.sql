-- ===================
-- Fixes by Killerwife
-- ===================
-- Test Flight quest fixes
-- http://www.wowhead.com/quest=10557/test-flight-the-zephyrium-capacitorium
-- http://www.wowhead.com/quest=10710/test-flight-the-singing-ridge
-- http://www.wowhead.com/quest=10711/test-flight-razaans-landing
-- http://www.wowhead.com/quest=10712/test-flight-ruuan-weald

UPDATE `creature` SET `position_x`=1924.331, `position_y`= 5575.728, `position_z`=274.300,modelid=0 WHERE  `guid`=74872; -- override position for now due to unknown clientside GO and creature collision problem
UPDATE creature_template SET GossipMenuId = 8303 WHERE entry = 21460;
UPDATE creature_template SET GossipMenuId = 8304 WHERE entry = 21461;
UPDATE creature_template SET InhabitType=5,MovementType=0 WHERE entry IN(21393,21394,21930,21935,21942,21944); -- make invisible trigger bunnies fly and not move

DELETE FROM creature WHERE id=21394;
INSERT INTO creature(guid,id,map,spawnMask,position_x,position_y,position_z,orientation,spawndist) VALUES(107787,21394,530,1,1920.129517,5581.898926,272.143,5.269419,0); -- insert missing bunny

DELETE FROM spell_script_target WHERE entry in(36795,36811,37913,37954,37970);
INSERT INTO spell_script_target VALUES(36795,1,21394,0);
INSERT INTO spell_script_target VALUES(36811,1,21413,0);
INSERT INTO spell_script_target VALUES(37913,1,21930,0);
INSERT INTO spell_script_target VALUES(37954,1,21942,0);
INSERT INTO spell_script_target VALUES(37970,1,21944,0);

DELETE FROM spell_target_position WHERE id=36801;
INSERT INTO spell_target_position VALUES(36801,530,1920.129517,5581.898926,270.426453,5.269419);
-- 270.426453
DELETE FROM conditions WHERE condition_entry BETWEEN 2000 AND 2020;
INSERT INTO conditions(condition_entry,type,value1) VALUES(2000,9,10557); -- conditions when on quests
INSERT INTO conditions(condition_entry,type,value1) VALUES(2001,9,10710);
INSERT INTO conditions(condition_entry,type,value1) VALUES(2002,9,10711);
INSERT INTO conditions(condition_entry,type,value1) VALUES(2003,9,10712);
INSERT INTO conditions(condition_entry,type,value1) VALUES(2004,8,10710); -- conditions when quests done
INSERT INTO conditions(condition_entry,type,value1) VALUES(2005,8,10711);
INSERT INTO conditions(condition_entry,type,value1) VALUES(2006,8,10712);
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2007, 24, 30540, 1); -- when player doesnt have item
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2008, 24, 30539, 1);
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2009, -1, 2007, 2008); -- when player doesnt have both items
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2010, -1, 2001, 2009);
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2011,2,30539,1); -- when player has item
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2012,11,37108,0); -- when player doesnt have aura
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2013, -1, 2000, 2012); -- when player doesnt have aura and is on quest
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2014, -1, 2001, 2012);
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2015, -1, 2002, 2012);
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2016, -1, 2003, 2012);
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2017, -1, 2004, 2012); -- when player doesnt have aura and has quest done
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2018, -1, 2005, 2012);
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2019, -1, 2006, 2012);
INSERT INTO conditions(condition_entry,type,value1,value2) VALUES(2020,1,37108,0); -- when player has aura

DELETE FROM dbscripts_on_gossip WHERE id IN(10557,1071001,1071002,10711,10712);
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- (10557,0,15,36806,0,0,0,8,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium - Cannon - Floating State'),
-- (1071002,1,15,36860,0,0,0,6,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium - Cannon - Charging Self'),
(10557,0,15,36801,0,0,0,6,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium- port player to platform'),
(10557,0,15,36785,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon charging(platform)'),
(10557,0,15,36795,0,21393,30,0,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon channel'),
(10557,3,15,36790,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon charging State 2'),
(10557,6,15,36792,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon charging State 3'),
(10557,9,15,36800,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Cannon charging State 4'),
(10557,12,15,37910,0,21930,200,8,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Soaring'),
(10557,12,14,36795,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon charging(platform)'),
(10557,12,14,36790,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon charging State 2'),
(10557,12,14,36792,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon charging State 3'),
(10557,12,14,36800,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon charging State 4'),
(10557,12,14,36795,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Zephyrium capacitorium - Remove Aura Cannon channel'),
(1071001,0,17,30540,1,0,0,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Add lost item'),
(1071002,0,15,36801,0,0,0,6,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - port player to platform'),
(1071002,0,15,36785,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon charging(platform)'),
(1071002,0,15,36795,0,21393,30,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon channel'),
(1071002,3,15,36790,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon charging State 2'),
(1071002,6,15,36792,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon charging State 3'),
(1071002,9,15,36800,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Cannon charging State 4'),
(1071002,12,15,37962,0,21942,200,8,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Soaring'),
(1071002,12,14,36795,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon charging(platform)'),
(1071002,12,14,36790,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon charging State 2'),
(1071002,12,14,36792,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon charging State 3'),
(1071002,12,14,36800,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon charging State 4'),
(1071002,12,14,36795,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: The Singing Ridge - Remove Aura Cannon channel'),
(10711,0,15,36801,0,0,0,6,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - port player to platform'),
(10711,0,15,36785,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Cannon charging(platform)'),
(10711,0,15,36795,0,21393,30,0,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Cannon channel'),
(10711,3,15,36790,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Cannon charging State 2'),
(10711,6,15,36792,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Cannon charging State 3'),
(10711,9,15,36800,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Cannon charging State 4'),
(10711,12,15,36812,0,21413,200,8,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Soaring'),
(10711,12,14,36795,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Remove Aura Cannon charging(platform)'),
(10711,12,14,36790,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Remove Aura Cannon charging State 2'),
(10711,12,14,36792,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Remove Aura Cannon charging State 3'),
(10711,12,14,36800,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Remove Aura Cannon charging State 4'),
(10711,12,14,36795,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Razaan''s Landing - Remove Aura Cannon channel'),
(10712,0,15,36801,0,0,0,6,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald- port player to platform'),
(10712,0,15,36785,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon charging(platform)'),
(10712,0,15,36795,0,21393,30,0,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon channel'),
(10712,3,15,36790,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon charging State 2'),
(10712,6,15,36792,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon charging State 3'),
(10712,9,15,36800,0,21394,30,0,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Cannon charging State 4'),
(10712,12,15,37968,0,21944,200,8,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Soaring'),
(10712,12,14,36795,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon charging(platform)'),
(10712,12,14,36790,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon charging State 2'),
(10712,12,14,36792,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon charging State 3'),
(10712,12,14,36800,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon charging State 4'),
(10712,12,14,36795,0,21394,30,4,0,0,0,0,0,0,0,0,'Test Flight: Ruuan Weald - Remove Aura Cannon channel');


DELETE FROM gossip_menu WHERE entry = 8303 AND text_id = 10359;
INSERT INTO gossip_menu (entry, text_id) VALUES (8303, 10359);
DELETE FROM gossip_menu WHERE entry = 8303 AND text_id = 10569;
INSERT INTO gossip_menu (entry, text_id, condition_id) VALUES (8303, 10569, 2000);
DELETE FROM gossip_menu_option WHERE menu_id = 8303 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id,action_script_id, condition_id) VALUES
(8303, 0, 0, 'I need another waiver!', 1, 1, -1,1071001, 2010);
-- 21641
DELETE FROM gossip_menu WHERE entry = 8304 AND text_id = 10360;
INSERT INTO gossip_menu (entry, text_id) VALUES (8304, 10360);
DELETE FROM gossip_menu WHERE entry = 8304 AND text_id = 10537; 
INSERT INTO gossip_menu (entry, text_id,condition_id) VALUES (8304, 10537,2020);
DELETE FROM gossip_menu_option WHERE menu_id  = 8304 AND id IN (0, 1, 2, 3, 4, 5);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id,action_script_id, condition_id) VALUES
(8304, 0, 0, 'I\'m ready for my test flight!', 1, 1, -1,10557, 2013),
(8304, 1, 0, 'Take me to Singing Ridge.', 1, 1, 8454,0, 2014),
(8304, 2, 0, 'Send me to Razaan\'s Landing!', 1, 1, -1,10711, 2015),
(8304, 3, 0, 'Take me to Ruuan Weald.', 1, 1, -1,10712, 2016),
(8304, 4, 0, 'I want to fly to an old location!', 1, 1, 8455,0, 2017);
DELETE FROM gossip_menu WHERE entry = 8454 AND text_id = 10561;
INSERT INTO gossip_menu (entry, text_id) VALUES (8454, 10561);
DELETE FROM gossip_menu_option WHERE menu_id = 8454 AND id = 0;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id,action_script_id,  condition_id) VALUES
(8454, 0, 0, 'I have the signed waiver!  Fire me into the Singing Ridge!', 1, 1, -1,1071002, 2011);
DELETE FROM gossip_menu WHERE entry = 8455 AND text_id = 10562;
INSERT INTO gossip_menu (entry, text_id) VALUES (8455, 10562);
DELETE FROM gossip_menu_option WHERE menu_id = 8455 AND id IN (0, 1, 2);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id,action_script_id,  condition_id) VALUES
(8455, 0, 0, 'Send me back to the Singing Ridge.', 1, 1, -1,1071002, 2017),
(8455, 1, 0, 'Send me back to the Razaan\'s Landing.', 1, 1, -1,10711, 2018),
(8455, 2, 0, 'Send me back to the Ruuan Weald.', 1, 1, -1,10712, 2019);

