-- Lost Supplies i.6172 looted from Scattered Crate i.28604 should always drop but only for Alliance
UPDATE gameobject_loot_template SET ChanceOrQuestChance=100, condition_id=4 WHERE item=6172 AND entry=3597;

-- The Lost Supplies q.1423 should be repeatable (https://www.wowhead.com/quest=1423/the-lost-supplies)
UPDATE quest_template SET SpecialFlags=1 WHERE entry=1423;

-- The rewarded Box of Supplies i.6827 should contain between 2-3 silver (https://www.wowhead.com/item=6827/box-of-supplies)
UPDATE item_template SET minMoneyLoot=200, maxMoneyLoot=300 WHERE entry=6827; 

