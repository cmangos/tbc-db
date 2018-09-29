-- Earth Sapta (q.1463 and q.1462) should not be available without parent quest
UPDATE quest_template SET SpecialFlags=1, PrevQuestId=-1517 WHERE entry=1463;
UPDATE quest_template SET SpecialFlags=1, PrevQuestId=-1520 WHERE entry=1462;
