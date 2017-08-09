-- Source: Classic-db

-- Some of these creatures already had entries in the old table, delete them.
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id IN(11608,11615,11799,11835,11939,12238,12245,12246,12340,12696,12716,12724,12736,12737,12757,12863,12997,13018,13085,13418,13420,13434,13435,13433,13442,13443,13444,13445,13447,13697,13698,13699,13716,14374,14437,14463,14726,14727,14729,14739,14781,14842,14843,14866));


-- ----------------------------
-- Bardu Sharpeye (Entry: 11608)
UPDATE creature_template SET GossipMenuId=3601, NpcFlags=NpcFlags|1 WHERE entry=11608;

DELETE FROM `gossip_menu` WHERE `entry`=3601;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(3601, 4353, 0, 0);

-- ----------------------------
-- Mickey Levine (Entry: 11615)
UPDATE creature_template SET GossipMenuId=3604, NpcFlags=NpcFlags|1 WHERE entry=11615;

DELETE FROM `gossip_menu` WHERE `entry`=3604;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(3604, 4356, 0, 0);

-- ----------------------------
-- Tajarri (Entry: 11799)
UPDATE creature_template SET GossipMenuId=4084, NpcFlags=NpcFlags|1 WHERE entry=11799;

DELETE FROM `gossip_menu` WHERE `entry`=4084;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4084, 4977, 0, 0);

-- ----------------------------
-- Theodore Griffs (Entry: 11835)
UPDATE creature_template SET GossipMenuId=3662, NpcFlags=NpcFlags|1 WHERE entry=11835;

DELETE FROM `gossip_menu` WHERE `entry`=3662;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(3662, 4474, 0, 0);

-- ----------------------------
-- Umber (Entry: 11939)
UPDATE creature_template SET GossipMenuId=5101, NpcFlags=NpcFlags|1 WHERE entry=11939;

DELETE FROM `gossip_menu` WHERE `entry`=5101;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5101, 6153, 0, 0);

-- ----------------------------
-- Zaetar's Spirit (Entry: 12238)
UPDATE creature_template SET GossipMenuId=5304, NpcFlags=NpcFlags|1 WHERE entry=12238;

DELETE FROM `gossip_menu` WHERE `entry`=5304;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5304, 6336, 0, 0);

-- ----------------------------
-- Vendor-Tron 1000 (Entry: 12245)
UPDATE creature_template SET GossipMenuId=4003, NpcFlags=NpcFlags|1 WHERE entry=12245;

DELETE FROM `gossip_menu` WHERE `entry`=4003;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4003, 4857, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=4003;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(4003, 0, 1, 'I am curious to see what a bucket of bolts has to offer.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Super-Seller 680 (Entry: 12246)
UPDATE creature_template SET GossipMenuId=4002, NpcFlags=NpcFlags|1 WHERE entry=12246;

DELETE FROM `gossip_menu` WHERE `entry`=4002;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4002, 4856, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=4002;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(4002, 0, 1, 'Let me take a look at what you have to offer.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Drulzegar Skraghook (Entry: 12340)
UPDATE creature_template SET GossipMenuId=4162, NpcFlags=NpcFlags|1 WHERE entry=12340;

DELETE FROM `gossip_menu` WHERE `entry`=4162;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4162, 5212, 0, 0);

-- ----------------------------
-- Senani Thunderheart (Entry: 12696)
UPDATE creature_template SET GossipMenuId=4346, NpcFlags=NpcFlags|1 WHERE entry=12696;

DELETE FROM `gossip_menu` WHERE `entry` IN(4346,4381,4382,4383);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4346, 5529, 0, 0),
(4381, 5593, 0, 0),
(4382, 5595, 0, 0),
(4383, 5594, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=4346;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(4346, 1, 0, 'What can you tell to me about a bear Ursangous\'s?', 1, 1, 4381, 0, 0, 0, 0, NULL, 214),
(4346, 2, 0, 'What can you tell to me about a nightsaber Shadumbra\'s?', 1, 1, 4382, 0, 0, 0, 0, NULL, 214),
(4346, 3, 0, 'What can you tell to me about a hippogryph Sharptalon\'s?', 1, 1, 4383, 0, 0, 0, 0, NULL, 214);

-- ----------------------------
-- Decedra Willham (Entry: 12716)
UPDATE creature_template SET GossipMenuId=4357, NpcFlags=NpcFlags|1 WHERE entry=12716;

DELETE FROM `gossip_menu` WHERE `entry`=4357;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4357, 5579, 0, 0);

-- ----------------------------
-- Pixel (Entry: 12724)
UPDATE creature_template SET GossipMenuId=5161, NpcFlags=NpcFlags|1 WHERE entry=12724;

DELETE FROM `gossip_menu` WHERE `entry`=5161;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5161, 6193, 0, 0);

-- ----------------------------
-- Je'neu Sancrea (Entry: 12736)
UPDATE creature_template SET GossipMenuId=4442, NpcFlags=NpcFlags|1 WHERE entry=12736;

DELETE FROM `gossip_menu` WHERE `entry`=4442;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4442, 5654, 0, 0);

-- ----------------------------
-- Mastok Wrilehiss (Entry: 12737)
UPDATE creature_template SET GossipMenuId=4441, NpcFlags=NpcFlags|1 WHERE entry=12737;

DELETE FROM `gossip_menu` WHERE `entry`=4441;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4441, 5653, 0, 0);

-- ----------------------------
-- Karang Amakkar (Entry: 12757)
UPDATE creature_template SET GossipMenuId=4401, NpcFlags=NpcFlags|1 WHERE entry=12757;

DELETE FROM `gossip_menu` WHERE `entry`=4401;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4401, 5613, 0, 0);

-- ----------------------------
-- Warsong Runner (Entry: 12863)
UPDATE creature_template SET GossipMenuId=4981, NpcFlags=NpcFlags|1 WHERE entry=12863;

DELETE FROM `gossip_menu` WHERE `entry`=4981;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4981, 6033, 0, 0);

-- ----------------------------
-- Monty (Entry: 12997)
UPDATE creature_template SET GossipMenuId=4841, NpcFlags=NpcFlags|1 WHERE entry=12997;

DELETE FROM `gossip_menu` WHERE `entry`=4841;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4841, 5894, 0, 0);

-- ----------------------------
-- Nipsy (Entry: 13018)
UPDATE creature_template SET GossipMenuId=4845, NpcFlags=NpcFlags|1 WHERE entry=13018;

DELETE FROM `gossip_menu` WHERE `entry`=4845;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4845, 5920, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=4845;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(4845, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Myrokos Silentform (Entry: 13085)
UPDATE creature_template SET GossipMenuId=4922, NpcFlags=NpcFlags|1 WHERE entry=13085;

DELETE FROM `gossip_menu` WHERE `entry`=4922;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4922, 5981, 0, 0);

-- ----------------------------
-- Kaymard Copperpinch (Entry: 13418)
UPDATE creature_template SET GossipMenuId=6768, NpcFlags=NpcFlags|1 WHERE entry=13418;

DELETE FROM `gossip_menu` WHERE `entry`=6768;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6768, 6194, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6768;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6768, 0, 1, 'Let me browse your seasonal fare.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Penney Copperpinch (Entry: 13420)
UPDATE creature_template SET GossipMenuId=5181, NpcFlags=NpcFlags|1 WHERE entry=13420;

DELETE FROM `gossip_menu` WHERE `entry`=5181;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5181, 6194, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=5181;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(5181, 0, 1, 'Let me browse your seasonal fare.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Macey Jinglepocket (Entry: 13434)
UPDATE creature_template SET GossipMenuId=5181, NpcFlags=NpcFlags|1 WHERE entry=13434;

-- ----------------------------
-- Khole Jinglepocket (Entry: 13435)
UPDATE creature_template SET GossipMenuId=5181, NpcFlags=NpcFlags|1 WHERE entry=13435;

-- ----------------------------
-- Wulmort Jinglepocket (Entry: 13433)
UPDATE creature_template SET GossipMenuId=6769, NpcFlags=NpcFlags|1 WHERE entry=13433;

DELETE FROM `gossip_menu` WHERE `entry`=6769;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6769, 6194, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6769;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6769, 0, 1, 'Let me browse your seasonal fare.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Arch Druid Renferal (Entry: 13442)
UPDATE creature_template SET GossipMenuId=5142, NpcFlags=NpcFlags|1 WHERE entry=13442;

DELETE FROM `gossip_menu` WHERE `entry`=5142;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5142, 6174, 0, 0);

-- ----------------------------
-- Druid of the Grove (Entry: 13443)
UPDATE creature_template SET GossipMenuId=5141, NpcFlags=NpcFlags|1 WHERE entry=13443;

DELETE FROM `gossip_menu` WHERE `entry`=5141;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5141, 6173, 0, 0);

-- ----------------------------
-- Greatfather Winter (Entry: 13444)
UPDATE creature_template SET GossipMenuId=5232, NpcFlags=NpcFlags|1 WHERE entry=13444;

DELETE FROM `gossip_menu` WHERE `entry`=5232;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5232, 6250, 0, 0);

-- ----------------------------
-- Great-father Winter (Entry: 13445)
UPDATE creature_template SET GossipMenuId=5232, NpcFlags=NpcFlags|1 WHERE entry=13445;

-- ----------------------------
-- Corporal Noreg Stormpike (Entry: 13447)
UPDATE creature_template SET GossipMenuId=5081, NpcFlags=NpcFlags|1 WHERE entry=13447;

DELETE FROM `gossip_menu` WHERE `entry`=5081;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5081, 6288, 0, 0);

-- ----------------------------
-- Cavindra (Entry: 13697)
UPDATE creature_template SET GossipMenuId=5521, NpcFlags=NpcFlags|1 WHERE entry=13697;

DELETE FROM `gossip_menu` WHERE `entry`=5521;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5521, 6574, 0, 0);

-- ----------------------------
-- Keeper Marandis (Entry: 13698)
UPDATE creature_template SET GossipMenuId=5302, NpcFlags=NpcFlags|1 WHERE entry=13698;

DELETE FROM `gossip_menu` WHERE `entry`=5302;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5302, 6334, 0, 0);

-- ----------------------------
-- Selendra (Entry: 13699)
UPDATE creature_template SET GossipMenuId=5303, NpcFlags=NpcFlags|1 WHERE entry=13699;

DELETE FROM `gossip_menu` WHERE `entry`=5303;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5303, 6335, 0, 0);

-- ----------------------------
-- Celebras the Redeemed (Entry: 13716)
UPDATE creature_template SET GossipMenuId=5349, NpcFlags=NpcFlags|1 WHERE entry=13716;

DELETE FROM `gossip_menu` WHERE `entry` IN(5349,5346,5347,5361);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5349, 6354, 0, 0),
(5346, 6381, 0, 0),
(5347, 6380, 0, 0),
(5361, 6393, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN(5349,5347,5346);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(5349, 0, 0, 'Please tell me more about Maraudon', 1, 1, 5347, 0, 0, 0, 0, NULL, 0),
(5347, 0, 0, 'Please tell me more about Zaetar.', 1, 1, 5346, 0, 0, 0, 0, NULL, 0),
(5346, 0, 0, 'Tell me more about Remulos and Zaetar.', 1, 1, 5361, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Scholar Runethorn (Entry: 14374)
UPDATE creature_template SET GossipMenuId=5741, NpcFlags=NpcFlags|1 WHERE entry=14374;

DELETE FROM `gossip_menu` WHERE `entry`=5741;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5741, 6917, 0, 0);

-- ----------------------------
-- Gorzeeki Wildeyes (Entry: 14437)
UPDATE creature_template SET GossipMenuId=5818, NpcFlags=NpcFlags|1 WHERE entry=14437;

DELETE FROM `gossip_menu` WHERE `entry`=5818;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5818, 6991, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=5818;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(5818, 0, 1, 'Gorzeeki, I wish to make a purchase.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Daio the Decrepit (Entry: 14463)
UPDATE creature_template SET GossipMenuId=5824, NpcFlags=NpcFlags|1 WHERE entry=14463;

DELETE FROM `gossip_menu` WHERE `entry`=5824;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5824, 6995, 0, 0);

-- ----------------------------
-- Rashona Straglash (Entry: 14726)
UPDATE creature_template SET GossipMenuId=6035, NpcFlags=NpcFlags|1 WHERE entry=14726;

DELETE FROM `gossip_menu` WHERE `entry`=6035;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6035, 7188, 0, 0);

-- ----------------------------
-- Vehena (Entry: 14727)
UPDATE creature_template SET GossipMenuId=6034, NpcFlags=NpcFlags|1 WHERE entry=14727;

DELETE FROM `gossip_menu` WHERE `entry`=6034;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6034, 7186, 0, 0);

-- ----------------------------
-- Ralston Farnsley (Entry: 14729)
UPDATE creature_template SET GossipMenuId=6036, NpcFlags=NpcFlags|1 WHERE entry=14729;

DELETE FROM `gossip_menu` WHERE `entry`=6036;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6036, 7189, 0, 0);

-- ----------------------------
-- Mystic Yayo'jin (Entry: 14739)
UPDATE creature_template SET GossipMenuId=6086, NpcFlags=NpcFlags|1 WHERE entry=14739;

DELETE FROM `gossip_menu` WHERE `entry`=6086;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6086, 7240, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6086;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6086, 0, 1, 'I would like to buy from you.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Captain Shatterskull (Entry: 14781)
UPDATE creature_template SET GossipMenuId=6524, NpcFlags=NpcFlags|1 WHERE entry=14781;

DELETE FROM `gossip_menu` WHERE `entry`=6524;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6524, 7726, 0, 0);

-- ----------------------------
-- Melnan Darkstone (Entry: 14842)
UPDATE creature_template SET GossipMenuId=6213, NpcFlags=NpcFlags|1 WHERE entry=14842;

DELETE FROM `gossip_menu` WHERE `entry` IN(6213,6222);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6213, 7375, 0, 0),
(6222, 7379, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6213;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6213, 0, 0, 'The Darkmoon Faire has arrived, you say? And where is she now?', 1, 1, 6222, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Kruban Darkblade (Entry: 14843)
UPDATE creature_template SET GossipMenuId=6214, NpcFlags=NpcFlags|1 WHERE entry=14843;

DELETE FROM `gossip_menu` WHERE `entry` IN(6214,6221);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6214, 7366, 0, 0),
(6221, 7376, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6214;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6214, 0, 0, 'When the Darkmoon Faire arrives, where will it be located?', 1, 1, 6221, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Flik's Frog (Entry: 14866)
UPDATE creature_template SET GossipMenuId=6232, NpcFlags=NpcFlags|1 WHERE entry=14866;

DELETE FROM `gossip_menu` WHERE `entry`=6232;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6232, 7406, 0, 0);




