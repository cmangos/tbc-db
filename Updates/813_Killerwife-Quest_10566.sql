-- ===================
-- Fixes by Killerwife
-- ===================
-- Trial and error quest script
-- http://www.wowhead.com/quest=10566/trial-and-error

DELETE FROM `item_loot_template` WHERE `entry`=30650; -- fix bag loot
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(30650,30651,100,1,1,1), -- Dertrok's First Wand
(30650,30652,100,2,1,1), -- Dertrok's Second Wand
(30650,30653,100,3,1,1), -- Dertrok's Third Wand
(30650,30654,100,4,1,1); -- Dertrok's Fourth Wand

UPDATE creature_loot_template SET ChanceOrQuestChance=-30 WHERE entry=19982 AND item=30655; -- adjust drop chances for quest item
UPDATE creature_loot_template SET ChanceOrQuestChance=-30 WHERE entry=19983 AND item=30655;
UPDATE creature_loot_template SET ChanceOrQuestChance=-25 WHERE entry=19984 AND item=30655;
UPDATE creature_loot_template SET ChanceOrQuestChance=-10 WHERE entry=20161 AND item=30655;

UPDATE quest_template SET ReqSourceId1=30655,ReqSourceCount1=4 WHERE entry=10566; -- make item drop during quest

DELETE FROM creature_template_spells WHERE entry=21254;
INSERT INTO creature_template_spells VALUES(21254,34802,0,0,0); -- add kick to ogre spell bar




