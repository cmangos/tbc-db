-- Conditions
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
-- Ogri'la
-- (10125, 5, 1038, 3, 'Has Minimum Rank Neutral With Faction ID: 1038'),
(10126, 5, 1038, 4, 'Has Minimum Rank Friendly With Faction ID: 1038'),
(10127, 5, 1038, 5, 'Has Minimum Rank Honored With Faction ID: 1038'),
(10128, 5, 1038, 6, 'Has Minimum Rank Revered With Faction ID: 1038'),
(10129, 5, 1038, 7, 'Has Minimum Rank Exalted With Faction ID: 1038'),

(10130, 30, 1038, 4, 'Has Max Rank Friendly With Faction ID: 1038'),
(10131, 30, 1038, 5, 'Has Max Rank Honored With Faction ID: 1038'),
(10132, 30, 1038, 6, 'Has Max Rank Revered With Faction ID: 1038'),
(10133, 30, 1038, 7, 'Has Max Rank Exalted With Faction ID: 1038'),
-- Chu'a'lor (Entry: 23233)
(10134, 8, 11025, 0, 'q.11025 Rewarded'),
(10135, -1, 10134, 10130, 'q.11025 Rewarded AND Has Max Rank Friendly With Faction ID: 1038'),
(10136, 8, 11058, 0, 'q.11058 Rewarded'),
(10137, -1, 10136, 10130, 'q.11058 Rewarded AND Has Max Rank Friendly With Faction ID: 1038'),
-- Torkus (Entry: 23316)
(10138, 8, 11030, 0, 'q.11030 Rewarded'),
(10139, -1, 10138, 10130, 'q.11030 Rewarded AND Has Max Rank Friendly With Faction ID: 1038'),
(10140, 8, 11061, 0, 'q.11061 Rewarded'),
(10141, -1, 10140, 10130, 'q.11061 Rewarded AND Has Max Rank Friendly With Faction ID: 1038'),
-- Gahk (Entry: 23300)
(10142, 8, 11079, 0, 'q.11079 Rewarded'),
(10143, -1, 10142, 10130, 'q.11079 Rewarded AND Has Max Rank Friendly With Faction ID: 1038'),
-- Kronk (Entry: 23253)
(10144, 8, 11026, 0, 'q.11026 Rewarded'),
(10145, -1, 10144, 10130, 'q.11026 Rewarded AND Has Max Rank Friendly With Faction ID: 1038'),
-- Jho'nass (Entry: 23428)
(10146, 8, 11091, 0, 'q.11091 Rewarded'),
(10147, -1, 10146, 10130, 'q.11091 Rewarded AND Has Max Rank Friendly With Faction ID: 1038');

-- Skyguard
DELETE FROM conditions WHERE condition_entry IN(41); -- Delete old honored condition
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
(10148, 5, 1031, 4, 'Has Minimum Rank Friendly With Faction ID: 1031'),
(10149, 5, 1031, 5, 'Has Minimum Rank Honored With Faction ID: 1031'),
(10150, 5, 1031, 6, 'Has Minimum Rank Revered With Faction ID: 1031'),
(10151, 5, 1031, 7, 'Has Minimum Rank Exalted With Faction ID: 1031'),

(10152, 30, 1031, 4, 'Has Max Rank Friendly With Faction ID: 1031'),
(10153, 30, 1031, 5, 'Has Max Rank Honored With Faction ID: 1031'),
(10154, 30, 1031, 6, 'Has Max Rank Revered With Faction ID: 1031'),
(10155, 30, 1031, 7, 'Has Max Rank Exalted With Faction ID: 1031'),
-- Sky Commander Keller (Entry: 23334)
(10156, 8, 11062, 0, 'q.11062 Rewarded'),
(10157, -1, 10156, 10152, 'q.11062 Rewarded AND Has Max Rank Friendly With Faction ID: 1031'),
-- Sky Commander Keller (Entry: 23334)
(10158, 8, 11065, 0, 'q.11065 Rewarded'),
(10159, -1, 10119, 10158, 'Bombing Run Rewarded AND q.11065 Rewarded'),
(10160, -1, 10159, 10152, 'Bombing Run Rewarded AND q.11065 Rewarded AND Has Max Rank Friendly With Faction ID: 1031'),
-- Skyguard Khatie (Entry: 23335)
(10161, -1, 10158, 10152, 'q.11062 Rewarded AND Has Max Rank Friendly With Faction ID: 1031');

-- Update menus that used the old condition
UPDATE gossip_menu_option SET condition_id=10149 WHERE menu_id=8718 AND id=1;
UPDATE gossip_menu_option SET condition_id=10149 WHERE menu_id=8719 AND id=1; -- Skyguard Handler Deesak 23415 - http://wowwiki.wikia.com/wiki/Skyguard_Handler_Deesak?direction=next&oldid=691759
UPDATE gossip_menu SET condition_id=10149 WHERE entry=8719 AND text_id=10979;

-- ----------------------------
-- Chu'a'lor (Entry: 23233)
UPDATE creature_template SET GossipMenuId=8681, NpcFlags=NpcFlags|1 WHERE entry=23233;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23233);

DELETE FROM gossip_menu WHERE entry=8681;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8681, 10926, 0, 0),
(8681, 10927, 0, 10135), -- q.11025 rewarded
(8681, 11007, 0, 10137), -- q.11058 rewarded
(8681, 11009, 0, 10127), -- Ogri'la Honored
(8681, 11010, 0, 10128), -- Ogri'la Revered
(8681, 11011, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(10926,11010);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10926, 'Welcome to Ogri''la, $c.$B$BThe ogres here have managed to gain a great mental acuity through the magical emanations of the surrounding crystals.  Though we do not fully understand how they work, we have come to appreciate our new home and only want to live in peace.$B$BUnfortunate then that the demons and ethereals, and especially the Black Dragonflight, will not leave us to that peace.', 1, 1, 1, 0),
(11010, 'Your name is beginning to be revered around here.$B$B<Chu''a''lor''s left eye pierces you with its stony gaze.>$B$BKeep up the good work, $n!', 1, 1, 0, 0);

-- ----------------------------
-- Grok (Entry: 22940)
UPDATE creature_template SET GossipMenuId=8619, NpcFlags=NpcFlags|1 WHERE entry=22940;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=22940);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8619, 10798, 0, 0);

-- ----------------------------
-- Torkus (Entry: 23316)
UPDATE creature_template SET GossipMenuId=8678, NpcFlags=NpcFlags|1 WHERE entry=23316;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23316);

DELETE FROM gossip_menu WHERE entry=8678;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8678, 10916, 0, 0),
(8678, 10917, 0, 10139), -- q.11030 rewarded, rep friendly or below
(8678, 10918, 0, 10141), -- q.11061 rewarded, rep friendly or below
(8678, 11013, 0, 10127), -- Ogri'la Honored
(8678, 11015, 0, 10128), -- Ogri'la Revered
(8678, 11018, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(10918,11013,11015,11018);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10918, 'The boy''s too stupid still to say it -- not enough crystal exposure yet -- but, he''s thankful for what you did in getting him those flasks.$B$BNow, only nine more sons to go.  Gah!$B$B<Both of Torkus''s heads sigh.>$B$BWant to take one of them off of our hands?  We''ll sell him to you cheap.', 1, 1, 5, 6),
(11013, 'It''s an honor to have a $r such as yourself aiding us ogres.  You''re keeping our hope of a better future alive.$B$BNow if we could just get rid of these headaches.  Are you sure you don''t want one of our sons?', 1, 1, 6, 0),
(11015, 'It''s amazing how much you''ve helped us out.  We dare say that if it weren''t for you, we''d already have been overrun by the demons, or fried to a crisp by the Black Dragonflight!$B$BOn a side note, we did mention that we''d sell you one of our sons, cheap, right?  No, not interested?', 1, 1, 6, 0),
(11018, 'We cannot thank you enough for everything you''ve done to protect our family, $n.$B$BAnd, you do realize that we were joking before when we offered to sell you one of our sons?  No, really... although we do feel a couple more headaches coming on.$B$BJunior, be still, will you?!', 1, 2, 6, 15);

-- ----------------------------
-- Gahk (Entry: 23300)
UPDATE creature_template SET GossipMenuId=8680, NpcFlags=NpcFlags|1 WHERE entry=23300;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23300);

DELETE FROM gossip_menu WHERE entry=8680;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8680, 10923, 0, 0),
(8680, 10924, 0, 10127), -- Ogri'la Honored
(8680, 11019, 0, 10128), -- Ogri'la Revered
(8680, 11020, 0, 10143), -- q.11079 rewarded, rep friendly or below
(8680, 11021, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(11020);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(11020, 'Gahk like little, $r $n.  Yous kill da big demon; make all da little demons scared!$B$B<Gahk''s heads both grin at you.>', 1, 1, 0, 0);

-- ----------------------------
-- Kronk (Entry: 23253)
UPDATE creature_template SET GossipMenuId=8679, NpcFlags=NpcFlags|1 WHERE entry=23253;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23253);

DELETE FROM gossip_menu WHERE entry IN(8679,8757);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8679, 10919, 0, 0),
(8679, 10920, 0, 10145), -- q.11026 rewarded, rep friendly or below
(8679, 11027, 0, 10128), -- Ogri'la Revered
(8679, 11028, 0, 10129), -- Ogri'la Exalted

(8757, 11094, 0, 0),
(8757, 11095, 0, 10128); -- Ogri'la Revered

DELETE FROM npc_text WHERE ID IN(11095,11027);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES
(11095, 'The crystal foci?  Of course we''ll explain it seeing as you only have half the brain power to figure it out.$B$BA depleted crystal focus can be combined with ten apexis shards in a simple process, which creates a charged crystal focus.  These charged foci have some healing properties, but more important is their use with a possessed demon.$B$BYou see, the charged focus can be used to enable a possessed demon to exhibit special powers.  If you have a darkrune, Gahk will speak to you about that.', 1, 6, 1, 0),
(11027, 'You''ve been making quite a name for yourself around here, $r.  Good for you.$B$BWe trust that you won''t let that go to your single head, and that you''ll still help out by banishing demons?', 1, 1, 6, 0);

-- ----------------------------
-- Sky Sergeant Vanderlip (Entry: 23120)
UPDATE creature_template SET GossipMenuId=8642, NpcFlags=NpcFlags|1 WHERE entry=23120;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23120);

DELETE FROM gossip_menu WHERE entry=8642;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8642, 10841, 0, 0),
(8642, 10992, 0, 10149), -- Skyguard Honored
(8642, 10994, 0, 10150), -- Skyguard Revered
(8642, 10995, 0, 10151); -- Skyguard Exalted

DELETE FROM npc_text WHERE ID IN(10841);
INSERT INTO `npc_text` (`ID`, `text0_1`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10841, 'You better wake up real quick, rookie.  This isn''t our cushy backyard outside of Skettis; this is the Blade''s Edge Mountains!  One false move and it''s crash and burn!', 1, 25, 0, 0);

-- ----------------------------
-- Sky Commander Keller (Entry: 23334)
UPDATE creature_template SET GossipMenuId=8669, NpcFlags=NpcFlags|1 WHERE entry=23334;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23334);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8669, 10906, 0, 0),
(8669, 10938, 0, 10160), -- bombing run and aether rays rewarded, rep friendly or below
(8669, 10988, 0, 10157), -- q.11062 rewarded, rep friendly or below
(8669, 10989, 0, 10149), -- Skyguard Honored
(8669, 10990, 0, 10150), -- Skyguard Revered
(8669, 10991, 0, 10151); -- Skyguard Exalted

DELETE FROM npc_text WHERE ID IN(10906,10988,10990,10991);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10906, 'Oh, ye like me eyepatch now do ya?  Well, just make sure that ya don''t have ta be wearing one yerself now $g boyo : girly;.', 1, 6, 0, 0),
(10988, 'Don''t ya have something better ta do, $g lad : lass; than jaw with me?$B$BNow get out there and prove yer mettle!', 1, 6, 0, 0),
(10990, 'Yer gettin'' ta be something of a revered figure ''round here, $g boy : girl;!  If''n I didn''t know better, I''d say ye were gunnin'' fer me job!!!$B$BAll the same, if ye keep up the way ye have been, ye''ll deserve it!', 1, 5, 396, 0),
(10991, 'What can I say, $N?  Yer the finest o'' the Sha''tari Skyguard!$B$BJust don''t be lettin'' that go ta yer head.  I can still teach ya a thing or two, $g lad : lass;!$B$B<Sky Commander Keller grins at you and winks.>', 1, 2, 11, 0);

-- ----------------------------
-- Aether-tech Apprentice (Entry: 23473) - Possibly doing this one in SD2?
UPDATE creature_template SET GossipMenuId=8736, NpcFlags=NpcFlags|1 WHERE entry=23473;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23473);
-- rest done in Bashir Landing release

-- ----------------------------
-- Skyguard Handler Irena (Entry: 23413)
UPDATE creature_template SET GossipMenuId=8718, NpcFlags=NpcFlags|1 WHERE entry=23413;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23413);

DELETE FROM gossip_menu WHERE entry=8718;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8718, 10977, 0, 0),
(8718, 10978, 0, 10149); -- Skyguard Honored

DELETE FROM npc_text WHERE ID IN(10977);
INSERT INTO `npc_text` (`ID`, `text0_1`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10977, 'Hey, comrade.  If you get yourself in good with the Skyguard, I can offer you a direct flight to our base, Blackwind Landing, in the Skethyl Mountains.$B$BDo you like my beautiful nether ray?  It is lovely.', 1, 6, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id=8718;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(8718, 1, 0, 'Yes, I\'d love a ride to Blackwind Landing.', 1, 1, -1, 0, 8718, 0, 0, '', 10149); -- Skyguard Honored 10149 - http://wowwiki.wikia.com/wiki/Skyguard_Handler_Irena?direction=prev&oldid=890257

-- ----------------------------
-- Skyguard Khatie (Entry: 23335)
UPDATE creature_template SET GossipMenuId=8670, NpcFlags=NpcFlags|1 WHERE entry=23335;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23335);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8670, 10907, 0, 0),
(8670, 10997, 0, 10161), -- q.11065 rewarded, rep friendly or below
(8670, 11001, 0, 10149), -- Skyguard Honored
(8670, 11002, 0, 10150), -- Skyguard Revered
(8670, 11004, 0, 10151); -- Skyguard Exalted

-- ----------------------------
-- Skyguard Pyrotechnician (Entry: 23208)
UPDATE creature_template SET GossipMenuId=8737, NpcFlags=NpcFlags|1 WHERE entry=23208;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23208);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8737, 11059, 0, 0),
(8737, 11063, 0, 10149), -- Skyguard Honored
(8737, 11061, 0, 10150), -- Skyguard Revered
(8737, 11060, 0, 10151); -- Skyguard Exalted

DELETE FROM npc_text WHERE ID IN(11059,11063,11060);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES
(11059, 'Need supplies for the field?', 1, 0, 0, 0), 
(11060, 'How can I outfit you today, sir?', 1, 66, 0, 0), -- EmoteDelay1=1 ???? 21815
(11063, 'You can never be too prepared.', 1, 1, 0, 0); -- EmoteDelay1=1, EmoteId1=0 WTF???? broadcast 21827

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8737, 0, 1, 'Let me browse your goods.', 3, 128, 0, 0, 0, 0, 0, '', 0);

-- ----------------------------
-- Jho'nass (Entry: 23428)
UPDATE creature_template SET GossipMenuId=8726, NpcFlags=NpcFlags|1 WHERE entry=23428;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23428);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8726, 11029, 0, 0),
(8726, 11035, 0, 10147), -- q.11091 rewarded, rep friendly or below
(8726, 11036, 0, 10127), -- Ogri'la Honored
(8726, 11037, 0, 10128), -- Ogri'la Revered
(8726, 11038, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(11029,11037);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES
(11029, 'You having a good time here with us in Ogri''la?$B$BWe have a lot of stuff that our ogres are making, day and night.  We save the best to sell to our coolest guests like you!$B$BSo, as you''re out there doing your thing, and making the mountains a safer place, stop by from time to time to see what we have.$B$BGood luck out there, $g man : chicky;.', 1, 1, 1, 0),
(11037, 'You''re like something of a revered figure around here, $g man : kitten;.  Seems like everyone''s talking about you.  That''s cool.$B$BLet''s see if there''s something in stock that you''re interested in.  We have a lot of nice stuff.', 1, 25, 1, 0);

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8726, 0, 1, 'Jho\'nass, let me see what you have to offer.', 3, 128, 0, 0, 0, 0, 0, '', 0);

-- ----------------------------
-- Ogri'la Merchant (Entry: 22270)
UPDATE creature_template SET GossipMenuId=8716, NpcFlags=NpcFlags|1 WHERE entry=22270;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=22270);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8716, 10965, 0, 0),
(8716, 10966, 0, 10127), -- Ogri'la Honored
(8716, 10968, 0, 10128), -- Ogri'la Revered
(8716, 10969, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(10966,10968,10969);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10966, 'Greetings $G brother:sister;. How can we be of service?', 1, 396, 0, 0), -- 21534
(10968, 'Mighty one! How can we serve you?', 1, 396, 0, 0), -- Emotedelay1=1 ??? 21536
(10969, 'We are honored by your presence, friend.  How can we serve you today?', 1, 396, 0, 0); -- see above 21537

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8716, 0, 1, 'Let me browse your goods.', 3, 128, 0, 0, 0, 0, 0, '', 0);

-- ----------------------------
-- Ogri'la Grubgiver (Entry: 22266)
UPDATE creature_template SET GossipMenuId=8717, NpcFlags=NpcFlags|1 WHERE entry=22266;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=22266);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8717, 10975, 0, 0),
(8717, 10974, 0, 10127), -- Ogri'la Honored
(8717, 10973, 0, 10128), -- Ogri'la Revered
(8717, 10972, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(10972,10974);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10972, 'Mighty one! We hope that you find our food to your satisfaction.', 1, 16, 0, 0), -- Emotedelay1=1 21538
(10974, 'Still hungry $G brother:sister;? How can we help?', 1, 396, 0, 0); -- 21540

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8717, 0, 1, 'Let me browse your goods.', 3, 128, 0, 0, 0, 0, 0, '', 0);

-- ----------------------------
-- Ogri'la Trader (Entry: 22271)
UPDATE creature_template SET GossipMenuId=8722, NpcFlags=NpcFlags|1 WHERE entry=22271;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=22271);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8722, 10999, 0, 0),
(8722, 10998, 0, 10127), -- Ogri'la Honored
(8722, 10996, 0, 10128), -- Ogri'la Revered
(8722, 10993, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(10999,10998,10996,10993);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10999, 'Friend! It''s been too long.  What can we get for you?', 1, 1, 0, 0), -- delay 21584
(10998, 'Honored $G brother:sister;, how can we help?', 1, 1, 0, 0), -- 21582
(10996, 'We are happy to provide you with supplies.', 1, 1, 0, 0), -- 21581
(10993, 'How can we be of service, exalted one?', 1, 16, 0, 0); -- 21579

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8722, 0, 1, 'Let me browse your goods.', 3, 128, 0, 0, 0, 0, 0, '', 0);

-- ----------------------------
-- Ogri'la Steelshaper (Entry: 22264)
UPDATE creature_template SET GossipMenuId=8723, NpcFlags=NpcFlags|1 WHERE entry=22264;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=22264);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8723, 11016, 0, 0),
(8723, 11014, 0, 10127), -- Ogri'la Honored
(8723, 11012, 0, 10128), -- Ogri'la Revered
(8723, 11008, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(11014,11012);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(11014, 'What is steel compared to the hand that shapes it?', 1, 396, 0, 0), -- delay 21596
(11012, 'There are few things you can trust in life. Steel, you can trust.', 1, 396, 0, 0); -- 21594

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8723, 0, 1, 'Let me browse your goods.', 3, 128, 0, 0, 0, 0, 0, '', 0);

-- ----------------------------
-- Mingo (Entry: 23112)
UPDATE creature_template SET GossipMenuId=8724, NpcFlags=NpcFlags|1 WHERE entry=23112;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23112);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8724, 11025, 0, 0),
(8724, 11024, 0, 10127), -- Ogri'la Honored
(8724, 11023, 0, 10128), -- Ogri'la Revered
(8724, 11022, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(11024,11023,11022);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(11024, 'Honored $G brother:sister;, how may we help?', 1, 396, 0, 0), -- delay 21608
(11023, 'How might we be of assistance?', 1, 1, 0, 0), -- 21605
(11022, 'What can we get for you, our exalted $G brother:sister;?', 1, 16, 0, 0); -- 21604

-- ----------------------------
-- Ogri'la Keg King (Entry: 23110)
UPDATE creature_template SET GossipMenuId=8721, NpcFlags=NpcFlags|1 WHERE entry=23110;
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=23110);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8721, 10986, 0, 0),
(8721, 10985, 0, 10127), -- Ogri'la Honored
(8721, 10984, 0, 10128), -- Ogri'la Revered
(8721, 10983, 0, 10129); -- Ogri'la Exalted

DELETE FROM npc_text WHERE ID IN(10986,10985,10984,10983);
INSERT INTO `npc_text` (`ID`, `text0_0`, `prob0`, `em0_1`, `em0_3`, `em0_5`) VALUES 
(10986, 'Our drinks should quench even the mightiest of thirsts.', 1, 396, 0, 0), -- 21571
(10985, 'Greetings $G brother:sister;, how can we help?', 1, 396, 0, 0), -- 21570
(10984, 'Everyone''s gotta drink. What can we get for you?', 1, 396, 0, 0), -- 21568
(10983, 'We''ll let you in on our secret diet: Cocktails and dreams. We can help you with one.', 1, 396, 0, 0); -- 21565

