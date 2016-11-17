-- ================================================================================
-- Fix Hoard of the Black Dragonflight - Should Always Drop Black Dragonflight Molt
-- ================================================================================
UPDATE `item_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry`=10569 AND `item`=10575;

