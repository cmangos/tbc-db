-- Adding Love is in the Air Aura
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(24699, 0, 0, 0, 27654, 0, 8),
(24702, 0, 0, 0, 27654, 0, 8),
(24689, 0, 0, 0, 27654, 0, 8),
(24706, 0, 0, 0, 27654, 0, 8),
(24693, 0, 0, 0, 27654, 0, 8),
(24697, 0, 0, 0, 27654, 0, 8),
(24688, 0, 0, 0, 27654, 0, 8),
(24700, 0, 0, 0, 27654, 0, 8),
(24705, 0, 0, 0, 27654, 0, 8),
(24685, 0, 0, 0, 27654, 0, 8),
(24703, 0, 0, 0, 27654, 0, 8),
(24694, 0, 0, 0, 27654, 0, 8),
(24696, 0, 0, 0, 27654, 0, 8),
(24701, 0, 0, 0, 27654, 0, 8),
(24687, 0, 0, 0, 27654, 0, 8),
(24704, 0, 0, 0, 27654, 0, 8),
(24692, 0, 0, 0, 27654, 0, 8),
(24686, 0, 0, 0, 27654, 0, 8),
(24698, 0, 0, 0, 27654, 0, 8),
(24691, 0, 0, 0, 27654, 0, 8),
(24695, 0, 0, 0, 27654, 0, 8),
(24690, 0, 0, 0, 27654, 0, 8);

-- Adding Gossip Menu Text for Tauren default valentine gossip
INSERT INTO npc_text VALUES (8309, 'It seems like love is drifting on the wind. I hope that I won\'t be left out.', 'It seems like love is drifting on the wind. I hope that I won\'t be left out.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=950 WHERE entry=721 and text_id=1272; -- condition 501 in classic-db

-- Love Tokens (Normal Valentine Gossip)
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8309, 0, 1316); -- condition 507 in classic-db

-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(721, 11, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 72101, 0, 0, NULL, 1583), -- condition 538 in classic-db
(721, 12, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 72101, 0, 0, NULL, 1588); -- condition 539 in classic-db

-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8282, 0, 1317); -- condition 508 in classic-db

-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8287, 0, 1590); -- condition 541 in classic-db

-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8289, 0, 1591); -- condition 542 in classic-db

-- Cast Valentine(26923) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (72101, 0, 15, 26923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Bluffwatcher on player');

-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8296, 0, 1327); -- condition 518 in classic-db

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (721, 8291, 0, 1333); -- condition 524 in classic-db

-- Hunters
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(24782, 0, 0, 0, 27654, 0, 8), -- Sagewind
(24785, 0, 0, 0, 27654, 0, 8), -- Ragetotem
(24786, 0, 0, 0, 27654, 0, 8); -- Thunderhorn

-- TB Hunter template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8254, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12867, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286701, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(26923) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286701, 0, 15, 26923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Bluffwatcher on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12867, 8291, 0, 1333); -- condition 524 in classic-db
-- Adding Gossip options to turn on during event and off after
-- Hunter Sagewind
UPDATE creature_template SET GossipMenuId=12867 WHERE Entry=14440;
-- Hunter Ragetotem
UPDATE creature_template SET GossipMenuId=12867 WHERE Entry=14441;
-- Hunter Thunderhorn
UPDATE creature_template SET GossipMenuId=12867 WHERE Entry=14442;
/*
-- Honor Guard (not implemented)
INSERT INTO game_event_creature_data VALUES (24682, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24679, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24681, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24680, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24683, 0, 0, 0, 27654, 0, 8);
INSERT INTO game_event_creature_data VALUES (24684, 0, 0, 0, 27654, 0, 8); */


