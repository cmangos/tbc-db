-- Source: Classic-db

-- ----------------------------
-- Sergeant Maclear (Entry: 14984)
UPDATE creature_template SET GossipMenuId=6324, NpcFlags=NpcFlags|1 WHERE entry=14984;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=14984);

DELETE FROM `gossip_menu` WHERE `entry`=6324;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6324, 7517, 0, 0);

-- ----------------------------
-- Defilers Emissary (Entry: 14990)
UPDATE creature_template SET GossipMenuId=6478, NpcFlags=NpcFlags|1 WHERE entry=14990;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=14990);

DELETE FROM `gossip_menu` WHERE `entry`=6478;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6478, 7678, 0, 0),
(6478, 7679, 0, 986);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6478;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(6478, 0, 9, 'I wish to join the battle!', 12, 1048576, 0, 0, 0, 0, 0, NULL, 986);

DELETE FROM `conditions` WHERE `condition_entry`=986;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
(986, 15, 20, 1, 'Player Level >= 20');

-- ----------------------------
-- League of Arathor Emissary (Entry: 14991)
UPDATE creature_template SET GossipMenuId=6504, NpcFlags=NpcFlags|1 WHERE entry=14991;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=14991);

DELETE FROM `gossip_menu` WHERE `entry`=6504;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6504, 7699, 0, 0),
(6504, 7700, 0, 986);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6504;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6504, 0, 9, 'I would like to go to the battleground.', 12, 1048576, 0, 0, 0, 0, 0, NULL, 986);

-- ----------------------------
-- Javnir Nashak (Entry: 15012)
UPDATE creature_template SET GossipMenuId=6342, NpcFlags=NpcFlags|1 WHERE entry=15012;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15012);

DELETE FROM `gossip_menu` WHERE `entry`=6342;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6342, 7535, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6342;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6342, 0, 1, 'Let me browse your selection of fireworks.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Deathstalker Mortis (Entry: 15022)
UPDATE creature_template SET GossipMenuId=6362, NpcFlags=NpcFlags|1 WHERE entry=15022;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15022);

DELETE FROM `gossip_menu` WHERE `entry`=6362;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6362, 7555, 0, 0);

-- ----------------------------
-- Silverwing Emissary (Entry: 15102)
UPDATE creature_template SET GossipMenuId=6508, NpcFlags=NpcFlags|1 WHERE entry=15102;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15102);

DELETE FROM `gossip_menu` WHERE `entry`=6508;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6508, 7704, 0, 0),
(6508, 7705, 0, 107);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6508;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(6508, 0, 9, 'I wish to join the battle!', 12, 1048576, 0, 0, 0, 0, 0, NULL, 107);

-- ----------------------------
-- Warsong Emissary (Entry: 15105)
UPDATE creature_template SET GossipMenuId=6490, NpcFlags=NpcFlags|1 WHERE entry=15105;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15105);

DELETE FROM `gossip_menu` WHERE `entry`=6490;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6490, 7688, 0, 0),
(6490, 7689, 0, 107);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6490;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6490, 0, 9, 'I wish to join the battle!', 12, 1048576, 0, 0, 0, 0, 0, NULL, 107);

-- ----------------------------
-- Frostwolf Emissary (Entry: 15106)
UPDATE creature_template SET GossipMenuId=6484, NpcFlags=NpcFlags|1 WHERE entry=15106;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15106);

DELETE FROM `gossip_menu` WHERE `entry`=6484;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6484, 7683, 0, 0),
(6484, 7684, 0, 987);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6484;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6484, 0, 9, 'I would like to go to the battleground.', 12, 1048576, 0, 0, 0, 0, 0, NULL, 987);

DELETE FROM `conditions` WHERE `condition_entry`=987;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(987, 15, 51, 1, 'Player Level >= 51');

-- ----------------------------
-- Grinkle (Entry: 15116)
UPDATE creature_template SET GossipMenuId=6476, NpcFlags=NpcFlags|1 WHERE entry=15116;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15116);

DELETE FROM `gossip_menu` WHERE `entry`=6476;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6476, 7677, 0, 0);

-- ----------------------------
-- Khur Hornstriker (Entry: 15175)
UPDATE creature_template SET GossipMenuId=6526, NpcFlags=NpcFlags|1 WHERE entry=15175;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15175);

DELETE FROM `gossip_menu` WHERE `entry`=6526;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6526, 7728, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6526;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6526, 0, 1, 'Let me browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Mishta (Entry: 15179)
UPDATE creature_template SET GossipMenuId=6528, NpcFlags=NpcFlags|1 WHERE entry=15179;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15179);

DELETE FROM `gossip_menu` WHERE `entry`=6528;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6528, 7730, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6528;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6528, 0, 1, 'Let me browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Baristolth of the Shifting Sands (Entry: 15180)
UPDATE creature_template SET GossipMenuId=6529, NpcFlags=NpcFlags|1 WHERE entry=15180;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15180);

DELETE FROM `gossip_menu` WHERE `entry`=6529;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6529, 7731, 0, 0);

-- ----------------------------
-- Commander Mar'alith (Entry: 15181)
UPDATE creature_template SET GossipMenuId=6530, NpcFlags=NpcFlags|1 WHERE entry=15181;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15181);

DELETE FROM `gossip_menu` WHERE `entry`=6530;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6530, 7732, 0, 0);

-- ----------------------------
-- Vish Kozus (Entry: 15182)
UPDATE creature_template SET GossipMenuId=6531, NpcFlags=NpcFlags|1 WHERE entry=15182;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15182);

DELETE FROM `gossip_menu` WHERE `entry`=6531;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6531, 7733, 0, 0),
(6531, 7751, 0, 1020);

DELETE FROM `conditions` WHERE `condition_entry`=1020;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
(1020, 9, 8283, 0, 'Quest ID 8283 Taken');

-- ----------------------------
-- Geologist Larksbane (Entry: 15183)
UPDATE creature_template SET GossipMenuId=6532, NpcFlags=NpcFlags|1 WHERE entry=15183;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15183);

DELETE FROM `gossip_menu` WHERE `entry`=6532;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6532, 7734, 0, 0);

-- ----------------------------
-- Noggle Ficklespragg (Entry: 15190)
UPDATE creature_template SET GossipMenuId=6544, NpcFlags=NpcFlags|1 WHERE entry=15190;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15190);

DELETE FROM `gossip_menu` WHERE `entry`=6544;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6544, 7753, 0, 0);

-- ----------------------------
-- Anachronos (Entry: 15192)
UPDATE creature_template SET GossipMenuId=6539, NpcFlags=NpcFlags|1 WHERE entry=15192;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15192);

DELETE FROM `gossip_menu` WHERE `entry`=6539;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6539, 7742, 0, 0);

-- ----------------------------
-- Hermit Ortell (Entry: 15194)
UPDATE creature_template SET GossipMenuId=6596, NpcFlags=NpcFlags|1 WHERE entry=15194;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15194);

DELETE FROM `gossip_menu` WHERE `entry`=6596;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6596, 7816, 0, 0);

-- ----------------------------
-- Sergeant Hartman (Entry: 15199)
UPDATE creature_template SET GossipMenuId=6538, NpcFlags=NpcFlags|1 WHERE entry=15199;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15199);

DELETE FROM `gossip_menu` WHERE `entry`=6538;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6538, 7741, 0, 0);

-- ----------------------------
-- Aurel Goldleaf (Entry: 15282)
UPDATE creature_template SET GossipMenuId=6567, NpcFlags=NpcFlags|1 WHERE entry=15282;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15282);

DELETE FROM `gossip_menu` WHERE `entry`=6567;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6567, 7782, 0, 0);

-- ----------------------------
-- Aendel Windspear (Entry: 15293)
UPDATE creature_template SET GossipMenuId=6568, NpcFlags=NpcFlags|1 WHERE entry=15293;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15293);

DELETE FROM `gossip_menu` WHERE `entry`=6568;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6568, 7783, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6568;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6568, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Merithra of the Dream (Entry: 15378)
UPDATE creature_template SET GossipMenuId=6795, NpcFlags=NpcFlags|1 WHERE entry=15378;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15378);

DELETE FROM `gossip_menu` WHERE `entry`=6795;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6795, 8113, 0, 0);

-- ----------------------------
-- Caelestrasz (Entry: 15379)
UPDATE creature_template SET GossipMenuId=6794, NpcFlags=NpcFlags|1 WHERE entry=15379;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15379);

DELETE FROM `gossip_menu` WHERE `entry`=6794;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6794, 8112, 0, 0);

-- ----------------------------
-- Arygos (Entry: 15380)
UPDATE creature_template SET GossipMenuId=6793, NpcFlags=NpcFlags|1 WHERE entry=15380;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15380);

DELETE FROM `gossip_menu` WHERE `entry`=6793;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6793, 8111, 0, 0);

-- ----------------------------
-- Janela Stouthammer (Entry: 15443)
UPDATE creature_template SET GossipMenuId=6623, NpcFlags=NpcFlags|1 WHERE entry=15443;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15443);

DELETE FROM `gossip_menu` WHERE `entry`=6623;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6623, 7874, 0, 0);

-- ----------------------------
-- Keyl Swiftclaw (Entry: 15500)
UPDATE creature_template SET GossipMenuId=6927, NpcFlags=NpcFlags|1 WHERE entry=15500;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15500);

DELETE FROM `gossip_menu` WHERE `entry`=6927;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6927, 8216, 0, 0);

-- ----------------------------
-- Kandrostrasz (Entry: 15503)
UPDATE creature_template SET GossipMenuId=6645, NpcFlags=NpcFlags|1 WHERE entry=15503;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15503);

DELETE FROM `gossip_menu` WHERE `entry`=6645;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6645, 7900, 0, 0);

-- ----------------------------
-- Vethsera (Entry: 15504)
UPDATE creature_template SET GossipMenuId=6655, NpcFlags=NpcFlags|1 WHERE entry=15504;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15504);

DELETE FROM `gossip_menu` WHERE `entry`=6655;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6655, 7911, 0, 0);

-- ----------------------------
-- Cenarion Scout Azenel (Entry: 15610)
UPDATE creature_template SET GossipMenuId=6690, NpcFlags=NpcFlags|1 WHERE entry=15610;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15610);

DELETE FROM `gossip_menu` WHERE `entry`=6690;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6690, 8063, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6690;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6690, 0, 0, 'May I have your report?', 1, 1, -1, 0, 669001, 0, 0, NULL, 1103);

DELETE FROM `dbscripts_on_gossip` WHERE `id`=669001;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(669001, 0, 15, 25843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Hive\'Zora Scout Report');

-- Relocate colliding condition. This is tbc content, so move it to a higher range to prevent vanilla collision
UPDATE conditions SET condition_entry=10041 WHERE condition_entry=1101 AND type=8 AND value1=8347;
UPDATE gossip_menu SET condition_id=10041 WHERE entry=6570 AND text_id=7869;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1101 AND 1103;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(1101, 9, 8534, 0, 'Quest ID 8534 Taken'),
(1102, 24, 21158, 1, 'Player Has Less Than 1 of Item ID 21158 in Inventory/Bank'),
(1103, -1, 1101, 1102, '(Quest ID 8534 Taken AND Player Has Less Than 1 of Item ID 21158 in Inventory/Bank)');

-- ----------------------------
-- Krug Skullsplit (Entry: 15612)
UPDATE creature_template SET GossipMenuId=6687, NpcFlags=NpcFlags|1 WHERE entry=15612;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15612);

DELETE FROM `gossip_menu` WHERE `entry`=6687;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6687, 8059, 0, 0);

-- ----------------------------
-- Merok Longstride (Entry: 15613)
UPDATE creature_template SET GossipMenuId=6926, NpcFlags=NpcFlags|1 WHERE entry=15613;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15613);

DELETE FROM `gossip_menu` WHERE `entry`=6926;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6926, 8215, 0, 0);

-- ----------------------------
-- Stormwind Reveler (Entry: 15694)
UPDATE creature_template SET GossipMenuId=6931, NpcFlags=NpcFlags|1 WHERE entry=15694;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15694);

DELETE FROM `gossip_menu` WHERE `entry`=6931;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6931, 8218, 0, 0);

-- ----------------------------
-- Thunder Bluff Reveler (Entry: 15719)
UPDATE creature_template SET GossipMenuId=6933, NpcFlags=NpcFlags|1 WHERE entry=15719;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15719);

DELETE FROM `gossip_menu` WHERE `entry`=6933;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6933, 8222, 0, 0);

-- ----------------------------
-- Wonderform Operator (Entry: 15732)
UPDATE creature_template SET GossipMenuId=6802, NpcFlags=NpcFlags|1 WHERE entry=15732;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15732);

DELETE FROM `gossip_menu` WHERE `entry`=6802;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6802, 8125, 0, 0);

-- ----------------------------
-- Winter Reveler (Entry: 15760)
UPDATE creature_template SET GossipMenuId=6813, NpcFlags=NpcFlags|1 WHERE entry=15760;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15760);

DELETE FROM `gossip_menu` WHERE `entry`=6813;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6813, 8139, 0, 0);

-- ----------------------------
-- Sergeant Carnes (Entry: 15903)
UPDATE creature_template SET GossipMenuId=6923, NpcFlags=NpcFlags|1 WHERE entry=15903;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15903);

DELETE FROM `gossip_menu` WHERE `entry`=6923;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6923, 8212, 0, 0);

-- ----------------------------
-- Darnassus Reveler (Entry: 15905)
UPDATE creature_template SET GossipMenuId=6930, NpcFlags=NpcFlags|1 WHERE entry=15905;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15905);

DELETE FROM `gossip_menu` WHERE `entry`=6930;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6930, 8220, 0, 0);

-- ----------------------------
-- Ironforge Reveler (Entry: 15906)
UPDATE creature_template SET GossipMenuId=6929, NpcFlags=NpcFlags|1 WHERE entry=15906;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15906);

DELETE FROM `gossip_menu` WHERE `entry`=6929;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6929, 8219, 0, 0);

-- ----------------------------
-- Undercity Reveler (Entry: 15907)
UPDATE creature_template SET GossipMenuId=6934, NpcFlags=NpcFlags|1 WHERE entry=15907;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15907);

DELETE FROM `gossip_menu` WHERE `entry`=6934;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6934, 8223, 0, 0);

-- ----------------------------
-- Orgrimmar Reveler (Entry: 15908)
UPDATE creature_template SET GossipMenuId=6932, NpcFlags=NpcFlags|1 WHERE entry=15908;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15908);

DELETE FROM `gossip_menu` WHERE `entry`=6932;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6932, 8221, 0, 0);

-- ----------------------------
-- Fariel Starsong (Entry: 15909)
UPDATE creature_template SET GossipMenuId=6924, NpcFlags=NpcFlags|1 WHERE entry=15909;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=15909);

DELETE FROM `gossip_menu` WHERE `entry`=6924;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(6924, 8213, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=6924;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(6924, 0, 1, 'I want to browse your goods.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(6924, 1, 0, 'Good luck.', 1, 1, -1, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Mux Manascrambler (Entry: 16014)
UPDATE creature_template SET GossipMenuId=7083, NpcFlags=NpcFlags|1 WHERE entry=16014;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16014);

DELETE FROM `gossip_menu` WHERE `entry`=7083;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7083, 8335, 0, 0);

-- ----------------------------
-- Vi'el (Entry: 16015)
UPDATE creature_template SET GossipMenuId=7046, NpcFlags=NpcFlags|1 WHERE entry=16015;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16015);

DELETE FROM `gossip_menu` WHERE `entry`=7046;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7046, 8292, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=7046;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(7046, 0, 1, 'Hey Vi\'el, show me your wares!', 3, 128, 0, 0, 0, 0, 0, NULL, 0);

-- ----------------------------
-- Commander Eligor Dawnbringer (Entry: 16115)
UPDATE creature_template SET GossipMenuId=7097, NpcFlags=NpcFlags|1 WHERE entry=16115;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16115);

DELETE FROM `gossip_menu` WHERE `entry`=7097;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7097, 8351, 0, 0);

-- ----------------------------
-- Packmaster Stonebruiser (Entry: 16283)
UPDATE creature_template SET GossipMenuId=7174, NpcFlags=NpcFlags|1 WHERE entry=16283;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16283);

DELETE FROM `gossip_menu` WHERE `entry`=7174;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7174, 8452, 0, 0);

-- ----------------------------
-- Bloodsail Traitor (Entry: 16399)
UPDATE creature_template SET GossipMenuId=7236, NpcFlags=NpcFlags|1 WHERE entry=16399;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16399);

DELETE FROM `gossip_menu` WHERE `entry`=7236;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7236, 8536, 0, 0);

-- ----------------------------
-- Rumsen Fizzlebrack (Entry: 16417)
UPDATE creature_template SET GossipMenuId=7239, NpcFlags=NpcFlags|1 WHERE entry=16417;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16417);

DELETE FROM `gossip_menu` WHERE `entry`=7239;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7239, 8539, 0, 0);

-- ----------------------------
-- Mupsi Shacklefridd (Entry: 16418)
UPDATE creature_template SET GossipMenuId=7237, NpcFlags=NpcFlags|1 WHERE entry=16418;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16418);

DELETE FROM `gossip_menu` WHERE `entry`=7237;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7237, 8537, 0, 0);

-- ----------------------------
-- Midsummer Celebrant (Entry: 16781)
UPDATE creature_template SET GossipMenuId=9148, NpcFlags=NpcFlags|1 WHERE entry=16781;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16781);

DELETE FROM `gossip_menu` WHERE `entry`=9148;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(9148, 12376, 0, 0);

-- ----------------------------
-- Festival Loremaster (Entry: 16817)
UPDATE creature_template SET GossipMenuId=7326, NpcFlags=NpcFlags|1 WHERE entry=16817;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16817);

DELETE FROM `gossip_menu` WHERE `entry`=7326;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(7326, 8703, 0, 0);

-- ----------------------------
-- Festival Talespinner (Entry: 16818)
UPDATE creature_template SET GossipMenuId=9298, NpcFlags=NpcFlags|1 WHERE entry=16818;
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id=16818);

DELETE FROM `gossip_menu` WHERE `entry`=9298;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(9298, 12609, 0, 0);


