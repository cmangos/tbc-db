-- Darnassus Sentinels gossip + Menu
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(46820, 0, 0, 0, 27654, 0, 8),
(46821, 0, 0, 0, 27654, 0, 8),
(46822, 0, 0, 0, 27654, 0, 8),
(46823, 0, 0, 0, 27654, 0, 8),
(46824, 0, 0, 0, 27654, 0, 8),
(46825, 0, 0, 0, 27654, 0, 8),
(46826, 0, 0, 0, 27654, 0, 8),
(46828, 0, 0, 0, 27654, 0, 8),
(46829, 0, 0, 0, 27654, 0, 8),
(46830, 0, 0, 0, 27654, 0, 8),
(46831, 0, 0, 0, 27654, 0, 8),
(46832, 0, 0, 0, 27654, 0, 8),
(46833, 0, 0, 0, 27654, 0, 8),
(46834, 0, 0, 0, 27654, 0, 8),
(46835, 0, 0, 0, 27654, 0, 8),
(46836, 0, 0, 0, 27654, 0, 8),
(46837, 0, 0, 0, 27654, 0, 8),
(46838, 0, 0, 0, 27654, 0, 8),
(46839, 0, 0, 0, 27654, 0, 8),
(46840, 0, 0, 0, 27654, 0, 8),
(46841, 0, 0, 0, 27654, 0, 8),
(46843, 0, 0, 0, 27654, 0, 8),
(46844, 0, 0, 0, 27654, 0, 8),
(46845, 0, 0, 0, 27654, 0, 8),
(46846, 0, 0, 0, 27654, 0, 8),
(46847, 0, 0, 0, 27654, 0, 8),
(46848, 0, 0, 0, 27654, 0, 8),
(46849, 0, 0, 0, 27654, 0, 8),
(46852, 0, 0, 0, 27654, 0, 8),
(46853, 0, 0, 0, 27654, 0, 8),
(46854, 0, 0, 0, 27654, 0, 8),
(46855, 0, 0, 0, 27654, 0, 8),
(46880, 0, 0, 0, 27654, 0, 8),
(46881, 0, 0, 0, 27654, 0, 8),
(46882, 0, 0, 0, 27654, 0, 8),
(46883, 0, 0, 0, 27654, 0, 8),
(46884, 0, 0, 0, 27654, 0, 8),
(49939, 0, 0, 0, 27654, 0, 8),
-- Huntresses
(46216, 0, 0, 0, 27654, 0, 8), -- Skymane
(46219, 0, 0, 0, 27654, 0, 8), -- Ravenoak
(46220, 0, 0, 0, 27654, 0, 8); -- Leafrunner

-- Adding gossip and conditions

-- Sentinels
-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=950 WHERE entry=10265 and text_id=3016; -- condition 501 in classic-db

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (10265, 8255, 0, 1316); -- condition 507 in classic-db

-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(10265, 11, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 0, 0, 0, NULL, 1326); -- condition 517 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (10265, 8283, 0, 1317); -- condition 508 in classic-db
-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (10265, 8287, 0, 1328); -- condition 519 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (10265, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27541) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1026501, 0, 15, 27541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Darn Sentinel on player');
UPDATE gossip_menu_option SET action_script_id=1026501 WHERE menu_id=10265 AND id=11;
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (10265, 8291, 0, 1333); -- condition 524 in classic-db
-- Huntresses
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12866, 8255, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12866, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286601, 0, 0, NULL, 1326); -- condition 517 in classic-db

-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12866, 8283, 0, 1317); -- condition 508 in classic-db

-- No Cologne gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12866, 8287, 0, 1328); -- condition 519 in classic-db

-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12866, 8296, 0, 1327); -- condition 518 in classic-db

-- Cast Valentine(27541) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286601, 0, 15, 27541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine Darn Sentinel on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12866, 8291, 0, 1333); -- condition 524 in classic-db

-- Huntress Skymane
UPDATE creature_template SET GossipMenuId=12866 WHERE Entry=14378;

-- Huntress Ravenoak
UPDATE creature_template SET GossipMenuId=12866 WHERE Entry=14379;

-- Huntress Leafrunner
UPDATE creature_template SET GossipMenuId=12866 WHERE Entry=14380;


