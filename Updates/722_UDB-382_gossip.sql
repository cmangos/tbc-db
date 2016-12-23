-- Rogue Trainers

-- Jorik Kerridan c.915
DELETE FROM npc_gossip WHERE npc_guid = 79986;
UPDATE creature_template SET GossipMenuId = 4659 WHERE entry = 915;
DELETE FROM gossip_menu WHERE entry = 4659;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4659, 4835, 0, 16), -- Rogue  
(4659, 4837, 0, 0);

-- Solm Hargrin c.916
DELETE FROM npc_gossip WHERE npc_guid = 421;
UPDATE creature_template SET GossipMenuId = 4659 WHERE entry = 916;

-- Keryn Sylvius c.917
DELETE FROM npc_gossip WHERE npc_guid = 79645;
UPDATE creature_template SET GossipMenuId = 381 WHERE entry = 917;

-- Osborne the Night Man c.918
DELETE FROM npc_gossip WHERE npc_guid = 79788;
UPDATE creature_template SET GossipMenuId = 4502 WHERE entry = 918;


-- Hogral Bakkan c.1234
DELETE FROM npc_gossip WHERE npc_guid = 188;
UPDATE creature_template SET GossipMenuId = 410 WHERE entry = 1234;

-- Ian Strom c.1411
DELETE FROM npc_gossip WHERE npc_guid = 644;
UPDATE creature_template SET GossipMenuId = 4658 WHERE entry = 1411;
DELETE FROM gossip_menu WHERE entry = 4658;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4658, 6165, 0, 16), -- Rogue  
(4658, 6164, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4658;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4658','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('4658','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- David Trias c.2122
DELETE FROM npc_gossip WHERE npc_guid = 28466;
UPDATE creature_template SET GossipMenuId = 85 WHERE entry = 2122;
DELETE FROM gossip_menu WHERE entry = 85;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(85, 581, 0, 16), -- Rogue  
(85, 4796, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 85;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('85','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('85','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Marion Call c.2130
DELETE FROM npc_gossip WHERE npc_guid = 28479;
UPDATE creature_template SET GossipMenuId = 85 WHERE entry = 2130;

-- Rwag c.3155
DELETE FROM npc_gossip WHERE npc_guid = 7284;
UPDATE creature_template SET GossipMenuId = 141 WHERE entry = 3155;
DELETE FROM gossip_menu WHERE entry = 141;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(141, 638, 0, 16), -- Rogue  
(141, 4793, 0, 0);

-- Kaplak c.3170
DELETE FROM npc_gossip WHERE npc_guid = 8422;
UPDATE creature_template SET GossipMenuId = 141 WHERE entry = 3170;

-- Gest c.3327
DELETE FROM npc_gossip WHERE npc_guid = 3454;
UPDATE creature_template SET GossipMenuId = 4513 WHERE entry = 3327;
DELETE FROM gossip_menu WHERE entry = 4513;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4513, 638, 0, 16), -- Rogue  
(4513, 4793, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4513;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4513','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('4513','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Ormok c.3328
DELETE FROM npc_gossip WHERE npc_guid = 6593;
UPDATE creature_template SET GossipMenuId = 4512 WHERE entry = 3328;
DELETE FROM gossip_menu WHERE entry = 4512;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4512, 638, 0, 16), -- Rogue  
(4512, 4793, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4512;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4512','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('4512','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Shenthul c.3401
DELETE FROM npc_gossip WHERE npc_guid = 6594;
UPDATE creature_template SET GossipMenuId = 21221 WHERE entry = 3401;
DELETE FROM gossip_menu WHERE entry = 21221; -- source TC - not sure if its correct
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(21221, 1124, 0, 16), -- Rogue  
(21221, 4793, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 21221;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('21221','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('21221','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Frahun Shadewhisper c.3594
DELETE FROM npc_gossip WHERE npc_guid = 46179;
UPDATE creature_template SET GossipMenuId = 4690 WHERE entry = 3594;

-- Jannok Breezesong c.3599
DELETE FROM npc_gossip WHERE npc_guid = 46185;
UPDATE creature_template SET GossipMenuId = 436 WHERE entry = 3599;

-- Syurna c.4163
DELETE FROM npc_gossip WHERE npc_guid = 46312;
UPDATE creature_template SET GossipMenuId = 4576 WHERE entry = 4163;

-- Erion Shadewhisper c.4214
DELETE FROM npc_gossip WHERE npc_guid = 46469;
UPDATE creature_template SET GossipMenuId = 4576 WHERE entry = 4214;

-- Anishar c.4215
DELETE FROM npc_gossip WHERE npc_guid = 46470;
UPDATE creature_template SET GossipMenuId = 4576 WHERE entry = 4215;

-- Carolyn Ward c.4582
DELETE FROM npc_gossip WHERE npc_guid = 38095;
UPDATE creature_template SET GossipMenuId = 4542 WHERE entry = 4582;
DELETE FROM gossip_menu WHERE entry = 4542;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4542, 581, 0, 16), -- Rogue  
(4542, 4796, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4542;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4542','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('4542','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Miles Dexter c.4583
DELETE FROM npc_gossip WHERE npc_guid = 31885;
UPDATE creature_template SET GossipMenuId = 4540 WHERE entry = 4583;
DELETE FROM gossip_menu WHERE entry = 4540;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4540, 581, 0, 16), -- Rogue  
(4540, 4796, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4540;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4540','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('4540','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Gregory Charles c.4584
DELETE FROM npc_gossip WHERE npc_guid = 31889;
UPDATE creature_template SET GossipMenuId = 4541 WHERE entry = 4584;
DELETE FROM gossip_menu WHERE entry = 4541;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4541, 581, 0, 16), -- Rogue  
(4541, 4796, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4541;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4541','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('4541','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- World Rogue Trainer c.4990
-- not in game

-- Hulfdan Blackbeard c.5165
DELETE FROM npc_gossip WHERE npc_guid = 1810;
UPDATE creature_template SET GossipMenuId = 411 WHERE entry = 5165;
DELETE FROM gossip_menu WHERE entry = 411;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(411, 908, 0, 16), -- Rogue  
(411, 4798, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 411;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('411','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('411','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Ormyr Flinteye c.5166
DELETE FROM npc_gossip WHERE npc_guid = 1806;
UPDATE creature_template SET GossipMenuId = 4562 WHERE entry = 5166;
DELETE FROM gossip_menu WHERE entry = 4562;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4562, 4834, 0, 16), -- Rogue  
(4562, 4833, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4562;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4562','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('4562','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Fenthwick c.5167
DELETE FROM npc_gossip WHERE npc_guid = 1809;
UPDATE creature_template SET GossipMenuId = 4561 WHERE entry = 5167;
DELETE FROM gossip_menu WHERE entry = 4561;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4561, 5695, 0, 16), -- Rogue  
(4561, 4833, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4561;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4561','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('4561','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- World Human Male Rogue Trainer c.5960
-- World Human Female Rogue Trainer c.5968
-- not in game

-- Lord Tony Romano c.13283
DELETE FROM npc_gossip WHERE npc_guid = 79787;
UPDATE creature_template SET GossipMenuId = 5061 WHERE entry = 13283;
DELETE FROM gossip_menu WHERE entry = 5061;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5061, 4835, 0, 16), -- Rogue  
(5061, 4837, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 5061;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('5061','0','3','Can you train me how to use rogue skills?','5','16','0','0','0','0','0','','0'),
('5061','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','136');


-- Pathstalker Kariel c.15285
DELETE FROM npc_gossip WHERE npc_guid = 54991;
UPDATE creature_template SET GossipMenuId = 6650 WHERE entry = 15285;
DELETE FROM gossip_menu WHERE entry = 6650;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6650, 9188, 0, 16), -- Rogue  
(6650, 9187, 0, 0);

-- Tannaria c.16279
DELETE FROM npc_gossip WHERE npc_guid = 56987;
UPDATE creature_template SET GossipMenuId = 6650 WHERE entry = 16279;

-- Zelanis c.16684
DELETE FROM npc_gossip WHERE npc_guid = 57673;
UPDATE creature_template SET GossipMenuId = 6650 WHERE entry = 16684;

-- Elara c.16685
DELETE FROM npc_gossip WHERE npc_guid = 57674;
UPDATE creature_template SET GossipMenuId = 6650 WHERE entry = 16685;

-- Nerisen c.16686
DELETE FROM npc_gossip WHERE npc_guid = 57675;
UPDATE creature_template SET GossipMenuId = 6650 WHERE entry = 16686;

-- Saran Nozzlevolt c.16759
-- not in game


