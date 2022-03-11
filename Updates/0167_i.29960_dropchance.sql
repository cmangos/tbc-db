-- Improve Dropchance for Captured Firefly 29960
-- https://tbc.wowhead.com/item=29960/captured-firefly 12 out of 15.589 ~ 0.07697
-- https://www.wowhead.com/item=29960/captured-firefly#dropped-by 344 out of 430.096 ~ 0.07998
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.08 WHERE `item` = 29960 AND `entry` = 20197; -- 0.01

