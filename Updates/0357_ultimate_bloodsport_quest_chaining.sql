-- https://github.com/cmangos/issues/wiki/Quest_template#Examples
--     *questA*    *questB*    *questC*
--         \          |          /
--          ------ *questD* -----

-- PrevQuestId = 0        NextQuestId = questD   ExclusiveGroup = -questA    NextQuestInChain = questD    entry = questA
-- PrevQuestId = 0        NextQuestId = questD   ExclusiveGroup = -questA    NextQuestInChain = questD    entry = questB
-- PrevQuestId = 0        NextQuestId = questD   ExclusiveGroup = -questA    NextQuestInChain = questD    entry = questC
-- PrevQuestId = 0        NextQuestId = 0        ExclusiveGroup = 0          NextQuestInChain = 0    			entry = questD

-- By mmixan (1,036 – 1·6·9) on 2007/01/24 (Patch 2.0.6)		
-- To open up this quest you must first do the 9 'Mastery' quests where you kill 30 of each type of animal and their named Elite bosses.
-- 
-- -- round 1 --
-- http://www.wowhead.com/?quest=9789
-- http://www.wowhead.com/?quest=9857
-- http://www.wowhead.com/?quest=9854
-- 
-- -- round 2 --
-- http://www.wowhead.com/?quest=9850
-- http://www.wowhead.com/?quest=9858
-- http://www.wowhead.com/?quest=9855
-- 
-- -- round 3 --
-- http://www.wowhead.com/?quest=9851
-- http://www.wowhead.com/?quest=9859
-- http://www.wowhead.com/?quest=9856

-- https://www.wowhead.com/quest=9852/the-ultimate-bloodsport#comments:id=23597
-- https://www.wowhead.com/npc=18180/hemet-nesingwary
UPDATE `quest_template` SET `ExclusiveGroup` = -9851, `NextQuestId` = 9852, `NextQuestInChain` = 9852 WHERE `entry` IN (
9851, -- https://www.wowhead.com/quest=9851/clefthoof-mastery
9859, -- https://www.wowhead.com/quest=9859/talbuk-mastery
9856 -- https://www.wowhead.com/quest=9856/windroc-mastery
);

UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 9852; -- The Ultimate Bloodsport

