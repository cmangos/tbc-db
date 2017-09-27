UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE entry=19174 AND item=27943; -- quest item should have 100% drop chance

UPDATE creature_loot_template SET ChanceOrQuestChance=-30 WHERE entry=21516 AND item=31757; -- adjust drop rates to wowhead datas
UPDATE creature_loot_template SET ChanceOrQuestChance=-25 WHERE entry=21519 AND item=31757;
UPDATE creature_loot_template SET ChanceOrQuestChance=-15 WHERE entry=19978 AND item=31757;
UPDATE creature_loot_template SET ChanceOrQuestChance=-15 WHERE entry=19979 AND item=31757;


