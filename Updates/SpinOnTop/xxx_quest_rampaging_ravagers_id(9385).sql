-- Quillfang Skitterers should not count towards the quest Rampaging Ravagers until wotlk
-- http://www.wowhead.com/quest=9385/rampaging-ravagers#comments:id=26041
-- http://www.wowhead.com/npc=19189/quillfang-skitterer

UPDATE `creature_template` SET `KillCredit1`=0 WHERE `entry`=19189;


