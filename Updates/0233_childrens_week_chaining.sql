-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Orgrimmar Horde
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- H [60] Children's Week (Horde) q.172
-- 	H [60] Gateway to the Frontier q.911
-- 	H [60] Down at the Docks q.910
-- 	H [60] Lordaeron Throne Room q.1800
-- 		H [60] You Scream, I Scream... q.915
-- 		H [60] Cairne's Hoofprint q.925
-- 			H [60] A Warden of the Horde q.5502
			
UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=172; -- Children's Week (Horde)

UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=172, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=911; -- Gateway to the Frontier
UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=172, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=910; -- Down at the Docks
UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=172, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=1800; -- Lordaeron Throne Room

-- All three above quests are required to unlock both these quests. We have no option but to use conditions for this case
DELETE FROM conditions WHERE condition_entry BETWEEN 10229 AND 10232 AND type IN(8,-1);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(10229, 8, 911, 0, 0, 0), -- Gateway to the Frontier
(10230, 8, 910, 0, 0, 0), -- Down at the Docks
(10231, 8, 1800, 0, 0, 0), -- Lordaeron Throne Room
(10232, -1, 10229, 10230, 10231, 0);

UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=0, NextQuestId=5502, ExclusiveGroup=-925, NextQuestInChain=0, RequiredCondition=10232 WHERE entry=915; -- You Scream, I Scream...
UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=0, NextQuestId=5502, ExclusiveGroup=-925, NextQuestInChain=0, RequiredCondition=10232 WHERE entry=925; -- Cairne's Hoofprint

UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=5502; -- A Warden of the Horde

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Shattrath Horde
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- H [70] Children's Week (Horde) q.10942
-- 	H [70] Hch'uu and the Mushroom People q.10945
-- 	H [70] Visit the Throne of the Elements q.10953
-- 	H [70] A Trip to the Dark Portal q.10951
-- 		H [70] Now, When I Grow Up... q.11975
-- 		H [70] Time to Visit the Caverns q.10963
-- 			H [70] Back to the Orphanage q.10967

UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10942; -- Children's Week (Horde)

UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=10942, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10945; -- Hch'uu and the Mushroom People
UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=10942, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10953; -- Visit the Throne of the Elements
UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=10942, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10951; -- A Trip to the Dark Portal

-- All three above quests are required to unlock both these quests. We have no option but to use conditions for this case
DELETE FROM conditions WHERE condition_entry BETWEEN 10241 AND 10244 AND type IN(8,-1);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(10241, 8, 10945, 0, 0, 0), -- The Seat of the Naaru
(10242, 8, 10953, 0, 0, 0), -- Time to Visit the Caverns
(10243, 8, 10951, 0, 0, 0), -- Back to the Orphanage
(10244, -1, 10241, 10242, 10243, 0);

UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=0, NextQuestId=10967, ExclusiveGroup=-11975, NextQuestInChain=0, RequiredCondition=10244 WHERE entry=11975; -- Now, When I Grow Up...
UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=0, NextQuestId=10967, ExclusiveGroup=-11975, NextQuestInChain=0, RequiredCondition=10244 WHERE entry=10963; -- Time to Visit the Caverns

UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10967; -- Back to the Orphanage

-- Add missing Questrelations
DELETE FROM creature_involvedrelation WHERE quest IN(10942,10945,10953,10951,11975,10963,10967);
INSERT INTO creature_involvedrelation(id, quest) VALUES
(22817, 10942),
(22817, 10945),
(22817, 10953),
(22817, 10951),
(22817, 11975),
(22817, 10963),
(22819, 10967);
DELETE FROM creature_questrelation WHERE quest IN(10942,10945,10953,10951,11975,10963,10967);
INSERT INTO creature_questrelation (id, quest) VALUES
(22819, 10942),
(22817, 10945),
(22817, 10953),
(22817, 10951),
(22817, 11975),
(22817, 10963),
(22817, 10967);
-- Add missing NPCflags
UPDATE creature_template SET NPCFlags=3 WHERE entry=22817;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Stormwind Alliance
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- A [60] Children's Week (Alliance) q.1468
-- 	A [60] Spooky Lighthouse q.1687
-- 	A [60] The Stonewrought Dam q.1558
-- 	A [60] The Bough of the Eternals q.1479
-- 		A [60] You Scream, I Scream... q.4822
-- 		A [60] Jaina's Autograph q.558
-- 			A [60] A Warden of the Alliance q.171

UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=1468; -- Children's Week (Alliance)

UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=1468, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=1687; -- Spooky Lighthouse
UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=1468, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=1558; -- The Stonewrought Dam
UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=1468, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=1479; -- The Bough of the Eternals

-- All three above quests are required to unlock both these quests. We have no option but to use conditions for this case
DELETE FROM conditions WHERE condition_entry BETWEEN 10233 AND 10236 AND type IN(8,-1);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(10233, 8, 1687, 0, 0, 0), -- Spooky Lighthouse
(10234, 8, 1558, 0, 0, 0), -- The Stonewrought Dam
(10235, 8, 1479, 0, 0, 0), -- The Bough of the Eternals
(10236, -1, 10233, 10234, 10235, 0);

UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=0, NextQuestId=171, ExclusiveGroup=-4822, NextQuestInChain=0, RequiredCondition=10236 WHERE entry=4822; -- You Scream, I Scream...
UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=0, NextQuestId=171, ExclusiveGroup=-4822, NextQuestInChain=0, RequiredCondition=10236 WHERE entry=558; -- Jaina's Autograph

UPDATE quest_template SET MinLevel=10, QuestLevel=60, PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=171; -- A Warden of the Alliance

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Shattrath Alliance
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- A [70] Children's Week (Alliance) q.10943
-- 	A [70] Auchindoun and the Ring of Observance q.10950
-- 	A [70] Jheel is at Aeris Landing! q.10954
-- 	A [70] A Trip to the Dark Portal q.10952
-- 		A [70] The Seat of the Naaru q.10956
-- 		A [70] Time to Visit the Caverns q.10962
-- 			A [70] Back to the Orphanage q.10966

UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10943; -- Children's Week (Alliance)

UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=10943, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10950; -- Auchindoun and the Ring of Observance
UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=10943, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10954; -- Jheel is at Aeris Landing!
UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=10943, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10952; -- A Trip to the Dark Portal

-- All three above quests are required to unlock both these quests. We have no option but to use conditions for this case
DELETE FROM conditions WHERE condition_entry BETWEEN 10237 AND 10240 AND type IN(8,-1);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(10237, 8, 10950, 0, 0, 0), -- The Seat of the Naaru
(10238, 8, 10954, 0, 0, 0), -- Time to Visit the Caverns
(10239, 8, 10952, 0, 0, 0), -- Back to the Orphanage
(10240, -1, 10237, 10238, 10239, 0);

UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=0, NextQuestId=10966, ExclusiveGroup=-10956, NextQuestInChain=0, RequiredCondition=10240 WHERE entry=10956; -- The Seat of the Naaru
UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=0, NextQuestId=10966, ExclusiveGroup=-10956, NextQuestInChain=0, RequiredCondition=10240 WHERE entry=10962; -- Time to Visit the Caverns

UPDATE quest_template SET MinLevel=60, QuestLevel=70, PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0, RequiredCondition=0 WHERE entry=10966; -- Back to the Orphanage

-- Add missing Questrelations
DELETE FROM creature_involvedrelation WHERE quest IN(10943,10950,10954,10952,10956,10962,10966);
INSERT INTO creature_involvedrelation(id, quest) VALUES
(22818, 10943),
(22818, 10950),
(22818, 10954),
(22818, 10952),
(22818, 10956),
(22818, 10962),
(22819, 10966);
DELETE FROM creature_questrelation WHERE quest IN(10943,10950,10954,10952,10956,10962,10966);
INSERT INTO creature_questrelation (id, quest) VALUES
(22819, 10943),
(22818, 10950),
(22818, 10954),
(22818, 10952),
(22818, 10956),
(22818, 10962),
(22818, 10966);
-- Add missing NPCflags
UPDATE creature_template SET NPCFlags=3 WHERE entry=22818;


