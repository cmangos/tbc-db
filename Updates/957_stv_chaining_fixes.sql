UPDATE `quest_template` SET ExclusiveGroup=-203, NextQuestId=574 WHERE `entry` = 203; -- The Second Rebellion
UPDATE `quest_template` SET ExclusiveGroup=-203, NextQuestId=207 WHERE `entry` = 204; -- Bad Medicine

UPDATE `quest_template` SET PrevQuestId=0 WHERE `entry` = 207; -- Kurzen's Mystery - Requires both q.203 and q.204 to be completed
UPDATE `quest_template` SET PrevQuestId=0 WHERE `entry` = 574; -- Special Forces - Requires both q.203 and q.204 to be completed

UPDATE `quest_template` SET PrevQuestId=574, ExclusiveGroup=-202, NextQuestId=206 WHERE `entry` = 202; -- Colonel Kurzen - Requires q.574 to be completed
UPDATE `quest_template` SET PrevQuestId=207, ExclusiveGroup=-202, NextQuestId=206 WHERE `entry` = 205; -- Troll Witchery - Requires q.207 to be completed

UPDATE `quest_template` SET PrevQuestId=0 WHERE `entry` = 206; -- Mai'Zoth - Requires both q.202 and q.205 to be completed

