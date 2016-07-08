-- ------------------------------
-- Quest: 12022/12191 "Chug and Chuck!"
-- ------------------------------
-- DB Scripts for Spell 42436 (Sniff Data)
DELETE FROM dbscripts_on_spell WHERE id IN (42436);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(42436,0,15,42523,8,'Cast Weak Alcohol'),
(42436,0,15,42536,10,'Cast Brewfest Request Chick Chuck Mug'),
(42436,1,15,47173,10,'Cast Brewfest - Dark Iron Attack - Intro -  Assign Kill Credit'),
(42436,1,15,43126,10,'Cast Mug Target Practice'),
(42436,1,15,43073,10,'Cast Mug Target Practice');
-- Drink! Must Target S.T.O.U.T.
DELETE FROM spell_script_target WHERE entry IN (42436);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(42436,1,24108,0);


