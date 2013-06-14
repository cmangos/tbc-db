-- Correcting too high XP reward for quests 8460, 8464, 8485 (Timbermaw Hold) (value befor)
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3780 WHERE `entry` = 8460; -- /0.6 = 6300 (6250) - https://tbc.wowhead.com/quest=8460/timbermaw-ally
-- UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5400 WHERE `entry` = 8464; -- /0.6 = 9000 - already correct
UPDATE `quest_template` SET `RequiredRaces` = 1101 , `RewMoneyMaxLevel` = 8580 WHERE `entry` = 8484; -- /0.6 = 14300 (14500) - https://tbc.wowhead.com/quest=8484/the-brokering-of-peace - alliance quest was available to horde
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 8580 WHERE `entry` = 8485; -- /0.6 = 14300 (10000) - https://tbc.wowhead.com/quest=8485/the-brokering-of-peace

