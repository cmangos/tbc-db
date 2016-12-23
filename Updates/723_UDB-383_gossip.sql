-- Priest Trainers

-- Priestess Anetta c.375
DELETE FROM npc_gossip WHERE npc_guid = 79963;
UPDATE creature_template SET GossipMenuId = 4665 WHERE entry = 375;
DELETE FROM gossip_menu WHERE entry = 4665;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4665, 4433, 0, 112), -- Priest  
(4665, 4434, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4665;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4665','0','3','I would like to train further in the ways of the Light.','5','16','0','0','0','0','0','','0'),
('4665','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- High Priestess Laurena c.376
DELETE FROM npc_gossip WHERE npc_guid = 79963;
UPDATE creature_template SET GossipMenuId = 4666 WHERE entry = 376;
DELETE FROM gossip_menu WHERE entry = 4665;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4665, 4433, 0, 112), -- Priest  
(4665, 4434, 0, 0);

-- Priestess Josetta c.377
DELETE FROM npc_gossip WHERE npc_guid = 80347;
UPDATE creature_template SET GossipMenuId = 4666 WHERE entry = 377;

-- Branstock Khalder c.837
DELETE FROM npc_gossip WHERE npc_guid = 1023;
UPDATE creature_template SET GossipMenuId = 4680 WHERE entry = 837;
DELETE FROM gossip_menu WHERE entry = 4680;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4680, 4436, 0, 112), -- Priest  
(4680, 4435, 0, 0);

-- Maxan Anvol c.1226
DELETE FROM npc_gossip WHERE npc_guid = 206;
UPDATE creature_template SET GossipMenuId = 4680 WHERE entry = 1226;

-- Dark Cleric Duesten c.2123
DELETE FROM npc_gossip WHERE npc_guid = 28469;
UPDATE creature_template SET GossipMenuId = 3645 WHERE entry = 2123;
DELETE FROM gossip_menu WHERE entry = 3645;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3645, 4439, 0, 112), -- Priest  
(3645, 4442, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 3645;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('3645','0','3','Train me.','5','16','0','0','0','0','0','','0'),
('3645','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Dark Cleric Beryl c.2129
DELETE FROM npc_gossip WHERE npc_guid = 28477;
UPDATE creature_template SET GossipMenuId = 3645 WHERE entry = 2129;

-- Miles Welsh c.3044
DELETE FROM npc_gossip WHERE npc_guid = 26771;
UPDATE creature_template SET GossipMenuId = 4533 WHERE entry = 3044;
DELETE FROM gossip_menu WHERE entry = 4533;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4533, 4439, 0, 112), -- Priest  
(4533, 4442, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4533;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4533','0','1','I want to browse your goods.','3','128','0','0','0','0','0','','0'),
('4533','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4533','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Malakai Cross c.3045
DELETE FROM npc_gossip WHERE npc_guid = 26772;
UPDATE creature_template SET GossipMenuId = 4531 WHERE entry = 3045;
DELETE FROM gossip_menu WHERE entry = 4531;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4531, 4439, 0, 112), -- Priest  
(4531, 4442, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4531;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4531','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4531','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Father Cobb c.3046
DELETE FROM npc_gossip WHERE npc_guid = 26773;
UPDATE creature_template SET GossipMenuId = 4532 WHERE entry = 3046;
DELETE FROM gossip_menu WHERE entry = 4532;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4532, 4439, 0, 112), -- Priest  
(4532, 4442, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4532;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4532','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4532','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Shanda c.3595
DELETE FROM npc_gossip WHERE npc_guid = 46181;
UPDATE creature_template SET GossipMenuId = 4691 WHERE entry = 3595;
DELETE FROM gossip_menu WHERE entry = 4691;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4691, 4437, 0, 112), -- Priest  
(4691, 4438, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4691;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4691','0','3','I would like to train further in the ways of the Light.','5','16','0','0','0','0','0','','0'),
('4691','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Laurna Morninglight c.3600
DELETE FROM npc_gossip WHERE npc_guid = 46186;
UPDATE creature_template SET GossipMenuId = 4691 WHERE entry = 3600;

-- Tai'jin c.3706
DELETE FROM npc_gossip WHERE npc_guid = 10429;
UPDATE creature_template SET GossipMenuId = 3644 WHERE entry = 3706;
DELETE FROM gossip_menu WHERE entry = 3644;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3644, 4441, 0, 112), -- Priest  
(3644, 4440, 0, 0);

-- Ken'jai c.3707
DELETE FROM npc_gossip WHERE npc_guid = 4912;
UPDATE creature_template SET GossipMenuId = 3644 WHERE entry = 3707;

-- Astarii Starseeker c.4090
DELETE FROM npc_gossip WHERE npc_guid = 49859;
UPDATE creature_template SET GossipMenuId = 4691 WHERE entry = 4090;

-- Jandria c.4091
-- Lariia c.4092
DELETE FROM npc_gossip WHERE npc_guid IN (49903,49934);
UPDATE creature_template SET GossipMenuId = 4691 WHERE entry IN (4091,4092);

-- Aelthalyste c.4606
DELETE FROM npc_gossip WHERE npc_guid = 31866;
UPDATE creature_template SET GossipMenuId = 4544 WHERE entry = 4606;
DELETE FROM gossip_menu WHERE entry = 4544;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4544, 4439, 0, 112), -- Priest  
(4544, 4442, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4544;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4544','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4544','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Father Lankester c.4607
DELETE FROM npc_gossip WHERE npc_guid = 41835;
UPDATE creature_template SET GossipMenuId = 4545 WHERE entry = 4607;
DELETE FROM gossip_menu WHERE entry = 4545;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4545, 4439, 0, 112), -- Priest  
(4545, 4442, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4545;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4545','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4545','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Father Lazarus c.4608
DELETE FROM npc_gossip WHERE npc_guid = 31865;
UPDATE creature_template SET GossipMenuId = 4543 WHERE entry = 4608;
DELETE FROM gossip_menu WHERE entry = 4543;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4543, 4439, 0, 112), -- Priest  
(4543, 4442, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4543;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4543','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4543','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- World Priest Trainer c.4989
-- not in game

-- Theodrus Frostbeard c.5141
-- Braenna Flintcrag c.5142
-- Toldren Deepiron c.5143
DELETE FROM npc_gossip WHERE npc_guid IN (1780,1770,1772);
UPDATE creature_template SET GossipMenuId = 4680 WHERE entry IN (5141,5142,5143);

-- Brother Benjamin c.5484
DELETE FROM npc_gossip WHERE npc_guid = 37556;
UPDATE creature_template SET GossipMenuId = 4468 WHERE entry = 5484;
DELETE FROM gossip_menu WHERE entry = 4468;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4468, 4433, 0, 112), -- Priest  
(4468, 4434, 0, 0);

-- Brother Joshua c.5489
DELETE FROM npc_gossip WHERE npc_guid = 37571;
UPDATE creature_template SET GossipMenuId = 4666 WHERE entry = 5489;
DELETE FROM gossip_menu WHERE entry = 4666;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4666, 4433, 0, 112), -- Priest  
(4666, 4434, 0, 0);

-- World Undead Male Priest Trainer c.5964
-- World Undead Female Priest Trainer c.5973
-- not in game

-- X'yera c.6014
DELETE FROM npc_gossip WHERE npc_guid = 3473;
UPDATE creature_template SET GossipMenuId = 4523 WHERE entry = 6014;
DELETE FROM gossip_menu WHERE entry = 4523;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4523, 4441, 0, 112), -- Priest  
(4523, 4440, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4523;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4523','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4523','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Zayus c.5994
DELETE FROM npc_gossip WHERE npc_guid = 3615;
UPDATE creature_template SET GossipMenuId = 4522 WHERE entry = 5994;
DELETE FROM gossip_menu WHERE entry = 4522;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4522, 4441, 0, 112), -- Priest  
(4522, 4440, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4522;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4522','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4522','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Ur'kyo c.6018
DELETE FROM npc_gossip WHERE npc_guid = 3472;
UPDATE creature_template SET GossipMenuId = 4521 WHERE entry = 6018;
DELETE FROM gossip_menu WHERE entry = 4521;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4521, 4441, 0, 112), -- Priest  
(4521, 4440, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4521;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4521','1','3','Train me.','5','16','0','0','0','0','0','','0'),
('4521','2','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Nara Meideros c.11397
DELETE FROM npc_gossip WHERE npc_guid = 90480;
UPDATE creature_template SET GossipMenuId = 3643 WHERE entry = 11397;
DELETE FROM gossip_menu WHERE entry = 3643;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3643, 4437, 0, 112), -- Priest  
(3643, 4438, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 3643;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('3643','0','3','I would like to train further in the ways of the Light.','5','16','0','0','0','0','0','','0'),
('3643','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Priestess Alathea c.11401
DELETE FROM npc_gossip WHERE npc_guid = 46567;
UPDATE creature_template SET GossipMenuId = 4691 WHERE entry = 11401;
DELETE FROM gossip_menu WHERE entry = 4691;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4691, 4437, 0, 112), -- Priest  
(4691, 4438, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4691;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4691','0','3','I would like to train further in the ways of the Light.','5','16','0','0','0','0','0','','0'),
('4691','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- High Priest Rohan c.11406
DELETE FROM npc_gossip WHERE npc_guid = 1777;
UPDATE creature_template SET GossipMenuId = 3642 WHERE entry = 11406;
DELETE FROM gossip_menu WHERE entry = 3642;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(3642, 4436, 0, 112), -- Priest  
(3642, 4435, 0, 0);

-- Matron Arena c.15284
-- Ponaris c.16276
-- Aldrae c.16658
-- Lotheolan c.16659
-- Belestra c.16660
DELETE FROM npc_gossip WHERE npc_guid IN (54990,56984,57650,57651,57652);
UPDATE creature_template SET GossipMenuId = 6649 WHERE entry IN (15284,16276,16658,16659,16660);

-- Zalduun c.16502
DELETE FROM npc_gossip WHERE npc_guid = 57213;
UPDATE creature_template SET GossipMenuId = 7349 WHERE entry = 16502;
DELETE FROM gossip_menu WHERE entry = 7349;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7349, 8591, 0, 112), -- Priest  
(7349, 8768, 0, 0);

-- Caedmos c.16756
-- Guvan c.17482
-- Izmir c.17510
-- Fallat c.17511
DELETE FROM npc_gossip WHERE npc_guid IN (85628,62996,85624,85626);
UPDATE creature_template SET GossipMenuId = 7265 WHERE entry IN (16756,17482,17510,17511);
DELETE FROM gossip_menu WHERE entry = 7265;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7265, 8591, 0, 112), -- Priest  
(7265, 8592, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 7265;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('7265','0','3','I would like to train further in the ways of the Light.','5','16','0','0','0','0','0','','0'),
('7265','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','163');


-- Nuolla Dawncaller c.19247
-- not in game


