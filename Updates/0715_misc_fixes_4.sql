-- Favor of the Gronn 10797 does not require A Date with Dorgok 10795
-- https://www.wowhead.com/tbc/quest=10797/favor-of-the-gronn - https://www.wowhead.com/tbc/quest=10795/a-date-with-dorgok
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 10797;

