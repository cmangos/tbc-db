-- Port all gossip for Lunar Festival Elders from classic-db

-- Add gossip_menus
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6814, 7935, 0, 0),
(6815, 7935, 0, 0),
(6816, 7933, 0, 0),
(6817, 7956, 0, 0),
(6818, 7935, 0, 0),
(6819, 7933, 0, 0),
(6820, 7935, 0, 0),
(6821, 7933, 0, 0),
(6822, 7956, 0, 0),
(6823, 7933, 0, 0),
(6824, 7933, 0, 0),
(6825, 7935, 0, 0),
(6826, 7956, 0, 0),
(6827, 7956, 0, 0),
(6828, 7935, 0, 0),
(6829, 7935, 0, 0),
(6830, 7956, 0, 0),
(6831, 7935, 0, 0),
(6832, 7933, 0, 0),
(6833, 7933, 0, 0),
(6834, 7933, 0, 0),
(6835, 7956, 0, 0),
(6841, 7933, 0, 0),
(6848, 7933, 0, 0),
(6849, 7956, 0, 0),
(6852, 7956, 0, 0),
(6853, 7956, 0, 0),
(6855, 7933, 0, 0),
(6856, 7933, 0, 0),
(6861, 7933, 0, 0),
(6864, 7935, 0, 0),
(6866, 7933, 0, 0),
(6872, 7933, 0, 0),
(6874, 7956, 0, 0),
(6880, 7956, 0, 0),
(6885, 7935, 0, 0),
(6887, 7956, 0, 0),
(6888, 7956, 0, 0),
(6889, 7956, 0, 0),
(6890, 7935, 0, 0),
(6899, 7935, 0, 0),
(6903, 7956, 0, 0),
(6905, 7935, 0, 0),
(6906, 7933, 0, 0),
(6911, 7935, 0, 0),
(6912, 7935, 0, 0),
(6914, 7935, 0, 0),
(6916, 7933, 0, 0),
(6919, 7956, 0, 0),
(6921, 7956, 0, 0);

-- gossip_menus used in action_menu_id
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6842, 8148, 0, 0),
(6843, 8149, 0, 0),
(6854, 8157, 0, 0),
(6858, 8162, 0, 0),
(6865, 8168, 0, 0),
(6867, 8169, 0, 0),
(6868, 8170, 0, 0),
(6873, 8174, 0, 0),
(6876, 8176, 0, 0),
(6877, 8177, 0, 0),
(6878, 8178, 0, 0),
(6879, 8179, 0, 0),
(6895, 8188, 0, 0),
(6896, 8189, 0, 0),
(50057, 8175, 0, 0),
(50059, 8200, 0, 0),
(50061, 8184, 0, 0),
(50063, 8183, 0, 0),
(50066, 8150, 0, 0),
(50068, 8173, 0, 0),
(50069, 8196, 0, 0),
(50071, 8156, 0, 0),
(50072, 8158, 0, 0),
(50075, 8192, 0, 0),
(50077, 8186, 0, 0),
(50078, 8154, 0, 0),
(50084, 8210, 0, 0),
(50085, 8193, 0, 0),
(50087, 8187, 0, 0),
(50088, 8166, 0, 0),
(50089, 8190, 0, 0),
(50092, 8180, 0, 0),
(50095, 8152, 0, 0),
(50098, 8201, 0, 0),
(50099, 8197, 0, 0),
(50105, 8163, 0, 0),
(50106, 8172, 0, 0),
(50108, 8194, 0, 0),
(50110, 8153, 0, 0),
(50111, 8195, 0, 0),
(50112, 8211, 0, 0),
(50116, 8167, 0, 0),
(50117, 8182, 0, 0),
(50121, 8199, 0, 0),
(50125, 8198, 0, 0),
(50126, 8155, 0, 0),
(50127, 8185, 0, 0),
(50128, 8171, 0, 0),
(50130, 8181, 0, 0),
(50132, 8191, 0, 0);

-- Update templates
UPDATE creature_template SET GossipMenuId=6855, NPCFlags=NPCFlags|1 WHERE entry=15549;
UPDATE creature_template SET GossipMenuId=6906, NPCFlags=NPCFlags|1 WHERE entry=15556;
UPDATE creature_template SET GossipMenuId=6872, NPCFlags=NPCFlags|1 WHERE entry=15557;
UPDATE creature_template SET GossipMenuId=6856, NPCFlags=NPCFlags|1 WHERE entry=15558;
UPDATE creature_template SET GossipMenuId=6848, NPCFlags=NPCFlags|1 WHERE entry=15559;
UPDATE creature_template SET GossipMenuId=6824, NPCFlags=NPCFlags|1 WHERE entry=15560;
UPDATE creature_template SET GossipMenuId=6819, NPCFlags=NPCFlags|1 WHERE entry=15561;
UPDATE creature_template SET GossipMenuId=6833, NPCFlags=NPCFlags|1 WHERE entry=15562;
UPDATE creature_template SET GossipMenuId=6866, NPCFlags=NPCFlags|1 WHERE entry=15563;
UPDATE creature_template SET GossipMenuId=6832, NPCFlags=NPCFlags|1 WHERE entry=15564;
UPDATE creature_template SET GossipMenuId=6821, NPCFlags=NPCFlags|1 WHERE entry=15565;
UPDATE creature_template SET GossipMenuId=6834, NPCFlags=NPCFlags|1 WHERE entry=15566;
UPDATE creature_template SET GossipMenuId=6861, NPCFlags=NPCFlags|1 WHERE entry=15567;
UPDATE creature_template SET GossipMenuId=6816, NPCFlags=NPCFlags|1 WHERE entry=15568;
UPDATE creature_template SET GossipMenuId=6823, NPCFlags=NPCFlags|1 WHERE entry=15569;
UPDATE creature_template SET GossipMenuId=6916, NPCFlags=NPCFlags|1 WHERE entry=15570;
UPDATE creature_template SET GossipMenuId=6815, NPCFlags=NPCFlags|1 WHERE entry=15572;
UPDATE creature_template SET GossipMenuId=6911, NPCFlags=NPCFlags|1 WHERE entry=15573;
UPDATE creature_template SET GossipMenuId=6885, NPCFlags=NPCFlags|1 WHERE entry=15574;
UPDATE creature_template SET GossipMenuId=6814, NPCFlags=NPCFlags|1 WHERE entry=15575;
UPDATE creature_template SET GossipMenuId=6829, NPCFlags=NPCFlags|1 WHERE entry=15576;
UPDATE creature_template SET GossipMenuId=6825, NPCFlags=NPCFlags|1 WHERE entry=15577;
UPDATE creature_template SET GossipMenuId=6912, NPCFlags=NPCFlags|1 WHERE entry=15578;
UPDATE creature_template SET GossipMenuId=6899, NPCFlags=NPCFlags|1 WHERE entry=15579;
UPDATE creature_template SET GossipMenuId=6890, NPCFlags=NPCFlags|1 WHERE entry=15580;
UPDATE creature_template SET GossipMenuId=6905, NPCFlags=NPCFlags|1 WHERE entry=15581;
UPDATE creature_template SET GossipMenuId=6828, NPCFlags=NPCFlags|1 WHERE entry=15582;
UPDATE creature_template SET GossipMenuId=6914, NPCFlags=NPCFlags|1 WHERE entry=15583;
UPDATE creature_template SET GossipMenuId=6820, NPCFlags=NPCFlags|1 WHERE entry=15584;
UPDATE creature_template SET GossipMenuId=6864, NPCFlags=NPCFlags|1 WHERE entry=15585;
UPDATE creature_template SET GossipMenuId=6831, NPCFlags=NPCFlags|1 WHERE entry=15586;
UPDATE creature_template SET GossipMenuId=6903, NPCFlags=NPCFlags|1 WHERE entry=15587;
UPDATE creature_template SET GossipMenuId=6818, NPCFlags=NPCFlags|1 WHERE entry=15588;
UPDATE creature_template SET GossipMenuId=6852, NPCFlags=NPCFlags|1 WHERE entry=15592;
UPDATE creature_template SET GossipMenuId=6874, NPCFlags=NPCFlags|1 WHERE entry=15593;
UPDATE creature_template SET GossipMenuId=6849, NPCFlags=NPCFlags|1 WHERE entry=15594;
UPDATE creature_template SET GossipMenuId=6822, NPCFlags=NPCFlags|1 WHERE entry=15595;
UPDATE creature_template SET GossipMenuId=6921, NPCFlags=NPCFlags|1 WHERE entry=15596;
UPDATE creature_template SET GossipMenuId=6817, NPCFlags=NPCFlags|1 WHERE entry=15597;
UPDATE creature_template SET GossipMenuId=6880, NPCFlags=NPCFlags|1 WHERE entry=15598;
UPDATE creature_template SET GossipMenuId=6835, NPCFlags=NPCFlags|1 WHERE entry=15599;
UPDATE creature_template SET GossipMenuId=6889, NPCFlags=NPCFlags|1 WHERE entry=15600;
UPDATE creature_template SET GossipMenuId=6826, NPCFlags=NPCFlags|1 WHERE entry=15601;
UPDATE creature_template SET GossipMenuId=6919, NPCFlags=NPCFlags|1 WHERE entry=15602;
UPDATE creature_template SET GossipMenuId=6887, NPCFlags=NPCFlags|1 WHERE entry=15603;
UPDATE creature_template SET GossipMenuId=6830, NPCFlags=NPCFlags|1 WHERE entry=15604;
UPDATE creature_template SET GossipMenuId=6827, NPCFlags=NPCFlags|1 WHERE entry=15605;
UPDATE creature_template SET GossipMenuId=6888, NPCFlags=NPCFlags|1 WHERE entry=15606;
UPDATE creature_template SET GossipMenuId=6853, NPCFlags=NPCFlags|1 WHERE entry=15607;
UPDATE creature_template SET GossipMenuId=6841, NPCFlags=NPCFlags|1 WHERE entry=15871;

-- Add conditions
DELETE FROM conditions WHERE condition_entry BETWEEN 1400 AND 1450;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
(1400, 22, 8718, 0, 'Quest ID 8718 NOT Taken AND NOT Rewarded'), -- 1029
(1401, 22, 8720, 0, 'Quest ID 8720 NOT Taken AND NOT Rewarded'), -- 1030
(1402, 22, 8654, 0, 'Quest ID 8654 NOT Taken AND NOT Rewarded'), -- 1031
(1403, 22, 8681, 0, 'Quest ID 8681 NOT Taken AND NOT Rewarded'), -- 1032
(1404, 22, 8686, 0, 'Quest ID 8686 NOT Taken AND NOT Rewarded'), -- 1033
(1405, 22, 8717, 0, 'Quest ID 8717 NOT Taken AND NOT Rewarded'), -- 1034
(1406, 22, 8678, 0, 'Quest ID 8678 NOT Taken AND NOT Rewarded'), -- 1035
(1407, 22, 8680, 0, 'Quest ID 8680 NOT Taken AND NOT Rewarded'), -- 1036
(1408, 22, 8723, 0, 'Quest ID 8723 NOT Taken AND NOT Rewarded'), -- 1037
(1409, 22, 8672, 0, 'Quest ID 8672 NOT Taken AND NOT Rewarded'), -- 1038
(1410, 22, 8677, 0, 'Quest ID 8677 NOT Taken AND NOT Rewarded'), -- 1039
(1411, 22, 8652, 0, 'Quest ID 8652 NOT Taken AND NOT Rewarded'), -- 1040
(1412, 22, 8651, 0, 'Quest ID 8651 NOT Taken AND NOT Rewarded'), -- 1041
(1413, 22, 8714, 0, 'Quest ID 8714 NOT Taken AND NOT Rewarded'), -- 1042
(1414, 22, 8648, 0, 'Quest ID 8648 NOT Taken AND NOT Rewarded'), -- 1043
(1415, 22, 8670, 0, 'Quest ID 8670 NOT Taken AND NOT Rewarded'), -- 1044
(1416, 22, 8636, 0, 'Quest ID 8636 NOT Taken AND NOT Rewarded'), -- 1045
(1417, 22, 8650, 0, 'Quest ID 8650 NOT Taken AND NOT Rewarded'), -- 1046
(1418, 22, 8688, 0, 'Quest ID 8688 NOT Taken AND NOT Rewarded'), -- 1047
(1419, 22, 8722, 0, 'Quest ID 8722 NOT Taken AND NOT Rewarded'), -- 1048
(1420, 22, 8645, 0, 'Quest ID 8645 NOT Taken AND NOT Rewarded'), -- 1049
(1421, 22, 8685, 0, 'Quest ID 8685 NOT Taken AND NOT Rewarded'), -- 1050
(1422, 22, 8724, 0, 'Quest ID 8724 NOT Taken AND NOT Rewarded'), -- 1051
(1423, 22, 8635, 0, 'Quest ID 8635 NOT Taken AND NOT Rewarded'), -- 1052
(1424, 22, 8866, 0, 'Quest ID 8866 NOT Taken AND NOT Rewarded'), -- 1053
(1425, 22, 8649, 0, 'Quest ID 8649 NOT Taken AND NOT Rewarded'), -- 1054
(1426, 22, 8673, 0, 'Quest ID 8673 NOT Taken AND NOT Rewarded'), -- 1055
(1427, 22, 8653, 0, 'Quest ID 8653 NOT Taken AND NOT Rewarded'), -- 1056
(1428, 22, 8619, 0, 'Quest ID 8619 NOT Taken AND NOT Rewarded'), -- 1057
(1429, 22, 8642, 0, 'Quest ID 8642 NOT Taken AND NOT Rewarded'), -- 1058
(1430, 22, 8644, 0, 'Quest ID 8644 NOT Taken AND NOT Rewarded'), -- 1059
(1431, 22, 8679, 0, 'Quest ID 8679 NOT Taken AND NOT Rewarded'), -- 1060
(1432, 22, 8643, 0, 'Quest ID 8643 NOT Taken AND NOT Rewarded'), -- 1061
(1433, 22, 8682, 0, 'Quest ID 8682 NOT Taken AND NOT Rewarded'), -- 1062
(1434, 22, 8726, 0, 'Quest ID 8726 NOT Taken AND NOT Rewarded'), -- 1063
(1435, 22, 8725, 0, 'Quest ID 8725 NOT Taken AND NOT Rewarded'), -- 1064
(1436, 22, 8721, 0, 'Quest ID 8721 NOT Taken AND NOT Rewarded'), -- 1065
(1437, 22, 8719, 0, 'Quest ID 8719 NOT Taken AND NOT Rewarded'), -- 1066
(1438, 22, 8684, 0, 'Quest ID 8684 NOT Taken AND NOT Rewarded'), -- 1067
(1439, 22, 8676, 0, 'Quest ID 8676 NOT Taken AND NOT Rewarded'), -- 1068
(1440, 22, 8683, 0, 'Quest ID 8683 NOT Taken AND NOT Rewarded'), -- 1069
(1441, 22, 8646, 0, 'Quest ID 8646 NOT Taken AND NOT Rewarded'), -- 1070
(1442, 22, 8674, 0, 'Quest ID 8674 NOT Taken AND NOT Rewarded'), -- 1071
(1443, 22, 8715, 0, 'Quest ID 8715 NOT Taken AND NOT Rewarded'), -- 1072
(1444, 22, 8671, 0, 'Quest ID 8671 NOT Taken AND NOT Rewarded'), -- 1073
(1445, 22, 8727, 0, 'Quest ID 8727 NOT Taken AND NOT Rewarded'), -- 1074
(1446, 22, 8713, 0, 'Quest ID 8713 NOT Taken AND NOT Rewarded'), -- 1075
(1447, 22, 8647, 0, 'Quest ID 8647 NOT Taken AND NOT Rewarded'), -- 1076
(1448, 22, 8716, 0, 'Quest ID 8716 NOT Taken AND NOT Rewarded'), -- 1077
(1449, 22, 8675, 0, 'Quest ID 8675 NOT Taken AND NOT Rewarded'); -- 1078

-- Add missing gossip_menu_options
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(6814, 1, 0, 'Where is Elder High Mountain?', 1, 1, 50077, 0, 0, 0, 0, NULL, 1404),
(6814, 2, 0, 'Where is Elder Moonwarden?', 1, 1, 50087, 0, 0, 0, 0, NULL, 1405),
(6814, 3, 0, 'Where is Elder Ezra Wheathoof?', 1, 1, 6895, 0, 0, 0, 0, NULL, 1406),
(6814, 4, 0, 'Where is Elder Windtotem?', 1, 1, 50127, 0, 0, 0, 0, NULL, 1407),
(6815, 1, 0, 'Where is Elder Darkhorn?', 1, 1, 6896, 0, 0, 0, 0, NULL, 1410),
(6815, 2, 0, 'Where is Elder High Mountain?', 1, 1, 50077, 0, 0, 0, 0, NULL, 1404),
(6815, 3, 0, 'Where is Elder Moonwarden?', 1, 1, 50087, 0, 0, 0, 0, NULL, 1405),
(6815, 4, 0, 'Where is Elder Windtotem?', 1, 1, 50127, 0, 0, 0, 0, NULL, 1407),
(6816, 1, 0, 'Where is Elder Darkcore?', 1, 1, 50066, 0, 0, 0, 0, NULL, 1414),
(6816, 2, 0, 'Where is Elder Meadowrun?', 1, 1, 50084, 0, 0, 0, 0, NULL, 1419),
(6816, 3, 0, 'Where is Elder Moonstrike?', 1, 1, 6843, 0, 0, 0, 0, NULL, 1413),
(6816, 4, 0, 'Where is Elder Obsidian?', 1, 1, 50095, 0, 0, 0, 0, NULL, 1420),
(6816, 5, 0, 'Where is Elder Snowcrown?', 1, 1, 50110, 0, 0, 0, 0, NULL, 1417),
(6817, 1, 0, 'Where is Elder Bloodhoof?', 1, 1, 50061, 0, 0, 0, 0, NULL, 1426),
(6817, 2, 0, 'Where is Elder High Mountain?', 1, 1, 50077, 0, 0, 0, 0, NULL, 1404),
(6817, 3, 0, 'Where is Elder Morningdew?', 1, 1, 50089, 0, 0, 0, 0, NULL, 1422),
(6817, 4, 0, 'Where is Elder Runetotem?', 1, 1, 50132, 0, 0, 0, 0, NULL, 1415),
(6817, 5, 0, 'Where is Elder Windtotem?', 1, 1, 50127, 0, 0, 0, 0, NULL, 1407),
(6818, 1, 0, 'Where is Elder Bloodhoof?', 1, 1, 50061, 0, 0, 0, 0, NULL, 1426),
(6818, 2, 0, 'Where is Elder Moonwarden?', 1, 1, 50087, 0, 0, 0, 0, NULL, 1405),
(6818, 3, 0, 'Where is Elder Morningdew?', 1, 1, 50089, 0, 0, 0, 0, NULL, 1422),
(6818, 4, 0, 'Where is Elder Runetotem?', 1, 1, 50132, 0, 0, 0, 0, NULL, 1415),
(6818, 5, 0, 'Where is Elder Windtotem?', 1, 1, 50127, 0, 0, 0, 0, NULL, 1407),
(6819, 1, 0, 'Where is Elder Graveborn?', 1, 1, 6842, 0, 0, 0, 0, NULL, 1411),
(6819, 2, 0, 'Where is Elder Highpeak?', 1, 1, 50078, 0, 0, 0, 0, NULL, 1432),
(6819, 3, 0, 'Where is Elder Moonstrike?', 1, 1, 6843, 0, 0, 0, 0, NULL, 1413),
(6820, 1, 0, 'Where is Elder Dreamseer?', 1, 1, 50069, 0, 0, 0, 0, NULL, 1438),
(6820, 2, 0, 'Where is Elder Morningdew?', 1, 1, 50089, 0, 0, 0, 0, NULL, 1422),
(6820, 3, 0, 'Where is Elder Ragetotem?', 1, 1, 50099, 0, 0, 0, 0, NULL, 1444),
(6820, 4, 0, 'Where is Elder Wildmane?', 1, 1, 50125, 0, 0, 0, 0, NULL, 1439),
(6821, 4, 0, 'Where is Elder Starsong?', 1, 1, 6867, 0, 0, 0, 0, NULL, 1446),
(6821, 3, 0, 'Where is Elder Skychaser?', 1, 1, 50106, 0, 0, 0, 0, NULL, 1449),
(6821, 2, 0, 'Where is Elder Rumblerock?', 1, 1, 6865, 0, 0, 0, 0, NULL, 1416),
(6821, 1, 0, 'Where is Elder Hammershout?', 1, 1, 6873, 0, 0, 0, 0, NULL, 1441),
(6822, 1, 0, 'Where is Elder Bladeswift?', 1, 1, 6876, 0, 0, 0, 0, NULL, 1400),
(6822, 2, 0, 'Where is Elder Skygleam?', 1, 1, 6877, 0, 0, 0, 0, NULL, 1401),
(6823, 3, 0, 'Where is Elder Silvervein?', 1, 1, 50105, 0, 0, 0, 0, NULL, 1429),
(6823, 2, 0, 'Where is Elder Ironband?', 1, 1, 6854, 0, 0, 0, 0, NULL, 1412),
(6823, 1, 0, 'Where is Elder Bronzebeard?', 1, 1, 6858, 0, 0, 0, 0, NULL, 1424),
(6824, 0, 0, 'Where is Elder Ironband?', 1, 1, 6854, 0, 0, 0, 0, NULL, 1412),
(6825, 3, 0, 'Where is Elder Winterhoof?', 1, 1, 50128, 0, 0, 0, 0, NULL, 1442),
(6825, 2, 0, 'Where is Elder Stormbrow?', 1, 1, 6868, 0, 0, 0, 0, NULL, 1425),
(6825, 1, 0, 'Where is Elder Starsong?', 1, 1, 6867, 0, 0, 0, 0, NULL, 1446),
(6826, 3, 0, 'Where is Elder Riversong?', 1, 1, 50130, 0, 0, 0, 0, NULL, 1435),
(6826, 2, 0, 'Where is Elder Nightwind?', 1, 1, 50092, 0, 0, 0, 0, NULL, 1408),
(6826, 1, 0, 'Where is Elder Bladeswift?', 1, 1, 6876, 0, 0, 0, 0, NULL, 1400),
(6827, 2, 0, 'Where is Elder Skygleam?', 1, 1, 6877, 0, 0, 0, 0, NULL, 1401),
(6827, 1, 0, 'Where is Elder Nightwind?', 1, 1, 50092, 0, 0, 0, 0, NULL, 1408),
(6827, 3, 0, 'Where is Elder Starweave?', 1, 1, 6879, 0, 0, 0, 0, NULL, 1436),
(6827, 4, 0, 'Where is Elder Stonespire?', 1, 1, 50117, 0, 0, 0, 0, NULL, 1409),
(6828, 1, 0, 'Where is Elder Bloodhoof?', 1, 1, 50061, 0, 0, 0, 0, NULL, 1426),
(6828, 2, 0, 'Where is Elder Darkhorn?', 1, 1, 6896, 0, 0, 0, 0, NULL, 1410),
(6828, 3, 0, 'Where is Elder High Mountain?', 1, 1, 50077, 0, 0, 0, 0, NULL, 1404),
(6828, 4, 0, 'Where is Elder Moonwarden?', 1, 1, 50087, 0, 0, 0, 0, NULL, 1405),
(6828, 5, 0, 'Where is Elder Morningdew?', 1, 1, 50089, 0, 0, 0, 0, NULL, 1422),
(6828, 6, 0, 'Where is Elder Ezra Wheathoof?', 1, 1, 6895, 0, 0, 0, 0, NULL, 1406),
(6828, 7, 0, 'Where is Elder Runetotem?', 1, 1, 50132, 0, 0, 0, 0, NULL, 1415),
(6829, 1, 0, 'Where is Elder Rumblerock?', 1, 1, 6865, 0, 0, 0, 0, NULL, 1416),
(6829, 2, 0, 'Where is Elder Skychaser?', 1, 1, 50106, 0, 0, 0, 0, NULL, 1449),
(6829, 3, 0, 'Where is Elder Starglade?', 1, 1, 50112, 0, 0, 0, 0, NULL, 1448),
(6829, 4, 0, 'Where is Elder Starsong?', 1, 1, 6867, 0, 0, 0, 0, NULL, 1446),
(6830, 1, 0, 'Where is Elder Grimtotem?', 1, 1, 50075, 0, 0, 0, 0, NULL, 1431),
(6830, 2, 0, 'Where is Elder High Mountain?', 1, 1, 50077, 0, 0, 0, 0, NULL, 1404),
(6830, 3, 0, 'Where is Elder Mistwalker?', 1, 1, 50085, 0, 0, 0, 0, NULL, 1421),
(6830, 4, 0, 'Where is Elder Moonwarden?', 1, 1, 50087, 0, 0, 0, 0, NULL, 1405),
(6830, 5, 0, 'Where is Elder Skyseer?', 1, 1, 50108, 0, 0, 0, 0, NULL, 1433),
(6830, 6, 0, 'Where is Elder Windtotem?', 1, 1, 50127, 0, 0, 0, 0, NULL, 1407),
(6831, 1, 0, 'Where is Elder Ragetotem?', 1, 1, 50099, 0, 0, 0, 0, NULL, 1444),
(6831, 2, 0, 'Where is Elder Skyseer?', 1, 1, 50108, 0, 0, 0, 0, NULL, 1433),
(6831, 3, 0, 'Where is Elder Thunderhorn?', 1, 1, 50121, 0, 0, 0, 0, NULL, 1403),
(6831, 4, 0, 'Where is Elder Wildmane?', 1, 1, 50125, 0, 0, 0, 0, NULL, 1439),
(6832, 1, 0, 'Where is Elder Darkhorn?', 1, 1, 6896, 0, 0, 0, 0, NULL, 1410),
(6832, 2, 0, 'Where is Elder Graveborn?', 1, 1, 6842, 0, 0, 0, 0, NULL, 1411),
(6832, 3, 0, 'Where is Elder Ironband?', 1, 1, 6854, 0, 0, 0, 0, NULL, 1412),
(6832, 4, 0, 'Where is Elder Moonstrike?', 1, 1, 6843, 0, 0, 0, 0, NULL, 1413),
(6832, 5, 0, 'Where is Elder Ezra Wheathoof?', 1, 1, 6895, 0, 0, 0, 0, NULL, 1406),
(6833, 1, 0, 'Where is Elder Bladeswift?', 1, 1, 6876, 0, 0, 0, 0, NULL, 1400),
(6833, 2, 0, 'Where is Elder Bronzebeard?', 1, 1, 6858, 0, 0, 0, 0, NULL, 1424),
(6833, 3, 0, 'Where is Elder Rumblerock?', 1, 1, 6865, 0, 0, 0, 0, NULL, 1416),
(6833, 4, 0, 'Where is Elder Stormbrow?', 1, 1, 6868, 0, 0, 0, 0, NULL, 1425),
(6834, 1, 0, 'Where is Elder Graveborn?', 1, 1, 6842, 0, 0, 0, 0, NULL, 1411),
(6834, 2, 0, 'Where is Elder Farwhisper?', 1, 1, 50071, 0, 0, 0, 0, NULL, 1445),
(6834, 3, 0, 'Where is Elder Meadowrun?', 1, 1, 50084, 0, 0, 0, 0, NULL, 1419),
(6834, 4, 0, 'Where is Elder Moonstrike?', 1, 1, 6843, 0, 0, 0, 0, NULL, 1413),
(6834, 5, 0, 'Where is Elder Windrun?', 1, 1, 50126, 0, 0, 0, 0, NULL, 1418),
(6835, 1, 0, 'Where is Elder Primestone?', 1, 1, 50098, 0, 0, 0, 0, NULL, 1402),
(6835, 2, 0, 'Where is Elder Thunderhorn?', 1, 1, 50121, 0, 0, 0, 0, NULL, 1403),
(6841, 1, 0, 'Where is Elder Bladeswift?', 1, 1, 6876, 0, 0, 0, 0, NULL, 1400),
(6841, 2, 0, 'Where is Elder Hammershout?', 1, 1, 6873, 0, 0, 0, 0, NULL, 1441),
(6841, 3, 0, 'Where is Elder Goldwell?', 1, 1, 50072, 0, 0, 0, 0, NULL, 1427),
(6841, 4, 0, 'Where is Elder Ironband?', 1, 1, 6854, 0, 0, 0, 0, NULL, 1412),
(6848, 0, 0, 'Where is Elder Moonstrike?', 1, 1, 6843, 0, 0, 0, 0, NULL, 1413),
(6849, 1, 0, 'Where is Elder Darkcore?', 1, 1, 50066, 0, 0, 0, 0, NULL, 1414),
(6849, 2, 0, 'Where is Elder Graveborn?', 1, 1, 6842, 0, 0, 0, 0, NULL, 1411),
(6849, 3, 0, 'Where is Elder Highpeak?', 1, 1, 50078, 0, 0, 0, 0, NULL, 1432),
(6849, 4, 0, 'Where is Elder Meadowrun?', 1, 1, 50084, 0, 0, 0, 0, NULL, 1419),
(6849, 5, 0, 'Where is Elder Obsidian?', 1, 1, 50095, 0, 0, 0, 0, NULL, 1420),
(6849, 6, 0, 'Where is Elder Snowcrown?', 1, 1, 50110, 0, 0, 0, 0, NULL, 1417),
(6849, 7, 0, 'Where is Elder Windrun?', 1, 1, 50126, 0, 0, 0, 0, NULL, 1418),
(6852, 1, 0, 'Where is Elder Farwhisper?', 1, 1, 50071, 0, 0, 0, 0, NULL, 1445),
(6852, 2, 0, 'Where is Elder Meadowrun?', 1, 1, 50084, 0, 0, 0, 0, NULL, 1419),
(6852, 3, 0, 'Where is Elder Moonstrike?', 1, 1, 6843, 0, 0, 0, 0, NULL, 1413),
(6852, 4, 0, 'Where is Elder Snowcrown?', 1, 1, 50110, 0, 0, 0, 0, NULL, 1417),
(6853, 1, 0, 'Where is Elder Snowcrown?', 1, 1, 50110, 0, 0, 0, 0, NULL, 1417),
(6853, 2, 0, 'Where is Elder Windrun?', 1, 1, 50126, 0, 0, 0, 0, NULL, 1418),
(6855, 0, 0, 'Where is Elder Ironband?', 1, 1, 6854, 0, 0, 0, 0, NULL, 1412),
(6856, 1, 0, 'Where is Elder Goldwell?', 1, 1, 50072, 0, 0, 0, 0, NULL, 1427),
(6856, 2, 0, 'Where is Elder Ironband?', 1, 1, 6854, 0, 0, 0, 0, NULL, 1412),
(6861, 1, 0, 'Where is Elder Bronzebeard?', 1, 1, 6858, 0, 0, 0, 0, NULL, 1424),
(6861, 2, 0, 'Where is Elder Goldwell?', 1, 1, 50072, 0, 0, 0, 0, NULL, 1427),
(6861, 3, 0, 'Where is Elder Morndeep?', 1, 1, 50088, 0, 0, 0, 0, NULL, 1428),
(6861, 4, 0, 'Where is Elder Silvervein?', 1, 1, 50105, 0, 0, 0, 0, NULL, 1429),
(6861, 5, 0, 'Where is Elder Stonefort?', 1, 1, 50116, 0, 0, 0, 0, NULL, 1430),
(6864, 0, 0, 'Where is Elder Rumblerock?', 1, 1, 6865, 0, 0, 0, 0, NULL, 1416),
(6866, 0, 0, 'Where is Elder Starsong?', 1, 1, 6867, 0, 0, 0, 0, NULL, 1446),
(6872, 1, 0, 'Where is Elder Dawnstrider?', 1, 1, 50068, 0, 0, 0, 0, NULL, 1440),
(6872, 2, 0, 'Where is Elder Hammershout?', 1, 1, 6873, 0, 0, 0, 0, NULL, 1441),
(6872, 3, 0, 'Where is Elder Stormbrow?', 1, 1, 6868, 0, 0, 0, 0, NULL, 1425),
(6872, 4, 0, 'Where is Elder Winterhoof?', 1, 1, 50128, 0, 0, 0, 0, NULL, 1442),
(6874, 1, 0, 'Where is Elder Bellowrage?', 1, 1, 50057, 0, 0, 0, 0, NULL, 1447),
(6874, 2, 0, 'Where is Elder Starglade?', 1, 1, 50112, 0, 0, 0, 0, NULL, 1448),
(6874, 3, 0, 'Where is Elder Skychaser?', 1, 1, 50106, 0, 0, 0, 0, NULL, 1449),
(6874, 4, 0, 'Where is Elder Stormbrow?', 1, 1, 6868, 0, 0, 0, 0, NULL, 1425),
(6874, 5, 0, 'Where is Elder Winterhoof?', 1, 1, 50128, 0, 0, 0, 0, NULL, 1442),
(6880, 1, 0, 'Where is Elder Bladeleaf?', 1, 1, 6878, 0, 0, 0, 0, NULL, 1443),
(6880, 2, 0, 'Where is Elder Bronzebeard?', 1, 1, 6858, 0, 0, 0, 0, NULL, 1424),
(6880, 3, 0, 'Where is Elder Hammershout?', 1, 1, 6873, 0, 0, 0, 0, NULL, 1441),
(6880, 4, 0, 'Where is Elder Skygleam?', 1, 1, 6877, 0, 0, 0, 0, NULL, 1401),
(6880, 5, 0, 'Where is Elder Starweave?', 1, 1, 6879, 0, 0, 0, 0, NULL, 1436),
(6885, 1, 0, 'Where is Elder Brightspear?', 1, 1, 50063, 0, 0, 0, 0, NULL, 1434),
(6885, 2, 0, 'Where is Elder Nightwind?', 1, 1, 50092, 0, 0, 0, 0, NULL, 1408),
(6885, 3, 0, 'Where is Elder Riversong?', 1, 1, 50130, 0, 0, 0, 0, NULL, 1435),
(6887, 1, 0, 'Where is Elder Brightspear?', 1, 1, 50063, 0, 0, 0, 0, NULL, 1434),
(6887, 2, 0, 'Where is Elder Riversong?', 1, 1, 50130, 0, 0, 0, 0, NULL, 1435),
(6887, 3, 0, 'Where is Elder Skygleam?', 1, 1, 6877, 0, 0, 0, 0, NULL, 1401),
(6887, 4, 0, 'Where is Elder Starweave?', 1, 1, 6879, 0, 0, 0, 0, NULL, 1436),
(6887, 5, 0, 'Where is Elder Stonespire?', 1, 1, 50117, 0, 0, 0, 0, NULL, 1409),
(6888, 1, 0, 'Where is Elder Nightwind?', 1, 1, 50092, 0, 0, 0, 0, NULL, 1408),
(6888, 2, 0, 'Where is Elder Stonespire?', 1, 1, 50117, 0, 0, 0, 0, NULL, 1409),
(6889, 1, 0, 'Where is Elder Bladeleaf?', 1, 1, 6878, 0, 0, 0, 0, NULL, 1443),
(6889, 2, 0, 'Where is Elder Bladeswift?', 1, 1, 6876, 0, 0, 0, 0, NULL, 1400),
(6889, 3, 0, 'Where is Elder Nightwind?', 1, 1, 50092, 0, 0, 0, 0, NULL, 1408),
(6889, 4, 0, 'Where is Elder Riversong?', 1, 1, 50130, 0, 0, 0, 0, NULL, 1435),
(6890, 1, 0, 'Where is Elder Bloodhoof?', 1, 1, 50061, 0, 0, 0, 0, NULL, 1426),
(6890, 2, 0, 'Where is Elder Darkcore?', 1, 1, 50066, 0, 0, 0, 0, NULL, 1414),
(6890, 3, 0, 'Where is Elder Darkhorn?', 1, 1, 6896, 0, 0, 0, 0, NULL, 1410),
(6890, 4, 0, 'Where is Elder Ironband?', 1, 1, 6854, 0, 0, 0, 0, NULL, 1412),
(6890, 5, 0, 'Where is Elder Windtotem?', 1, 1, 50127, 0, 0, 0, 0, NULL, 1407),
(6899, 1, 0, 'Where is Elder Darkcore?', 1, 1, 50066, 0, 0, 0, 0, NULL, 1414),
(6899, 2, 0, 'Where is Elder Ironband?', 1, 1, 6854, 0, 0, 0, 0, NULL, 1412),
(6899, 3, 0, 'Where is Elder Ezra Wheathoof?', 1, 1, 6895, 0, 0, 0, 0, NULL, 1406),
(6899, 4, 0, 'Where is Elder Runetotem?', 1, 1, 50132, 0, 0, 0, 0, NULL, 1415),
(6899, 5, 0, 'Where is Elder Windtotem?', 1, 1, 50127, 0, 0, 0, 0, NULL, 1407),
(6903, 1, 0, 'Where is Elder Grimtotem?', 1, 1, 50075, 0, 0, 0, 0, NULL, 1431),
(6903, 2, 0, 'Where is Elder Morningdew?', 1, 1, 50089, 0, 0, 0, 0, NULL, 1422),
(6903, 3, 0, 'Where is Elder Splitrock?', 1, 1, 50111, 0, 0, 0, 0, NULL, 1423),
(6905, 1, 0, 'Where is Elder Mistwalker?', 1, 1, 50085, 0, 0, 0, 0, NULL, 1421),
(6905, 2, 0, 'Where is Elder Morningdew?', 1, 1, 50089, 0, 0, 0, 0, NULL, 1422),
(6905, 3, 0, 'Where is Elder Splitrock?', 1, 1, 50111, 0, 0, 0, 0, NULL, 1423),
(6906, 1, 0, 'Where is Elder Grimtotem?', 1, 1, 50075, 0, 0, 0, 0, NULL, 1431),
(6906, 2, 0, 'Where is Elder Mistwalker?', 1, 1, 50085, 0, 0, 0, 0, NULL, 1421),
(6911, 1, 0, 'Where is Elder Dreamseer?', 1, 1, 50069, 0, 0, 0, 0, NULL, 1438),
(6911, 2, 0, 'Where is Elder Skyseer?', 1, 1, 50108, 0, 0, 0, 0, NULL, 1433),
(6911, 3, 0, 'Where is Elder Thunderhorn?', 1, 1, 50121, 0, 0, 0, 0, NULL, 1403),
(6911, 4, 0, 'Where is Elder Wildmane?', 1, 1, 50125, 0, 0, 0, 0, NULL, 1439),
(6912, 1, 0, 'Where is Elder Dreamseer?', 1, 1, 50069, 0, 0, 0, 0, NULL, 1438),
(6912, 2, 0, 'Where is Elder Ragetotem?', 1, 1, 50099, 0, 0, 0, 0, NULL, 1444),
(6912, 3, 0, 'Where is Elder Skyseer?', 1, 1, 50108, 0, 0, 0, 0, NULL, 1433),
(6912, 4, 0, 'Where is Elder Thunderhorn?', 1, 1, 50121, 0, 0, 0, 0, NULL, 1403),
(6914, 1, 0, 'Where is Elder Bladesing?', 1, 1, 50059, 0, 0, 0, 0, NULL, 1437),
(6914, 2, 0, 'Where is Elder Dreamseer?', 1, 1, 50069, 0, 0, 0, 0, NULL, 1438),
(6914, 3, 0, 'Where is Elder Primestone?', 1, 1, 50098, 0, 0, 0, 0, NULL, 1402),
(6914, 4, 0, 'Where is Elder Ragetotem?', 1, 1, 50099, 0, 0, 0, 0, NULL, 1444),
(6914, 5, 0, 'Where is Elder Wildmane?', 1, 1, 50125, 0, 0, 0, 0, NULL, 1439),
(6916, 1, 0, 'Where is Elder Bladesing?', 1, 1, 50059, 0, 0, 0, 0, NULL, 1437),
(6916, 2, 0, 'Where is Elder Thunderhorn?', 1, 1, 50121, 0, 0, 0, 0, NULL, 1403),
(6919, 1, 0, 'Where is Elder Graveborn?', 1, 1, 6842, 0, 0, 0, 0, NULL, 1411),
(6919, 2, 0, 'Where is Elder Moonstrike?', 1, 1, 6843, 0, 0, 0, 0, NULL, 1413),
(6919, 3, 0, 'Where is Elder Snowcrown?', 1, 1, 50110, 0, 0, 0, 0, NULL, 1417),
(6919, 4, 0, 'Where is Elder Windrun?', 1, 1, 50126, 0, 0, 0, 0, NULL, 1418),
(6921, 1, 0, 'Where is Elder Starsong?', 1, 1, 6867, 0, 0, 0, 0, NULL, 1446),
(6921, 2, 0, 'Where is Elder Winterhoof?', 1, 1, 50128, 0, 0, 0, 0, NULL, 1442);

-- Delete wotlk gossip_menu_options
DELETE FROM gossip_menu_option WHERE option_text IN(
'Where is Elder Northal?',
'Where is Elder Igasho?',
'Where is Elder Pamuya?',
'Where is Elder Arp?',
'Where is Elder Pamuya?',
'Where is Elder Sardis?',
'Where is Elder Bluewolf?',
'Where is Elder Wanikaya?',
'Where is Elder Skywarden?',
'Where is Elder Thoim?',
'Where is Elder Whurain?',
'Where is Elder Morthie?',
'Where is Elder Nurgen?',
'Where is Elder Whurain?',
'Where is Elder Beldak?',
'Where is Elder Lunaro?',
'Where is Elder Chogan''gada?',
'Where is Elder Kilias?',
'Where is Elder Jarten?',
'Where is Elder Tauros?',
'Where is Elder Ohanzee?',
'Where is Elder Graymane?',
'Where is Elder Muraco?',
'Where is Elder Stonebeard?',
'Where is Elder Fargal?',
'Where is Elder Yurauk?');

-- Small duplicate menu cleanup
DELETE FROM gossip_menu_option WHERE menu_id IN(6821,6825,6827,6829,6831,6841,6880) AND id=0;

-- Missing texts
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES 
(8152, 'Elder Obsidian wanders near the Sepulcher in Silverpine Forest.', 'Elder Obsidian wanders near the Sepulcher in Silverpine Forest.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8158, 'Elder Goldwell spends his time in the village of Kharanos in Dun Morogh.', 'Elder Goldwell spends his time in the village of Kharanos in Dun Morogh.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8163, 'Elder Silvervein can be found near Thelsamar in Loch Modan.', 'Elder Silvervein can be found near Thelsamar in Loch Modan.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8166, 'Elder Morndeep spends time at the Ring of Law in Blackrock Depths.', 'Elder Morndeep spends time at the Ring of Law in Blackrock Depths.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8167, 'Elder Stonefort has taken to the dungeons of Blackrock Spire.', 'Elder Stonefort has taken to the dungeons of Blackrock Spire.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8173, 'Elder Dawnstrider can be found at Flame Crest on the Burning Steppes.', 'Elder Dawnstrider can be found at Flame Crest on the Burning Steppes.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8174, 'Elder Hammershout can be found within the walls of Stormwind.', 'Elder Hammershout can be found within the walls of Stormwind.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8175, 'Elder Bellowrage watches over the Dark Portal from a ridge in the Blasted Lands.', 'Elder Bellowrage watches over the Dark Portal from a ridge in the Blasted Lands.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8177, 'Elder Skygleam can be found near the Ravencrest Monument in Azshara.', 'Elder Skygleam can be found near the Ravencrest Monument in Azshara.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8178, 'The village of Dolanaar atop Teldrassil is home to Elder Bladeleaf.', 'The village of Dolanaar atop Teldrassil is home to Elder Bladeleaf.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8179, 'Elder Starweave can be found at the coastal village of Auberdine in Darkshore.', 'Elder Starweave can be found at the coastal village of Auberdine in Darkshore.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8182, 'Last I knew, Elder Stonespire was at Everlook in Winterspring.', 'Last I knew, Elder Stonespire was at Everlook in Winterspring.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8187, 'Elder Moonwarden is observing the Crossroads in the Barrens.', 'Elder Moonwarden is observing the Crossroads in the Barrens.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8192, 'You\'ll find Elder Grimtotem at the Lariss Pavilion in Feralas.', 'You\'ll find Elder Grimtotem at the Lariss Pavilion in Feralas.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8193, 'Elder Mistwalker enjoys watching the struggles at the Maul in Feralas.', 'Elder Mistwalker enjoys watching the struggles at the Maul in Feralas.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8194, 'Go to the Freewind Post in Thousand Needles and you will find Elder Skyseer.', 'Go to the Freewind Post in Thousand Needles and you will find Elder Skyseer.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8195, 'I think Elder Splitrock has traveled to Maraudon in Desolace.', 'I think Elder Splitrock has traveled to Maraudon in Desolace.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8196, 'Elder Dreamseer resides in Gadgetzan in Tanaris Desert.', 'Elder Dreamseer resides in Gadgetzan in Tanaris Desert.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8197, 'Elder Ragetotem spends her days at the Valley of the Watchers in Tanaris Desert.', 'Elder Ragetotem spends her days at the Valley of the Watchers in Tanaris Desert.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8198, 'Zul\'Farrak in Tanaris Desert is Elder Wildmane\'s home.', 'Zul\'Farrak in Tanaris Desert is Elder Wildmane\'s home.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(8200, 'If you travel to Cenarion Hold in Silithus, you will find Elder Bladesing.', 'If you travel to Cenarion Hold in Silithus, you will find Elder Bladesing.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);


