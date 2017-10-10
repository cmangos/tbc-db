-- Boulderfist Key i.25490 should only drop while q.9923 is taken but not completed.
-- Previously it could drop again after you had freed Corki but didn't turn in the quest yet
UPDATE conditions c JOIN creature_loot_template i ON c.condition_entry = i.condition_id  SET c.value2 = 1 WHERE i.item=25490;

-- i.22487 should only drop while on q.9076
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=22487;

