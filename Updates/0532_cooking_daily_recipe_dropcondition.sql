-- https://www.wowhead.com/item=33857/crate-of-meat#comments:id=213943
-- Add CONDITION_LEARNABLE_ABILITY for Daily Cooking Patterns
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 10982 AND 10988;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(10988, 28, 43761, 33869, 0, 0, 0, ''), -- Broiled Bloodfin
(10987, 28, 43707, 33870, 0, 0, 0, ''), -- Skullfish Soup
(10986, 28, 43758, 33871, 0, 0, 0, ''), -- Stormchops
(10985, 28, 43765, 33873, 0, 0, 0, ''), -- Spicy Hot Talbuk
(10984, 28, 43772, 33875, 0, 0, 0, ''), -- Kibler's Bits
(10983, 28, 43779, 33925, 0, 0, 0, ''), -- Delicious Chocolate Cake
(10982, 28, 45695, 34834, 0, 0, 0, ''); -- Captain Rumsey's Lager (missing from loot too)

REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(33844, 34834, 1, 3, 1, 1, 10982, 'Recipe: Captain Rumsey''s Lager'), -- Barrel of Fish
(33857, 34834, 1, 2, 1, 1, 10982, 'Recipe: Captain Rumsey''s Lager'); -- Crate of Meat

UPDATE `item_loot_template` SET `condition_id` = 10983 WHERE `item` = 33925; -- Recipe: Delicious Chocolate Cake
UPDATE `item_loot_template` SET `condition_id` = 10984 WHERE `item` = 33875; -- Recipe: Kibler's Bits
UPDATE `item_loot_template` SET `condition_id` = 10985 WHERE `item` = 33873; -- Recipe: Spicy Hot Talbuk
UPDATE `item_loot_template` SET `condition_id` = 10986 WHERE `item` = 33871; -- Recipe: Stormchops
UPDATE `item_loot_template` SET `condition_id` = 10987 WHERE `item` = 33870; -- Recipe: Skullfish Soup
UPDATE `item_loot_template` SET `condition_id` = 10988 WHERE `item` = 33869; -- Recipe: Broiled Bloodfin

