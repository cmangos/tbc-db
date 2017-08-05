-- q.2879 'The Stave of Equinex'
-- All 4 essences req. for energize the stave are not main objects in this quests ... so we cannot set -100 for ChanceOrQuestChance.
-- Gobject flags will prevent players without quest to be able to loot these items.

-- Loot chance corrected for:
-- 142186 - Flame of Lahassa
-- 142187 - Flame of Imbel
-- 142188 - Flame of Samha
-- 142185 - Flame of Byltan
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 100 WHERE entry BETWEEN 6708 AND 6711;
