-- Fixes for quest PrevQuestId
-- 100% Tested local and working
 
-- Fix requirement Quest to The Defias Brotherhood (part 1) for Red Silk Bandanas.
 
UPDATE quest_template SET `PrevQuestId`='155' WHERE  `entry`=214;
 
-- Fix requirement Quest Underbelly Scales & A Baying of Gnolls
 
UPDATE quest_template SET `PrevQuestId`='119' WHERE  `entry` IN (122,124);


