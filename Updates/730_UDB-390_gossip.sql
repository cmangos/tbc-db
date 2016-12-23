-- Mage Trainers

-- Khelden Bremen c.198
DELETE FROM npc_gossip WHERE npc_guid = 79962;
UPDATE creature_template SET GossipMenuId = 4660 WHERE entry = 198;

-- Zaldimar Wefhellt c.328
DELETE FROM npc_gossip WHERE npc_guid = 80344;
UPDATE creature_template SET GossipMenuId = 4661 WHERE entry = 328;

-- Marryk Nurribit c.944
-- Bink c.5144
-- Nittlebur Sparkfizzle c.5146
DELETE FROM npc_gossip WHERE npc_guid IN (1025,1773,1782);
UPDATE creature_template SET GossipMenuId = 4552 WHERE entry IN (944,5144,5146);
DELETE FROM gossip_menu WHERE entry = 4552;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4552, 560, 0, 18), -- Mage 
(4552, 561, 0, 0);

-- Magis Sparkmantle c.1228
DELETE FROM npc_gossip WHERE npc_guid = 192;
UPDATE creature_template SET GossipMenuId = 4685 WHERE entry = 1228;
DELETE FROM gossip_menu WHERE entry = 4685;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4685, 560, 0, 18), -- Mage 
(4685, 561, 0, 0);

-- Isabella c.2124
DELETE FROM npc_gossip WHERE npc_guid = 28463;
UPDATE creature_template SET GossipMenuId = 4654 WHERE entry = 2124;
DELETE FROM gossip_menu WHERE entry = 4654;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4654, 562, 0, 18), -- Mage 
(4654, 563, 0, 0);

-- Cain Firesong c.2128
-- Derek the Undying c.23103
DELETE FROM npc_gossip WHERE npc_guid IN (28476,41829);
UPDATE creature_template SET GossipMenuId = 63 WHERE entry IN (2128,23103);
UPDATE creature_template SET NpcFlags = 49 WHERE entry = 23103; -- gossip
DELETE FROM gossip_menu WHERE entry = 63;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(63, 562, 0, 18), -- Mage 
(63, 563, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 63;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('63','0','3','I am interested in mage training.','5','16','0','0','0','0','0','','0'),
('63','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','138');

-- Archmage Shymm c.3047
DELETE FROM npc_gossip WHERE npc_guid = 26774;
UPDATE creature_template SET GossipMenuId = 4534 WHERE entry = 3047;
DELETE FROM gossip_menu WHERE entry = 4534;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4534, 562, 0, 18), -- Mage 
(4534, 563, 0, 0);

-- Ursyn Ghull c.3048
DELETE FROM npc_gossip WHERE npc_guid = 26775;
UPDATE creature_template SET GossipMenuId = 4536 WHERE entry = 3048;
DELETE FROM gossip_menu WHERE entry = 4536;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4536, 562, 0, 18), -- Mage 
(4536, 563, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4536;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4536','0','3','I am interested in mage training.','5','16','0','0','0','0','0','','0'),
('4536','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','138');

-- Thurston Xane c.3049
DELETE FROM npc_gossip WHERE npc_guid = 26776;
UPDATE creature_template SET GossipMenuId = 4535 WHERE entry = 3049;
DELETE FROM gossip_menu WHERE entry = 4535;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4535, 562, 0, 18), -- Mage 
(4535, 563, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4535;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4535','0','3','I am interested in mage training.','5','16','0','0','0','0','0','','0'),
('4535','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','138');

-- Kaelystia Hatebringer c.4566
DELETE FROM npc_gossip WHERE npc_guid = 31869;
UPDATE creature_template SET GossipMenuId = 4539 WHERE entry = 4566;
DELETE FROM gossip_menu WHERE entry = 4539;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4539, 562, 0, 18), -- Mage 
(4539, 563, 0, 0);

-- Pierce Shackleton c.4567
DELETE FROM npc_gossip WHERE npc_guid = 38416;
UPDATE creature_template SET GossipMenuId = 4538 WHERE entry = 4567;
DELETE FROM gossip_menu WHERE entry = 4538;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4538, 562, 0, 18), -- Mage 
(4538, 563, 0, 0);

-- Anastasia Hartwell c.4568
DELETE FROM npc_gossip WHERE npc_guid = 38422;
UPDATE creature_template SET GossipMenuId = 4537 WHERE entry = 4568;
DELETE FROM gossip_menu WHERE entry = 4537;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4537, 562, 0, 18), -- Mage 
(4537, 563, 0, 0);

-- World Mage Trainer c.4987
-- not in game

-- Juli Stormkettle c.5145
DELETE FROM npc_gossip WHERE npc_guid = 1779;
UPDATE creature_template SET GossipMenuId = 4554 WHERE entry = 5145;
-- Missing Gossip Menu Backports
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('4554','560','0','18');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('4554','561','0','0');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('4554','0','3','I am interested in mage training.','5','16','0','0','0','0','0','','18');
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('4554','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','138');




-- Jennea Cannon c.5497
DELETE FROM npc_gossip WHERE npc_guid = 90462;
UPDATE creature_template SET GossipMenuId = 4485 WHERE entry = 5497;

-- Elsharin c.5498
DELETE FROM npc_gossip WHERE npc_guid = 90463;
UPDATE creature_template SET GossipMenuId = 4484 WHERE entry = 5498;

-- Un'Thuwa c.5880
-- Pephredo c.5882
-- Enyo c.5883
-- Mai'ah c.5884
-- Deino c.5885
-- Uthel'nay c.7311
DELETE FROM npc_gossip WHERE npc_guid IN (6398,3471,3616,4798,3474,3648);
UPDATE creature_template SET GossipMenuId = 64 WHERE entry IN (5880,5882,5883,5884,5885,7311);
DELETE FROM gossip_menu WHERE entry = 64;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(64, 564, 0, 18), -- Mage 
(64, 565, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 64;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('64','0','3','I am interested in mage training.','5','16','0','0','0','0','0','','0'),
('64','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','138');

-- World Gnome Male Mage Trainer c.5961
-- World Gnome Female Mage Trainer c.5969
-- not in game

-- Dink c.7312
DELETE FROM npc_gossip WHERE npc_guid = 1774;
UPDATE creature_template SET GossipMenuId = 4553 WHERE entry = 7312;
DELETE FROM gossip_menu WHERE entry = 4553;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4553, 560, 0, 18), -- Mage 
(4553, 561, 0, 0);

-- Haka'wani c.7488
-- not in game

-- Julia Sunstriker c.15279
-- Garridel c.16269
-- Zaedana c.16651
-- Quithas c.16652
-- Inethven c.16653
DELETE FROM npc_gossip WHERE npc_guid IN (54985,56978,57644,57645,57646);
UPDATE creature_template SET GossipMenuId = 6648 WHERE entry IN (15279,16269,16651,16652,16653);

-- Valaatu c.16500
-- Edirah c.16749
-- Semid c.17481 
-- Harnan c.17513
-- Bati c.17514
DELETE FROM npc_gossip WHERE npc_guid IN (84581,57742,62995,63009,63010);
UPDATE creature_template SET GossipMenuId = 7264 WHERE entry IN (16500,16749,17481,17513,17514);

-- Emissary Valustraa c.17105
DELETE FROM npc_gossip WHERE npc_guid = 47640;
UPDATE creature_template SET GossipMenuId = 7366 WHERE entry = 17105;
DELETE FROM gossip_menu WHERE entry = 7366;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7366, 8799, 0, 18), -- Mage 
(7366, 8800, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 7366;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('7366','0','3','I am interested in mage training.','5','16','0','0','0','0','0','','0'),
('7366','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','138');

-- Horace Alder c.27704
DELETE FROM npc_gossip WHERE npc_guid = 88813;
UPDATE creature_template SET GossipMenuId = 9580 WHERE entry = 27704;

-- Warcaster Fanoraithe c.28956
-- Jessa Weaver c.28958
DELETE FROM npc_gossip WHERE npc_guid IN (98417,98820);
UPDATE creature_template SET GossipMenuId = 9990 WHERE entry IN (28956,28958);


