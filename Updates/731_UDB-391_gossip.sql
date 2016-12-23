-- Warlock Trainers

-- Drusilla La Salle c.459
DELETE FROM npc_gossip WHERE npc_guid = 79966;
UPDATE creature_template SET GossipMenuId = 1503 WHERE entry = 459;

-- Alamar Grimm c.460
DELETE FROM npc_gossip WHERE npc_guid = 1024;
UPDATE creature_template SET GossipMenuId = 4681 WHERE entry = 460;
DELETE FROM gossip_menu WHERE entry = 4681;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4681, 2193, 0, 19), -- Warlock 
(4681, 5723, 0, 0);

-- Demisette Cloyce c.461
DELETE FROM npc_gossip WHERE npc_guid = 26838;
UPDATE creature_template SET GossipMenuId = 4503 WHERE entry = 461;
DELETE FROM gossip_menu WHERE entry = 4503;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4503, 5722, 0, 0), 
(4503, 5693, 0, 19);  -- Warlock

-- Maximillian Crowe c.906
DELETE FROM npc_gossip WHERE npc_guid = 80353;
UPDATE creature_template SET GossipMenuId = 4667 WHERE entry = 906;

-- Kartosh c.988
DELETE FROM npc_gossip WHERE npc_guid = 32091;
UPDATE creature_template SET GossipMenuId = 4642 WHERE entry = 988;
DELETE FROM gossip_menu WHERE entry = 4642;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4642, 5714, 0, 19), -- Warlock
(4642, 5715, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4642;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4642','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4642','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Thragg c.1408
-- not in game

-- Maximillion c.2126
DELETE FROM npc_gossip WHERE npc_guid = 28467;
UPDATE creature_template SET GossipMenuId = 4655 WHERE entry = 2126;
DELETE FROM gossip_menu WHERE entry = 4655;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4655, 5719, 0, 19), -- Warlock
(4655, 5720, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4655;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4655','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4655','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Rupert Boch c.2127
DELETE FROM npc_gossip WHERE npc_guid = 33752;
UPDATE creature_template SET GossipMenuId = 4656 WHERE entry = 2127;
DELETE FROM gossip_menu WHERE entry = 4656;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4656, 5719, 0, 19), -- Warlock
(4656, 5720, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4656;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4656','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4656','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Nartok c.3156
DELETE FROM npc_gossip WHERE npc_guid = 4800;
UPDATE creature_template SET GossipMenuId = 4643 WHERE entry = 3156;
DELETE FROM gossip_menu WHERE entry = 4643;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4643, 5714, 0, 19), -- Warlock
(4643, 5715, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4643;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4643','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4643','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Dhugru Gorelust c.3172
DELETE FROM npc_gossip WHERE npc_guid = 6389;
UPDATE creature_template SET GossipMenuId = 4641 WHERE entry = 3172;
DELETE FROM gossip_menu WHERE entry = 4641;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4641, 5714, 0, 19), -- Warlock
(4641, 5715, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4641;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4641','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4641','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Grol'dar c.3324
DELETE FROM npc_gossip WHERE npc_guid = 3461;
UPDATE creature_template SET GossipMenuId = 4603 WHERE entry = 3324;
DELETE FROM gossip_menu WHERE entry = 4603;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4603, 2193, 0, 19), -- Warlock
(4603, 5723, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4603;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4603','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4603','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Mirket c.3325
DELETE FROM npc_gossip WHERE npc_guid = 3452;
UPDATE creature_template SET GossipMenuId = 4604 WHERE entry = 3325;
DELETE FROM gossip_menu WHERE entry = 4604;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4604, 2193, 0, 19), -- Warlock
(4604, 5723, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4604;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4604','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4604','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Zevrost c.3326
DELETE FROM npc_gossip WHERE npc_guid = 6596;
UPDATE creature_template SET GossipMenuId = 2384 WHERE entry = 3326;
DELETE FROM gossip_menu WHERE entry = 2384;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2384, 2193, 0, 19), -- Warlock
(2384, 5722, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 2384;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('2384','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('2384','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Kaal Soulreaper c.4563
DELETE FROM npc_gossip WHERE npc_guid = 41834;
UPDATE creature_template SET GossipMenuId = 2383 WHERE entry = 4563;
DELETE FROM gossip_menu WHERE entry = 2383;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(2383, 5714, 0, 19), -- Warlock
(2383, 5715, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 2383;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('2383','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('2383','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Luther Pickman c.4564
DELETE FROM npc_gossip WHERE npc_guid = 38071;
UPDATE creature_template SET GossipMenuId = 4609 WHERE entry = 4564;
DELETE FROM gossip_menu WHERE entry = 4609;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4609, 5719, 0, 19), -- Warlock
(4609, 5720, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4609;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4609','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4609','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Richard Kerwin c.4565
DELETE FROM npc_gossip WHERE npc_guid = 31863;
UPDATE creature_template SET GossipMenuId = 4610 WHERE entry = 4565;
DELETE FROM gossip_menu WHERE entry = 4610;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4610, 5719, 0, 19), -- Warlock
(4610, 5720, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4610;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4610','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4610','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- World Warlock Trainer c.4993
-- not in game

-- Thistleheart c.5171
DELETE FROM npc_gossip WHERE npc_guid = 1804;
UPDATE creature_template SET GossipMenuId = 4567 WHERE entry = 5171;
DELETE FROM gossip_menu WHERE entry = 4567;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4567, 2193, 0, 19), -- Warlock
(4567, 5723, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4567;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4567','0','3','I am interested in warlock training.','5','16','0','0','0','0','0','','0'),
('4567','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','139');

-- Briarthorn c.5172
DELETE FROM npc_gossip WHERE npc_guid = 1807;
UPDATE creature_template SET GossipMenuId = 2381 WHERE entry = 5172;

-- Alexander Calder c.5173
DELETE FROM npc_gossip WHERE npc_guid = 1803;
UPDATE creature_template SET GossipMenuId = 4667 WHERE entry = 5173;

-- Ursula Deline c.5495
DELETE FROM npc_gossip WHERE npc_guid = 90460;
UPDATE creature_template SET GossipMenuId = 4505 WHERE entry = 5495;
DELETE FROM gossip_menu WHERE entry = 4505;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4505, 5722, 0, 0), 
(4505, 5693, 0, 19);  -- Warlock

-- Sandahl c.5496
DELETE FROM npc_gossip WHERE npc_guid = 90461;
UPDATE creature_template SET GossipMenuId = 4504 WHERE entry = 5496;
DELETE FROM gossip_menu WHERE entry = 4504;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4504, 5722, 0, 0), 
(4504, 5693, 0, 19);  -- Warlock

-- Gimrizz Shadowcog c.5612
DELETE FROM npc_gossip WHERE npc_guid = 218;
UPDATE creature_template SET GossipMenuId = 4682 WHERE entry = 5612;
DELETE FROM gossip_menu WHERE entry = 4682;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4682, 2193, 0, 19), -- Warlock
(4682, 5722, 0, 0);

-- World Orc Male Warlock Trainer c.5962
-- World Orc Female Warlock Trainer c.5970
-- not in game

-- Summoner Teli'Larien c.15283
DELETE FROM npc_gossip WHERE npc_guid = 54989;
UPDATE creature_template SET GossipMenuId = 6628 WHERE entry = 15283;

-- Celoenus c.16266
-- Zanien c.16648
-- Alamma c.16646
DELETE FROM npc_gossip WHERE npc_guid IN (56976,57641,57639);
UPDATE creature_template SET GossipMenuId = 7566 WHERE entry IN (16266,16648,16646);

-- Talionia c.16647
DELETE FROM npc_gossip WHERE npc_guid = 57640;
UPDATE creature_template SET GossipMenuId = 7437 WHERE entry = 16647;

-- Exodar Warlock Trainer c.16770
-- not in game

-- Babagaya Shadowcleft c.23534
DELETE FROM npc_gossip WHERE npc_guid = 20943;
UPDATE creature_template SET GossipMenuId = 1522 WHERE entry = 23534;
DELETE FROM gossip_menu WHERE entry = 1522;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1522, 5722, 0, 0), 
(1522, 5693, 0, 19);  -- Warlock


