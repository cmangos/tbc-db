-- ===================
-- Fixes by Killerwife
-- ===================
-- The Stones Of Vekh'nir after quest script
-- http://www.wowhead.com/quest=10565/the-stones-of-vekhnir


DELETE FROM spell_script_target WHERE entry=37199;
INSERT INTO spell_script_target VALUES(37199,1,21692,0); -- add target for script spell channel


DELETE FROM db_script_string WHERE entry IN(2000005420,2000005421,2000005422,2000005423,2000005424);
INSERT INTO db_script_string(entry,content_default) VALUES(2000005420,'Cansis, hold still. I''m going to try to use this crystal.');
INSERT INTO db_script_string(entry,content_default) VALUES(2000005421,'Interesting... Let me try something.');
INSERT INTO db_script_string(entry,content_default) VALUES(2000005422,'Cansis. You are a chicken.');
INSERT INTO db_script_string(entry,content_default) VALUES(2000005423,'Fascinating.');
INSERT INTO db_script_string(entry,content_default) VALUES(2000005424,'If you ever do that again, I will break your neck.');


DELETE FROM dbscripts_on_quest_end where id=10565; -- optional used it to reset while testing
INSERT INTO dbscripts_on_quest_end(id,delay,command,dataint,comments) VALUES(10565,1,0,2000005420,'Dertrok TheStonesOfVekhnir Afterquest script 1 SAY');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,search_radius,buddy_entry,data_flags,comments) VALUES(10565,2,36,0,75727,21692,17,'Dertrok TheStonesOfVekhnir Afterquest script 2 FACING');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,comments) VALUES(10565,3,15,37199,'Dertrok TheStonesOfVekhnir Afterquest script 3 SPELL');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,search_radius,buddy_entry,data_flags,comments) VALUES(10565,7,15,37200,75727,21692,23,'Dertrok TheStonesOfVekhnir Afterquest script 4 CONFUSE');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,search_radius,buddy_entry,data_flags,comments) VALUES(10565,7,36,0,75727,21692,19,'Dertrok TheStonesOfVekhnir Afterquest script 5 FACING');
INSERT INTO dbscripts_on_quest_end(id,delay,command,dataint,comments) VALUES(10565,10,0,2000005421,'Dertrok TheStonesOfVekhnir Afterquest script 6 SAY');
INSERT INTO dbscripts_on_quest_end(id,delay,command,dataint,comments) VALUES(10565,12,0,2000005422,'Dertrok TheStonesOfVekhnir Afterquest script 7 SAY');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,search_radius,buddy_entry,data_flags,comments) VALUES(10565,13,1,19,75727,21692,23,'Dertrok TheStonesOfVekhnir Afterquest script 8 CHICKEN');
INSERT INTO dbscripts_on_quest_end(id,delay,command,dataint,comments) VALUES(10565,17,0,2000005423,'Dertrok TheStonesOfVekhnir Afterquest script 9 SAY');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,comments) VALUES(10565,17,1,253,'Dertrok TheStonesOfVekhnir Afterquest script 10 APPLAUSE');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,search_radius,buddy_entry,data_flags,comments) VALUES(10565,17,14,37200,75727,21692,23,'Dertrok TheStonesOfVekhnir Afterquest script 11 CONFUSE REMOVE');
INSERT INTO dbscripts_on_quest_end(id,delay,command,dataint,search_radius,buddy_entry,data_flags,comments) VALUES(10565,18,0,2000005424,75727,21692,19,'Dertrok TheStonesOfVekhnir Afterquest script 12 SAY');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,comments) VALUES(10565,19,1,0,'Dertrok TheStonesOfVekhnir Afterquest script 13 APPLAUSE');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,search_radius,buddy_entry,data_flags,comments) VALUES(10565,19,36,1,75727,21692,23,'Dertrok TheStonesOfVekhnir Afterquest script 14 FACING');
INSERT INTO dbscripts_on_quest_end(id,delay,command,datalong,comments) VALUES(10565,21,36,1,'Dertrok TheStonesOfVekhnir Afterquest script 15 FACING');


UPDATE quest_template SET SpecialFlags=0, ReqItemId1=30567,ReqItemId2=0,ReqItemCount1=1,ReqItemCount2=0,ReqSourceId1=30561,ReqSourceCount1=1 where entry=10565;
-- correct wrong data in quest_template
-- https://github.com/killerwife/mangos-tbc/commit/1dd2e76f2a67ac4f2184299282786c82db11e04c
delete from creature where id in(20093,20023,20024,20003); -- this needs to be investigated, I have a stupid feeling that someone summoned these a loong time ago for fun

