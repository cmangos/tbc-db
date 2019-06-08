-- Adding Love is in the Air Aura
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(17669, 0, 0, 0, 27654, 0, 8),
(28481, 0, 0, 0, 27654, 0, 8),
(28485, 0, 0, 0, 27654, 0, 8),
(28486, 0, 0, 0, 27654, 0, 8),
(28487, 0, 0, 0, 27654, 0, 8),
(28488, 0, 0, 0, 27654, 0, 8),
(28489, 0, 0, 0, 27654, 0, 8),
(28490, 0, 0, 0, 27654, 0, 8),
(33823, 0, 0, 0, 27654, 0, 8),
(33831, 0, 0, 0, 27654, 0, 8),
(34102, 0, 0, 0, 27654, 0, 8),
(34103, 0, 0, 0, 27654, 0, 8),
(34104, 0, 0, 0, 27654, 0, 8),
(34105, 0, 0, 0, 27654, 0, 8),
(34106, 0, 0, 0, 27654, 0, 8),
(38296, 0, 0, 0, 27654, 0, 8),
(38297, 0, 0, 0, 27654, 0, 8),
(38298, 0, 0, 0, 27654, 0, 8),
(38299, 0, 0, 0, 27654, 0, 8),
(38301, 0, 0, 0, 27654, 0, 8),
(38302, 0, 0, 0, 27654, 0, 8),
(38305, 0, 0, 0, 27654, 0, 8),
(39019, 0, 0, 0, 27654, 0, 8),
(39020, 0, 0, 0, 27654, 0, 8),
(39022, 0, 0, 0, 27654, 0, 8),
(39023, 0, 0, 0, 27654, 0, 8),
(39024, 0, 0, 0, 27654, 0, 8),
(39025, 0, 0, 0, 27654, 0, 8),
(39026, 0, 0, 0, 27654, 0, 8),
(41884, 0, 0, 0, 27654, 0, 8),
(41887, 0, 0, 0, 27654, 0, 8),
(41888, 0, 0, 0, 27654, 0, 8),
(41889, 0, 0, 0, 27654, 0, 8),
(41890, 0, 0, 0, 27654, 0, 8),
(41891, 0, 0, 0, 27654, 0, 8),
(41892, 0, 0, 0, 27654, 0, 8),
(41956, 0, 0, 0, 27654, 0, 8),
(41960, 0, 0, 0, 27654, 0, 8),
(41961, 0, 0, 0, 27654, 0, 8),
(41964, 0, 0, 0, 27654, 0, 8);

-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=950 WHERE entry=2849 and text_id=3543; -- condition 501 in classic-db

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2849, 8270, 0, 1316); -- condition 507 in classic-db

-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(2849, 15, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 0, 0, 0, NULL, 1573); -- condition 528 in classic-db (also used id 14 here instead of 15)
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2849, 8282, 0, 1317); -- condition 508 in classic-db
-- No Perfume or Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2849, 8303, 0, 1575); -- condition 530 in classic-db
-- Cast Valentine(26924) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (284901, 0, 15, 26924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Undercity Guardian on player');
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2849, 8296, 0, 1327); -- condition 518 in classic-db
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2849, 8291, 0, 1333); -- condition 524 in classic-db
UPDATE gossip_menu_option SET action_script_id=284901 WHERE menu_id=2849 AND id=14;
-- Seekers
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(32073, 0, 0, 0, 27654, 0, 8), -- Cromwell
(32074, 0, 0, 0, 27654, 0, 8), -- Nahr
(32072, 0, 0, 0, 27654, 0, 8); -- Thompson
-- UC Seeker Thompson template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12861, 8270, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12861, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286101, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12861, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12861, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12861, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(26924) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286101, 0, 15, 26924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Undercity Guardian on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12861, 8291, 0, 1333); -- condition 524 in classic-db

-- UC Seeker Cromwell + Nahr template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12862, 8270, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12862, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286201, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12862, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12862, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12862, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(26924) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286201, 0, 15, 26924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Undercity Guardian on player');
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12862, 8291, 0, 1333); -- condition 524 in classic-db
-- Adding Gossip options to turn on during event and off after
-- Seeker Cromwell
UPDATE creature_template SET GossipMenuId=12862 WHERE Entry=14402;
-- Seeker Nahr
UPDATE creature_template SET GossipMenuId=12862 WHERE Entry=14403;
-- Seeker Thompson
UPDATE creature_template SET GossipMenuId=12861 WHERE Entry=14404;


