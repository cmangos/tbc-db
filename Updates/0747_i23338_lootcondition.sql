-- Add Loot condition for Eroded Leather Case 23338
-- https://web.archive.org/web/20071012162031/http://wow.allakhazam.com/db/item.html?witem=23338
DELETE FROM `conditions` WHERE `condition_entry` IN (9007,9008,9009,9010);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(9007, 16, 23338, 1, 'Player Has Less Than 1 of Item ID 23338 in Inventory'),
(9008, 8, 9373, 0, 'Quest ID 9373 Rewarded'),
(9009, -3, 9008, 0, 'NOT (Quest ID 9373 Rewarded)'),
(9010, -1, 9009, 9007, 'NOT (Quest ID 9373 Rewarded) AND (Player Has Less Than 1 of Item ID 23338 in Inventory)');

UPDATE `creature_loot_template` SET `condition_id` = 9010 WHERE `item` = 23338;

