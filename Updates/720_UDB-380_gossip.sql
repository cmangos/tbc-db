-- Hunter Trainers

-- Thorgas Grimson c.895
DELETE FROM npc_gossip WHERE npc_guid = 407;
UPDATE creature_template SET GossipMenuId = 4675 WHERE entry = 895;
DELETE FROM gossip_menu WHERE entry = 4675;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4675, 5000, 0, 0),     
(4675, 4999, 0, 15); -- hunter

-- [UNUSED] Brannon Aybara (TEMP) c.897
-- not in game

-- Ogromm c.987
DELETE FROM npc_gossip WHERE npc_guid = 31949;
UPDATE creature_template SET GossipMenuId = 4101 WHERE entry = 987;
DELETE FROM gossip_menu WHERE entry = 4101;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4101, 5001, 0, 15), -- hunter    
(4101, 5002, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4101;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4101','0','3','I seek training in the ways of the Hunter.','5','16','0','0','0','0','0','','0'),
('4101','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Grif Wildheart c.1231
DELETE FROM npc_gossip WHERE npc_guid = 222;
UPDATE creature_template SET GossipMenuId = 4007 WHERE entry = 1231;
DELETE FROM gossip_menu WHERE entry = 4007;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4007, 4999, 0, 15), -- hunter  
(4007, 5000, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4007;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4007','0','3','I seek training in the ways of the Hunter.','5','16','0','0','0','0','0','','0'),
('4007','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Kragg c.1404
DELETE FROM npc_gossip WHERE npc_guid = 364;
UPDATE creature_template SET GossipMenuId = 4657 WHERE entry = 1404;
DELETE FROM gossip_menu WHERE entry = 4657;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4657, 5001, 0, 15), -- hunter    
(4657, 5002, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4657;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4657','0','3','I seek training in the ways of the Hunter.','5','16','0','0','0','0','0','','0'),
('4657','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Undead Hunter Trainer c.2218
-- not in game

-- Kary Thunderhorn c.3038
DELETE FROM npc_gossip WHERE npc_guid = 26755;
UPDATE creature_template SET GossipMenuId = 4011 WHERE entry = 3038;
DELETE FROM gossip_menu WHERE entry = 4011;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4011, 4867, 0, 15), -- hunter    
(4011, 4998, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4011;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4011','0','3','I seek training in the ways of the Hunter.','5','16','0','0','0','0','0','','0'),
('4011','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Holt Thunderhorn c.3039
DELETE FROM npc_gossip WHERE npc_guid = 26756;
UPDATE creature_template SET GossipMenuId = 4023 WHERE entry = 3039;
DELETE FROM gossip_menu WHERE entry = 4023;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4023, 4868, 0, 15), -- hunter    
(4023, 4996, 0, 0);

-- Urek Thunderhorn c.3040
DELETE FROM npc_gossip WHERE npc_guid = 26758;
UPDATE creature_template SET GossipMenuId = 4524 WHERE entry = 3040;
DELETE FROM gossip_menu WHERE entry = 4524;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4524, 4997, 0, 15), -- hunter    
(4524, 4998, 0, 0);

-- Lanka Farshot c.3061
DELETE FROM npc_gossip WHERE npc_guid = 26899;
UPDATE creature_template SET GossipMenuId = 4647 WHERE entry = 3061;
DELETE FROM gossip_menu WHERE entry = 4647;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4647, 4997, 0, 15), -- hunter    
(4647, 4998, 0, 0);

-- Yaw Sharpmane c.3065
DELETE FROM npc_gossip WHERE npc_guid = 26905;
UPDATE creature_template SET GossipMenuId = 4012 WHERE entry = 3065;
DELETE FROM gossip_menu WHERE entry = 4012;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4012, 4868, 0, 15), -- hunter    
(4012, 4998, 0, 0);

-- Jen'shan c.3154
DELETE FROM npc_gossip WHERE npc_guid = 7649;
UPDATE creature_template SET GossipMenuId = 4648 WHERE entry = 3154;
DELETE FROM gossip_menu WHERE entry = 4648;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4648, 4987, 0, 15), -- hunter    
(4648, 5004, 0, 0);

-- Thotar c.3171
DELETE FROM npc_gossip WHERE npc_guid = 7293;
UPDATE creature_template SET GossipMenuId = 4017 WHERE entry = 3171;
DELETE FROM gossip_menu WHERE entry = 4017;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4017, 4888, 0, 15), -- hunter    
(4017, 4998, 0, 0);

-- Ormak Grimshot c.3352
DELETE FROM npc_gossip WHERE npc_guid = 7449;
UPDATE creature_template SET GossipMenuId = 4010 WHERE entry = 3352;
DELETE FROM gossip_menu WHERE entry = 4010;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4010, 4866, 0, 15), -- hunter    
(4010, 5003, 0, 0);

-- Xor'juul c.3406
DELETE FROM npc_gossip WHERE npc_guid = 7972;
UPDATE creature_template SET GossipMenuId = 4506 WHERE entry = 3406;
DELETE FROM gossip_menu WHERE entry = 4506;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4506, 4987, 0, 15), -- hunter    
(4506, 5004, 0, 0);

-- Sian'dur c.3407
DELETE FROM npc_gossip WHERE npc_guid = 6620;
UPDATE creature_template SET GossipMenuId = 4506 WHERE entry = 3407;

-- Ayanna Everstride c.3596
DELETE FROM npc_gossip WHERE npc_guid = 46182;
UPDATE creature_template SET GossipMenuId = 4695 WHERE entry = 3596;
DELETE FROM gossip_menu WHERE entry = 4695;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4695, 4863, 0, 15), -- hunter    
(4695, 4993, 0, 0);

-- Dazalar c.3601
DELETE FROM npc_gossip WHERE npc_guid = 46188;
UPDATE creature_template SET GossipMenuId = 4009 WHERE entry = 3601;
DELETE FROM gossip_menu WHERE entry = 4009;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4009, 4316, 0, 15), -- hunter    
(4009, 4993, 0, 0);

-- Danlaar Nightstride c.3963
DELETE FROM npc_gossip WHERE npc_guid = 32703;
UPDATE creature_template SET GossipMenuId = 4092 WHERE entry = 3963;
DELETE FROM gossip_menu WHERE entry = 4092;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4092, 4867, 0, 15), -- hunter    
(4092, 4993, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4092;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4092','0','3','I seek training in the ways of the Hunter.','5','16','0','0','0','0','0','','0'),
('4092','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Jeen'ra Nightrunner c.4138
DELETE FROM npc_gossip WHERE npc_guid = 46217;
UPDATE creature_template SET GossipMenuId = 4621 WHERE entry = 4138;
DELETE FROM gossip_menu WHERE entry = 4621;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4621, 4994, 0, 15), -- hunter    
(4621, 4993, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4621;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4621','0','3','I\'d like to train.','5','16','0','0','0','0','0','','0'),
('4621','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Jocaste c.4146
DELETE FROM npc_gossip WHERE npc_guid = 46221;
UPDATE creature_template SET GossipMenuId = 4008 WHERE entry = 4146;

-- Dorion c.4205
DELETE FROM npc_gossip WHERE npc_guid = 46415;
UPDATE creature_template SET GossipMenuId = 4693 WHERE entry = 4205;
DELETE FROM gossip_menu WHERE entry = 4693;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4693, 6160, 0, 15), -- hunter    
(4693, 4993, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4693;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4693','0','3','I\'d like to train.','5','16','0','0','0','0','0','','0'),
('4693','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- World Hunter Trainer c.4986
-- not in game

-- Daera Brightspear c.5115
DELETE FROM npc_gossip WHERE npc_guid = 2020;
UPDATE creature_template SET GossipMenuId = 4549 WHERE entry = 5115;
DELETE FROM gossip_menu WHERE entry = 4549;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4549, 4999, 0, 15), -- hunter    
(4549, 5000, 0, 0);

-- Olmin Burningbeard c.5116
DELETE FROM npc_gossip WHERE npc_guid = 87;
UPDATE creature_template SET GossipMenuId = 4550 WHERE entry = 5116;
DELETE FROM gossip_menu WHERE entry = 4550;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4550, 4890, 0, 15), -- hunter    
(4550, 5000, 0, 0);

-- Regnus Thundergranite c.5117
DELETE FROM npc_gossip WHERE npc_guid = 82;
UPDATE creature_template SET GossipMenuId = 4551 WHERE entry = 5117;
DELETE FROM gossip_menu WHERE entry = 4551;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4551, 4999, 0, 15), -- hunter    
(4551, 5000, 0, 0);

-- Kaerbrus c.5501
DELETE FROM npc_gossip WHERE npc_guid = 39666;
UPDATE creature_template SET GossipMenuId = 4694 WHERE entry = 5501;
DELETE FROM gossip_menu WHERE entry = 4694;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4694, 6160, 0, 15), -- hunter    
(4694, 4993, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4694;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4694','0','3','I\'d like to train.','5','16','0','0','0','0','0','','0'),
('4694','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Einris Brightspear c.5515
DELETE FROM npc_gossip WHERE npc_guid = 37608;
UPDATE creature_template SET GossipMenuId = 4474 WHERE entry = 5515;
DELETE FROM gossip_menu WHERE entry = 4474;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4474, 4893, 0, 15), -- hunter    
(4474, 5000, 0, 0);

-- Ulfir Ironbeard c.5516
DELETE FROM npc_gossip WHERE npc_guid = 37609;
UPDATE creature_template SET GossipMenuId = 4473 WHERE entry = 5516;
DELETE FROM gossip_menu WHERE entry = 4473;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4473, 4893, 0, 15), -- hunter    
(4473, 5000, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4473;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4473','0','3','I\'d like to train.','5','16','0','0','0','0','0','','0'),
('4473','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Thorfin Stoneshield c.5517
DELETE FROM npc_gossip WHERE npc_guid = 37609;
UPDATE creature_template SET GossipMenuId = 4472 WHERE entry = 5517;
DELETE FROM gossip_menu WHERE entry = 4472;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4472, 4893, 0, 15), -- hunter    
(4472, 5000, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4472;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4472','0','3','I\'d like to train.','5','16','0','0','0','0','0','','0'),
('4472','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Alenndaar Lapidaar c.8308
DELETE FROM npc_gossip WHERE npc_guid = 32678;
UPDATE creature_template SET GossipMenuId = 4092 WHERE entry = 8308;
DELETE FROM gossip_menu WHERE entry = 4092;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4092, 4867, 0, 15), -- hunter    
(4092, 4993, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4092;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4092','0','3','I\'d like to train.','5','16','0','0','0','0','0','','0'),
('4092','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Dargh Trueaim c.10930
DELETE FROM npc_gossip WHERE npc_guid = 8277;
UPDATE creature_template SET GossipMenuId = 4674 WHERE entry = 10930;
DELETE FROM gossip_menu WHERE entry = 4674;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4674, 4999, 0, 15), -- hunter    
(4674, 5000, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4674;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('4674','0','3','I seek training in the ways of the Hunter.','5','16','0','0','0','0','0','','0'),
('4674','1','0','I wish to unlearn my talents.','1','1','4461','0','0','0','0','','135');


-- Ranger Sallina c.15513
DELETE FROM npc_gossip WHERE npc_guid = 55431;
UPDATE creature_template SET GossipMenuId = 6652 WHERE entry = 15513;

-- Hannovia c.16270
DELETE FROM npc_gossip WHERE npc_guid = 56979;
UPDATE creature_template SET GossipMenuId = 6652 WHERE entry = 16270;

-- Keilnei c.16499
DELETE FROM npc_gossip WHERE npc_guid = 84585;
UPDATE creature_template SET GossipMenuId = 7262 WHERE entry = 16499;
DELETE FROM gossip_menu WHERE entry = 7262;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7262, 8585, 0, 15), -- hunter    
(7262, 8586, 0, 0);

-- Tana c.16672
DELETE FROM npc_gossip WHERE npc_guid = 87662;
UPDATE creature_template SET GossipMenuId = 6652 WHERE entry = 16672;

-- Oninath c.16673
DELETE FROM npc_gossip WHERE npc_guid = 57663;
UPDATE creature_template SET GossipMenuId = 6652 WHERE entry = 16673;

-- Zandine c.16674
DELETE FROM npc_gossip WHERE npc_guid = 57664;
UPDATE creature_template SET GossipMenuId = 6652 WHERE entry = 16674;

-- Deremiis c.16738
DELETE FROM npc_gossip WHERE npc_guid = 57737;
UPDATE creature_template SET GossipMenuId = 7262 WHERE entry = 16738;

-- Acteon c.17110
-- redone in prev paths.

-- Vord c.17122
DELETE FROM npc_gossip WHERE npc_guid = 59521; 
UPDATE creature_template SET GossipMenuId = 7262 WHERE entry = 17122;

-- Killac c.17505
DELETE FROM npc_gossip WHERE npc_guid = 63006;
UPDATE creature_template SET GossipMenuId = 7262 WHERE entry = 17505;

