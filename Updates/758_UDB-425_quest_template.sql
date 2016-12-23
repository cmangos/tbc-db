-- Quests relations.
-- q.9751 'The Bloodcurse Legacy' -- from captain
-- q.9671 'Urgent Delivery' must be completed before our one become available (this will prevent players to skip first part)
UPDATE quest_template SET PrevQuestId = 9671 WHERE entry = 9751;

-- q.9674 'The Bloodcursed Naga'
UPDATE quest_template SET PrevQuestId = 9672 WHERE entry = 9674;


