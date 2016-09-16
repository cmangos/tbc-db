-- http://jira.vengeancewow.com/browse/TBC-1829
-- http://www.wowhead.com/quest=10556/scratches

UPDATE `quest_template` SET `OfferRewardText` = REPLACE(`OfferRewardText`,'$BGains.','') WHERE `entry` = 10556;

-- http://jira.vengeancewow.com/browse/TBC-450
-- Backport from UDB
UPDATE `quest_template` SET `PrevQuestId` = 11151 WHERE `entry` = 11152;



