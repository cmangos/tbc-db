-- Source: Classic-db

-- Some of these creatures already had entries in the old table, delete them.
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id IN(658,1304,1311,1324,1325,1326,1348,1349,1350,1694,2393,2980,3305,3387,3433,3628,3885,4631,4895,4926,6586,6729,7010,7207,7363,7505,7506,7776,7875,8359,8441,8659,9034,9035,9036,9040,9076,9118,9299,9990,10136,10781,10837,11040,11317));


-- ----------------------------
-- Sten Stoutarm (Entry: 658)
UPDATE creature_template SET GossipMenuId=4047, NpcFlags=NpcFlags|1 WHERE entry=658;

DELETE FROM `npc_gossip` WHERE `npc_guid`=351;

DELETE FROM `gossip_menu` WHERE `entry`=4047;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4047, 4937, 0, 0);

-- ----------------------------
-- Darian Singh (Entry: 1304)
UPDATE creature_template SET GossipMenuId=682, NpcFlags=NpcFlags|1 WHERE entry=1304;

DELETE FROM `gossip_menu` WHERE `entry`=682;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(682, 1232, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=682;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(682, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Joachim Brenlow (Entry: 1311)
UPDATE creature_template SET GossipMenuId=700, NpcFlags=NpcFlags|1 WHERE entry=1311;

DELETE FROM `gossip_menu` WHERE `entry`=700;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(700, 1252, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=700;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(700, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Heinrich Stone (Entry: 1324)
UPDATE creature_template SET GossipMenuId=690, NpcFlags=NpcFlags|1 WHERE entry=1324;

DELETE FROM `gossip_menu` WHERE `entry`=690;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(690, 1240, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=690;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(690, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Jasper Fel (Entry: 1325)
UPDATE creature_template SET GossipMenuId=706, NpcFlags=NpcFlags|1 WHERE entry=1325;

DELETE FROM `gossip_menu` WHERE `entry`=706;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(706, 1258, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=706;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(706, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Sloan McCoy (Entry: 1326)
UPDATE creature_template SET GossipMenuId=705, NpcFlags=NpcFlags|1 WHERE entry=1326;

DELETE FROM `gossip_menu` WHERE `entry`=705;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(705, 1257, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=705;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(705, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Gregory Ardus (Entry: 1348)
UPDATE creature_template SET GossipMenuId=691, NpcFlags=NpcFlags|1 WHERE entry=1348;

DELETE FROM `gossip_menu` WHERE `entry`=691;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(691, 1241, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=691;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(691, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Agustus Moulaine (Entry: 1349)
UPDATE creature_template SET GossipMenuId=691, NpcFlags=NpcFlags|1 WHERE entry=1349;

-- ----------------------------
-- Theresa Moulaine (Entry: 1350)
UPDATE creature_template SET GossipMenuId=691, NpcFlags=NpcFlags|1 WHERE entry=1350;

-- ----------------------------
-- Loslor Rudge (Entry: 1694)
UPDATE creature_template SET GossipMenuId=3501, NpcFlags=NpcFlags|1 WHERE entry=1694;

DELETE FROM `gossip_menu` WHERE `entry`=3501;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(3501, 4253, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=3501;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(3501, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Christoph Jeffcoat (Entry: 2393)
UPDATE creature_template SET GossipMenuId=5542, NpcFlags=NpcFlags|1 WHERE entry=2393;

DELETE FROM `gossip_menu` WHERE `entry`=5542;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5542, 6595, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=5542;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(5542, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Grull Hawkwind (Entry: 2980)
UPDATE creature_template SET GossipMenuId=4045, NpcFlags=NpcFlags|1 WHERE entry=2980;

DELETE FROM `gossip_menu` WHERE `entry`=4045;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4045, 4935, 0, 0);

-- ----------------------------
-- Grisha (Entry: 3305)
UPDATE creature_template SET GossipMenuId=5968, NpcFlags=NpcFlags|1 WHERE entry=3305;

DELETE FROM `gossip_menu` WHERE `entry`=5968;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5968, 7123, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=5968 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(5968, 0, 2, 'I need a ride.', 4, 8192, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Jorn Skyseer (Entry: 3387)
UPDATE creature_template SET GossipMenuId=1242, NpcFlags=NpcFlags|1 WHERE entry=3387;

DELETE FROM `gossip_menu` WHERE `entry`=1242;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(1242, 1875, 0, 0);

-- ----------------------------
-- Tatternack Steelforge (Entry: 3433)
UPDATE creature_template SET GossipMenuId=2942, NpcFlags=NpcFlags|1 WHERE entry=3433;

DELETE FROM `gossip_menu` WHERE `entry`=2942;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(2942, 3654, 0, 0);

-- ----------------------------
-- Steven Lohan (Entry: 3628)
UPDATE creature_template SET GossipMenuId=341, NpcFlags=NpcFlags|1 WHERE entry=3628;

DELETE FROM `gossip_menu` WHERE `entry`=341;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(341, 820, 0, 0);

-- ----------------------------
-- Sentinel Velene Starstrike (Entry: 3885)
UPDATE creature_template SET GossipMenuId=2561, NpcFlags=NpcFlags|1 WHERE entry=3885;

DELETE FROM `gossip_menu` WHERE `entry`=2561;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(2561, 3233, 0, 0);

-- ----------------------------
-- Wharfmaster Lozgil (Entry: 4631)
UPDATE creature_template SET GossipMenuId=4701, NpcFlags=NpcFlags|1 WHERE entry=4631;

DELETE FROM `gossip_menu` WHERE `entry`=4701;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4701, 5753, 0, 0);

-- ----------------------------
-- Smiling Jim (Entry: 4895)
UPDATE creature_template SET GossipMenuId=541, NpcFlags=NpcFlags|1 WHERE entry=4895;

DELETE FROM `gossip_menu` WHERE `entry`=541;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(541, 1058, 0, 0);

-- ----------------------------
-- Krog (Entry: 4926)
UPDATE creature_template SET GossipMenuId=1186, NpcFlags=NpcFlags|1 WHERE entry=4926;

DELETE FROM `gossip_menu` WHERE `entry` IN(1186,1187,1188);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(1186, 1818, 0, 0),
(1187, 1819, 0, 0),
(1188, 1820, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=1186;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(1186, 0, 0, 'The Burning Inn.', 1, 1, 1187, 0, 0, 0, 0, NULL, 0),
(1186, 1, 0, 'Paval Reethe.', 1, 1, 1188, 0, 0, 0, 0, NULL, 501);

DELETE FROM `conditions` WHERE `condition_entry`=501;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(501, 8, 1269, 0);

-- ----------------------------
-- Rokar Bladeshadow (Entry: 6586)
UPDATE creature_template SET GossipMenuId=181, NpcFlags=NpcFlags|1 WHERE entry=6586;

DELETE FROM `gossip_menu` WHERE `entry`=181;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(181, 678, 0, 0);

-- ----------------------------
-- Morridune (Entry: 6729)
UPDATE creature_template SET GossipMenuId=321, NpcFlags=NpcFlags|1, FactionAlliance=80, FactionHorde=80 WHERE entry=6729;

DELETE FROM `gossip_menu` WHERE `entry`=321;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(321, 818, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=321;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(321, 0, 0, 'Please port me to Darnassus.', 1, 1, 0, 0, 321, 0, 0, '', 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id`=321;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(321, 0, 15, 9268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Teleport to Darnassus');

-- ----------------------------
-- Zilzibin Drumlore (Entry: 7010)
UPDATE creature_template SET GossipMenuId=6229, NpcFlags=NpcFlags|1 WHERE entry=7010;

DELETE FROM `gossip_menu` WHERE `entry`=6229;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6229, 7403, 0, 0);

-- ----------------------------
-- Doc Mixilpixil (Entry: 7207)
UPDATE creature_template SET GossipMenuId=5763, NpcFlags=NpcFlags|1 WHERE entry=7207;

DELETE FROM `gossip_menu` WHERE `entry`=5763;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5763, 6948, 0, 0);

-- ----------------------------
-- Kum'isha the Collector (Entry: 7363)
UPDATE creature_template SET GossipMenuId=752, NpcFlags=NpcFlags|1 WHERE entry=7363;

DELETE FROM `gossip_menu` WHERE `entry`=752;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(752, 1302, 0, 0);

-- ----------------------------
-- Bloodmage Drazial (Entry: 7505)
UPDATE creature_template SET GossipMenuId=800, NpcFlags=NpcFlags|1 WHERE entry=7505;

DELETE FROM `gossip_menu` WHERE `entry`=800;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(800, 1351, 0, 0);

-- ----------------------------
-- Bloodmage Lynnore (Entry: 7506)
UPDATE creature_template SET GossipMenuId=820, NpcFlags=NpcFlags|1 WHERE entry=7506;

DELETE FROM `gossip_menu` WHERE `entry`=820;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(820, 1371, 0, 0);

-- ----------------------------
-- Talo Thornhoof (Entry: 7776)
UPDATE creature_template SET GossipMenuId=2851, NpcFlags=NpcFlags|1 WHERE entry=7776;

DELETE FROM `gossip_menu` WHERE `entry`=2851;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(2851, 3545, 0, 0);

-- ----------------------------
-- Hadoken Swiftstrider (Entry: 7875)
UPDATE creature_template SET GossipMenuId=6228, NpcFlags=NpcFlags|1 WHERE entry=7875;

DELETE FROM `gossip_menu` WHERE `entry`=6228;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6228, 7402, 0, 0);

-- ----------------------------
-- Ahanu (Entry: 8359)
UPDATE creature_template SET GossipMenuId=4325, NpcFlags=NpcFlags|1 WHERE entry=8359;

DELETE FROM `gossip_menu` WHERE `entry`=4325;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4325, 5497, 0, 0);

-- ----------------------------
-- Raze (Entry: 8441)
UPDATE creature_template SET GossipMenuId=2306, NpcFlags=NpcFlags|1 WHERE entry=8441;

DELETE FROM `gossip_menu` WHERE `entry`=2306;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(2306, 3001, 0, 0);

-- ----------------------------
-- Jes'rimon (Entry: 8659)
UPDATE creature_template SET GossipMenuId=2189, NpcFlags=NpcFlags|1 WHERE entry=8659;

DELETE FROM `gossip_menu` WHERE `entry`=2189;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(2189, 2822, 0, 0);

-- ----------------------------
-- Hate'rel (Entry: 9034)
UPDATE creature_template SET GossipMenuId=1941, NpcFlags=NpcFlags|1 WHERE entry=9034;

DELETE FROM `gossip_menu` WHERE `entry`=1941;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(1941, 2595, 0, 0);

-- ----------------------------
-- Anger'rel (Entry: 9035)
UPDATE creature_template SET GossipMenuId=1943, NpcFlags=NpcFlags|1 WHERE entry=9035;

DELETE FROM `gossip_menu` WHERE `entry`=1943;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(1943, 2596, 0, 0);

-- ----------------------------
-- Vile'rel (Entry: 9036)
UPDATE creature_template SET GossipMenuId=1944, NpcFlags=NpcFlags|1 WHERE entry=9036;

DELETE FROM `gossip_menu` WHERE `entry`=1944;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(1944, 2597, 0, 0);

-- ----------------------------
-- Dope'rel (Entry: 9040)
UPDATE creature_template SET GossipMenuId=1948, NpcFlags=NpcFlags|1 WHERE entry=9040;

DELETE FROM `gossip_menu` WHERE `entry`=1948;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(1948, 2602, 0, 0);

-- ----------------------------
-- Ghede (Entry: 9076)
UPDATE creature_template SET GossipMenuId=1681, NpcFlags=NpcFlags|1 WHERE entry=9076;

DELETE FROM `gossip_menu` WHERE `entry`=1681;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(1681, 2333, 0, 0);

-- ----------------------------
-- Larion (Entry: 9118)
UPDATE creature_template SET GossipMenuId=5630, NpcFlags=NpcFlags|1 WHERE entry=9118;

DELETE FROM `gossip_menu` WHERE `entry`=5630;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(5630, 6741, 0, 0);

-- ----------------------------
-- Gaeriyan (Entry: 9299)
UPDATE creature_template SET GossipMenuId=1914, NpcFlags=NpcFlags|1 WHERE entry=9299;

DELETE FROM `gossip_menu` WHERE `entry`=1914;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(1914, 2568, 0, 0);

-- ----------------------------
-- Lanti'gah (Entry: 9990)
UPDATE creature_template SET GossipMenuId=2362, NpcFlags=NpcFlags|1 WHERE entry=9990;

DELETE FROM `gossip_menu` WHERE `entry`=2362;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(2362, 3048, 0, 0);

-- ----------------------------
-- Chemist Fuely (Entry: 10136)
UPDATE creature_template SET GossipMenuId=2501, NpcFlags=NpcFlags|1 WHERE entry=10136;

DELETE FROM `gossip_menu` WHERE `entry`=2501;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(2501, 3194, 0, 0);

-- ----------------------------
-- Royal Overseer Bauhaus (Entry: 10781)
UPDATE creature_template SET GossipMenuId=2941, NpcFlags=NpcFlags|1 WHERE entry=10781;

DELETE FROM `gossip_menu` WHERE `entry`=2941;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(2941, 3653, 0, 0);

-- ----------------------------
-- High Executor Derrington (Entry: 10837)
UPDATE creature_template SET GossipMenuId=3041, NpcFlags=NpcFlags|1 WHERE entry=10837;

DELETE FROM `gossip_menu` WHERE `entry`=3041;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(3041, 3753, 0, 0);

-- ----------------------------
-- Watcher Brownell (Entry: 11040)
UPDATE creature_template SET GossipMenuId=3133, NpcFlags=NpcFlags|1 WHERE entry=11040;

DELETE FROM `gossip_menu` WHERE `entry`=3133;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(3133, 3868, 0, 0);

-- ----------------------------
-- Jinar'Zillen (Entry: 11317)
UPDATE creature_template SET GossipMenuId=4025, NpcFlags=NpcFlags|1 WHERE entry=11317;

DELETE FROM `gossip_menu` WHERE `entry`=4025;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(4025, 4891, 0, 0);
























