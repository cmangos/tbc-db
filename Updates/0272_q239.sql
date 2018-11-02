-- Correct PreviousQuestId for Westbrook Garrison Needs Help! thx @PolarCookie
-- https://www.wowhead.com/quest=239/westbrook-garrison-needs-help#comments:id=161626
UPDATE `quest_template` SET `PrevQuestId`= 76 WHERE `entry`=239;

