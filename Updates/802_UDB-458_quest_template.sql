-- Quests relations.
-- q.9706 'Galaen's Journal - The Fate of Vindicator Saruan'
-- correct prev quest should be 'Blood Watch'
UPDATE quest_template SET PrevQuestId = 9694 WHERE entry = 9706;
-- q.9549 'Artifacts of the Blacksilt'
UPDATE quest_template SET PrevQuestId = 10063 WHERE entry = 9549;

-- Quest items drops in Bloodmyst Isle
-- q.9643 'Constrictor Vines'
-- Thorny Constrictor Vine 
UPDATE creature_loot_template SET ChanceOrQuestChance = -37.71 WHERE Entry = 17344 AND item = 23994;

-- q.9580 'The Bear Necessities'
-- Elder Brown Bear Flank
UPDATE creature_loot_template SET ChanceOrQuestChance = -42.32 WHERE Entry = 17348 AND item = 24026;

-- q.9779 'Intercepting the Message'
-- Sunhawk Missive 
UPDATE creature_loot_template SET ChanceOrQuestChance = -5 WHERE Entry = 17604 AND item = 24399;
UPDATE creature_loot_template SET ChanceOrQuestChance = -10 WHERE Entry = 17606 AND item = 24399;
UPDATE creature_loot_template SET ChanceOrQuestChance = -1 WHERE Entry = 17607 AND item = 24399;
UPDATE creature_loot_template SET ChanceOrQuestChance = -2 WHERE Entry = 17608 AND item = 24399;
UPDATE creature_loot_template SET ChanceOrQuestChance = -1 WHERE Entry = 17609 AND item = 24399;
UPDATE creature_loot_template SET ChanceOrQuestChance = -1 WHERE Entry = 17605 AND item = 24399;

-- q.9579 'Galaen's Fate'
-- Galaen's Amulet
UPDATE creature_loot_template SET ChanceOrQuestChance = -4.53 WHERE Entry = 17606 AND item = 23873;

-- q.9549 'Artifacts of the Blacksilt'
-- Crude Murloc Idol
UPDATE creature_loot_template SET ChanceOrQuestChance = -46.35 WHERE Entry = 17330 AND item = 23834;
-- Crude Murloc Knife
UPDATE creature_loot_template SET ChanceOrQuestChance = -34 WHERE Entry = 17328 AND item = 23833;
UPDATE creature_loot_template SET ChanceOrQuestChance = -70 WHERE Entry = 17329 AND item = 23833;

-- q.9682 'The Hopeless Ones...'
-- Bloodcursed Soul
UPDATE creature_loot_template SET ChanceOrQuestChance = -41.56 WHERE Entry = 17714 AND item = 24153;


