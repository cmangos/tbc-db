-- Fix class quest books in Dire Maul: drop redundance, inconsistant drop chance also missing loot for a handful of bosses.
-- Thanks @saltgurka for noticing.

-- Add name for the already existing reference template
-- DELETE FROM reference_loot_template_names WHERE entry=35016;
-- INSERT INTO reference_loot_template_names (entry,name) VALUES
-- (35016,'Dire Maul: Class Quest Books');

-- item 18401 has lower drop chance than other items in the table
DELETE FROM `reference_loot_template` WHERE `entry` = 35016 AND `item` = 18401;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(35016, 18401, 5, 1, 1, 1, 0, 'Foror\'s Compendium of Dragon Slaying');

-- Remove i.18401 from creature_loot_template as its now in reference_loot_template which these npcs have
DELETE FROM `creature_loot_template` WHERE `entry` IN (11467,11486,11487,11488,11489,11490,11492,11496,11501,13280,14321,14322,14323,14324,14325,14326,14327,14354) AND `item` = 18401;

-- Add missing Pimgib 14349
-- https://web.archive.org/web/20071229052554/http://wow.allakhazam.com/db/mob.html?wmob=14349
-- Still true here https://web.archive.org/web/20080621083408/http://wow.allakhazam.com:80/db/mob.html?wmob=14349#Global only GroupId 2 of 35016
DELETE FROM `creature_loot_template` WHERE `entry` = 14349 AND `mincountOrRef` = -35016; -- but use decreased chance of 2% as for all others not sure why
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (14349, 35016, 2, 2, -35016, 1, 0, 'Dire Maul: Class Quest Books'); -- Only use groupid 2 due to https://web.archive.org/web/20080621083408/http://wow.allakhazam.com:80/db/mob.html?wmob=14349#Global


-- Clean up calls for reference template (some NPCs had two calls)
-- UPDATE creature_loot_template SET ChanceOrQuestChance=4 WHERE mincountorref=-35016; -- Leave at 2 for the moment

-- g.179548 is identical g.loot.16564

