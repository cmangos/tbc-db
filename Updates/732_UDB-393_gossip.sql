-- Druid Trainers

-- Califex of the Deep Wood c.542
-- not in game

-- Moorah Stormhoof c.1409
-- not in game

-- Undead Druid Trainer c.2217
-- not in game

-- Turak Runetotem c.3033
DELETE FROM npc_gossip WHERE npc_guid = 26661;
UPDATE creature_template SET GossipMenuId = 3921 WHERE entry = 3033;

-- Sheal Runetotem c.3034
DELETE FROM npc_gossip WHERE npc_guid = 26662;
UPDATE creature_template SET GossipMenuId = 4606 WHERE entry = 3034;
DELETE FROM gossip_menu WHERE entry = 4606;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4606, 5716, 0, 21), -- Driud 
(4606, 5717, 0, 0);

-- Kym Wildmane c.3036
DELETE FROM npc_gossip WHERE npc_guid = 26753;
UPDATE creature_template SET GossipMenuId = 4607 WHERE entry = 3036;
DELETE FROM gossip_menu WHERE entry = 4607;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4607, 5716, 0, 21), -- Driud 
(4607, 5717, 0, 0);

-- Gart Mistrunner c.3060
DELETE FROM npc_gossip WHERE npc_guid = 26898;
UPDATE creature_template SET GossipMenuId = 4644 WHERE entry = 3060;
DELETE FROM gossip_menu WHERE entry = 4644;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4644, 5716, 0, 21), -- Driud 
(4644, 5717, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4644;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4644','0','3','I seek training as a druid.','5','16','0','0','0','0','0','','0'),
('4644','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','140');
-- Gennia Runetotem c.3064
DELETE FROM npc_gossip WHERE npc_guid = 26903;
UPDATE creature_template SET GossipMenuId = 3926 WHERE entry = 3064;
DELETE FROM gossip_menu WHERE entry = 3926;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3926, 4786, 0, 21), -- Driud 
(3926, 4785, 0, 0);

-- Mardant Strongoak c.3597
DELETE FROM npc_gossip WHERE npc_guid = 46183;
UPDATE creature_template SET GossipMenuId = 4688 WHERE entry = 3597;
DELETE FROM gossip_menu WHERE entry = 4688;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4688, 4784, 0, 21), -- Driud 
(4688, 4783, 0, 0);

-- Kal c.3602
DELETE FROM npc_gossip WHERE npc_guid = 46189;
UPDATE creature_template SET GossipMenuId = 3923 WHERE entry = 3602;
DELETE FROM gossip_menu WHERE entry = 3923;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3923, 4779, 0, 21), -- Driud 
(3923, 4780, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 3923;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('3923','0','3','I seek training as a druid.','5','16','0','0','0','0','0','','0'),
('3923','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','140');

-- Mathrengyl Bearwalker c.4217
DELETE FROM npc_gossip WHERE npc_guid = 46472;
UPDATE creature_template SET GossipMenuId = 1403 WHERE entry = 4217;

-- Denatharion c.4218
DELETE FROM npc_gossip WHERE npc_guid = 46474;
UPDATE creature_template SET GossipMenuId = 3924 WHERE entry = 4218;
DELETE FROM gossip_menu WHERE entry = 3924;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3924, 4782, 0, 21), -- Driud 
(3924, 4781, 0, 0);

-- Fylerian Nightwing c.4219
DELETE FROM npc_gossip WHERE npc_guid = 46475;
UPDATE creature_template SET GossipMenuId = 4571 WHERE entry = 4219;
DELETE FROM gossip_menu WHERE entry = 4571;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4571, 4782, 0, 21), -- Driud 
(4571, 4781, 0, 0);

-- World Druid Trainer c.4985
-- not in game

-- Sheldras Moontree c.5504
DELETE FROM npc_gossip WHERE npc_guid = 90465;
UPDATE creature_template SET GossipMenuId = 4508 WHERE entry = 5504;
DELETE FROM gossip_menu WHERE entry = 4508;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4508, 5694, 0, 21), -- Driud 
(4508, 4783, 0, 0);

-- Theridran c.5505
-- Golhine the Hooded c.9465
DELETE FROM npc_gossip WHERE npc_guid IN (90466,39665);
UPDATE creature_template SET GossipMenuId = 3925 WHERE entry IN (5505,9465);
DELETE FROM gossip_menu WHERE entry = 3925;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3925, 4784, 0, 21), -- Driud 
(3925, 4783, 0, 0);

-- Maldryn c.5506
DELETE FROM npc_gossip WHERE npc_guid = 90467;
UPDATE creature_template SET GossipMenuId = 4507 WHERE entry = 5506;
DELETE FROM gossip_menu WHERE entry = 4507;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4507, 5694, 0, 21), -- Driud 
(4507, 4783, 0, 0);

-- World Tauren Male Druid Trainer c.5963
-- World Tauren Female Druid Trainer c.5972
-- not in game

-- Jannos Lighthoof c.8142
DELETE FROM npc_gossip WHERE npc_guid = 51301;
UPDATE creature_template SET GossipMenuId = 4646 WHERE entry = 8142;
DELETE FROM gossip_menu WHERE entry = 4646;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4646, 5716, 0, 21), -- Driud 
(4646, 5717, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4646;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4646','0','3','I seek training as a druid.','5','16','0','0','0','0','0','','0'),
('4646','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','140');

-- Loganaar c.12042
DELETE FROM npc_gossip WHERE npc_guid = 42415;
UPDATE creature_template SET GossipMenuId = 4687 WHERE entry = 12042;
DELETE FROM gossip_menu WHERE entry = 4687;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4687, 4784, 0, 21), -- Driud 
(4687, 4783, 0, 0);

-- Harene Plainwalker c.16655
DELETE FROM npc_gossip WHERE npc_guid = 57648;
UPDATE creature_template SET GossipMenuId = 4605 WHERE entry = 16655;

-- Shalannius c.16721
DELETE FROM npc_gossip WHERE npc_guid = 57708;
UPDATE creature_template SET GossipMenuId = 7567 WHERE entry = 16721;


