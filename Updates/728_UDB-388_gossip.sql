-- Shaman Trainers

-- [UNUSED] Grall Twomoons c.354
-- not in game

-- Murak Winterborn c.373
-- not in game

-- Haromm c.986
DELETE FROM npc_gossip WHERE npc_guid = 34147;
UPDATE creature_template SET GossipMenuId = 4104 WHERE entry = 986;
DELETE FROM gossip_menu WHERE entry = 4104;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4104, 5005, 0, 17), -- Shaman  
(4104, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4104;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4104','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4104','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');


-- Ghok c.1406
-- not in game

-- Undead Shaman Trainer c.2219
-- not in game

-- Siln Skychaser c.3030
DELETE FROM npc_gossip WHERE npc_guid = 26656;
UPDATE creature_template SET GossipMenuId = 4528 WHERE entry = 3030;
DELETE FROM gossip_menu WHERE entry = 4528;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4528, 5005, 0, 17), -- Shaman  
(4528, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4528;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4528','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4528','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Tigor Skychaser c.3031
DELETE FROM npc_gossip WHERE npc_guid = 26658;
UPDATE creature_template SET GossipMenuId = 4530 WHERE entry = 3031;
DELETE FROM gossip_menu WHERE entry = 4530;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4530, 5005, 0, 17), -- Shaman  
(4530, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4530;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4530','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4530','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Beram Skychaser c.3032
DELETE FROM npc_gossip WHERE npc_guid = 26659;
UPDATE creature_template SET GossipMenuId = 4529 WHERE entry = 3032;
DELETE FROM gossip_menu WHERE entry = 4529;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4529, 5005, 0, 17), -- Shaman  
(4529, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4529;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4529','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4529','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Meela Dawnstrider c.3062
DELETE FROM npc_gossip WHERE npc_guid = 26900;
UPDATE creature_template SET GossipMenuId = 4103 WHERE entry = 3062;
DELETE FROM gossip_menu WHERE entry = 4103;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4103, 5005, 0, 17), -- Shaman  
(4103, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4103;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4103','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4103','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Narm Skychaser c.3066
DELETE FROM npc_gossip WHERE npc_guid = 26906;
UPDATE creature_template SET GossipMenuId = 4103 WHERE entry = 3066;

-- Shikrik c.3157
DELETE FROM npc_gossip WHERE npc_guid = 7281;
UPDATE creature_template SET GossipMenuId = 4652 WHERE entry = 3157;
DELETE FROM gossip_menu WHERE entry = 4652;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4652, 5005, 0, 17), -- Shaman  
(4652, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4652;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4652','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4652','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Swart c.3173
DELETE FROM npc_gossip WHERE npc_guid = 8419;
UPDATE creature_template SET GossipMenuId = 4104 WHERE entry = 3173;
DELETE FROM gossip_menu WHERE entry = 4104;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4104, 5005, 0, 17), -- Shaman  
(4104, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4104;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4104','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4104','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Kardris Dreamseeker c.3344
DELETE FROM npc_gossip WHERE npc_guid = 4663;
UPDATE creature_template SET GossipMenuId = 4516 WHERE entry = 3344;
DELETE FROM gossip_menu WHERE entry = 4516;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4516, 5005, 0, 17), -- Shaman  
(4516, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4516;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4516','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4516','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Sian'tsu c.3403
DELETE FROM npc_gossip WHERE npc_guid = 4665;
UPDATE creature_template SET GossipMenuId = 4515 WHERE entry = 3403;
DELETE FROM gossip_menu WHERE entry = 4515;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4515, 5007, 0, 17), -- Shaman  
(4515, 5008, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4515;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4515','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('4515','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- World Shaman Trainer c.4991
-- World Troll Male Shaman Trainer c.5965
-- World Troll Female Shaman Trainer c.5971
-- not in game

-- Sagorne Creststrider c.13417
DELETE FROM npc_gossip WHERE npc_guid = 4664;
UPDATE creature_template SET GossipMenuId = 5123 WHERE entry = 13417;
DELETE FROM gossip_menu WHERE entry = 5123;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5123, 5005, 0, 17), -- Shaman  
(5123, 5006, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 5123;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('5123','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('5123','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137');

-- Gez'li c.16661
-- not in game

-- Firmanvaar c.17089
DELETE FROM npc_gossip WHERE npc_guid = 59513;
UPDATE creature_template SET GossipMenuId = 7522 WHERE entry = 17089;

-- Farseer Nobundo c.17204
DELETE FROM npc_gossip WHERE npc_guid = 61719;
UPDATE creature_template SET GossipMenuId = 7377 WHERE entry = 17204;
DELETE FROM gossip_menu WHERE entry = 7377;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7377, 8829, 0, 17), -- Shaman  
(7377, 8828, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 7377;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('7377','0','3','Teach me the ways of the spirits.','5','16','0','0','0','0','0','','0'),
('7377','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','137'),
('7377','2','0','Tell me of your past, Farseer.','1','1','7502','0','0','0','0','','0');

-- Tuluun c.17212
DELETE FROM npc_gossip WHERE npc_guid = 61721;
UPDATE creature_template SET GossipMenuId = 7467 WHERE entry = 17212;

-- Sulaa c.17219
-- Hobahken c.17519
-- Gurrag c.17520
-- Farseer Javad c.23127
DELETE FROM npc_gossip WHERE npc_guid IN (61958,63013,63014,1815);
UPDATE creature_template SET GossipMenuId = 7357 WHERE entry IN (17219,17519,17520,23127);
DELETE FROM gossip_menu WHERE entry = 7357;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7357, 8786, 0, 17), -- Shaman  
(7357, 8785, 0, 0);

-- Kruugall c.18270
-- not in game

-- Farseer Umbrua c.20407
DELETE FROM npc_gossip WHERE npc_guid = 79860;
UPDATE creature_template SET GossipMenuId = 8110 WHERE entry = 20407;


