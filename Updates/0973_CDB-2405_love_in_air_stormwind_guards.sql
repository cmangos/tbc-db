-- Stormwind Guards and Gossip
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(189, 0, 0, 0, 27654, 0, 8),
(190, 0, 0, 0, 27654, 0, 8),
(2473, 0, 0, 0, 27654, 0, 8),
(19272, 0, 0, 0, 27654, 0, 8),
(19273, 0, 0, 0, 27654, 0, 8),
(26833, 0, 0, 0, 27654, 0, 8),
(79664, 0, 0, 0, 27654, 0, 8),
(79666, 0, 0, 0, 27654, 0, 8),
(79669, 0, 0, 0, 27654, 0, 8),
(79671, 0, 0, 0, 27654, 0, 8),
(79674, 0, 0, 0, 27654, 0, 8),
(79679, 0, 0, 0, 27654, 0, 8),
(79687, 0, 0, 0, 27654, 0, 8),
(79689, 0, 0, 0, 27654, 0, 8),
(79704, 0, 0, 0, 27654, 0, 8),
(79730, 0, 0, 0, 27654, 0, 8),
(79731, 0, 0, 0, 27654, 0, 8),
(79732, 0, 0, 0, 27654, 0, 8),
(79733, 0, 0, 0, 27654, 0, 8),
(79819, 0, 0, 0, 27654, 0, 8),
(79840, 0, 0, 0, 27654, 0, 8),
(79857, 0, 0, 0, 27654, 0, 8),
(79859, 0, 0, 0, 27654, 0, 8),
(79861, 0, 0, 0, 27654, 0, 8),
(79863, 0, 0, 0, 27654, 0, 8),
(79864, 0, 0, 0, 27654, 0, 8),
(79865, 0, 0, 0, 27654, 0, 8),
-- Stormwind City Patrollers
(12088, 0, 0, 0, 27654, 0, 8),
(12093, 0, 0, 0, 27654, 0, 8),
(79670, 0, 0, 0, 27654, 0, 8),
(79675, 0, 0, 0, 27654, 0, 8),
(79690, 0, 0, 0, 27654, 0, 8),
(79792, 0, 0, 0, 27654, 0, 8),
(79807, 0, 0, 0, 27654, 0, 8),
(79814, 0, 0, 0, 27654, 0, 8),
(90438, 0, 0, 0, 27654, 0, 8),
-- Officers
(79768, 0, 0, 0, 27654, 0, 8), -- Brady
(79818, 0, 0, 0, 27654, 0, 8), -- Jaxon
(90484, 0, 0, 0, 27654, 0, 8); -- Pomeroy

-- Adding Gossip options to turn on during event and off after

-- SW Officer template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12864, 8245, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12864, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286401, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12864, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12864, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12864, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27548) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286401, 0, 15, 27548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine SW Guard on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12864, 8291, 0, 1333); -- condition 524 in classic-db

-- Officer Brady
UPDATE creature_template SET GossipMenuId=12864 WHERE Entry=14439;
-- Officer Jaxon
UPDATE creature_template SET GossipMenuId=12864 WHERE Entry=14423;
-- Officer Pomeroy
UPDATE creature_template SET GossipMenuId=12864 WHERE Entry=14438;

-- Adding gossip and conditions

-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=950 WHERE entry=435 and text_id=933; -- condition 501 in classic-db

-- Love Tokens (Normal Valentine Gossip)
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (435, 8245, 0, 1316); -- condition 507 in classic-db

-- Adding token menu options
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(435, 16, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 43501, 0, 0, NULL, 1583), -- Female Guard -- condition 538 in classic-db
(435, 17, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 43501, 0, 0, NULL, 1588); -- Male Guard -- condition 539 in classic-db

-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (435, 8282, 0, 1317); -- condition 508 in classic-db

-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (435, 8287, 0, 1590); -- condition 541 in classic-db

-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (435, 8289, 0, 1591); -- condition 542 in classic-db

-- Cast Valentine(27548) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (43501, 0, 15, 27548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Stormwind Guard on player');

-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (435, 8296, 0, 1327); -- condition 518 in classic-db

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (435, 8291, 0, 1333); -- condition 524 in classic-db


