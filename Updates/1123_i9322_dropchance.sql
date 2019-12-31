-- Correct Dropchance for Undamaged Venom Sac 9322 for q.2934
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` = 2686 AND `item` = 9322;

