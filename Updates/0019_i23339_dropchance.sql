-- Set Arelion's Journal 23339 Dropchance to 100 due to only provided when Quest is active
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `entry` = 22013 AND `item` = 23339;

