-- Quests relations.
-- q.9759 'Ending their world' -- should become available after 'What We Know...'
UPDATE quest_template SET PrevQuestId = 9753 WHERE entry = 9759;
