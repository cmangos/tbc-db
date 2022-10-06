-- Belbi Quikswitch 23710
-- gossip corrected 
-- UPDATE gossip_menu_option SET action_menu_id = 8955 WHERE menu_id = 8783 AND id = 0; -- nonexistant, 0 is not used in tbcmangos
DELETE FROM `gossip_menu_option` WHERE `menu_id`  = 8783;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(8783, 0, 0, 'What\'s with your crazy goggles?', 0, 1, 1, 8955, 0, 0, 0, 0, '', 0, 0),
(8783, 1, 0, 'What\'s the "Brew of the Month" club?', 0, 1, 1, 9561, 448, 0, 0, 0, '', 0, 0),
(8783, 2, 0, 'Ticket Exchange', 0, 1, 1, 9582, 0, 0, 0, 0, '', 0, 0),
(8783, 3, 1, 'Let me browse your goods.', 0, 3, 128, 0, 0, 0, 0, 0, '', 0, 0);
UPDATE gossip_menu_option SET action_menu_id = 8783 WHERE menu_id IN (8955,9561); -- 8783

-- POI added
DELETE FROM points_of_interest WHERE entry = 448;
INSERT INTO points_of_interest (entry,x,y,icon,flags,data,icon_name) VALUES
(448,-4847.83,-862.606,7,75,0,'Brew of the Month Club, Ironforge');

-- in 3.x.x she and few other vendors also sells `Pint-Sized Pink Pachyderm`
-- They sell 15/16 items in tbc
DELETE FROM `npc_vendor_template` WHERE `entry` IN (602) AND `item` IN (37750,37816,33978,34028);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(602, 37750, 0, 0, 0, 2398, 0, 'Fresh Brewfest Hops'),
(602, 37816, 0, 0, 0, 2399, 0, 'Preserved Brewfest Hops');
-- (23710, 46707, 0, 0, 2275,0, 'Pint-Sized Pink Pachyderm'), -- Belbi Quikswitch 23710
-- (24495, 46707, 0, 0, 2275,0, 'Pint-Sized Pink Pachyderm'), -- Blix Fixwidget 24495
-- (27478, 46707, 0, 0, 2275,0, 'Pint-Sized Pink Pachyderm'), -- Larkin Thunderbrew 27478
-- (27489, 46707, 0, 0, 2275,0, 'Pint-Sized Pink Pachyderm'); -- Ray'ma 27489

DELETE FROM `npc_vendor` WHERE `entry` IN (24495,23710,27478,27489) AND `item` IN (39477,39476,33978,34028);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(24495, 39477, 0, 0, 0, 2424, 0, 'Fresh Dwarven Brewfest Hops'),
(24495, 34028, 0, 0, 0, 2273, 10344, '"Honorary Brewer" Hand Stamp'),
(23710, 39476, 0, 0, 0, 2424, 0, 'Fresh Goblin Brewfest Hops'),
(23710, 33978, 0, 0, 0, 2273, 10343, '"Honorary Brewer" Hand Stamp'),
(27478, 39476, 0, 0, 0, 2424, 0, 'Fresh Goblin Brewfest Hops'),
(27489, 39477, 0, 0, 0, 2424, 0, 'Fresh Dwarven Brewfest Hops');

