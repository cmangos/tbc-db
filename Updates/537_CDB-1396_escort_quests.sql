-- Fixed auto completion of three escort quests
UPDATE quest_template SET SpecialFlags=SpecialFlags|2 WHERE entry IN (1560, 4261, 5203);
