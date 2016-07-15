-- DB/Quest: fix availability for Alliance's breadcrumb quests to Ashenvale
-- https://www.wowhead.com/wotlk/quest=9432/travel-to-astranaar
-- https://www.wowhead.com/wotlk/quest=10752/onward-to-ashenvale
UPDATE `quest_template` SET `ExclusiveGroup` = 990 WHERE `entry` = 9432; -- Travel to Astranaar

