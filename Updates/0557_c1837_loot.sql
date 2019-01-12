-- Scarlet Judge 1837 - 100% for random green, classic-db should probably use refloot 34003 instead of 60294 due to rank change
-- https://www.wowhead.com/npc=1837/scarlet-judge#comments:id=709160 "Master's Boots 10247"
-- https://web.archive.org/web/20050208010928/http://wow.allakhazam.com:80/db/mob.html?wmob=1837 - classic
-- https://web.archive.org/web/20120313215631/http://www.wowhead.com:80/npc=1837 - tbc
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 1837 AND `item` = 60294;

