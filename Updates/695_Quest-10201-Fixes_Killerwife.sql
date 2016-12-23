-- ===================
-- Fixes by Killerwife
-- ===================
-- And Now, the Moment of Truth quest fix
-- http://www.wowhead.com/quest=10201/and-now-the-moment-of-truth
-- https://github.com/cmangos/issues/issues/850


DELETE FROM gossip_menu WHERE entry=19606;
INSERT INTO gossip_menu VALUES(19606,9853,0,0); -- add missing gossip menu
DELETE FROM gossip_menu_option WHERE menu_id=19606 and id=0;
INSERT INTO gossip_menu_option VALUES(19606,0,0,'Grek, will you try out this new weapon oil Rakoria made?',1,1,-1,1,10201,0,0,'',601); -- add missing gossip menu option
DELETE FROM conditions WHERE condition_entry=601;
INSERT INTO conditions VALUES(601,9,10201,0); -- condition to show gossip option when on quest


UPDATE creature_template SET GossipMenuId=19606 where entry=19606; -- associate gossipMenuId with gossip_menu
DELETE FROM db_script_string WHERE entry IN (2000005418,2000005419);
INSERT INTO db_script_string(entry,content_default) VALUES(2000005418,'Grek try!'); -- add text for script 1
INSERT INTO db_script_string(entry,content_default) VALUES(2000005419,'This oil no good for Grek! What Grek look like to you, some weakling in robes?'); -- add text for script 3


-- insert script for after gossip event that shows animations and gives quest credit
DELETE FROM dbscripts_on_gossip WHERE id=10201;
INSERT INTO dbscripts_on_gossip VALUES(10201,1,0,0,0,0,0,0,2000005418,0,0,0,0,0,0,0,'Grek Speak First Line'); 
INSERT INTO dbscripts_on_gossip VALUES(10201,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,'Grek Work');
INSERT INTO dbscripts_on_gossip VALUES(10201,6,0,0,0,0,0,0,2000005419,0,0,0,0,0,0,0,'Grek Speak Second Line');
INSERT INTO dbscripts_on_gossip VALUES(10201,6,1,15,0,0,0,0,0,0,0,0,0,0,0,0,'Grek Roar');
INSERT INTO dbscripts_on_gossip VALUES(10201,7,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grek Tested Oil Credit');
INSERT INTO dbscripts_on_gossip VALUES(10201,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grek Normal State');


