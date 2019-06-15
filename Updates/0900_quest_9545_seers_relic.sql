-- The Seer's Relic 9545
-- https://www.wowhead.com/quest=9545/the-seers-relic
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 9545;

-- Sedai Quest Credit Marker 17413
UPDATE `creature_template` SET `Unitflags` = 33555200 WHERE `entry` = 17413;

-- Sedai's Corpse 16852
-- UPDATE creature SET DeathState=0 WHERE guid=86002;
DELETE FROM `creature_template_addon` WHERE `entry` = 16852;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (16852, 29266);

-- Vindicator Sedai 17404
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `Unitflags` = 256 WHERE `entry` = 17404;

-- Execute Sedai 30462
DELETE FROM `spell_script_target` WHERE `entry` = 30462;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES(30462, 1, 17404, 0);

-- Krun Spinebreaker 17405
UPDATE creature_template SET `Unitflags` = 256 WHERE `entry` = 17405;

-- Mag'har Escort 17417
UPDATE creature_template SET `Unitflags` = 33024 WHERE `entry` = 17417;

-- Laughing Skull Ambusher 17418
UPDATE creature_template SET `Unitflags` = 33024 WHERE `entry` = 17418;

