-- https://tbc.wowhead.com/npc=119/longsnout#skinning
-- leather skinning templates need to be reworked into generic templates, they are a total mess and have chance for no loot on skinning as sum doesnt equal 100
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `item` = 2934 AND `entry` = 119; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `item` = 2318 AND `entry` = 119; -- Light Leather

