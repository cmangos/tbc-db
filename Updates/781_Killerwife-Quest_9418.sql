-- ===================
-- Fixes by Killerwife
-- ===================
-- Avruu's orb quest fix sql part
-- http://www.wowhead.com/quest=9418/avruus-orb
UPDATE gameobject_template SET data3='20282',type=2,data1=0 WHERE entry=181606; -- change GO to questgiver, remove redundant quest list, set correct gossip option


delete from gossip_menu where entry=20282;
INSERT INTO gossip_menu VALUES(20282,14206,196608,0); -- create gossip menu for gameobject
delete from gossip_menu_option where menu_id=20282;
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values (20282,0,0,'Place Avruu''s Orb on the altar.',1,1,-1,1,196609,0,0,'',0); -- create gossip menu option for game object


delete from db_script_string where entry in(2000005654);
INSERT INTO db_script_string(entry,content_default,comment) VALUES('2000005654','Avruu''s magic... it still controls me. You must fight me, mortal. It''s the only way to break the spell!','Aeranas Summon SAY');
-- insert script for summoned creature say
delete from dbscripts_on_gossip where id in(196608,196609);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(196608,0,31,17085,20,0,0,8,0,0,0,0,0,0,0,0,'Check for Aeranas'); -- let him check if creature is alive
INSERT INTO dbscripts_on_gossip(id,delay,command,datalong,datalong2,x,y,z,o,comments) VALUES(196608,1,10,17085,180000,-1325.133789,4041.763916,116.630516,0.359221,'Summon aeranas');
-- insert script for summon creature at gossip hello
INSERT INTO dbscripts_on_gossip(id,delay,command,dataint,buddy_entry,search_radius,data_flags,comments) VALUES(196609,0,0,2000005654,17085,20,7,'Aeranas SAY');
INSERT INTO dbscripts_on_gossip(id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,comments) VALUES(196609,6,22,16,3,17085,20,7,'Aeranas Change Faction');
-- insert scripts for creature SAY and creature change faction
-- rest is coded in SD2 - AI and npcflags

-- diff https://gist.github.com/killerwife/13914979ff1442075869
-- @X-Savior


