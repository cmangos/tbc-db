UPDATE quest_template SET CompleteScript=10254 WHERE entry=10254;

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10254;
INSERT INTO `dbscripts_on_quest_end` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10254,0,15,6245,0,0,0,0,0,0,0,0,2,'Force Commander Danath Trollbane - Cast Force Target - Salute',0,0,0,0),
(10254,0,0,0,0,0,2000001300,0,0,0,0,0,0,'Force Commander Danath Trollbane - Welcome to Honor Hold, $n.  It''s good to have you.',0,0,0,0);

DELETE FROM `db_script_string` WHERE `entry`=2000001300;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001300, 'Welcome to Honor Hold, $n.  It''s good to have you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Force Commander Danath Trollbane (Entry: 16819)');

DELETE FROM conditions WHERE condition_entry BETWEEN 978 AND 984;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(978, 9, 10254, 0), -- Quest 10254 Accepted
(979, 8, 10254, 0), -- Quest 10254 Rewarded
(980, 8, 10160, 0), -- Quest 10160 Rewarded
(981, -3, 980, 0), -- Quest 10160 NOT Rewarded
(982, -1, 979, 981), -- Quest 10254 Rewarded AND Quest 10160 NOT Rewarded
(983, 8, 10141, 0), -- Quest 10141 Rewarded
(984, -1, 979, 983); -- Quest 10254 AND 10141 Rewarded

UPDATE `gossip_menu` SET `condition_id`=978 WHERE `entry`=7352 AND `text_id`=9938; -- Quest 10254 Accepted
UPDATE `gossip_menu` SET `condition_id`=979 WHERE `entry`=7352 AND `text_id`=9939; -- Quest 10254 Rewarded

UPDATE `gossip_menu_option` SET `condition_id`=979 WHERE `menu_id`=7352 AND `id`=0; -- Quest 10254 Rewarded
UPDATE `gossip_menu_option` SET `condition_id`=982, `action_menu_id`=8049 WHERE `menu_id`=7352 AND `id`=1; -- Quest 10254 Rewarded AND Quest 10160 NOT Rewarded
UPDATE `gossip_menu_option` SET `condition_id`=984 WHERE `menu_id`=7352 AND `id`=2; -- Quest 10254 AND 10141 Rewarded

-- Missing menu
DELETE FROM gossip_menu WHERE entry=8049;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(8049, 9941, 0, 0);

