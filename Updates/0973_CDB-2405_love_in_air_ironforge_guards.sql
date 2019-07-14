-- Ironforge Guards gossip + Menu
INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(44, 0, 0, 0, 27654, 0, 8),
(45, 0, 0, 0, 27654, 0, 8),
(46, 0, 0, 0, 27654, 0, 8),
(47, 0, 0, 0, 27654, 0, 8),
(57, 0, 0, 0, 27654, 0, 8),
(58, 0, 0, 0, 27654, 0, 8),
(88, 0, 0, 0, 27654, 0, 8),
(97, 0, 0, 0, 27654, 0, 8),
(101, 0, 0, 0, 27654, 0, 8),
(105, 0, 0, 0, 27654, 0, 8),
(106, 0, 0, 0, 27654, 0, 8),
(107, 0, 0, 0, 27654, 0, 8),
(114, 0, 0, 0, 27654, 0, 8),
(115, 0, 0, 0, 27654, 0, 8),
(121, 0, 0, 0, 27654, 0, 8),
(128, 0, 0, 0, 27654, 0, 8),
(129, 0, 0, 0, 27654, 0, 8),
(131, 0, 0, 0, 27654, 0, 8),
(132, 0, 0, 0, 27654, 0, 8),
(133, 0, 0, 0, 27654, 0, 8),
(134, 0, 0, 0, 27654, 0, 8),
(135, 0, 0, 0, 27654, 0, 8),
(136, 0, 0, 0, 27654, 0, 8),
(138, 0, 0, 0, 27654, 0, 8),
(139, 0, 0, 0, 27654, 0, 8),
(140, 0, 0, 0, 27654, 0, 8),
(141, 0, 0, 0, 27654, 0, 8),
(142, 0, 0, 0, 27654, 0, 8),
(144, 0, 0, 0, 27654, 0, 8),
(145, 0, 0, 0, 27654, 0, 8),
(1743, 0, 0, 0, 27654, 0, 8),
(1748, 0, 0, 0, 27654, 0, 8),
(1750, 0, 0, 0, 27654, 0, 8),
(1757, 0, 0, 0, 27654, 0, 8),
(1759, 0, 0, 0, 27654, 0, 8),
(1760, 0, 0, 0, 27654, 0, 8),
(1765, 0, 0, 0, 27654, 0, 8),
(1766, 0, 0, 0, 27654, 0, 8),
(1767, 0, 0, 0, 27654, 0, 8),
(1783, 0, 0, 0, 27654, 0, 8),
(1817, 0, 0, 0, 27654, 0, 8),
(1818, 0, 0, 0, 27654, 0, 8),
(1821, 0, 0, 0, 27654, 0, 8),
(1889, 0, 0, 0, 27654, 0, 8),
(1893, 0, 0, 0, 27654, 0, 8),
(1894, 0, 0, 0, 27654, 0, 8),
(1895, 0, 0, 0, 27654, 0, 8),
(2009, 0, 0, 0, 27654, 0, 8),
(2023, 0, 0, 0, 27654, 0, 8),
(2024, 0, 0, 0, 27654, 0, 8),
(2025, 0, 0, 0, 27654, 0, 8),
(2027, 0, 0, 0, 27654, 0, 8),
(2028, 0, 0, 0, 27654, 0, 8),
(2079, 0, 0, 0, 27654, 0, 8),
(2081, 0, 0, 0, 27654, 0, 8),
(2085, 0, 0, 0, 27654, 0, 8),
(2086, 0, 0, 0, 27654, 0, 8),
-- Thief Catchers
(109, 0, 0, 0, 27654, 0, 8), -- Shadowdelve
(91, 0, 0, 0, 27654, 0, 8), -- Farmountain
(1814, 0, 0, 0, 27654, 0, 8); -- Thunderbrew

-- Adding gossip and conditions

-- IF Guards
-- Changing standard gossip to display only outside of event
UPDATE gossip_menu SET condition_id=950 WHERE entry=2121 AND text_id=2760; -- condition 501 in classic-db

-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2121, 8251, 0, 1316); -- condition 507 in classic-db

-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(2121, 13, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 0, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2121, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2121, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2121, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27547) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (212101, 0, 15, 27547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine IF Guard on player');
UPDATE gossip_menu_option SET action_script_id=212101 WHERE menu_id=2121 AND id=13;
-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (2121, 8291, 0, 1333); -- condition 524 in classic-db
-- Thief Catchers template - Gossip Menu + Options
-- Love Tokens
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12865, 8251, 0, 1316); -- condition 507 in classic-db
-- Adding token menu option
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(12865, 1, 0, 'Here, I\'d like to give you this token of my love.', 1, 1, 0, 0, 1286501, 0, 0, NULL, 1332); -- condition 523 in classic-db
-- Heartbroken gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12865, 8283, 0, 1317); -- condition 508 in classic-db
-- No Perfume gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12865, 8289, 0, 1329); -- condition 520 in classic-db
-- Already Adored Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12865, 8296, 0, 1327); -- condition 518 in classic-db
-- Cast Valentine(27547) in response to receiving love token
INSERT INTO dbscripts_on_gossip VALUES (1286501, 0, 15, 27547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast valentine IF Guard on player');

-- No Token Gossip
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (12865, 8291, 0, 1333); -- condition 524 in classic-db

-- Thief Catcher Shadowdelve
UPDATE creature_template SET GossipMenuId=12865 WHERE Entry=14363;
-- Thief Catcher Farmountain
UPDATE creature_template SET GossipMenuId=12865 WHERE Entry=14365;
-- Thiefcatcher Thunderbrew
UPDATE creature_template SET GossipMenuId=12865 WHERE Entry=14367;


