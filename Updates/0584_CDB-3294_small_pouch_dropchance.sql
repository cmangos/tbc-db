-- https://tbc.wowhead.com/item=805/small-red-pouch - highest 0.8 - lowest ~ 0.1
-- https://tbc.wowhead.com/item=828/small-blue-pouch - highest 1.0 - lowest ~ 0.1
-- https://tbc.wowhead.com/item=4496/small-brown-pouch - highest 0.8 - lowest ~ 0.1
-- https://tbc.wowhead.com/item=5571/small-black-pouch - highest 0.8 - lowest ~ 0.1
-- https://tbc.wowhead.com/item=5572/small-green-pouch - highest 1.0 - lowest ~ 0.1 ~~ 1% chance
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE (`item` = '60400') AND `mincountorref` = '-60400'; -- tbc mobs that have it
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1.25' WHERE (`entry` = '80') and (`item` = '60400');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1.25' WHERE (`entry` = '257') and (`item` = '60400');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1.25' WHERE (`entry` = '6') and (`item` = '60400');

