-- Questline Fixes for Call Of Water Exodar, Values pulled from http://web.archive.org/web/20070516023114/http://thottbot.com/q9502
UPDATE `quest_template` SET `QuestLevel` = 20 WHERE `entry` = 9500;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 930, `QuestLevel` = 20 WHERE `entry` IN (9501,9503);
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1170, `QuestLevel` = 24 WHERE `entry` = 9504;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1110, `QuestLevel` = 23 WHERE `entry` = 9508;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1410, `QuestLevel` = 20 WHERE `entry` = 9509;

