/*
Fire at Will!/Hound Master questline
http://www.wowhead.com/quest=10820/deceive-thy-enemy#comments:id=23105
Wildlord Antelarion should replace item if player lost it, otherwise player can get stuck unable to continue

Gossip condition:

Player not completed 10821
AND
Player does not have item 31366
AND
(Player completed 10819 OR Player taken 10819)
*/
UPDATE `creature_template` SET `GossipMenuId` = 8523 WHERE `entry` = 22127;

DELETE FROM `gossip_menu` WHERE `entry` = 8523;
INSERT INTO `gossip_menu` (`entry`,`text_id`,`script_id`,`condition_id`) 
VALUES (8523,10657,0,0);

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 3149 and 3158;
INSERT INTO `conditions` (`condition_entry`,`type`,`value1`,`value2`) VALUES
(3158,-1,3157,3156),
(3157,-3,3151,0),
(3156,-1,3155,3154),
(3155,24,31366,1),
(3154,-2,3153,3152),
(3153,9,10819,0),
(3152,8,10819,0),
(3151,8,10821,0);

DELETE FROM `db_script_string` WHERE `entry` = 2000000312;
INSERT INTO `db_script_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(2000000312, 'It''s good that I managed to make copies of the Felsworn Gas Mask...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 8523;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`,`condition_id`) VALUES
(8523,0,0,'Felsworn Gas Mask broken. You do not have another?',1,1,-1,0,8523,0,0,NULL,3158);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 8523;
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`buddy_entry`,`search_radius`,`data_flags`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`x`,`y`,`z`,`o`,`comments`) VALUES
(8523, 0, 15, 39101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Create Felsword Gas Mask'),
(8523, 1, 0, 0, 0, 22127, 10, 0, 2000000312, 0, 0, 0, 0, 0, 0, 0, 'Antelarion say');

