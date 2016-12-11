-- =================================================
-- Fix Drop Rates for Quest 10432 "Damning Evidence"
-- =================================================
DELETE FROM creature_loot_template WHERE item IN (29797);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('18860','29797','-15','0','1','1','0','Orders From Kael\'thas');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20285','29797','-25','0','1','1','0','Orders From Kael\'thas');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('20326','29797','-25','0','1','1','0','Orders From Kael\'thas');


