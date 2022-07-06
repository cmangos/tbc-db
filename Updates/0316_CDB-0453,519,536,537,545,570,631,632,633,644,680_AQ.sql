-- fix related quest-requirements and values
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8595';
UPDATE `quest_template` SET `QuestFlags`='256', `SpecialFlags`='0', `PrevQuestId`='0' WHERE `entry`='8579';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8627';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8628';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8629';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8630';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8655';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8544';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8559';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8560';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8561';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8562';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8626';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8656';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8657';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8658';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8659';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8637';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8638';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8639';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8640';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8641';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8592';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8593';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8594';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8596';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8603';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8602';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8621';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8622';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8623';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8624';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8625';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8631';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8632';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8633';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8634';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8660';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8661';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8662';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8663';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8664';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8665';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8666';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8667';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8668';
UPDATE `quest_template` SET `PrevQuestId`='8579' WHERE `entry`='8669';

-- Updated scale and speed of Qiraji Swarmguard in Ruins of AhnQiraj
UPDATE `creature_template` SET `SpeedWalk` = 2.8, `SpeedRun` = 2.28571 WHERE `Entry` = 15343;

-- -----------------------

UPDATE `creature_template` SET `MinLevel` = 61 WHERE `Entry` = 15387; -- Qiraji Warrior
UPDATE `creature_template` SET `MinLevel` = 61 WHERE `Entry` = 15344; -- Swarmguard Needler

UPDATE `creature_template` SET `MinLevel` = 63, `MaxLevel` = 63 WHERE `Entry` = 15391; -- Captain Qeez
UPDATE `creature_template` SET `MinLevel` = 63, `MaxLevel` = 63 WHERE `Entry` = 15386; -- Major Yeggeth

UPDATE `creature_template` SET `Faction` = 7, `Faction` = 7, `MovementType` = 1 WHERE `Entry` = 15168; -- Vile Scarab

UPDATE `creature_template` SET `Faction` = 7, `Faction` = 7, `MovementType` = 1 WHERE `Entry` = 15333; -- Silicate Feeder

UPDATE `gameobject_template` SET `size`='1.4' WHERE `entry`='180691';

-- TBC+, maybe creature on kill rep was also increased around this time, keep watching!
-- https://tbc.wowhead.com/quest=8579/mortal-champions#comments:id=325933
-- https://tbc.wowhead.com/item=21229/qiraji-lords-insignia#comments:id=182018
UPDATE `quest_template` SET `RewRepValue2` = 500 WHERE `entry` IN (8579,8595);

