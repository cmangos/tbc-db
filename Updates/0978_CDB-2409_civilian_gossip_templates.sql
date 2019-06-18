-- Gossip Menus 12850- free for use


-- Alliance Dwarf Civilian Female template - Gossip Menu + Options 

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12850, 8251, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12850, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12850, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285001, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12850, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12850, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12850, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285001, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12850, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Dwarf Civilian Male template - Gossip Menu + Options 
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12851, 8251, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12851, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12851, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285101, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12851, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12851, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12851, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285101, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12851, 8291, 0, 1333); -- condition 524 in classic-db

-- Alliance Nightelf Civilian Female template - Gossip Menu + Options

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12852, 8255, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12852, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12852, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285201, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12852, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12852, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12852, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285201, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12852, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Nightelf Civilian Male template - Gossip Menu + Options (Vendor options will not show on non-vendor npcs)
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12853, 8255, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12853, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12853, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285301, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12853, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12853, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12853, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285301, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12853, 8291, 0, 1333); -- condition 524 in classic-db

-- Alliance Gnome Civilian Female template - Gossip Menu + Options 

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12854, 8254, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12854, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12854, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285401, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12854, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12854, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12854, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285401, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12854, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Gnome Civilian Male template - Gossip Menu + Options 
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12855, 8254, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12855, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12855, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285501, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12855, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12855, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12855, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285501, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12855, 8291, 0, 1333); -- condition 524 in classic-db

-- SW vendors have generic gossip for each quarter.  The entries below enhance these gossip menus to allow for love token interactions.
-- Alliance Human Civilian Female template - Gossip Menu + Options Mage Quarter

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (681, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(681, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 68101, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (681, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (681, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (681, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (68101, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (681, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Human Civilian Male template - Gossip Menu + Options  Mage Quarter
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (682, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(682, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 68201, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (682, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (682, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (682, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (68201, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (682, 8291, 0, 1333); -- condition 524 in classic-db

-- Colara Dean gossips

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (6981, 8245, 0, 1316); -- condition 507 in classic-db
-- Update token menu option
UPDATE gossip_menu_option SET action_script_id=698101, condition_id=1326 WHERE menu_id=6981 AND id=0; -- condition 517 in classic-db
-- Heartbroken gossip
UPDATE gossip_menu SET condition_id=1317 WHERE entry=6981 AND text_id=8282; -- condition 508 in classic-db
-- No Cologne gossip
UPDATE gossip_menu SET condition_id=1328 WHERE entry=6981 AND text_id=8285; -- condition 519 in classic-db
-- Already Adored Gossip
UPDATE gossip_menu SET condition_id=1327 WHERE entry=6981 AND text_id=8243; -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (698101, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (6981, 8291, 0, 1333); -- condition 524 in classic-db

-- Alliance Human Civilian Female template - Gossip Menu + Options Trade Quarter

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (685, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(685, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 68501, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (685, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (685, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (685, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (68501, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (685, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Human Civilian Male template - Gossip Menu + Options  Trade Quarter
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (686, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(686, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 68601, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (686, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (686, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (686, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (68601, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (686, 8291, 0, 1333); -- condition 524 in classic-db

-- Alliance Human Civilian Female template - Gossip Menu + Options Cathedral Square

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (691, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(691, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 69101, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (691, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (691, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (691, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (69101, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (691, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Human Civilian Male template - Gossip Menu + Options  Cathedral Square
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (692, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(692, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 69201, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (692, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (692, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (692, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (69201, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (692, 8291, 0, 1333); -- condition 524 in classic-db

-- Alliance Dwarf Civilian Female template - Gossip Menu + Options Dwarven District

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (693, 8251, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(693, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 69301, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (693, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (693, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (693, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (69301, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (693, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Dwarf Civilian Male template - Gossip Menu + Options  Dwarven District
-- Adding gossip_menu, gossip_menu_option and npc_text entries to support male template (it seems to be missing)
-- INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (694, 1244, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(694, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, '', 0);
DELETE FROM npc_text WHERE id=1244;
INSERT INTO npc_text VALUES (1244, 'Don\'t let the humans in the Bazaar fool ye $g lad : lass;, with the subway those gnomes built it\'s easier than ye might think to transport goods from Ironforge. If they try to tack on import fees just tell them yer gonna buy yer gear from me.', 'Don\'t let the humans in the Bazaar fool ye $g lad : lass;, with the subway those gnomes built it\'s easier than ye might think to transport goods from Ironforge. If they try to tack on import fees just tell them yer gonna buy yer gear from me.', 7, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (694, 8251, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(694, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 69401, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (694, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (694, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (694, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (69401, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (694, 8291, 0, 1333); -- condition 524 in classic-db

-- Alliance Gnome Civilian Female template - Gossip Menu + Options Dwarven District
-- Adding gossip_menu, gossip_menu_option and npc_text entries to support male template (it seems to be missing)
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (697, 1248, 0, 0);
-- INSERT INTO gossip_menu_option VALUES (697, 0, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, '', 0);
INSERT INTO npc_text VALUES (1248, 'If you insert tab A into slot B then of course it\'s going to go BOOM! Here, let me show you what I have and then you can ask Lilliam about how to put it together so it doesn\'t blow up.', 'If you insert tab A into slot B then of course it\'s going to go BOOM! Here, let me show you what I have and then you can ask Lilliam about how to put it together so it doesn\'t blow up.', 7, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (697, 8254, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(697, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 69701, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (697, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (697, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (697, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (69701, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (697, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Gnome Civilian Male template - Gossip Menu + Options  Dwarven District
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (698, 8254, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(698, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 69801, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (698, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (698, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (698, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (69801, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (698, 8291, 0, 1333); -- condition 524 in classic-db

-- Alliance Human Civilian Female template - Gossip Menu + Options Old Town

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (688, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(688, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 68801, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (688, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (688, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (688, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (68801, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (688, 8291, 0, 1333); -- condition 524 in classic-db
-- Alliance Human Civilian Male template - Gossip Menu + Options  Old Town
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(689, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (689, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(689, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 68901, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (689, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (689, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (689, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (68901, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (689, 8291, 0, 1333); -- condition 524 in classic-db

-- Tauren Civilian Female template - Gossip Menu + Options 

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12856, 8309, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12856, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12856, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285601, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12856, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12856, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12856, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285601, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12856, 8291, 0, 1333); -- condition 524 in classic-db
-- Tauren Civilian Male template - Gossip Menu + Options 
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12857, 8309, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12857, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12857, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285701, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12857, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12857, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12857, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285701, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12857, 8291, 0, 1333); -- condition 524 in classic-db


-- Forsaken Civilian Female template - Gossip Menu + Options

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12858, 8270, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12858, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12858, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285801, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12858, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12858, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12858, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285801, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12858, 8291, 0, 1333); -- condition 524 in classic-db
-- Forsaken Civilian Male template - Gossip Menu + Options 
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12859, 8270, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12859, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12859, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1285901, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12859, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12859, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12859, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1285901, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12859, 8291, 0, 1333); -- condition 524 in classic-db

-- Orc Civilian Female template - Gossip Menu + Options 

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12868, 8265, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12868, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12868, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1286801, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12868, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12868, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12868, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286801, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12868, 8291, 0, 1333); -- condition 524 in classic-db
-- Orc Civilian Male template - Gossip Menu + Options 
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12869, 8265, 0, 1316); -- condition 507 in classic-db
-- Adding vendor + token menu option (Vendor options will not show on non-vendor npcs)
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12869, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 474), -- condition 500 in classic-db
(12869, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1286901, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12869, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12869, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12869, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286901, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12869, 8291, 0, 1333); -- condition 524 in classic-db


-- Generic Alliance Human Civilian Male template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12863, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12863, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1286301, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12863, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12863, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12863, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286301, 0, 15, 27550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Alliance Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12863, 8291, 0, 1333); -- condition 524 in classic-db
-- Troll Civilian Female template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12872, 8310, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12872, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1287201, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12872, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12872, 8287, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12872, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1287201, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12872, 8291, 0, 1333); -- condition 524 in classic-db

-- Troll Civilian Male template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12873, 8310, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12873, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1287301, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12873, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12873, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12873, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1287301, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12873, 8291, 0, 1333); -- condition 524 in classic-db
-- Goblin Civilian Female template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12874, 8311, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12874, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1287401, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12874, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12874, 8287, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12874, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1287401, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12874, 8291, 0, 1333); -- condition 524 in classic-db

-- Goblin Civilian Male template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12875, 8311, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12875, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 0, 0, 0, 1287501, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12875, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12875, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12875, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27550) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1287501, 0, 15, 27549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Horde Civilian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12875, 8291, 0, 1333); -- condition 524 in classic-db


