-- Correct condition and chance for Cracked Silithid Carapace 5877
-- https://www.wowhead.com/item=5877/cracked-silithid-carapace#comments:id=243225
-- https://www.wowhead.com/quest=1147/the-swarm-grows#comments:id=26040
-- https://www.wowhead.com/quest=1148/parts-of-the-swarm#comments:id=39949
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(9001, 16, 5877, 1, 'Player Has Less Than 1 of Item ID 5877 in Inventory'),
(9002, 8, 1147, 0, 'Quest ID 1147 Rewarded'),
(9003, 9, 1147, 0, 'Quest ID 1147 Taken'),
(9004, -2, 9002, 9003, '(Quest ID 1147 Rewarded OR Quest ID 1147 Taken)'),
(9005, -1, 3, 9004, '(Horde Player AND (Quest ID 1147 Rewarded OR Quest ID 1147 Taken))'),
(9006, -1, 9005, 9001, '((Horde Player AND Quest ID 1147 Taken) AND Player Has Less Than 1 of Item ID 5877 in Inventory)');

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100, `condition_id` = 9006 WHERE `entry` IN (4130,4131,4132,4133) AND `item` = 5877;

-- Not sure what should happen to the item on quest (1148) turn in (c.3428), probably also be removed