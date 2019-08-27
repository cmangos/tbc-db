-- Correct TBC Grey Loot Dropchance
-- Grey Default 5 - naturally all in these new Chance Ranges (6 / 8 / 9) should be reviewd to get more ChanceOrQuestChance Data
 -- TBC Grey e.g. https://web.archive.org/web/20071225204338/http://wow.allakhazam.com/db/mob.html?wmob=17397 "Grey: 6.84%"
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6 WHERE `ChanceOrQuestChance` = 10 AND `mincountorref` BETWEEN -61001 AND -61000;
 -- TBC Grey e.g. https://web.archive.org/web/20071230005539/http://wow.allakhazam.com/db/mob.html?wmob=18314 "Grey: 8.14%"
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8 WHERE `ChanceOrQuestChance` = 20 AND `mincountorref` BETWEEN -61001 AND -61000;
 -- TBC Grey e.g. https://web.archive.org/web/20071230191749/http://wow.allakhazam.com:80/db/mob.html?wmob=16473 "Grey: 8.02%"
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 9 WHERE `ChanceOrQuestChance` = 25 AND `mincountorref` BETWEEN -61001 AND -61000;

