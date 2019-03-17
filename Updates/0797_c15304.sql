-- Correct Stats for Ancient Mana Spring Totem 15304
-- should have ss.32187	Water Totem Transform - creature_template_addon
UPDATE `creature_template` SET `ModelId1` = 4587, `ModelId2` = 0, `Faction` = 1629, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (7 / 7), `HealthMultiplier` = 0.05, `MinLevelHealth` = 203, `MaxLevelHealth` = 203 WHERE `entry` = 15304;
-- Add missing Mana Spring 24853 passive
DELETE FROM `creature_template_spells` WHERE `entry` = 15304;
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES (15304, 24853);

