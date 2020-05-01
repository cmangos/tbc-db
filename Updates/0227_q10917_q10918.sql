-- More Feathers q.10918 should not be part of q.10917 chain. It should only be unlocked and be available as a repeatable quest
UPDATE quest_template SET NextQuestInChain=0 WHERE entry=10917;
