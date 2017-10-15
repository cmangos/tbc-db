-- Fixes drop related issues with quest 1027 (Raene's Cleansing)
-- Removes the Iron Pommel drop chance from the slimes.
DELETE FROM creature_loot_template WHERE entry=3928 AND item=5519;

-- Spawns chests now have a 100% to contain the Iron Pommel
UPDATE gameobject_loot_template SET ChanceOrQuestChance=-100 WHERE entry=2971 AND item=5519;

-- Chest is lootable by players who do not have the quest
UPDATE gameobject_template SET flags=0 WHERE entry=19021;

