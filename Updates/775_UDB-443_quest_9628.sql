-- q.9628 'Salvaging the Data'
-- 'Survey Data Crystal' drop shouldnt be 100%
UPDATE creature_loot_template SET ChanceOrQuestChance = -16 WHERE Entry = 17334 AND item = 23932;
UPDATE creature_loot_template SET ChanceOrQuestChance = -13 WHERE Entry = 17336 AND item = 23932;


