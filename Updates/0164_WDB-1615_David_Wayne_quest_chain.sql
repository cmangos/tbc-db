/*
David Wayne quest chain
Source:
http://www.wowhead.com/quest=10676/bane-of-the-illidari#comments:id=40405
*/

-- Player must finish 2 quests first:
-- q.10665 'Fresh From the Mechanar'
-- q.10666 'The Lexicon Demonica'
-- then chain continues and new 2 quests are able to pick up
-- q.10670 'Tear of the Earthmother'
-- q.10667 'Underworld Loam'

-- Only change needed in tbc-db is setting PrevQuestId to 0 for q.10670 and q.10667.
-- The rest is handled by ExclusiveGroup and NextQuestId in q.10665/q.10666
UPDATE quest_template SET PrevQuestId=0 WHERE entry IN(10670,10667);

-- Player must finish 2 quests first:
-- q.10670 'Tear of the Earthmother'
-- q.10667 'Underworld Loam'
-- then chain continues and new one becomes available
-- q.10676 'Bane of the Illidari'

-- Already working correctly in tbc-db, no additional condition needed

