-- Paladin Trainers

-- Brother Sammuel c.925
DELETE FROM npc_gossip WHERE npc_guid = 79967;
DELETE FROM gossip_menu WHERE entry = 4663;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4663, 3976, 0, 0),
(4663, 3977, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4663 AND id=2;

-- Bromos Grummner c.926
DELETE FROM npc_gossip WHERE npc_guid = 403;
DELETE FROM gossip_menu WHERE entry = 4678;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4678, 3974, 0, 14), -- Paladin 
(4678, 3975, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4678 AND id=2;

-- Brother Wilhelm c.927
DELETE FROM npc_gossip WHERE npc_guid = 80325;
DELETE FROM gossip_menu WHERE entry = 4664;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4664, 3976, 0, 0),
(4664, 3977, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4664 AND id=2;

-- Lord Grayson Shadowbreaker c.928
DELETE FROM npc_gossip WHERE npc_guid = 5000;
DELETE FROM gossip_menu WHERE entry = 4471;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4471, 3976, 0, 0),
(4471, 3977, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4471 AND id=2;

-- Azar Stronghammer c.1232
DELETE FROM npc_gossip WHERE npc_guid = 194;
DELETE FROM gossip_menu WHERE entry = 4677;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4677, 3974, 0, 14), -- Paladin 
(4677, 3975, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4471 AND id=2;

-- World Paladin Trainer c.4988
-- not in game

-- Valgar Highforge c.5147
DELETE FROM npc_gossip WHERE npc_guid = 1778;
DELETE FROM gossip_menu WHERE entry = 4557;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4557, 3974, 0, 14), -- Paladin 
(4557, 3975, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4557 AND id=2;

-- Beldruk Doombrow c.5148
DELETE FROM npc_gossip WHERE npc_guid = 1769;
DELETE FROM gossip_menu WHERE entry = 4556;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4556, 3974, 0, 14), -- Paladin 
(4556, 3975, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4556 AND id=2;

-- Brandur Ironhammer c.5149
DELETE FROM npc_gossip WHERE npc_guid = 1781;
DELETE FROM gossip_menu WHERE entry = 2304;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2304, 3974, 0, 14), -- Paladin 
(2304, 3975, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=2304 AND id=2;

-- Arthur the Faithful c.5491
DELETE FROM npc_gossip WHERE npc_guid = 37585;
DELETE FROM gossip_menu WHERE entry = 4469;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4469, 3976, 0, 0),
(4469, 3977, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4469 AND id=2;

-- Katherine the Pure c.5492
DELETE FROM npc_gossip WHERE npc_guid = 37586;
DELETE FROM gossip_menu WHERE entry = 4470;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4470, 3976, 0, 0),
(4470, 3977, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4470 AND id=2;

-- Brother Karman c.8140
DELETE FROM npc_gossip WHERE npc_guid = 30655;
DELETE FROM gossip_menu WHERE entry = 4662;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4662, 3976, 0, 0),
(4662, 3977, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=4662 AND id=2;

-- Jesthenis Sunstriker c.15280
DELETE FROM npc_gossip WHERE npc_guid = 54985;
DELETE FROM gossip_menu WHERE entry = 6647;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6647, 7904, 0, 14),  -- Paladin
(6647, 9193, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 6647;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('6647','0','3','I would like to train further in the ways of the Light.','5','16','0','0','0','0','0','','0'),
('6647','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','134');
DELETE FROM gossip_menu_option WHERE menu_id=6647 AND id=2;

-- Noellene c.16275
DELETE FROM npc_gossip WHERE npc_guid = 56983;

-- Aurelon c.16501
DELETE FROM npc_gossip WHERE npc_guid = 57212;
UPDATE creature_template SET GossipMenuId = 7260 WHERE entry = 16501;
DELETE FROM gossip_menu WHERE entry = 7260;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7260, 8582, 0, 14),  -- Paladin
(7260, 8584, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=7260 AND id=2;

-- Osselan c.16679
DELETE FROM npc_gossip WHERE npc_guid = 57669;

-- Ithelis c.16680
DELETE FROM npc_gossip WHERE npc_guid = 57670;

-- Champion Bachi c.16681
DELETE FROM npc_gossip WHERE npc_guid = 57671;

-- Master Pyreanor c.23128
DELETE FROM npc_gossip WHERE npc_guid = 6503;

-- Baatun c.16761
DELETE FROM npc_gossip WHERE npc_guid = 57748;
UPDATE creature_template SET GossipMenuId = 7260 WHERE entry = 16761;

-- Kavaan c.17121
DELETE FROM npc_gossip WHERE npc_guid = 59520;
UPDATE creature_template SET GossipMenuId = 7260 WHERE entry = 17121;

-- Tullas c.17483
DELETE FROM npc_gossip WHERE npc_guid = 84577;
UPDATE creature_template SET GossipMenuId = 7260 WHERE entry = 17483;

-- Jol c.17509
DELETE FROM npc_gossip WHERE npc_guid = 63007;
UPDATE creature_template SET GossipMenuId = 7260 WHERE entry = 17509;

-- Champion Cyssa Dawnrose c.20406
DELETE FROM npc_gossip WHERE npc_guid = 32066;
UPDATE creature_template SET GossipMenuId = 8111 WHERE entry = 20406;
DELETE FROM gossip_menu WHERE entry = 8111;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8111, 10040, 0, 14),  -- Paladin
(8111, 10041, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id=8111 AND id=2;

-- Rukua c.35281
DELETE FROM npc_gossip WHERE npc_guid = 49817;
UPDATE creature_template SET GossipMenuId = 7260 WHERE entry = 35281;


