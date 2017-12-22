UPDATE quest_template SET RequiredCondition=3016,PrevQuestId=0 WHERE entry IN(10635,10636,10634);
UPDATE quest_template SET NextQuestId=0 WHERE entry IN(10633,10644);
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
(3016,-2,3009,3010);
UPDATE creature_template_addon SET auras='37497 37509' WHERE entry IN(21797);

DELETE FROM creature_template_spells WHERE entry IN(21867,21797);
INSERT INTO creature_template_spells VALUES
('21797', '0', '0', '37729', '37727', '37788', '37728', '0', '0'),
('21867', '0', '0', '37729', '37727', '37788', '37728', '0', '0');


