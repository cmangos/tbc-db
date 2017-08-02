
-- Prereq for quest "A Job Undone"(9899) should be "No More Mushrooms!"(9773)

-- Jira report: https://jira.vengeancewow.com/browse/TBC-2649?jql=
-- "No More Mushrooms!"(9773): http://www.wowhead.com/quest=9773/no-more-mushrooms
-- "A Job Undone"(9899): http://www.wowhead.com/quest=9899/a-job-undone#comments

UPDATE `quest_template` SET `PrevQuestId`=9773 WHERE `entry`=9899;
UPDATE `quest_template` SET `NextQuestId`=9899, `NextQuestInChain`=9899 WHERE `entry`=9773;

