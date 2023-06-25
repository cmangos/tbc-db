-- fix loot table for i.33926 (Sealed Scroll Case)
-- https://web.archive.org/web/20090208155218/http://wow.allakhazam.com/db/item.html?witem=33926#Contains_Items
-- https://www.wowhead.com/wotlk/item=33926/sealed-scroll-case

-- remove refloot since we cannot group refloots
-- DELETE FROM `item_loot_template` WHERE entry = 33926 AND item = 50604; -- NPC LOOT (White World Drop) - (Item Levels: 60 (Scrolls V)) - (NPC Levels ?-?)

-- add all scrolls V/VI individually to Sealed Scroll Case loot table
DELETE FROM `item_loot_template` WHERE `entry` = 33926 AND `item` IN
(27498, 27499, 27500, 27501, 27502, 27503);
INSERT INTO `item_loot_template` (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(33926, 27498, 0, 1, 5, 5, 0, 'Scroll of Agility V'), -- increase from 1-5 to 5-5 relevant for tbc!
(33926, 27499, 0, 1, 5, 5, 0, 'Scroll of Intellect V'),
(33926, 27500, 0, 1, 5, 5, 0, 'Scroll of Protection V'),
(33926, 27501, 0, 1, 5, 5, 0, 'Scroll of Spirit V'),
(33926, 27502, 0, 1, 5, 5, 0, 'Scroll of Stamina V'),
(33926, 27503, 0, 1, 5, 5, 0, 'Scroll of Strength V');
-- wotlk+
-- (33926, 33457, 0, 1, 6, 8, 0, 'Scroll of Agility VI'),
-- (33926, 33458, 0, 1, 6, 8, 0, 'Scroll of Intellect VI'),
-- (33926, 33459, 0, 1, 6, 8, 0, 'Scroll of Protection VI'),
-- (33926, 33460, 0, 1, 6, 8, 0, 'Scroll of Spirit VI'),
-- (33926, 33461, 0, 1, 6, 8, 0, 'Scroll of Stamina VI'),
-- (33926, 33462, 0, 1, 6, 8, 0, 'Scroll of Strength VI');

