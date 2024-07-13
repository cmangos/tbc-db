-- Corred drop rate of 'the ladys necklace'
-- This item will start a quest.
-- https://www.wowhead.com/tbc/item=22597/the-ladys-necklace
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='11' WHERE entry = '16314' AND item = '22597';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='8' WHERE entry = '16315' AND item = '22597';
