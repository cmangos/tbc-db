-- Remove NextQuestInChain (q.9565) for q.9560 and q.9562
-- Quest Reward window will be stuck open after clicking complete quest because these quests have -ExclusiveGroup (And q.9562 is not the questgiver of q.9565)
UPDATE quest_template SET NextQuestInChain=0 WHERE entry IN(9560,9562); -- Beasts of the Apocalypse!, Murlocs... Why Here? Why Now?
