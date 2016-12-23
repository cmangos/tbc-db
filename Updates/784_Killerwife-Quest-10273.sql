-- ===================
-- Fixes by Killerwife
-- ===================
-- Troublesome Distractions quest script
-- http://www.wowhead.com/quest=10273/troublesome-distractions

UPDATE creature_template SET SpeedWalk=1.5,GossipMenuId=20071 WHERE entry=20071; -- set closer to blizzlike walking speed, if you change this to a different value, need to change timings
 -- add gossip menu to npc
UPDATE creature SET spawntimesecs=90 WHERE id=20071; -- set smaller respawn time, so that the quest can be done more quickly
UPDATE creature_template SET MovementType=0,FactionAlliance=16,FactionHorde=16 WHERE entry=20101; -- set correct movement type and correct faction

DELETE FROM conditions WHERE condition_entry=514;  
INSERT INTO conditions VALUES(514,9,10273,0); -- new condition to show gossip only when on quest

DELETE FROM gossip_menu WHERE entry=20071;
INSERT INTO gossip_menu VALUES(20071,9971,0,0); -- new gossip menu for marid

DELETE FROM gossip_menu_option WHERE menu_id=20071; -- new gossip menu option shown during quest
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
(20071,0,0,'Wind Trader Marid, I''ve returned with more information on the nether drakes. I''m prepared to be your business partner, and for an extra sum, I''ll take care of that troublesome elf and her human friend.',1,1,0,0,10273,0,0,'',514);

DELETE FROM db_script_string WHERE entry IN(2000005786,2000005787); -- add script texts
INSERT INTO db_script_string(entry,content_default,emote,comment) VALUES('2000005786','Let us hold our discussion in a more... private place. Follow me, $n.',1,'Marid SAY 1');
INSERT INTO db_script_string(entry,content_default,emote,comment) 
VALUES('2000005787','You didn''t really think I''d do business with you again, did you? Sometimes, the best way to return to profitability is to know when to cut your losses.',1,'Marid SAY 2');

DELETE FROM dbscripts_on_gossip WHERE id=10273;
INSERT INTO dbscripts_on_gossip VALUES(10273,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed');
INSERT INTO dbscripts_on_gossip VALUES(10273,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed');
INSERT INTO dbscripts_on_gossip VALUES(10273,0,0,0,0,0,0,0,2000005786,0,0,0,0,0,0,0,'Marid SAY 1');
INSERT INTO dbscripts_on_gossip VALUES(10273,3,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'Marid Movement Waypoint');

DELETE FROM creature_movement_template WHERE entry = 20071;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,textid1,textid2,textid3,textid4,textid5,emote,spell,orientation,model1,model2) VALUES
(20071,1,4304.686523,2141.101807,129.667862,90000,2140905,0,0,0,0,0,0,0,0.532333,0,0),
(20071,2,4304.686523,2141.101807,129.667862,1000,1,0,0,0,0,0,0,0,0.532333,0,0); -- despawn self

DELETE FROM dbscripts_on_creature_movement WHERE id=2140905;
INSERT INTO dbscripts_on_creature_movement VALUES(2140905,1,0,0,0,0,0,0,2000005787,0,0,0,0,0,0,0,'Marid SAY 2');
INSERT INTO dbscripts_on_creature_movement VALUES(2140905,3,10,20101,105000,0,0,0,0,0,0,0,4315.846680,2153.308594,124.852310,4.031869,'Marid SPAWN nether stalkers');
INSERT INTO dbscripts_on_creature_movement VALUES(2140905,3,10,20101,105000,0,0,0,0,0,0,0,4322.441895,2139.602051,126.350731,3.124735,'Marid SPAWN nether stalkers');
INSERT INTO dbscripts_on_creature_movement VALUES(2140905,13,22,16,21,0,0,0,0,0,0,0,0,0,0,0,'Marid CHANGE FACTION');
INSERT INTO dbscripts_on_creature_movement VALUES(2140905,13,18,75000,0,0,0,0,0,0,0,0,0,0,0,0,'Marid DESPAWN');

