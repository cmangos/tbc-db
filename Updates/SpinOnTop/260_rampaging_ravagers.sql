-- Quillfang Skitterers should not count towards the quest Rampaging Ravagers until wotlk
UPDATE `creature_template` SET `KillCredit1`=0 WHERE `entry`=19189;
