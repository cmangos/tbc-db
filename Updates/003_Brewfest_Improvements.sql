-- =================================
-- TBC 2007/2008 Brewfest Game Event - http://www.wowwiki.com/Brewfest?oldid=1953794
-- =================================


-- ===============
-- Brewfest Quests - Alliance
-- ===============
-- -----------------------------------------------
-- Quest: 11318 "Now This is Ram Racing... Almost" - BROKEN
-- -----------------------------------------------
-- Required For Ram Racing Spells
DELETE FROM spell_script_target WHERE entry IN (44362);
insert into `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) values('44362','1','24766','0');


-- -----------------------------------
-- Quest: 11122 "There and Back Again" - BROKEN (Casts Ram Mount on Self Instead of Player)
-- -----------------------------------



-- ------------------------------
-- Quest: 12022 "Chug and Chuck!"
-- ------------------------------
-- DB Scripts for Spell 42436 (Sniff Data)
DELETE FROM dbscripts_on_spell WHERE id IN (42436);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(42436,0,15,42523,8,'Cast Weak Alcohol'),
(42436,0,15,42536,10,'Cast Brewfest Request Chick Chuck Mug'),
(42436,1,15,47173,10,'Cast Brewfest - Dark Iron Attack - Intro - Assign Kill Credit'),
(42436,1,15,43126,10,'Cast Mug Target Practice'),
(42436,1,15,43073,10,'Cast Mug Target Practice');
-- Drink! Must Target S.T.O.U.T.
DELETE FROM spell_script_target WHERE entry IN (42436);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(42436,1,24108,0);









