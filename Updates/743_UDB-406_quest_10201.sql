-- q.10201 'And Now, the Moment of Truth'
DELETE FROM `gossip_menu` WHERE `entry`=7999;
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('7999','9853','0','0');
DELETE FROM `gossip_menu_option` WHERE `menu_id`=7999;
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values('7999','0','0','Grek, will you try out this new weapon oil Rakoria made?','1','1','0','0','7999','0','0','','601');
UPDATE creature_template SET GossipMenuId=7999 WHERE entry IN (19606);
-- old buddy_system removed
-- script corrected
DELETE FROM dbscripts_on_gossip WHERE id = 7999;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7999,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed'), 
(7999,0,0,0,0,0,0,0,2000000310,0,0,0,0,0,0,0,'Grek say 1'),
(7999,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(7999,9,29,1,1,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags added'), 
(7999,9,8,19606,1,0,0,0,0,0,0,0,0,0,0,0,'killcredit for quest 10201'),
(7999,9,0,0,0,0,0,0,2000000311,0,0,0,0,0,0,0,'Grek say 2'),
(7999,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- correct emote for text
-- UPDATE db_script_string SET emote = 15 WHERE entry = 2000000311;

-- Missing Script Strings
DELETE FROM `db_script_string` WHERE `entry` IN (2000000310,2000000311);
insert into `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000310','Grek try!','0','0','0','0',NULL);
insert into `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000311','This oil no good for Grek! What Grek look like to you, some weakling in robes?','0','0','0','15',NULL);



