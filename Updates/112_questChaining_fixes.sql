UPDATE `quest_template` SET `NextQuestId`='8280', `ExclusiveGroup`='8275' WHERE (`entry`='8275');
UPDATE `quest_template` SET `NextQuestId`='8280', `ExclusiveGroup`='8275' WHERE (`entry`='8276');
UPDATE `quest_template` SET `PrevQuestId`='0', `ExclusiveGroup`='8275' WHERE (`entry`='8280');

UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `entry`='9395'; -- Removes prerequisite for quest 9395 which was set incorrectly
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `entry`='9067'; -- Removes prerequisite for quest 9067 which was set incorrectly


