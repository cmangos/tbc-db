-- Q relations
-- q.10646 'Illidan's Pupil' becomes available after 3 quests: (depends of chosen side Aldor or Scryers)
-- 10641 'Against the Legion' - Netherstorm
-- 10668 'Against the Illidari' - Shadowmoon Valley
-- 10669 'Against All Odds' - Zangarmarsh

DELETE FROM conditions WHERE condition_entry IN (1225,1226,1227);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1225, 8, 10640, 0), 
(1226, 8, 10689, 0), 
(1227, -2, 1226, 1225);
UPDATE quest_template SET RequiredCondition = 1227, PrevQuestId = 0 WHERE entry in (10641,10668,10669);
UPDATE quest_template SET NextQuestId = 0 WHERE entry in (10640,10689);
