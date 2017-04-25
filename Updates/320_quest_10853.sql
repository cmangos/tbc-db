-- q.10853 'Spirit Calling'
-- Q item should be drop only if aura from totem is active
DELETE FROM conditions WHERE condition_entry = 1183;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1183, 1, 38778, 0);
UPDATE creature_loot_template SET ChanceOrQuestChance = -100, groupid = 2, condition_id = 1183 WHERE entry = 21004 AND item = 31656;

