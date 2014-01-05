-- Thanks Neotmiren for pointing and fixing
-- Fixed omitted quest  in the Missing Diplomat quest chain
-- Note that to be 100% blizzlike, an updated is required
-- https://www.wowhead.com/quest=1250/the-missing-diplomat#comments:id=32088
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 1249;
UPDATE `quest_template` SET `PrevQuestId` = 1250 WHERE `entry` = 1264;

