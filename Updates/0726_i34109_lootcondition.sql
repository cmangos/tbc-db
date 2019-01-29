-- Add Lootcondition for Weather-Beaten Journal 34109: Player has not learend Find Fish 43308 from Weather-Beaten Journal 34109 yet
DELETE FROM `conditions` WHERE `condition_entry` = 19000;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES (19000, 17, 43308, 1, 'NOT Player Has Learned Spell: 43308');
-- Add to Item
UPDATE `item_loot_template` SET `condition_id` = 19000 WHERE `item` = 34109;

