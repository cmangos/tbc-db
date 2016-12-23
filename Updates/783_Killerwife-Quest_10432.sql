-- ===================
-- Fixes by Killerwife
-- ===================
-- Damning evidence quest drop fix
-- http://www.wowhead.com/quest=10432/damning-evidence
DELETE FROM creature_loot_template WHERE entry in (20326,20285,18860) and item=29797;
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values (18860,29797,-10,0,1,1,0);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values (20285,29797,-20,0,1,1,0);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) values (20326,29797,-20,0,1,1,0);
-- add correct item drops to mobs, adjusted according to wowhead data, but I doubt the drop rate changed, ever

