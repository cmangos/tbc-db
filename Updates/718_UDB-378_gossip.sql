-- Warrior Trainers

-- Llane Beshere c.911
DELETE FROM npc_gossip WHERE npc_guid = 79964;
DELETE FROM gossip_menu WHERE entry = 4650;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4650, 5721, 0, 0), -- all 
(4650, 1216, 0, 293); -- warrior only

-- Thran Khorman c.912
DELETE FROM npc_gossip WHERE npc_guid = 406;
DELETE FROM gossip_menu WHERE entry = 4684;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4684, 5724, 0, 0), -- all 
(4684, 1215, 0, 293); -- warrior only

-- Lyria Du Lac   c.913
-- Ander Germaine c.914
DELETE FROM npc_gossip WHERE npc_guid = 80333;
UPDATE creature_template SET GossipMenuId = 4649 WHERE entry = 913;
DELETE FROM gossip_menu WHERE entry = 4649;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4649, 5721, 0, 0), -- all 
(4649, 1216, 0, 293); -- warrior only

-- Malosh c.985
DELETE FROM npc_gossip WHERE npc_guid = 34156;
UPDATE creature_template SET GossipMenuId = 523 WHERE entry = 985;
DELETE FROM gossip_menu WHERE entry = 523;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(523, 4985, 0, 0), -- all 
(523, 1040, 0, 293); -- warrior only

-- Granis Swiftaxe c.1229
DELETE FROM npc_gossip WHERE npc_guid = 196;
DELETE FROM gossip_menu WHERE entry = 4683;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4683, 5724, 0, 0), -- all 
(4683, 1215, 0, 293); -- warrior only

-- Mogwah c.1403
-- not in game

-- Kelstrum Stonebreaker c.1901
DELETE FROM npc_gossip WHERE npc_guid = 83;
DELETE FROM gossip_menu WHERE entry = 4569;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4569, 5724, 0, 0), -- all 
(4569, 1215, 0, 293); -- warrior only

-- Dannal Stern c.2119
DELETE FROM npc_gossip WHERE npc_guid = 28464;
UPDATE creature_template SET GossipMenuId = 4653 WHERE entry = 2119;
DELETE FROM gossip_menu WHERE entry = 4653;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4653, 4984, 0, 0), -- all 
(4653, 1219, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4653;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4653,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4653,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Austil de Mon c.2131
DELETE FROM npc_gossip WHERE npc_guid = 33720;
UPDATE creature_template SET GossipMenuId = 656 WHERE entry = 2131;
DELETE FROM gossip_menu WHERE entry = 656;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(656, 4984, 0, 0), -- all 
(656, 1219, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 656;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(656,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(656,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Torm Ragetotem c.3041
DELETE FROM npc_gossip WHERE npc_guid = 26759;
DELETE FROM gossip_menu WHERE entry = 4526;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4526, 4973, 0, 0), -- all 
(4526, 1218, 0, 293); -- warrior only

-- Sark Ragetotem c.3042
DELETE FROM npc_gossip WHERE npc_guid = 26768;
DELETE FROM gossip_menu WHERE entry = 4525;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4525, 4973, 0, 0), -- all 
(4525, 1218, 0, 293); -- warrior only

-- Ker Ragetotem c.3043
DELETE FROM npc_gossip WHERE npc_guid = 26770;
DELETE FROM gossip_menu WHERE entry = 4527;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4527, 4973, 0, 0), -- all 
(4527, 1218, 0, 293); -- warrior only

-- Harutt Thunderhorn c.3059
DELETE FROM npc_gossip WHERE npc_guid = 26897;
DELETE FROM gossip_menu WHERE entry = 4645;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4645, 4973, 0, 0), -- all 
(4645, 1218, 0, 293); -- warrior only

-- Krang Stonehoof c.3063
DELETE FROM npc_gossip WHERE npc_guid = 26902;
DELETE FROM gossip_menu WHERE entry = 655;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(655, 4973, 0, 0), -- all 
(655, 1218, 0, 293); -- warrior only

-- Frang c.3153
-- Tarshaw Jaggedscar c.3169
DELETE FROM npc_gossip WHERE npc_guid IN (7291,7651);
UPDATE creature_template SET GossipMenuId = 523 WHERE entry IN (3153,3169);
DELETE FROM gossip_menu WHERE entry = 523;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(523, 4985, 0, 0), -- all 
(523, 1040, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 523;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(523,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(523,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Grezz Ragefist c.3353
DELETE FROM npc_gossip WHERE npc_guid = 7971;
UPDATE creature_template SET GossipMenuId = 4509 WHERE entry = 3353;
DELETE FROM gossip_menu WHERE entry = 4509;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4509, 4985, 0, 0), -- all 
(4509, 1040, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4509;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4509,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4509,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Sorek c.3354
DELETE FROM npc_gossip WHERE npc_guid = 7443;
UPDATE creature_template SET GossipMenuId = 4511 WHERE entry = 3354;
DELETE FROM gossip_menu WHERE entry = 4511;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4511, 4985, 0, 0), -- all 
(4511, 1040, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4511;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4511,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4511,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Zel'mak c.3408
DELETE FROM npc_gossip WHERE npc_guid = 6610;
UPDATE creature_template SET GossipMenuId = 4510 WHERE entry = 3408;
DELETE FROM gossip_menu WHERE entry = 4510;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4510, 4986, 0, 0), -- all 
(4510, 4987, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4510;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4510,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4510,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Alyissia c.3593
DELETE FROM npc_gossip WHERE npc_guid = 46178;
UPDATE creature_template SET GossipMenuId = 4697 WHERE entry = 3593;
DELETE FROM gossip_menu WHERE entry = 4697;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4697, 5725, 0, 0), -- all 
(4697, 1217, 0, 293); -- warrior only

-- Kyra Windblade c.3598
-- Arias'ta Bladesinger c.4087
-- Darnath Bladesinger c.7315
DELETE FROM npc_gossip WHERE npc_guid IN (46184,46809,49851);
UPDATE creature_template SET GossipMenuId = 4697 WHERE entry IN (3598,4087,7315);

-- Sildanair c.4089
UPDATE creature_template SET GossipMenuId = 4578 WHERE entry = 4089;
DELETE FROM gossip_menu WHERE entry = 4578;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4578, 5725, 0, 0), -- all 
(4578, 1217, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4578;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4578,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4578,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Christoph Walker c.4593
DELETE FROM npc_gossip WHERE npc_guid = 31897;
UPDATE creature_template SET GossipMenuId = 4548 WHERE entry = 4593;
DELETE FROM gossip_menu WHERE entry = 4548;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4548, 4984, 0, 0), -- all 
(4548, 1219, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4548;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4548,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4548,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Angela Curthas c.4594
DELETE FROM npc_gossip WHERE npc_guid = 41841;
UPDATE creature_template SET GossipMenuId = 4546 WHERE entry = 4594;
DELETE FROM gossip_menu WHERE entry = 4546;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4546, 4984, 0, 0), -- all 
(4546, 1219, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4546;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4546,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4546,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Baltus Fowler c.4595
DELETE FROM npc_gossip WHERE npc_guid = 38128;
UPDATE creature_template SET GossipMenuId = 4547 WHERE entry = 4595;
DELETE FROM gossip_menu WHERE entry = 4547;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4547, 4984, 0, 0), -- all 
(4547, 1219, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4547;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4547,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4547,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- World Warrior Trainer c.4992
-- not in game

-- Kelv Sternhammer c.5113
DELETE FROM npc_gossip WHERE npc_guid = 2019;
UPDATE creature_template SET GossipMenuId = 4570 WHERE entry = 5113;
DELETE FROM gossip_menu WHERE entry = 4570;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4570, 5724, 0, 0), -- all 
(4570, 1217, 0, 293); -- warrior only
DELETE FROM gossip_menu_option WHERE menu_id = 4570;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4570,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4570,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Bilban Tosslespanner c.5114
DELETE FROM npc_gossip WHERE npc_guid = 84;
UPDATE creature_template SET GossipMenuId = 4568 WHERE entry = 5114;
DELETE FROM gossip_menu WHERE entry = 4568;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4568, 4988, 0, 0), -- all 
(4568, 4989, 0, 293); -- warrior only

-- Wu Shen c.5479
DELETE FROM npc_gossip WHERE npc_guid = 79779;
UPDATE creature_template SET GossipMenuId = 4482 WHERE entry = 5479;
DELETE FROM gossip_menu WHERE entry = 4482;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4482, 5721, 0, 0), -- all 
(4482, 1216, 0, 293); -- warrior only

-- Ilsa Corbin c.5480
DELETE FROM npc_gossip WHERE npc_guid = 79778;
UPDATE creature_template SET GossipMenuId = 4649 WHERE entry = 5480;

-- World Dwarf Male Warrior Trainer c.5959
-- World Night Elf Male Warrior Trainer c.5966
-- World Dwarf Female Warrior Trainer c.5967
-- all not in game

-- Captain Evencane c.8141
DELETE FROM npc_gossip WHERE npc_guid = 30650;
UPDATE creature_template SET GossipMenuId = 4091 WHERE entry = 8141;
DELETE FROM gossip_menu WHERE entry = 4091;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4091, 4991, 0, 0), 
(4091, 4992, 0, 293),
(4091, 4993, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 4091;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(4091,0,3,'I require warrior training.',5,16,0,0,0,0,0,'',0),
(4091,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',133);


-- Krysteea c.10291
-- not in game

-- Kore c.16503
DELETE FROM npc_gossip WHERE npc_guid = 84574;
UPDATE creature_template SET GossipMenuId = 7263 WHERE entry = 16503;
DELETE FROM gossip_menu WHERE entry = 7263;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7263, 8588, 0, 0), -- all 
(7263, 8587, 0, 293); -- warrior only

-- Ahonan c.16771
DELETE FROM npc_gossip WHERE npc_guid = 85590;
UPDATE creature_template SET GossipMenuId = 7263 WHERE entry = 16771;

-- Behomat c.17120
DELETE FROM npc_gossip WHERE npc_guid = 85589;
UPDATE creature_template SET GossipMenuId = 7263 WHERE entry = 17120;

-- Ruada c.17480
DELETE FROM npc_gossip WHERE npc_guid = 62994;
UPDATE creature_template SET GossipMenuId = 7263 WHERE entry = 17480;

-- Kazi c.17504
DELETE FROM npc_gossip WHERE npc_guid = 63005;
UPDATE creature_template SET GossipMenuId = 7263 WHERE entry = 17504;


