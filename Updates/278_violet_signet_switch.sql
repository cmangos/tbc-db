-- Players should be able to trade Violet Signet rings unlimited times, as long as they keep paying gold

UPDATE quest_template SET SpecialFlags = 1, PrevQuestId = 0 WHERE entry IN (11031,11032,11033,11034);

UPDATE quest_template SET RequiredCondition = 2100 WHERE entry = 11031;
UPDATE quest_template SET RequiredCondition = 2101 WHERE entry = 11032;
UPDATE quest_template SET RequiredCondition = 2102 WHERE entry = 11033;
UPDATE quest_template SET RequiredCondition = 2103 WHERE entry = 11034;

DELETE FROM conditions WHERE condition_entry BETWEEN 2100 AND 2103;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(2100,2,29287,1),
(2101,2,29279,1),
(2102,2,29283,1),
(2103,2,29290,1);
