-- ====================================
-- TBC 2007/2008 Hallows End Game Event - http://www.wowwiki.com/Hallow%27s_End?oldid=1654795
-- ====================================

-- Trick or Treat's Need To Be Finished For Innkeepers
-- Candy Bucket Quests Need To Be Checked and GO Linked
-- Innkeeper Candy Vendor Items


-- ===================================================
-- Fix Order of Gossip Menu Options For Some Gossip ID
-- ===================================================
DELETE FROM gossip_menu_option WHERE menu_id IN (7301);
INSERT INTO`gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('7301','2','1','I would like to take a look at your wares, Sid.','3','128','0','0','0','0','0','','0'),
('7301','3','5','I wish to make Honor Hold my home, Sid.','8','65536','0','0','0','0','0','','0');

DELETE FROM gossip_menu_option WHERE menu_id IN (7855);
INSERT INTO`gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('7855','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('7855','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu_option WHERE menu_id IN (7982);
INSERT INTO`gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('7982','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('7982','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu_option WHERE menu_id IN (6620);
INSERT INTO`gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('6620','1','5','Make this inn your home.','8','65536','0','0','0','0','0',NULL,'0'),
('6620','2','0','What can I do at an inn?','1','1','1221','0','0','0','0',NULL,'0'),
('6620','3','1','I want to browse your goods.','3','128','0','0','0','0','0',NULL,'0');

DELETE FROM gossip_menu_option WHERE menu_id IN (7288);
INSERT INTO`gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('7288','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('7288','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu_option WHERE menu_id IN (7290);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('7290','2','5','A fine offer, Floyd. I wish to make Hellfire Peninsula my home.','8','65536','0','0','0','0','0','','0'),
('7290','3','1','I\'m looking for some specialty goods. Let me browse your wares, Floyd.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu_option WHERE menu_id IN (8833);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('8833','2','1','What do you have to eat, Celeste?','3','128','0','0','0','0','0','','0'),
('8833','3','5','Make this inn your home.','8','65536','0','0','0','0','0','','0');

DELETE FROM gossip_menu_option WHERE menu_id IN (9245);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('9245','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('9245','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');


-- ====================================================================================
-- Backport From 4.3.4 Missing Gossip Data (Everything Appears Correct for ID's in TBC)
-- ====================================================================================
DELETE FROM gossip_menu WHERE entry IN (7173);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('7173','8448','0','0');
DELETE FROM gossip_menu_option WHERE menu_id IN (7173);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('7173','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('7173','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu WHERE entry IN (7324);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('7324','8699','0','0');
DELETE FROM gossip_menu_option WHERE menu_id IN (7324);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('7324','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('7324','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu WHERE entry IN (8912);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8912','11797','0','0');
DELETE FROM gossip_menu_option WHERE menu_id IN (8912);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('8912','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('8912','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu WHERE entry IN (6059);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('6059','7211','0','0');
DELETE FROM gossip_menu_option WHERE menu_id IN (6059);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('6059','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('6059','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu WHERE entry IN (7856);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('7856','9618','0','0');
DELETE FROM gossip_menu_option WHERE menu_id IN (7856);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('7856','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('7856','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');

DELETE FROM gossip_menu WHERE entry IN (7857);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('7857','9620','0','0');
DELETE FROM gossip_menu_option WHERE menu_id IN (7857);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('7857','2','5','Make this inn your home.','8','65536','0','0','0','0','0',NULL,'0'),
('7857','3','1','What do you have for sale?','3','128','0','0','0','0','0',NULL,'0');

DELETE FROM gossip_menu WHERE entry IN (9114);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('9114','10249','0','0');
DELETE FROM gossip_menu_option WHERE menu_id IN (9114);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('9114','2','5','Make this inn your home.','8','65536','0','0','0','0','0','','0'),
('9114','3','1','Let me browse your goods.','3','128','0','0','0','0','0','','0');


-- ===============================
-- Innkeeper Trick or Treat Gossip
-- ===============================
-- ----------------------------
-- Trick or Treat Gossip Script
-- ----------------------------
DELETE FROM dbscripts_on_gossip WHERE id IN (342);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('342','0','15','24751','0','0','0','0','0','0','0','0','0','0','0','0','Hallows End - Generic Trick or Treat Spell Cast (Innkeepers)');

-- ------------------------------------
-- Assign Missing Innkeeper Gossip ID's
-- ------------------------------------
UPDATE creature_template SET GossipMenuId=342 WHERE entry IN (6272,6740,8931);
UPDATE creature_template SET GossipMenuId=344 WHERE entry IN (3934,6746,7714,7737,9501,11106,11116);
UPDATE creature_template SET GossipMenuId=345 WHERE entry IN (774);
UPDATE creature_template SET GossipMenuId=349 WHERE entry IN (6791,6807,11118);
UPDATE creature_template SET GossipMenuId=1290 WHERE entry IN (5814,6928,6929,6930,7731,9356,12196,18957,19319,19470);
UPDATE creature_template SET GossipMenuId=1291 WHERE entry IN (295,2352,6727,6790);
UPDATE creature_template SET GossipMenuId=1293 WHERE entry IN (6736,19495);
UPDATE creature_template SET GossipMenuId=1294 WHERE entry IN (6747);
UPDATE creature_template SET GossipMenuId=1296 WHERE entry IN (2388,5688,6739,6741);
UPDATE creature_template SET GossipMenuId=1297 WHERE entry IN (1247,6734,19352);
UPDATE creature_template SET GossipMenuId=1581 WHERE entry IN (6737,6738,11103);
UPDATE creature_template SET GossipMenuId=2890 WHERE entry IN (7733);
UPDATE creature_template SET GossipMenuId=6059 WHERE entry IN (14731);
UPDATE creature_template SET GossipMenuId=6525 WHERE entry IN (15174);
UPDATE creature_template SET GossipMenuId=6620 WHERE entry IN (15433);
UPDATE creature_template SET GossipMenuId=7481 WHERE entry IN (18908);
UPDATE creature_template SET GossipMenuId=7173 WHERE entry IN (16256);
UPDATE creature_template SET GossipMenuId=7288 WHERE entry IN (16542,16618,17630);
UPDATE creature_template SET GossipMenuId=7290 WHERE entry IN (16602);
UPDATE creature_template SET GossipMenuId=7301 WHERE entry IN (16826);
UPDATE creature_template SET GossipMenuId=7324 WHERE entry IN (15397);
UPDATE creature_template SET GossipMenuId=7468 WHERE entry IN (16553);
UPDATE creature_template SET GossipMenuId=7481 WHERE entry IN (16739,18908,18914);
UPDATE creature_template SET GossipMenuId=7497 WHERE entry IN (17553,18251,18906,19046,25036);
UPDATE creature_template SET GossipMenuId=7855 WHERE entry IN (18907);
UPDATE creature_template SET GossipMenuId=7856 WHERE entry IN (18245);
UPDATE creature_template SET GossipMenuId=7857 WHERE entry IN (18913);
UPDATE creature_template SET GossipMenuId=7949 WHERE entry IN (21744,21746);
UPDATE creature_template SET GossipMenuId=7952 WHERE entry IN (19296);
UPDATE creature_template SET GossipMenuId=7982 WHERE entry IN (19531);
UPDATE creature_template SET GossipMenuId=8103 WHERE entry IN (19571);
UPDATE creature_template SET GossipMenuId=8375 WHERE entry IN (21110);
UPDATE creature_template SET GossipMenuId=8912 WHERE entry IN (24208);
UPDATE creature_template SET GossipMenuId=9114 WHERE entry IN (21088);
UPDATE creature_template SET GossipMenuId=9123 WHERE entry IN (23995);
UPDATE creature_template SET GossipMenuId=9868 WHERE entry IN (22922);

-- Missing Candy Bucket Spawns
-- NPC: 7737,

-- ---------------------------------------
-- Trick or Treat Innkeeper Gossip Options
-- ---------------------------------------
DELETE FROM gossip_menu_option WHERE menu_id IN (342,344,345,349,1290,1291,1293,1294,1296,1297,1581,2890,6059,6525,6620,7173,7324,7468,7481,7497,7855,7949,7952,7982,8103,8375,9123,9733,9866,9868) AND ID IN (0);
DELETE FROM gossip_menu_option WHERE menu_id IN (8833,9245) AND ID IN (2);

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
-- Gossip: 342 (NPC: 6272,6740,8931)
('342','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 344 (NPC: 3934,6746,7714,7737,9501,11106,11116)
('344','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 345 (NPC: 1464,5111,7744)
('345','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 349 (NPC: 6791,6807,11118)
('349','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 1290 (NPC: 5814,6928,6929,6930,7731,9356,12196,18957,19319,19470)
('1290','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 1291 (NPC: 295,2352,6727,6790)
('1291','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 1293 (NPC: 6736,19495)
('1293','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 1294 (NPC: 6747)
('1294','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 1296 (NPC: 2388,5688,6739,6741)
('1296','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 1297 (NPC: 1247,6734,19352)
('1297','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 1581 (NPC: 6735,6737,6738,7736,11103,16458)
('1581','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 2890 (NPC: 7733)
('2890','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 6059 (NPC: 14731)
('6059','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 6525 (NPC: 15174)
('6525','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 6620 (NPC: 15433)
('6620','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7173 (NPC: 16256)
('7173','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7288 (NPC: 16542,16618,17630)
('7288','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7290 (NPC: 16602)
('7290','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7301 (NPC: 16826)
('7301','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7324 (NPC: 15397)
('7324','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7468 (NPC: 16553)
('7468','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7481 (NPC: 16739,18908,18914)
('7481','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7497 (NPC: 17553,18251,18906,19046,25036)
('7497','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7855 (NPC: 18907)
('7855','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7856 (NPC: 18245)
('7856','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7857 (NPC: 18913)
('7857','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7949 (NPC: 19232,21744,21746)
('7949','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7952 (NPC: 19296)
('7952','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 7982 (NPC: 19531)
('7982','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 8103 (NPC: 19571)
('8103','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 8375 (NPC: 21110)
('8375','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 8833 (NPC: )
('8833','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 8912 (NPC: 24208)
('8912','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 9114 (NPC: 21088)
('9114','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 9123 (NPC: 23995)
('9123','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 9245 (NPC: )
('9245','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 9733 (NPC: )
('9733','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 9866 (NPC: )
('9866','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164'),
-- Gossip: 9868 (NPC: 22922)
('9868','0','0','Trick or Treat!','1','1','-1','0','342','0','0',NULL,'164');


-- ==============================================
-- Innkeeper Candy Buckets - Gameobject Templates - (Missing and Backported From UDB)
-- ==============================================
DELETE FROM gameobject_template WHERE entry IN (189303,190034,190035,190037,190038,190039,190040,190041,190042,190043,190044,190045,190046,190047,190048,190049,190050,190051,190052,190053,190054,190055,190056,190057,190058,190059,190060,190061,190062,190063,190081,190100,190102,190104,190105,190106,190107,190108,190109,190110,190112,190113,190114,190115,190116);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES
-- Elwynn Forest - Goldshire
('189303','2','6404','Candy Bucket','','','1732','4','1','0','8837','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Teldrassil - Dolanaar
('190034','2','6404','Candy Bucket','','','1732','4','1','0','8860','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Ashenvale - Astranaar
('190035','2','6404','Candy Bucket','','Examining','1732','4','1','0','8861','0','0','0','0','24124','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Dun Morogh - Kharanos
('190036','2','6404','Candy Bucket','','','0','0','1','0','8862','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Azuremyst Isle - Azure Watch
('190037','2','6404','Candy Bucket','','','1732','4','1','0','8863','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Darnassus - Craftmans Terrace
('190038','2','6404','Candy Bucket','','','1732','4','1','0','8864','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Ironforge - The Commons
('190039','2','6404','Candy Bucket','','','1732','4','1','0','8865','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Stormwind City - Trade District
('190040','2','6404','Candy Bucket','','','1732','4','1','0','8866','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- The Exodar
('190041','2','6404','Candy Bucket','','','1732','4','1','0','8867','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Auberdine - ??? ZONE
('190042','2','6404','Candy Bucket','','','1732','4','1','0','8868','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Loch Modan - Thelsamar
('190043','2','6404','Candy Bucket','','','1732','4','1','0','8869','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Wetlands - Menethil Harbor
('190044','2','6404','Candy Bucket','','','1732','4','1','0','8870','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Bloodmyst Isle - Blood Watch
('190045','2','6404','Candy Bucket','','','1732','4','1','0','8871','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Redridge Mountains - Lakeshire
('190046','2','6404','Candy Bucket','','','1732','4','1','0','8872','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Westfall - Sentinel Hill
('190047','2','6404','Candy Bucket','','','1732','4','1','0','8873','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Duskwood - Darkshire
('190048','2','6404','Candy Bucket','','','1732','4','1','0','8874','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Hillsbrad Foothills - Southshore
('190049','2','6404','Candy Bucket','','','1732','4','1','0','8875','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Stonetalon Mountains - Stonetalon Peak
('190050','2','6404','Candy Bucket','','','1732','4','1','0','8876','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Desolace - Nijels Point
('190051','2','6404','Candy Bucket','','','1732','4','1','0','8877','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Dustwallow Marsh - Theramore Isle
('190052','2','6404','Candy Bucket','','','1732','4','1','0','8878','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Feralas - Feathermoon Stronghold
('190053','2','6404','Candy Bucket','','','1732','4','1','0','8879','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- The Hinterlands - Aerie Peak
('190054','2','6404','Candy Bucket','','','1732','4','1','0','8880','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Hellfire Peninsula - Honor Hold
('190055','2','6404','Candy Bucket','','','1732','4','1','0','8881','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Hellfire Peninsula - Temple of Telmahut
('190056','2','6404','Candy Bucket','','','1732','4','1','0','8882','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Zangarmarsh - Telredor
('190057','2','6404','Candy Bucket','','','1732','4','1','0','8883','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Zangarmarsh - Orebor Harborage
('190058','2','6404','Candy Bucket','','','1732','4','1','0','8884','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Terokkar Forest - Allerian Stronghold
('190059','2','6404','Candy Bucket','','','1732','4','1','0','8885','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Nagrand - Telaar
('190060','2','6404','Candy Bucket','','','1732','4','1','0','8886','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Blade's Edge Mountains - Sylvanaar
('190061','2','6404','Candy Bucket','','','1732','4','1','0','8887','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Blade's Edge Mountains - Near Death's Door
('190062','2','6404','Candy Bucket','','','1732','4','1','0','8888','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Shadowmoon Valley - Wildhammer Stronghold
('190063','2','6404','Candy Bucket','','','1732','4','1','0','8889','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Durotar - Razor Hill
('190064','2','6404','Candy Bucket','','','0','0','1','0','8890','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Mulgore - Bloodhoof Village
('190065','2','6404','Candy Bucket','','','0','0','1','0','8891','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Tirisfal Glades - Brill
('190066','2','6404','Candy Bucket','','','0','0','1','0','8892','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Eversong Woods - Near Silvermoon City
('190067','2','6404','Candy Bucket','','','0','0','1','0','8893','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Eversong Woods - Fairebreeze Village
('190068','2','6404','Candy Bucket','','','0','0','1','0','8894','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Orgrimmar
('190069','2','6404','Candy Bucket','','','0','0','1','0','8895','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Thunder Bluff
('190070','2','6404','Candy Bucket','','','0','0','1','0','8896','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Undercity
('190071','2','6404','Candy Bucket','','','0','0','1','0','8897','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Silvermoon City - Royal Exchange
('190072','2','6404','Candy Bucket','','','0','0','1','0','8898','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Silvermoon City - The Bazaar
('190073','2','6404','Candy Bucket','','','0','0','1','0','8899','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Silverpine Forest - The Sepulcher
('190074','2','6404','Candy Bucket','','','0','0','1','0','8900','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Ghostlands - Tranquillien
('190075','2','6404','Candy Bucket','','','0','0','1','0','8901','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Barrens - The Crossroads
('190076','2','6404','Candy Bucket','','','0','0','1','0','8902','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- ??? Barrens Location ???
('190077','2','6404','Candy Bucket','','','0','0','1','0','8903','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Hillsbrad Foothills - Tarren Mill
('190078','2','6404','Candy Bucket','','','0','0','1','0','8904','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Ashenvale - Splintertree Post
('190079','2','6404','Candy Bucket','','','0','0','1','0','8905','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Stonetalon Mountains - Sun Rock Retreat
('190080','2','6404','Candy Bucket','','','0','0','1','0','8906','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Thousand Needles
('190081','2','6404','Candy Bucket','','','1735','4','1','0','8907','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Arathi Highlands - Hammerfall
('190082','2','6404','Candy Bucket','','','0','0','1','0','8908','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Desolace - Shadowprey Village
('190083','2','6404','Candy Bucket','','','0','0','1','0','8909','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Stranglethorn Vale - Grom'gol Base Camp
('190084','2','6404','Candy Bucket','','','0','0','1','0','8910','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Dustwallow Marsh - Brackenwall Village
('190085','2','6404','Candy Bucket','','','0','0','1','0','8911','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Swamp of Sorrows - Stonard
('190086','2','6404','Candy Bucket','','','0','0','1','0','8912','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Badlands - New Kargath
('190087','2','6404','Candy Bucket','','','0','0','1','0','8913','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Feralas - Camp Mojache
('190088','2','6404','Candy Bucket','','','0','0','1','0','8914','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- The Hinterlands - Revantusk Village
('190089','2','6404','Candy Bucket','','','0','0','1','0','8915','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Hellfire Peninsula - Thrallmar
('190090','2','6404','Candy Bucket','','','0','0','1','0','8916','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Hellfire Peninsula - Falcon Watch
('190091','2','6404','Candy Bucket','','','0','0','1','0','8917','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Zangarmarsh - Zabra'jin
('190096','2','6404','Candy Bucket','','','0','0','1','0','8918','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Terokkar Forest - Stonebreaker Hold
('190097','2','6404','Candy Bucket','','','0','0','1','0','8919','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Nagrand - Garadar
('190098','2','6404','Candy Bucket','','','0','0','1','0','8920','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Blade's Edge Mountains - Thunderlord Stronghold
('190099','2','6404','Candy Bucket','','','0','0','1','0','8921','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Blade's Edge Mountains - Mok'nathal Village
('190100','2','6404','Candy Bucket','','','1735','4','1','0','8922','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Shadowmoon Valley - Shadowmoon Village
('190101','2','6404','Candy Bucket','','','0','0','1','0','8923','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Barrens - Ratchet
('190102','2','6404','Candy Bucket','','','35','4','1','0','8924','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Booty Bay
('190103','2','6404','Candy Bucket','','','0','0','1','0','8925','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Dustwallow Marsh - Mudsprocket
('190104','2','6404','Candy Bucket','','','35','4','1','0','8926','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Gadgetzan
('190105','2','6404','Candy Bucket','','','35','4','1','0','8927','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Winterspring - Everlook
('190106','2','6404','Candy Bucket','','','35','4','1','0','8928','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Silithus - Cenarion Hold
('190107','2','6404','Candy Bucket','','','35','4','1','0','8929','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Eastern Plaguelands - Lights Hope Chapel
('190108','2','6404','Candy Bucket','','','35','4','1','0','8930','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Zangarmarsh - Cenarion Refuge
('190109','2','6404','Candy Bucket','','','35','4','1','0','8931','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Shattrath City - Aldor Rise
('190110','2','6404','Candy Bucket','','','1743','4','1','0','8932','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Shattrath City - Scryer's Rise
('190111','2','6404','Candy Bucket','','','0','0','1','0','8933','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Blade's Edge Mountains - Ruuan weald
('190112','2','6404','Candy Bucket','','','35','4','1','0','8934','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Netherstorm - Area 52
('190113','2','6404','Candy Bucket','','','35','4','1','0','8935','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Netherstorm - Stormspire
('190114','2','6404','Candy Bucket','','','35','4','1','0','8936','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Shadowmoon Valley - Altar of Sha'tar
('190115','2','6404','Candy Bucket','','','1743','4','1','0','8937','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',''),
-- Shadowmoon Valley - Sanctum of the Stars
('190116','2','6404','Candy Bucket','','','1744','4','1','0','8938','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');














