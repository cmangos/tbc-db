-- q.9213 'The Shadow Guard'
-- q.9211 'The Ice Guard'
-- q.9221 - correct
-- q.9226 - correct
-- q.9223 - correct
UPDATE quest_template SET SpecialFlags = SpecialFlags|1 WHERE entry = 9223;
-- q.9227 - correct
-- q.9228 - correct
-- q.9222 - correct
-- q.9224 - correct
-- q.9225 - correct

-- q.9232 'The Only Song I Know...'
-- q.9229 'The Fate of Ramaladni'
-- https://classic.wowhead.com/quest=9229/the-fate-of-ramaladni#comments:id=3268434
-- https://classic.wowhead.com/quest=9232/the-only-song-i-know#comments:id=3269577
UPDATE quest_template SET PrevQuestId = 9033 WHERE entry IN (9229,9232);

