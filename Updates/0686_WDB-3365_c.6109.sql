-- Azuregos 6109
UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 15000 WHERE Entry = 6109;

-- Spirit of Azuregos 15481
UPDATE creature_template SET GossipMenuId = 15013 WHERE Entry = 15481;
-- missing gossip
DELETE FROM gossip_menu WHERE entry BETWEEN 15000 AND 15013;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(15000, 7880, 0, 0),
(15000, 7885, 0, 20273),
(15000, 7901, 0, 20271),
(15001, 7886, 0, 0),
(15002, 7887, 0, 0),
(15003, 7888, 0, 0),
(15004, 7889, 0, 0),
(15005, 7890, 0, 0),
(15006, 7891, 0, 0),
(15007, 7892, 0, 0),
(15008, 7893, 0, 0),
(15009, 7894, 0, 0),
(15010, 7895, 0, 0),
(15011, 7896, 0, 0),
(15012, 7897, 1501201, 0), -- ClassicDB 15011
(15013, 7881, 0, 0),
(15013, 7885, 0, 20273),
(15013, 7901, 0, 20271);

DELETE FROM gossip_menu_option WHERE menu_id BETWEEN 15000 AND 15013;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('15000','0','0','I am a treasure hunter in search of powerful artifacts. Give them to me and you will not be harmed.','11016','1','1','-1','0','1500001','0','0',NULL,'0','0'), -- ClassicDB 15000
('15000','1','0','How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?','11034','1','1','15001','0','0','0','0',NULL,'0','20273'),
('15001','0','0','Alright. Where?','11036','1','1','15002','0','0','0','0',NULL,'0','0'),
('15002','0','0','By Bronzebeard\'s... um, beard! What are you talking about?','11038','1','1','15003','0','0','0','0',NULL,'0','0'),
('15003','0','0','Fish? You gave a piece of what could be the key to saving all life on Kalimdor to a fish?','11040','1','1','15004','0','0','0','0',NULL,'0','0'),
('15004','0','0','A minnow? The oceans are filled with minnows! There could be a hundred million million minnows out there!','11042','1','1','15005','0','0','0','0',NULL,'0','0'),
('15005','0','0','...','11044','1','1','15006','0','0','0','0',NULL,'0','0'),
('15006','0','0','You put the piece on a minnow and placed the minnow somewhere in the waters of the sea between here and the Eastern Kingdoms? And this minnow has special powers?','11046','1','1','15007','0','0','0','0',NULL,'0','0'),
('15007','0','0','You\'re insane.','11048','1','1','15008','0','0','0','0',NULL,'0','0'),
('15008','0','0','I\'m all ears.','11050','1','1','15009','0','0','0','0',NULL,'0','0'),
('15009','0','0','Come again.','11052','1','1','15010','0','0','0','0',NULL,'0','0'),
('15010','0','0','Ok, let me get this straight. You put the scepter entrusted to your Flight by Anachronos on a minnow of your own making and now you expect me to build an... an arcanite buoy or something... to force your minnow out of hiding? AND potentially incur the wrath of an Elemental Lord? Did I miss anything? Perhaps I am to do this without any clothes on, during a solar eclipse, on a leap year?','11054','1','1','15011','0','0','0','0',NULL,'0','0'),
('15011','0','0','FINE! And how, dare I ask, am I supposed to acquire an arcanite buoy?','11057','1','1','15012','0','0','0','0',NULL,'0','0'),
('15012','0','0','But...','11059','1','1','-1','0','1501202','0','0',NULL,'0','0'), -- ClassicDB 15012 
('15013','1','0','How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?','11034','1','1','15001','0','0','0','0',NULL,'0','20273');

DELETE FROM dbscripts_on_gossip WHERE id IN (1500001,1501201,1501202);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1500001,0,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Azuregos attacks player'),
(1501201,0,17,20949,1,0,0,0,0,0,0,0,0,0,0,0,0,'creates item Magical Ledger'),
(1501202,0,0,0,0,0,0,0,0,2000000246,0,0,0,0,0,0,0,'Azuregos says Good Day');

DELETE FROM conditions WHERE condition_entry BETWEEN 20270 AND 20273;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUES
(20270,8,8555,0,0,0,0), -- classicDB 59
(20271,2,20949,1,0,0,0), -- classicDB 60
(20272,23,20949,1,0,0,1), -- classicDB 61
(20273,-1,20272,20270,0,0,0); -- classicDB 62

DELETE FROM dbscript_string WHERE entry = 2000000246; -- classicDB 2000000163
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment, broadcast_text_id) VALUES
(2000000246,'I SAID GOOD DAY!',0,1,0,0,NULL, 11060);
