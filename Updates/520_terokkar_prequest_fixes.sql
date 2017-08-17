
DELETE FROM conditions WHERE condition_entry=525;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(525, 22, 9968, 0); -- Has NOT taken quest 9968

-- Only allow one to be accepted, and only if the player has not already completed quest 9968. Quest 9968 can be accepted even if one of these have not been completed
UPDATE quest_template SET PrevQuestId=0, NextQuestId=0, ExclusiveGroup=9957, NextQuestInChain=9968, RequiredCondition=525 WHERE entry=9957; -- What's Wrong at Cenarion Thicket? (N)
UPDATE quest_template SET PrevQuestId=0, NextQuestId=0, ExclusiveGroup=9957, NextQuestInChain=9968, RequiredCondition=525 WHERE entry=9960; -- What's Wrong at Cenarion Thicket? (H)
UPDATE quest_template SET PrevQuestId=0, NextQuestId=0, ExclusiveGroup=9957, NextQuestInChain=9968, RequiredCondition=525 WHERE entry=9961; -- What's Wrong at Cenarion Thicket? (A)

UPDATE quest_template SET PrevQuestId=0, NextQuestId=9978, ExclusiveGroup=-9968, NextQuestInChain=0 WHERE entry=9968; -- Strange Energy
UPDATE quest_template SET PrevQuestId=0, NextQuestId=9978, ExclusiveGroup=-9968, NextQuestInChain=0 WHERE entry=9971; -- Clues in the Thicket
UPDATE quest_template SET PrevQuestId=0, NextQuestId=0, ExclusiveGroup=0, NextQuestInChain=0 WHERE entry=9978; -- By Any Means Necessary - Requires 9968 AND 9971 to be rewarded

