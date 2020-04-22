-- Vindicator's Rest q.9760 should be the prequest for Ending Their World q.9759
UPDATE quest_template SET PrevQuestId=9760 WHERE entry=9759;
