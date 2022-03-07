-- UPDATE `quest_template` SET `CompleteScript`=0 WHERE `entry`=790; -- already removed in tbcmangos
-- 790	2000	0	28	8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	STATE_KNEEL
-- 790	7000	0	28	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	STATE_DEATH
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=790; -- was not deleted... no error

