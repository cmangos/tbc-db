ALTER TABLE db_version CHANGE COLUMN required_s2478_01_mangos_creature_cls_stats required_s2479_01_mangos_displayid_probability bit;

ALTER TABLE `creature_template` CHANGE `ModelId1` `DisplayId1` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_template` CHANGE `ModelId2` `DisplayId2` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_template` CHANGE `ModelId3` `DisplayId3` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_template` CHANGE `ModelId4` `DisplayId4` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_template` ADD COLUMN `DisplayIdProbability1` SMALLINT UNSIGNED NOT NULL DEFAULT 0 AFTER `DisplayId4`;
ALTER TABLE `creature_template` ADD COLUMN `DisplayIdProbability2` SMALLINT UNSIGNED NOT NULL DEFAULT 0 AFTER `DisplayIdProbability1`;
ALTER TABLE `creature_template` ADD COLUMN `DisplayIdProbability3` SMALLINT UNSIGNED NOT NULL DEFAULT 0 AFTER `DisplayIdProbability2`;
ALTER TABLE `creature_template` ADD COLUMN `DisplayIdProbability4` SMALLINT UNSIGNED NOT NULL DEFAULT 0 AFTER `DisplayIdProbability3`;

SET sql_safe_updates=0;
-- setting probabilities to exactly replicate previous behaviour
UPDATE creature_template SET DisplayIdProbability1=100 WHERE DisplayId1!=0;
UPDATE creature_template SET DisplayIdProbability1=50,DisplayIdProbability2=50 WHERE DisplayId1!=0 AND DisplayId2!=0 AND EXISTS(SELECT modelid FROM creature_model_info WHERE creature_template.DisplayId2=creature_model_info.modelid AND modelid_alternative > 0);
UPDATE creature_template SET DisplayIdProbability1=0,DisplayIdProbability2=100 WHERE DisplayId1!=0 AND DisplayId2!=0 AND NOT EXISTS(SELECT modelid FROM creature_model_info WHERE creature_template.DisplayId2=creature_model_info.modelid AND modelid_alternative > 0);
UPDATE creature_template SET DisplayIdProbability1=33,DisplayIdProbability2=33,DisplayIdProbability3=33 WHERE DisplayId1!=0 AND DisplayId2!=0 AND DisplayId3!=0 AND EXISTS(SELECT modelid FROM creature_model_info WHERE creature_template.DisplayId2=creature_model_info.modelid AND modelid_alternative > 0);
UPDATE creature_template SET DisplayIdProbability1=0,DisplayIdProbability2=0,DisplayIdProbability3=100 WHERE DisplayId1!=0 AND DisplayId2!=0 AND DisplayId3!=0 AND NOT EXISTS(SELECT modelid FROM creature_model_info WHERE creature_template.DisplayId2=creature_model_info.modelid AND modelid_alternative > 0);
UPDATE creature_template SET DisplayIdProbability1=25,DisplayIdProbability2=25,DisplayIdProbability3=25,DisplayIdProbability4=25 WHERE DisplayId1!=0 AND DisplayId2!=0 AND DisplayId3!=0 AND DisplayId4!=0;
SET sql_safe_updates=1;

UPDATE creature_template SET DisplayIdProbability1=100,`DisplayIdProbability2` = 0, `DisplayIdProbability3` = 0, `DisplayIdProbability4` = 0 WHERE `entry` IN (
5764 -- Guardian of B
);

UPDATE creature_template SET `DisplayIdProbability1` = 0, `DisplayIdProbability3` = 0, `DisplayIdProbability4` = 0,DisplayIdProbability2=100 WHERE `entry` IN (
21419, -- Infernal Attacker - modelid1 (17312)
22418, -- Archimonde Channel Target (18783)
24536 -- Dark Iron Herald - modelid1 (825)
);


UPDATE creature_template SET `DisplayIdProbability2` = 0, `DisplayIdProbability3` = 0, `DisplayIdProbability4` = 0, DisplayIdProbability1=100 WHERE `entry` IN (
17432, -- Stillpine Defender (2001,6802,8589)
17439, -- Stillpine Hunter (2001,6802,8589)
17734, -- Underbog Lord
17459, -- Chess Waiting Room (DND)
18095, -- Doomfire
18104, -- Doomfire Targeting
19632, -- Lykul Stinger (6633,7350,11091)
19937, -- Commander Hogarth (16503,16504,16505)
20155, -- Hillsbrad Internment Lodge Quest Trigger
20156, -- Thrall Quest Trigger
21060, -- Enraged Air Spirit (15294)
25195, -- Marksman Bova (18742,18741,18740)
25265, -- Demonic Vapor
25267, -- Demonic Vapor (Trail)
25703 -- Brutallus Death Cloud
);
