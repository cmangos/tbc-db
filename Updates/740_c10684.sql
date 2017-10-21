-- Remorseful Highborne c.10684 should not drop loot and should respawn very quickly
-- http://www.wowhead.com/npc=10684/remorseful-highborne#comments
DELETE FROM creature_loot_template WHERE entry=10684;
UPDATE creature_template SET LootId=0 WHERE entry=10684;
UPDATE creature SET spawntimesecsmin=5, spawntimesecsmax=5 WHERE id=10684;

