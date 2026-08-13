-- ace of x does not drop from rampart chest, but from Omor the Unscarred (heroic) only
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (21762,21764) AND `item` = 49000; -- Darkmoon Cards (Blessings, Storms, Furies, Lunacy Ace) - Dungeon End Bosses (Levels: 70+)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2.5 WHERE `ChanceOrQuestChance` = 2 AND `mincountOrRef` = -49000; -- 2 to 2.5

