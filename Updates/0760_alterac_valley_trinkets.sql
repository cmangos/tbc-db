-- Alterac Valley: 

-- Reputation trinket quests: 
-- 1. must now be completed in-order
-- 2. require the appropriate level of reputation to accept and complete
-- 3. reward the correct reputation
-- 4. require the correct race(Alliance/Horde)
-- 5. are marked as non-repeatable

-- Also removed the following quests, since they were removed from the game in patch 1.8.0(https://wow.gamepedia.com/Patch_1.8.0#PvP):
-- 1. Korrak the Everliving (7382)
-- 2. Korrak the Bloodrager (7202)
-- 3. The Legend of Korrak (7181)
-- 4. The Return of Korrak (7381)

-- Horde:
UPDATE quest_template
SET 
    PrevQuestId = 0, NextQuestId = 7163, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 729, RequiredMinRepValue = 0, 
    RequiredRaces = 690
WHERE entry = 7161; -- Proving Grounds

UPDATE quest_template
SET 
    PrevQuestId = 7161, NextQuestId = 7164, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 729, RequiredMinRepValue = 3000, 
    RewRepFaction1 = 729, RewRepFaction2 = 76, 
    RewRepValue1 = 250, RewRepValue2 = 250
WHERE entry = 7163; -- Rise and be Recognized

UPDATE quest_template
SET 
    PrevQuestId = 7163, NextQuestId = 7165, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 729, RequiredMinRepValue = 9000, 
    SpecialFlags = 0
WHERE entry = 7164; -- Honored Amongst the Clan

UPDATE quest_template
SET 
    PrevQuestId = 7164, NextQuestId = 7166, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 729, RequiredMinRepValue = 21000, 
    RequiredRaces = 690, 
    RewRepFaction1 = 729, RewRepFaction2 = 76, 
    RewRepValue1 = 350, RewRepValue2 = 350
WHERE entry = 7165; -- Earned Reverence

UPDATE quest_template
SET 
    PrevQuestId = 7165, NextQuestId = 7167, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 729, RequiredMinRepValue = 42000, 
    SpecialFlags = 0, 
    RewRepFaction1 = 729, RewRepFaction2 = 76, 
    RewRepValue1 = 500, RewRepValue2 = 500
WHERE entry = 7166; -- Legendary Heroes

UPDATE quest_template
SET 
    PrevQuestId = 7166, NextQuestId = 0, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 729, RequiredMinRepValue = 42999, 
    SpecialFlags = 0, 
    RewRepFaction1 = 729, RewRepFaction2 = 76, 
    RewRepValue1 = 500, RewRepValue2 = 500
WHERE entry = 7167; -- The Eye of Command

UPDATE quest_template
SET 
    RewRepFaction1 = 729, RewRepFaction2 = 76,
    RewRepValue1 = 500, RewRepValue2 = 250,
    Method = 1 -- quest removed from WoW in 1.8.0 https://wow.gamepedia.com/Patch_1.8.0#PvP
WHERE entry = 7181; -- The Legend of Korrak

DELETE FROM creature_questrelation
WHERE quest = 7181; -- The Legend of Korrak

UPDATE quest_template
SET 
    RewRepFaction1 = 729, RewRepFaction2 = 76,
    RewRepValue1 = 25, RewRepValue2 = 25,
    Method = 1, -- quest removed from WoW in 1.8.0 https://wow.gamepedia.com/Patch_1.8.0#PvP
    SpecialFlags = 1
WHERE entry = 7381; -- The Return of Korrak

DELETE FROM creature_questrelation
WHERE quest = 7381; -- The Return of Korrak

-- Alliance:
UPDATE quest_template
SET 
    PrevQuestId = 0, NextQuestId = 7168, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 730, RequiredMinRepValue = 0
WHERE entry = 7162; -- Proving Grounds

UPDATE quest_template
SET 
    PrevQuestId = 7162, NextQuestId = 7169, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 730, RequiredMinRepValue = 3000, 
    RewRepFaction1 = 47, RewRepFaction2 = 730, 
    RewRepValue1 = 250, RewRepValue2 = 250
WHERE entry = 7168; -- Rise and be Recognized

UPDATE quest_template
SET 
    PrevQuestId = 7168, NextQuestId = 7170, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 730, RequiredMinRepValue = 9000
WHERE entry = 7169; -- Honored Amongst the Guard

UPDATE quest_template
SET 
    PrevQuestId = 7169, NextQuestId = 7171, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 730, RequiredMinRepValue = 21000, 
    SpecialFlags = 0, 
    RewRepFaction1 = 47,RewRepFaction2 = 730, 
    RewRepValue1 = 350, RewRepValue2 = 350
WHERE entry = 7170; -- Earned Reverence

UPDATE quest_template
SET 
    PrevQuestId = 7170, NextQuestId = 7172, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 730, RequiredMinRepValue = 42000, 
    SpecialFlags = 0, 
    RewRepFaction1 = 47, RewRepFaction2 = 730, 
    RewRepValue1 = 500, RewRepValue2 = 500
WHERE entry = 7171; -- Legendary Heroes

UPDATE quest_template
SET 
    PrevQuestId = 7171, NextQuestId = 0, 
    ExclusiveGroup = 0, NextQuestInChain = 0, 
    RequiredMinRepFaction = 730, RequiredMinRepValue = 42999, 
    SpecialFlags = 0, 
    RewRepFaction1 = 47, RewRepFaction2 = 730, 
    RewRepValue1 = 500, RewRepValue2 = 500
WHERE entry = 7172; -- The Eye of Command

UPDATE quest_template
SET 
    RewRepFaction1 = 47, RewRepFaction2 = 730, 
    RewRepValue1 = 25, RewRepValue2 = 25,
    Method = 1, -- quest removed from WoW in 1.8.0 https://wow.gamepedia.com/Patch_1.8.0#PvP
    SpecialFlags = 1 -- repeatable quest
WHERE entry = 7382; -- Korrak the Everliving

DELETE FROM creature_questrelation
WHERE quest = 7382; -- Korrak the Everliving

UPDATE quest_template
SET 
    RewRepFaction1 = 47, RewRepFaction2 = 730, 
    RewRepValue1 = 250, RewRepValue2 = 500,
    Method = 1 -- quest removed from WoW in 1.8.0 https://wow.gamepedia.com/Patch_1.8.0#PvP
WHERE entry = 7202; -- Korrak the Bloodrager

DELETE FROM creature_questrelation
WHERE quest = 7202; -- Korrak the Bloodrager