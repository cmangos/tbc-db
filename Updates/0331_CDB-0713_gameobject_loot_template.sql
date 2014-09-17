-- Fixed drop chance of item 7809 (Easter Dress):
-- previously removed from creature loot table and now moved to proper gameobject loot table
-- Thanks Patman64 for pointing. This closes #552 
-- Source: http://www.wowwiki.com/Easter_Dress - Brightly Colored Egg
-- http://wowwiki.wikia.com/wiki/Brightly_Colored_Egg
DELETE FROM `gameobject_loot_template` WHERE `item` IN (7809, 6834);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4984, 6834, 0.6, 0, 1, 1, 0, 'Black Tuxedo'),
(4984, 7809, 0.6, 0, 1, 1, 0, 'Easter Dress');

